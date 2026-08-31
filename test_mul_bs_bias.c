#include <stdint.h>
#include "api_frodo640.h"
#include "frodo_macrify.h"

#define PARAMS_N 640
#define PARAMS_NBAR 8

extern int crypto_kem_keypair_debug(unsigned char *pk, unsigned char *sk);
extern int crypto_kem_enc(unsigned char *ct, unsigned char *ss, const unsigned char *pk);
extern int crypto_kem_dec_debug_modified(
    uint16_t *mask_out,
    uint16_t *Bp_out,
    uint16_t *S_out,
    uint16_t *E_row_out,
    unsigned char *ss,
    const unsigned char *ct,
    const unsigned char *sk
);

uint16_t W[PARAMS_NBAR * PARAMS_NBAR];
uint16_t Bp[PARAMS_N * PARAMS_NBAR];
uint16_t S[PARAMS_N * PARAMS_NBAR];
uint16_t E_row[PARAMS_NBAR];
uint16_t mask[PARAMS_NBAR * PARAMS_NBAR];

unsigned char pk[CRYPTO_PUBLICKEYBYTES];
unsigned char sk[CRYPTO_SECRETKEYBYTES];
unsigned char ct[CRYPTO_CIPHERTEXTBYTES];
unsigned char ss_enc[CRYPTO_BYTES];
unsigned char ss_dec[CRYPTO_BYTES];

volatile uint32_t done = 0;
volatile int status = 0;

int main(void) {
    status = crypto_kem_keypair_debug_Frodo640(pk, sk);
    if (status != 0) { done = 0xdead0001; while (1) {} }

    status = crypto_kem_enc_Frodo640(ct, ss_enc, pk);
    if (status != 0) { done = 0xdead0002; while (1) {} }

    status = crypto_kem_dec_debug_modified_Frodo640(mask, Bp, S, E_row, ss_dec, ct, sk);
    if (status != 0) { done = 0xdead0003; while (1) {} }

    frodo_mul_bs_bias(W, Bp, S, E_row);

    done = 1;
    while (1) {}
}