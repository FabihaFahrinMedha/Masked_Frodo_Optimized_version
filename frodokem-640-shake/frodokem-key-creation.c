/*
    This file is part of the ChipWhisperer Example Targets
    Copyright (C) 2012-2017 NewAE Technology Inc.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "hal.h"
#include <stdint.h>
#include <stdlib.h>
#include "api.h"
#include "simpleserial.h"
#include "randombytes.h"

volatile uint8_t g_sync_flag = 0;

uint8_t *pk;
uint8_t *sk;
uint8_t *ss;
uint8_t *ss2;
uint8_t *ct;

void debug_print(uint8_t *data, uint8_t len)
{
    for(int i = 0; i < len; i++)
    {
        putch(data[i]);
    }
}

void serial_debug(uint8_t *data, uint8_t len)
{
    //return;
    simpleserial_put('r', len, data);
}


//extern void get_pt();

uint8_t get_pt()
{

    crypto_kem_keypair(pk, sk);
    return 0x00;
}

uint8_t try_all()
{
    crypto_kem_keypair(pk, sk);
    crypto_kem_enc(ct, ss, pk);
    crypto_kem_dec(ss2, ct, sk);
    return 0x00;
}

uint8_t try_enc()
{
    memcpy(ss, "shared_secretkey", 16);
    crypto_kem_enc(ct, ss, pk);

    return 0x00;
}

uint8_t try_dec()
{
    crypto_kem_dec(ss2, ct, sk);
    return 0x00;
}

uint8_t set_random_bytes(uint8_t* candidate, uint8_t b_len)
{
    set_rbytes(candidate);
    return 0x00;
}


uint8_t set_sync_flag(uint8_t cmd, uint8_t scmd, uint8_t len, uint8_t *buf)
{
    g_sync_flag = 1;  // Signal to proceed
    return 0x00;
}


int main(void)
{
    platform_init();
	init_uart();
	trigger_setup();

    pk = (uint8_t *)malloc(CRYPTO_PUBLICKEYBYTES * sizeof(uint8_t));
    sk = (uint8_t *)malloc(CRYPTO_SECRETKEYBYTES * sizeof(uint8_t));
    ss = (uint8_t *)malloc(CRYPTO_BYTES * sizeof(uint8_t));
    ss2 = (uint8_t *)malloc(CRYPTO_BYTES * sizeof(uint8_t));
    ct = (uint8_t *)malloc(CRYPTO_CIPHERTEXTBYTES * sizeof(uint8_t));
    if (pk == NULL || sk == NULL) {
        // Handle memory allocation failure
        return;
    }
	simpleserial_init();
    simpleserial_addcmd('t', 0, get_pt);
    simpleserial_addcmd('e', 0, try_enc);
    simpleserial_addcmd('d', 0, try_dec);
    simpleserial_addcmd('a', 0, try_all);
    simpleserial_addcmd('b', 48, set_random_bytes);
    simpleserial_addcmd('s', 0, set_sync_flag);

    

	while(1){

    //crypto_kem_keypair(pk, sk);
    simpleserial_get();

    }
		
}
