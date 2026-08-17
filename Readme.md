# frodokem example
make: #You will get either the error injection or the uprotected frodo  depending on which directory you -C in.
For the error injection, I don't know whether the simulator works as is. You most probably have to instrument it
differently because its "main.c" (simpleserial-frodo.c) is different from the one in frodo-key-640-shake.

`make -C {frodokem-640-shake,frodokem640shakeerror}/ PLATFORM="CW308_STM32F4" CRYPTO_TARGET=NONE SS_VER=SS_VER_1_1`
sim:
`python3 simulator/function_hook_based_simulator.py`
