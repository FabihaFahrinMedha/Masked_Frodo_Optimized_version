/*

the `main.c` of the
firmware running on
the actual chipwhisperer
platform. Use it on a real
target. If used in an emulator,
i don't know what is going to happen
*/

#ifndef CW_ACQUSITION
#define CW_ACQUSITION
#endif

#include "randombytes.h"
#include "hal.h"
#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "simpleserial.h"
#include "api.h"
#include "params.h"

uint8_t ct_random[CRYPTO_CIPHERTEXTBYTES];

// uint8_t ct_fixed[CRYPTO_CIPHERTEXTBYTES];
uint8_t sk[PARAMS_N * PARAMS_NBAR * 2];
uint8_t *ss = NULL;

uint8_t random_trace(uint8_t *unused1, uint8_t unused2)
{
  randombytes(ct_random, CRYPTO_CIPHERTEXTBYTES);
  // trigger_high();
  crypto_kem_dec(ss, ct_random, sk);
  // trigger_low();
}

uint8_t fixed_trace(uint8_t *unused1, uint8_t unused2)
{
  memset(ct_random, 0xab, CRYPTO_CIPHERTEXTBYTES);
  // trigger_high();
  crypto_kem_dec(ss, ct_random, sk);
  // trigger_low();
  
}
int main(void)
{
    randombytes(sk, CRYPTO_SECRETKEYBYTES);
    
    platform_init();
    init_uart();
    trigger_setup();
    simpleserial_init();
    simpleserial_addcmd('r', 0, random_trace);
    simpleserial_addcmd('f', 0, fixed_trace);
      while (1) {
        simpleserial_get();
    }

}

