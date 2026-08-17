import chipwhisperer as cw
import numpy as np
import time
from tqdm import trange
PLATFORM = 'CWLITEARM'


scope = cw.scope()
scope.default_setup()
target = cw.target(scope, cw.targets.SimpleSerial)

# setup scope parameters
# scope.gain.db = 45
scope.adc.samples = 10_000
scope.adc.offset = 0
scope.adc.decimate = 200
scope.adc.basic_mode = "rising_edge"
scope.adc.timeout = 2
scope.clock.clkgen_freq = 7370000
scope.clock.adc_src = "clkgen_x4"
scope.trigger.triggers = "tio4"
scope.io.tio1 = "serial_rx"
scope.io.tio2 = "serial_tx"
scope.io.hs2 = "clkgen"

# set the amount of communicated data like this => target.output_len = 4

prog = cw.programmers.STM32FProgrammer
fw_path = './simpleserial-frodo-error-{}.hex'.format(PLATFORM)

cw.program_target(scope, prog, fw_path)

time.sleep(1)

def get_trace(ct: bytes=b'', cmd:str = 'f'):
    scope.arm()
    target.simpleserial_write(cmd,ct)
    scope.capture()

    return scope.get_last_trace()



if __name__ == "__main__":
    ntraces = 1_000
    nsamples = scope.adc.samples
    traces_fixed = np.zeros((ntraces,nsamples), np.float32)
    traces_random = np.zeros((ntraces,nsamples), np.float32)
    for i in trange(ntraces):
        traces_random[i] = get_trace(cmd='r')
        traces_fixed[i] = get_trace(cmd='f')
    np.savez("tvla.npz", traces_fixed=traces_fixed, traces_random=traces_random)
        
        
