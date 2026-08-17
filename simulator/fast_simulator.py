#!/usr/bin/env python3
import csv
import os
import threading
import argparse
import warnings
warnings.filterwarnings("ignore", message="pkg_resources is deprecated as an API")
from time import sleep
from tqdm import tqdm
from qiling.core import Qiling
from qiling.const import QL_ARCH, QL_OS, QL_VERBOSE
from qiling.extensions.mcu.stm32f4 import stm32f405
from capstone import Cs, CS_ARCH_ARM, CS_MODE_THUMB
from elftools.elf.elffile import ELFFile

def get_label_address(elf_file, function_name):
    with open(elf_file, 'rb') as f:
        elf = ELFFile(f)
        for section in elf.iter_sections():
            if section.name == '.symtab':
                for symbol in section.iter_symbols():
                    if symbol.name == function_name:
                        return symbol['st_value']
                    
def ensure_folder(path):
    if not os.path.exists(path):
        os.makedirs(path)

def disasm(ql, address, size):
    # Minimal code to disassemble one funftion.
    bytecode = ql.mem.read(address, size)
    md = Cs(CS_ARCH_ARM, CS_MODE_THUMB)
    for insn in md.disasm(bytecode, address):
        return [insn.mnemonic, insn.op_str]

def simpleserial_write(ql, command, data):
    # Format message and send it over serial.
    ql.hw.usart1.send((bytes(command, encoding="ascii") + bytes(data.hex(), encoding="ascii") + b"\n"))

def hook_instruction(ql, address, size, state):
    # Stop after all traces have been collected.
    for target in state["targets"]:
        if address == target['address']:
            print(F"\nENTERED_TARGET, {target['label']}")
            for i, argument in enumerate(target['arg']):
                argument['val'] = ql.arch.regs.read(f"r{i}")
                print(F"ARG {i}, {argument['label']}: {hex(argument['val'])}")
                if argument['pointer']:
                    if 'data' in argument.keys():
                        ql.mem.write(argument['val'], argument['data'])
                        print("DATA_OVERWRITE")
                    else:
                        argument['data'] = ql.mem.read(argument['val'], argument['len'])
                    print(bytes(argument['data']).hex())
            target["return_address"] = ql.arch.regs.read('lr')-1
            if target["trace"]:
                state["scope"] = "tracing"

    if state["scope"] == "tracing":
        munomic, operants = disasm(ql, address, size)
        registers = ['r0', 'r1', 'r2', 'r3', 'r4', 'r5',  'r6', 'r7',
                     'r8', 'r9', 'r10', 'r11', 'r12', 'sp', 'lr', 'pc']
        regs = [hex(ql.arch.regs.read(r)) for r in registers]
        state["trace"].append([hex(address), munomic, operants] + regs)
    # After collecting the trace, save the trace to a file.
    if state["scope"] == "get_trace":
        with open(F'{state["folder"]}/trace_{state["trigger_count"]}.csv', "w", newline="") as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow(['PC', 'Ins', 'Operands', 'r0', 'r1', 'r2', 
                             'r3', 'r4', 'r5', 'r6', 'r7', 'r8', 'r9',
                             'r10', 'r11', 'r12', 'sp', 'lr', 'pc'])
            writer.writerows(state["trace"])
        state["trace"] = []
        state["scope"] = "armed"
        state["trigger_count"] += 1

    for target in state["targets"]:
        if address == target['return_address']:
            print(F"EXITED_TARGET, {target['label']}")
            for i, argument in enumerate(target['arg']):
                print(F"ARG {i}, {argument['label']}: {hex(argument['val'])}")
                if argument['pointer']:
                    argument['data'] = ql.mem.read(argument['val'], argument['len'])
                    print(bytes(argument['data']).hex())
            if target['end']:
                ql.stop()
            if target['trace']:
                state["scope"] = "get_trace"


def initialize_simulator(elf_file, output_folder, targets):
    # Initialize shared variables
    state = {"scope":"armed",
             "trace":[],
             "trigger_count":0,
             #"p":p,
             "folder":output_folder,
             "targets":targets,
             "end":-1,
             "data":[]}
    
    # Create Qiling object
    ql = Qiling([elf_file], archtype=QL_ARCH.CORTEX_M,
        ostype=QL_OS.MCU, env=stm32f405, verbose=QL_VERBOSE.DEBUG)
    # Define Hardware
    ql.hw.create('usart1')
    ql.hw.create('rcc')
    ql.hw.create('gpioa')
    ql.hw.create('FLASH INTERFACE')
    ql.mem.map(0x50060800, 0x400, info="RNG", perms=3)
    # Define Hooks
    #ql.hook_code(hook_instruction, state)
    return ql



# Seeding the randomness
r_bytes_0 = bytearray([0x64, 0xf7, 0x29, 0xed, 0x8b, 0xd0, 0x5c, 0xfc, 0xe7, 0x68, 0x51, 0x99, 0xee, 0x9c, 0xd3, 0xa0, 0x0b, 0x63, 0xfd, 0xe2, 0xf0, 0xb5, 0xaf, 0x48, 0x60, 0xcb, 0x1d, 0xb7, 0x62, 0x70, 0x2d, 0xe8, 0xaf, 0x52, 0x69, 0x6b, 0xa6, 0x58, 0x6d, 0x49, 0x01, 0x3e, 0xd7, 0x1c, 0x85, 0xdf, 0x48, 0x67])
r_bytes_1 = bytearray([0x16, 0x97, 0x8a, 0x12, 0x62, 0x64, 0xe4, 0xf3, 0x34, 0x67, 0xf7, 0x74, 0x05, 0x5e, 0xf1, 0x16, 0x32, 0xad, 0xad, 0x1e, 0xd7, 0xa0, 0xde, 0x41, 0xfd, 0xcd, 0xb0, 0x8b, 0x9b, 0xa5, 0xfe, 0x80, 0x32, 0xa8, 0x28, 0x4d, 0xbe, 0x30, 0x3d, 0xaf, 0x45, 0x56, 0xfb, 0x7e, 0xe3, 0x53, 0x86, 0xbb])
r_bytes_2 = bytearray([0x68, 0x51, 0x26, 0x4b, 0x40, 0x78, 0xa2, 0x64, 0x24, 0x9e, 0x67, 0x6c, 0x90, 0xf5, 0x0a, 0x5a, 0xd2, 0xe0, 0xfe, 0xa5, 0xad, 0xa6, 0xa1, 0x2d, 0x35, 0xa3, 0xad, 0x5c, 0x61, 0x6b, 0x60, 0x99, 0x3e, 0x0d, 0x6f, 0x07, 0xca, 0xf6, 0x5d, 0xbd, 0xe2, 0x42, 0x8d, 0xa1, 0x75, 0x59, 0x43, 0x94])
r_bytes_3 = bytearray([0x40, 0x0e, 0xb5, 0x5e, 0x1f, 0xb8, 0x7a, 0x92, 0x1a, 0xe2, 0x03, 0x1d, 0x1f, 0x97, 0x59, 0xff, 0x34, 0xe8, 0x8c, 0xe0, 0x8a, 0xb3, 0x21, 0x51, 0x38, 0xd0, 0x8e, 0xbd, 0x22, 0x76, 0xda, 0x64, 0xbb, 0x91, 0xa7, 0x0a, 0xcb, 0x80, 0xd2, 0xe5, 0x18, 0x9f, 0xae, 0x3a, 0x75, 0x52, 0x17, 0xd5])
r_bytes_list = [r_bytes_0, r_bytes_1, r_bytes_2, r_bytes_3]



if __name__ == '__main__':
    ###########################################
    #              Configuration              #
    ###########################################
    elf_file = "frodokem-640-shake/frodokem-640-shake-CW308_STM32F4.elf"

    index = 0
    output_folder = f"sim_output/{index}"
    ensure_folder(output_folder)
    # Will generate instruction traces for functions labeled with "trace":True and will stop after executing functions labeled with "end":True.

    targets = [{"label":"crypto_kem_keypair", "trace":True, "end":False, "arg":[{"label":"pk", "pointer":True, "size":8, "len":9616},
                                                                                 {"label":"sk", "pointer":True, "size":8, "len":19888}]},

               {"label":"crypto_kem_enc", "trace":True, "end":False, "arg":[{"label":"ct", "pointer":True, "size":8, "len":9720},
                                                                             {"label":"ss", "pointer":True, "size":8, "len":16},
                                                                             {"label":"pk", "pointer":True, "size":8, "len":9616}]},

               {"label":"crypto_kem_dec", "trace":True, "end":True, "arg":[{"label":"ss", "pointer":True, "size":8, "len":16},
                                                                            {"label":"ct", "pointer":True, "size":8, "len":9720},
                                                                            {"label":"sk", "pointer":True, "size":8, "len":19888}]}]

    for target in targets:
        target["address"] = get_label_address(elf_file, target["label"])
        target["return_address"] = 0


    #step 1 run upto function call after simple serial write
    target = targets[0]
    ql = initialize_simulator(elf_file, output_folder, targets)
    threading.Thread(target=lambda : ql.run(count=-1, end=target["address"])).start()

    ##########################################
    # Interacting with the fake chipwisperer #
    ##########################################
    sleep(1)
    simpleserial_write(ql, 'b', r_bytes_list[index])
    sleep(1)
    # Execute all steps
    simpleserial_write(ql, 'a', b'')
    sleep(1)
    #########################################
    
    # Enter first target
    print(F"\nENTERED_TARGET, {target['label']}")
    for i, argument in enumerate(target['arg']):
        argument['val'] = ql.arch.regs.read(f"r{i}")
        print(F"ARG {i}, {argument['label']}: {hex(argument['val'])}")
        if argument['pointer']:
            if 'data' in argument.keys():
                ql.mem.write(argument['val'], argument['data'])
                print("DATA_OVERWRITE")
            else:
                argument['data'] = ql.mem.read(argument['val'], argument['len'])
            print(bytes(argument['data']).hex())
    target["return_address"] = ql.arch.regs.read('lr')-1

    # Exit first target
    ql.run(count=-1, end=target["return_address"])

    print(F"EXITED_TARGET, {target['label']}")
    for i, argument in enumerate(target['arg']):
        print(F"ARG {i}, {argument['label']}: {hex(argument['val'])}")
        if argument['pointer']:
            argument['data'] = ql.mem.read(argument['val'], argument['len'])
            print(bytes(argument['data']).hex())

    # rest of targets:
    for target in targets[1:]:
        # enter target
        ql.run(count=-1, end=target["address"])

        print(F"\nENTERED_TARGET, {target['label']}")
        for i, argument in enumerate(target['arg']):
            argument['val'] = ql.arch.regs.read(f"r{i}")
            print(F"ARG {i}, {argument['label']}: {hex(argument['val'])}")
            if argument['pointer']:
                if 'data' in argument.keys():
                    ql.mem.write(argument['val'], argument['data'])
                    print("DATA_OVERWRITE")
                else:
                    argument['data'] = ql.mem.read(argument['val'], argument['len'])
                print(bytes(argument['data']).hex())
        target["return_address"] = ql.arch.regs.read('lr')-1

        # Exit target
        ql.run(count=-1, end=target["return_address"])

        print(F"EXITED_TARGET, {target['label']}")
        for i, argument in enumerate(target['arg']):
            print(F"ARG {i}, {argument['label']}: {hex(argument['val'])}")
            if argument['pointer']:
                argument['data'] = ql.mem.read(argument['val'], argument['len'])
                print(bytes(argument['data']).hex())
