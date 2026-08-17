.syntax unified
.cpu cortex-m4
.thumb


.global sample_n 
.type sample_n, %function
.align 2

sample_n:
        push    {r4, r5, r6, r7, r8, r9, r10, fp, lr}
        cmp     r1, #0
        beq     .L1
        //start trigger
        mov.w fp, #0x0
        movt  fp, #0x4800
        mov.w sl, #4096
        mov.w ip, #0
        movt ip, #4096
        isb  sy
        dsb  sy
        str.w sl, [fp, #24]
        str.w ip, [fp, #24]
        dsb sy // four clock cycles 1,2,3,4
        subs    r0, r0, #2  //5th cycle
        add     ip, r0, r1, lsl #1
        movw    r10, #4643
        movw    r9, #13363
        movw    r8, #20579
        movw    r7, #25843
        movw    r6, #29227
        movw    r5, #31145
        movw    r4, #32103
        movw    lr, #32525 // 14th cycle
.L3:
        ldrh    r2, [r0, #2]! //15,16,17th cycle       66,67,68th cycle (round 2)
        sub     r3, r10, r2, lsr #1 // 18th cycle sub 69th cycle (round 2)
        ubfx    fp, r3, #15, #1
        sub     r3, r9, r2, lsr #1  //20th cycle 
        ubfx    r3, r3, #15, #1
        add     r3, r3, fp
        sub     fp, r8, r2, lsr #1
        ubfx    fp, fp, #15, #1
        add     r3, r3, fp
        sub     fp, r7, r2, lsr #1
        ubfx    fp, fp, #15, #1
        add     r3, r3, fp
        sub     fp, r6, r2, lsr #1
        ubfx    fp, fp, #15, #1
        uxtah   r3, fp, r3
        sub     fp, r5, r2, lsr #1
        ubfx    fp, fp, #15, #1
        uxtah   r3, fp, r3
        sub     fp, r4, r2, lsr #1
        ubfx    fp, fp, #15, #1
        uxtah   r3, fp, r3
        sub     fp, lr, r2, lsr #1
        ubfx    fp, fp, #15, #1
        uxtah   r3, fp, r3
        movw    fp, #32689
        sub     fp, fp, r2, lsr #1
        ubfx    fp, fp, #15, #1
        uxtah   r3, fp, r3
        movw    fp, #32745
        sub     fp, fp, r2, lsr #1
        ubfx    fp, fp, #15, #1
        uxtah   r3, fp, r3
        movw    fp, #32762
        sub     fp, fp, r2, lsr #1
        ubfx    fp, fp, #15, #1
        uxtah   r3, fp, r3
        movw    fp, #32766
        sub     fp, fp, r2, lsr #1
        ubfx    fp, fp, #15, #1
        and     r1, r2, #1
        uxtah   r3, fp, r3
        sbfx    r2, r2, #0, #1
        eors    r2, r2, r3
        add     r2, r2, r1 //60th cycle
        cmp     ip, r0 //61st cycle
        strh    r2, [r0]        @ movhi //62, 63
        bne     .L3 //65,64
.L1:
        mov.w     fp, fp
        add.w     fp, fp
        add.w     fp, fp
        mov.w     fp, fp
        pop     {r4, r5, r6, r7, r8, r9, r10, fp, pc}