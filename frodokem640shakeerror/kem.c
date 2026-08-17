/********************************************************************************************
* FrodoKEM: Learning with Errors Key Encapsulation
*
* Abstract: Key Encapsulation Mechanism (KEM) based on Frodo
*********************************************************************************************/

#include <stdint.h>
#include <string.h>

#include "fips202.h"
#include "randombytes.h"
#include "api.h"
#include "common.h"
#include "params.h"
#include "hal.h"
#define CW_ACC
#define ERROR_INJECTION





int crypto_kem_keypair(uint8_t *pk, uint8_t *sk) {
    // FrodoKEM's key generation
    // Outputs: public key pk (               BYTES_SEED_A + (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8 bytes)
    //          secret key sk (CRYPTO_BYTES + BYTES_SEED_A + (PARAMS_LOGQ*PARAMS_N*PARAMS_NBAR)/8 + 2*PARAMS_N*PARAMS_NBAR + BYTES_PKHASH bytes)
    uint8_t *pk_seedA = &pk[0];
    uint8_t *pk_b = &pk[BYTES_SEED_A];
    uint8_t *sk_s = &sk[0];
    uint8_t *sk_pk = &sk[CRYPTO_BYTES];
    uint8_t *sk_S = &sk[CRYPTO_BYTES + CRYPTO_PUBLICKEYBYTES];
    uint8_t *sk_pkh = &sk[CRYPTO_BYTES + CRYPTO_PUBLICKEYBYTES + 2 * PARAMS_N * PARAMS_NBAR];
    uint16_t B[PARAMS_N * PARAMS_NBAR] = {0};
    uint16_t S[PARAMS_N * PARAMS_NBAR] = {0};           // contains secret data
    uint8_t randomness[2 * CRYPTO_BYTES + BYTES_SEED_A];    // contains secret data via randomness_s and randomness_seedSE
    uint8_t *randomness_s = &randomness[0];                 // contains secret data
    uint8_t *randomness_seedSE = &randomness[CRYPTO_BYTES]; // contains secret data
    uint8_t *randomness_z = &randomness[2 * CRYPTO_BYTES];
    uint8_t shake_input_seedSE[1 + CRYPTO_BYTES];           // contains secret data

    // Generate the secret value s, the seed for S and E, and the seed for the seed for A. Add seed_A to the public key
    randombytes(randomness, CRYPTO_BYTES + CRYPTO_BYTES + BYTES_SEED_A);
    shake(pk_seedA, BYTES_SEED_A, randomness_z, BYTES_SEED_A);

    // Generate S and E, and compute B = A*S + E. Generate A on-the-fly
    shake_input_seedSE[0] = 0x5F;
    memcpy(&shake_input_seedSE[1], randomness_seedSE, CRYPTO_BYTES);
   
    shake128incctx state;
    shake128_inc_init(&state);
    shake128_inc_absorb(&state, shake_input_seedSE, 1 + CRYPTO_BYTES);
    shake128_inc_finalize(&state);
    shake128_inc_squeeze((uint8_t *)S, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t), &state);
    shake128_inc_squeeze((uint8_t *)B, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t), &state);
 
    sample_n(S, PARAMS_N * PARAMS_NBAR);
    sample_n(B, PARAMS_N * PARAMS_NBAR);

    mul_add_as_plus_e(B, S, pk);

    // Encode the second part of the public key
    pack(pk_b, CRYPTO_PUBLICKEYBYTES - BYTES_SEED_A, B, PARAMS_N * PARAMS_NBAR, PARAMS_LOGQ);

    // Add s, pk and S to the secret key
    memcpy(sk_s, randomness_s, CRYPTO_BYTES);
    memcpy(sk_pk, pk, CRYPTO_PUBLICKEYBYTES);
    for (size_t i = 0; i < PARAMS_N * PARAMS_NBAR; i++) {
        S[i] = UINT16_TO_LE(S[i]);
    }
    memcpy(sk_S, S, 2 * PARAMS_N * PARAMS_NBAR);

    // Add H(pk) to the secret key
    shake(sk_pkh, BYTES_PKHASH, pk, CRYPTO_PUBLICKEYBYTES);

    // Cleanup:
    clear_bytes((uint8_t *)S, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t));
    clear_bytes(randomness, 2 * CRYPTO_BYTES);
    clear_bytes(shake_input_seedSE, 1 + CRYPTO_BYTES);
    return 0;
}


int crypto_kem_enc(uint8_t *ct, uint8_t *ss, const uint8_t *pk) {
    // FrodoKEM's key encapsulation
    const uint8_t *pk_seedA = &pk[0];
    const uint8_t *pk_b = &pk[BYTES_SEED_A];
    uint8_t *ct_c1 = &ct[0];
    uint8_t *ct_c2 = &ct[(PARAMS_LOGQ * PARAMS_N * PARAMS_NBAR) / 8];
    uint16_t B[PARAMS_N * PARAMS_NBAR] = {0};
    uint16_t V[PARAMS_NBAR * PARAMS_NBAR] = {0};              // contains secret data
    uint16_t C[PARAMS_NBAR * PARAMS_NBAR] = {0};
    uint16_t Bp[PARAMS_N * PARAMS_NBAR] = {0};
    uint16_t Sp[PARAMS_N * PARAMS_NBAR] = {0}; // contains secret data
    uint8_t G2in[BYTES_PKHASH + BYTES_MU];                    // contains secret data via mu
    uint8_t *pkh = &G2in[0];
    uint8_t *mu = &G2in[BYTES_PKHASH];                        // contains secret data
    uint8_t G2out[2 * CRYPTO_BYTES];                          // contains secret data
    uint8_t *seedSE = &G2out[0];                              // contains secret data
    uint8_t *k = &G2out[CRYPTO_BYTES];                        // contains secret data
    uint8_t Fin[CRYPTO_CIPHERTEXTBYTES + CRYPTO_BYTES];       // contains secret data via Fin_k
    uint8_t *Fin_ct = &Fin[0];
    uint8_t *Fin_k = &Fin[CRYPTO_CIPHERTEXTBYTES];            // contains secret data
    uint8_t shake_input_seedSE[1 + CRYPTO_BYTES];             // contains secret data

    // pkh <- G_1(pk), generate random mu, compute (seedSE || k) = G_2(pkh || mu)
    shake(pkh, BYTES_PKHASH, pk, CRYPTO_PUBLICKEYBYTES);
    randombytes(mu, BYTES_MU);
    shake(G2out, CRYPTO_BYTES + CRYPTO_BYTES, G2in, BYTES_PKHASH + BYTES_MU);

    // Generate Sp and Ep, and compute Bp = Sp*A + Ep. Generate A on-the-fly
    shake_input_seedSE[0] = 0x96;
    memcpy(&shake_input_seedSE[1], seedSE, CRYPTO_BYTES);
    

    shake128incctx state;
    shake128_inc_init(&state);
    shake128_inc_absorb(&state, shake_input_seedSE, 1 + CRYPTO_BYTES);
    shake128_inc_finalize(&state);
    shake128_inc_squeeze((uint8_t *)Sp, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t), &state);
    shake128_inc_squeeze((uint8_t *)Bp, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t), &state);
    shake128_inc_squeeze((uint8_t *)V, PARAMS_NBAR * PARAMS_NBAR * sizeof(uint16_t), &state);
    

    sample_n(Sp, PARAMS_N * PARAMS_NBAR);
    sample_n(Bp, PARAMS_N * PARAMS_NBAR);
    mul_add_sa_plus_e(Bp, Sp, pk_seedA);
    pack(ct_c1, (PARAMS_LOGQ * PARAMS_N * PARAMS_NBAR) / 8, Bp, PARAMS_N * PARAMS_NBAR, PARAMS_LOGQ);

    // Generate Epp, and compute V = Sp*B + Epp
    sample_n(V, PARAMS_NBAR * PARAMS_NBAR);
    unpack(B, PARAMS_N * PARAMS_NBAR, pk_b, CRYPTO_PUBLICKEYBYTES - BYTES_SEED_A, PARAMS_LOGQ);
    mul_add_sb_plus_e(V, B, Sp);

    // Encode mu, and compute C = V + enc(mu) (mod q)
    key_encode(C, (uint16_t *)mu);
    add(C, V, C);
    pack(ct_c2, (PARAMS_LOGQ * PARAMS_NBAR * PARAMS_NBAR) / 8, C, PARAMS_NBAR * PARAMS_NBAR, PARAMS_LOGQ);

    // Compute ss = F(ct||KK)
    memcpy(Fin_ct, ct, CRYPTO_CIPHERTEXTBYTES);
    memcpy(Fin_k, k, CRYPTO_BYTES);
    shake(ss, CRYPTO_BYTES, Fin, CRYPTO_CIPHERTEXTBYTES + CRYPTO_BYTES);

    // Cleanup:
    clear_bytes((uint8_t *)V, PARAMS_NBAR * PARAMS_NBAR * sizeof(uint16_t));
    clear_bytes((uint8_t *)Sp, PARAMS_N * PARAMS_NBAR * sizeof(uint16_t));
    clear_bytes(mu, BYTES_MU);
    clear_bytes(G2out, 2 * CRYPTO_BYTES);
    clear_bytes(Fin_k, CRYPTO_BYTES);
    clear_bytes(shake_input_seedSE, 1 + CRYPTO_BYTES);
    return 0;
}


/* Gutted decryption procedure to fit into chipwhisperer lite.
   Use it to develop the countermeasures */
int crypto_kem_dec(uint8_t *ss, const uint8_t *ct, const uint8_t *sk) {
    uint16_t Bp[PARAMS_N * PARAMS_NBAR] = {0};
    uint16_t W[PARAMS_NBAR * PARAMS_NBAR] = {0};              // contains secret data
    uint16_t C[PARAMS_NBAR * PARAMS_NBAR] = {0};
    const uint8_t *ct_c1 = &ct[0];
    const uint8_t *ct_c2 = &ct[(PARAMS_LOGQ * PARAMS_N * PARAMS_NBAR) / 8];
    uint16_t *sk_S = (uint16_t *) sk;
    uint8_t muprime[BYTES_MU];                  // contains secret data

    
    #ifdef ERROR_INJECTION

    /* BEGIN ERROR  GENERATION */

    /* single error. Consider
    other options as well. Make
    sure all your errors/masks
    are marked as `volatile`!  */
    volatile uint16_t error;

    randombytes((uint8_t*) &error,2);
    error &= (PARAMS_Q - 1);

    /* END ERROR  GENERATION */

    /* BEGIN MASK GENERATION */
    uint16_t mask[PARAMS_NBAR * PARAMS_NBAR] = {0};
    if (randombytes((uint8_t *)mask, PARAMS_NBAR * PARAMS_NBAR * sizeof(uint16_t)) != 0)
        return 1;
    for (int i = 0; i < PARAMS_NBAR * PARAMS_NBAR; i++) {
        mask[i] &= ((1 << PARAMS_EXTRACTED_BITS) - 1); // keep it in [0, 2^d)
        }
#endif
    /* END MASK GENERATION */
    

    // Compute W = C - Bp*S (mod q), and decode the randomness mu
    unpack(Bp, PARAMS_N * PARAMS_NBAR, ct_c1, (PARAMS_LOGQ * PARAMS_N * PARAMS_NBAR) / 8, PARAMS_LOGQ);
    unpack(C, PARAMS_NBAR * PARAMS_NBAR, ct_c2, (PARAMS_LOGQ * PARAMS_NBAR * PARAMS_NBAR) / 8, PARAMS_LOGQ);


/* ADD THE ERROR */
#ifdef ERROR_INJECTION
    for (int i = 0; i < PARAMS_N*PARAMS_NBAR; i++)
       sk_S[i] = (sk_S[i] + error) & (PARAMS_Q - 1);
#endif

    /* ACQUIRE TRACE OF ONLY THE MULTIPLICATION
       WARNING! THIS IS NOT THE CORRECT DECRYPTION
       PROCEDURE AND IT IS ONLY THERE TO EXAMINE
       LEAKAGE. */

    trigger_high();
    mul_bs(W, Bp, sk_S);
    trigger_low();

/* I HAVE EVERYTHING ELSE COMMENTED OUT ON
   PURPOSE. MAKE SURE THAT MULTIPLICATION
   DOESN'T LEAK BEFORE GOING FURTHER WITH
   PROTECTING THE REST OF THE CODE.
   ALSO DO NOT CONCERN YOURSELF WITH CORRECTNESS
   AT THIS POINT YET. JUST HAVE A MULTIPLICATION
   THAT DOES NOT SPIKE THE TVLA

*********************************************************
// SUBTRACT THE ERROR
#ifdef ERROR_INJECTION
    for (int i = 0; i < PARAMS_N*PARAMS_NBAR; i++)
        sk_S[i] = (sk_S[i] - error) & (PARAMS_Q - 1);
#endif
    
    sub(W, C, W);
 #ifdef ERROR_INJECTION
// MASK ADDITION
    for (int i = 0; i < PARAMS_NBAR * PARAMS_NBAR; i++) {
        uint16_t enc = mask[i] << (PARAMS_LOGQ - PARAMS_EXTRACTED_BITS);
        W[i] = (W[i] + enc) & (PARAMS_Q - 1);
    }

// ERROR CORRECTION
    // for (uint32_t i = 0; i < PARAMS_NBAR; i++) {
    //     for (uint32_t j = 0; j < PARAMS_NBAR; j++) {
    //         uint16_t corr = ((uint32_t)((E_row[i]) & (PARAMS_Q - 1)) * v[j]) & ((1 << PARAMS_LOGQ) - 1);
    //         W[i * PARAMS_NBAR + j] =
    //         (W[i * PARAMS_NBAR + j] + corr) & ((1 << PARAMS_LOGQ) - 1);
    //     }
    // }

#endif
key_decode((uint16_t *)muprime, W);
#ifdef ERROR_INJECTION     

// BEGIN MASKED DECODING

    uint8_t muprime_unmasked[BYTES_MU] = {0};
    const uint16_t dmask = (1U << PARAMS_EXTRACTED_BITS) - 1;

    for (size_t i = 0; i < PARAMS_NBAR * PARAMS_NBAR; i++) {
        size_t bit_pos  = i * PARAMS_EXTRACTED_BITS; //where is this value? [bit position]
        size_t byte_idx = bit_pos >> 3;   // /8   //which byte?
        size_t bit_off  = bit_pos & 0x7;  // %8    //where inside that byte?

    // Extract decoded d-bit symbol mm from packed muprime 
       uint16_t mm = (muprime[byte_idx] >> bit_off) & dmask;  //Find where the 2-bit value is stored, and extract it correctly
       if (bit_off + PARAMS_EXTRACTED_BITS > 8) {
        mm |= ((uint16_t)muprime[byte_idx + 1] << (8 - bit_off)) & dmask;
       }

    // Arithmetic unmask modulo 2^d 
       uint16_t m = (mm - mask[i]) & dmask;

    // Pack m into temporary output buffer 
       muprime_unmasked[byte_idx] |= (uint8_t)(m << bit_off);
       if (bit_off + PARAMS_EXTRACTED_BITS > 8) {
        muprime_unmasked[byte_idx + 1] |= (uint8_t)(m >> (8 - bit_off));
       }
 }

memcpy(muprime, muprime_unmasked, BYTES_MU);
clear_bytes(muprime_unmasked, BYTES_MU);
// END MASKED DECODING
 #endif
*/
    return 0;
}
