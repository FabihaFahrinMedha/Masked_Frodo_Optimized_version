/********************************************************************************************
* FrodoKEM: Learning with Errors Key Encapsulation
*
* Abstract: Key Encapsulation Mechanism (KEM) based on Frodo
*********************************************************************************************/

#include <string.h>
#include "../sha3/fips202.h"
#include "../random/random.h"
#include<stdint.h>
#include <stdio.h>

//#define DIET


#ifndef DIET
#include <x86intrin.h>

volatile uint64_t frodo_dec_cycles = 0;

#endif

#ifdef DO_VALGRIND_CHECK
#include <valgrind/memcheck.h>
#endif
static uint16_t v[PARAMS_NBAR]; //jodi etake globally declare kori

int crypto_kem_keypair_debug(unsigned char* pk, unsigned char* sk) //uint16_t *v_out etake shoray disi
{ // FrodoKEM's key generation
  // Outputs: public key pk = pk_seedA||pk_b                      (               BYTES_SEED_A + (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8 bytes)
  //          secret key sk = sk_s||pk_seedA||pk_b||sk_S||sk_pkh  (CRYPTO_BYTES + BYTES_SEED_A + (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8 + 2*PARAMS_N*PARAMS_NBAR + BYTES_PKHASH bytes)
    uint8_t *pk_seedA = &pk[0];
    uint8_t *pk_b = &pk[BYTES_SEED_A];
    uint8_t *sk_s = &sk[0];
    uint8_t *sk_pk = &sk[CRYPTO_BYTES];
    uint8_t *sk_S = &sk[CRYPTO_BYTES + CRYPTO_PUBLICKEYBYTES];
    uint8_t *sk_pkh = &sk[CRYPTO_BYTES + CRYPTO_PUBLICKEYBYTES + 2*PARAMS_N*PARAMS_NBAR];
    //adding sk_v pointer
    //uint8_t *sk_v = &sk[CRYPTO_BYTES + CRYPTO_PUBLICKEYBYTES + 2*PARAMS_N*PARAMS_NBAR + BYTES_PKHASH]; 
    uint16_t B[PARAMS_N*PARAMS_NBAR] = {0};
    uint16_t S[2*PARAMS_N*PARAMS_NBAR] = {0};                          // contains secret data
    uint16_t *E = (uint16_t *)&S[PARAMS_N*PARAMS_NBAR];                // contains secret data
    uint8_t randomness[CRYPTO_BYTES + BYTES_SEED_SE + BYTES_SEED_A];   // contains secret data via randomness_s and randomness_seedSE
    uint8_t *randomness_s = &randomness[0];                            // contains secret data
    uint8_t *randomness_seedSE = &randomness[CRYPTO_BYTES];            // contains secret data
    uint8_t *randomness_z = &randomness[CRYPTO_BYTES + BYTES_SEED_SE];
    uint8_t shake_input_seedSE[1 + BYTES_SEED_SE];  
    //uint16_t v[PARAMS_NBAR];  globally declare korlam                 // contains secret data
    //uint16_t squashed_s_vec[PARAMS_NBAR];
    // Generate the secret value s, the seed for S and E, and the seed for the seed for A. Add seed_A to the public key
    if (randombytes(randomness, CRYPTO_BYTES + BYTES_SEED_SE + BYTES_SEED_A) != 0)
        return 1;
#ifdef DO_VALGRIND_CHECK
    VALGRIND_MAKE_MEM_UNDEFINED(randomness, CRYPTO_BYTES + BYTES_SEED_SE + BYTES_SEED_A);
#endif
    shake(pk_seedA, BYTES_SEED_A, randomness_z, BYTES_SEED_A);

    // Generate S and E, and compute B = A*S + E. Generate A on-the-fly
    shake_input_seedSE[0] = 0x5F;
    memcpy(&shake_input_seedSE[1], randomness_seedSE, BYTES_SEED_SE);
    shake((uint8_t*)S, 2*PARAMS_N*PARAMS_NBAR*sizeof(uint16_t), shake_input_seedSE, 1 + BYTES_SEED_SE);
    for (size_t i = 0; i < 2 * PARAMS_N * PARAMS_NBAR; i++) {
        S[i] = LE_TO_UINT16(S[i]);
    }
    frodo_sample_n(S, PARAMS_N*PARAMS_NBAR);
    frodo_sample_n(E, PARAMS_N*PARAMS_NBAR);
    frodo_mul_add_as_plus_e(B, S, E, pk);

    // computing v
    for (int j = 0; j < PARAMS_NBAR; j++) {
       uint32_t sumS = 0; 
       for (int k = 0; k < PARAMS_N; k++) {
            sumS += S[j * PARAMS_N + k];  // this will wrap around
        }
        v[j] = sumS & ((1 << PARAMS_LOGQ) - 1);
    }
    //memcpy(sk_v, v, PARAMS_NBAR * sizeof(uint16_t));
    //memcpy(v_out, v, PARAMS_NBAR * sizeof(uint16_t)); //etao baad karon v global


    // Encode the second part of the public key
    frodo_pack(pk_b, CRYPTO_PUBLICKEYBYTES - BYTES_SEED_A, B, PARAMS_N*PARAMS_NBAR, PARAMS_LOGQ);

    // Add s, pk and S to the secret key
    memcpy(sk_s, randomness_s, CRYPTO_BYTES);
    memcpy(sk_pk, pk, CRYPTO_PUBLICKEYBYTES);
    for (size_t i = 0; i < PARAMS_N * PARAMS_NBAR; i++) {
        S[i] = UINT16_TO_LE(S[i]);
    }
    memcpy(sk_S, S, 2*PARAMS_N*PARAMS_NBAR);

    // Add H(pk) to the secret key
    shake(sk_pkh, BYTES_PKHASH, pk, CRYPTO_PUBLICKEYBYTES);

    // Cleanup:
    clear_bytes((uint8_t *)S, PARAMS_N*PARAMS_NBAR*sizeof(uint16_t));
    clear_bytes((uint8_t *)E, PARAMS_N*PARAMS_NBAR*sizeof(uint16_t));
    clear_bytes(randomness, CRYPTO_BYTES + BYTES_SEED_SE);
    clear_bytes(shake_input_seedSE, 1 + BYTES_SEED_SE);
    //clear_bytes((uint8_t *)v, PARAMS_NBAR * sizeof(uint16_t)); //global er jonno ekhaneo cleanup korte hobena
#ifdef DO_VALGRIND_CHECK
    VALGRIND_MAKE_MEM_DEFINED(randomness, CRYPTO_BYTES + BYTES_SEED_SE + BYTES_SEED_A);
#endif

    return 0;
}


int crypto_kem_enc(unsigned char *ct, unsigned char *ss, const unsigned char *pk)
{ // FrodoKEM's key encapsulation
  // Input:   public key pk = pk_seedA||pk_b      (BYTES_SEED_A + (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8 bytes)
  // Outputs: ciphertext ct = ct_c1||ct_c2||salt  (               (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8 + (PARAMS_LOGQ*PARAMS_NBAR*PARAMS_NBAR)/8 + BYTES_SALT bytes)
  //          shared key ss                       (CRYPTO_BYTES bytes)
    const uint8_t *pk_seedA = &pk[0];
    const uint8_t *pk_b = &pk[BYTES_SEED_A];
    uint8_t *ct_c1 = &ct[0];
    uint8_t *ct_c2 = &ct[(PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8];
    uint16_t B[PARAMS_N*PARAMS_NBAR] = {0};
    uint16_t V[PARAMS_NBAR*PARAMS_NBAR]= {0};                          // contains secret data
    uint16_t C[PARAMS_NBAR*PARAMS_NBAR] = {0};
    ALIGN_HEADER(32) uint16_t Bp[PARAMS_N*PARAMS_NBAR] ALIGN_FOOTER(32) = {0};
    ALIGN_HEADER(32) uint16_t Sp[(2*PARAMS_N+PARAMS_NBAR)*PARAMS_NBAR] ALIGN_FOOTER(32) = {0};  // contains secret data
    uint16_t *Ep = (uint16_t *)&Sp[PARAMS_N*PARAMS_NBAR];              // contains secret data
    uint16_t *Epp = (uint16_t *)&Sp[2*PARAMS_N*PARAMS_NBAR];           // contains secret data
    uint8_t G2in[BYTES_PKHASH + BYTES_MU + BYTES_SALT];                // contains secret data via mu
    uint8_t *pkh = &G2in[0];
    uint8_t *mu = &G2in[BYTES_PKHASH];                                 // contains secret data
    uint8_t *salt = &G2in[BYTES_PKHASH + BYTES_MU];
    uint8_t G2out[BYTES_SEED_SE + CRYPTO_BYTES];                       // contains secret data
    uint8_t *seedSE = &G2out[0];                                       // contains secret data
    uint8_t *k = &G2out[BYTES_SEED_SE];                                // contains secret data
    uint8_t Fin[CRYPTO_CIPHERTEXTBYTES + CRYPTO_BYTES];                // contains secret data via Fin_k
    uint8_t *Fin_ct = &Fin[0];
    uint8_t *Fin_k = &Fin[CRYPTO_CIPHERTEXTBYTES];                     // contains secret data
    uint8_t shake_input_seedSE[1 + BYTES_SEED_SE];                     // contains secret data

    // pkh <- G_1(pk), generate random mu and salt, compute (seedSE || k) = G_2(pkh || mu || salt)
    shake(pkh, BYTES_PKHASH, pk, CRYPTO_PUBLICKEYBYTES);
    if (randombytes(mu, BYTES_MU + BYTES_SALT) != 0)
        return 1;
#ifdef DO_VALGRIND_CHECK
    VALGRIND_MAKE_MEM_UNDEFINED(mu, BYTES_MU + BYTES_SALT);
    VALGRIND_MAKE_MEM_UNDEFINED(pk, CRYPTO_PUBLICKEYBYTES);
#endif
    shake(G2out, BYTES_SEED_SE + CRYPTO_BYTES, G2in, BYTES_PKHASH + BYTES_MU + BYTES_SALT);

    // Generate Sp and Ep, and compute Bp = Sp*A + Ep. Generate A on-the-fly
    shake_input_seedSE[0] = 0x96;
    memcpy(&shake_input_seedSE[1], seedSE, BYTES_SEED_SE);
    shake((uint8_t*)Sp, (2*PARAMS_N+PARAMS_NBAR)*PARAMS_NBAR*sizeof(uint16_t), shake_input_seedSE, 1 + BYTES_SEED_SE);
    for (size_t i = 0; i < (2 * PARAMS_N + PARAMS_NBAR) * PARAMS_NBAR; i++) {
        Sp[i] = LE_TO_UINT16(Sp[i]);
    }
    frodo_sample_n(Sp, PARAMS_N*PARAMS_NBAR);
    frodo_sample_n(Ep, PARAMS_N*PARAMS_NBAR);
    frodo_mul_add_sa_plus_e(Bp, Sp, Ep, pk_seedA);
    frodo_pack(ct_c1, (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8, Bp, PARAMS_N*PARAMS_NBAR, PARAMS_LOGQ);

    // Generate Epp, and compute V = Sp*B + Epp
    frodo_sample_n(Epp, PARAMS_NBAR*PARAMS_NBAR);
    frodo_unpack(B, PARAMS_N*PARAMS_NBAR, pk_b, CRYPTO_PUBLICKEYBYTES - BYTES_SEED_A, PARAMS_LOGQ);
    frodo_mul_add_sb_plus_e(V, B, Sp, Epp);

    // Encode mu, and compute C = V + enc(mu) (mod q)
    frodo_key_encode(C, (uint16_t*)mu);
    frodo_add(C, V, C);
    frodo_pack(ct_c2, (PARAMS_LOGQ*PARAMS_NBAR*PARAMS_NBAR)/8, C, PARAMS_NBAR*PARAMS_NBAR, PARAMS_LOGQ);

    // Append salt to ct and compute ss = F(ct_c1||ct_c2||salt||k)
    memcpy(&ct[CRYPTO_CIPHERTEXTBYTES - BYTES_SALT], salt, BYTES_SALT);
    memcpy(Fin_ct, ct, CRYPTO_CIPHERTEXTBYTES);
    memcpy(Fin_k, k, CRYPTO_BYTES);
    shake(ss, CRYPTO_BYTES, Fin, CRYPTO_CIPHERTEXTBYTES + CRYPTO_BYTES);

    // Cleanup:
    clear_bytes((uint8_t *)V, PARAMS_NBAR*PARAMS_NBAR*sizeof(uint16_t));
    clear_bytes((uint8_t *)Sp, PARAMS_N*PARAMS_NBAR*sizeof(uint16_t));
    clear_bytes((uint8_t *)Ep, PARAMS_N*PARAMS_NBAR*sizeof(uint16_t));
    clear_bytes((uint8_t *)Epp, PARAMS_NBAR*PARAMS_NBAR*sizeof(uint16_t));
    clear_bytes(mu, BYTES_MU);
    clear_bytes(G2out, BYTES_SEED_SE + CRYPTO_BYTES);
    clear_bytes(Fin_k, CRYPTO_BYTES);
    clear_bytes(shake_input_seedSE, 1 + BYTES_SEED_SE);
#ifdef DO_VALGRIND_CHECK
    VALGRIND_MAKE_MEM_DEFINED(mu, BYTES_MU);
    VALGRIND_MAKE_MEM_DEFINED(pk, CRYPTO_PUBLICKEYBYTES);
#endif

    return 0;
}

int crypto_kem_dec_debug_modified(char *ss, const unsigned char *ct, const unsigned char *sk) //const uint16_t *v shoray dilam
{ // FrodoKEM's key decapsulation
    /*uint16_t *W_out, */
  // Inputs: ciphertext ct = ct_c1||ct_c2||salt                  (                              (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8 + (PARAMS_LOGQ*PARAMS_NBAR*PARAMS_NBAR)/8 + BYTES_SALT bytes)
  //         secret key sk = sk_s||pk_seedA||pk_b||sk_S||sk_pkh  (CRYPTO_BYTES + BYTES_SEED_A + (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8 + 2*PARAMS_N*PARAMS_NBAR + BYTES_PKHASH bytes)
  // Output: shared key ss                                       (CRYPTO_BYTES bytes)
    uint16_t B[PARAMS_N*PARAMS_NBAR] = {0};
    uint16_t Bp[PARAMS_N*PARAMS_NBAR] = {0};
    uint16_t W[PARAMS_NBAR*PARAMS_NBAR] = {0};                         // contains secret data
    uint16_t C[PARAMS_NBAR*PARAMS_NBAR] = {0};
    uint16_t CC[PARAMS_NBAR*PARAMS_NBAR] = {0};
    ALIGN_HEADER(32) uint16_t BBp[PARAMS_N*PARAMS_NBAR] ALIGN_FOOTER(32) = {0};
    ALIGN_HEADER(32) uint16_t Sp[(2*PARAMS_N+PARAMS_NBAR)*PARAMS_NBAR] ALIGN_FOOTER(32) = {0};  // contains secret data
    uint16_t *Ep = (uint16_t *)&Sp[PARAMS_N*PARAMS_NBAR];              // contains secret data
    uint16_t *Epp = (uint16_t *)&Sp[2*PARAMS_N*PARAMS_NBAR];           // contains secret data
    const uint8_t *ct_c1 = &ct[0];
    const uint8_t *ct_c2 = &ct[(PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8];
    const uint8_t *salt = &ct[CRYPTO_CIPHERTEXTBYTES - BYTES_SALT];
    const uint8_t *sk_s = &sk[0];
    const uint8_t *sk_pk = &sk[CRYPTO_BYTES];
    const uint16_t *sk_S = (uint16_t *) &sk[CRYPTO_BYTES + CRYPTO_PUBLICKEYBYTES];
    uint16_t S[PARAMS_N * PARAMS_NBAR];                                // contains secret data
    //uint16_t S_f[PARAMS_NBAR * PARAMS_N]; // S_f, the version added with E_f
    const uint8_t *sk_pkh = &sk[CRYPTO_BYTES + CRYPTO_PUBLICKEYBYTES + 2*PARAMS_N*PARAMS_NBAR];
    const uint8_t *pk_seedA = &sk_pk[0];
    const uint8_t *pk_b = &sk_pk[BYTES_SEED_A];
    uint8_t G2in[BYTES_PKHASH + BYTES_MU + BYTES_SALT];                // contains secret data via muprime
    uint8_t *pkh = &G2in[0];
    uint8_t *muprime = &G2in[BYTES_PKHASH];                            // contains secret data
    uint8_t *G2in_salt = &G2in[BYTES_PKHASH + BYTES_MU];
    uint8_t G2out[BYTES_SEED_SE + CRYPTO_BYTES];                       // contains secret data
    uint8_t *seedSEprime = &G2out[0];                                  // contains secret data
    uint8_t *kprime = &G2out[BYTES_SEED_SE];                           // contains secret data
    uint8_t Fin[CRYPTO_CIPHERTEXTBYTES + CRYPTO_BYTES];                // contains secret data via Fin_k
    uint8_t *Fin_ct = &Fin[0];
    uint8_t *Fin_k = &Fin[CRYPTO_CIPHERTEXTBYTES];                     // contains secret data
    uint8_t shake_input_seedSEprime[1 + BYTES_SEED_SE];  
    uint64_t start_cycles, end_cycles; 
    //mask array
    uint16_t mask[PARAMS_NBAR * PARAMS_NBAR] = {0};
    //E_row constant
    uint16_t E_row[PARAMS_NBAR];
    for (int i = 0; i < PARAMS_NBAR; i++) {
        randombytes((uint8_t *)&E_row[i], sizeof(uint16_t));
        E_row[i]  &= (PARAMS_Q - 1);
    }
    //Single constant E_s
    //uint16_t E_s;
    //randombytes((uint8_t *)&E_s, sizeof(uint16_t));
    //E_s &= (PARAMS_Q - 1);

    //Full Randomized E
    //uint16_t E_f[PARAMS_NBAR * PARAMS_N];
    //for (int i = 0; i < PARAMS_NBAR * PARAMS_N; i++) {
    //    randombytes((uint8_t *)&E_f[i], sizeof(uint16_t));
    //    E_f[i] &= (PARAMS_Q - 1);
    //}


    //mask generation
    if (randombytes((uint8_t *)mask, PARAMS_NBAR * PARAMS_NBAR * sizeof(uint16_t)) != 0)
        return 1;
    for (int i = 0; i < PARAMS_NBAR * PARAMS_NBAR; i++) {
        mask[i] &= ((1 << PARAMS_EXTRACTED_BITS) - 1); // keep it in [0, 2^d)
        }




#ifdef DO_VALGRIND_CHECK
    VALGRIND_MAKE_MEM_UNDEFINED(sk, CRYPTO_SECRETKEYBYTES);
    VALGRIND_MAKE_MEM_UNDEFINED(ct, CRYPTO_CIPHERTEXTBYTES);
#endif

    for (size_t i = 0; i < PARAMS_N * PARAMS_NBAR; i++) {
        S[i] = LE_TO_UINT16(sk_S[i]);
    }
    //Main mul uses Sf
    //for (size_t i = 0; i < PARAMS_N * PARAMS_NBAR; i++) {
     //   S_f[i] = (S[i] + E_f[i]) & (PARAMS_Q - 1);
    //}
    //start_cycles = __rdtsc();
    frodo_unpack(Bp, PARAMS_N*PARAMS_NBAR, ct_c1, (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8, PARAMS_LOGQ);
    frodo_unpack(C, PARAMS_NBAR*PARAMS_NBAR, ct_c2, (PARAMS_LOGQ*PARAMS_NBAR*PARAMS_NBAR)/8, PARAMS_LOGQ);
    ////adding bias to Bp_ Row wise
    //for (int row = 0; row < PARAMS_NBAR; row++) {
    //    for (int col = 0; col < PARAMS_N; col++) {
    //        int idx = row * PARAMS_N + col;
    //        Bp_b[idx] = (Bp[idx] + E1_row[row]) & (PARAMS_Q - 1);
    //    }
    //}
    //start_cycles = __rdtsc();
    //frodo_mul_bs(W, Bp, S);
    //frodo_mul_bs_sf(W, Bp, S_f);
    // Instead of building Bp_b then calling frodo_mul_bs,
    //memcpy(Bp_out, Bp, PARAMS_NBAR * PARAMS_N * sizeof(uint16_t));
    //memcpy(S_out, S, PARAMS_NBAR * PARAMS_N * sizeof(uint16_t));
    //memcpy(E_row_out, E_row, PARAMS_NBAR * sizeof(uint16_t));
    //For E_row constant
    frodo_mul_bs_bias(W, Bp, S, E_row);
    //For E single value
    //frodo_mul_bs_bias(W, Bp, S, E_s);
    //For fully random value
    //frodo_mul_bs_bias(W, Bp, S, E_f);
    //end_cycles = __rdtsc();
    //frodo_dec_cycles = end_cycles - start_cycles;
    frodo_sub(W, C, W);
    //add Encode(mask) on the fly into into W
    for (int i = 0; i < PARAMS_NBAR * PARAMS_NBAR; i++) {
        //uint16_t encoded_mask = (uint16_t)(((uint32_t)mask[i] * PARAMS_Q) >> PARAMS_EXTRACTED_BITS);
        uint16_t enc = mask[i] << (PARAMS_LOGQ - PARAMS_EXTRACTED_BITS);
        W[i] = (W[i] + enc) & (PARAMS_Q - 1);
    }

    //correction step for row wise for E_row constant
    for (uint32_t i = 0; i < PARAMS_NBAR; i++) {
        for (uint32_t j = 0; j < PARAMS_NBAR; j++) {
            uint16_t corr = ((uint32_t)((E_row[i]) & (PARAMS_Q - 1)) * v[j]) & ((1 << PARAMS_LOGQ) - 1);
            W[i * PARAMS_NBAR + j] =
            (W[i * PARAMS_NBAR + j] + corr) & ((1 << PARAMS_LOGQ) - 1);
        }
    }

    ////Correction step for single E value
    //for (uint32_t i = 0; i < PARAMS_NBAR; i++) {
    //    for (uint32_t j = 0; j < PARAMS_NBAR; j++) {
    //        uint16_t corr = ((uint32_t)(E_s & (PARAMS_Q - 1)) * v[j]) & ((1 << PARAMS_LOGQ) - 1);
    //        W[i * PARAMS_NBAR + j] =
    //        (W[i * PARAMS_NBAR + j] + corr) & ((1 << PARAMS_LOGQ) - 1);
    //    }
    //}

    ////Correction for the fully randomized E
    //for (uint32_t i = 0; i < PARAMS_NBAR; i++) {
    //    for (uint32_t j = 0; j < PARAMS_NBAR; j++) {
    //        uint32_t corr = 0;
    //        for (uint32_t k = 0; k < PARAMS_N; k++) {
    //            corr +=
    //            E_f[i * PARAMS_N + k] *
    //            S[j * PARAMS_N + k];
    //        }
    //        corr &= (PARAMS_Q - 1);
    //        W[i * PARAMS_NBAR + j] =
    //        (W[i * PARAMS_NBAR + j] + corr)
    //        & (PARAMS_Q - 1);
    //    }
    //}
    ////Second version correction
    //for (uint32_t i = 0; i < PARAMS_NBAR; i++) {
    //    for (uint32_t j = 0; j < PARAMS_NBAR; j++) {
    //        uint32_t corr = 0;
    //        for (uint32_t k = 0; k < PARAMS_N; k++) {
    //            corr +=
    //                Bp[i * PARAMS_N + k] *
    //                E_f[j * PARAMS_N + k];
    //            }
    //            corr &= (PARAMS_Q - 1);
    //            W[i * PARAMS_NBAR + j] =
    //                (W[i * PARAMS_NBAR + j] + corr)
    //                & (PARAMS_Q - 1);
    //            }
    //        }

    
    //memcpy(W_out, W, PARAMS_NBAR*PARAMS_NBAR*sizeof(uint16_t));
    //memcpy(mask_out, mask, PARAMS_NBAR * PARAMS_NBAR * sizeof(uint16_t));
    frodo_key_decode((uint16_t*)muprime, W);
    {
        uint8_t muprime_unmasked[BYTES_MU] = {0};
        const uint16_t dmask = (1U << PARAMS_EXTRACTED_BITS) - 1;

        for (size_t i = 0; i < PARAMS_NBAR * PARAMS_NBAR; i++) {
            size_t bit_pos  = i * PARAMS_EXTRACTED_BITS; //where is this value? [bit position]
            size_t byte_idx = bit_pos >> 3;   // /8   //which byte?
            size_t bit_off  = bit_pos & 0x7;  // %8    //where inside that byte?

        /* Extract decoded d-bit symbol mm from packed muprime */
           uint16_t mm = (muprime[byte_idx] >> bit_off) & dmask;  //Find where the 2-bit value is stored, and extract it correctly
           if (bit_off + PARAMS_EXTRACTED_BITS > 8) {
            mm |= ((uint16_t)muprime[byte_idx + 1] << (8 - bit_off)) & dmask;
           }

        /* Arithmetic unmask modulo 2^d */
           uint16_t m = (mm - mask[i]) & dmask;

        /* Pack m into temporary output buffer */
           muprime_unmasked[byte_idx] |= (uint8_t)(m << bit_off);
           if (bit_off + PARAMS_EXTRACTED_BITS > 8) {
            muprime_unmasked[byte_idx + 1] |= (uint8_t)(m >> (8 - bit_off));
           }
    }

    memcpy(muprime, muprime_unmasked, BYTES_MU);
    clear_bytes(muprime_unmasked, BYTES_MU);
}

    // Generate (seedSE' || k') = G_2(pkh || mu' || salt)
    memcpy(pkh, sk_pkh, BYTES_PKHASH);
    memcpy(G2in_salt, salt, BYTES_SALT);
    shake(G2out, BYTES_SEED_SE + CRYPTO_BYTES, G2in, BYTES_PKHASH + BYTES_MU + BYTES_SALT);

    // Generate Sp and Ep, and compute BBp = Sp*A + Ep. Generate A on-the-fly
    shake_input_seedSEprime[0] = 0x96;
    memcpy(&shake_input_seedSEprime[1], seedSEprime, BYTES_SEED_SE);
    shake((uint8_t*)Sp, (2*PARAMS_N+PARAMS_NBAR)*PARAMS_NBAR*sizeof(uint16_t), shake_input_seedSEprime, 1 + BYTES_SEED_SE);
    for (size_t i = 0; i < (2*PARAMS_N+PARAMS_NBAR)*PARAMS_NBAR; i++) {
        Sp[i] = LE_TO_UINT16(Sp[i]);
    }
    frodo_sample_n(Sp, PARAMS_N*PARAMS_NBAR);
    frodo_sample_n(Ep, PARAMS_N*PARAMS_NBAR);
    frodo_mul_add_sa_plus_e(BBp, Sp, Ep, pk_seedA);

    // Generate Epp, and compute W = Sp*B + Epp
    frodo_sample_n(Epp, PARAMS_NBAR*PARAMS_NBAR);
    frodo_unpack(B, PARAMS_N*PARAMS_NBAR, pk_b, CRYPTO_PUBLICKEYBYTES - BYTES_SEED_A, PARAMS_LOGQ);
    frodo_mul_add_sb_plus_e(W, B, Sp, Epp);

    // Encode mu, and compute CC = W + enc(mu') (mod q)
    frodo_key_encode(CC, (uint16_t*)muprime);
    frodo_add(CC, W, CC);

    // Prepare input to F
    memcpy(Fin_ct, ct, CRYPTO_CIPHERTEXTBYTES);

    // Reducing BBp modulo q
    for (int i = 0; i < PARAMS_N*PARAMS_NBAR; i++) BBp[i] = BBp[i] & ((1 << PARAMS_LOGQ)-1);

    // If (Bp == BBp & C == CC) then ss = F(ct || k'), else ss = F(ct || s)
    // Needs to avoid branching on secret data using constant-time implementation.
    int8_t selector = ct_verify(Bp, BBp, PARAMS_N*PARAMS_NBAR) | ct_verify(C, CC, PARAMS_NBAR*PARAMS_NBAR);
    // If (selector == 0) then load k' to do ss = F(ct || k'), else if (selector == -1) load s to do ss = F(ct || s)
    ct_select((uint8_t*)Fin_k, (uint8_t*)kprime, (uint8_t*)sk_s, CRYPTO_BYTES, selector);
    shake(ss, CRYPTO_BYTES, Fin, CRYPTO_CIPHERTEXTBYTES + CRYPTO_BYTES);
    //end_cycles = __rdtsc();
    //frodo_dec_cycles = end_cycles - start_cycles;
    // Cleanup:
    clear_bytes((uint8_t *)W, PARAMS_NBAR*PARAMS_NBAR*sizeof(uint16_t));
    clear_bytes((uint8_t *)Sp, PARAMS_N*PARAMS_NBAR*sizeof(uint16_t));
    clear_bytes((uint8_t *)S, PARAMS_N*PARAMS_NBAR*sizeof(uint16_t));
    clear_bytes((uint8_t *)Ep, PARAMS_N*PARAMS_NBAR*sizeof(uint16_t));
    clear_bytes((uint8_t *)Epp, PARAMS_NBAR*PARAMS_NBAR*sizeof(uint16_t));
    clear_bytes(muprime, BYTES_MU);
    clear_bytes(G2out, BYTES_SEED_SE + CRYPTO_BYTES);
    clear_bytes(Fin_k, CRYPTO_BYTES);
    clear_bytes(shake_input_seedSEprime, 1 + BYTES_SEED_SE);
    //clear_bytes((uint8_t *)E_f, sizeof(E_f));
    //clear_bytes((uint8_t *)S_f, sizeof(S_f));
    //For E_row constant
    //clear_bytes((uint8_t *)E_row, sizeof(E_row));
    //For E_s
    //clear_bytes((uint8_t *)&E_s, sizeof(E_s));
    //E_f
    //clear_bytes((uint8_t *)&E_f, sizeof(E_f));
    //clear_bytes((uint8_t *)Bp_b, sizeof(Bp_b));
    //clear_bytes((uint8_t *)v, PARAMS_NBAR * sizeof(uint16_t)); //global dekhe eta kortesi
    clear_bytes((uint8_t *)mask, sizeof(mask));
#ifdef DO_VALGRIND_CHECK
    VALGRIND_MAKE_MEM_DEFINED(sk, CRYPTO_SECRETKEYBYTES);
    VALGRIND_MAKE_MEM_DEFINED(ct, CRYPTO_CIPHERTEXTBYTES);
#endif
    return 0;

}
