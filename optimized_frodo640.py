import ctypes
import os
import numpy as np
import sys

# Load shared library
lib_ref = ctypes.CDLL("./libfrodo_ref.so")
lib_mod = ctypes.CDLL("./libfrodo_mod.so")
# Frodo640 constants
CRYPTO_SECRETKEYBYTES = 19888
CRYPTO_PUBLICKEYBYTES = 9616
CRYPTO_BYTES = 16
CRYPTO_CIPHERTEXTBYTES = 9752
PARAMS_NBAR = 8
PARAMS_N = 640
PARAMS_LOGQ = 15
PARAMS_EXTRACTED_BITS = 2
PARAMS_Q = 1 << PARAMS_LOGQ

# Function prototypes
#lib_ref.crypto_kem_keypair_Frodo640.argtypes = [
#    ctypes.POINTER(ctypes.c_ubyte),  # pk
#    ctypes.POINTER(ctypes.c_ubyte),  # sk
#
#lib_ref.crypto_kem_keypair_Frodo640.restype = ctypes.c_int
lib_mod.crypto_kem_keypair_debug_Frodo640.argtypes = [
    ctypes.POINTER(ctypes.c_ubyte),  # pk
    ctypes.POINTER(ctypes.c_ubyte),  # sk
    #ctypes.POINTER(ctypes.c_uint16), #v_out
]
lib_mod.crypto_kem_keypair_debug_Frodo640.restype = ctypes.c_int

lib_ref.crypto_kem_enc_Frodo640.argtypes = [
    ctypes.POINTER(ctypes.c_ubyte),  # ct
    ctypes.POINTER(ctypes.c_ubyte),  # ss
    ctypes.POINTER(ctypes.c_ubyte),  # pk
]
lib_ref.crypto_kem_enc_Frodo640.restype = ctypes.c_int

lib_ref.crypto_kem_dec_Frodo640.argtypes = [
    ctypes.POINTER(ctypes.c_ubyte),  # ss
    ctypes.POINTER(ctypes.c_ubyte),  # ct
    ctypes.POINTER(ctypes.c_ubyte),  # sk
]
lib_ref.crypto_kem_dec_Frodo640.restype = ctypes.c_int


lib_mod.crypto_kem_enc_Frodo640.argtypes = [
    ctypes.POINTER(ctypes.c_ubyte),  # ct
    ctypes.POINTER(ctypes.c_ubyte),  # ss
    ctypes.POINTER(ctypes.c_ubyte),  # pk
]
lib_mod.crypto_kem_enc_Frodo640.restype = ctypes.c_int


lib_mod.crypto_kem_dec_debug_modified_Frodo640.argtypes = [
    ctypes.POINTER(ctypes.c_ubyte),                    # ss
    ctypes.POINTER(ctypes.c_ubyte),                    # ct
    ctypes.POINTER(ctypes.c_ubyte),                    # sk
]
lib_mod.crypto_kem_dec_debug_modified_Frodo640.restype = ctypes.c_int




def to_hex(buf, n=32):
    return bytes(buf)[:n].hex()


#Temporary

N_TRACES = 100000

def main():

    # --------------------------------------------------
    # Generate ONE keypair for the entire experiment
    # --------------------------------------------------

    pk = (ctypes.c_ubyte * CRYPTO_PUBLICKEYBYTES)()
    sk = (ctypes.c_ubyte * CRYPTO_SECRETKEYBYTES)()

    ret = lib_mod.crypto_kem_keypair_debug_Frodo640(pk, sk)

    if ret != 0:
        raise RuntimeError("Keypair generation failed")


    # --------------------------------------------------
    # Generate ONE ciphertext for the entire experiment
    # --------------------------------------------------

    ct = (ctypes.c_ubyte * CRYPTO_CIPHERTEXTBYTES)()
    ss_enc = (ctypes.c_ubyte * CRYPTO_BYTES)()

    ret = lib_ref.crypto_kem_enc_Frodo640(
        ct,
        ss_enc,
        pk
    )

    if ret != 0:
        raise RuntimeError("Encapsulation failed")


    # --------------------------------------------------
    # Repeat SAME key + SAME ciphertext
    # --------------------------------------------------

    for trial in range(N_TRACES):

        ss_ref_dec = (ctypes.c_ubyte * CRYPTO_BYTES)()
        ss_mod_dec = (ctypes.c_ubyte * CRYPTO_BYTES)()

        print(f"TRIAL,{trial}")
        sys.stdout.flush()


        # Same ciphertext, same secret
        ret = lib_ref.crypto_kem_dec_Frodo640(
            ss_ref_dec,
            ct,
            sk
        )

        if ret != 0:
            raise RuntimeError(
                f"REF decapsulation failed at trial {trial}"
            )


        # Same ciphertext, same secret,
        # but fresh E_row generated inside C
        ret = lib_mod.crypto_kem_dec_debug_modified_Frodo640(
            ss_mod_dec,
            ct,
            sk
        )

        if ret != 0:
            raise RuntimeError(
                f"MOD decapsulation failed at trial {trial}"
            )


        ref_ok = bytes(ss_enc) == bytes(ss_ref_dec)
        mod_ok = bytes(ss_enc) == bytes(ss_mod_dec)

        print(
            f"CHECK,{trial},{int(ref_ok)},{int(mod_ok)}"
        )
        sys.stdout.flush()

        if not ref_ok or not mod_ok:
            raise RuntimeError(
                f"Correctness failure at trial {trial}"
            )


if __name__ == "__main__":
    main()

#
#def main():
#
#    for trial in range(N_TRACES):
#
#        # Fresh buffers for this trial
#        pk = (ctypes.c_ubyte * CRYPTO_PUBLICKEYBYTES)()
#        sk = (ctypes.c_ubyte * CRYPTO_SECRETKEYBYTES)()
#        ct = (ctypes.c_ubyte * CRYPTO_CIPHERTEXTBYTES)()
#
#        ss_enc = (ctypes.c_ubyte * CRYPTO_BYTES)()
#        ss_ref_dec = (ctypes.c_ubyte * CRYPTO_BYTES)()
#        ss_mod_dec = (ctypes.c_ubyte * CRYPTO_BYTES)()
#
#        # Mark beginning of this trial
#        print(f"TRIAL,{trial}")
#        sys.stdout.flush()
#
#        # 1. Generate ONE common keypair
#        ret = lib_mod.crypto_kem_keypair_debug_Frodo640(pk, sk)
#
#        if ret != 0:
#            raise RuntimeError(f"Keypair failed at trial {trial}")
#
#        # 2. Generate ONE common ciphertext
#        ret = lib_ref.crypto_kem_enc_Frodo640(ct, ss_enc, pk)
#
#        if ret != 0:
#            raise RuntimeError(f"Encapsulation failed at trial {trial}")
#
#        # 3. Reference decapsulation
#        #
#        # frodo_mul_bs() prints:
#        # REF,k,Bp,S,acc
#        ret = lib_ref.crypto_kem_dec_Frodo640(
#            ss_ref_dec,
#            ct,
#            sk
#        )
#
#        if ret != 0:
#            raise RuntimeError(f"REF decapsulation failed at trial {trial}")
#
#        # 4. Modified decapsulation
#        #
#        # frodo_mul_bs_bias() prints:
#        # MOD,k,Bp,S,E,Bp_plus_E,acc
#        ret = lib_mod.crypto_kem_dec_debug_modified_Frodo640(
#            ss_mod_dec,
#            ct,
#            sk
#        )
#
#        if ret != 0:
#            raise RuntimeError(f"MOD decapsulation failed at trial {trial}")
#
#        # 5. Very important correctness check
#        ref_ok = bytes(ss_enc) == bytes(ss_ref_dec)
#        mod_ok = bytes(ss_enc) == bytes(ss_mod_dec)
#
#        print(f"CHECK,{trial},{int(ref_ok)},{int(mod_ok)}")
#        sys.stdout.flush()
#
#        if not ref_ok:
#            raise RuntimeError(
#                f"Reference correctness failed at trial {trial}"
#            )
#
#        if not mod_ok:
#            raise RuntimeError(
#                f"Modified correctness failed at trial {trial}"
#            )
#
#
#if __name__ == "__main__":
#    main()
#
#
#
##def main():
#    pk = (ctypes.c_ubyte * CRYPTO_PUBLICKEYBYTES)()
#    sk = (ctypes.c_ubyte * CRYPTO_SECRETKEYBYTES)()
#    ct = (ctypes.c_ubyte * CRYPTO_CIPHERTEXTBYTES)()
#    ss_enc = (ctypes.c_ubyte * CRYPTO_BYTES)()
#
#    ss_ref_dec = (ctypes.c_ubyte * CRYPTO_BYTES)()
#    ss_mod_dec = (ctypes.c_ubyte * CRYPTO_BYTES)()
#
#    #v_mod = (ctypes.c_uint16 * (PARAMS_NBAR * PARAMS_NBAR))() #block ar row wise alada hobe, ekta nbar baad jabe
#    W_ref = (ctypes.c_uint16 * (PARAMS_NBAR * PARAMS_NBAR))()
#    W_mod = (ctypes.c_uint16 * (PARAMS_NBAR * PARAMS_NBAR))()
#    mask_mod = (ctypes.c_uint16 * (PARAMS_NBAR * PARAMS_NBAR))()
#    # one common keypair from the optimized part
#    ret = lib_mod.crypto_kem_keypair_debug_Frodo640(pk, sk)
#    #print("common keypair ret =", ret)
#    if ret != 0:
#        raise RuntimeError("common keypair failed")
#
#    # one common ciphertext
#    ret = lib_ref.crypto_kem_enc_Frodo640(ct, ss_enc, pk)
#    #print("common enc ret =", ret)
#    if ret != 0:
#        raise RuntimeError("common enc failed")
#
#    # reference dec
#    ret = lib_ref.crypto_kem_dec_Frodo640(ss_ref_dec, ct, sk)
#    #print("ref dec_debug ret =", ret)
#    if ret != 0:
#        raise RuntimeError("ref dec_debug failed")
#
#    # modified dec
#    ret = lib_mod.crypto_kem_dec_debug_modified_Frodo640(ss_mod_dec, ct, sk)
#    #print("mod dec_debug ret =", ret)
#    if ret != 0:
#        raise RuntimeError("mod dec_debug failed")
#
#    print("\n--- comparison ---")
#    print("* Reference encapsulation = Noise injection encapsulation ? \n--> ", bytes(ss_enc) == bytes(ss_ref_dec))
#    print("* Noise injection encapsulation = Noise injection decapsulation? \n--> ", bytes(ss_enc) == bytes(ss_mod_dec))
#    print("* Reference encapsulation = Reference decapsulation? \n--> ", bytes(ss_ref_dec) == bytes(ss_mod_dec))
#    print("* Reference W(message) = Noise injection W(message)? [This is bound to be false as the noise injection W is encoded with mask] \n--> ", list(W_ref) == list(W_mod))
#
#    print("Secret Key", bytes(sk)[:16])
#    #print("Secret Key", list(sk)[:16])
#    sk_bytes = bytes(sk)
#    offset = CRYPTO_BYTES + CRYPTO_PUBLICKEYBYTES
#    S_bytes = sk_bytes[offset : offset + 2 * PARAMS_N * PARAMS_NBAR]
#
#    S = np.frombuffer(S_bytes, dtype=np.uint16).reshape((PARAMS_NBAR, PARAMS_N))
#    #eta row wise er jonno v_py = [int(np.sum(S[j, :]) & ((1 << 15) - 1)) for j in range(PARAMS_NBAR)]
#    #block wise
#    #v_py = [int(np.sum(S[j, :]) & ((1 << 15) - 1)) for j in range(PARAMS_NBAR)]
#    #print("v_py  =", v_py)
#    #print("v_mod =", list(v_mod))
#    #print("v match =", v_py == list(v_mod))
#
#
#    print("\n shared secret (ss) from encapsulation (common) =", bytes(ss_enc).hex())
#    print("ss_ref =", bytes(ss_ref_dec).hex())
#    print("ss_mod =", bytes(ss_mod_dec).hex())
#    #print("v_mod =", list(v_mod))
#    #print("W_ref(first 16) =", list(W_ref)[:16])
#    #print("W_mod(first 16) =", list(W_mod)[:16])
#
#    W_ref_np = np.array(list(W_ref), dtype=np.int32)
#    W_mod_np = np.array(list(W_mod), dtype=np.int32)
#    mask_np  = np.array(list(mask_mod), dtype=np.int32)
#
#    diff = (W_mod_np - W_ref_np) % PARAMS_Q
#    enc_mask = (mask_np << (PARAMS_LOGQ - PARAMS_EXTRACTED_BITS)) % PARAMS_Q
#
#    print("\nmask(first 16)       =", mask_np[:16].tolist())
#    print("enc_mask(first 16)   =", enc_mask[:16].tolist())
#    print("diff(first 16)       =", diff[:16].tolist())
#    print("W(message)_noise injection - W_ref = encoded mask? -->", np.array_equal(diff, enc_mask))

    

#if __name__ == "__main__":
 #   main()



