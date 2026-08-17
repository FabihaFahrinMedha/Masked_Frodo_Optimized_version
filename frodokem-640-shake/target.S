// get_pt.s
.syntax unified
.cpu cortex-m4
.align 4
.global get_pt
.type get_pt, %function

get_pt:
stmdb	sp!, {r8, sl, fp, lr}
//trigger setup
mov.w	fp, #0
movt	fp, #16386	
mov.w	sl, #4096
mov.w	ip, #0
movt	ip, #4096

//target setup
mov.w r0, #0xFFFF
movt  r0, #0x0001
mov.w r1, #0xAAAA
movt  r1, #0x0002
mov.w r2, #0x5555
movt  r2, #0x0003
mov.w r3, #0xFF00
movt  r3, #0x0004
mov.w r4, #0x00FF
movt  r4, #0x0005
mov.w r5, #0x3333
movt  r5, #0x0006
mov.w r6, #0x7777
movt  r6, #0x0007
mov.w r7, #0xBBBB
movt  r7, #0x0008
mov.w	r8, #0

//trigger
isb	sy
dsb	sy
str.w	sl, [fp, #24]
dsb	sy
// TARGET CODE BELOW
mov.w   r8,r8
sub.w  r1, r2, r3
mul.w  r2, r3, r4
rsb.w  r3, r4, r5
eor.w  r4, r5, r6
orr.w  r5, r6, r7
and.w  r6, r7, r0
bic.w  r7, r0, r1
adc.w  r0, r1, r2
sbc.w  r1, r2, r3
// END TARGET CODE
//trigger reset
str.w	ip, [fp, #24]
movs	r0, #0
ldmia.w	sp!, {r8, sl, fp, pc}