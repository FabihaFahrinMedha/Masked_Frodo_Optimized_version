
frodokem-640-shake-CW308_STM32F3.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <deregister_tm_clones>:
 8000188:	4803      	ldr	r0, [pc, #12]	@ (8000198 <deregister_tm_clones+0x10>)
 800018a:	4b04      	ldr	r3, [pc, #16]	@ (800019c <deregister_tm_clones+0x14>)
 800018c:	4283      	cmp	r3, r0
 800018e:	d002      	beq.n	8000196 <deregister_tm_clones+0xe>
 8000190:	4b03      	ldr	r3, [pc, #12]	@ (80001a0 <deregister_tm_clones+0x18>)
 8000192:	b103      	cbz	r3, 8000196 <deregister_tm_clones+0xe>
 8000194:	4718      	bx	r3
 8000196:	4770      	bx	lr
 8000198:	20000050 	.word	0x20000050
 800019c:	20000050 	.word	0x20000050
 80001a0:	00000000 	.word	0x00000000

080001a4 <register_tm_clones>:
 80001a4:	4805      	ldr	r0, [pc, #20]	@ (80001bc <register_tm_clones+0x18>)
 80001a6:	4b06      	ldr	r3, [pc, #24]	@ (80001c0 <register_tm_clones+0x1c>)
 80001a8:	1a1b      	subs	r3, r3, r0
 80001aa:	0fd9      	lsrs	r1, r3, #31
 80001ac:	eb01 01a3 	add.w	r1, r1, r3, asr #2
 80001b0:	1049      	asrs	r1, r1, #1
 80001b2:	d002      	beq.n	80001ba <register_tm_clones+0x16>
 80001b4:	4b03      	ldr	r3, [pc, #12]	@ (80001c4 <register_tm_clones+0x20>)
 80001b6:	b103      	cbz	r3, 80001ba <register_tm_clones+0x16>
 80001b8:	4718      	bx	r3
 80001ba:	4770      	bx	lr
 80001bc:	20000050 	.word	0x20000050
 80001c0:	20000050 	.word	0x20000050
 80001c4:	00000000 	.word	0x00000000

080001c8 <__do_global_dtors_aux>:
 80001c8:	b510      	push	{r4, lr}
 80001ca:	4c06      	ldr	r4, [pc, #24]	@ (80001e4 <__do_global_dtors_aux+0x1c>)
 80001cc:	7823      	ldrb	r3, [r4, #0]
 80001ce:	b943      	cbnz	r3, 80001e2 <__do_global_dtors_aux+0x1a>
 80001d0:	f7ff ffda 	bl	8000188 <deregister_tm_clones>
 80001d4:	4b04      	ldr	r3, [pc, #16]	@ (80001e8 <__do_global_dtors_aux+0x20>)
 80001d6:	b113      	cbz	r3, 80001de <__do_global_dtors_aux+0x16>
 80001d8:	4804      	ldr	r0, [pc, #16]	@ (80001ec <__do_global_dtors_aux+0x24>)
 80001da:	f3af 8000 	nop.w
 80001de:	2301      	movs	r3, #1
 80001e0:	7023      	strb	r3, [r4, #0]
 80001e2:	bd10      	pop	{r4, pc}
 80001e4:	20000050 	.word	0x20000050
 80001e8:	00000000 	.word	0x00000000
 80001ec:	08003954 	.word	0x08003954

080001f0 <frame_dummy>:
 80001f0:	b508      	push	{r3, lr}
 80001f2:	4b04      	ldr	r3, [pc, #16]	@ (8000204 <frame_dummy+0x14>)
 80001f4:	b11b      	cbz	r3, 80001fe <frame_dummy+0xe>
 80001f6:	4904      	ldr	r1, [pc, #16]	@ (8000208 <frame_dummy+0x18>)
 80001f8:	4804      	ldr	r0, [pc, #16]	@ (800020c <frame_dummy+0x1c>)
 80001fa:	f3af 8000 	nop.w
 80001fe:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000202:	e7cf      	b.n	80001a4 <register_tm_clones>
 8000204:	00000000 	.word	0x00000000
 8000208:	20000054 	.word	0x20000054
 800020c:	08003954 	.word	0x08003954

08000210 <xs>:
 8000210:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000214:	4684      	mov	ip, r0
 8000216:	f04f 0000 	mov.w	r0, #0
 800021a:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800021e:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000222:	fb22 0007 	smlad	r0, r2, r7, r0
 8000226:	fb23 0008 	smlad	r0, r3, r8, r0
 800022a:	fb24 0009 	smlad	r0, r4, r9, r0
 800022e:	fb25 000a 	smlad	r0, r5, sl, r0
 8000232:	fb26 000b 	smlad	r0, r6, fp, r0
 8000236:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800023a:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800023e:	fb22 0007 	smlad	r0, r2, r7, r0
 8000242:	fb23 0008 	smlad	r0, r3, r8, r0
 8000246:	fb24 0009 	smlad	r0, r4, r9, r0
 800024a:	fb25 000a 	smlad	r0, r5, sl, r0
 800024e:	fb26 000b 	smlad	r0, r6, fp, r0
 8000252:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000256:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800025a:	fb22 0007 	smlad	r0, r2, r7, r0
 800025e:	fb23 0008 	smlad	r0, r3, r8, r0
 8000262:	fb24 0009 	smlad	r0, r4, r9, r0
 8000266:	fb25 000a 	smlad	r0, r5, sl, r0
 800026a:	fb26 000b 	smlad	r0, r6, fp, r0
 800026e:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000272:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000276:	fb22 0007 	smlad	r0, r2, r7, r0
 800027a:	fb23 0008 	smlad	r0, r3, r8, r0
 800027e:	fb24 0009 	smlad	r0, r4, r9, r0
 8000282:	fb25 000a 	smlad	r0, r5, sl, r0
 8000286:	fb26 000b 	smlad	r0, r6, fp, r0
 800028a:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800028e:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000292:	fb22 0007 	smlad	r0, r2, r7, r0
 8000296:	fb23 0008 	smlad	r0, r3, r8, r0
 800029a:	fb24 0009 	smlad	r0, r4, r9, r0
 800029e:	fb25 000a 	smlad	r0, r5, sl, r0
 80002a2:	fb26 000b 	smlad	r0, r6, fp, r0
 80002a6:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80002aa:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80002ae:	fb22 0007 	smlad	r0, r2, r7, r0
 80002b2:	fb23 0008 	smlad	r0, r3, r8, r0
 80002b6:	fb24 0009 	smlad	r0, r4, r9, r0
 80002ba:	fb25 000a 	smlad	r0, r5, sl, r0
 80002be:	fb26 000b 	smlad	r0, r6, fp, r0
 80002c2:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80002c6:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80002ca:	fb22 0007 	smlad	r0, r2, r7, r0
 80002ce:	fb23 0008 	smlad	r0, r3, r8, r0
 80002d2:	fb24 0009 	smlad	r0, r4, r9, r0
 80002d6:	fb25 000a 	smlad	r0, r5, sl, r0
 80002da:	fb26 000b 	smlad	r0, r6, fp, r0
 80002de:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80002e2:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80002e6:	fb22 0007 	smlad	r0, r2, r7, r0
 80002ea:	fb23 0008 	smlad	r0, r3, r8, r0
 80002ee:	fb24 0009 	smlad	r0, r4, r9, r0
 80002f2:	fb25 000a 	smlad	r0, r5, sl, r0
 80002f6:	fb26 000b 	smlad	r0, r6, fp, r0
 80002fa:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80002fe:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000302:	fb22 0007 	smlad	r0, r2, r7, r0
 8000306:	fb23 0008 	smlad	r0, r3, r8, r0
 800030a:	fb24 0009 	smlad	r0, r4, r9, r0
 800030e:	fb25 000a 	smlad	r0, r5, sl, r0
 8000312:	fb26 000b 	smlad	r0, r6, fp, r0
 8000316:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800031a:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800031e:	fb22 0007 	smlad	r0, r2, r7, r0
 8000322:	fb23 0008 	smlad	r0, r3, r8, r0
 8000326:	fb24 0009 	smlad	r0, r4, r9, r0
 800032a:	fb25 000a 	smlad	r0, r5, sl, r0
 800032e:	fb26 000b 	smlad	r0, r6, fp, r0
 8000332:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000336:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800033a:	fb22 0007 	smlad	r0, r2, r7, r0
 800033e:	fb23 0008 	smlad	r0, r3, r8, r0
 8000342:	fb24 0009 	smlad	r0, r4, r9, r0
 8000346:	fb25 000a 	smlad	r0, r5, sl, r0
 800034a:	fb26 000b 	smlad	r0, r6, fp, r0
 800034e:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000352:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000356:	fb22 0007 	smlad	r0, r2, r7, r0
 800035a:	fb23 0008 	smlad	r0, r3, r8, r0
 800035e:	fb24 0009 	smlad	r0, r4, r9, r0
 8000362:	fb25 000a 	smlad	r0, r5, sl, r0
 8000366:	fb26 000b 	smlad	r0, r6, fp, r0
 800036a:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800036e:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000372:	fb22 0007 	smlad	r0, r2, r7, r0
 8000376:	fb23 0008 	smlad	r0, r3, r8, r0
 800037a:	fb24 0009 	smlad	r0, r4, r9, r0
 800037e:	fb25 000a 	smlad	r0, r5, sl, r0
 8000382:	fb26 000b 	smlad	r0, r6, fp, r0
 8000386:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800038a:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800038e:	fb22 0007 	smlad	r0, r2, r7, r0
 8000392:	fb23 0008 	smlad	r0, r3, r8, r0
 8000396:	fb24 0009 	smlad	r0, r4, r9, r0
 800039a:	fb25 000a 	smlad	r0, r5, sl, r0
 800039e:	fb26 000b 	smlad	r0, r6, fp, r0
 80003a2:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80003a6:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80003aa:	fb22 0007 	smlad	r0, r2, r7, r0
 80003ae:	fb23 0008 	smlad	r0, r3, r8, r0
 80003b2:	fb24 0009 	smlad	r0, r4, r9, r0
 80003b6:	fb25 000a 	smlad	r0, r5, sl, r0
 80003ba:	fb26 000b 	smlad	r0, r6, fp, r0
 80003be:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80003c2:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80003c6:	fb22 0007 	smlad	r0, r2, r7, r0
 80003ca:	fb23 0008 	smlad	r0, r3, r8, r0
 80003ce:	fb24 0009 	smlad	r0, r4, r9, r0
 80003d2:	fb25 000a 	smlad	r0, r5, sl, r0
 80003d6:	fb26 000b 	smlad	r0, r6, fp, r0
 80003da:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80003de:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80003e2:	fb22 0007 	smlad	r0, r2, r7, r0
 80003e6:	fb23 0008 	smlad	r0, r3, r8, r0
 80003ea:	fb24 0009 	smlad	r0, r4, r9, r0
 80003ee:	fb25 000a 	smlad	r0, r5, sl, r0
 80003f2:	fb26 000b 	smlad	r0, r6, fp, r0
 80003f6:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80003fa:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80003fe:	fb22 0007 	smlad	r0, r2, r7, r0
 8000402:	fb23 0008 	smlad	r0, r3, r8, r0
 8000406:	fb24 0009 	smlad	r0, r4, r9, r0
 800040a:	fb25 000a 	smlad	r0, r5, sl, r0
 800040e:	fb26 000b 	smlad	r0, r6, fp, r0
 8000412:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000416:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800041a:	fb22 0007 	smlad	r0, r2, r7, r0
 800041e:	fb23 0008 	smlad	r0, r3, r8, r0
 8000422:	fb24 0009 	smlad	r0, r4, r9, r0
 8000426:	fb25 000a 	smlad	r0, r5, sl, r0
 800042a:	fb26 000b 	smlad	r0, r6, fp, r0
 800042e:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000432:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000436:	fb22 0007 	smlad	r0, r2, r7, r0
 800043a:	fb23 0008 	smlad	r0, r3, r8, r0
 800043e:	fb24 0009 	smlad	r0, r4, r9, r0
 8000442:	fb25 000a 	smlad	r0, r5, sl, r0
 8000446:	fb26 000b 	smlad	r0, r6, fp, r0
 800044a:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800044e:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000452:	fb22 0007 	smlad	r0, r2, r7, r0
 8000456:	fb23 0008 	smlad	r0, r3, r8, r0
 800045a:	fb24 0009 	smlad	r0, r4, r9, r0
 800045e:	fb25 000a 	smlad	r0, r5, sl, r0
 8000462:	fb26 000b 	smlad	r0, r6, fp, r0
 8000466:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800046a:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800046e:	fb22 0007 	smlad	r0, r2, r7, r0
 8000472:	fb23 0008 	smlad	r0, r3, r8, r0
 8000476:	fb24 0009 	smlad	r0, r4, r9, r0
 800047a:	fb25 000a 	smlad	r0, r5, sl, r0
 800047e:	fb26 000b 	smlad	r0, r6, fp, r0
 8000482:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000486:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800048a:	fb22 0007 	smlad	r0, r2, r7, r0
 800048e:	fb23 0008 	smlad	r0, r3, r8, r0
 8000492:	fb24 0009 	smlad	r0, r4, r9, r0
 8000496:	fb25 000a 	smlad	r0, r5, sl, r0
 800049a:	fb26 000b 	smlad	r0, r6, fp, r0
 800049e:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80004a2:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80004a6:	fb22 0007 	smlad	r0, r2, r7, r0
 80004aa:	fb23 0008 	smlad	r0, r3, r8, r0
 80004ae:	fb24 0009 	smlad	r0, r4, r9, r0
 80004b2:	fb25 000a 	smlad	r0, r5, sl, r0
 80004b6:	fb26 000b 	smlad	r0, r6, fp, r0
 80004ba:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80004be:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80004c2:	fb22 0007 	smlad	r0, r2, r7, r0
 80004c6:	fb23 0008 	smlad	r0, r3, r8, r0
 80004ca:	fb24 0009 	smlad	r0, r4, r9, r0
 80004ce:	fb25 000a 	smlad	r0, r5, sl, r0
 80004d2:	fb26 000b 	smlad	r0, r6, fp, r0
 80004d6:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80004da:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80004de:	fb22 0007 	smlad	r0, r2, r7, r0
 80004e2:	fb23 0008 	smlad	r0, r3, r8, r0
 80004e6:	fb24 0009 	smlad	r0, r4, r9, r0
 80004ea:	fb25 000a 	smlad	r0, r5, sl, r0
 80004ee:	fb26 000b 	smlad	r0, r6, fp, r0
 80004f2:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80004f6:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80004fa:	fb22 0007 	smlad	r0, r2, r7, r0
 80004fe:	fb23 0008 	smlad	r0, r3, r8, r0
 8000502:	fb24 0009 	smlad	r0, r4, r9, r0
 8000506:	fb25 000a 	smlad	r0, r5, sl, r0
 800050a:	fb26 000b 	smlad	r0, r6, fp, r0
 800050e:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000512:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000516:	fb22 0007 	smlad	r0, r2, r7, r0
 800051a:	fb23 0008 	smlad	r0, r3, r8, r0
 800051e:	fb24 0009 	smlad	r0, r4, r9, r0
 8000522:	fb25 000a 	smlad	r0, r5, sl, r0
 8000526:	fb26 000b 	smlad	r0, r6, fp, r0
 800052a:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800052e:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000532:	fb22 0007 	smlad	r0, r2, r7, r0
 8000536:	fb23 0008 	smlad	r0, r3, r8, r0
 800053a:	fb24 0009 	smlad	r0, r4, r9, r0
 800053e:	fb25 000a 	smlad	r0, r5, sl, r0
 8000542:	fb26 000b 	smlad	r0, r6, fp, r0
 8000546:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800054a:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800054e:	fb22 0007 	smlad	r0, r2, r7, r0
 8000552:	fb23 0008 	smlad	r0, r3, r8, r0
 8000556:	fb24 0009 	smlad	r0, r4, r9, r0
 800055a:	fb25 000a 	smlad	r0, r5, sl, r0
 800055e:	fb26 000b 	smlad	r0, r6, fp, r0
 8000562:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000566:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800056a:	fb22 0007 	smlad	r0, r2, r7, r0
 800056e:	fb23 0008 	smlad	r0, r3, r8, r0
 8000572:	fb24 0009 	smlad	r0, r4, r9, r0
 8000576:	fb25 000a 	smlad	r0, r5, sl, r0
 800057a:	fb26 000b 	smlad	r0, r6, fp, r0
 800057e:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000582:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000586:	fb22 0007 	smlad	r0, r2, r7, r0
 800058a:	fb23 0008 	smlad	r0, r3, r8, r0
 800058e:	fb24 0009 	smlad	r0, r4, r9, r0
 8000592:	fb25 000a 	smlad	r0, r5, sl, r0
 8000596:	fb26 000b 	smlad	r0, r6, fp, r0
 800059a:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800059e:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80005a2:	fb22 0007 	smlad	r0, r2, r7, r0
 80005a6:	fb23 0008 	smlad	r0, r3, r8, r0
 80005aa:	fb24 0009 	smlad	r0, r4, r9, r0
 80005ae:	fb25 000a 	smlad	r0, r5, sl, r0
 80005b2:	fb26 000b 	smlad	r0, r6, fp, r0
 80005b6:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80005ba:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80005be:	fb22 0007 	smlad	r0, r2, r7, r0
 80005c2:	fb23 0008 	smlad	r0, r3, r8, r0
 80005c6:	fb24 0009 	smlad	r0, r4, r9, r0
 80005ca:	fb25 000a 	smlad	r0, r5, sl, r0
 80005ce:	fb26 000b 	smlad	r0, r6, fp, r0
 80005d2:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80005d6:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80005da:	fb22 0007 	smlad	r0, r2, r7, r0
 80005de:	fb23 0008 	smlad	r0, r3, r8, r0
 80005e2:	fb24 0009 	smlad	r0, r4, r9, r0
 80005e6:	fb25 000a 	smlad	r0, r5, sl, r0
 80005ea:	fb26 000b 	smlad	r0, r6, fp, r0
 80005ee:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80005f2:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80005f6:	fb22 0007 	smlad	r0, r2, r7, r0
 80005fa:	fb23 0008 	smlad	r0, r3, r8, r0
 80005fe:	fb24 0009 	smlad	r0, r4, r9, r0
 8000602:	fb25 000a 	smlad	r0, r5, sl, r0
 8000606:	fb26 000b 	smlad	r0, r6, fp, r0
 800060a:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800060e:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000612:	fb22 0007 	smlad	r0, r2, r7, r0
 8000616:	fb23 0008 	smlad	r0, r3, r8, r0
 800061a:	fb24 0009 	smlad	r0, r4, r9, r0
 800061e:	fb25 000a 	smlad	r0, r5, sl, r0
 8000622:	fb26 000b 	smlad	r0, r6, fp, r0
 8000626:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800062a:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800062e:	fb22 0007 	smlad	r0, r2, r7, r0
 8000632:	fb23 0008 	smlad	r0, r3, r8, r0
 8000636:	fb24 0009 	smlad	r0, r4, r9, r0
 800063a:	fb25 000a 	smlad	r0, r5, sl, r0
 800063e:	fb26 000b 	smlad	r0, r6, fp, r0
 8000642:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000646:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800064a:	fb22 0007 	smlad	r0, r2, r7, r0
 800064e:	fb23 0008 	smlad	r0, r3, r8, r0
 8000652:	fb24 0009 	smlad	r0, r4, r9, r0
 8000656:	fb25 000a 	smlad	r0, r5, sl, r0
 800065a:	fb26 000b 	smlad	r0, r6, fp, r0
 800065e:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000662:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000666:	fb22 0007 	smlad	r0, r2, r7, r0
 800066a:	fb23 0008 	smlad	r0, r3, r8, r0
 800066e:	fb24 0009 	smlad	r0, r4, r9, r0
 8000672:	fb25 000a 	smlad	r0, r5, sl, r0
 8000676:	fb26 000b 	smlad	r0, r6, fp, r0
 800067a:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800067e:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000682:	fb22 0007 	smlad	r0, r2, r7, r0
 8000686:	fb23 0008 	smlad	r0, r3, r8, r0
 800068a:	fb24 0009 	smlad	r0, r4, r9, r0
 800068e:	fb25 000a 	smlad	r0, r5, sl, r0
 8000692:	fb26 000b 	smlad	r0, r6, fp, r0
 8000696:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800069a:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800069e:	fb22 0007 	smlad	r0, r2, r7, r0
 80006a2:	fb23 0008 	smlad	r0, r3, r8, r0
 80006a6:	fb24 0009 	smlad	r0, r4, r9, r0
 80006aa:	fb25 000a 	smlad	r0, r5, sl, r0
 80006ae:	fb26 000b 	smlad	r0, r6, fp, r0
 80006b2:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80006b6:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80006ba:	fb22 0007 	smlad	r0, r2, r7, r0
 80006be:	fb23 0008 	smlad	r0, r3, r8, r0
 80006c2:	fb24 0009 	smlad	r0, r4, r9, r0
 80006c6:	fb25 000a 	smlad	r0, r5, sl, r0
 80006ca:	fb26 000b 	smlad	r0, r6, fp, r0
 80006ce:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80006d2:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80006d6:	fb22 0007 	smlad	r0, r2, r7, r0
 80006da:	fb23 0008 	smlad	r0, r3, r8, r0
 80006de:	fb24 0009 	smlad	r0, r4, r9, r0
 80006e2:	fb25 000a 	smlad	r0, r5, sl, r0
 80006e6:	fb26 000b 	smlad	r0, r6, fp, r0
 80006ea:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80006ee:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80006f2:	fb22 0007 	smlad	r0, r2, r7, r0
 80006f6:	fb23 0008 	smlad	r0, r3, r8, r0
 80006fa:	fb24 0009 	smlad	r0, r4, r9, r0
 80006fe:	fb25 000a 	smlad	r0, r5, sl, r0
 8000702:	fb26 000b 	smlad	r0, r6, fp, r0
 8000706:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800070a:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800070e:	fb22 0007 	smlad	r0, r2, r7, r0
 8000712:	fb23 0008 	smlad	r0, r3, r8, r0
 8000716:	fb24 0009 	smlad	r0, r4, r9, r0
 800071a:	fb25 000a 	smlad	r0, r5, sl, r0
 800071e:	fb26 000b 	smlad	r0, r6, fp, r0
 8000722:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000726:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800072a:	fb22 0007 	smlad	r0, r2, r7, r0
 800072e:	fb23 0008 	smlad	r0, r3, r8, r0
 8000732:	fb24 0009 	smlad	r0, r4, r9, r0
 8000736:	fb25 000a 	smlad	r0, r5, sl, r0
 800073a:	fb26 000b 	smlad	r0, r6, fp, r0
 800073e:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000742:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000746:	fb22 0007 	smlad	r0, r2, r7, r0
 800074a:	fb23 0008 	smlad	r0, r3, r8, r0
 800074e:	fb24 0009 	smlad	r0, r4, r9, r0
 8000752:	fb25 000a 	smlad	r0, r5, sl, r0
 8000756:	fb26 000b 	smlad	r0, r6, fp, r0
 800075a:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800075e:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000762:	fb22 0007 	smlad	r0, r2, r7, r0
 8000766:	fb23 0008 	smlad	r0, r3, r8, r0
 800076a:	fb24 0009 	smlad	r0, r4, r9, r0
 800076e:	fb25 000a 	smlad	r0, r5, sl, r0
 8000772:	fb26 000b 	smlad	r0, r6, fp, r0
 8000776:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800077a:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800077e:	fb22 0007 	smlad	r0, r2, r7, r0
 8000782:	fb23 0008 	smlad	r0, r3, r8, r0
 8000786:	fb24 0009 	smlad	r0, r4, r9, r0
 800078a:	fb25 000a 	smlad	r0, r5, sl, r0
 800078e:	fb26 000b 	smlad	r0, r6, fp, r0
 8000792:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000796:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800079a:	fb22 0007 	smlad	r0, r2, r7, r0
 800079e:	fb23 0008 	smlad	r0, r3, r8, r0
 80007a2:	fb24 0009 	smlad	r0, r4, r9, r0
 80007a6:	fb25 000a 	smlad	r0, r5, sl, r0
 80007aa:	fb26 000b 	smlad	r0, r6, fp, r0
 80007ae:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80007b2:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80007b6:	fb22 0007 	smlad	r0, r2, r7, r0
 80007ba:	fb23 0008 	smlad	r0, r3, r8, r0
 80007be:	fb24 0009 	smlad	r0, r4, r9, r0
 80007c2:	fb25 000a 	smlad	r0, r5, sl, r0
 80007c6:	fb26 000b 	smlad	r0, r6, fp, r0
 80007ca:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80007ce:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80007d2:	fb22 0007 	smlad	r0, r2, r7, r0
 80007d6:	fb23 0008 	smlad	r0, r3, r8, r0
 80007da:	fb24 0009 	smlad	r0, r4, r9, r0
 80007de:	fb25 000a 	smlad	r0, r5, sl, r0
 80007e2:	fb26 000b 	smlad	r0, r6, fp, r0
 80007e6:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80007ea:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80007ee:	fb22 0007 	smlad	r0, r2, r7, r0
 80007f2:	fb23 0008 	smlad	r0, r3, r8, r0
 80007f6:	fb24 0009 	smlad	r0, r4, r9, r0
 80007fa:	fb25 000a 	smlad	r0, r5, sl, r0
 80007fe:	fb26 000b 	smlad	r0, r6, fp, r0
 8000802:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000806:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800080a:	fb22 0007 	smlad	r0, r2, r7, r0
 800080e:	fb23 0008 	smlad	r0, r3, r8, r0
 8000812:	fb24 0009 	smlad	r0, r4, r9, r0
 8000816:	fb25 000a 	smlad	r0, r5, sl, r0
 800081a:	fb26 000b 	smlad	r0, r6, fp, r0
 800081e:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000822:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000826:	fb22 0007 	smlad	r0, r2, r7, r0
 800082a:	fb23 0008 	smlad	r0, r3, r8, r0
 800082e:	fb24 0009 	smlad	r0, r4, r9, r0
 8000832:	fb25 000a 	smlad	r0, r5, sl, r0
 8000836:	fb26 000b 	smlad	r0, r6, fp, r0
 800083a:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800083e:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000842:	fb22 0007 	smlad	r0, r2, r7, r0
 8000846:	fb23 0008 	smlad	r0, r3, r8, r0
 800084a:	fb24 0009 	smlad	r0, r4, r9, r0
 800084e:	fb25 000a 	smlad	r0, r5, sl, r0
 8000852:	fb26 000b 	smlad	r0, r6, fp, r0
 8000856:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 800085a:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800085e:	fb22 0007 	smlad	r0, r2, r7, r0
 8000862:	fb23 0008 	smlad	r0, r3, r8, r0
 8000866:	fb24 0009 	smlad	r0, r4, r9, r0
 800086a:	fb25 000a 	smlad	r0, r5, sl, r0
 800086e:	fb26 000b 	smlad	r0, r6, fp, r0
 8000872:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000876:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 800087a:	fb22 0007 	smlad	r0, r2, r7, r0
 800087e:	fb23 0008 	smlad	r0, r3, r8, r0
 8000882:	fb24 0009 	smlad	r0, r4, r9, r0
 8000886:	fb25 000a 	smlad	r0, r5, sl, r0
 800088a:	fb26 000b 	smlad	r0, r6, fp, r0
 800088e:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000892:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000896:	fb22 0007 	smlad	r0, r2, r7, r0
 800089a:	fb23 0008 	smlad	r0, r3, r8, r0
 800089e:	fb24 0009 	smlad	r0, r4, r9, r0
 80008a2:	fb25 000a 	smlad	r0, r5, sl, r0
 80008a6:	fb26 000b 	smlad	r0, r6, fp, r0
 80008aa:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80008ae:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80008b2:	fb22 0007 	smlad	r0, r2, r7, r0
 80008b6:	fb23 0008 	smlad	r0, r3, r8, r0
 80008ba:	fb24 0009 	smlad	r0, r4, r9, r0
 80008be:	fb25 000a 	smlad	r0, r5, sl, r0
 80008c2:	fb26 000b 	smlad	r0, r6, fp, r0
 80008c6:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80008ca:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80008ce:	fb22 0007 	smlad	r0, r2, r7, r0
 80008d2:	fb23 0008 	smlad	r0, r3, r8, r0
 80008d6:	fb24 0009 	smlad	r0, r4, r9, r0
 80008da:	fb25 000a 	smlad	r0, r5, sl, r0
 80008de:	fb26 000b 	smlad	r0, r6, fp, r0
 80008e2:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 80008e6:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 80008ea:	fb22 0007 	smlad	r0, r2, r7, r0
 80008ee:	fb23 0008 	smlad	r0, r3, r8, r0
 80008f2:	fb24 0009 	smlad	r0, r4, r9, r0
 80008f6:	fb25 000a 	smlad	r0, r5, sl, r0
 80008fa:	fb26 000b 	smlad	r0, r6, fp, r0
 80008fe:	e8bc 007c 	ldmia.w	ip!, {r2, r3, r4, r5, r6}
 8000902:	e8b1 0f80 	ldmia.w	r1!, {r7, r8, r9, sl, fp}
 8000906:	fb22 0007 	smlad	r0, r2, r7, r0
 800090a:	fb23 0008 	smlad	r0, r3, r8, r0
 800090e:	fb24 0009 	smlad	r0, r4, r9, r0
 8000912:	fb25 000a 	smlad	r0, r5, sl, r0
 8000916:	fb26 000b 	smlad	r0, r6, fp, r0
 800091a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800091e:	bf00      	nop

08000920 <sb>:
 8000920:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000924:	4696      	mov	lr, r2
 8000926:	f8b2 c000 	ldrh.w	ip, [r2]
 800092a:	8a15      	ldrh	r5, [r2, #16]
 800092c:	f365 4c1f 	bfi	ip, r5, #16, #16
 8000930:	f8b2 e020 	ldrh.w	lr, [r2, #32]
 8000934:	8e15      	ldrh	r5, [r2, #48]	@ 0x30
 8000936:	f365 4e1f 	bfi	lr, r5, #16, #16
 800093a:	f8b2 3040 	ldrh.w	r3, [r2, #64]	@ 0x40
 800093e:	f8b2 5050 	ldrh.w	r5, [r2, #80]	@ 0x50
 8000942:	f365 431f 	bfi	r3, r5, #16, #16
 8000946:	f8b2 4060 	ldrh.w	r4, [r2, #96]	@ 0x60
 800094a:	f8b2 5070 	ldrh.w	r5, [r2, #112]	@ 0x70
 800094e:	f365 441f 	bfi	r4, r5, #16, #16
 8000952:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000956:	f8b0 a000 	ldrh.w	sl, [r0]
 800095a:	fb2c aa05 	smlad	sl, ip, r5, sl
 800095e:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000962:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000966:	fb24 aa08 	smlad	sl, r4, r8, sl
 800096a:	f820 ab10 	strh.w	sl, [r0], #16
 800096e:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 8000972:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000976:	f8b0 a000 	ldrh.w	sl, [r0]
 800097a:	fb2c aa05 	smlad	sl, ip, r5, sl
 800097e:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000982:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000986:	fb24 aa08 	smlad	sl, r4, r8, sl
 800098a:	f820 ab10 	strh.w	sl, [r0], #16
 800098e:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 8000992:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000996:	f8b0 a000 	ldrh.w	sl, [r0]
 800099a:	fb2c aa05 	smlad	sl, ip, r5, sl
 800099e:	fb2e aa06 	smlad	sl, lr, r6, sl
 80009a2:	fb23 aa07 	smlad	sl, r3, r7, sl
 80009a6:	fb24 aa08 	smlad	sl, r4, r8, sl
 80009aa:	f820 ab10 	strh.w	sl, [r0], #16
 80009ae:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 80009b2:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 80009b6:	f8b0 a000 	ldrh.w	sl, [r0]
 80009ba:	fb2c aa05 	smlad	sl, ip, r5, sl
 80009be:	fb2e aa06 	smlad	sl, lr, r6, sl
 80009c2:	fb23 aa07 	smlad	sl, r3, r7, sl
 80009c6:	fb24 aa08 	smlad	sl, r4, r8, sl
 80009ca:	f820 ab10 	strh.w	sl, [r0], #16
 80009ce:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 80009d2:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 80009d6:	f8b0 a000 	ldrh.w	sl, [r0]
 80009da:	fb2c aa05 	smlad	sl, ip, r5, sl
 80009de:	fb2e aa06 	smlad	sl, lr, r6, sl
 80009e2:	fb23 aa07 	smlad	sl, r3, r7, sl
 80009e6:	fb24 aa08 	smlad	sl, r4, r8, sl
 80009ea:	f820 ab10 	strh.w	sl, [r0], #16
 80009ee:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 80009f2:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 80009f6:	f8b0 a000 	ldrh.w	sl, [r0]
 80009fa:	fb2c aa05 	smlad	sl, ip, r5, sl
 80009fe:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000a02:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000a06:	fb24 aa08 	smlad	sl, r4, r8, sl
 8000a0a:	f820 ab10 	strh.w	sl, [r0], #16
 8000a0e:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 8000a12:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000a16:	f8b0 a000 	ldrh.w	sl, [r0]
 8000a1a:	fb2c aa05 	smlad	sl, ip, r5, sl
 8000a1e:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000a22:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000a26:	fb24 aa08 	smlad	sl, r4, r8, sl
 8000a2a:	f820 ab10 	strh.w	sl, [r0], #16
 8000a2e:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 8000a32:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000a36:	f8b0 a000 	ldrh.w	sl, [r0]
 8000a3a:	fb2c aa05 	smlad	sl, ip, r5, sl
 8000a3e:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000a42:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000a46:	fb24 aa08 	smlad	sl, r4, r8, sl
 8000a4a:	f820 ab10 	strh.w	sl, [r0], #16
 8000a4e:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 8000a52:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000a56:	bf00      	nop

08000a58 <sa>:
 8000a58:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000a5c:	f8b2 c000 	ldrh.w	ip, [r2]
 8000a60:	f8b2 5500 	ldrh.w	r5, [r2, #1280]	@ 0x500
 8000a64:	f365 4c1f 	bfi	ip, r5, #16, #16
 8000a68:	f8b2 ea00 	ldrh.w	lr, [r2, #2560]	@ 0xa00
 8000a6c:	f8b2 5f00 	ldrh.w	r5, [r2, #3840]	@ 0xf00
 8000a70:	f365 4e1f 	bfi	lr, r5, #16, #16
 8000a74:	f502 52a0 	add.w	r2, r2, #5120	@ 0x1400
 8000a78:	8813      	ldrh	r3, [r2, #0]
 8000a7a:	f8b2 5500 	ldrh.w	r5, [r2, #1280]	@ 0x500
 8000a7e:	f365 431f 	bfi	r3, r5, #16, #16
 8000a82:	f8b2 4a00 	ldrh.w	r4, [r2, #2560]	@ 0xa00
 8000a86:	f8b2 5f00 	ldrh.w	r5, [r2, #3840]	@ 0xf00
 8000a8a:	f365 441f 	bfi	r4, r5, #16, #16
 8000a8e:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000a92:	f8b0 a000 	ldrh.w	sl, [r0]
 8000a96:	fb2c aa05 	smlad	sl, ip, r5, sl
 8000a9a:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000a9e:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000aa2:	fb24 aa08 	smlad	sl, r4, r8, sl
 8000aa6:	f8a0 a000 	strh.w	sl, [r0]
 8000aaa:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 8000aae:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000ab2:	f8b0 a500 	ldrh.w	sl, [r0, #1280]	@ 0x500
 8000ab6:	fb2c aa05 	smlad	sl, ip, r5, sl
 8000aba:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000abe:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000ac2:	fb24 aa08 	smlad	sl, r4, r8, sl
 8000ac6:	f8a0 a500 	strh.w	sl, [r0, #1280]	@ 0x500
 8000aca:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 8000ace:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000ad2:	f8b0 aa00 	ldrh.w	sl, [r0, #2560]	@ 0xa00
 8000ad6:	fb2c aa05 	smlad	sl, ip, r5, sl
 8000ada:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000ade:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000ae2:	fb24 aa08 	smlad	sl, r4, r8, sl
 8000ae6:	f8a0 aa00 	strh.w	sl, [r0, #2560]	@ 0xa00
 8000aea:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 8000aee:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000af2:	f8b0 af00 	ldrh.w	sl, [r0, #3840]	@ 0xf00
 8000af6:	fb2c aa05 	smlad	sl, ip, r5, sl
 8000afa:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000afe:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000b02:	fb24 aa08 	smlad	sl, r4, r8, sl
 8000b06:	f8a0 af00 	strh.w	sl, [r0, #3840]	@ 0xf00
 8000b0a:	f500 50a0 	add.w	r0, r0, #5120	@ 0x1400
 8000b0e:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 8000b12:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000b16:	f8b0 a000 	ldrh.w	sl, [r0]
 8000b1a:	fb2c aa05 	smlad	sl, ip, r5, sl
 8000b1e:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000b22:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000b26:	fb24 aa08 	smlad	sl, r4, r8, sl
 8000b2a:	f8a0 a000 	strh.w	sl, [r0]
 8000b2e:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 8000b32:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000b36:	f8b0 a500 	ldrh.w	sl, [r0, #1280]	@ 0x500
 8000b3a:	fb2c aa05 	smlad	sl, ip, r5, sl
 8000b3e:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000b42:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000b46:	fb24 aa08 	smlad	sl, r4, r8, sl
 8000b4a:	f8a0 a500 	strh.w	sl, [r0, #1280]	@ 0x500
 8000b4e:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 8000b52:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000b56:	f8b0 aa00 	ldrh.w	sl, [r0, #2560]	@ 0xa00
 8000b5a:	fb2c aa05 	smlad	sl, ip, r5, sl
 8000b5e:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000b62:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000b66:	fb24 aa08 	smlad	sl, r4, r8, sl
 8000b6a:	f8a0 aa00 	strh.w	sl, [r0, #2560]	@ 0xa00
 8000b6e:	f501 61a0 	add.w	r1, r1, #1280	@ 0x500
 8000b72:	e891 01e0 	ldmia.w	r1, {r5, r6, r7, r8}
 8000b76:	f8b0 af00 	ldrh.w	sl, [r0, #3840]	@ 0xf00
 8000b7a:	fb2c aa05 	smlad	sl, ip, r5, sl
 8000b7e:	fb2e aa06 	smlad	sl, lr, r6, sl
 8000b82:	fb23 aa07 	smlad	sl, r3, r7, sl
 8000b86:	fb24 aa08 	smlad	sl, r4, r8, sl
 8000b8a:	f8a0 af00 	strh.w	sl, [r0, #3840]	@ 0xf00
 8000b8e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000b92:	bf00      	nop

08000b94 <__libc_init_array>:
 8000b94:	b570      	push	{r4, r5, r6, lr}
 8000b96:	4b0f      	ldr	r3, [pc, #60]	@ (8000bd4 <__libc_init_array+0x40>)
 8000b98:	4d0f      	ldr	r5, [pc, #60]	@ (8000bd8 <__libc_init_array+0x44>)
 8000b9a:	42ab      	cmp	r3, r5
 8000b9c:	eba3 0605 	sub.w	r6, r3, r5
 8000ba0:	d007      	beq.n	8000bb2 <__libc_init_array+0x1e>
 8000ba2:	10b6      	asrs	r6, r6, #2
 8000ba4:	2400      	movs	r4, #0
 8000ba6:	f855 3b04 	ldr.w	r3, [r5], #4
 8000baa:	3401      	adds	r4, #1
 8000bac:	4798      	blx	r3
 8000bae:	42a6      	cmp	r6, r4
 8000bb0:	d8f9      	bhi.n	8000ba6 <__libc_init_array+0x12>
 8000bb2:	f002 fecf 	bl	8003954 <_init>
 8000bb6:	4d09      	ldr	r5, [pc, #36]	@ (8000bdc <__libc_init_array+0x48>)
 8000bb8:	4b09      	ldr	r3, [pc, #36]	@ (8000be0 <__libc_init_array+0x4c>)
 8000bba:	1b5e      	subs	r6, r3, r5
 8000bbc:	42ab      	cmp	r3, r5
 8000bbe:	ea4f 06a6 	mov.w	r6, r6, asr #2
 8000bc2:	d006      	beq.n	8000bd2 <__libc_init_array+0x3e>
 8000bc4:	2400      	movs	r4, #0
 8000bc6:	f855 3b04 	ldr.w	r3, [r5], #4
 8000bca:	3401      	adds	r4, #1
 8000bcc:	4798      	blx	r3
 8000bce:	42a6      	cmp	r6, r4
 8000bd0:	d8f9      	bhi.n	8000bc6 <__libc_init_array+0x32>
 8000bd2:	bd70      	pop	{r4, r5, r6, pc}
 8000bd4:	08003a64 	.word	0x08003a64
 8000bd8:	08003a64 	.word	0x08003a64
 8000bdc:	08003a64 	.word	0x08003a64
 8000be0:	08003a68 	.word	0x08003a68

08000be4 <memset>:
 8000be4:	0783      	lsls	r3, r0, #30
 8000be6:	b530      	push	{r4, r5, lr}
 8000be8:	d047      	beq.n	8000c7a <memset+0x96>
 8000bea:	1e54      	subs	r4, r2, #1
 8000bec:	2a00      	cmp	r2, #0
 8000bee:	d03e      	beq.n	8000c6e <memset+0x8a>
 8000bf0:	b2ca      	uxtb	r2, r1
 8000bf2:	4603      	mov	r3, r0
 8000bf4:	e001      	b.n	8000bfa <memset+0x16>
 8000bf6:	3c01      	subs	r4, #1
 8000bf8:	d339      	bcc.n	8000c6e <memset+0x8a>
 8000bfa:	f803 2b01 	strb.w	r2, [r3], #1
 8000bfe:	079d      	lsls	r5, r3, #30
 8000c00:	d1f9      	bne.n	8000bf6 <memset+0x12>
 8000c02:	2c03      	cmp	r4, #3
 8000c04:	d92c      	bls.n	8000c60 <memset+0x7c>
 8000c06:	b2cd      	uxtb	r5, r1
 8000c08:	eb05 2505 	add.w	r5, r5, r5, lsl #8
 8000c0c:	2c0f      	cmp	r4, #15
 8000c0e:	eb05 4505 	add.w	r5, r5, r5, lsl #16
 8000c12:	d935      	bls.n	8000c80 <memset+0x9c>
 8000c14:	f1a4 0210 	sub.w	r2, r4, #16
 8000c18:	f022 0c0f 	bic.w	ip, r2, #15
 8000c1c:	f103 0e10 	add.w	lr, r3, #16
 8000c20:	44e6      	add	lr, ip
 8000c22:	ea4f 1c12 	mov.w	ip, r2, lsr #4
 8000c26:	461a      	mov	r2, r3
 8000c28:	e9c2 5500 	strd	r5, r5, [r2]
 8000c2c:	e9c2 5502 	strd	r5, r5, [r2, #8]
 8000c30:	3210      	adds	r2, #16
 8000c32:	4572      	cmp	r2, lr
 8000c34:	d1f8      	bne.n	8000c28 <memset+0x44>
 8000c36:	f10c 0201 	add.w	r2, ip, #1
 8000c3a:	f014 0f0c 	tst.w	r4, #12
 8000c3e:	eb03 1202 	add.w	r2, r3, r2, lsl #4
 8000c42:	f004 0c0f 	and.w	ip, r4, #15
 8000c46:	d013      	beq.n	8000c70 <memset+0x8c>
 8000c48:	f1ac 0304 	sub.w	r3, ip, #4
 8000c4c:	f023 0303 	bic.w	r3, r3, #3
 8000c50:	3304      	adds	r3, #4
 8000c52:	4413      	add	r3, r2
 8000c54:	f842 5b04 	str.w	r5, [r2], #4
 8000c58:	4293      	cmp	r3, r2
 8000c5a:	d1fb      	bne.n	8000c54 <memset+0x70>
 8000c5c:	f00c 0403 	and.w	r4, ip, #3
 8000c60:	b12c      	cbz	r4, 8000c6e <memset+0x8a>
 8000c62:	b2c9      	uxtb	r1, r1
 8000c64:	441c      	add	r4, r3
 8000c66:	f803 1b01 	strb.w	r1, [r3], #1
 8000c6a:	42a3      	cmp	r3, r4
 8000c6c:	d1fb      	bne.n	8000c66 <memset+0x82>
 8000c6e:	bd30      	pop	{r4, r5, pc}
 8000c70:	4664      	mov	r4, ip
 8000c72:	4613      	mov	r3, r2
 8000c74:	2c00      	cmp	r4, #0
 8000c76:	d1f4      	bne.n	8000c62 <memset+0x7e>
 8000c78:	e7f9      	b.n	8000c6e <memset+0x8a>
 8000c7a:	4603      	mov	r3, r0
 8000c7c:	4614      	mov	r4, r2
 8000c7e:	e7c0      	b.n	8000c02 <memset+0x1e>
 8000c80:	461a      	mov	r2, r3
 8000c82:	46a4      	mov	ip, r4
 8000c84:	e7e0      	b.n	8000c48 <memset+0x64>
 8000c86:	bf00      	nop

08000c88 <__errno>:
 8000c88:	4b01      	ldr	r3, [pc, #4]	@ (8000c90 <__errno+0x8>)
 8000c8a:	6818      	ldr	r0, [r3, #0]
 8000c8c:	4770      	bx	lr
 8000c8e:	bf00      	nop
 8000c90:	20000000 	.word	0x20000000

08000c94 <memcpy>:
 8000c94:	4684      	mov	ip, r0
 8000c96:	ea41 0300 	orr.w	r3, r1, r0
 8000c9a:	f013 0303 	ands.w	r3, r3, #3
 8000c9e:	d16d      	bne.n	8000d7c <memcpy+0xe8>
 8000ca0:	3a40      	subs	r2, #64	@ 0x40
 8000ca2:	d341      	bcc.n	8000d28 <memcpy+0x94>
 8000ca4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ca8:	f840 3b04 	str.w	r3, [r0], #4
 8000cac:	f851 3b04 	ldr.w	r3, [r1], #4
 8000cb0:	f840 3b04 	str.w	r3, [r0], #4
 8000cb4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000cb8:	f840 3b04 	str.w	r3, [r0], #4
 8000cbc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000cc0:	f840 3b04 	str.w	r3, [r0], #4
 8000cc4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000cc8:	f840 3b04 	str.w	r3, [r0], #4
 8000ccc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000cd0:	f840 3b04 	str.w	r3, [r0], #4
 8000cd4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000cd8:	f840 3b04 	str.w	r3, [r0], #4
 8000cdc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ce0:	f840 3b04 	str.w	r3, [r0], #4
 8000ce4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000ce8:	f840 3b04 	str.w	r3, [r0], #4
 8000cec:	f851 3b04 	ldr.w	r3, [r1], #4
 8000cf0:	f840 3b04 	str.w	r3, [r0], #4
 8000cf4:	f851 3b04 	ldr.w	r3, [r1], #4
 8000cf8:	f840 3b04 	str.w	r3, [r0], #4
 8000cfc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d00:	f840 3b04 	str.w	r3, [r0], #4
 8000d04:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d08:	f840 3b04 	str.w	r3, [r0], #4
 8000d0c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d10:	f840 3b04 	str.w	r3, [r0], #4
 8000d14:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d18:	f840 3b04 	str.w	r3, [r0], #4
 8000d1c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d20:	f840 3b04 	str.w	r3, [r0], #4
 8000d24:	3a40      	subs	r2, #64	@ 0x40
 8000d26:	d2bd      	bcs.n	8000ca4 <memcpy+0x10>
 8000d28:	3230      	adds	r2, #48	@ 0x30
 8000d2a:	d311      	bcc.n	8000d50 <memcpy+0xbc>
 8000d2c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d30:	f840 3b04 	str.w	r3, [r0], #4
 8000d34:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d38:	f840 3b04 	str.w	r3, [r0], #4
 8000d3c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d40:	f840 3b04 	str.w	r3, [r0], #4
 8000d44:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d48:	f840 3b04 	str.w	r3, [r0], #4
 8000d4c:	3a10      	subs	r2, #16
 8000d4e:	d2ed      	bcs.n	8000d2c <memcpy+0x98>
 8000d50:	320c      	adds	r2, #12
 8000d52:	d305      	bcc.n	8000d60 <memcpy+0xcc>
 8000d54:	f851 3b04 	ldr.w	r3, [r1], #4
 8000d58:	f840 3b04 	str.w	r3, [r0], #4
 8000d5c:	3a04      	subs	r2, #4
 8000d5e:	d2f9      	bcs.n	8000d54 <memcpy+0xc0>
 8000d60:	3204      	adds	r2, #4
 8000d62:	d008      	beq.n	8000d76 <memcpy+0xe2>
 8000d64:	07d2      	lsls	r2, r2, #31
 8000d66:	bf1c      	itt	ne
 8000d68:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000d6c:	f800 3b01 	strbne.w	r3, [r0], #1
 8000d70:	d301      	bcc.n	8000d76 <memcpy+0xe2>
 8000d72:	880b      	ldrh	r3, [r1, #0]
 8000d74:	8003      	strh	r3, [r0, #0]
 8000d76:	4660      	mov	r0, ip
 8000d78:	4770      	bx	lr
 8000d7a:	bf00      	nop
 8000d7c:	2a08      	cmp	r2, #8
 8000d7e:	d313      	bcc.n	8000da8 <memcpy+0x114>
 8000d80:	078b      	lsls	r3, r1, #30
 8000d82:	d08d      	beq.n	8000ca0 <memcpy+0xc>
 8000d84:	f010 0303 	ands.w	r3, r0, #3
 8000d88:	d08a      	beq.n	8000ca0 <memcpy+0xc>
 8000d8a:	f1c3 0304 	rsb	r3, r3, #4
 8000d8e:	1ad2      	subs	r2, r2, r3
 8000d90:	07db      	lsls	r3, r3, #31
 8000d92:	bf1c      	itt	ne
 8000d94:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000d98:	f800 3b01 	strbne.w	r3, [r0], #1
 8000d9c:	d380      	bcc.n	8000ca0 <memcpy+0xc>
 8000d9e:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000da2:	f820 3b02 	strh.w	r3, [r0], #2
 8000da6:	e77b      	b.n	8000ca0 <memcpy+0xc>
 8000da8:	3a04      	subs	r2, #4
 8000daa:	d3d9      	bcc.n	8000d60 <memcpy+0xcc>
 8000dac:	3a01      	subs	r2, #1
 8000dae:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000db2:	f800 3b01 	strb.w	r3, [r0], #1
 8000db6:	d2f9      	bcs.n	8000dac <memcpy+0x118>
 8000db8:	780b      	ldrb	r3, [r1, #0]
 8000dba:	7003      	strb	r3, [r0, #0]
 8000dbc:	784b      	ldrb	r3, [r1, #1]
 8000dbe:	7043      	strb	r3, [r0, #1]
 8000dc0:	788b      	ldrb	r3, [r1, #2]
 8000dc2:	7083      	strb	r3, [r0, #2]
 8000dc4:	4660      	mov	r0, ip
 8000dc6:	4770      	bx	lr

08000dc8 <malloc>:
 8000dc8:	4b02      	ldr	r3, [pc, #8]	@ (8000dd4 <malloc+0xc>)
 8000dca:	4601      	mov	r1, r0
 8000dcc:	6818      	ldr	r0, [r3, #0]
 8000dce:	f000 b82f 	b.w	8000e30 <_malloc_r>
 8000dd2:	bf00      	nop
 8000dd4:	20000000 	.word	0x20000000

08000dd8 <free>:
 8000dd8:	4b02      	ldr	r3, [pc, #8]	@ (8000de4 <free+0xc>)
 8000dda:	4601      	mov	r1, r0
 8000ddc:	6818      	ldr	r0, [r3, #0]
 8000dde:	f000 b8a7 	b.w	8000f30 <_free_r>
 8000de2:	bf00      	nop
 8000de4:	20000000 	.word	0x20000000

08000de8 <sbrk_aligned>:
 8000de8:	b570      	push	{r4, r5, r6, lr}
 8000dea:	4e10      	ldr	r6, [pc, #64]	@ (8000e2c <sbrk_aligned+0x44>)
 8000dec:	6833      	ldr	r3, [r6, #0]
 8000dee:	4605      	mov	r5, r0
 8000df0:	460c      	mov	r4, r1
 8000df2:	b1b3      	cbz	r3, 8000e22 <sbrk_aligned+0x3a>
 8000df4:	4621      	mov	r1, r4
 8000df6:	4628      	mov	r0, r5
 8000df8:	f000 f8fc 	bl	8000ff4 <_sbrk_r>
 8000dfc:	1c43      	adds	r3, r0, #1
 8000dfe:	d00c      	beq.n	8000e1a <sbrk_aligned+0x32>
 8000e00:	1cc4      	adds	r4, r0, #3
 8000e02:	f024 0403 	bic.w	r4, r4, #3
 8000e06:	42a0      	cmp	r0, r4
 8000e08:	d005      	beq.n	8000e16 <sbrk_aligned+0x2e>
 8000e0a:	1a21      	subs	r1, r4, r0
 8000e0c:	4628      	mov	r0, r5
 8000e0e:	f000 f8f1 	bl	8000ff4 <_sbrk_r>
 8000e12:	3001      	adds	r0, #1
 8000e14:	d001      	beq.n	8000e1a <sbrk_aligned+0x32>
 8000e16:	4620      	mov	r0, r4
 8000e18:	bd70      	pop	{r4, r5, r6, pc}
 8000e1a:	f04f 34ff 	mov.w	r4, #4294967295	@ 0xffffffff
 8000e1e:	4620      	mov	r0, r4
 8000e20:	bd70      	pop	{r4, r5, r6, pc}
 8000e22:	4619      	mov	r1, r3
 8000e24:	f000 f8e6 	bl	8000ff4 <_sbrk_r>
 8000e28:	6030      	str	r0, [r6, #0]
 8000e2a:	e7e3      	b.n	8000df4 <sbrk_aligned+0xc>
 8000e2c:	200004d8 	.word	0x200004d8

08000e30 <_malloc_r>:
 8000e30:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000e34:	1ccd      	adds	r5, r1, #3
 8000e36:	f025 0503 	bic.w	r5, r5, #3
 8000e3a:	3508      	adds	r5, #8
 8000e3c:	2d0c      	cmp	r5, #12
 8000e3e:	bf38      	it	cc
 8000e40:	250c      	movcc	r5, #12
 8000e42:	2d00      	cmp	r5, #0
 8000e44:	4606      	mov	r6, r0
 8000e46:	db18      	blt.n	8000e7a <_malloc_r+0x4a>
 8000e48:	42a9      	cmp	r1, r5
 8000e4a:	d816      	bhi.n	8000e7a <_malloc_r+0x4a>
 8000e4c:	f8df 80dc 	ldr.w	r8, [pc, #220]	@ 8000f2c <_malloc_r+0xfc>
 8000e50:	f000 f8cc 	bl	8000fec <__malloc_lock>
 8000e54:	f8d8 2004 	ldr.w	r2, [r8, #4]
 8000e58:	b1a2      	cbz	r2, 8000e84 <_malloc_r+0x54>
 8000e5a:	4614      	mov	r4, r2
 8000e5c:	e003      	b.n	8000e66 <_malloc_r+0x36>
 8000e5e:	6863      	ldr	r3, [r4, #4]
 8000e60:	4622      	mov	r2, r4
 8000e62:	b17b      	cbz	r3, 8000e84 <_malloc_r+0x54>
 8000e64:	461c      	mov	r4, r3
 8000e66:	6823      	ldr	r3, [r4, #0]
 8000e68:	1b5b      	subs	r3, r3, r5
 8000e6a:	d4f8      	bmi.n	8000e5e <_malloc_r+0x2e>
 8000e6c:	2b0b      	cmp	r3, #11
 8000e6e:	d81f      	bhi.n	8000eb0 <_malloc_r+0x80>
 8000e70:	4294      	cmp	r4, r2
 8000e72:	6863      	ldr	r3, [r4, #4]
 8000e74:	d054      	beq.n	8000f20 <_malloc_r+0xf0>
 8000e76:	6053      	str	r3, [r2, #4]
 8000e78:	e00c      	b.n	8000e94 <_malloc_r+0x64>
 8000e7a:	230c      	movs	r3, #12
 8000e7c:	6033      	str	r3, [r6, #0]
 8000e7e:	2000      	movs	r0, #0
 8000e80:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8000e84:	4629      	mov	r1, r5
 8000e86:	4630      	mov	r0, r6
 8000e88:	f7ff ffae 	bl	8000de8 <sbrk_aligned>
 8000e8c:	1c43      	adds	r3, r0, #1
 8000e8e:	4604      	mov	r4, r0
 8000e90:	d019      	beq.n	8000ec6 <_malloc_r+0x96>
 8000e92:	6005      	str	r5, [r0, #0]
 8000e94:	4630      	mov	r0, r6
 8000e96:	f000 f8ab 	bl	8000ff0 <__malloc_unlock>
 8000e9a:	f104 000b 	add.w	r0, r4, #11
 8000e9e:	1d23      	adds	r3, r4, #4
 8000ea0:	f020 0007 	bic.w	r0, r0, #7
 8000ea4:	1ac2      	subs	r2, r0, r3
 8000ea6:	bf1c      	itt	ne
 8000ea8:	1a1b      	subne	r3, r3, r0
 8000eaa:	50a3      	strne	r3, [r4, r2]
 8000eac:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8000eb0:	1961      	adds	r1, r4, r5
 8000eb2:	4294      	cmp	r4, r2
 8000eb4:	6025      	str	r5, [r4, #0]
 8000eb6:	bf14      	ite	ne
 8000eb8:	6051      	strne	r1, [r2, #4]
 8000eba:	f8c8 1004 	streq.w	r1, [r8, #4]
 8000ebe:	5163      	str	r3, [r4, r5]
 8000ec0:	6863      	ldr	r3, [r4, #4]
 8000ec2:	604b      	str	r3, [r1, #4]
 8000ec4:	e7e6      	b.n	8000e94 <_malloc_r+0x64>
 8000ec6:	f8d8 7004 	ldr.w	r7, [r8, #4]
 8000eca:	b31f      	cbz	r7, 8000f14 <_malloc_r+0xe4>
 8000ecc:	463c      	mov	r4, r7
 8000ece:	687f      	ldr	r7, [r7, #4]
 8000ed0:	2f00      	cmp	r7, #0
 8000ed2:	d1fb      	bne.n	8000ecc <_malloc_r+0x9c>
 8000ed4:	6823      	ldr	r3, [r4, #0]
 8000ed6:	4639      	mov	r1, r7
 8000ed8:	4630      	mov	r0, r6
 8000eda:	eb04 0903 	add.w	r9, r4, r3
 8000ede:	f000 f889 	bl	8000ff4 <_sbrk_r>
 8000ee2:	4581      	cmp	r9, r0
 8000ee4:	d116      	bne.n	8000f14 <_malloc_r+0xe4>
 8000ee6:	6823      	ldr	r3, [r4, #0]
 8000ee8:	1aed      	subs	r5, r5, r3
 8000eea:	4629      	mov	r1, r5
 8000eec:	4630      	mov	r0, r6
 8000eee:	f7ff ff7b 	bl	8000de8 <sbrk_aligned>
 8000ef2:	3001      	adds	r0, #1
 8000ef4:	d00e      	beq.n	8000f14 <_malloc_r+0xe4>
 8000ef6:	6823      	ldr	r3, [r4, #0]
 8000ef8:	f8d8 2004 	ldr.w	r2, [r8, #4]
 8000efc:	442b      	add	r3, r5
 8000efe:	6023      	str	r3, [r4, #0]
 8000f00:	6853      	ldr	r3, [r2, #4]
 8000f02:	b183      	cbz	r3, 8000f26 <_malloc_r+0xf6>
 8000f04:	42a3      	cmp	r3, r4
 8000f06:	d003      	beq.n	8000f10 <_malloc_r+0xe0>
 8000f08:	461a      	mov	r2, r3
 8000f0a:	685b      	ldr	r3, [r3, #4]
 8000f0c:	429c      	cmp	r4, r3
 8000f0e:	d1fb      	bne.n	8000f08 <_malloc_r+0xd8>
 8000f10:	2300      	movs	r3, #0
 8000f12:	e7b0      	b.n	8000e76 <_malloc_r+0x46>
 8000f14:	230c      	movs	r3, #12
 8000f16:	6033      	str	r3, [r6, #0]
 8000f18:	4630      	mov	r0, r6
 8000f1a:	f000 f869 	bl	8000ff0 <__malloc_unlock>
 8000f1e:	e7ae      	b.n	8000e7e <_malloc_r+0x4e>
 8000f20:	f8c8 3004 	str.w	r3, [r8, #4]
 8000f24:	e7b6      	b.n	8000e94 <_malloc_r+0x64>
 8000f26:	f8c8 7004 	str.w	r7, [r8, #4]
 8000f2a:	e7b3      	b.n	8000e94 <_malloc_r+0x64>
 8000f2c:	200004d8 	.word	0x200004d8

08000f30 <_free_r>:
 8000f30:	2900      	cmp	r1, #0
 8000f32:	d050      	beq.n	8000fd6 <_free_r+0xa6>
 8000f34:	b538      	push	{r3, r4, r5, lr}
 8000f36:	f851 3c04 	ldr.w	r3, [r1, #-4]
 8000f3a:	1f0c      	subs	r4, r1, #4
 8000f3c:	2b00      	cmp	r3, #0
 8000f3e:	bfb8      	it	lt
 8000f40:	18e4      	addlt	r4, r4, r3
 8000f42:	4605      	mov	r5, r0
 8000f44:	f000 f852 	bl	8000fec <__malloc_lock>
 8000f48:	4a27      	ldr	r2, [pc, #156]	@ (8000fe8 <_free_r+0xb8>)
 8000f4a:	6813      	ldr	r3, [r2, #0]
 8000f4c:	b12b      	cbz	r3, 8000f5a <_free_r+0x2a>
 8000f4e:	42a3      	cmp	r3, r4
 8000f50:	d90c      	bls.n	8000f6c <_free_r+0x3c>
 8000f52:	6821      	ldr	r1, [r4, #0]
 8000f54:	1860      	adds	r0, r4, r1
 8000f56:	4283      	cmp	r3, r0
 8000f58:	d02c      	beq.n	8000fb4 <_free_r+0x84>
 8000f5a:	6063      	str	r3, [r4, #4]
 8000f5c:	4628      	mov	r0, r5
 8000f5e:	6014      	str	r4, [r2, #0]
 8000f60:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000f64:	f000 b844 	b.w	8000ff0 <__malloc_unlock>
 8000f68:	42a3      	cmp	r3, r4
 8000f6a:	d80f      	bhi.n	8000f8c <_free_r+0x5c>
 8000f6c:	461a      	mov	r2, r3
 8000f6e:	685b      	ldr	r3, [r3, #4]
 8000f70:	2b00      	cmp	r3, #0
 8000f72:	d1f9      	bne.n	8000f68 <_free_r+0x38>
 8000f74:	6811      	ldr	r1, [r2, #0]
 8000f76:	1850      	adds	r0, r2, r1
 8000f78:	4284      	cmp	r4, r0
 8000f7a:	d017      	beq.n	8000fac <_free_r+0x7c>
 8000f7c:	d32c      	bcc.n	8000fd8 <_free_r+0xa8>
 8000f7e:	6063      	str	r3, [r4, #4]
 8000f80:	6054      	str	r4, [r2, #4]
 8000f82:	4628      	mov	r0, r5
 8000f84:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000f88:	f000 b832 	b.w	8000ff0 <__malloc_unlock>
 8000f8c:	6811      	ldr	r1, [r2, #0]
 8000f8e:	1850      	adds	r0, r2, r1
 8000f90:	42a0      	cmp	r0, r4
 8000f92:	d014      	beq.n	8000fbe <_free_r+0x8e>
 8000f94:	d820      	bhi.n	8000fd8 <_free_r+0xa8>
 8000f96:	6821      	ldr	r1, [r4, #0]
 8000f98:	1860      	adds	r0, r4, r1
 8000f9a:	4283      	cmp	r3, r0
 8000f9c:	d1ef      	bne.n	8000f7e <_free_r+0x4e>
 8000f9e:	6818      	ldr	r0, [r3, #0]
 8000fa0:	685b      	ldr	r3, [r3, #4]
 8000fa2:	4408      	add	r0, r1
 8000fa4:	e9c4 0300 	strd	r0, r3, [r4]
 8000fa8:	6054      	str	r4, [r2, #4]
 8000faa:	e7ea      	b.n	8000f82 <_free_r+0x52>
 8000fac:	6823      	ldr	r3, [r4, #0]
 8000fae:	440b      	add	r3, r1
 8000fb0:	6013      	str	r3, [r2, #0]
 8000fb2:	e7e6      	b.n	8000f82 <_free_r+0x52>
 8000fb4:	6818      	ldr	r0, [r3, #0]
 8000fb6:	685b      	ldr	r3, [r3, #4]
 8000fb8:	4408      	add	r0, r1
 8000fba:	6020      	str	r0, [r4, #0]
 8000fbc:	e7cd      	b.n	8000f5a <_free_r+0x2a>
 8000fbe:	6820      	ldr	r0, [r4, #0]
 8000fc0:	4401      	add	r1, r0
 8000fc2:	1850      	adds	r0, r2, r1
 8000fc4:	4283      	cmp	r3, r0
 8000fc6:	6011      	str	r1, [r2, #0]
 8000fc8:	d1db      	bne.n	8000f82 <_free_r+0x52>
 8000fca:	e9d3 0400 	ldrd	r0, r4, [r3]
 8000fce:	4401      	add	r1, r0
 8000fd0:	e9c2 1400 	strd	r1, r4, [r2]
 8000fd4:	e7d5      	b.n	8000f82 <_free_r+0x52>
 8000fd6:	4770      	bx	lr
 8000fd8:	230c      	movs	r3, #12
 8000fda:	602b      	str	r3, [r5, #0]
 8000fdc:	4628      	mov	r0, r5
 8000fde:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000fe2:	f000 b805 	b.w	8000ff0 <__malloc_unlock>
 8000fe6:	bf00      	nop
 8000fe8:	200004dc 	.word	0x200004dc

08000fec <__malloc_lock>:
 8000fec:	4770      	bx	lr
 8000fee:	bf00      	nop

08000ff0 <__malloc_unlock>:
 8000ff0:	4770      	bx	lr
 8000ff2:	bf00      	nop

08000ff4 <_sbrk_r>:
 8000ff4:	b538      	push	{r3, r4, r5, lr}
 8000ff6:	4d07      	ldr	r5, [pc, #28]	@ (8001014 <_sbrk_r+0x20>)
 8000ff8:	2200      	movs	r2, #0
 8000ffa:	4604      	mov	r4, r0
 8000ffc:	4608      	mov	r0, r1
 8000ffe:	602a      	str	r2, [r5, #0]
 8001000:	f002 fc68 	bl	80038d4 <_sbrk>
 8001004:	1c43      	adds	r3, r0, #1
 8001006:	d000      	beq.n	800100a <_sbrk_r+0x16>
 8001008:	bd38      	pop	{r3, r4, r5, pc}
 800100a:	682b      	ldr	r3, [r5, #0]
 800100c:	2b00      	cmp	r3, #0
 800100e:	d0fb      	beq.n	8001008 <_sbrk_r+0x14>
 8001010:	6023      	str	r3, [r4, #0]
 8001012:	bd38      	pop	{r3, r4, r5, pc}
 8001014:	200004e0 	.word	0x200004e0

08001018 <keccak_inc_init>:
 8001018:	b510      	push	{r4, lr}
 800101a:	22c8      	movs	r2, #200	@ 0xc8
 800101c:	2100      	movs	r1, #0
 800101e:	4604      	mov	r4, r0
 8001020:	f7ff fde0 	bl	8000be4 <memset>
 8001024:	2200      	movs	r2, #0
 8001026:	2300      	movs	r3, #0
 8001028:	e9c4 2332 	strd	r2, r3, [r4, #200]	@ 0xc8
 800102c:	bd10      	pop	{r4, pc}

0800102e <keccak_inc_finalize>:
 800102e:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001030:	f88d 2007 	strb.w	r2, [sp, #7]
 8001034:	e9d0 2332 	ldrd	r2, r3, [r0, #200]	@ 0xc8
 8001038:	1e4d      	subs	r5, r1, #1
 800103a:	2b00      	cmp	r3, #0
 800103c:	bf08      	it	eq
 800103e:	42aa      	cmpeq	r2, r5
 8001040:	4604      	mov	r4, r0
 8001042:	d110      	bne.n	8001066 <keccak_inc_finalize+0x38>
 8001044:	f89d 3007 	ldrb.w	r3, [sp, #7]
 8001048:	f063 037f 	orn	r3, r3, #127	@ 0x7f
 800104c:	f88d 3007 	strb.w	r3, [sp, #7]
 8001050:	f10d 0107 	add.w	r1, sp, #7
 8001054:	2301      	movs	r3, #1
 8001056:	f000 f918 	bl	800128a <KeccakF1600_StateXORBytes>
 800105a:	2200      	movs	r2, #0
 800105c:	2300      	movs	r3, #0
 800105e:	e9c4 2332 	strd	r2, r3, [r4, #200]	@ 0xc8
 8001062:	b003      	add	sp, #12
 8001064:	bd30      	pop	{r4, r5, pc}
 8001066:	2301      	movs	r3, #1
 8001068:	f10d 0107 	add.w	r1, sp, #7
 800106c:	f000 f90d 	bl	800128a <KeccakF1600_StateXORBytes>
 8001070:	2380      	movs	r3, #128	@ 0x80
 8001072:	f88d 3007 	strb.w	r3, [sp, #7]
 8001076:	462a      	mov	r2, r5
 8001078:	2301      	movs	r3, #1
 800107a:	f10d 0107 	add.w	r1, sp, #7
 800107e:	4620      	mov	r0, r4
 8001080:	e7e9      	b.n	8001056 <keccak_inc_finalize+0x28>

08001082 <keccak_inc_absorb>:
 8001082:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001086:	4604      	mov	r4, r0
 8001088:	460f      	mov	r7, r1
 800108a:	4616      	mov	r6, r2
 800108c:	461d      	mov	r5, r3
 800108e:	f04f 0800 	mov.w	r8, #0
 8001092:	f04f 0900 	mov.w	r9, #0
 8001096:	e9d4 2332 	ldrd	r2, r3, [r4, #200]	@ 0xc8
 800109a:	18a9      	adds	r1, r5, r2
 800109c:	f143 0300 	adc.w	r3, r3, #0
 80010a0:	42b9      	cmp	r1, r7
 80010a2:	f173 0300 	sbcs.w	r3, r3, #0
 80010a6:	d20d      	bcs.n	80010c4 <keccak_inc_absorb+0x42>
 80010a8:	462b      	mov	r3, r5
 80010aa:	4631      	mov	r1, r6
 80010ac:	4620      	mov	r0, r4
 80010ae:	f000 f8ec 	bl	800128a <KeccakF1600_StateXORBytes>
 80010b2:	e9d4 3232 	ldrd	r3, r2, [r4, #200]	@ 0xc8
 80010b6:	195b      	adds	r3, r3, r5
 80010b8:	f142 0200 	adc.w	r2, r2, #0
 80010bc:	e9c4 3232 	strd	r3, r2, [r4, #200]	@ 0xc8
 80010c0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80010c4:	1abb      	subs	r3, r7, r2
 80010c6:	4631      	mov	r1, r6
 80010c8:	4620      	mov	r0, r4
 80010ca:	f000 f8de 	bl	800128a <KeccakF1600_StateXORBytes>
 80010ce:	f8d4 30c8 	ldr.w	r3, [r4, #200]	@ 0xc8
 80010d2:	4620      	mov	r0, r4
 80010d4:	1bda      	subs	r2, r3, r7
 80010d6:	e9c4 8932 	strd	r8, r9, [r4, #200]	@ 0xc8
 80010da:	1afb      	subs	r3, r7, r3
 80010dc:	4415      	add	r5, r2
 80010de:	441e      	add	r6, r3
 80010e0:	f000 f8fc 	bl	80012dc <KeccakF1600_StatePermute>
 80010e4:	e7d7      	b.n	8001096 <keccak_inc_absorb+0x14>

080010e6 <keccak_inc_squeeze>:
 80010e6:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80010ea:	460d      	mov	r5, r1
 80010ec:	4614      	mov	r4, r2
 80010ee:	e9d2 2132 	ldrd	r2, r1, [r2, #200]	@ 0xc8
 80010f2:	4698      	mov	r8, r3
 80010f4:	4295      	cmp	r5, r2
 80010f6:	f04f 0300 	mov.w	r3, #0
 80010fa:	418b      	sbcs	r3, r1
 80010fc:	bf2c      	ite	cs
 80010fe:	4617      	movcs	r7, r2
 8001100:	462f      	movcc	r7, r5
 8001102:	4681      	mov	r9, r0
 8001104:	463b      	mov	r3, r7
 8001106:	4601      	mov	r1, r0
 8001108:	eba8 0202 	sub.w	r2, r8, r2
 800110c:	4620      	mov	r0, r4
 800110e:	f000 f89b 	bl	8001248 <KeccakF1600_StateExtractBytes>
 8001112:	e9d4 6332 	ldrd	r6, r3, [r4, #200]	@ 0xc8
 8001116:	1bf6      	subs	r6, r6, r7
 8001118:	44b9      	add	r9, r7
 800111a:	eba5 0507 	sub.w	r5, r5, r7
 800111e:	f163 0300 	sbc.w	r3, r3, #0
 8001122:	e9c4 6332 	strd	r6, r3, [r4, #200]	@ 0xc8
 8001126:	b90d      	cbnz	r5, 800112c <keccak_inc_squeeze+0x46>
 8001128:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800112c:	4620      	mov	r0, r4
 800112e:	f000 f8d5 	bl	80012dc <KeccakF1600_StatePermute>
 8001132:	4545      	cmp	r5, r8
 8001134:	462e      	mov	r6, r5
 8001136:	bf28      	it	cs
 8001138:	4646      	movcs	r6, r8
 800113a:	4633      	mov	r3, r6
 800113c:	4649      	mov	r1, r9
 800113e:	2200      	movs	r2, #0
 8001140:	4620      	mov	r0, r4
 8001142:	f000 f881 	bl	8001248 <KeccakF1600_StateExtractBytes>
 8001146:	44b1      	add	r9, r6
 8001148:	1bad      	subs	r5, r5, r6
 800114a:	2300      	movs	r3, #0
 800114c:	eba8 0606 	sub.w	r6, r8, r6
 8001150:	e7e7      	b.n	8001122 <keccak_inc_squeeze+0x3c>

08001152 <shake128_inc_init>:
 8001152:	f7ff bf61 	b.w	8001018 <keccak_inc_init>

08001156 <shake128_inc_absorb>:
 8001156:	4613      	mov	r3, r2
 8001158:	460a      	mov	r2, r1
 800115a:	21a8      	movs	r1, #168	@ 0xa8
 800115c:	f7ff bf91 	b.w	8001082 <keccak_inc_absorb>

08001160 <shake128_inc_finalize>:
 8001160:	221f      	movs	r2, #31
 8001162:	21a8      	movs	r1, #168	@ 0xa8
 8001164:	f7ff bf63 	b.w	800102e <keccak_inc_finalize>

08001168 <shake128_inc_squeeze>:
 8001168:	23a8      	movs	r3, #168	@ 0xa8
 800116a:	f7ff bfbc 	b.w	80010e6 <keccak_inc_squeeze>

0800116e <shake128>:
 800116e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001170:	b0b5      	sub	sp, #212	@ 0xd4
 8001172:	4604      	mov	r4, r0
 8001174:	4616      	mov	r6, r2
 8001176:	461f      	mov	r7, r3
 8001178:	4668      	mov	r0, sp
 800117a:	460d      	mov	r5, r1
 800117c:	f7ff ff4c 	bl	8001018 <keccak_inc_init>
 8001180:	463b      	mov	r3, r7
 8001182:	4632      	mov	r2, r6
 8001184:	4668      	mov	r0, sp
 8001186:	21a8      	movs	r1, #168	@ 0xa8
 8001188:	f7ff ff7b 	bl	8001082 <keccak_inc_absorb>
 800118c:	4668      	mov	r0, sp
 800118e:	221f      	movs	r2, #31
 8001190:	21a8      	movs	r1, #168	@ 0xa8
 8001192:	f7ff ff4c 	bl	800102e <keccak_inc_finalize>
 8001196:	23a8      	movs	r3, #168	@ 0xa8
 8001198:	466a      	mov	r2, sp
 800119a:	4629      	mov	r1, r5
 800119c:	4620      	mov	r0, r4
 800119e:	f7ff ffa2 	bl	80010e6 <keccak_inc_squeeze>
 80011a2:	b035      	add	sp, #212	@ 0xd4
 80011a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

080011a8 <get_pt>:
 80011a8:	4b02      	ldr	r3, [pc, #8]	@ (80011b4 <get_pt+0xc>)
 80011aa:	e9d3 1000 	ldrd	r1, r0, [r3]
 80011ae:	f000 bf99 	b.w	80020e4 <crypto_kem_keypair>
 80011b2:	bf00      	nop
 80011b4:	2000006c 	.word	0x2000006c

080011b8 <try_enc>:
 80011b8:	4b02      	ldr	r3, [pc, #8]	@ (80011c4 <try_enc+0xc>)
 80011ba:	e9d3 2101 	ldrd	r2, r1, [r3, #4]
 80011be:	68d8      	ldr	r0, [r3, #12]
 80011c0:	f001 b847 	b.w	8002252 <crypto_kem_enc>
 80011c4:	2000006c 	.word	0x2000006c

080011c8 <set_random_bytes>:
 80011c8:	f001 ba78 	b.w	80026bc <set_rbytes>

080011cc <main>:
 80011cc:	b570      	push	{r4, r5, r6, lr}
 80011ce:	f001 fcf9 	bl	8002bc4 <platform_init>
 80011d2:	f001 fd37 	bl	8002c44 <init_uart>
 80011d6:	f001 fd73 	bl	8002cc0 <trigger_setup>
 80011da:	f242 5090 	movw	r0, #9616	@ 0x2590
 80011de:	f7ff fdf3 	bl	8000dc8 <malloc>
 80011e2:	4e15      	ldr	r6, [pc, #84]	@ (8001238 <main+0x6c>)
 80011e4:	4605      	mov	r5, r0
 80011e6:	6070      	str	r0, [r6, #4]
 80011e8:	f644 50b0 	movw	r0, #19888	@ 0x4db0
 80011ec:	f7ff fdec 	bl	8000dc8 <malloc>
 80011f0:	6030      	str	r0, [r6, #0]
 80011f2:	4604      	mov	r4, r0
 80011f4:	2010      	movs	r0, #16
 80011f6:	f7ff fde7 	bl	8000dc8 <malloc>
 80011fa:	60b0      	str	r0, [r6, #8]
 80011fc:	f242 50f8 	movw	r0, #9720	@ 0x25f8
 8001200:	f7ff fde2 	bl	8000dc8 <malloc>
 8001204:	60f0      	str	r0, [r6, #12]
 8001206:	b1a5      	cbz	r5, 8001232 <main+0x66>
 8001208:	b19c      	cbz	r4, 8001232 <main+0x66>
 800120a:	f001 fc67 	bl	8002adc <simpleserial_init>
 800120e:	4a0b      	ldr	r2, [pc, #44]	@ (800123c <main+0x70>)
 8001210:	2100      	movs	r1, #0
 8001212:	2074      	movs	r0, #116	@ 0x74
 8001214:	f001 fc5e 	bl	8002ad4 <simpleserial_addcmd>
 8001218:	4a09      	ldr	r2, [pc, #36]	@ (8001240 <main+0x74>)
 800121a:	2100      	movs	r1, #0
 800121c:	2065      	movs	r0, #101	@ 0x65
 800121e:	f001 fc59 	bl	8002ad4 <simpleserial_addcmd>
 8001222:	4a08      	ldr	r2, [pc, #32]	@ (8001244 <main+0x78>)
 8001224:	2130      	movs	r1, #48	@ 0x30
 8001226:	2062      	movs	r0, #98	@ 0x62
 8001228:	f001 fc54 	bl	8002ad4 <simpleserial_addcmd>
 800122c:	f001 fc6c 	bl	8002b08 <simpleserial_get>
 8001230:	e7fc      	b.n	800122c <main+0x60>
 8001232:	2000      	movs	r0, #0
 8001234:	bd70      	pop	{r4, r5, r6, pc}
 8001236:	bf00      	nop
 8001238:	2000006c 	.word	0x2000006c
 800123c:	080011a9 	.word	0x080011a9
 8001240:	080011b9 	.word	0x080011b9
 8001244:	080011c9 	.word	0x080011c9

08001248 <KeccakF1600_StateExtractBytes>:
 8001248:	b5f0      	push	{r4, r5, r6, r7, lr}
 800124a:	440b      	add	r3, r1
 800124c:	1a52      	subs	r2, r2, r1
 800124e:	4299      	cmp	r1, r3
 8001250:	d100      	bne.n	8001254 <KeccakF1600_StateExtractBytes+0xc>
 8001252:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001254:	1854      	adds	r4, r2, r1
 8001256:	f024 0607 	bic.w	r6, r4, #7
 800125a:	08e5      	lsrs	r5, r4, #3
 800125c:	4406      	add	r6, r0
 800125e:	f004 0407 	and.w	r4, r4, #7
 8001262:	f8d6 c004 	ldr.w	ip, [r6, #4]
 8001266:	f850 5035 	ldr.w	r5, [r0, r5, lsl #3]
 800126a:	00e4      	lsls	r4, r4, #3
 800126c:	f1c4 0720 	rsb	r7, r4, #32
 8001270:	f1a4 0620 	sub.w	r6, r4, #32
 8001274:	fa0c f707 	lsl.w	r7, ip, r7
 8001278:	fa25 f404 	lsr.w	r4, r5, r4
 800127c:	433c      	orrs	r4, r7
 800127e:	fa2c f606 	lsr.w	r6, ip, r6
 8001282:	4334      	orrs	r4, r6
 8001284:	f801 4b01 	strb.w	r4, [r1], #1
 8001288:	e7e1      	b.n	800124e <KeccakF1600_StateExtractBytes+0x6>

0800128a <KeccakF1600_StateXORBytes>:
 800128a:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800128c:	440b      	add	r3, r1
 800128e:	1a52      	subs	r2, r2, r1
 8001290:	4299      	cmp	r1, r3
 8001292:	d101      	bne.n	8001298 <KeccakF1600_StateXORBytes+0xe>
 8001294:	b003      	add	sp, #12
 8001296:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001298:	1854      	adds	r4, r2, r1
 800129a:	ea4f 0cd4 	mov.w	ip, r4, lsr #3
 800129e:	f024 0707 	bic.w	r7, r4, #7
 80012a2:	f004 0407 	and.w	r4, r4, #7
 80012a6:	f811 6b01 	ldrb.w	r6, [r1], #1
 80012aa:	00e4      	lsls	r4, r4, #3
 80012ac:	4407      	add	r7, r0
 80012ae:	f1a4 0520 	sub.w	r5, r4, #32
 80012b2:	f1c4 0e20 	rsb	lr, r4, #32
 80012b6:	fa06 f505 	lsl.w	r5, r6, r5
 80012ba:	fa26 fe0e 	lsr.w	lr, r6, lr
 80012be:	40a6      	lsls	r6, r4
 80012c0:	687c      	ldr	r4, [r7, #4]
 80012c2:	9401      	str	r4, [sp, #4]
 80012c4:	f850 403c 	ldr.w	r4, [r0, ip, lsl #3]
 80012c8:	4066      	eors	r6, r4
 80012ca:	9c01      	ldr	r4, [sp, #4]
 80012cc:	f840 603c 	str.w	r6, [r0, ip, lsl #3]
 80012d0:	ea45 050e 	orr.w	r5, r5, lr
 80012d4:	406c      	eors	r4, r5
 80012d6:	607c      	str	r4, [r7, #4]
 80012d8:	e7da      	b.n	8001290 <KeccakF1600_StateXORBytes+0x6>
	...

080012dc <KeccakF1600_StatePermute>:
 80012dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80012e0:	b0bd      	sub	sp, #244	@ 0xf4
 80012e2:	6803      	ldr	r3, [r0, #0]
 80012e4:	930a      	str	r3, [sp, #40]	@ 0x28
 80012e6:	6843      	ldr	r3, [r0, #4]
 80012e8:	930b      	str	r3, [sp, #44]	@ 0x2c
 80012ea:	6883      	ldr	r3, [r0, #8]
 80012ec:	930c      	str	r3, [sp, #48]	@ 0x30
 80012ee:	68c3      	ldr	r3, [r0, #12]
 80012f0:	930d      	str	r3, [sp, #52]	@ 0x34
 80012f2:	6903      	ldr	r3, [r0, #16]
 80012f4:	930e      	str	r3, [sp, #56]	@ 0x38
 80012f6:	6943      	ldr	r3, [r0, #20]
 80012f8:	930f      	str	r3, [sp, #60]	@ 0x3c
 80012fa:	6983      	ldr	r3, [r0, #24]
 80012fc:	9310      	str	r3, [sp, #64]	@ 0x40
 80012fe:	69c3      	ldr	r3, [r0, #28]
 8001300:	9311      	str	r3, [sp, #68]	@ 0x44
 8001302:	6a03      	ldr	r3, [r0, #32]
 8001304:	9312      	str	r3, [sp, #72]	@ 0x48
 8001306:	6a43      	ldr	r3, [r0, #36]	@ 0x24
 8001308:	9313      	str	r3, [sp, #76]	@ 0x4c
 800130a:	6a83      	ldr	r3, [r0, #40]	@ 0x28
 800130c:	9314      	str	r3, [sp, #80]	@ 0x50
 800130e:	6ac3      	ldr	r3, [r0, #44]	@ 0x2c
 8001310:	9315      	str	r3, [sp, #84]	@ 0x54
 8001312:	6b03      	ldr	r3, [r0, #48]	@ 0x30
 8001314:	9316      	str	r3, [sp, #88]	@ 0x58
 8001316:	6b43      	ldr	r3, [r0, #52]	@ 0x34
 8001318:	9317      	str	r3, [sp, #92]	@ 0x5c
 800131a:	6b83      	ldr	r3, [r0, #56]	@ 0x38
 800131c:	9318      	str	r3, [sp, #96]	@ 0x60
 800131e:	6bc3      	ldr	r3, [r0, #60]	@ 0x3c
 8001320:	9319      	str	r3, [sp, #100]	@ 0x64
 8001322:	6c03      	ldr	r3, [r0, #64]	@ 0x40
 8001324:	931a      	str	r3, [sp, #104]	@ 0x68
 8001326:	6c43      	ldr	r3, [r0, #68]	@ 0x44
 8001328:	931b      	str	r3, [sp, #108]	@ 0x6c
 800132a:	6c83      	ldr	r3, [r0, #72]	@ 0x48
 800132c:	931c      	str	r3, [sp, #112]	@ 0x70
 800132e:	6cc3      	ldr	r3, [r0, #76]	@ 0x4c
 8001330:	931d      	str	r3, [sp, #116]	@ 0x74
 8001332:	6d03      	ldr	r3, [r0, #80]	@ 0x50
 8001334:	931e      	str	r3, [sp, #120]	@ 0x78
 8001336:	6d43      	ldr	r3, [r0, #84]	@ 0x54
 8001338:	931f      	str	r3, [sp, #124]	@ 0x7c
 800133a:	6d83      	ldr	r3, [r0, #88]	@ 0x58
 800133c:	9320      	str	r3, [sp, #128]	@ 0x80
 800133e:	6dc3      	ldr	r3, [r0, #92]	@ 0x5c
 8001340:	9321      	str	r3, [sp, #132]	@ 0x84
 8001342:	6e03      	ldr	r3, [r0, #96]	@ 0x60
 8001344:	9322      	str	r3, [sp, #136]	@ 0x88
 8001346:	6e43      	ldr	r3, [r0, #100]	@ 0x64
 8001348:	9323      	str	r3, [sp, #140]	@ 0x8c
 800134a:	6e83      	ldr	r3, [r0, #104]	@ 0x68
 800134c:	9324      	str	r3, [sp, #144]	@ 0x90
 800134e:	6ec3      	ldr	r3, [r0, #108]	@ 0x6c
 8001350:	9325      	str	r3, [sp, #148]	@ 0x94
 8001352:	6f03      	ldr	r3, [r0, #112]	@ 0x70
 8001354:	9326      	str	r3, [sp, #152]	@ 0x98
 8001356:	6f43      	ldr	r3, [r0, #116]	@ 0x74
 8001358:	9327      	str	r3, [sp, #156]	@ 0x9c
 800135a:	6f83      	ldr	r3, [r0, #120]	@ 0x78
 800135c:	9328      	str	r3, [sp, #160]	@ 0xa0
 800135e:	6fc3      	ldr	r3, [r0, #124]	@ 0x7c
 8001360:	9329      	str	r3, [sp, #164]	@ 0xa4
 8001362:	f8d0 3080 	ldr.w	r3, [r0, #128]	@ 0x80
 8001366:	932a      	str	r3, [sp, #168]	@ 0xa8
 8001368:	f8d0 3084 	ldr.w	r3, [r0, #132]	@ 0x84
 800136c:	932b      	str	r3, [sp, #172]	@ 0xac
 800136e:	f8d0 3088 	ldr.w	r3, [r0, #136]	@ 0x88
 8001372:	932c      	str	r3, [sp, #176]	@ 0xb0
 8001374:	f8d0 308c 	ldr.w	r3, [r0, #140]	@ 0x8c
 8001378:	932d      	str	r3, [sp, #180]	@ 0xb4
 800137a:	f8d0 3090 	ldr.w	r3, [r0, #144]	@ 0x90
 800137e:	932e      	str	r3, [sp, #184]	@ 0xb8
 8001380:	f8d0 3094 	ldr.w	r3, [r0, #148]	@ 0x94
 8001384:	932f      	str	r3, [sp, #188]	@ 0xbc
 8001386:	f8d0 3098 	ldr.w	r3, [r0, #152]	@ 0x98
 800138a:	9330      	str	r3, [sp, #192]	@ 0xc0
 800138c:	f8d0 309c 	ldr.w	r3, [r0, #156]	@ 0x9c
 8001390:	9331      	str	r3, [sp, #196]	@ 0xc4
 8001392:	f8d0 30a0 	ldr.w	r3, [r0, #160]	@ 0xa0
 8001396:	9332      	str	r3, [sp, #200]	@ 0xc8
 8001398:	f8d0 30a4 	ldr.w	r3, [r0, #164]	@ 0xa4
 800139c:	9333      	str	r3, [sp, #204]	@ 0xcc
 800139e:	f8d0 30a8 	ldr.w	r3, [r0, #168]	@ 0xa8
 80013a2:	9334      	str	r3, [sp, #208]	@ 0xd0
 80013a4:	f8d0 30ac 	ldr.w	r3, [r0, #172]	@ 0xac
 80013a8:	9335      	str	r3, [sp, #212]	@ 0xd4
 80013aa:	f8d0 30b0 	ldr.w	r3, [r0, #176]	@ 0xb0
 80013ae:	9336      	str	r3, [sp, #216]	@ 0xd8
 80013b0:	f8d0 30b4 	ldr.w	r3, [r0, #180]	@ 0xb4
 80013b4:	9337      	str	r3, [sp, #220]	@ 0xdc
 80013b6:	f8d0 30b8 	ldr.w	r3, [r0, #184]	@ 0xb8
 80013ba:	9338      	str	r3, [sp, #224]	@ 0xe0
 80013bc:	f8d0 30bc 	ldr.w	r3, [r0, #188]	@ 0xbc
 80013c0:	9339      	str	r3, [sp, #228]	@ 0xe4
 80013c2:	f8d0 30c0 	ldr.w	r3, [r0, #192]	@ 0xc0
 80013c6:	933a      	str	r3, [sp, #232]	@ 0xe8
 80013c8:	f8d0 60c4 	ldr.w	r6, [r0, #196]	@ 0xc4
 80013cc:	4b01      	ldr	r3, [pc, #4]	@ (80013d4 <KeccakF1600_StatePermute+0xf8>)
 80013ce:	9300      	str	r3, [sp, #0]
 80013d0:	e002      	b.n	80013d8 <KeccakF1600_StatePermute+0xfc>
 80013d2:	bf00      	nop
 80013d4:	08003970 	.word	0x08003970
 80013d8:	9a14      	ldr	r2, [sp, #80]	@ 0x50
 80013da:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 80013dc:	9915      	ldr	r1, [sp, #84]	@ 0x54
 80013de:	4053      	eors	r3, r2
 80013e0:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
 80013e2:	ea82 0501 	eor.w	r5, r2, r1
 80013e6:	9a1e      	ldr	r2, [sp, #120]	@ 0x78
 80013e8:	4053      	eors	r3, r2
 80013ea:	9a1f      	ldr	r2, [sp, #124]	@ 0x7c
 80013ec:	4055      	eors	r5, r2
 80013ee:	9a28      	ldr	r2, [sp, #160]	@ 0xa0
 80013f0:	4053      	eors	r3, r2
 80013f2:	9a29      	ldr	r2, [sp, #164]	@ 0xa4
 80013f4:	4055      	eors	r5, r2
 80013f6:	9a32      	ldr	r2, [sp, #200]	@ 0xc8
 80013f8:	4053      	eors	r3, r2
 80013fa:	9a33      	ldr	r2, [sp, #204]	@ 0xcc
 80013fc:	9308      	str	r3, [sp, #32]
 80013fe:	4055      	eors	r5, r2
 8001400:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
 8001402:	9a16      	ldr	r2, [sp, #88]	@ 0x58
 8001404:	ea83 0902 	eor.w	r9, r3, r2
 8001408:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
 800140a:	9a17      	ldr	r2, [sp, #92]	@ 0x5c
 800140c:	ea83 0802 	eor.w	r8, r3, r2
 8001410:	9b20      	ldr	r3, [sp, #128]	@ 0x80
 8001412:	9a18      	ldr	r2, [sp, #96]	@ 0x60
 8001414:	ea89 0903 	eor.w	r9, r9, r3
 8001418:	9b21      	ldr	r3, [sp, #132]	@ 0x84
 800141a:	ea88 0803 	eor.w	r8, r8, r3
 800141e:	9b2a      	ldr	r3, [sp, #168]	@ 0xa8
 8001420:	ea89 0903 	eor.w	r9, r9, r3
 8001424:	9b2b      	ldr	r3, [sp, #172]	@ 0xac
 8001426:	ea88 0803 	eor.w	r8, r8, r3
 800142a:	9b34      	ldr	r3, [sp, #208]	@ 0xd0
 800142c:	ea89 0903 	eor.w	r9, r9, r3
 8001430:	9b35      	ldr	r3, [sp, #212]	@ 0xd4
 8001432:	ea88 0803 	eor.w	r8, r8, r3
 8001436:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
 8001438:	ea83 0c02 	eor.w	ip, r3, r2
 800143c:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 800143e:	9a19      	ldr	r2, [sp, #100]	@ 0x64
 8001440:	ea83 0702 	eor.w	r7, r3, r2
 8001444:	9b22      	ldr	r3, [sp, #136]	@ 0x88
 8001446:	9a23      	ldr	r2, [sp, #140]	@ 0x8c
 8001448:	ea8c 0c03 	eor.w	ip, ip, r3
 800144c:	4057      	eors	r7, r2
 800144e:	9b2c      	ldr	r3, [sp, #176]	@ 0xb0
 8001450:	9a2d      	ldr	r2, [sp, #180]	@ 0xb4
 8001452:	ea8c 0c03 	eor.w	ip, ip, r3
 8001456:	4057      	eors	r7, r2
 8001458:	9b36      	ldr	r3, [sp, #216]	@ 0xd8
 800145a:	9a37      	ldr	r2, [sp, #220]	@ 0xdc
 800145c:	ea8c 0c03 	eor.w	ip, ip, r3
 8001460:	4057      	eors	r7, r2
 8001462:	9b10      	ldr	r3, [sp, #64]	@ 0x40
 8001464:	9a1a      	ldr	r2, [sp, #104]	@ 0x68
 8001466:	f8dd e074 	ldr.w	lr, [sp, #116]	@ 0x74
 800146a:	ea83 0402 	eor.w	r4, r3, r2
 800146e:	9b11      	ldr	r3, [sp, #68]	@ 0x44
 8001470:	9a1b      	ldr	r2, [sp, #108]	@ 0x6c
 8001472:	ea83 0102 	eor.w	r1, r3, r2
 8001476:	9a24      	ldr	r2, [sp, #144]	@ 0x90
 8001478:	9b12      	ldr	r3, [sp, #72]	@ 0x48
 800147a:	4054      	eors	r4, r2
 800147c:	9a25      	ldr	r2, [sp, #148]	@ 0x94
 800147e:	4051      	eors	r1, r2
 8001480:	9a2e      	ldr	r2, [sp, #184]	@ 0xb8
 8001482:	4054      	eors	r4, r2
 8001484:	9a2f      	ldr	r2, [sp, #188]	@ 0xbc
 8001486:	4051      	eors	r1, r2
 8001488:	9a38      	ldr	r2, [sp, #224]	@ 0xe0
 800148a:	4054      	eors	r4, r2
 800148c:	9a39      	ldr	r2, [sp, #228]	@ 0xe4
 800148e:	4051      	eors	r1, r2
 8001490:	9a1c      	ldr	r2, [sp, #112]	@ 0x70
 8001492:	405a      	eors	r2, r3
 8001494:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
 8001496:	ea83 0e0e 	eor.w	lr, r3, lr
 800149a:	9b26      	ldr	r3, [sp, #152]	@ 0x98
 800149c:	405a      	eors	r2, r3
 800149e:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
 80014a0:	ea8e 0e03 	eor.w	lr, lr, r3
 80014a4:	9b30      	ldr	r3, [sp, #192]	@ 0xc0
 80014a6:	405a      	eors	r2, r3
 80014a8:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
 80014aa:	ea8e 0e03 	eor.w	lr, lr, r3
 80014ae:	9b3a      	ldr	r3, [sp, #232]	@ 0xe8
 80014b0:	ea4f 0b49 	mov.w	fp, r9, lsl #1
 80014b4:	405a      	eors	r2, r3
 80014b6:	ea4b 7bd8 	orr.w	fp, fp, r8, lsr #31
 80014ba:	ea4f 0a48 	mov.w	sl, r8, lsl #1
 80014be:	ea8e 0e06 	eor.w	lr, lr, r6
 80014c2:	ea8b 0302 	eor.w	r3, fp, r2
 80014c6:	ea4a 7ad9 	orr.w	sl, sl, r9, lsr #31
 80014ca:	9301      	str	r3, [sp, #4]
 80014cc:	ea8a 030e 	eor.w	r3, sl, lr
 80014d0:	9302      	str	r3, [sp, #8]
 80014d2:	ea4f 0b4c 	mov.w	fp, ip, lsl #1
 80014d6:	9b08      	ldr	r3, [sp, #32]
 80014d8:	ea4b 7bd7 	orr.w	fp, fp, r7, lsr #31
 80014dc:	ea4f 0a47 	mov.w	sl, r7, lsl #1
 80014e0:	ea4a 7adc 	orr.w	sl, sl, ip, lsr #31
 80014e4:	ea8b 0303 	eor.w	r3, fp, r3
 80014e8:	9303      	str	r3, [sp, #12]
 80014ea:	ea8a 0305 	eor.w	r3, sl, r5
 80014ee:	ea4f 0a41 	mov.w	sl, r1, lsl #1
 80014f2:	ea4a 7ad4 	orr.w	sl, sl, r4, lsr #31
 80014f6:	9304      	str	r3, [sp, #16]
 80014f8:	ea8a 0308 	eor.w	r3, sl, r8
 80014fc:	ea4f 084e 	mov.w	r8, lr, lsl #1
 8001500:	ea48 78d2 	orr.w	r8, r8, r2, lsr #31
 8001504:	0052      	lsls	r2, r2, #1
 8001506:	ea42 72de 	orr.w	r2, r2, lr, lsr #31
 800150a:	9305      	str	r3, [sp, #20]
 800150c:	ea82 030c 	eor.w	r3, r2, ip
 8001510:	9306      	str	r3, [sp, #24]
 8001512:	ea88 0307 	eor.w	r3, r8, r7
 8001516:	9307      	str	r3, [sp, #28]
 8001518:	9b08      	ldr	r3, [sp, #32]
 800151a:	006a      	lsls	r2, r5, #1
 800151c:	ea42 72d3 	orr.w	r2, r2, r3, lsr #31
 8001520:	005b      	lsls	r3, r3, #1
 8001522:	ea43 73d5 	orr.w	r3, r3, r5, lsr #31
 8001526:	4063      	eors	r3, r4
 8001528:	9308      	str	r3, [sp, #32]
 800152a:	ea82 0301 	eor.w	r3, r2, r1
 800152e:	ea4f 0b44 	mov.w	fp, r4, lsl #1
 8001532:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
 8001534:	9309      	str	r3, [sp, #36]	@ 0x24
 8001536:	9b01      	ldr	r3, [sp, #4]
 8001538:	ea4b 7bd1 	orr.w	fp, fp, r1, lsr #31
 800153c:	ea8b 0b09 	eor.w	fp, fp, r9
 8001540:	ea83 0902 	eor.w	r9, r3, r2
 8001544:	9b02      	ldr	r3, [sp, #8]
 8001546:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
 8001548:	9917      	ldr	r1, [sp, #92]	@ 0x5c
 800154a:	9c23      	ldr	r4, [sp, #140]	@ 0x8c
 800154c:	9f2f      	ldr	r7, [sp, #188]	@ 0xbc
 800154e:	ea83 0a02 	eor.w	sl, r3, r2
 8001552:	9b03      	ldr	r3, [sp, #12]
 8001554:	9a16      	ldr	r2, [sp, #88]	@ 0x58
 8001556:	405a      	eors	r2, r3
 8001558:	9b04      	ldr	r3, [sp, #16]
 800155a:	0d15      	lsrs	r5, r2, #20
 800155c:	404b      	eors	r3, r1
 800155e:	ea45 3503 	orr.w	r5, r5, r3, lsl #12
 8001562:	0d1b      	lsrs	r3, r3, #20
 8001564:	ea43 3302 	orr.w	r3, r3, r2, lsl #12
 8001568:	9a22      	ldr	r2, [sp, #136]	@ 0x88
 800156a:	9905      	ldr	r1, [sp, #20]
 800156c:	ea8b 0202 	eor.w	r2, fp, r2
 8001570:	404c      	eors	r4, r1
 8001572:	ea4f 5852 	mov.w	r8, r2, lsr #21
 8001576:	ea48 28c4 	orr.w	r8, r8, r4, lsl #11
 800157a:	0d64      	lsrs	r4, r4, #21
 800157c:	ea44 24c2 	orr.w	r4, r4, r2, lsl #11
 8001580:	992e      	ldr	r1, [sp, #184]	@ 0xb8
 8001582:	9a06      	ldr	r2, [sp, #24]
 8001584:	4051      	eors	r1, r2
 8001586:	9a07      	ldr	r2, [sp, #28]
 8001588:	407a      	eors	r2, r7
 800158a:	ea4f 5e42 	mov.w	lr, r2, lsl #21
 800158e:	ea4e 2ed1 	orr.w	lr, lr, r1, lsr #11
 8001592:	0549      	lsls	r1, r1, #21
 8001594:	9f3a      	ldr	r7, [sp, #232]	@ 0xe8
 8001596:	ea41 21d2 	orr.w	r1, r1, r2, lsr #11
 800159a:	9a08      	ldr	r2, [sp, #32]
 800159c:	407a      	eors	r2, r7
 800159e:	9f09      	ldr	r7, [sp, #36]	@ 0x24
 80015a0:	407e      	eors	r6, r7
 80015a2:	ea4f 3c86 	mov.w	ip, r6, lsl #14
 80015a6:	ea4c 4c92 	orr.w	ip, ip, r2, lsr #18
 80015aa:	0392      	lsls	r2, r2, #14
 80015ac:	ea42 4296 	orr.w	r2, r2, r6, lsr #18
 80015b0:	9e00      	ldr	r6, [sp, #0]
 80015b2:	e9d6 7600 	ldrd	r7, r6, [r6]
 80015b6:	ea8a 0606 	eor.w	r6, sl, r6
 80015ba:	960b      	str	r6, [sp, #44]	@ 0x2c
 80015bc:	ea89 0707 	eor.w	r7, r9, r7
 80015c0:	ea28 0605 	bic.w	r6, r8, r5
 80015c4:	407e      	eors	r6, r7
 80015c6:	9f0b      	ldr	r7, [sp, #44]	@ 0x2c
 80015c8:	960a      	str	r6, [sp, #40]	@ 0x28
 80015ca:	ea24 0603 	bic.w	r6, r4, r3
 80015ce:	4077      	eors	r7, r6
 80015d0:	ea2e 0604 	bic.w	r6, lr, r4
 80015d4:	405e      	eors	r6, r3
 80015d6:	970b      	str	r7, [sp, #44]	@ 0x2c
 80015d8:	ea21 0708 	bic.w	r7, r1, r8
 80015dc:	406f      	eors	r7, r5
 80015de:	9623      	str	r6, [sp, #140]	@ 0x8c
 80015e0:	ea25 0509 	bic.w	r5, r5, r9
 80015e4:	ea2c 060e 	bic.w	r6, ip, lr
 80015e8:	ea23 030a 	bic.w	r3, r3, sl
 80015ec:	4074      	eors	r4, r6
 80015ee:	ea83 030c 	eor.w	r3, r3, ip
 80015f2:	ea29 0602 	bic.w	r6, r9, r2
 80015f6:	9722      	str	r7, [sp, #136]	@ 0x88
 80015f8:	ea22 0701 	bic.w	r7, r2, r1
 80015fc:	406a      	eors	r2, r5
 80015fe:	4071      	eors	r1, r6
 8001600:	943b      	str	r4, [sp, #236]	@ 0xec
 8001602:	922e      	str	r2, [sp, #184]	@ 0xb8
 8001604:	ea2a 040c 	bic.w	r4, sl, ip
 8001608:	9a10      	ldr	r2, [sp, #64]	@ 0x40
 800160a:	932f      	str	r3, [sp, #188]	@ 0xbc
 800160c:	9b06      	ldr	r3, [sp, #24]
 800160e:	9116      	str	r1, [sp, #88]	@ 0x58
 8001610:	ea87 0708 	eor.w	r7, r7, r8
 8001614:	ea84 010e 	eor.w	r1, r4, lr
 8001618:	973a      	str	r7, [sp, #232]	@ 0xe8
 800161a:	9117      	str	r1, [sp, #92]	@ 0x5c
 800161c:	ea83 0102 	eor.w	r1, r3, r2
 8001620:	9b07      	ldr	r3, [sp, #28]
 8001622:	9a11      	ldr	r2, [sp, #68]	@ 0x44
 8001624:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
 8001626:	9f2b      	ldr	r7, [sp, #172]	@ 0xac
 8001628:	4053      	eors	r3, r2
 800162a:	ea4f 7c03 	mov.w	ip, r3, lsl #28
 800162e:	ea4c 1c11 	orr.w	ip, ip, r1, lsr #4
 8001632:	0709      	lsls	r1, r1, #28
 8001634:	ea41 1113 	orr.w	r1, r1, r3, lsr #4
 8001638:	9a1c      	ldr	r2, [sp, #112]	@ 0x70
 800163a:	9b08      	ldr	r3, [sp, #32]
 800163c:	4053      	eors	r3, r2
 800163e:	9a09      	ldr	r2, [sp, #36]	@ 0x24
 8001640:	4062      	eors	r2, r4
 8001642:	0516      	lsls	r6, r2, #20
 8001644:	ea46 3613 	orr.w	r6, r6, r3, lsr #12
 8001648:	051b      	lsls	r3, r3, #20
 800164a:	9c1e      	ldr	r4, [sp, #120]	@ 0x78
 800164c:	ea43 3312 	orr.w	r3, r3, r2, lsr #12
 8001650:	9a01      	ldr	r2, [sp, #4]
 8001652:	ea82 0504 	eor.w	r5, r2, r4
 8001656:	9c1f      	ldr	r4, [sp, #124]	@ 0x7c
 8001658:	9a02      	ldr	r2, [sp, #8]
 800165a:	4062      	eors	r2, r4
 800165c:	ea4f 08c2 	mov.w	r8, r2, lsl #3
 8001660:	ea48 7855 	orr.w	r8, r8, r5, lsr #29
 8001664:	00ed      	lsls	r5, r5, #3
 8001666:	9c2a      	ldr	r4, [sp, #168]	@ 0xa8
 8001668:	ea45 7552 	orr.w	r5, r5, r2, lsr #29
 800166c:	9a03      	ldr	r2, [sp, #12]
 800166e:	4062      	eors	r2, r4
 8001670:	9c04      	ldr	r4, [sp, #16]
 8001672:	ea4f 4ed2 	mov.w	lr, r2, lsr #19
 8001676:	407c      	eors	r4, r7
 8001678:	ea4e 3e44 	orr.w	lr, lr, r4, lsl #13
 800167c:	0ce4      	lsrs	r4, r4, #19
 800167e:	ea44 3442 	orr.w	r4, r4, r2, lsl #13
 8001682:	9a36      	ldr	r2, [sp, #216]	@ 0xd8
 8001684:	9f37      	ldr	r7, [sp, #220]	@ 0xdc
 8001686:	ea8b 0902 	eor.w	r9, fp, r2
 800168a:	9a05      	ldr	r2, [sp, #20]
 800168c:	407a      	eors	r2, r7
 800168e:	ea4f 07d9 	mov.w	r7, r9, lsr #3
 8001692:	ea47 7742 	orr.w	r7, r7, r2, lsl #29
 8001696:	ea25 0a03 	bic.w	sl, r5, r3
 800169a:	08d2      	lsrs	r2, r2, #3
 800169c:	ea42 7249 	orr.w	r2, r2, r9, lsl #29
 80016a0:	ea8a 0a01 	eor.w	sl, sl, r1
 80016a4:	ea28 0906 	bic.w	r9, r8, r6
 80016a8:	ea89 090c 	eor.w	r9, r9, ip
 80016ac:	f8cd a0a8 	str.w	sl, [sp, #168]	@ 0xa8
 80016b0:	ea2e 0a05 	bic.w	sl, lr, r5
 80016b4:	ea8a 0a03 	eor.w	sl, sl, r3
 80016b8:	f8cd 90ac 	str.w	r9, [sp, #172]	@ 0xac
 80016bc:	ea24 0908 	bic.w	r9, r4, r8
 80016c0:	ea89 0906 	eor.w	r9, r9, r6
 80016c4:	f8cd a040 	str.w	sl, [sp, #64]	@ 0x40
 80016c8:	ea23 0301 	bic.w	r3, r3, r1
 80016cc:	ea27 0a0e 	bic.w	sl, r7, lr
 80016d0:	ea8a 0505 	eor.w	r5, sl, r5
 80016d4:	ea26 060c 	bic.w	r6, r6, ip
 80016d8:	407b      	eors	r3, r7
 80016da:	f8cd 9044 	str.w	r9, [sp, #68]	@ 0x44
 80016de:	ea22 0904 	bic.w	r9, r2, r4
 80016e2:	951e      	str	r5, [sp, #120]	@ 0x78
 80016e4:	931c      	str	r3, [sp, #112]	@ 0x70
 80016e6:	ea89 0508 	eor.w	r5, r9, r8
 80016ea:	ea86 0302 	eor.w	r3, r6, r2
 80016ee:	951f      	str	r5, [sp, #124]	@ 0x7c
 80016f0:	931d      	str	r3, [sp, #116]	@ 0x74
 80016f2:	ea2c 0502 	bic.w	r5, ip, r2
 80016f6:	9b03      	ldr	r3, [sp, #12]
 80016f8:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
 80016fa:	ea21 0807 	bic.w	r8, r1, r7
 80016fe:	ea83 0102 	eor.w	r1, r3, r2
 8001702:	9b04      	ldr	r3, [sp, #16]
 8001704:	9a0d      	ldr	r2, [sp, #52]	@ 0x34
 8001706:	4053      	eors	r3, r2
 8001708:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800170c:	ea4c 7cd1 	orr.w	ip, ip, r1, lsr #31
 8001710:	ea88 0e0e 	eor.w	lr, r8, lr
 8001714:	406c      	eors	r4, r5
 8001716:	0049      	lsls	r1, r1, #1
 8001718:	ea41 71d3 	orr.w	r1, r1, r3, lsr #31
 800171c:	f8cd e0d8 	str.w	lr, [sp, #216]	@ 0xd8
 8001720:	9b18      	ldr	r3, [sp, #96]	@ 0x60
 8001722:	9437      	str	r4, [sp, #220]	@ 0xdc
 8001724:	9a05      	ldr	r2, [sp, #20]
 8001726:	9c19      	ldr	r4, [sp, #100]	@ 0x64
 8001728:	9f31      	ldr	r7, [sp, #196]	@ 0xc4
 800172a:	f8dd 90cc 	ldr.w	r9, [sp, #204]	@ 0xcc
 800172e:	4062      	eors	r2, r4
 8001730:	ea8b 0303 	eor.w	r3, fp, r3
 8001734:	0196      	lsls	r6, r2, #6
 8001736:	ea46 6693 	orr.w	r6, r6, r3, lsr #26
 800173a:	019b      	lsls	r3, r3, #6
 800173c:	9c24      	ldr	r4, [sp, #144]	@ 0x90
 800173e:	ea43 6392 	orr.w	r3, r3, r2, lsr #26
 8001742:	9a06      	ldr	r2, [sp, #24]
 8001744:	ea82 0504 	eor.w	r5, r2, r4
 8001748:	9c25      	ldr	r4, [sp, #148]	@ 0x94
 800174a:	9a07      	ldr	r2, [sp, #28]
 800174c:	4062      	eors	r2, r4
 800174e:	ea4f 6842 	mov.w	r8, r2, lsl #25
 8001752:	ea48 18d5 	orr.w	r8, r8, r5, lsr #7
 8001756:	066d      	lsls	r5, r5, #25
 8001758:	ea45 15d2 	orr.w	r5, r5, r2, lsr #7
 800175c:	9c30      	ldr	r4, [sp, #192]	@ 0xc0
 800175e:	9a08      	ldr	r2, [sp, #32]
 8001760:	4054      	eors	r4, r2
 8001762:	9a09      	ldr	r2, [sp, #36]	@ 0x24
 8001764:	407a      	eors	r2, r7
 8001766:	ea4f 2e02 	mov.w	lr, r2, lsl #8
 800176a:	ea4e 6e14 	orr.w	lr, lr, r4, lsr #24
 800176e:	0224      	lsls	r4, r4, #8
 8001770:	9f32      	ldr	r7, [sp, #200]	@ 0xc8
 8001772:	ea44 6412 	orr.w	r4, r4, r2, lsr #24
 8001776:	9a01      	ldr	r2, [sp, #4]
 8001778:	407a      	eors	r2, r7
 800177a:	9f02      	ldr	r7, [sp, #8]
 800177c:	ea87 0909 	eor.w	r9, r7, r9
 8001780:	ea4f 4789 	mov.w	r7, r9, lsl #18
 8001784:	ea47 3792 	orr.w	r7, r7, r2, lsr #14
 8001788:	ea25 0a03 	bic.w	sl, r5, r3
 800178c:	0492      	lsls	r2, r2, #18
 800178e:	ea42 3299 	orr.w	r2, r2, r9, lsr #14
 8001792:	ea8a 0a01 	eor.w	sl, sl, r1
 8001796:	ea28 0906 	bic.w	r9, r8, r6
 800179a:	ea89 090c 	eor.w	r9, r9, ip
 800179e:	f8cd a060 	str.w	sl, [sp, #96]	@ 0x60
 80017a2:	ea24 0a05 	bic.w	sl, r4, r5
 80017a6:	ea8a 0a03 	eor.w	sl, sl, r3
 80017aa:	f8cd 9064 	str.w	r9, [sp, #100]	@ 0x64
 80017ae:	ea23 0301 	bic.w	r3, r3, r1
 80017b2:	ea2e 0908 	bic.w	r9, lr, r8
 80017b6:	ea89 0906 	eor.w	r9, r9, r6
 80017ba:	4053      	eors	r3, r2
 80017bc:	ea26 060c 	bic.w	r6, r6, ip
 80017c0:	f8cd a0c0 	str.w	sl, [sp, #192]	@ 0xc0
 80017c4:	ea22 0a04 	bic.w	sl, r2, r4
 80017c8:	ea8a 0505 	eor.w	r5, sl, r5
 80017cc:	f8cd 90c4 	str.w	r9, [sp, #196]	@ 0xc4
 80017d0:	9332      	str	r3, [sp, #200]	@ 0xc8
 80017d2:	ea27 090e 	bic.w	r9, r7, lr
 80017d6:	ea86 0307 	eor.w	r3, r6, r7
 80017da:	950c      	str	r5, [sp, #48]	@ 0x30
 80017dc:	9333      	str	r3, [sp, #204]	@ 0xcc
 80017de:	ea89 0508 	eor.w	r5, r9, r8
 80017e2:	9b08      	ldr	r3, [sp, #32]
 80017e4:	950d      	str	r5, [sp, #52]	@ 0x34
 80017e6:	ea21 0802 	bic.w	r8, r1, r2
 80017ea:	9a12      	ldr	r2, [sp, #72]	@ 0x48
 80017ec:	ea83 0102 	eor.w	r1, r3, r2
 80017f0:	9a13      	ldr	r2, [sp, #76]	@ 0x4c
 80017f2:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 80017f4:	4053      	eors	r3, r2
 80017f6:	ea2c 0507 	bic.w	r5, ip, r7
 80017fa:	ea4f 6cc3 	mov.w	ip, r3, lsl #27
 80017fe:	ea4c 1c51 	orr.w	ip, ip, r1, lsr #5
 8001802:	06c9      	lsls	r1, r1, #27
 8001804:	ea41 1153 	orr.w	r1, r1, r3, lsr #5
 8001808:	ea88 0404 	eor.w	r4, r8, r4
 800180c:	9b01      	ldr	r3, [sp, #4]
 800180e:	9a14      	ldr	r2, [sp, #80]	@ 0x50
 8001810:	9424      	str	r4, [sp, #144]	@ 0x90
 8001812:	ea85 040e 	eor.w	r4, r5, lr
 8001816:	405a      	eors	r2, r3
 8001818:	9425      	str	r4, [sp, #148]	@ 0x94
 800181a:	9b02      	ldr	r3, [sp, #8]
 800181c:	9c15      	ldr	r4, [sp, #84]	@ 0x54
 800181e:	0f16      	lsrs	r6, r2, #28
 8001820:	4063      	eors	r3, r4
 8001822:	ea46 1603 	orr.w	r6, r6, r3, lsl #4
 8001826:	0f1b      	lsrs	r3, r3, #28
 8001828:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 800182c:	9a03      	ldr	r2, [sp, #12]
 800182e:	9c20      	ldr	r4, [sp, #128]	@ 0x80
 8001830:	9f2d      	ldr	r7, [sp, #180]	@ 0xb4
 8001832:	ea82 0504 	eor.w	r5, r2, r4
 8001836:	9c21      	ldr	r4, [sp, #132]	@ 0x84
 8001838:	9a04      	ldr	r2, [sp, #16]
 800183a:	4062      	eors	r2, r4
 800183c:	ea4f 2882 	mov.w	r8, r2, lsl #10
 8001840:	ea48 5895 	orr.w	r8, r8, r5, lsr #22
 8001844:	02ad      	lsls	r5, r5, #10
 8001846:	ea45 5592 	orr.w	r5, r5, r2, lsr #22
 800184a:	9a2c      	ldr	r2, [sp, #176]	@ 0xb0
 800184c:	ea8b 0402 	eor.w	r4, fp, r2
 8001850:	9a05      	ldr	r2, [sp, #20]
 8001852:	407a      	eors	r2, r7
 8001854:	ea4f 3ec2 	mov.w	lr, r2, lsl #15
 8001858:	ea4e 4e54 	orr.w	lr, lr, r4, lsr #17
 800185c:	03e4      	lsls	r4, r4, #15
 800185e:	9f38      	ldr	r7, [sp, #224]	@ 0xe0
 8001860:	ea44 4452 	orr.w	r4, r4, r2, lsr #17
 8001864:	9a06      	ldr	r2, [sp, #24]
 8001866:	ea82 0907 	eor.w	r9, r2, r7
 800186a:	9f39      	ldr	r7, [sp, #228]	@ 0xe4
 800186c:	9a07      	ldr	r2, [sp, #28]
 800186e:	407a      	eors	r2, r7
 8001870:	ea4f 2719 	mov.w	r7, r9, lsr #8
 8001874:	ea47 6702 	orr.w	r7, r7, r2, lsl #24
 8001878:	ea25 0a06 	bic.w	sl, r5, r6
 800187c:	0a12      	lsrs	r2, r2, #8
 800187e:	ea42 6209 	orr.w	r2, r2, r9, lsl #24
 8001882:	ea8a 0a01 	eor.w	sl, sl, r1
 8001886:	ea28 0903 	bic.w	r9, r8, r3
 800188a:	ea89 090c 	eor.w	r9, r9, ip
 800188e:	f8cd a0e0 	str.w	sl, [sp, #224]	@ 0xe0
 8001892:	ea24 0a05 	bic.w	sl, r4, r5
 8001896:	ea8a 0a06 	eor.w	sl, sl, r6
 800189a:	f8cd 90e4 	str.w	r9, [sp, #228]	@ 0xe4
 800189e:	ea2e 0908 	bic.w	r9, lr, r8
 80018a2:	ea89 0903 	eor.w	r9, r9, r3
 80018a6:	f8cd a050 	str.w	sl, [sp, #80]	@ 0x50
 80018aa:	ea23 030c 	bic.w	r3, r3, ip
 80018ae:	ea27 0a04 	bic.w	sl, r7, r4
 80018b2:	ea8a 0505 	eor.w	r5, sl, r5
 80018b6:	4053      	eors	r3, r2
 80018b8:	f8cd 9054 	str.w	r9, [sp, #84]	@ 0x54
 80018bc:	ea26 0601 	bic.w	r6, r6, r1
 80018c0:	ea22 090e 	bic.w	r9, r2, lr
 80018c4:	952c      	str	r5, [sp, #176]	@ 0xb0
 80018c6:	9321      	str	r3, [sp, #132]	@ 0x84
 80018c8:	ea89 0508 	eor.w	r5, r9, r8
 80018cc:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
 80018ce:	952d      	str	r5, [sp, #180]	@ 0xb4
 80018d0:	ea21 0807 	bic.w	r8, r1, r7
 80018d4:	ea86 0107 	eor.w	r1, r6, r7
 80018d8:	ea2c 0502 	bic.w	r5, ip, r2
 80018dc:	ea88 0404 	eor.w	r4, r8, r4
 80018e0:	9a05      	ldr	r2, [sp, #20]
 80018e2:	9120      	str	r1, [sp, #128]	@ 0x80
 80018e4:	990f      	ldr	r1, [sp, #60]	@ 0x3c
 80018e6:	9412      	str	r4, [sp, #72]	@ 0x48
 80018e8:	ea8b 0303 	eor.w	r3, fp, r3
 80018ec:	ea85 040e 	eor.w	r4, r5, lr
 80018f0:	9413      	str	r4, [sp, #76]	@ 0x4c
 80018f2:	089d      	lsrs	r5, r3, #2
 80018f4:	ea82 0401 	eor.w	r4, r2, r1
 80018f8:	ea45 7584 	orr.w	r5, r5, r4, lsl #30
 80018fc:	08a4      	lsrs	r4, r4, #2
 80018fe:	ea44 7483 	orr.w	r4, r4, r3, lsl #30
 8001902:	9a1a      	ldr	r2, [sp, #104]	@ 0x68
 8001904:	9b06      	ldr	r3, [sp, #24]
 8001906:	9e26      	ldr	r6, [sp, #152]	@ 0x98
 8001908:	9f27      	ldr	r7, [sp, #156]	@ 0x9c
 800190a:	ea83 0102 	eor.w	r1, r3, r2
 800190e:	9b07      	ldr	r3, [sp, #28]
 8001910:	9a1b      	ldr	r2, [sp, #108]	@ 0x6c
 8001912:	405a      	eors	r2, r3
 8001914:	0a4b      	lsrs	r3, r1, #9
 8001916:	ea43 53c2 	orr.w	r3, r3, r2, lsl #23
 800191a:	0a52      	lsrs	r2, r2, #9
 800191c:	ea42 52c1 	orr.w	r2, r2, r1, lsl #23
 8001920:	9908      	ldr	r1, [sp, #32]
 8001922:	4071      	eors	r1, r6
 8001924:	9e09      	ldr	r6, [sp, #36]	@ 0x24
 8001926:	ea4f 6c51 	mov.w	ip, r1, lsr #25
 800192a:	4077      	eors	r7, r6
 800192c:	ea4c 1cc7 	orr.w	ip, ip, r7, lsl #7
 8001930:	0e7f      	lsrs	r7, r7, #25
 8001932:	ea47 17c1 	orr.w	r7, r7, r1, lsl #7
 8001936:	9901      	ldr	r1, [sp, #4]
 8001938:	9e28      	ldr	r6, [sp, #160]	@ 0xa0
 800193a:	f8dd e0a4 	ldr.w	lr, [sp, #164]	@ 0xa4
 800193e:	f8dd 90d4 	ldr.w	r9, [sp, #212]	@ 0xd4
 8001942:	4071      	eors	r1, r6
 8001944:	9e02      	ldr	r6, [sp, #8]
 8001946:	ea4f 58d1 	mov.w	r8, r1, lsr #23
 800194a:	ea86 060e 	eor.w	r6, r6, lr
 800194e:	ea48 2846 	orr.w	r8, r8, r6, lsl #9
 8001952:	0df6      	lsrs	r6, r6, #23
 8001954:	f8dd e0d0 	ldr.w	lr, [sp, #208]	@ 0xd0
 8001958:	ea46 2641 	orr.w	r6, r6, r1, lsl #9
 800195c:	9903      	ldr	r1, [sp, #12]
 800195e:	ea81 010e 	eor.w	r1, r1, lr
 8001962:	f8dd e010 	ldr.w	lr, [sp, #16]
 8001966:	ea8e 0909 	eor.w	r9, lr, r9
 800196a:	ea4f 0e89 	mov.w	lr, r9, lsl #2
 800196e:	ea4e 7e91 	orr.w	lr, lr, r1, lsr #30
 8001972:	ea2c 0a03 	bic.w	sl, ip, r3
 8001976:	0089      	lsls	r1, r1, #2
 8001978:	ea41 7199 	orr.w	r1, r1, r9, lsr #30
 800197c:	ea8a 0a05 	eor.w	sl, sl, r5
 8001980:	ea27 0902 	bic.w	r9, r7, r2
 8001984:	f8cd a098 	str.w	sl, [sp, #152]	@ 0x98
 8001988:	ea89 0904 	eor.w	r9, r9, r4
 800198c:	ea28 0a0c 	bic.w	sl, r8, ip
 8001990:	f8cd 909c 	str.w	r9, [sp, #156]	@ 0x9c
 8001994:	ea8a 0a03 	eor.w	sl, sl, r3
 8001998:	ea26 0907 	bic.w	r9, r6, r7
 800199c:	ea23 0305 	bic.w	r3, r3, r5
 80019a0:	ea89 0902 	eor.w	r9, r9, r2
 80019a4:	404b      	eors	r3, r1
 80019a6:	ea22 0204 	bic.w	r2, r2, r4
 80019aa:	930e      	str	r3, [sp, #56]	@ 0x38
 80019ac:	ea82 030e 	eor.w	r3, r2, lr
 80019b0:	f8cd a0d0 	str.w	sl, [sp, #208]	@ 0xd0
 80019b4:	9a2a      	ldr	r2, [sp, #168]	@ 0xa8
 80019b6:	f8cd 90d4 	str.w	r9, [sp, #212]	@ 0xd4
 80019ba:	ea21 0a08 	bic.w	sl, r1, r8
 80019be:	ea2e 0906 	bic.w	r9, lr, r6
 80019c2:	930f      	str	r3, [sp, #60]	@ 0x3c
 80019c4:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 80019c6:	ea8a 0c0c 	eor.w	ip, sl, ip
 80019ca:	ea89 0707 	eor.w	r7, r9, r7
 80019ce:	f8cd c068 	str.w	ip, [sp, #104]	@ 0x68
 80019d2:	971b      	str	r7, [sp, #108]	@ 0x6c
 80019d4:	ea25 0c01 	bic.w	ip, r5, r1
 80019d8:	ea24 070e 	bic.w	r7, r4, lr
 80019dc:	992b      	ldr	r1, [sp, #172]	@ 0xac
 80019de:	405a      	eors	r2, r3
 80019e0:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 80019e2:	407e      	eors	r6, r7
 80019e4:	9629      	str	r6, [sp, #164]	@ 0xa4
 80019e6:	ea83 0601 	eor.w	r6, r3, r1
 80019ea:	9918      	ldr	r1, [sp, #96]	@ 0x60
 80019ec:	9b22      	ldr	r3, [sp, #136]	@ 0x88
 80019ee:	404a      	eors	r2, r1
 80019f0:	9919      	ldr	r1, [sp, #100]	@ 0x64
 80019f2:	404e      	eors	r6, r1
 80019f4:	9938      	ldr	r1, [sp, #224]	@ 0xe0
 80019f6:	404a      	eors	r2, r1
 80019f8:	9939      	ldr	r1, [sp, #228]	@ 0xe4
 80019fa:	404e      	eors	r6, r1
 80019fc:	9926      	ldr	r1, [sp, #152]	@ 0x98
 80019fe:	404a      	eors	r2, r1
 8001a00:	9927      	ldr	r1, [sp, #156]	@ 0x9c
 8001a02:	404e      	eors	r6, r1
 8001a04:	9910      	ldr	r1, [sp, #64]	@ 0x40
 8001a06:	ea83 0901 	eor.w	r9, r3, r1
 8001a0a:	9911      	ldr	r1, [sp, #68]	@ 0x44
 8001a0c:	9b23      	ldr	r3, [sp, #140]	@ 0x8c
 8001a0e:	ea8c 0c08 	eor.w	ip, ip, r8
 8001a12:	f8cd c0a0 	str.w	ip, [sp, #160]	@ 0xa0
 8001a16:	ea83 0801 	eor.w	r8, r3, r1
 8001a1a:	9b30      	ldr	r3, [sp, #192]	@ 0xc0
 8001a1c:	991e      	ldr	r1, [sp, #120]	@ 0x78
 8001a1e:	f8dd e0cc 	ldr.w	lr, [sp, #204]	@ 0xcc
 8001a22:	ea89 0903 	eor.w	r9, r9, r3
 8001a26:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
 8001a28:	ea88 0803 	eor.w	r8, r8, r3
 8001a2c:	9b14      	ldr	r3, [sp, #80]	@ 0x50
 8001a2e:	ea89 0903 	eor.w	r9, r9, r3
 8001a32:	9b15      	ldr	r3, [sp, #84]	@ 0x54
 8001a34:	ea88 0803 	eor.w	r8, r8, r3
 8001a38:	9b34      	ldr	r3, [sp, #208]	@ 0xd0
 8001a3a:	ea89 0903 	eor.w	r9, r9, r3
 8001a3e:	9b35      	ldr	r3, [sp, #212]	@ 0xd4
 8001a40:	ea88 0803 	eor.w	r8, r8, r3
 8001a44:	9b3a      	ldr	r3, [sp, #232]	@ 0xe8
 8001a46:	ea83 0c01 	eor.w	ip, r3, r1
 8001a4a:	9b3b      	ldr	r3, [sp, #236]	@ 0xec
 8001a4c:	991f      	ldr	r1, [sp, #124]	@ 0x7c
 8001a4e:	ea83 0701 	eor.w	r7, r3, r1
 8001a52:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
 8001a54:	990d      	ldr	r1, [sp, #52]	@ 0x34
 8001a56:	ea8c 0c03 	eor.w	ip, ip, r3
 8001a5a:	404f      	eors	r7, r1
 8001a5c:	9b2c      	ldr	r3, [sp, #176]	@ 0xb0
 8001a5e:	992d      	ldr	r1, [sp, #180]	@ 0xb4
 8001a60:	ea8c 0c03 	eor.w	ip, ip, r3
 8001a64:	404f      	eors	r7, r1
 8001a66:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
 8001a68:	991b      	ldr	r1, [sp, #108]	@ 0x6c
 8001a6a:	ea8c 0c03 	eor.w	ip, ip, r3
 8001a6e:	404f      	eors	r7, r1
 8001a70:	9b16      	ldr	r3, [sp, #88]	@ 0x58
 8001a72:	9936      	ldr	r1, [sp, #216]	@ 0xd8
 8001a74:	ea83 0501 	eor.w	r5, r3, r1
 8001a78:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
 8001a7a:	9937      	ldr	r1, [sp, #220]	@ 0xdc
 8001a7c:	ea83 0401 	eor.w	r4, r3, r1
 8001a80:	9924      	ldr	r1, [sp, #144]	@ 0x90
 8001a82:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
 8001a84:	404d      	eors	r5, r1
 8001a86:	9925      	ldr	r1, [sp, #148]	@ 0x94
 8001a88:	404c      	eors	r4, r1
 8001a8a:	9912      	ldr	r1, [sp, #72]	@ 0x48
 8001a8c:	404d      	eors	r5, r1
 8001a8e:	9913      	ldr	r1, [sp, #76]	@ 0x4c
 8001a90:	404c      	eors	r4, r1
 8001a92:	9928      	ldr	r1, [sp, #160]	@ 0xa0
 8001a94:	404d      	eors	r5, r1
 8001a96:	9929      	ldr	r1, [sp, #164]	@ 0xa4
 8001a98:	404c      	eors	r4, r1
 8001a9a:	9932      	ldr	r1, [sp, #200]	@ 0xc8
 8001a9c:	4059      	eors	r1, r3
 8001a9e:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
 8001aa0:	ea83 0e0e 	eor.w	lr, r3, lr
 8001aa4:	9b2e      	ldr	r3, [sp, #184]	@ 0xb8
 8001aa6:	4059      	eors	r1, r3
 8001aa8:	9b2f      	ldr	r3, [sp, #188]	@ 0xbc
 8001aaa:	ea8e 0e03 	eor.w	lr, lr, r3
 8001aae:	9b20      	ldr	r3, [sp, #128]	@ 0x80
 8001ab0:	4059      	eors	r1, r3
 8001ab2:	9b21      	ldr	r3, [sp, #132]	@ 0x84
 8001ab4:	ea8e 0e03 	eor.w	lr, lr, r3
 8001ab8:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
 8001aba:	ea4f 0b49 	mov.w	fp, r9, lsl #1
 8001abe:	4059      	eors	r1, r3
 8001ac0:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 8001ac2:	ea4b 7bd8 	orr.w	fp, fp, r8, lsr #31
 8001ac6:	ea4f 0a48 	mov.w	sl, r8, lsl #1
 8001aca:	ea8e 0e03 	eor.w	lr, lr, r3
 8001ace:	ea4a 7ad9 	orr.w	sl, sl, r9, lsr #31
 8001ad2:	ea8b 0301 	eor.w	r3, fp, r1
 8001ad6:	ea4f 0b4c 	mov.w	fp, ip, lsl #1
 8001ada:	9301      	str	r3, [sp, #4]
 8001adc:	ea4b 7bd7 	orr.w	fp, fp, r7, lsr #31
 8001ae0:	ea8a 030e 	eor.w	r3, sl, lr
 8001ae4:	ea4f 0a47 	mov.w	sl, r7, lsl #1
 8001ae8:	9302      	str	r3, [sp, #8]
 8001aea:	ea4a 7adc 	orr.w	sl, sl, ip, lsr #31
 8001aee:	ea8b 0302 	eor.w	r3, fp, r2
 8001af2:	9303      	str	r3, [sp, #12]
 8001af4:	ea8a 0306 	eor.w	r3, sl, r6
 8001af8:	ea4f 0a44 	mov.w	sl, r4, lsl #1
 8001afc:	ea4a 7ad5 	orr.w	sl, sl, r5, lsr #31
 8001b00:	9304      	str	r3, [sp, #16]
 8001b02:	ea8a 0308 	eor.w	r3, sl, r8
 8001b06:	ea4f 084e 	mov.w	r8, lr, lsl #1
 8001b0a:	ea48 78d1 	orr.w	r8, r8, r1, lsr #31
 8001b0e:	0049      	lsls	r1, r1, #1
 8001b10:	ea41 71de 	orr.w	r1, r1, lr, lsr #31
 8001b14:	9305      	str	r3, [sp, #20]
 8001b16:	ea81 030c 	eor.w	r3, r1, ip
 8001b1a:	0071      	lsls	r1, r6, #1
 8001b1c:	ea41 71d2 	orr.w	r1, r1, r2, lsr #31
 8001b20:	0052      	lsls	r2, r2, #1
 8001b22:	9306      	str	r3, [sp, #24]
 8001b24:	ea42 72d6 	orr.w	r2, r2, r6, lsr #31
 8001b28:	ea88 0307 	eor.w	r3, r8, r7
 8001b2c:	9307      	str	r3, [sp, #28]
 8001b2e:	ea82 0305 	eor.w	r3, r2, r5
 8001b32:	9308      	str	r3, [sp, #32]
 8001b34:	ea81 0304 	eor.w	r3, r1, r4
 8001b38:	9a01      	ldr	r2, [sp, #4]
 8001b3a:	9309      	str	r3, [sp, #36]	@ 0x24
 8001b3c:	ea4f 0b45 	mov.w	fp, r5, lsl #1
 8001b40:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 8001b42:	9e07      	ldr	r6, [sp, #28]
 8001b44:	9f09      	ldr	r7, [sp, #36]	@ 0x24
 8001b46:	ea4b 7bd4 	orr.w	fp, fp, r4, lsr #31
 8001b4a:	ea8b 0b09 	eor.w	fp, fp, r9
 8001b4e:	ea83 0902 	eor.w	r9, r3, r2
 8001b52:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 8001b54:	9a02      	ldr	r2, [sp, #8]
 8001b56:	9c05      	ldr	r4, [sp, #20]
 8001b58:	ea83 0a02 	eor.w	sl, r3, r2
 8001b5c:	9b10      	ldr	r3, [sp, #64]	@ 0x40
 8001b5e:	9a03      	ldr	r2, [sp, #12]
 8001b60:	ea83 0102 	eor.w	r1, r3, r2
 8001b64:	9b11      	ldr	r3, [sp, #68]	@ 0x44
 8001b66:	9a04      	ldr	r2, [sp, #16]
 8001b68:	0d0d      	lsrs	r5, r1, #20
 8001b6a:	405a      	eors	r2, r3
 8001b6c:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
 8001b6e:	ea45 3502 	orr.w	r5, r5, r2, lsl #12
 8001b72:	0d12      	lsrs	r2, r2, #20
 8001b74:	ea42 3201 	orr.w	r2, r2, r1, lsl #12
 8001b78:	ea83 010b 	eor.w	r1, r3, fp
 8001b7c:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
 8001b7e:	ea4f 5851 	mov.w	r8, r1, lsr #21
 8001b82:	405c      	eors	r4, r3
 8001b84:	ea48 28c4 	orr.w	r8, r8, r4, lsl #11
 8001b88:	0d64      	lsrs	r4, r4, #21
 8001b8a:	ea44 24c1 	orr.w	r4, r4, r1, lsl #11
 8001b8e:	9b12      	ldr	r3, [sp, #72]	@ 0x48
 8001b90:	9906      	ldr	r1, [sp, #24]
 8001b92:	4059      	eors	r1, r3
 8001b94:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
 8001b96:	405e      	eors	r6, r3
 8001b98:	ea4f 5e46 	mov.w	lr, r6, lsl #21
 8001b9c:	ea4e 2ed1 	orr.w	lr, lr, r1, lsr #11
 8001ba0:	0549      	lsls	r1, r1, #21
 8001ba2:	ea41 21d6 	orr.w	r1, r1, r6, lsr #11
 8001ba6:	9b08      	ldr	r3, [sp, #32]
 8001ba8:	9e0e      	ldr	r6, [sp, #56]	@ 0x38
 8001baa:	405e      	eors	r6, r3
 8001bac:	4633      	mov	r3, r6
 8001bae:	9e0f      	ldr	r6, [sp, #60]	@ 0x3c
 8001bb0:	407e      	eors	r6, r7
 8001bb2:	ea4f 3c86 	mov.w	ip, r6, lsl #14
 8001bb6:	ea4c 4c93 	orr.w	ip, ip, r3, lsr #18
 8001bba:	039b      	lsls	r3, r3, #14
 8001bbc:	ea43 4396 	orr.w	r3, r3, r6, lsr #18
 8001bc0:	9e00      	ldr	r6, [sp, #0]
 8001bc2:	e9d6 7602 	ldrd	r7, r6, [r6, #8]
 8001bc6:	ea8a 0606 	eor.w	r6, sl, r6
 8001bca:	960b      	str	r6, [sp, #44]	@ 0x2c
 8001bcc:	ea89 0707 	eor.w	r7, r9, r7
 8001bd0:	ea28 0605 	bic.w	r6, r8, r5
 8001bd4:	407e      	eors	r6, r7
 8001bd6:	9f0b      	ldr	r7, [sp, #44]	@ 0x2c
 8001bd8:	960a      	str	r6, [sp, #40]	@ 0x28
 8001bda:	ea24 0602 	bic.w	r6, r4, r2
 8001bde:	4077      	eors	r7, r6
 8001be0:	ea2e 0604 	bic.w	r6, lr, r4
 8001be4:	4056      	eors	r6, r2
 8001be6:	970b      	str	r7, [sp, #44]	@ 0x2c
 8001be8:	ea21 0708 	bic.w	r7, r1, r8
 8001bec:	406f      	eors	r7, r5
 8001bee:	960d      	str	r6, [sp, #52]	@ 0x34
 8001bf0:	ea25 0509 	bic.w	r5, r5, r9
 8001bf4:	ea2c 060e 	bic.w	r6, ip, lr
 8001bf8:	4074      	eors	r4, r6
 8001bfa:	ea22 020a 	bic.w	r2, r2, sl
 8001bfe:	ea29 0603 	bic.w	r6, r9, r3
 8001c02:	970c      	str	r7, [sp, #48]	@ 0x30
 8001c04:	ea23 0701 	bic.w	r7, r3, r1
 8001c08:	406b      	eors	r3, r5
 8001c0a:	9312      	str	r3, [sp, #72]	@ 0x48
 8001c0c:	ea82 030c 	eor.w	r3, r2, ip
 8001c10:	4071      	eors	r1, r6
 8001c12:	9a06      	ldr	r2, [sp, #24]
 8001c14:	940f      	str	r4, [sp, #60]	@ 0x3c
 8001c16:	9313      	str	r3, [sp, #76]	@ 0x4c
 8001c18:	ea2a 040c 	bic.w	r4, sl, ip
 8001c1c:	9b16      	ldr	r3, [sp, #88]	@ 0x58
 8001c1e:	9110      	str	r1, [sp, #64]	@ 0x40
 8001c20:	ea84 010e 	eor.w	r1, r4, lr
 8001c24:	9111      	str	r1, [sp, #68]	@ 0x44
 8001c26:	ea83 0102 	eor.w	r1, r3, r2
 8001c2a:	9a07      	ldr	r2, [sp, #28]
 8001c2c:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
 8001c2e:	9c09      	ldr	r4, [sp, #36]	@ 0x24
 8001c30:	4053      	eors	r3, r2
 8001c32:	ea4f 7c03 	mov.w	ip, r3, lsl #28
 8001c36:	ea4c 1c11 	orr.w	ip, ip, r1, lsr #4
 8001c3a:	0709      	lsls	r1, r1, #28
 8001c3c:	ea41 1113 	orr.w	r1, r1, r3, lsr #4
 8001c40:	9a08      	ldr	r2, [sp, #32]
 8001c42:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
 8001c44:	4053      	eors	r3, r2
 8001c46:	9a1d      	ldr	r2, [sp, #116]	@ 0x74
 8001c48:	4062      	eors	r2, r4
 8001c4a:	0516      	lsls	r6, r2, #20
 8001c4c:	ea46 3613 	orr.w	r6, r6, r3, lsr #12
 8001c50:	051b      	lsls	r3, r3, #20
 8001c52:	ea43 3312 	orr.w	r3, r3, r2, lsr #12
 8001c56:	9c01      	ldr	r4, [sp, #4]
 8001c58:	9a18      	ldr	r2, [sp, #96]	@ 0x60
 8001c5a:	ea82 0504 	eor.w	r5, r2, r4
 8001c5e:	9c02      	ldr	r4, [sp, #8]
 8001c60:	9a19      	ldr	r2, [sp, #100]	@ 0x64
 8001c62:	4062      	eors	r2, r4
 8001c64:	ea87 0708 	eor.w	r7, r7, r8
 8001c68:	ea4f 08c2 	mov.w	r8, r2, lsl #3
 8001c6c:	ea48 7855 	orr.w	r8, r8, r5, lsr #29
 8001c70:	00ed      	lsls	r5, r5, #3
 8001c72:	ea45 7552 	orr.w	r5, r5, r2, lsr #29
 8001c76:	9c03      	ldr	r4, [sp, #12]
 8001c78:	9a14      	ldr	r2, [sp, #80]	@ 0x50
 8001c7a:	970e      	str	r7, [sp, #56]	@ 0x38
 8001c7c:	4062      	eors	r2, r4
 8001c7e:	9f04      	ldr	r7, [sp, #16]
 8001c80:	9c15      	ldr	r4, [sp, #84]	@ 0x54
 8001c82:	ea4f 4ed2 	mov.w	lr, r2, lsr #19
 8001c86:	407c      	eors	r4, r7
 8001c88:	ea4e 3e44 	orr.w	lr, lr, r4, lsl #13
 8001c8c:	0ce4      	lsrs	r4, r4, #19
 8001c8e:	ea44 3442 	orr.w	r4, r4, r2, lsl #13
 8001c92:	9a1a      	ldr	r2, [sp, #104]	@ 0x68
 8001c94:	ea82 090b 	eor.w	r9, r2, fp
 8001c98:	9a1b      	ldr	r2, [sp, #108]	@ 0x6c
 8001c9a:	9f05      	ldr	r7, [sp, #20]
 8001c9c:	407a      	eors	r2, r7
 8001c9e:	ea4f 07d9 	mov.w	r7, r9, lsr #3
 8001ca2:	ea47 7742 	orr.w	r7, r7, r2, lsl #29
 8001ca6:	ea25 0a03 	bic.w	sl, r5, r3
 8001caa:	08d2      	lsrs	r2, r2, #3
 8001cac:	ea42 7249 	orr.w	r2, r2, r9, lsl #29
 8001cb0:	ea8a 0a01 	eor.w	sl, sl, r1
 8001cb4:	ea28 0906 	bic.w	r9, r8, r6
 8001cb8:	ea89 090c 	eor.w	r9, r9, ip
 8001cbc:	f8cd a050 	str.w	sl, [sp, #80]	@ 0x50
 8001cc0:	ea2e 0a05 	bic.w	sl, lr, r5
 8001cc4:	ea8a 0a03 	eor.w	sl, sl, r3
 8001cc8:	f8cd 9054 	str.w	r9, [sp, #84]	@ 0x54
 8001ccc:	ea24 0908 	bic.w	r9, r4, r8
 8001cd0:	ea89 0906 	eor.w	r9, r9, r6
 8001cd4:	f8cd a058 	str.w	sl, [sp, #88]	@ 0x58
 8001cd8:	ea23 0301 	bic.w	r3, r3, r1
 8001cdc:	ea27 0a0e 	bic.w	sl, r7, lr
 8001ce0:	ea8a 0505 	eor.w	r5, sl, r5
 8001ce4:	ea26 060c 	bic.w	r6, r6, ip
 8001ce8:	407b      	eors	r3, r7
 8001cea:	f8cd 905c 	str.w	r9, [sp, #92]	@ 0x5c
 8001cee:	ea22 0904 	bic.w	r9, r2, r4
 8001cf2:	9518      	str	r5, [sp, #96]	@ 0x60
 8001cf4:	931c      	str	r3, [sp, #112]	@ 0x70
 8001cf6:	ea89 0508 	eor.w	r5, r9, r8
 8001cfa:	ea86 0302 	eor.w	r3, r6, r2
 8001cfe:	9519      	str	r5, [sp, #100]	@ 0x64
 8001d00:	931d      	str	r3, [sp, #116]	@ 0x74
 8001d02:	ea2c 0502 	bic.w	r5, ip, r2
 8001d06:	9b22      	ldr	r3, [sp, #136]	@ 0x88
 8001d08:	9a03      	ldr	r2, [sp, #12]
 8001d0a:	f8dd 9008 	ldr.w	r9, [sp, #8]
 8001d0e:	ea21 0807 	bic.w	r8, r1, r7
 8001d12:	ea83 0102 	eor.w	r1, r3, r2
 8001d16:	9a04      	ldr	r2, [sp, #16]
 8001d18:	9b23      	ldr	r3, [sp, #140]	@ 0x8c
 8001d1a:	9f09      	ldr	r7, [sp, #36]	@ 0x24
 8001d1c:	4053      	eors	r3, r2
 8001d1e:	406c      	eors	r4, r5
 8001d20:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001d24:	ea4c 7cd1 	orr.w	ip, ip, r1, lsr #31
 8001d28:	9a1f      	ldr	r2, [sp, #124]	@ 0x7c
 8001d2a:	941b      	str	r4, [sp, #108]	@ 0x6c
 8001d2c:	0049      	lsls	r1, r1, #1
 8001d2e:	9c05      	ldr	r4, [sp, #20]
 8001d30:	ea41 71d3 	orr.w	r1, r1, r3, lsr #31
 8001d34:	9b1e      	ldr	r3, [sp, #120]	@ 0x78
 8001d36:	4062      	eors	r2, r4
 8001d38:	ea83 030b 	eor.w	r3, r3, fp
 8001d3c:	0196      	lsls	r6, r2, #6
 8001d3e:	ea46 6693 	orr.w	r6, r6, r3, lsr #26
 8001d42:	019b      	lsls	r3, r3, #6
 8001d44:	ea43 6392 	orr.w	r3, r3, r2, lsr #26
 8001d48:	9c06      	ldr	r4, [sp, #24]
 8001d4a:	9a24      	ldr	r2, [sp, #144]	@ 0x90
 8001d4c:	ea82 0504 	eor.w	r5, r2, r4
 8001d50:	9c07      	ldr	r4, [sp, #28]
 8001d52:	9a25      	ldr	r2, [sp, #148]	@ 0x94
 8001d54:	4062      	eors	r2, r4
 8001d56:	ea88 0e0e 	eor.w	lr, r8, lr
 8001d5a:	ea4f 6842 	mov.w	r8, r2, lsl #25
 8001d5e:	ea48 18d5 	orr.w	r8, r8, r5, lsr #7
 8001d62:	066d      	lsls	r5, r5, #25
 8001d64:	ea45 15d2 	orr.w	r5, r5, r2, lsr #7
 8001d68:	9c08      	ldr	r4, [sp, #32]
 8001d6a:	9a20      	ldr	r2, [sp, #128]	@ 0x80
 8001d6c:	f8cd e068 	str.w	lr, [sp, #104]	@ 0x68
 8001d70:	4054      	eors	r4, r2
 8001d72:	9a21      	ldr	r2, [sp, #132]	@ 0x84
 8001d74:	407a      	eors	r2, r7
 8001d76:	ea4f 2e02 	mov.w	lr, r2, lsl #8
 8001d7a:	ea4e 6e14 	orr.w	lr, lr, r4, lsr #24
 8001d7e:	0224      	lsls	r4, r4, #8
 8001d80:	ea44 6412 	orr.w	r4, r4, r2, lsr #24
 8001d84:	9f01      	ldr	r7, [sp, #4]
 8001d86:	9a26      	ldr	r2, [sp, #152]	@ 0x98
 8001d88:	407a      	eors	r2, r7
 8001d8a:	9f27      	ldr	r7, [sp, #156]	@ 0x9c
 8001d8c:	ea87 0909 	eor.w	r9, r7, r9
 8001d90:	ea4f 4789 	mov.w	r7, r9, lsl #18
 8001d94:	ea47 3792 	orr.w	r7, r7, r2, lsr #14
 8001d98:	ea25 0a03 	bic.w	sl, r5, r3
 8001d9c:	0492      	lsls	r2, r2, #18
 8001d9e:	ea42 3299 	orr.w	r2, r2, r9, lsr #14
 8001da2:	ea8a 0a01 	eor.w	sl, sl, r1
 8001da6:	ea28 0906 	bic.w	r9, r8, r6
 8001daa:	ea89 090c 	eor.w	r9, r9, ip
 8001dae:	f8cd a078 	str.w	sl, [sp, #120]	@ 0x78
 8001db2:	ea24 0a05 	bic.w	sl, r4, r5
 8001db6:	f8cd 907c 	str.w	r9, [sp, #124]	@ 0x7c
 8001dba:	ea8a 0a03 	eor.w	sl, sl, r3
 8001dbe:	ea2e 0908 	bic.w	r9, lr, r8
 8001dc2:	ea23 0301 	bic.w	r3, r3, r1
 8001dc6:	ea89 0906 	eor.w	r9, r9, r6
 8001dca:	4053      	eors	r3, r2
 8001dcc:	ea26 060c 	bic.w	r6, r6, ip
 8001dd0:	f8cd a080 	str.w	sl, [sp, #128]	@ 0x80
 8001dd4:	ea22 0a04 	bic.w	sl, r2, r4
 8001dd8:	ea8a 0505 	eor.w	r5, sl, r5
 8001ddc:	f8cd 9084 	str.w	r9, [sp, #132]	@ 0x84
 8001de0:	9326      	str	r3, [sp, #152]	@ 0x98
 8001de2:	ea27 090e 	bic.w	r9, r7, lr
 8001de6:	ea86 0307 	eor.w	r3, r6, r7
 8001dea:	9522      	str	r5, [sp, #136]	@ 0x88
 8001dec:	9327      	str	r3, [sp, #156]	@ 0x9c
 8001dee:	ea89 0508 	eor.w	r5, r9, r8
 8001df2:	9b2e      	ldr	r3, [sp, #184]	@ 0xb8
 8001df4:	9523      	str	r5, [sp, #140]	@ 0x8c
 8001df6:	ea21 0802 	bic.w	r8, r1, r2
 8001dfa:	9a08      	ldr	r2, [sp, #32]
 8001dfc:	ea83 0102 	eor.w	r1, r3, r2
 8001e00:	9a09      	ldr	r2, [sp, #36]	@ 0x24
 8001e02:	9b2f      	ldr	r3, [sp, #188]	@ 0xbc
 8001e04:	4053      	eors	r3, r2
 8001e06:	ea2c 0507 	bic.w	r5, ip, r7
 8001e0a:	ea4f 6cc3 	mov.w	ip, r3, lsl #27
 8001e0e:	ea4c 1c51 	orr.w	ip, ip, r1, lsr #5
 8001e12:	06c9      	lsls	r1, r1, #27
 8001e14:	ea41 1153 	orr.w	r1, r1, r3, lsr #5
 8001e18:	ea88 0404 	eor.w	r4, r8, r4
 8001e1c:	9b2a      	ldr	r3, [sp, #168]	@ 0xa8
 8001e1e:	9a01      	ldr	r2, [sp, #4]
 8001e20:	9424      	str	r4, [sp, #144]	@ 0x90
 8001e22:	ea85 040e 	eor.w	r4, r5, lr
 8001e26:	405a      	eors	r2, r3
 8001e28:	9425      	str	r4, [sp, #148]	@ 0x94
 8001e2a:	9b2b      	ldr	r3, [sp, #172]	@ 0xac
 8001e2c:	9c02      	ldr	r4, [sp, #8]
 8001e2e:	9f05      	ldr	r7, [sp, #20]
 8001e30:	4063      	eors	r3, r4
 8001e32:	0f16      	lsrs	r6, r2, #28
 8001e34:	ea46 1603 	orr.w	r6, r6, r3, lsl #4
 8001e38:	0f1b      	lsrs	r3, r3, #28
 8001e3a:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001e3e:	9c03      	ldr	r4, [sp, #12]
 8001e40:	9a30      	ldr	r2, [sp, #192]	@ 0xc0
 8001e42:	ea82 0504 	eor.w	r5, r2, r4
 8001e46:	9c04      	ldr	r4, [sp, #16]
 8001e48:	9a31      	ldr	r2, [sp, #196]	@ 0xc4
 8001e4a:	4062      	eors	r2, r4
 8001e4c:	ea4f 2882 	mov.w	r8, r2, lsl #10
 8001e50:	ea48 5895 	orr.w	r8, r8, r5, lsr #22
 8001e54:	02ad      	lsls	r5, r5, #10
 8001e56:	ea45 5592 	orr.w	r5, r5, r2, lsr #22
 8001e5a:	9a2c      	ldr	r2, [sp, #176]	@ 0xb0
 8001e5c:	ea82 040b 	eor.w	r4, r2, fp
 8001e60:	9a2d      	ldr	r2, [sp, #180]	@ 0xb4
 8001e62:	407a      	eors	r2, r7
 8001e64:	ea4f 3ec2 	mov.w	lr, r2, lsl #15
 8001e68:	ea4e 4e54 	orr.w	lr, lr, r4, lsr #17
 8001e6c:	03e4      	lsls	r4, r4, #15
 8001e6e:	ea44 4452 	orr.w	r4, r4, r2, lsr #17
 8001e72:	9f06      	ldr	r7, [sp, #24]
 8001e74:	9a28      	ldr	r2, [sp, #160]	@ 0xa0
 8001e76:	ea82 0907 	eor.w	r9, r2, r7
 8001e7a:	9a29      	ldr	r2, [sp, #164]	@ 0xa4
 8001e7c:	9f07      	ldr	r7, [sp, #28]
 8001e7e:	407a      	eors	r2, r7
 8001e80:	ea4f 2719 	mov.w	r7, r9, lsr #8
 8001e84:	ea47 6702 	orr.w	r7, r7, r2, lsl #24
 8001e88:	ea25 0a06 	bic.w	sl, r5, r6
 8001e8c:	0a12      	lsrs	r2, r2, #8
 8001e8e:	ea42 6209 	orr.w	r2, r2, r9, lsl #24
 8001e92:	ea8a 0a01 	eor.w	sl, sl, r1
 8001e96:	ea28 0903 	bic.w	r9, r8, r3
 8001e9a:	ea89 090c 	eor.w	r9, r9, ip
 8001e9e:	f8cd a0a0 	str.w	sl, [sp, #160]	@ 0xa0
 8001ea2:	ea24 0a05 	bic.w	sl, r4, r5
 8001ea6:	ea8a 0a06 	eor.w	sl, sl, r6
 8001eaa:	f8cd 90a4 	str.w	r9, [sp, #164]	@ 0xa4
 8001eae:	ea2e 0908 	bic.w	r9, lr, r8
 8001eb2:	ea89 0903 	eor.w	r9, r9, r3
 8001eb6:	f8cd a0a8 	str.w	sl, [sp, #168]	@ 0xa8
 8001eba:	ea27 0a04 	bic.w	sl, r7, r4
 8001ebe:	ea8a 0505 	eor.w	r5, sl, r5
 8001ec2:	f8cd 90ac 	str.w	r9, [sp, #172]	@ 0xac
 8001ec6:	ea23 030c 	bic.w	r3, r3, ip
 8001eca:	ea22 090e 	bic.w	r9, r2, lr
 8001ece:	4053      	eors	r3, r2
 8001ed0:	952c      	str	r5, [sp, #176]	@ 0xb0
 8001ed2:	ea26 0601 	bic.w	r6, r6, r1
 8001ed6:	ea89 0508 	eor.w	r5, r9, r8
 8001eda:	952d      	str	r5, [sp, #180]	@ 0xb4
 8001edc:	ea21 0807 	bic.w	r8, r1, r7
 8001ee0:	9331      	str	r3, [sp, #196]	@ 0xc4
 8001ee2:	ea86 0107 	eor.w	r1, r6, r7
 8001ee6:	9b3a      	ldr	r3, [sp, #232]	@ 0xe8
 8001ee8:	9130      	str	r1, [sp, #192]	@ 0xc0
 8001eea:	ea2c 0502 	bic.w	r5, ip, r2
 8001eee:	9905      	ldr	r1, [sp, #20]
 8001ef0:	9a3b      	ldr	r2, [sp, #236]	@ 0xec
 8001ef2:	9f02      	ldr	r7, [sp, #8]
 8001ef4:	f8dd 9010 	ldr.w	r9, [sp, #16]
 8001ef8:	ea83 030b 	eor.w	r3, r3, fp
 8001efc:	404a      	eors	r2, r1
 8001efe:	ea4f 0c93 	mov.w	ip, r3, lsr #2
 8001f02:	ea4c 7c82 	orr.w	ip, ip, r2, lsl #30
 8001f06:	0892      	lsrs	r2, r2, #2
 8001f08:	ea42 7283 	orr.w	r2, r2, r3, lsl #30
 8001f0c:	9906      	ldr	r1, [sp, #24]
 8001f0e:	9b36      	ldr	r3, [sp, #216]	@ 0xd8
 8001f10:	ea88 0404 	eor.w	r4, r8, r4
 8001f14:	942e      	str	r4, [sp, #184]	@ 0xb8
 8001f16:	ea85 040e 	eor.w	r4, r5, lr
 8001f1a:	404b      	eors	r3, r1
 8001f1c:	942f      	str	r4, [sp, #188]	@ 0xbc
 8001f1e:	9937      	ldr	r1, [sp, #220]	@ 0xdc
 8001f20:	9c07      	ldr	r4, [sp, #28]
 8001f22:	0a5d      	lsrs	r5, r3, #9
 8001f24:	ea81 0604 	eor.w	r6, r1, r4
 8001f28:	ea45 55c6 	orr.w	r5, r5, r6, lsl #23
 8001f2c:	0a76      	lsrs	r6, r6, #9
 8001f2e:	ea46 56c3 	orr.w	r6, r6, r3, lsl #23
 8001f32:	9908      	ldr	r1, [sp, #32]
 8001f34:	9b32      	ldr	r3, [sp, #200]	@ 0xc8
 8001f36:	9c09      	ldr	r4, [sp, #36]	@ 0x24
 8001f38:	404b      	eors	r3, r1
 8001f3a:	9933      	ldr	r1, [sp, #204]	@ 0xcc
 8001f3c:	ea4f 6853 	mov.w	r8, r3, lsr #25
 8001f40:	404c      	eors	r4, r1
 8001f42:	ea48 18c4 	orr.w	r8, r8, r4, lsl #7
 8001f46:	0e64      	lsrs	r4, r4, #25
 8001f48:	ea44 14c3 	orr.w	r4, r4, r3, lsl #7
 8001f4c:	9901      	ldr	r1, [sp, #4]
 8001f4e:	9b38      	ldr	r3, [sp, #224]	@ 0xe0
 8001f50:	404b      	eors	r3, r1
 8001f52:	9939      	ldr	r1, [sp, #228]	@ 0xe4
 8001f54:	ea4f 5ed3 	mov.w	lr, r3, lsr #23
 8001f58:	4079      	eors	r1, r7
 8001f5a:	ea4e 2e41 	orr.w	lr, lr, r1, lsl #9
 8001f5e:	0dc9      	lsrs	r1, r1, #23
 8001f60:	ea41 2143 	orr.w	r1, r1, r3, lsl #9
 8001f64:	9f03      	ldr	r7, [sp, #12]
 8001f66:	9b34      	ldr	r3, [sp, #208]	@ 0xd0
 8001f68:	407b      	eors	r3, r7
 8001f6a:	9f35      	ldr	r7, [sp, #212]	@ 0xd4
 8001f6c:	ea87 0909 	eor.w	r9, r7, r9
 8001f70:	ea4f 0789 	mov.w	r7, r9, lsl #2
 8001f74:	ea47 7793 	orr.w	r7, r7, r3, lsr #30
 8001f78:	009b      	lsls	r3, r3, #2
 8001f7a:	ea43 7399 	orr.w	r3, r3, r9, lsr #30
 8001f7e:	ea28 0a05 	bic.w	sl, r8, r5
 8001f82:	ea24 0906 	bic.w	r9, r4, r6
 8001f86:	ea89 0902 	eor.w	r9, r9, r2
 8001f8a:	ea8a 0a0c 	eor.w	sl, sl, ip
 8001f8e:	f8cd a0c8 	str.w	sl, [sp, #200]	@ 0xc8
 8001f92:	f8cd 90cc 	str.w	r9, [sp, #204]	@ 0xcc
 8001f96:	ea2e 0a08 	bic.w	sl, lr, r8
 8001f9a:	ea21 0904 	bic.w	r9, r1, r4
 8001f9e:	ea8a 0a05 	eor.w	sl, sl, r5
 8001fa2:	ea89 0906 	eor.w	r9, r9, r6
 8001fa6:	f8cd a0d0 	str.w	sl, [sp, #208]	@ 0xd0
 8001faa:	f8cd 90d4 	str.w	r9, [sp, #212]	@ 0xd4
 8001fae:	ea23 0a0e 	bic.w	sl, r3, lr
 8001fb2:	ea27 0901 	bic.w	r9, r7, r1
 8001fb6:	ea8a 0808 	eor.w	r8, sl, r8
 8001fba:	ea89 0404 	eor.w	r4, r9, r4
 8001fbe:	f8cd 80d8 	str.w	r8, [sp, #216]	@ 0xd8
 8001fc2:	9437      	str	r4, [sp, #220]	@ 0xdc
 8001fc4:	ea2c 0803 	bic.w	r8, ip, r3
 8001fc8:	ea22 0407 	bic.w	r4, r2, r7
 8001fcc:	ea25 050c 	bic.w	r5, r5, ip
 8001fd0:	406b      	eors	r3, r5
 8001fd2:	ea88 0e0e 	eor.w	lr, r8, lr
 8001fd6:	4061      	eors	r1, r4
 8001fd8:	f8cd e0e0 	str.w	lr, [sp, #224]	@ 0xe0
 8001fdc:	9139      	str	r1, [sp, #228]	@ 0xe4
 8001fde:	933a      	str	r3, [sp, #232]	@ 0xe8
 8001fe0:	9b00      	ldr	r3, [sp, #0]
 8001fe2:	3310      	adds	r3, #16
 8001fe4:	9300      	str	r3, [sp, #0]
 8001fe6:	ea26 0602 	bic.w	r6, r6, r2
 8001fea:	4b3d      	ldr	r3, [pc, #244]	@ (80020e0 <KeccakF1600_StatePermute+0xe04>)
 8001fec:	9a00      	ldr	r2, [sp, #0]
 8001fee:	4293      	cmp	r3, r2
 8001ff0:	ea86 0607 	eor.w	r6, r6, r7
 8001ff4:	f47f a9f0 	bne.w	80013d8 <KeccakF1600_StatePermute+0xfc>
 8001ff8:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 8001ffa:	6003      	str	r3, [r0, #0]
 8001ffc:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 8001ffe:	6043      	str	r3, [r0, #4]
 8002000:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
 8002002:	6083      	str	r3, [r0, #8]
 8002004:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
 8002006:	60c3      	str	r3, [r0, #12]
 8002008:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
 800200a:	6103      	str	r3, [r0, #16]
 800200c:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 800200e:	6143      	str	r3, [r0, #20]
 8002010:	9b10      	ldr	r3, [sp, #64]	@ 0x40
 8002012:	6183      	str	r3, [r0, #24]
 8002014:	9b11      	ldr	r3, [sp, #68]	@ 0x44
 8002016:	61c3      	str	r3, [r0, #28]
 8002018:	9b12      	ldr	r3, [sp, #72]	@ 0x48
 800201a:	6203      	str	r3, [r0, #32]
 800201c:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
 800201e:	6243      	str	r3, [r0, #36]	@ 0x24
 8002020:	9b14      	ldr	r3, [sp, #80]	@ 0x50
 8002022:	6283      	str	r3, [r0, #40]	@ 0x28
 8002024:	9b15      	ldr	r3, [sp, #84]	@ 0x54
 8002026:	62c3      	str	r3, [r0, #44]	@ 0x2c
 8002028:	9b16      	ldr	r3, [sp, #88]	@ 0x58
 800202a:	6303      	str	r3, [r0, #48]	@ 0x30
 800202c:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
 800202e:	6343      	str	r3, [r0, #52]	@ 0x34
 8002030:	9b18      	ldr	r3, [sp, #96]	@ 0x60
 8002032:	6383      	str	r3, [r0, #56]	@ 0x38
 8002034:	9b19      	ldr	r3, [sp, #100]	@ 0x64
 8002036:	63c3      	str	r3, [r0, #60]	@ 0x3c
 8002038:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
 800203a:	6403      	str	r3, [r0, #64]	@ 0x40
 800203c:	9b1b      	ldr	r3, [sp, #108]	@ 0x6c
 800203e:	6443      	str	r3, [r0, #68]	@ 0x44
 8002040:	9b1c      	ldr	r3, [sp, #112]	@ 0x70
 8002042:	6483      	str	r3, [r0, #72]	@ 0x48
 8002044:	9b1d      	ldr	r3, [sp, #116]	@ 0x74
 8002046:	64c3      	str	r3, [r0, #76]	@ 0x4c
 8002048:	9b1e      	ldr	r3, [sp, #120]	@ 0x78
 800204a:	6503      	str	r3, [r0, #80]	@ 0x50
 800204c:	9b1f      	ldr	r3, [sp, #124]	@ 0x7c
 800204e:	6543      	str	r3, [r0, #84]	@ 0x54
 8002050:	9b20      	ldr	r3, [sp, #128]	@ 0x80
 8002052:	6583      	str	r3, [r0, #88]	@ 0x58
 8002054:	9b21      	ldr	r3, [sp, #132]	@ 0x84
 8002056:	65c3      	str	r3, [r0, #92]	@ 0x5c
 8002058:	9b22      	ldr	r3, [sp, #136]	@ 0x88
 800205a:	6603      	str	r3, [r0, #96]	@ 0x60
 800205c:	9b23      	ldr	r3, [sp, #140]	@ 0x8c
 800205e:	6643      	str	r3, [r0, #100]	@ 0x64
 8002060:	9b24      	ldr	r3, [sp, #144]	@ 0x90
 8002062:	6683      	str	r3, [r0, #104]	@ 0x68
 8002064:	9b25      	ldr	r3, [sp, #148]	@ 0x94
 8002066:	66c3      	str	r3, [r0, #108]	@ 0x6c
 8002068:	9b26      	ldr	r3, [sp, #152]	@ 0x98
 800206a:	6703      	str	r3, [r0, #112]	@ 0x70
 800206c:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
 800206e:	6743      	str	r3, [r0, #116]	@ 0x74
 8002070:	9b28      	ldr	r3, [sp, #160]	@ 0xa0
 8002072:	6783      	str	r3, [r0, #120]	@ 0x78
 8002074:	9b29      	ldr	r3, [sp, #164]	@ 0xa4
 8002076:	67c3      	str	r3, [r0, #124]	@ 0x7c
 8002078:	9b2a      	ldr	r3, [sp, #168]	@ 0xa8
 800207a:	f8c0 3080 	str.w	r3, [r0, #128]	@ 0x80
 800207e:	9b2b      	ldr	r3, [sp, #172]	@ 0xac
 8002080:	f8c0 3084 	str.w	r3, [r0, #132]	@ 0x84
 8002084:	9b2c      	ldr	r3, [sp, #176]	@ 0xb0
 8002086:	f8c0 3088 	str.w	r3, [r0, #136]	@ 0x88
 800208a:	9b2d      	ldr	r3, [sp, #180]	@ 0xb4
 800208c:	f8c0 308c 	str.w	r3, [r0, #140]	@ 0x8c
 8002090:	9b2e      	ldr	r3, [sp, #184]	@ 0xb8
 8002092:	f8c0 3090 	str.w	r3, [r0, #144]	@ 0x90
 8002096:	9b2f      	ldr	r3, [sp, #188]	@ 0xbc
 8002098:	f8c0 3094 	str.w	r3, [r0, #148]	@ 0x94
 800209c:	9b30      	ldr	r3, [sp, #192]	@ 0xc0
 800209e:	f8c0 3098 	str.w	r3, [r0, #152]	@ 0x98
 80020a2:	9b31      	ldr	r3, [sp, #196]	@ 0xc4
 80020a4:	f8c0 309c 	str.w	r3, [r0, #156]	@ 0x9c
 80020a8:	9b32      	ldr	r3, [sp, #200]	@ 0xc8
 80020aa:	f8c0 30a0 	str.w	r3, [r0, #160]	@ 0xa0
 80020ae:	9b33      	ldr	r3, [sp, #204]	@ 0xcc
 80020b0:	f8c0 30a4 	str.w	r3, [r0, #164]	@ 0xa4
 80020b4:	9b34      	ldr	r3, [sp, #208]	@ 0xd0
 80020b6:	f8c0 30a8 	str.w	r3, [r0, #168]	@ 0xa8
 80020ba:	9b35      	ldr	r3, [sp, #212]	@ 0xd4
 80020bc:	f8c0 30ac 	str.w	r3, [r0, #172]	@ 0xac
 80020c0:	9b36      	ldr	r3, [sp, #216]	@ 0xd8
 80020c2:	f8c0 30b0 	str.w	r3, [r0, #176]	@ 0xb0
 80020c6:	9b37      	ldr	r3, [sp, #220]	@ 0xdc
 80020c8:	f8c0 30b4 	str.w	r3, [r0, #180]	@ 0xb4
 80020cc:	9b3a      	ldr	r3, [sp, #232]	@ 0xe8
 80020ce:	f8c0 e0b8 	str.w	lr, [r0, #184]	@ 0xb8
 80020d2:	f8c0 10bc 	str.w	r1, [r0, #188]	@ 0xbc
 80020d6:	e9c0 3630 	strd	r3, r6, [r0, #192]	@ 0xc0
 80020da:	b03d      	add	sp, #244	@ 0xf4
 80020dc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80020e0:	08003a30 	.word	0x08003a30

080020e4 <crypto_kem_keypair>:
 80020e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80020e8:	f5ad 4da2 	sub.w	sp, sp, #20736	@ 0x5100
 80020ec:	b088      	sub	sp, #32
 80020ee:	4604      	mov	r4, r0
 80020f0:	f501 5716 	add.w	r7, r1, #9600	@ 0x2580
 80020f4:	f501 469b 	add.w	r6, r1, #19840	@ 0x4d80
 80020f8:	f44f 5220 	mov.w	r2, #10240	@ 0x2800
 80020fc:	460d      	mov	r5, r1
 80020fe:	a848      	add	r0, sp, #288	@ 0x120
 8002100:	2100      	movs	r1, #0
 8002102:	f7fe fd6f 	bl	8000be4 <memset>
 8002106:	f50d 5024 	add.w	r0, sp, #10496	@ 0x2900
 800210a:	f44f 5220 	mov.w	r2, #10240	@ 0x2800
 800210e:	2100      	movs	r1, #0
 8002110:	3020      	adds	r0, #32
 8002112:	f7fe fd67 	bl	8000be4 <memset>
 8002116:	2130      	movs	r1, #48	@ 0x30
 8002118:	a808      	add	r0, sp, #32
 800211a:	f000 fadd 	bl	80026d8 <randombytes>
 800211e:	2310      	movs	r3, #16
 8002120:	4619      	mov	r1, r3
 8002122:	aa10      	add	r2, sp, #64	@ 0x40
 8002124:	4620      	mov	r0, r4
 8002126:	f7ff f822 	bl	800116e <shake128>
 800212a:	ab03      	add	r3, sp, #12
 800212c:	225f      	movs	r2, #95	@ 0x5f
 800212e:	701a      	strb	r2, [r3, #0]
 8002130:	ab08      	add	r3, sp, #32
 8002132:	3720      	adds	r7, #32
 8002134:	3620      	adds	r6, #32
 8002136:	f10d 0c30 	add.w	ip, sp, #48	@ 0x30
 800213a:	f1a3 0213 	sub.w	r2, r3, #19
 800213e:	f103 0e20 	add.w	lr, r3, #32
 8002142:	4663      	mov	r3, ip
 8002144:	cb03      	ldmia	r3!, {r0, r1}
 8002146:	4573      	cmp	r3, lr
 8002148:	6010      	str	r0, [r2, #0]
 800214a:	6051      	str	r1, [r2, #4]
 800214c:	469c      	mov	ip, r3
 800214e:	f102 0208 	add.w	r2, r2, #8
 8002152:	d1f6      	bne.n	8002142 <crypto_kem_keypair+0x5e>
 8002154:	a814      	add	r0, sp, #80	@ 0x50
 8002156:	f7fe fffc 	bl	8001152 <shake128_inc_init>
 800215a:	2211      	movs	r2, #17
 800215c:	a903      	add	r1, sp, #12
 800215e:	a814      	add	r0, sp, #80	@ 0x50
 8002160:	f7fe fff9 	bl	8001156 <shake128_inc_absorb>
 8002164:	a814      	add	r0, sp, #80	@ 0x50
 8002166:	f7fe fffb 	bl	8001160 <shake128_inc_finalize>
 800216a:	f50d 5024 	add.w	r0, sp, #10496	@ 0x2900
 800216e:	aa14      	add	r2, sp, #80	@ 0x50
 8002170:	f44f 5120 	mov.w	r1, #10240	@ 0x2800
 8002174:	3020      	adds	r0, #32
 8002176:	f7fe fff7 	bl	8001168 <shake128_inc_squeeze>
 800217a:	aa14      	add	r2, sp, #80	@ 0x50
 800217c:	f44f 5120 	mov.w	r1, #10240	@ 0x2800
 8002180:	a848      	add	r0, sp, #288	@ 0x120
 8002182:	f7fe fff1 	bl	8001168 <shake128_inc_squeeze>
 8002186:	f50d 5024 	add.w	r0, sp, #10496	@ 0x2900
 800218a:	f44f 51a0 	mov.w	r1, #5120	@ 0x1400
 800218e:	3020      	adds	r0, #32
 8002190:	f000 fbd2 	bl	8002938 <sample_n>
 8002194:	f44f 51a0 	mov.w	r1, #5120	@ 0x1400
 8002198:	a848      	add	r0, sp, #288	@ 0x120
 800219a:	f000 fbcd 	bl	8002938 <sample_n>
 800219e:	f50d 5124 	add.w	r1, sp, #10496	@ 0x2900
 80021a2:	4622      	mov	r2, r4
 80021a4:	3120      	adds	r1, #32
 80021a6:	a848      	add	r0, sp, #288	@ 0x120
 80021a8:	f000 f946 	bl	8002438 <mul_add_as_plus_e>
 80021ac:	230f      	movs	r3, #15
 80021ae:	9300      	str	r3, [sp, #0]
 80021b0:	aa48      	add	r2, sp, #288	@ 0x120
 80021b2:	f44f 53a0 	mov.w	r3, #5120	@ 0x1400
 80021b6:	f44f 5116 	mov.w	r1, #9600	@ 0x2580
 80021ba:	f104 0010 	add.w	r0, r4, #16
 80021be:	f000 fb0a 	bl	80027d6 <pack>
 80021c2:	f10d 0c20 	add.w	ip, sp, #32
 80021c6:	462a      	mov	r2, r5
 80021c8:	f10c 0e10 	add.w	lr, ip, #16
 80021cc:	4663      	mov	r3, ip
 80021ce:	cb03      	ldmia	r3!, {r0, r1}
 80021d0:	4573      	cmp	r3, lr
 80021d2:	6010      	str	r0, [r2, #0]
 80021d4:	6051      	str	r1, [r2, #4]
 80021d6:	469c      	mov	ip, r3
 80021d8:	f102 0208 	add.w	r2, r2, #8
 80021dc:	d1f6      	bne.n	80021cc <crypto_kem_keypair+0xe8>
 80021de:	f105 0010 	add.w	r0, r5, #16
 80021e2:	f242 5290 	movw	r2, #9616	@ 0x2590
 80021e6:	4621      	mov	r1, r4
 80021e8:	f7fe fd54 	bl	8000c94 <memcpy>
 80021ec:	f50d 5824 	add.w	r8, sp, #10496	@ 0x2900
 80021f0:	f108 0820 	add.w	r8, r8, #32
 80021f4:	f44f 55a0 	mov.w	r5, #5120	@ 0x1400
 80021f8:	f8b8 0000 	ldrh.w	r0, [r8]
 80021fc:	f000 fa7b 	bl	80026f6 <UINT16_TO_LE>
 8002200:	3d01      	subs	r5, #1
 8002202:	f828 0b02 	strh.w	r0, [r8], #2
 8002206:	d1f7      	bne.n	80021f8 <crypto_kem_keypair+0x114>
 8002208:	f50d 5124 	add.w	r1, sp, #10496	@ 0x2900
 800220c:	f44f 5220 	mov.w	r2, #10240	@ 0x2800
 8002210:	3120      	adds	r1, #32
 8002212:	4638      	mov	r0, r7
 8002214:	f7fe fd3e 	bl	8000c94 <memcpy>
 8002218:	f242 5390 	movw	r3, #9616	@ 0x2590
 800221c:	4622      	mov	r2, r4
 800221e:	4630      	mov	r0, r6
 8002220:	2110      	movs	r1, #16
 8002222:	f7fe ffa4 	bl	800116e <shake128>
 8002226:	f50d 5024 	add.w	r0, sp, #10496	@ 0x2900
 800222a:	f44f 5120 	mov.w	r1, #10240	@ 0x2800
 800222e:	3020      	adds	r0, #32
 8002230:	f000 fb79 	bl	8002926 <clear_bytes>
 8002234:	2120      	movs	r1, #32
 8002236:	eb0d 0001 	add.w	r0, sp, r1
 800223a:	f000 fb74 	bl	8002926 <clear_bytes>
 800223e:	a803      	add	r0, sp, #12
 8002240:	2111      	movs	r1, #17
 8002242:	f000 fb70 	bl	8002926 <clear_bytes>
 8002246:	4628      	mov	r0, r5
 8002248:	f50d 4da2 	add.w	sp, sp, #20736	@ 0x5100
 800224c:	b008      	add	sp, #32
 800224e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08002252 <crypto_kem_enc>:
 8002252:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002254:	f5ad 4d20 	sub.w	sp, sp, #40960	@ 0xa000
 8002258:	b091      	sub	sp, #68	@ 0x44
 800225a:	4615      	mov	r5, r2
 800225c:	4606      	mov	r6, r0
 800225e:	f44f 5220 	mov.w	r2, #10240	@ 0x2800
 8002262:	460f      	mov	r7, r1
 8002264:	f50d 5021 	add.w	r0, sp, #10304	@ 0x2840
 8002268:	2100      	movs	r1, #0
 800226a:	f7fe fcbb 	bl	8000be4 <memset>
 800226e:	2280      	movs	r2, #128	@ 0x80
 8002270:	2100      	movs	r1, #0
 8002272:	a81a      	add	r0, sp, #104	@ 0x68
 8002274:	f7fe fcb6 	bl	8000be4 <memset>
 8002278:	2280      	movs	r2, #128	@ 0x80
 800227a:	2100      	movs	r1, #0
 800227c:	a83a      	add	r0, sp, #232	@ 0xe8
 800227e:	f7fe fcb1 	bl	8000be4 <memset>
 8002282:	f50d 40a0 	add.w	r0, sp, #20480	@ 0x5000
 8002286:	f44f 5220 	mov.w	r2, #10240	@ 0x2800
 800228a:	2100      	movs	r1, #0
 800228c:	3040      	adds	r0, #64	@ 0x40
 800228e:	f7fe fca9 	bl	8000be4 <memset>
 8002292:	f50d 40f0 	add.w	r0, sp, #30720	@ 0x7800
 8002296:	f44f 5220 	mov.w	r2, #10240	@ 0x2800
 800229a:	2100      	movs	r1, #0
 800229c:	3040      	adds	r0, #64	@ 0x40
 800229e:	f7fe fca1 	bl	8000be4 <memset>
 80022a2:	f242 5390 	movw	r3, #9616	@ 0x2590
 80022a6:	462a      	mov	r2, r5
 80022a8:	2110      	movs	r1, #16
 80022aa:	a80a      	add	r0, sp, #40	@ 0x28
 80022ac:	f7fe ff5f 	bl	800116e <shake128>
 80022b0:	2110      	movs	r1, #16
 80022b2:	a80e      	add	r0, sp, #56	@ 0x38
 80022b4:	f000 fa10 	bl	80026d8 <randombytes>
 80022b8:	2320      	movs	r3, #32
 80022ba:	4619      	mov	r1, r3
 80022bc:	aa0a      	add	r2, sp, #40	@ 0x28
 80022be:	a812      	add	r0, sp, #72	@ 0x48
 80022c0:	f7fe ff55 	bl	800116e <shake128>
 80022c4:	2396      	movs	r3, #150	@ 0x96
 80022c6:	f88d 3014 	strb.w	r3, [sp, #20]
 80022ca:	ac12      	add	r4, sp, #72	@ 0x48
 80022cc:	f10d 0315 	add.w	r3, sp, #21
 80022d0:	f10d 0c58 	add.w	ip, sp, #88	@ 0x58
 80022d4:	4622      	mov	r2, r4
 80022d6:	ca03      	ldmia	r2!, {r0, r1}
 80022d8:	4562      	cmp	r2, ip
 80022da:	6018      	str	r0, [r3, #0]
 80022dc:	6059      	str	r1, [r3, #4]
 80022de:	4614      	mov	r4, r2
 80022e0:	f103 0308 	add.w	r3, r3, #8
 80022e4:	d1f6      	bne.n	80022d4 <crypto_kem_enc+0x82>
 80022e6:	a85a      	add	r0, sp, #360	@ 0x168
 80022e8:	f7fe ff33 	bl	8001152 <shake128_inc_init>
 80022ec:	a905      	add	r1, sp, #20
 80022ee:	2211      	movs	r2, #17
 80022f0:	a85a      	add	r0, sp, #360	@ 0x168
 80022f2:	f7fe ff30 	bl	8001156 <shake128_inc_absorb>
 80022f6:	a85a      	add	r0, sp, #360	@ 0x168
 80022f8:	f7fe ff32 	bl	8001160 <shake128_inc_finalize>
 80022fc:	f50d 40f0 	add.w	r0, sp, #30720	@ 0x7800
 8002300:	aa5a      	add	r2, sp, #360	@ 0x168
 8002302:	f44f 5120 	mov.w	r1, #10240	@ 0x2800
 8002306:	3040      	adds	r0, #64	@ 0x40
 8002308:	f7fe ff2e 	bl	8001168 <shake128_inc_squeeze>
 800230c:	f50d 40a0 	add.w	r0, sp, #20480	@ 0x5000
 8002310:	aa5a      	add	r2, sp, #360	@ 0x168
 8002312:	f44f 5120 	mov.w	r1, #10240	@ 0x2800
 8002316:	3040      	adds	r0, #64	@ 0x40
 8002318:	f7fe ff26 	bl	8001168 <shake128_inc_squeeze>
 800231c:	aa5a      	add	r2, sp, #360	@ 0x168
 800231e:	a81a      	add	r0, sp, #104	@ 0x68
 8002320:	2180      	movs	r1, #128	@ 0x80
 8002322:	f7fe ff21 	bl	8001168 <shake128_inc_squeeze>
 8002326:	f50d 40f0 	add.w	r0, sp, #30720	@ 0x7800
 800232a:	f44f 51a0 	mov.w	r1, #5120	@ 0x1400
 800232e:	3040      	adds	r0, #64	@ 0x40
 8002330:	f000 fb02 	bl	8002938 <sample_n>
 8002334:	f50d 40a0 	add.w	r0, sp, #20480	@ 0x5000
 8002338:	f44f 51a0 	mov.w	r1, #5120	@ 0x1400
 800233c:	3040      	adds	r0, #64	@ 0x40
 800233e:	f000 fafb 	bl	8002938 <sample_n>
 8002342:	f50d 41f0 	add.w	r1, sp, #30720	@ 0x7800
 8002346:	f50d 40a0 	add.w	r0, sp, #20480	@ 0x5000
 800234a:	462a      	mov	r2, r5
 800234c:	3140      	adds	r1, #64	@ 0x40
 800234e:	3040      	adds	r0, #64	@ 0x40
 8002350:	f000 f919 	bl	8002586 <mul_add_sa_plus_e>
 8002354:	240f      	movs	r4, #15
 8002356:	f50d 42a0 	add.w	r2, sp, #20480	@ 0x5000
 800235a:	9400      	str	r4, [sp, #0]
 800235c:	f44f 53a0 	mov.w	r3, #5120	@ 0x1400
 8002360:	3240      	adds	r2, #64	@ 0x40
 8002362:	4630      	mov	r0, r6
 8002364:	f44f 5116 	mov.w	r1, #9600	@ 0x2580
 8002368:	f000 fa35 	bl	80027d6 <pack>
 800236c:	a81a      	add	r0, sp, #104	@ 0x68
 800236e:	2140      	movs	r1, #64	@ 0x40
 8002370:	f000 fae2 	bl	8002938 <sample_n>
 8002374:	f44f 5316 	mov.w	r3, #9600	@ 0x2580
 8002378:	9400      	str	r4, [sp, #0]
 800237a:	f105 0210 	add.w	r2, r5, #16
 800237e:	f50d 5021 	add.w	r0, sp, #10304	@ 0x2840
 8002382:	f44f 51a0 	mov.w	r1, #5120	@ 0x1400
 8002386:	f000 fa7a 	bl	800287e <unpack>
 800238a:	f50d 42f0 	add.w	r2, sp, #30720	@ 0x7800
 800238e:	3240      	adds	r2, #64	@ 0x40
 8002390:	f50d 5121 	add.w	r1, sp, #10304	@ 0x2840
 8002394:	a81a      	add	r0, sp, #104	@ 0x68
 8002396:	ad0e      	add	r5, sp, #56	@ 0x38
 8002398:	f000 f9ae 	bl	80026f8 <mul_add_sb_plus_e>
 800239c:	4629      	mov	r1, r5
 800239e:	a83a      	add	r0, sp, #232	@ 0xe8
 80023a0:	f000 f9fd 	bl	800279e <key_encode>
 80023a4:	aa3a      	add	r2, sp, #232	@ 0xe8
 80023a6:	a91a      	add	r1, sp, #104	@ 0x68
 80023a8:	4610      	mov	r0, r2
 80023aa:	f000 f9e9 	bl	8002780 <add>
 80023ae:	9400      	str	r4, [sp, #0]
 80023b0:	aa3a      	add	r2, sp, #232	@ 0xe8
 80023b2:	f506 5016 	add.w	r0, r6, #9600	@ 0x2580
 80023b6:	2340      	movs	r3, #64	@ 0x40
 80023b8:	2178      	movs	r1, #120	@ 0x78
 80023ba:	f000 fa0c 	bl	80027d6 <pack>
 80023be:	f242 54f8 	movw	r4, #9720	@ 0x25f8
 80023c2:	ab8e      	add	r3, sp, #568	@ 0x238
 80023c4:	4622      	mov	r2, r4
 80023c6:	4631      	mov	r1, r6
 80023c8:	4618      	mov	r0, r3
 80023ca:	9303      	str	r3, [sp, #12]
 80023cc:	f7fe fc62 	bl	8000c94 <memcpy>
 80023d0:	9b03      	ldr	r3, [sp, #12]
 80023d2:	441c      	add	r4, r3
 80023d4:	ab16      	add	r3, sp, #88	@ 0x58
 80023d6:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
 80023d8:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
 80023dc:	9a03      	ldr	r2, [sp, #12]
 80023de:	f242 6308 	movw	r3, #9736	@ 0x2608
 80023e2:	4638      	mov	r0, r7
 80023e4:	2110      	movs	r1, #16
 80023e6:	f7fe fec2 	bl	800116e <shake128>
 80023ea:	a81a      	add	r0, sp, #104	@ 0x68
 80023ec:	2180      	movs	r1, #128	@ 0x80
 80023ee:	f000 fa9a 	bl	8002926 <clear_bytes>
 80023f2:	f50d 40f0 	add.w	r0, sp, #30720	@ 0x7800
 80023f6:	f44f 5120 	mov.w	r1, #10240	@ 0x2800
 80023fa:	3040      	adds	r0, #64	@ 0x40
 80023fc:	f000 fa93 	bl	8002926 <clear_bytes>
 8002400:	4628      	mov	r0, r5
 8002402:	2110      	movs	r1, #16
 8002404:	f000 fa8f 	bl	8002926 <clear_bytes>
 8002408:	a812      	add	r0, sp, #72	@ 0x48
 800240a:	2120      	movs	r1, #32
 800240c:	f000 fa8b 	bl	8002926 <clear_bytes>
 8002410:	4620      	mov	r0, r4
 8002412:	2110      	movs	r1, #16
 8002414:	f000 fa87 	bl	8002926 <clear_bytes>
 8002418:	a805      	add	r0, sp, #20
 800241a:	2111      	movs	r1, #17
 800241c:	f000 fa83 	bl	8002926 <clear_bytes>
 8002420:	2000      	movs	r0, #0
 8002422:	f50d 4d20 	add.w	sp, sp, #40960	@ 0xa000
 8002426:	b011      	add	sp, #68	@ 0x44
 8002428:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800242a <flip>:
 800242a:	b508      	push	{r3, lr}
 800242c:	f000 fc73 	bl	8002d16 <trigger_low>
 8002430:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002434:	f000 bc68 	b.w	8002d08 <trigger_high>

08002438 <mul_add_as_plus_e>:
 8002438:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800243c:	f5ad 5da1 	sub.w	sp, sp, #5152	@ 0x1420
 8002440:	b081      	sub	sp, #4
 8002442:	460f      	mov	r7, r1
 8002444:	9000      	str	r0, [sp, #0]
 8002446:	f10d 030e 	add.w	r3, sp, #14
 800244a:	f102 0110 	add.w	r1, r2, #16
 800244e:	f852 0b04 	ldr.w	r0, [r2], #4
 8002452:	f843 0b04 	str.w	r0, [r3], #4
 8002456:	428a      	cmp	r2, r1
 8002458:	d1f9      	bne.n	800244e <mul_add_as_plus_e+0x16>
 800245a:	2500      	movs	r5, #0
 800245c:	462c      	mov	r4, r5
 800245e:	4620      	mov	r0, r4
 8002460:	f000 f949 	bl	80026f6 <UINT16_TO_LE>
 8002464:	2312      	movs	r3, #18
 8002466:	aa03      	add	r2, sp, #12
 8002468:	f44f 61a0 	mov.w	r1, #1280	@ 0x500
 800246c:	f8ad 000c 	strh.w	r0, [sp, #12]
 8002470:	a808      	add	r0, sp, #32
 8002472:	f7fe fe7c 	bl	800116e <shake128>
 8002476:	1c60      	adds	r0, r4, #1
 8002478:	b280      	uxth	r0, r0
 800247a:	f000 f93c 	bl	80026f6 <UINT16_TO_LE>
 800247e:	2312      	movs	r3, #18
 8002480:	aa03      	add	r2, sp, #12
 8002482:	f44f 61a0 	mov.w	r1, #1280	@ 0x500
 8002486:	f8ad 000c 	strh.w	r0, [sp, #12]
 800248a:	f50d 60a4 	add.w	r0, sp, #1312	@ 0x520
 800248e:	f7fe fe6e 	bl	800116e <shake128>
 8002492:	1ca0      	adds	r0, r4, #2
 8002494:	b280      	uxth	r0, r0
 8002496:	f000 f92e 	bl	80026f6 <UINT16_TO_LE>
 800249a:	2312      	movs	r3, #18
 800249c:	aa03      	add	r2, sp, #12
 800249e:	f44f 61a0 	mov.w	r1, #1280	@ 0x500
 80024a2:	f8ad 000c 	strh.w	r0, [sp, #12]
 80024a6:	f50d 6022 	add.w	r0, sp, #2592	@ 0xa20
 80024aa:	f7fe fe60 	bl	800116e <shake128>
 80024ae:	1ce0      	adds	r0, r4, #3
 80024b0:	b280      	uxth	r0, r0
 80024b2:	f000 f920 	bl	80026f6 <UINT16_TO_LE>
 80024b6:	2312      	movs	r3, #18
 80024b8:	f8ad 000c 	strh.w	r0, [sp, #12]
 80024bc:	aa03      	add	r2, sp, #12
 80024be:	f44f 61a0 	mov.w	r1, #1280	@ 0x500
 80024c2:	f50d 6072 	add.w	r0, sp, #3872	@ 0xf20
 80024c6:	f7fe fe52 	bl	800116e <shake128>
 80024ca:	f10d 0820 	add.w	r8, sp, #32
 80024ce:	2600      	movs	r6, #0
 80024d0:	f8b8 0000 	ldrh.w	r0, [r8]
 80024d4:	f000 f90e 	bl	80026f4 <LE_TO_UINT16>
 80024d8:	3601      	adds	r6, #1
 80024da:	f5b6 6f20 	cmp.w	r6, #2560	@ 0xa00
 80024de:	f828 0b02 	strh.w	r0, [r8], #2
 80024e2:	d1f5      	bne.n	80024d0 <mul_add_as_plus_e+0x98>
 80024e4:	9b00      	ldr	r3, [sp, #0]
 80024e6:	463e      	mov	r6, r7
 80024e8:	eba3 0805 	sub.w	r8, r3, r5
 80024ec:	f507 5220 	add.w	r2, r7, #10240	@ 0x2800
 80024f0:	f1c5 0b0e 	rsb	fp, r5, #14
 80024f4:	f1c5 0a1e 	rsb	sl, r5, #30
 80024f8:	9201      	str	r2, [sp, #4]
 80024fa:	f7ff ff96 	bl	800242a <flip>
 80024fe:	a908      	add	r1, sp, #32
 8002500:	4630      	mov	r0, r6
 8002502:	f7fd fe85 	bl	8000210 <xs>
 8002506:	f8b8 3000 	ldrh.w	r3, [r8]
 800250a:	4403      	add	r3, r0
 800250c:	f828 3b02 	strh.w	r3, [r8], #2
 8002510:	f7ff ff8b 	bl	800242a <flip>
 8002514:	eb08 0905 	add.w	r9, r8, r5
 8002518:	f50d 61a4 	add.w	r1, sp, #1312	@ 0x520
 800251c:	4630      	mov	r0, r6
 800251e:	f7fd fe77 	bl	8000210 <xs>
 8002522:	f839 100b 	ldrh.w	r1, [r9, fp]
 8002526:	4408      	add	r0, r1
 8002528:	f829 000b 	strh.w	r0, [r9, fp]
 800252c:	f7ff ff7d 	bl	800242a <flip>
 8002530:	f50d 6122 	add.w	r1, sp, #2592	@ 0xa20
 8002534:	4630      	mov	r0, r6
 8002536:	f7fd fe6b 	bl	8000210 <xs>
 800253a:	f839 100a 	ldrh.w	r1, [r9, sl]
 800253e:	4408      	add	r0, r1
 8002540:	f829 000a 	strh.w	r0, [r9, sl]
 8002544:	f7ff ff71 	bl	800242a <flip>
 8002548:	f50d 6172 	add.w	r1, sp, #3872	@ 0xf20
 800254c:	4630      	mov	r0, r6
 800254e:	f7fd fe5f 	bl	8000210 <xs>
 8002552:	f1c5 012e 	rsb	r1, r5, #46	@ 0x2e
 8002556:	9a01      	ldr	r2, [sp, #4]
 8002558:	f839 c001 	ldrh.w	ip, [r9, r1]
 800255c:	f506 66a0 	add.w	r6, r6, #1280	@ 0x500
 8002560:	4460      	add	r0, ip
 8002562:	4296      	cmp	r6, r2
 8002564:	f829 0001 	strh.w	r0, [r9, r1]
 8002568:	d1c6      	bne.n	80024f8 <mul_add_as_plus_e+0xc0>
 800256a:	3404      	adds	r4, #4
 800256c:	b2a4      	uxth	r4, r4
 800256e:	f5b4 7f20 	cmp.w	r4, #640	@ 0x280
 8002572:	f1a5 0540 	sub.w	r5, r5, #64	@ 0x40
 8002576:	f47f af72 	bne.w	800245e <mul_add_as_plus_e+0x26>
 800257a:	2001      	movs	r0, #1
 800257c:	f50d 5da1 	add.w	sp, sp, #5152	@ 0x1420
 8002580:	b001      	add	sp, #4
 8002582:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08002586 <mul_add_sa_plus_e>:
 8002586:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002588:	f5ad 5d20 	sub.w	sp, sp, #10240	@ 0x2800
 800258c:	b087      	sub	sp, #28
 800258e:	4606      	mov	r6, r0
 8002590:	f10d 0306 	add.w	r3, sp, #6
 8002594:	f102 0010 	add.w	r0, r2, #16
 8002598:	f852 4b04 	ldr.w	r4, [r2], #4
 800259c:	f843 4b04 	str.w	r4, [r3], #4
 80025a0:	4282      	cmp	r2, r0
 80025a2:	d1f9      	bne.n	8002598 <mul_add_sa_plus_e+0x12>
 80025a4:	460f      	mov	r7, r1
 80025a6:	2400      	movs	r4, #0
 80025a8:	4620      	mov	r0, r4
 80025aa:	f000 f8a4 	bl	80026f6 <UINT16_TO_LE>
 80025ae:	2312      	movs	r3, #18
 80025b0:	aa01      	add	r2, sp, #4
 80025b2:	f44f 61a0 	mov.w	r1, #1280	@ 0x500
 80025b6:	f8ad 0004 	strh.w	r0, [sp, #4]
 80025ba:	a806      	add	r0, sp, #24
 80025bc:	f7fe fdd7 	bl	800116e <shake128>
 80025c0:	1c60      	adds	r0, r4, #1
 80025c2:	b280      	uxth	r0, r0
 80025c4:	f000 f897 	bl	80026f6 <UINT16_TO_LE>
 80025c8:	2312      	movs	r3, #18
 80025ca:	aa01      	add	r2, sp, #4
 80025cc:	f44f 61a0 	mov.w	r1, #1280	@ 0x500
 80025d0:	f8ad 0004 	strh.w	r0, [sp, #4]
 80025d4:	f50d 60a3 	add.w	r0, sp, #1304	@ 0x518
 80025d8:	f7fe fdc9 	bl	800116e <shake128>
 80025dc:	1ca0      	adds	r0, r4, #2
 80025de:	b280      	uxth	r0, r0
 80025e0:	f000 f889 	bl	80026f6 <UINT16_TO_LE>
 80025e4:	2312      	movs	r3, #18
 80025e6:	aa01      	add	r2, sp, #4
 80025e8:	f44f 61a0 	mov.w	r1, #1280	@ 0x500
 80025ec:	f8ad 0004 	strh.w	r0, [sp, #4]
 80025f0:	f60d 2018 	addw	r0, sp, #2584	@ 0xa18
 80025f4:	f7fe fdbb 	bl	800116e <shake128>
 80025f8:	1ce0      	adds	r0, r4, #3
 80025fa:	b280      	uxth	r0, r0
 80025fc:	f000 f87b 	bl	80026f6 <UINT16_TO_LE>
 8002600:	2312      	movs	r3, #18
 8002602:	aa01      	add	r2, sp, #4
 8002604:	f44f 61a0 	mov.w	r1, #1280	@ 0x500
 8002608:	f8ad 0004 	strh.w	r0, [sp, #4]
 800260c:	f60d 7018 	addw	r0, sp, #3864	@ 0xf18
 8002610:	f7fe fdad 	bl	800116e <shake128>
 8002614:	1d20      	adds	r0, r4, #4
 8002616:	b280      	uxth	r0, r0
 8002618:	f000 f86d 	bl	80026f6 <UINT16_TO_LE>
 800261c:	f8ad 0004 	strh.w	r0, [sp, #4]
 8002620:	f50d 50a0 	add.w	r0, sp, #5120	@ 0x1400
 8002624:	2312      	movs	r3, #18
 8002626:	aa01      	add	r2, sp, #4
 8002628:	f44f 61a0 	mov.w	r1, #1280	@ 0x500
 800262c:	3018      	adds	r0, #24
 800262e:	f7fe fd9e 	bl	800116e <shake128>
 8002632:	1d60      	adds	r0, r4, #5
 8002634:	b280      	uxth	r0, r0
 8002636:	f000 f85e 	bl	80026f6 <UINT16_TO_LE>
 800263a:	f8ad 0004 	strh.w	r0, [sp, #4]
 800263e:	f50d 50c8 	add.w	r0, sp, #6400	@ 0x1900
 8002642:	2312      	movs	r3, #18
 8002644:	aa01      	add	r2, sp, #4
 8002646:	f44f 61a0 	mov.w	r1, #1280	@ 0x500
 800264a:	3018      	adds	r0, #24
 800264c:	f7fe fd8f 	bl	800116e <shake128>
 8002650:	1da0      	adds	r0, r4, #6
 8002652:	b280      	uxth	r0, r0
 8002654:	f000 f84f 	bl	80026f6 <UINT16_TO_LE>
 8002658:	f8ad 0004 	strh.w	r0, [sp, #4]
 800265c:	f50d 50f0 	add.w	r0, sp, #7680	@ 0x1e00
 8002660:	2312      	movs	r3, #18
 8002662:	aa01      	add	r2, sp, #4
 8002664:	f44f 61a0 	mov.w	r1, #1280	@ 0x500
 8002668:	3018      	adds	r0, #24
 800266a:	f7fe fd80 	bl	800116e <shake128>
 800266e:	1de0      	adds	r0, r4, #7
 8002670:	b280      	uxth	r0, r0
 8002672:	f000 f840 	bl	80026f6 <UINT16_TO_LE>
 8002676:	f8ad 0004 	strh.w	r0, [sp, #4]
 800267a:	f50d 500c 	add.w	r0, sp, #8960	@ 0x2300
 800267e:	2312      	movs	r3, #18
 8002680:	aa01      	add	r2, sp, #4
 8002682:	f44f 61a0 	mov.w	r1, #1280	@ 0x500
 8002686:	3018      	adds	r0, #24
 8002688:	f7fe fd71 	bl	800116e <shake128>
 800268c:	2500      	movs	r5, #0
 800268e:	ab06      	add	r3, sp, #24
 8002690:	195a      	adds	r2, r3, r5
 8002692:	1970      	adds	r0, r6, r5
 8002694:	4639      	mov	r1, r7
 8002696:	3502      	adds	r5, #2
 8002698:	f7fe f9de 	bl	8000a58 <sa>
 800269c:	f5b5 6fa0 	cmp.w	r5, #1280	@ 0x500
 80026a0:	d1f5      	bne.n	800268e <mul_add_sa_plus_e+0x108>
 80026a2:	3408      	adds	r4, #8
 80026a4:	b2a4      	uxth	r4, r4
 80026a6:	f5b4 7f20 	cmp.w	r4, #640	@ 0x280
 80026aa:	f107 0710 	add.w	r7, r7, #16
 80026ae:	f47f af7b 	bne.w	80025a8 <mul_add_sa_plus_e+0x22>
 80026b2:	2001      	movs	r0, #1
 80026b4:	f50d 5d20 	add.w	sp, sp, #10240	@ 0x2800
 80026b8:	b007      	add	sp, #28
 80026ba:	bdf0      	pop	{r4, r5, r6, r7, pc}

080026bc <set_rbytes>:
 80026bc:	b140      	cbz	r0, 80026d0 <set_rbytes+0x14>
 80026be:	4b05      	ldr	r3, [pc, #20]	@ (80026d4 <set_rbytes+0x18>)
 80026c0:	f100 0230 	add.w	r2, r0, #48	@ 0x30
 80026c4:	f850 1b04 	ldr.w	r1, [r0], #4
 80026c8:	f843 1b04 	str.w	r1, [r3], #4
 80026cc:	4290      	cmp	r0, r2
 80026ce:	d1f9      	bne.n	80026c4 <set_rbytes+0x8>
 80026d0:	4770      	bx	lr
 80026d2:	bf00      	nop
 80026d4:	200000ec 	.word	0x200000ec

080026d8 <randombytes>:
 80026d8:	2930      	cmp	r1, #48	@ 0x30
 80026da:	b508      	push	{r3, lr}
 80026dc:	460a      	mov	r2, r1
 80026de:	d804      	bhi.n	80026ea <randombytes+0x12>
 80026e0:	4903      	ldr	r1, [pc, #12]	@ (80026f0 <randombytes+0x18>)
 80026e2:	f7fe fad7 	bl	8000c94 <memcpy>
 80026e6:	2000      	movs	r0, #0
 80026e8:	bd08      	pop	{r3, pc}
 80026ea:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 80026ee:	e7fb      	b.n	80026e8 <randombytes+0x10>
 80026f0:	200000ec 	.word	0x200000ec

080026f4 <LE_TO_UINT16>:
 80026f4:	4770      	bx	lr

080026f6 <UINT16_TO_LE>:
 80026f6:	4770      	bx	lr

080026f8 <mul_add_sb_plus_e>:
 80026f8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80026fc:	4606      	mov	r6, r0
 80026fe:	4615      	mov	r5, r2
 8002700:	460c      	mov	r4, r1
 8002702:	f501 5720 	add.w	r7, r1, #10240	@ 0x2800
 8002706:	f100 0a02 	add.w	sl, r0, #2
 800270a:	f100 0904 	add.w	r9, r0, #4
 800270e:	f100 0806 	add.w	r8, r0, #6
 8002712:	4622      	mov	r2, r4
 8002714:	4629      	mov	r1, r5
 8002716:	4630      	mov	r0, r6
 8002718:	f7fe f902 	bl	8000920 <sb>
 800271c:	1ca2      	adds	r2, r4, #2
 800271e:	4629      	mov	r1, r5
 8002720:	4650      	mov	r0, sl
 8002722:	f7fe f8fd 	bl	8000920 <sb>
 8002726:	1d22      	adds	r2, r4, #4
 8002728:	4629      	mov	r1, r5
 800272a:	4648      	mov	r0, r9
 800272c:	f7fe f8f8 	bl	8000920 <sb>
 8002730:	1da2      	adds	r2, r4, #6
 8002732:	4629      	mov	r1, r5
 8002734:	4640      	mov	r0, r8
 8002736:	f7fe f8f3 	bl	8000920 <sb>
 800273a:	f104 0208 	add.w	r2, r4, #8
 800273e:	4629      	mov	r1, r5
 8002740:	f106 0008 	add.w	r0, r6, #8
 8002744:	f7fe f8ec 	bl	8000920 <sb>
 8002748:	f104 020a 	add.w	r2, r4, #10
 800274c:	4629      	mov	r1, r5
 800274e:	f106 000a 	add.w	r0, r6, #10
 8002752:	f7fe f8e5 	bl	8000920 <sb>
 8002756:	f104 020c 	add.w	r2, r4, #12
 800275a:	4629      	mov	r1, r5
 800275c:	f106 000c 	add.w	r0, r6, #12
 8002760:	f7fe f8de 	bl	8000920 <sb>
 8002764:	f104 020e 	add.w	r2, r4, #14
 8002768:	4629      	mov	r1, r5
 800276a:	f106 000e 	add.w	r0, r6, #14
 800276e:	3480      	adds	r4, #128	@ 0x80
 8002770:	f7fe f8d6 	bl	8000920 <sb>
 8002774:	42bc      	cmp	r4, r7
 8002776:	f105 0510 	add.w	r5, r5, #16
 800277a:	d1ca      	bne.n	8002712 <mul_add_sb_plus_e+0x1a>
 800277c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08002780 <add>:
 8002780:	b530      	push	{r4, r5, lr}
 8002782:	2300      	movs	r3, #0
 8002784:	f831 4013 	ldrh.w	r4, [r1, r3, lsl #1]
 8002788:	f832 5013 	ldrh.w	r5, [r2, r3, lsl #1]
 800278c:	442c      	add	r4, r5
 800278e:	f3c4 040e 	ubfx	r4, r4, #0, #15
 8002792:	f820 4013 	strh.w	r4, [r0, r3, lsl #1]
 8002796:	3301      	adds	r3, #1
 8002798:	2b40      	cmp	r3, #64	@ 0x40
 800279a:	d1f3      	bne.n	8002784 <add+0x4>
 800279c:	bd30      	pop	{r4, r5, pc}

0800279e <key_encode>:
 800279e:	b5f0      	push	{r4, r5, r6, r7, lr}
 80027a0:	2200      	movs	r2, #0
 80027a2:	1c4f      	adds	r7, r1, #1
 80027a4:	f817 4012 	ldrb.w	r4, [r7, r2, lsl #1]
 80027a8:	f811 3012 	ldrb.w	r3, [r1, r2, lsl #1]
 80027ac:	f100 0610 	add.w	r6, r0, #16
 80027b0:	ea43 2304 	orr.w	r3, r3, r4, lsl #8
 80027b4:	2400      	movs	r4, #0
 80027b6:	035d      	lsls	r5, r3, #13
 80027b8:	f405 45c0 	and.w	r5, r5, #24576	@ 0x6000
 80027bc:	f820 5b02 	strh.w	r5, [r0], #2
 80027c0:	089b      	lsrs	r3, r3, #2
 80027c2:	42b0      	cmp	r0, r6
 80027c4:	ea43 7384 	orr.w	r3, r3, r4, lsl #30
 80027c8:	ea4f 0494 	mov.w	r4, r4, lsr #2
 80027cc:	d1f3      	bne.n	80027b6 <key_encode+0x18>
 80027ce:	3201      	adds	r2, #1
 80027d0:	2a08      	cmp	r2, #8
 80027d2:	d1e7      	bne.n	80027a4 <key_encode+0x6>
 80027d4:	bdf0      	pop	{r4, r5, r6, r7, pc}

080027d6 <pack>:
 80027d6:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80027da:	b085      	sub	sp, #20
 80027dc:	4688      	mov	r8, r1
 80027de:	9202      	str	r2, [sp, #8]
 80027e0:	4699      	mov	r9, r3
 80027e2:	460a      	mov	r2, r1
 80027e4:	f89d 3038 	ldrb.w	r3, [sp, #56]	@ 0x38
 80027e8:	9303      	str	r3, [sp, #12]
 80027ea:	2100      	movs	r1, #0
 80027ec:	9001      	str	r0, [sp, #4]
 80027ee:	f7fe f9f9 	bl	8000be4 <memset>
 80027f2:	2000      	movs	r0, #0
 80027f4:	4603      	mov	r3, r0
 80027f6:	4607      	mov	r7, r0
 80027f8:	4602      	mov	r2, r0
 80027fa:	f04f 0a01 	mov.w	sl, #1
 80027fe:	4542      	cmp	r2, r8
 8002800:	d203      	bcs.n	800280a <pack+0x34>
 8002802:	454f      	cmp	r7, r9
 8002804:	d304      	bcc.n	8002810 <pack+0x3a>
 8002806:	d100      	bne.n	800280a <pack+0x34>
 8002808:	b910      	cbnz	r0, 8002810 <pack+0x3a>
 800280a:	b005      	add	sp, #20
 800280c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002810:	9901      	ldr	r1, [sp, #4]
 8002812:	2400      	movs	r4, #0
 8002814:	eb01 0e02 	add.w	lr, r1, r2
 8002818:	f1c4 0608 	rsb	r6, r4, #8
 800281c:	42b0      	cmp	r0, r6
 800281e:	4684      	mov	ip, r0
 8002820:	bfa8      	it	ge
 8002822:	46b4      	movge	ip, r6
 8002824:	fa0a f50c 	lsl.w	r5, sl, ip
 8002828:	eba0 010c 	sub.w	r1, r0, ip
 800282c:	3d01      	subs	r5, #1
 800282e:	fa43 fb01 	asr.w	fp, r3, r1
 8002832:	b2ad      	uxth	r5, r5
 8002834:	ea0b 0b05 	and.w	fp, fp, r5
 8002838:	fa5f fb8b 	uxtb.w	fp, fp
 800283c:	eba6 060c 	sub.w	r6, r6, ip
 8002840:	fa0b f606 	lsl.w	r6, fp, r6
 8002844:	f89e b000 	ldrb.w	fp, [lr]
 8002848:	4608      	mov	r0, r1
 800284a:	b2c9      	uxtb	r1, r1
 800284c:	445e      	add	r6, fp
 800284e:	fa54 f48c 	uxtab	r4, r4, ip
 8002852:	408d      	lsls	r5, r1
 8002854:	f010 00ff 	ands.w	r0, r0, #255	@ 0xff
 8002858:	f88e 6000 	strb.w	r6, [lr]
 800285c:	b2e4      	uxtb	r4, r4
 800285e:	ea23 0305 	bic.w	r3, r3, r5
 8002862:	d106      	bne.n	8002872 <pack+0x9c>
 8002864:	45b9      	cmp	r9, r7
 8002866:	d906      	bls.n	8002876 <pack+0xa0>
 8002868:	9b02      	ldr	r3, [sp, #8]
 800286a:	9803      	ldr	r0, [sp, #12]
 800286c:	f833 3017 	ldrh.w	r3, [r3, r7, lsl #1]
 8002870:	3701      	adds	r7, #1
 8002872:	2c07      	cmp	r4, #7
 8002874:	d9d0      	bls.n	8002818 <pack+0x42>
 8002876:	2c08      	cmp	r4, #8
 8002878:	bf08      	it	eq
 800287a:	3201      	addeq	r2, #1
 800287c:	e7bf      	b.n	80027fe <pack+0x28>

0800287e <unpack>:
 800287e:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002882:	460f      	mov	r7, r1
 8002884:	9201      	str	r2, [sp, #4]
 8002886:	004a      	lsls	r2, r1, #1
 8002888:	2100      	movs	r1, #0
 800288a:	f89d 9030 	ldrb.w	r9, [sp, #48]	@ 0x30
 800288e:	9000      	str	r0, [sp, #0]
 8002890:	4698      	mov	r8, r3
 8002892:	f7fe f9a7 	bl	8000be4 <memset>
 8002896:	2200      	movs	r2, #0
 8002898:	4611      	mov	r1, r2
 800289a:	4616      	mov	r6, r2
 800289c:	4694      	mov	ip, r2
 800289e:	45bc      	cmp	ip, r7
 80028a0:	d23e      	bcs.n	8002920 <unpack+0xa2>
 80028a2:	4546      	cmp	r6, r8
 80028a4:	d239      	bcs.n	800291a <unpack+0x9c>
 80028a6:	9b00      	ldr	r3, [sp, #0]
 80028a8:	2500      	movs	r5, #0
 80028aa:	eb03 0a4c 	add.w	sl, r3, ip, lsl #1
 80028ae:	e02d      	b.n	800290c <unpack+0x8e>
 80028b0:	eba9 0405 	sub.w	r4, r9, r5
 80028b4:	42a2      	cmp	r2, r4
 80028b6:	4613      	mov	r3, r2
 80028b8:	f04f 0001 	mov.w	r0, #1
 80028bc:	bfa8      	it	ge
 80028be:	4623      	movge	r3, r4
 80028c0:	4098      	lsls	r0, r3
 80028c2:	eba2 0e03 	sub.w	lr, r2, r3
 80028c6:	3801      	subs	r0, #1
 80028c8:	fa41 fb0e 	asr.w	fp, r1, lr
 80028cc:	b280      	uxth	r0, r0
 80028ce:	ea0b 0b00 	and.w	fp, fp, r0
 80028d2:	fa5f fb8b 	uxtb.w	fp, fp
 80028d6:	1ae4      	subs	r4, r4, r3
 80028d8:	fa0b f404 	lsl.w	r4, fp, r4
 80028dc:	f8ba b000 	ldrh.w	fp, [sl]
 80028e0:	4672      	mov	r2, lr
 80028e2:	fa5f fe8e 	uxtb.w	lr, lr
 80028e6:	445c      	add	r4, fp
 80028e8:	fa55 f583 	uxtab	r5, r5, r3
 80028ec:	fa00 f00e 	lsl.w	r0, r0, lr
 80028f0:	f012 02ff 	ands.w	r2, r2, #255	@ 0xff
 80028f4:	f8aa 4000 	strh.w	r4, [sl]
 80028f8:	b2ed      	uxtb	r5, r5
 80028fa:	ea21 0100 	bic.w	r1, r1, r0
 80028fe:	d105      	bne.n	800290c <unpack+0x8e>
 8002900:	4546      	cmp	r6, r8
 8002902:	d205      	bcs.n	8002910 <unpack+0x92>
 8002904:	9b01      	ldr	r3, [sp, #4]
 8002906:	2208      	movs	r2, #8
 8002908:	5d99      	ldrb	r1, [r3, r6]
 800290a:	3601      	adds	r6, #1
 800290c:	454d      	cmp	r5, r9
 800290e:	d3cf      	bcc.n	80028b0 <unpack+0x32>
 8002910:	454d      	cmp	r5, r9
 8002912:	bf08      	it	eq
 8002914:	f10c 0c01 	addeq.w	ip, ip, #1
 8002918:	e7c1      	b.n	800289e <unpack+0x20>
 800291a:	d101      	bne.n	8002920 <unpack+0xa2>
 800291c:	2a00      	cmp	r2, #0
 800291e:	d1c2      	bne.n	80028a6 <unpack+0x28>
 8002920:	b003      	add	sp, #12
 8002922:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08002926 <clear_bytes>:
 8002926:	2300      	movs	r3, #0
 8002928:	461a      	mov	r2, r3
 800292a:	428b      	cmp	r3, r1
 800292c:	d100      	bne.n	8002930 <clear_bytes+0xa>
 800292e:	4770      	bx	lr
 8002930:	54c2      	strb	r2, [r0, r3]
 8002932:	3301      	adds	r3, #1
 8002934:	e7f9      	b.n	800292a <clear_bytes+0x4>
	...

08002938 <sample_n>:
 8002938:	b5f0      	push	{r4, r5, r6, r7, lr}
 800293a:	eb00 0141 	add.w	r1, r0, r1, lsl #1
 800293e:	4288      	cmp	r0, r1
 8002940:	d100      	bne.n	8002944 <sample_n+0xc>
 8002942:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002944:	8802      	ldrh	r2, [r0, #0]
 8002946:	4e0b      	ldr	r6, [pc, #44]	@ (8002974 <sample_n+0x3c>)
 8002948:	2300      	movs	r3, #0
 800294a:	0857      	lsrs	r7, r2, #1
 800294c:	461d      	mov	r5, r3
 800294e:	f002 0201 	and.w	r2, r2, #1
 8002952:	f836 4b02 	ldrh.w	r4, [r6], #2
 8002956:	1be4      	subs	r4, r4, r7
 8002958:	f3c4 34c0 	ubfx	r4, r4, #15, #1
 800295c:	3501      	adds	r5, #1
 800295e:	4423      	add	r3, r4
 8002960:	2d0c      	cmp	r5, #12
 8002962:	b29b      	uxth	r3, r3
 8002964:	d1f5      	bne.n	8002952 <sample_n+0x1a>
 8002966:	4254      	negs	r4, r2
 8002968:	4063      	eors	r3, r4
 800296a:	441a      	add	r2, r3
 800296c:	f820 2b02 	strh.w	r2, [r0], #2
 8002970:	e7e5      	b.n	800293e <sample_n+0x6>
 8002972:	bf00      	nop
 8002974:	08003a30 	.word	0x08003a30

08002978 <check_version>:
 8002978:	2001      	movs	r0, #1
 800297a:	4770      	bx	lr

0800297c <simpleserial_put.part.0>:
 800297c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800297e:	4614      	mov	r4, r2
 8002980:	460e      	mov	r6, r1
 8002982:	f000 f9e9 	bl	8002d58 <putch>
 8002986:	4f0c      	ldr	r7, [pc, #48]	@ (80029b8 <simpleserial_put.part.0+0x3c>)
 8002988:	1e65      	subs	r5, r4, #1
 800298a:	f1c4 0401 	rsb	r4, r4, #1
 800298e:	1963      	adds	r3, r4, r5
 8002990:	429e      	cmp	r6, r3
 8002992:	dc04      	bgt.n	800299e <simpleserial_put.part.0+0x22>
 8002994:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8002998:	200a      	movs	r0, #10
 800299a:	f000 b9dd 	b.w	8002d58 <putch>
 800299e:	f815 3f01 	ldrb.w	r3, [r5, #1]!
 80029a2:	091b      	lsrs	r3, r3, #4
 80029a4:	5cf8      	ldrb	r0, [r7, r3]
 80029a6:	f000 f9d7 	bl	8002d58 <putch>
 80029aa:	782b      	ldrb	r3, [r5, #0]
 80029ac:	f003 030f 	and.w	r3, r3, #15
 80029b0:	5cf8      	ldrb	r0, [r7, r3]
 80029b2:	f000 f9d1 	bl	8002d58 <putch>
 80029b6:	e7ea      	b.n	800298e <simpleserial_put.part.0+0x12>
 80029b8:	08003a4a 	.word	0x08003a4a

080029bc <ss_num_commands>:
 80029bc:	b507      	push	{r0, r1, r2, lr}
 80029be:	4b07      	ldr	r3, [pc, #28]	@ (80029dc <ss_num_commands+0x20>)
 80029c0:	f10d 0207 	add.w	r2, sp, #7
 80029c4:	681b      	ldr	r3, [r3, #0]
 80029c6:	f88d 3007 	strb.w	r3, [sp, #7]
 80029ca:	2101      	movs	r1, #1
 80029cc:	2072      	movs	r0, #114	@ 0x72
 80029ce:	f7ff ffd5 	bl	800297c <simpleserial_put.part.0>
 80029d2:	2000      	movs	r0, #0
 80029d4:	b003      	add	sp, #12
 80029d6:	f85d fb04 	ldr.w	pc, [sp], #4
 80029da:	bf00      	nop
 80029dc:	2000011c 	.word	0x2000011c

080029e0 <ss_get_commands>:
 80029e0:	b570      	push	{r4, r5, r6, lr}
 80029e2:	4c12      	ldr	r4, [pc, #72]	@ (8002a2c <ss_get_commands+0x4c>)
 80029e4:	6821      	ldr	r1, [r4, #0]
 80029e6:	b098      	sub	sp, #96	@ 0x60
 80029e8:	b2cd      	uxtb	r5, r1
 80029ea:	2000      	movs	r0, #0
 80029ec:	b2c3      	uxtb	r3, r0
 80029ee:	42ab      	cmp	r3, r5
 80029f0:	f100 0001 	add.w	r0, r0, #1
 80029f4:	db09      	blt.n	8002a0a <ss_get_commands+0x2a>
 80029f6:	eb01 0141 	add.w	r1, r1, r1, lsl #1
 80029fa:	466a      	mov	r2, sp
 80029fc:	b2c9      	uxtb	r1, r1
 80029fe:	2072      	movs	r0, #114	@ 0x72
 8002a00:	f7ff ffbc 	bl	800297c <simpleserial_put.part.0>
 8002a04:	2000      	movs	r0, #0
 8002a06:	b018      	add	sp, #96	@ 0x60
 8002a08:	bd70      	pop	{r4, r5, r6, pc}
 8002a0a:	eb03 0243 	add.w	r2, r3, r3, lsl #1
 8002a0e:	3260      	adds	r2, #96	@ 0x60
 8002a10:	eb04 1303 	add.w	r3, r4, r3, lsl #4
 8002a14:	446a      	add	r2, sp
 8002a16:	791e      	ldrb	r6, [r3, #4]
 8002a18:	f802 6c60 	strb.w	r6, [r2, #-96]
 8002a1c:	689e      	ldr	r6, [r3, #8]
 8002a1e:	7c1b      	ldrb	r3, [r3, #16]
 8002a20:	f802 6c5f 	strb.w	r6, [r2, #-95]
 8002a24:	f802 3c5e 	strb.w	r3, [r2, #-94]
 8002a28:	e7e0      	b.n	80029ec <ss_get_commands+0xc>
 8002a2a:	bf00      	nop
 8002a2c:	2000011c 	.word	0x2000011c

08002a30 <hex_decode>:
 8002a30:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002a32:	2500      	movs	r5, #0
 8002a34:	1c4f      	adds	r7, r1, #1
 8002a36:	4285      	cmp	r5, r0
 8002a38:	db01      	blt.n	8002a3e <hex_decode+0xe>
 8002a3a:	2000      	movs	r0, #0
 8002a3c:	e021      	b.n	8002a82 <hex_decode+0x52>
 8002a3e:	f817 4015 	ldrb.w	r4, [r7, r5, lsl #1]
 8002a42:	f811 3015 	ldrb.w	r3, [r1, r5, lsl #1]
 8002a46:	f1a4 0630 	sub.w	r6, r4, #48	@ 0x30
 8002a4a:	b2f6      	uxtb	r6, r6
 8002a4c:	2e09      	cmp	r6, #9
 8002a4e:	d80c      	bhi.n	8002a6a <hex_decode+0x3a>
 8002a50:	7016      	strb	r6, [r2, #0]
 8002a52:	f1a3 0430 	sub.w	r4, r3, #48	@ 0x30
 8002a56:	b2e4      	uxtb	r4, r4
 8002a58:	2c09      	cmp	r4, #9
 8002a5a:	d815      	bhi.n	8002a88 <hex_decode+0x58>
 8002a5c:	7813      	ldrb	r3, [r2, #0]
 8002a5e:	ea43 1304 	orr.w	r3, r3, r4, lsl #4
 8002a62:	7013      	strb	r3, [r2, #0]
 8002a64:	3501      	adds	r5, #1
 8002a66:	3201      	adds	r2, #1
 8002a68:	e7e5      	b.n	8002a36 <hex_decode+0x6>
 8002a6a:	f1a4 0641 	sub.w	r6, r4, #65	@ 0x41
 8002a6e:	2e05      	cmp	r6, #5
 8002a70:	d802      	bhi.n	8002a78 <hex_decode+0x48>
 8002a72:	3c37      	subs	r4, #55	@ 0x37
 8002a74:	7014      	strb	r4, [r2, #0]
 8002a76:	e7ec      	b.n	8002a52 <hex_decode+0x22>
 8002a78:	f1a4 0661 	sub.w	r6, r4, #97	@ 0x61
 8002a7c:	2e05      	cmp	r6, #5
 8002a7e:	d901      	bls.n	8002a84 <hex_decode+0x54>
 8002a80:	2001      	movs	r0, #1
 8002a82:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002a84:	3c57      	subs	r4, #87	@ 0x57
 8002a86:	e7f5      	b.n	8002a74 <hex_decode+0x44>
 8002a88:	f1a3 0441 	sub.w	r4, r3, #65	@ 0x41
 8002a8c:	2c05      	cmp	r4, #5
 8002a8e:	d802      	bhi.n	8002a96 <hex_decode+0x66>
 8002a90:	f1a3 0437 	sub.w	r4, r3, #55	@ 0x37
 8002a94:	e7e2      	b.n	8002a5c <hex_decode+0x2c>
 8002a96:	f1a3 0461 	sub.w	r4, r3, #97	@ 0x61
 8002a9a:	2c05      	cmp	r4, #5
 8002a9c:	d8f0      	bhi.n	8002a80 <hex_decode+0x50>
 8002a9e:	7814      	ldrb	r4, [r2, #0]
 8002aa0:	3b57      	subs	r3, #87	@ 0x57
 8002aa2:	ea44 1303 	orr.w	r3, r4, r3, lsl #4
 8002aa6:	e7dc      	b.n	8002a62 <hex_decode+0x32>

08002aa8 <simpleserial_addcmd_flags>:
 8002aa8:	b570      	push	{r4, r5, r6, lr}
 8002aaa:	4e09      	ldr	r6, [pc, #36]	@ (8002ad0 <simpleserial_addcmd_flags+0x28>)
 8002aac:	6834      	ldr	r4, [r6, #0]
 8002aae:	2c1f      	cmp	r4, #31
 8002ab0:	dc0b      	bgt.n	8002aca <simpleserial_addcmd_flags+0x22>
 8002ab2:	293f      	cmp	r1, #63	@ 0x3f
 8002ab4:	d809      	bhi.n	8002aca <simpleserial_addcmd_flags+0x22>
 8002ab6:	eb06 1504 	add.w	r5, r6, r4, lsl #4
 8002aba:	e9c5 1202 	strd	r1, r2, [r5, #8]
 8002abe:	3401      	adds	r4, #1
 8002ac0:	7128      	strb	r0, [r5, #4]
 8002ac2:	742b      	strb	r3, [r5, #16]
 8002ac4:	6034      	str	r4, [r6, #0]
 8002ac6:	2000      	movs	r0, #0
 8002ac8:	bd70      	pop	{r4, r5, r6, pc}
 8002aca:	2001      	movs	r0, #1
 8002acc:	e7fc      	b.n	8002ac8 <simpleserial_addcmd_flags+0x20>
 8002ace:	bf00      	nop
 8002ad0:	2000011c 	.word	0x2000011c

08002ad4 <simpleserial_addcmd>:
 8002ad4:	2300      	movs	r3, #0
 8002ad6:	f7ff bfe7 	b.w	8002aa8 <simpleserial_addcmd_flags>
	...

08002adc <simpleserial_init>:
 8002adc:	b508      	push	{r3, lr}
 8002ade:	4a07      	ldr	r2, [pc, #28]	@ (8002afc <simpleserial_init+0x20>)
 8002ae0:	2100      	movs	r1, #0
 8002ae2:	2076      	movs	r0, #118	@ 0x76
 8002ae4:	f7ff fff6 	bl	8002ad4 <simpleserial_addcmd>
 8002ae8:	4a05      	ldr	r2, [pc, #20]	@ (8002b00 <simpleserial_init+0x24>)
 8002aea:	2077      	movs	r0, #119	@ 0x77
 8002aec:	f7ff fff2 	bl	8002ad4 <simpleserial_addcmd>
 8002af0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002af4:	4a03      	ldr	r2, [pc, #12]	@ (8002b04 <simpleserial_init+0x28>)
 8002af6:	2079      	movs	r0, #121	@ 0x79
 8002af8:	f7ff bfec 	b.w	8002ad4 <simpleserial_addcmd>
 8002afc:	08002979 	.word	0x08002979
 8002b00:	080029e1 	.word	0x080029e1
 8002b04:	080029bd 	.word	0x080029bd

08002b08 <simpleserial_get>:
 8002b08:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002b0c:	4d2c      	ldr	r5, [pc, #176]	@ (8002bc0 <simpleserial_get+0xb8>)
 8002b0e:	b0b2      	sub	sp, #200	@ 0xc8
 8002b10:	f000 f908 	bl	8002d24 <getch>
 8002b14:	462a      	mov	r2, r5
 8002b16:	2300      	movs	r3, #0
 8002b18:	f852 1b04 	ldr.w	r1, [r2], #4
 8002b1c:	4299      	cmp	r1, r3
 8002b1e:	dc3f      	bgt.n	8002ba0 <simpleserial_get+0x98>
 8002b20:	d03b      	beq.n	8002b9a <simpleserial_get+0x92>
 8002b22:	eb05 1403 	add.w	r4, r5, r3, lsl #4
 8002b26:	011e      	lsls	r6, r3, #4
 8002b28:	7c23      	ldrb	r3, [r4, #16]
 8002b2a:	07db      	lsls	r3, r3, #31
 8002b2c:	d513      	bpl.n	8002b56 <simpleserial_get+0x4e>
 8002b2e:	2300      	movs	r3, #0
 8002b30:	f88d 3008 	strb.w	r3, [sp, #8]
 8002b34:	f000 f8f6 	bl	8002d24 <getch>
 8002b38:	f88d 0048 	strb.w	r0, [sp, #72]	@ 0x48
 8002b3c:	f000 f8f2 	bl	8002d24 <getch>
 8002b40:	aa02      	add	r2, sp, #8
 8002b42:	f88d 0049 	strb.w	r0, [sp, #73]	@ 0x49
 8002b46:	a912      	add	r1, sp, #72	@ 0x48
 8002b48:	2001      	movs	r0, #1
 8002b4a:	f7ff ff71 	bl	8002a30 <hex_decode>
 8002b4e:	bb20      	cbnz	r0, 8002b9a <simpleserial_get+0x92>
 8002b50:	f89d 3008 	ldrb.w	r3, [sp, #8]
 8002b54:	60a3      	str	r3, [r4, #8]
 8002b56:	af12      	add	r7, sp, #72	@ 0x48
 8002b58:	2400      	movs	r4, #0
 8002b5a:	eb05 0806 	add.w	r8, r5, r6
 8002b5e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8002b62:	ebb4 0f43 	cmp.w	r4, r3, lsl #1
 8002b66:	d321      	bcc.n	8002bac <simpleserial_get+0xa4>
 8002b68:	f000 f8dc 	bl	8002d24 <getch>
 8002b6c:	280a      	cmp	r0, #10
 8002b6e:	d001      	beq.n	8002b74 <simpleserial_get+0x6c>
 8002b70:	280d      	cmp	r0, #13
 8002b72:	d112      	bne.n	8002b9a <simpleserial_get+0x92>
 8002b74:	4435      	add	r5, r6
 8002b76:	aa02      	add	r2, sp, #8
 8002b78:	68ac      	ldr	r4, [r5, #8]
 8002b7a:	a912      	add	r1, sp, #72	@ 0x48
 8002b7c:	4620      	mov	r0, r4
 8002b7e:	f7ff ff57 	bl	8002a30 <hex_decode>
 8002b82:	b950      	cbnz	r0, 8002b9a <simpleserial_get+0x92>
 8002b84:	b2e1      	uxtb	r1, r4
 8002b86:	68eb      	ldr	r3, [r5, #12]
 8002b88:	a802      	add	r0, sp, #8
 8002b8a:	4798      	blx	r3
 8002b8c:	aa01      	add	r2, sp, #4
 8002b8e:	f88d 0004 	strb.w	r0, [sp, #4]
 8002b92:	2101      	movs	r1, #1
 8002b94:	207a      	movs	r0, #122	@ 0x7a
 8002b96:	f7ff fef1 	bl	800297c <simpleserial_put.part.0>
 8002b9a:	b032      	add	sp, #200	@ 0xc8
 8002b9c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002ba0:	011c      	lsls	r4, r3, #4
 8002ba2:	5ca4      	ldrb	r4, [r4, r2]
 8002ba4:	4284      	cmp	r4, r0
 8002ba6:	d0bc      	beq.n	8002b22 <simpleserial_get+0x1a>
 8002ba8:	3301      	adds	r3, #1
 8002baa:	e7b7      	b.n	8002b1c <simpleserial_get+0x14>
 8002bac:	f000 f8ba 	bl	8002d24 <getch>
 8002bb0:	280a      	cmp	r0, #10
 8002bb2:	d0f2      	beq.n	8002b9a <simpleserial_get+0x92>
 8002bb4:	280d      	cmp	r0, #13
 8002bb6:	d0f0      	beq.n	8002b9a <simpleserial_get+0x92>
 8002bb8:	f807 0b01 	strb.w	r0, [r7], #1
 8002bbc:	3401      	adds	r4, #1
 8002bbe:	e7ce      	b.n	8002b5e <simpleserial_get+0x56>
 8002bc0:	2000011c 	.word	0x2000011c

08002bc4 <platform_init>:
 8002bc4:	b570      	push	{r4, r5, r6, lr}
 8002bc6:	b096      	sub	sp, #88	@ 0x58
 8002bc8:	2400      	movs	r4, #0
 8002bca:	2603      	movs	r6, #3
 8002bcc:	f44f 23a0 	mov.w	r3, #327680	@ 0x50000
 8002bd0:	a80c      	add	r0, sp, #48	@ 0x30
 8002bd2:	2501      	movs	r5, #1
 8002bd4:	e9cd 630c 	strd	r6, r3, [sp, #48]	@ 0x30
 8002bd8:	9410      	str	r4, [sp, #64]	@ 0x40
 8002bda:	9414      	str	r4, [sp, #80]	@ 0x50
 8002bdc:	f000 f8d4 	bl	8002d88 <HAL_RCC_OscConfig>
 8002be0:	230f      	movs	r3, #15
 8002be2:	4621      	mov	r1, r4
 8002be4:	a802      	add	r0, sp, #8
 8002be6:	e9cd 3502 	strd	r3, r5, [sp, #8]
 8002bea:	e9cd 4404 	strd	r4, r4, [sp, #16]
 8002bee:	9406      	str	r4, [sp, #24]
 8002bf0:	f000 fb10 	bl	8003214 <HAL_RCC_ClockConfig>
 8002bf4:	4b11      	ldr	r3, [pc, #68]	@ (8002c3c <platform_init+0x78>)
 8002bf6:	695a      	ldr	r2, [r3, #20]
 8002bf8:	f442 2200 	orr.w	r2, r2, #524288	@ 0x80000
 8002bfc:	615a      	str	r2, [r3, #20]
 8002bfe:	695b      	ldr	r3, [r3, #20]
 8002c00:	e9cd 4609 	strd	r4, r6, [sp, #36]	@ 0x24
 8002c04:	f403 2300 	and.w	r3, r3, #524288	@ 0x80000
 8002c08:	4c0d      	ldr	r4, [pc, #52]	@ (8002c40 <platform_init+0x7c>)
 8002c0a:	9301      	str	r3, [sp, #4]
 8002c0c:	9b01      	ldr	r3, [sp, #4]
 8002c0e:	a907      	add	r1, sp, #28
 8002c10:	f44f 43c0 	mov.w	r3, #24576	@ 0x6000
 8002c14:	4620      	mov	r0, r4
 8002c16:	e9cd 3507 	strd	r3, r5, [sp, #28]
 8002c1a:	f000 fb9b 	bl	8003354 <HAL_GPIO_Init>
 8002c1e:	462a      	mov	r2, r5
 8002c20:	4620      	mov	r0, r4
 8002c22:	f44f 5100 	mov.w	r1, #8192	@ 0x2000
 8002c26:	f000 fc53 	bl	80034d0 <HAL_GPIO_WritePin>
 8002c2a:	462a      	mov	r2, r5
 8002c2c:	f44f 4180 	mov.w	r1, #16384	@ 0x4000
 8002c30:	4620      	mov	r0, r4
 8002c32:	f000 fc4d 	bl	80034d0 <HAL_GPIO_WritePin>
 8002c36:	b016      	add	sp, #88	@ 0x58
 8002c38:	bd70      	pop	{r4, r5, r6, pc}
 8002c3a:	bf00      	nop
 8002c3c:	40021000 	.word	0x40021000
 8002c40:	48000800 	.word	0x48000800

08002c44 <init_uart>:
 8002c44:	b510      	push	{r4, lr}
 8002c46:	f44f 62c0 	mov.w	r2, #1536	@ 0x600
 8002c4a:	b088      	sub	sp, #32
 8002c4c:	2302      	movs	r3, #2
 8002c4e:	e9cd 2303 	strd	r2, r3, [sp, #12]
 8002c52:	2101      	movs	r1, #1
 8002c54:	2303      	movs	r3, #3
 8002c56:	e9cd 1305 	strd	r1, r3, [sp, #20]
 8002c5a:	4c16      	ldr	r4, [pc, #88]	@ (8002cb4 <init_uart+0x70>)
 8002c5c:	2307      	movs	r3, #7
 8002c5e:	9307      	str	r3, [sp, #28]
 8002c60:	6963      	ldr	r3, [r4, #20]
 8002c62:	f443 3300 	orr.w	r3, r3, #131072	@ 0x20000
 8002c66:	6163      	str	r3, [r4, #20]
 8002c68:	6963      	ldr	r3, [r4, #20]
 8002c6a:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8002c6e:	9301      	str	r3, [sp, #4]
 8002c70:	a903      	add	r1, sp, #12
 8002c72:	f04f 4090 	mov.w	r0, #1207959552	@ 0x48000000
 8002c76:	9b01      	ldr	r3, [sp, #4]
 8002c78:	f000 fb6c 	bl	8003354 <HAL_GPIO_Init>
 8002c7c:	480e      	ldr	r0, [pc, #56]	@ (8002cb8 <init_uart+0x74>)
 8002c7e:	f8df c03c 	ldr.w	ip, [pc, #60]	@ 8002cbc <init_uart+0x78>
 8002c82:	f44f 4316 	mov.w	r3, #38400	@ 0x9600
 8002c86:	e9c0 c300 	strd	ip, r3, [r0]
 8002c8a:	2300      	movs	r3, #0
 8002c8c:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8002c90:	6103      	str	r3, [r0, #16]
 8002c92:	6183      	str	r3, [r0, #24]
 8002c94:	230c      	movs	r3, #12
 8002c96:	6143      	str	r3, [r0, #20]
 8002c98:	69a3      	ldr	r3, [r4, #24]
 8002c9a:	f443 4380 	orr.w	r3, r3, #16384	@ 0x4000
 8002c9e:	61a3      	str	r3, [r4, #24]
 8002ca0:	69a3      	ldr	r3, [r4, #24]
 8002ca2:	f403 4380 	and.w	r3, r3, #16384	@ 0x4000
 8002ca6:	9302      	str	r3, [sp, #8]
 8002ca8:	9b02      	ldr	r3, [sp, #8]
 8002caa:	f000 fd27 	bl	80036fc <HAL_UART_Init>
 8002cae:	b008      	add	sp, #32
 8002cb0:	bd10      	pop	{r4, pc}
 8002cb2:	bf00      	nop
 8002cb4:	40021000 	.word	0x40021000
 8002cb8:	20000320 	.word	0x20000320
 8002cbc:	40013800 	.word	0x40013800

08002cc0 <trigger_setup>:
 8002cc0:	4b10      	ldr	r3, [pc, #64]	@ (8002d04 <trigger_setup+0x44>)
 8002cc2:	b530      	push	{r4, r5, lr}
 8002cc4:	695a      	ldr	r2, [r3, #20]
 8002cc6:	f442 3200 	orr.w	r2, r2, #131072	@ 0x20000
 8002cca:	615a      	str	r2, [r3, #20]
 8002ccc:	695b      	ldr	r3, [r3, #20]
 8002cce:	b087      	sub	sp, #28
 8002cd0:	f403 3300 	and.w	r3, r3, #131072	@ 0x20000
 8002cd4:	9300      	str	r3, [sp, #0]
 8002cd6:	9b00      	ldr	r3, [sp, #0]
 8002cd8:	f44f 5480 	mov.w	r4, #4096	@ 0x1000
 8002cdc:	2301      	movs	r3, #1
 8002cde:	e9cd 4301 	strd	r4, r3, [sp, #4]
 8002ce2:	2500      	movs	r5, #0
 8002ce4:	2303      	movs	r3, #3
 8002ce6:	a901      	add	r1, sp, #4
 8002ce8:	f04f 4090 	mov.w	r0, #1207959552	@ 0x48000000
 8002cec:	e9cd 5303 	strd	r5, r3, [sp, #12]
 8002cf0:	f000 fb30 	bl	8003354 <HAL_GPIO_Init>
 8002cf4:	462a      	mov	r2, r5
 8002cf6:	4621      	mov	r1, r4
 8002cf8:	f04f 4090 	mov.w	r0, #1207959552	@ 0x48000000
 8002cfc:	f000 fbe8 	bl	80034d0 <HAL_GPIO_WritePin>
 8002d00:	b007      	add	sp, #28
 8002d02:	bd30      	pop	{r4, r5, pc}
 8002d04:	40021000 	.word	0x40021000

08002d08 <trigger_high>:
 8002d08:	2201      	movs	r2, #1
 8002d0a:	f44f 5180 	mov.w	r1, #4096	@ 0x1000
 8002d0e:	f04f 4090 	mov.w	r0, #1207959552	@ 0x48000000
 8002d12:	f000 bbdd 	b.w	80034d0 <HAL_GPIO_WritePin>

08002d16 <trigger_low>:
 8002d16:	2200      	movs	r2, #0
 8002d18:	f44f 5180 	mov.w	r1, #4096	@ 0x1000
 8002d1c:	f04f 4090 	mov.w	r0, #1207959552	@ 0x48000000
 8002d20:	f000 bbd6 	b.w	80034d0 <HAL_GPIO_WritePin>

08002d24 <getch>:
 8002d24:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8002d26:	4d0a      	ldr	r5, [pc, #40]	@ (8002d50 <getch+0x2c>)
 8002d28:	4c0a      	ldr	r4, [pc, #40]	@ (8002d54 <getch+0x30>)
 8002d2a:	f241 3388 	movw	r3, #5000	@ 0x1388
 8002d2e:	2201      	movs	r2, #1
 8002d30:	f10d 0107 	add.w	r1, sp, #7
 8002d34:	4628      	mov	r0, r5
 8002d36:	f000 fd61 	bl	80037fc <HAL_UART_Receive>
 8002d3a:	b918      	cbnz	r0, 8002d44 <getch+0x20>
 8002d3c:	f89d 0007 	ldrb.w	r0, [sp, #7]
 8002d40:	b003      	add	sp, #12
 8002d42:	bd30      	pop	{r4, r5, pc}
 8002d44:	6a23      	ldr	r3, [r4, #32]
 8002d46:	f043 0308 	orr.w	r3, r3, #8
 8002d4a:	6223      	str	r3, [r4, #32]
 8002d4c:	e7ed      	b.n	8002d2a <getch+0x6>
 8002d4e:	bf00      	nop
 8002d50:	20000320 	.word	0x20000320
 8002d54:	40013800 	.word	0x40013800

08002d58 <putch>:
 8002d58:	b507      	push	{r0, r1, r2, lr}
 8002d5a:	f241 3388 	movw	r3, #5000	@ 0x1388
 8002d5e:	f88d 0007 	strb.w	r0, [sp, #7]
 8002d62:	2201      	movs	r2, #1
 8002d64:	f10d 0107 	add.w	r1, sp, #7
 8002d68:	4802      	ldr	r0, [pc, #8]	@ (8002d74 <putch+0x1c>)
 8002d6a:	f000 fcf1 	bl	8003750 <HAL_UART_Transmit>
 8002d6e:	b003      	add	sp, #12
 8002d70:	f85d fb04 	ldr.w	pc, [sp], #4
 8002d74:	20000320 	.word	0x20000320

08002d78 <HAL_GetTick>:
 8002d78:	4b02      	ldr	r3, [pc, #8]	@ (8002d84 <HAL_GetTick+0xc>)
 8002d7a:	6818      	ldr	r0, [r3, #0]
 8002d7c:	1c42      	adds	r2, r0, #1
 8002d7e:	601a      	str	r2, [r3, #0]
 8002d80:	4770      	bx	lr
 8002d82:	bf00      	nop
 8002d84:	20000390 	.word	0x20000390

08002d88 <HAL_RCC_OscConfig>:
 8002d88:	6803      	ldr	r3, [r0, #0]
 8002d8a:	e92d 43f7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, lr}
 8002d8e:	07d9      	lsls	r1, r3, #31
 8002d90:	4604      	mov	r4, r0
 8002d92:	d410      	bmi.n	8002db6 <HAL_RCC_OscConfig+0x2e>
 8002d94:	6823      	ldr	r3, [r4, #0]
 8002d96:	079a      	lsls	r2, r3, #30
 8002d98:	d47e      	bmi.n	8002e98 <HAL_RCC_OscConfig+0x110>
 8002d9a:	6823      	ldr	r3, [r4, #0]
 8002d9c:	071e      	lsls	r6, r3, #28
 8002d9e:	f100 80e7 	bmi.w	8002f70 <HAL_RCC_OscConfig+0x1e8>
 8002da2:	6823      	ldr	r3, [r4, #0]
 8002da4:	075d      	lsls	r5, r3, #29
 8002da6:	f100 812a 	bmi.w	8002ffe <HAL_RCC_OscConfig+0x276>
 8002daa:	69e2      	ldr	r2, [r4, #28]
 8002dac:	2a00      	cmp	r2, #0
 8002dae:	f040 81ad 	bne.w	800310c <HAL_RCC_OscConfig+0x384>
 8002db2:	2000      	movs	r0, #0
 8002db4:	e01f      	b.n	8002df6 <HAL_RCC_OscConfig+0x6e>
 8002db6:	49ae      	ldr	r1, [pc, #696]	@ (8003070 <HAL_RCC_OscConfig+0x2e8>)
 8002db8:	684b      	ldr	r3, [r1, #4]
 8002dba:	f003 030c 	and.w	r3, r3, #12
 8002dbe:	2b04      	cmp	r3, #4
 8002dc0:	d007      	beq.n	8002dd2 <HAL_RCC_OscConfig+0x4a>
 8002dc2:	684b      	ldr	r3, [r1, #4]
 8002dc4:	f003 030c 	and.w	r3, r3, #12
 8002dc8:	2b08      	cmp	r3, #8
 8002dca:	d117      	bne.n	8002dfc <HAL_RCC_OscConfig+0x74>
 8002dcc:	684b      	ldr	r3, [r1, #4]
 8002dce:	03db      	lsls	r3, r3, #15
 8002dd0:	d514      	bpl.n	8002dfc <HAL_RCC_OscConfig+0x74>
 8002dd2:	f44f 3300 	mov.w	r3, #131072	@ 0x20000
 8002dd6:	fa93 f2a3 	rbit	r2, r3
 8002dda:	6809      	ldr	r1, [r1, #0]
 8002ddc:	fa93 f3a3 	rbit	r3, r3
 8002de0:	2201      	movs	r2, #1
 8002de2:	fab3 f383 	clz	r3, r3
 8002de6:	fa02 f303 	lsl.w	r3, r2, r3
 8002dea:	420b      	tst	r3, r1
 8002dec:	d0d2      	beq.n	8002d94 <HAL_RCC_OscConfig+0xc>
 8002dee:	6863      	ldr	r3, [r4, #4]
 8002df0:	2b00      	cmp	r3, #0
 8002df2:	d1cf      	bne.n	8002d94 <HAL_RCC_OscConfig+0xc>
 8002df4:	2001      	movs	r0, #1
 8002df6:	b003      	add	sp, #12
 8002df8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002dfc:	6862      	ldr	r2, [r4, #4]
 8002dfe:	f5b2 3f80 	cmp.w	r2, #65536	@ 0x10000
 8002e02:	d122      	bne.n	8002e4a <HAL_RCC_OscConfig+0xc2>
 8002e04:	680b      	ldr	r3, [r1, #0]
 8002e06:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8002e0a:	600b      	str	r3, [r1, #0]
 8002e0c:	6acb      	ldr	r3, [r1, #44]	@ 0x2c
 8002e0e:	68a0      	ldr	r0, [r4, #8]
 8002e10:	f023 030f 	bic.w	r3, r3, #15
 8002e14:	4303      	orrs	r3, r0
 8002e16:	62cb      	str	r3, [r1, #44]	@ 0x2c
 8002e18:	b33a      	cbz	r2, 8002e6a <HAL_RCC_OscConfig+0xe2>
 8002e1a:	f7ff ffad 	bl	8002d78 <HAL_GetTick>
 8002e1e:	f44f 3600 	mov.w	r6, #131072	@ 0x20000
 8002e22:	4605      	mov	r5, r0
 8002e24:	2701      	movs	r7, #1
 8002e26:	fa96 f3a6 	rbit	r3, r6
 8002e2a:	680a      	ldr	r2, [r1, #0]
 8002e2c:	fa96 f3a6 	rbit	r3, r6
 8002e30:	fab3 f383 	clz	r3, r3
 8002e34:	fa07 f303 	lsl.w	r3, r7, r3
 8002e38:	4213      	tst	r3, r2
 8002e3a:	d1ab      	bne.n	8002d94 <HAL_RCC_OscConfig+0xc>
 8002e3c:	f7ff ff9c 	bl	8002d78 <HAL_GetTick>
 8002e40:	1b40      	subs	r0, r0, r5
 8002e42:	2864      	cmp	r0, #100	@ 0x64
 8002e44:	d9ef      	bls.n	8002e26 <HAL_RCC_OscConfig+0x9e>
 8002e46:	2003      	movs	r0, #3
 8002e48:	e7d5      	b.n	8002df6 <HAL_RCC_OscConfig+0x6e>
 8002e4a:	680b      	ldr	r3, [r1, #0]
 8002e4c:	b932      	cbnz	r2, 8002e5c <HAL_RCC_OscConfig+0xd4>
 8002e4e:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8002e52:	600b      	str	r3, [r1, #0]
 8002e54:	680b      	ldr	r3, [r1, #0]
 8002e56:	f423 2380 	bic.w	r3, r3, #262144	@ 0x40000
 8002e5a:	e7d6      	b.n	8002e0a <HAL_RCC_OscConfig+0x82>
 8002e5c:	f5b2 2fa0 	cmp.w	r2, #327680	@ 0x50000
 8002e60:	d1f5      	bne.n	8002e4e <HAL_RCC_OscConfig+0xc6>
 8002e62:	f443 2380 	orr.w	r3, r3, #262144	@ 0x40000
 8002e66:	600b      	str	r3, [r1, #0]
 8002e68:	e7cc      	b.n	8002e04 <HAL_RCC_OscConfig+0x7c>
 8002e6a:	f7ff ff85 	bl	8002d78 <HAL_GetTick>
 8002e6e:	f44f 3600 	mov.w	r6, #131072	@ 0x20000
 8002e72:	4605      	mov	r5, r0
 8002e74:	2701      	movs	r7, #1
 8002e76:	fa96 f3a6 	rbit	r3, r6
 8002e7a:	680a      	ldr	r2, [r1, #0]
 8002e7c:	fa96 f3a6 	rbit	r3, r6
 8002e80:	fab3 f383 	clz	r3, r3
 8002e84:	fa07 f303 	lsl.w	r3, r7, r3
 8002e88:	4213      	tst	r3, r2
 8002e8a:	d083      	beq.n	8002d94 <HAL_RCC_OscConfig+0xc>
 8002e8c:	f7ff ff74 	bl	8002d78 <HAL_GetTick>
 8002e90:	1b40      	subs	r0, r0, r5
 8002e92:	2864      	cmp	r0, #100	@ 0x64
 8002e94:	d9ef      	bls.n	8002e76 <HAL_RCC_OscConfig+0xee>
 8002e96:	e7d6      	b.n	8002e46 <HAL_RCC_OscConfig+0xbe>
 8002e98:	4975      	ldr	r1, [pc, #468]	@ (8003070 <HAL_RCC_OscConfig+0x2e8>)
 8002e9a:	684b      	ldr	r3, [r1, #4]
 8002e9c:	f013 0f0c 	tst.w	r3, #12
 8002ea0:	d007      	beq.n	8002eb2 <HAL_RCC_OscConfig+0x12a>
 8002ea2:	684b      	ldr	r3, [r1, #4]
 8002ea4:	f003 030c 	and.w	r3, r3, #12
 8002ea8:	2b08      	cmp	r3, #8
 8002eaa:	d11f      	bne.n	8002eec <HAL_RCC_OscConfig+0x164>
 8002eac:	684b      	ldr	r3, [r1, #4]
 8002eae:	03df      	lsls	r7, r3, #15
 8002eb0:	d41c      	bmi.n	8002eec <HAL_RCC_OscConfig+0x164>
 8002eb2:	2302      	movs	r3, #2
 8002eb4:	fa93 f2a3 	rbit	r2, r3
 8002eb8:	6808      	ldr	r0, [r1, #0]
 8002eba:	fa93 f3a3 	rbit	r3, r3
 8002ebe:	2201      	movs	r2, #1
 8002ec0:	fab3 f383 	clz	r3, r3
 8002ec4:	fa02 f303 	lsl.w	r3, r2, r3
 8002ec8:	4203      	tst	r3, r0
 8002eca:	d002      	beq.n	8002ed2 <HAL_RCC_OscConfig+0x14a>
 8002ecc:	6923      	ldr	r3, [r4, #16]
 8002ece:	4293      	cmp	r3, r2
 8002ed0:	d190      	bne.n	8002df4 <HAL_RCC_OscConfig+0x6c>
 8002ed2:	6808      	ldr	r0, [r1, #0]
 8002ed4:	22f8      	movs	r2, #248	@ 0xf8
 8002ed6:	fa92 f2a2 	rbit	r2, r2
 8002eda:	6963      	ldr	r3, [r4, #20]
 8002edc:	fab2 f282 	clz	r2, r2
 8002ee0:	4093      	lsls	r3, r2
 8002ee2:	f020 02f8 	bic.w	r2, r0, #248	@ 0xf8
 8002ee6:	4313      	orrs	r3, r2
 8002ee8:	600b      	str	r3, [r1, #0]
 8002eea:	e756      	b.n	8002d9a <HAL_RCC_OscConfig+0x12>
 8002eec:	6922      	ldr	r2, [r4, #16]
 8002eee:	2501      	movs	r5, #1
 8002ef0:	b1f2      	cbz	r2, 8002f30 <HAL_RCC_OscConfig+0x1a8>
 8002ef2:	fa95 f3a5 	rbit	r3, r5
 8002ef6:	fab3 f383 	clz	r3, r3
 8002efa:	f103 5384 	add.w	r3, r3, #276824064	@ 0x10800000
 8002efe:	f503 1384 	add.w	r3, r3, #1081344	@ 0x108000
 8002f02:	009b      	lsls	r3, r3, #2
 8002f04:	2702      	movs	r7, #2
 8002f06:	601d      	str	r5, [r3, #0]
 8002f08:	f7ff ff36 	bl	8002d78 <HAL_GetTick>
 8002f0c:	4606      	mov	r6, r0
 8002f0e:	fa97 f3a7 	rbit	r3, r7
 8002f12:	680a      	ldr	r2, [r1, #0]
 8002f14:	fa97 f3a7 	rbit	r3, r7
 8002f18:	fab3 f383 	clz	r3, r3
 8002f1c:	fa05 f303 	lsl.w	r3, r5, r3
 8002f20:	4213      	tst	r3, r2
 8002f22:	d1d6      	bne.n	8002ed2 <HAL_RCC_OscConfig+0x14a>
 8002f24:	f7ff ff28 	bl	8002d78 <HAL_GetTick>
 8002f28:	1b80      	subs	r0, r0, r6
 8002f2a:	2802      	cmp	r0, #2
 8002f2c:	d9ef      	bls.n	8002f0e <HAL_RCC_OscConfig+0x186>
 8002f2e:	e78a      	b.n	8002e46 <HAL_RCC_OscConfig+0xbe>
 8002f30:	fa95 f3a5 	rbit	r3, r5
 8002f34:	fab3 f383 	clz	r3, r3
 8002f38:	f103 5384 	add.w	r3, r3, #276824064	@ 0x10800000
 8002f3c:	f503 1384 	add.w	r3, r3, #1081344	@ 0x108000
 8002f40:	009b      	lsls	r3, r3, #2
 8002f42:	2702      	movs	r7, #2
 8002f44:	601a      	str	r2, [r3, #0]
 8002f46:	f7ff ff17 	bl	8002d78 <HAL_GetTick>
 8002f4a:	4606      	mov	r6, r0
 8002f4c:	fa97 f3a7 	rbit	r3, r7
 8002f50:	680a      	ldr	r2, [r1, #0]
 8002f52:	fa97 f3a7 	rbit	r3, r7
 8002f56:	fab3 f383 	clz	r3, r3
 8002f5a:	fa05 f303 	lsl.w	r3, r5, r3
 8002f5e:	4213      	tst	r3, r2
 8002f60:	f43f af1b 	beq.w	8002d9a <HAL_RCC_OscConfig+0x12>
 8002f64:	f7ff ff08 	bl	8002d78 <HAL_GetTick>
 8002f68:	1b80      	subs	r0, r0, r6
 8002f6a:	2802      	cmp	r0, #2
 8002f6c:	d9ee      	bls.n	8002f4c <HAL_RCC_OscConfig+0x1c4>
 8002f6e:	e76a      	b.n	8002e46 <HAL_RCC_OscConfig+0xbe>
 8002f70:	69a2      	ldr	r2, [r4, #24]
 8002f72:	4d3f      	ldr	r5, [pc, #252]	@ (8003070 <HAL_RCC_OscConfig+0x2e8>)
 8002f74:	483f      	ldr	r0, [pc, #252]	@ (8003074 <HAL_RCC_OscConfig+0x2ec>)
 8002f76:	2101      	movs	r1, #1
 8002f78:	b302      	cbz	r2, 8002fbc <HAL_RCC_OscConfig+0x234>
 8002f7a:	fa91 f3a1 	rbit	r3, r1
 8002f7e:	fab3 f383 	clz	r3, r3
 8002f82:	4403      	add	r3, r0
 8002f84:	009b      	lsls	r3, r3, #2
 8002f86:	2602      	movs	r6, #2
 8002f88:	6019      	str	r1, [r3, #0]
 8002f8a:	f7ff fef5 	bl	8002d78 <HAL_GetTick>
 8002f8e:	4607      	mov	r7, r0
 8002f90:	fa96 f3a6 	rbit	r3, r6
 8002f94:	fa96 f3a6 	rbit	r3, r6
 8002f98:	fa96 f3a6 	rbit	r3, r6
 8002f9c:	6a6a      	ldr	r2, [r5, #36]	@ 0x24
 8002f9e:	fa96 f3a6 	rbit	r3, r6
 8002fa2:	fab3 f383 	clz	r3, r3
 8002fa6:	fa01 f303 	lsl.w	r3, r1, r3
 8002faa:	4213      	tst	r3, r2
 8002fac:	f47f aef9 	bne.w	8002da2 <HAL_RCC_OscConfig+0x1a>
 8002fb0:	f7ff fee2 	bl	8002d78 <HAL_GetTick>
 8002fb4:	1bc0      	subs	r0, r0, r7
 8002fb6:	2802      	cmp	r0, #2
 8002fb8:	d9ea      	bls.n	8002f90 <HAL_RCC_OscConfig+0x208>
 8002fba:	e744      	b.n	8002e46 <HAL_RCC_OscConfig+0xbe>
 8002fbc:	fa91 f3a1 	rbit	r3, r1
 8002fc0:	fab3 f383 	clz	r3, r3
 8002fc4:	4403      	add	r3, r0
 8002fc6:	009b      	lsls	r3, r3, #2
 8002fc8:	2602      	movs	r6, #2
 8002fca:	601a      	str	r2, [r3, #0]
 8002fcc:	f7ff fed4 	bl	8002d78 <HAL_GetTick>
 8002fd0:	4607      	mov	r7, r0
 8002fd2:	fa96 f3a6 	rbit	r3, r6
 8002fd6:	fa96 f3a6 	rbit	r3, r6
 8002fda:	fa96 f3a6 	rbit	r3, r6
 8002fde:	6a6a      	ldr	r2, [r5, #36]	@ 0x24
 8002fe0:	fa96 f3a6 	rbit	r3, r6
 8002fe4:	fab3 f383 	clz	r3, r3
 8002fe8:	fa01 f303 	lsl.w	r3, r1, r3
 8002fec:	4213      	tst	r3, r2
 8002fee:	f43f aed8 	beq.w	8002da2 <HAL_RCC_OscConfig+0x1a>
 8002ff2:	f7ff fec1 	bl	8002d78 <HAL_GetTick>
 8002ff6:	1bc0      	subs	r0, r0, r7
 8002ff8:	2802      	cmp	r0, #2
 8002ffa:	d9ea      	bls.n	8002fd2 <HAL_RCC_OscConfig+0x24a>
 8002ffc:	e723      	b.n	8002e46 <HAL_RCC_OscConfig+0xbe>
 8002ffe:	491c      	ldr	r1, [pc, #112]	@ (8003070 <HAL_RCC_OscConfig+0x2e8>)
 8003000:	69cb      	ldr	r3, [r1, #28]
 8003002:	00d8      	lsls	r0, r3, #3
 8003004:	d431      	bmi.n	800306a <HAL_RCC_OscConfig+0x2e2>
 8003006:	69cb      	ldr	r3, [r1, #28]
 8003008:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 800300c:	61cb      	str	r3, [r1, #28]
 800300e:	69cb      	ldr	r3, [r1, #28]
 8003010:	f003 5380 	and.w	r3, r3, #268435456	@ 0x10000000
 8003014:	9301      	str	r3, [sp, #4]
 8003016:	9b01      	ldr	r3, [sp, #4]
 8003018:	2501      	movs	r5, #1
 800301a:	4e17      	ldr	r6, [pc, #92]	@ (8003078 <HAL_RCC_OscConfig+0x2f0>)
 800301c:	6833      	ldr	r3, [r6, #0]
 800301e:	05da      	lsls	r2, r3, #23
 8003020:	d52c      	bpl.n	800307c <HAL_RCC_OscConfig+0x2f4>
 8003022:	68e3      	ldr	r3, [r4, #12]
 8003024:	2b01      	cmp	r3, #1
 8003026:	d139      	bne.n	800309c <HAL_RCC_OscConfig+0x314>
 8003028:	6a0b      	ldr	r3, [r1, #32]
 800302a:	f043 0301 	orr.w	r3, r3, #1
 800302e:	620b      	str	r3, [r1, #32]
 8003030:	f7ff fea2 	bl	8002d78 <HAL_GetTick>
 8003034:	2602      	movs	r6, #2
 8003036:	4607      	mov	r7, r0
 8003038:	f04f 0801 	mov.w	r8, #1
 800303c:	f241 3988 	movw	r9, #5000	@ 0x1388
 8003040:	fa96 f3a6 	rbit	r3, r6
 8003044:	fa96 f3a6 	rbit	r3, r6
 8003048:	6a0a      	ldr	r2, [r1, #32]
 800304a:	fa96 f3a6 	rbit	r3, r6
 800304e:	fab3 f383 	clz	r3, r3
 8003052:	fa08 f303 	lsl.w	r3, r8, r3
 8003056:	4213      	tst	r3, r2
 8003058:	d052      	beq.n	8003100 <HAL_RCC_OscConfig+0x378>
 800305a:	2d00      	cmp	r5, #0
 800305c:	f43f aea5 	beq.w	8002daa <HAL_RCC_OscConfig+0x22>
 8003060:	69cb      	ldr	r3, [r1, #28]
 8003062:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8003066:	61cb      	str	r3, [r1, #28]
 8003068:	e69f      	b.n	8002daa <HAL_RCC_OscConfig+0x22>
 800306a:	2500      	movs	r5, #0
 800306c:	e7d5      	b.n	800301a <HAL_RCC_OscConfig+0x292>
 800306e:	bf00      	nop
 8003070:	40021000 	.word	0x40021000
 8003074:	10908120 	.word	0x10908120
 8003078:	40007000 	.word	0x40007000
 800307c:	6833      	ldr	r3, [r6, #0]
 800307e:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8003082:	6033      	str	r3, [r6, #0]
 8003084:	f7ff fe78 	bl	8002d78 <HAL_GetTick>
 8003088:	4607      	mov	r7, r0
 800308a:	6833      	ldr	r3, [r6, #0]
 800308c:	05db      	lsls	r3, r3, #23
 800308e:	d4c8      	bmi.n	8003022 <HAL_RCC_OscConfig+0x29a>
 8003090:	f7ff fe72 	bl	8002d78 <HAL_GetTick>
 8003094:	1bc0      	subs	r0, r0, r7
 8003096:	2864      	cmp	r0, #100	@ 0x64
 8003098:	d9f7      	bls.n	800308a <HAL_RCC_OscConfig+0x302>
 800309a:	e6d4      	b.n	8002e46 <HAL_RCC_OscConfig+0xbe>
 800309c:	bb13      	cbnz	r3, 80030e4 <HAL_RCC_OscConfig+0x35c>
 800309e:	6a0b      	ldr	r3, [r1, #32]
 80030a0:	f023 0301 	bic.w	r3, r3, #1
 80030a4:	620b      	str	r3, [r1, #32]
 80030a6:	6a0b      	ldr	r3, [r1, #32]
 80030a8:	f023 0304 	bic.w	r3, r3, #4
 80030ac:	620b      	str	r3, [r1, #32]
 80030ae:	f7ff fe63 	bl	8002d78 <HAL_GetTick>
 80030b2:	2602      	movs	r6, #2
 80030b4:	4607      	mov	r7, r0
 80030b6:	f04f 0801 	mov.w	r8, #1
 80030ba:	f241 3988 	movw	r9, #5000	@ 0x1388
 80030be:	fa96 f3a6 	rbit	r3, r6
 80030c2:	fa96 f3a6 	rbit	r3, r6
 80030c6:	6a0a      	ldr	r2, [r1, #32]
 80030c8:	fa96 f3a6 	rbit	r3, r6
 80030cc:	fab3 f383 	clz	r3, r3
 80030d0:	fa08 f303 	lsl.w	r3, r8, r3
 80030d4:	4213      	tst	r3, r2
 80030d6:	d0c0      	beq.n	800305a <HAL_RCC_OscConfig+0x2d2>
 80030d8:	f7ff fe4e 	bl	8002d78 <HAL_GetTick>
 80030dc:	1bc0      	subs	r0, r0, r7
 80030de:	4548      	cmp	r0, r9
 80030e0:	d9ed      	bls.n	80030be <HAL_RCC_OscConfig+0x336>
 80030e2:	e6b0      	b.n	8002e46 <HAL_RCC_OscConfig+0xbe>
 80030e4:	2b05      	cmp	r3, #5
 80030e6:	6a0b      	ldr	r3, [r1, #32]
 80030e8:	d103      	bne.n	80030f2 <HAL_RCC_OscConfig+0x36a>
 80030ea:	f043 0304 	orr.w	r3, r3, #4
 80030ee:	620b      	str	r3, [r1, #32]
 80030f0:	e79a      	b.n	8003028 <HAL_RCC_OscConfig+0x2a0>
 80030f2:	f023 0301 	bic.w	r3, r3, #1
 80030f6:	620b      	str	r3, [r1, #32]
 80030f8:	6a0b      	ldr	r3, [r1, #32]
 80030fa:	f023 0304 	bic.w	r3, r3, #4
 80030fe:	e796      	b.n	800302e <HAL_RCC_OscConfig+0x2a6>
 8003100:	f7ff fe3a 	bl	8002d78 <HAL_GetTick>
 8003104:	1bc0      	subs	r0, r0, r7
 8003106:	4548      	cmp	r0, r9
 8003108:	d99a      	bls.n	8003040 <HAL_RCC_OscConfig+0x2b8>
 800310a:	e69c      	b.n	8002e46 <HAL_RCC_OscConfig+0xbe>
 800310c:	493f      	ldr	r1, [pc, #252]	@ (800320c <HAL_RCC_OscConfig+0x484>)
 800310e:	684b      	ldr	r3, [r1, #4]
 8003110:	f003 030c 	and.w	r3, r3, #12
 8003114:	2b08      	cmp	r3, #8
 8003116:	f43f ae6d 	beq.w	8002df4 <HAL_RCC_OscConfig+0x6c>
 800311a:	2a02      	cmp	r2, #2
 800311c:	f04f 7380 	mov.w	r3, #16777216	@ 0x1000000
 8003120:	d150      	bne.n	80031c4 <HAL_RCC_OscConfig+0x43c>
 8003122:	fa93 f3a3 	rbit	r3, r3
 8003126:	fab3 f383 	clz	r3, r3
 800312a:	f103 5384 	add.w	r3, r3, #276824064	@ 0x10800000
 800312e:	f503 1384 	add.w	r3, r3, #1081344	@ 0x108000
 8003132:	009b      	lsls	r3, r3, #2
 8003134:	2200      	movs	r2, #0
 8003136:	601a      	str	r2, [r3, #0]
 8003138:	f7ff fe1e 	bl	8002d78 <HAL_GetTick>
 800313c:	f8df 80d0 	ldr.w	r8, [pc, #208]	@ 8003210 <HAL_RCC_OscConfig+0x488>
 8003140:	4606      	mov	r6, r0
 8003142:	f04f 7700 	mov.w	r7, #33554432	@ 0x2000000
 8003146:	2501      	movs	r5, #1
 8003148:	fa97 f3a7 	rbit	r3, r7
 800314c:	680a      	ldr	r2, [r1, #0]
 800314e:	fa97 f3a7 	rbit	r3, r7
 8003152:	fab3 f383 	clz	r3, r3
 8003156:	fa05 f303 	lsl.w	r3, r5, r3
 800315a:	4213      	tst	r3, r2
 800315c:	d12c      	bne.n	80031b8 <HAL_RCC_OscConfig+0x430>
 800315e:	e9d4 0308 	ldrd	r0, r3, [r4, #32]
 8003162:	684a      	ldr	r2, [r1, #4]
 8003164:	4303      	orrs	r3, r0
 8003166:	f422 1274 	bic.w	r2, r2, #3997696	@ 0x3d0000
 800316a:	4313      	orrs	r3, r2
 800316c:	604b      	str	r3, [r1, #4]
 800316e:	f04f 7380 	mov.w	r3, #16777216	@ 0x1000000
 8003172:	fa93 f3a3 	rbit	r3, r3
 8003176:	fab3 f383 	clz	r3, r3
 800317a:	f103 5384 	add.w	r3, r3, #276824064	@ 0x10800000
 800317e:	f503 1384 	add.w	r3, r3, #1081344	@ 0x108000
 8003182:	009b      	lsls	r3, r3, #2
 8003184:	4f22      	ldr	r7, [pc, #136]	@ (8003210 <HAL_RCC_OscConfig+0x488>)
 8003186:	601d      	str	r5, [r3, #0]
 8003188:	f7ff fdf6 	bl	8002d78 <HAL_GetTick>
 800318c:	f04f 7500 	mov.w	r5, #33554432	@ 0x2000000
 8003190:	4604      	mov	r4, r0
 8003192:	2601      	movs	r6, #1
 8003194:	fa95 f3a5 	rbit	r3, r5
 8003198:	680a      	ldr	r2, [r1, #0]
 800319a:	fa95 f3a5 	rbit	r3, r5
 800319e:	fab3 f383 	clz	r3, r3
 80031a2:	fa06 f303 	lsl.w	r3, r6, r3
 80031a6:	4213      	tst	r3, r2
 80031a8:	f47f ae03 	bne.w	8002db2 <HAL_RCC_OscConfig+0x2a>
 80031ac:	f7ff fde4 	bl	8002d78 <HAL_GetTick>
 80031b0:	1b00      	subs	r0, r0, r4
 80031b2:	42b8      	cmp	r0, r7
 80031b4:	d9ee      	bls.n	8003194 <HAL_RCC_OscConfig+0x40c>
 80031b6:	e646      	b.n	8002e46 <HAL_RCC_OscConfig+0xbe>
 80031b8:	f7ff fdde 	bl	8002d78 <HAL_GetTick>
 80031bc:	1b83      	subs	r3, r0, r6
 80031be:	4543      	cmp	r3, r8
 80031c0:	d9c2      	bls.n	8003148 <HAL_RCC_OscConfig+0x3c0>
 80031c2:	e640      	b.n	8002e46 <HAL_RCC_OscConfig+0xbe>
 80031c4:	fa93 f3a3 	rbit	r3, r3
 80031c8:	fab3 f383 	clz	r3, r3
 80031cc:	f103 5384 	add.w	r3, r3, #276824064	@ 0x10800000
 80031d0:	f503 1384 	add.w	r3, r3, #1081344	@ 0x108000
 80031d4:	009b      	lsls	r3, r3, #2
 80031d6:	2200      	movs	r2, #0
 80031d8:	601a      	str	r2, [r3, #0]
 80031da:	f7ff fdcd 	bl	8002d78 <HAL_GetTick>
 80031de:	4f0c      	ldr	r7, [pc, #48]	@ (8003210 <HAL_RCC_OscConfig+0x488>)
 80031e0:	4604      	mov	r4, r0
 80031e2:	f04f 7500 	mov.w	r5, #33554432	@ 0x2000000
 80031e6:	2601      	movs	r6, #1
 80031e8:	fa95 f3a5 	rbit	r3, r5
 80031ec:	680a      	ldr	r2, [r1, #0]
 80031ee:	fa95 f3a5 	rbit	r3, r5
 80031f2:	fab3 f383 	clz	r3, r3
 80031f6:	fa06 f303 	lsl.w	r3, r6, r3
 80031fa:	4213      	tst	r3, r2
 80031fc:	f43f add9 	beq.w	8002db2 <HAL_RCC_OscConfig+0x2a>
 8003200:	f7ff fdba 	bl	8002d78 <HAL_GetTick>
 8003204:	1b00      	subs	r0, r0, r4
 8003206:	42b8      	cmp	r0, r7
 8003208:	d9ee      	bls.n	80031e8 <HAL_RCC_OscConfig+0x460>
 800320a:	e61c      	b.n	8002e46 <HAL_RCC_OscConfig+0xbe>
 800320c:	40021000 	.word	0x40021000
 8003210:	00030d40 	.word	0x00030d40

08003214 <HAL_RCC_ClockConfig>:
 8003214:	4a4d      	ldr	r2, [pc, #308]	@ (800334c <HAL_RCC_ClockConfig+0x138>)
 8003216:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003218:	6813      	ldr	r3, [r2, #0]
 800321a:	f003 0307 	and.w	r3, r3, #7
 800321e:	428b      	cmp	r3, r1
 8003220:	4604      	mov	r4, r0
 8003222:	d311      	bcc.n	8003248 <HAL_RCC_ClockConfig+0x34>
 8003224:	6822      	ldr	r2, [r4, #0]
 8003226:	0795      	lsls	r5, r2, #30
 8003228:	d41a      	bmi.n	8003260 <HAL_RCC_ClockConfig+0x4c>
 800322a:	07d0      	lsls	r0, r2, #31
 800322c:	d420      	bmi.n	8003270 <HAL_RCC_ClockConfig+0x5c>
 800322e:	4a47      	ldr	r2, [pc, #284]	@ (800334c <HAL_RCC_ClockConfig+0x138>)
 8003230:	6813      	ldr	r3, [r2, #0]
 8003232:	f003 0307 	and.w	r3, r3, #7
 8003236:	428b      	cmp	r3, r1
 8003238:	d86c      	bhi.n	8003314 <HAL_RCC_ClockConfig+0x100>
 800323a:	6822      	ldr	r2, [r4, #0]
 800323c:	0751      	lsls	r1, r2, #29
 800323e:	d474      	bmi.n	800332a <HAL_RCC_ClockConfig+0x116>
 8003240:	0713      	lsls	r3, r2, #28
 8003242:	d47a      	bmi.n	800333a <HAL_RCC_ClockConfig+0x126>
 8003244:	2000      	movs	r0, #0
 8003246:	e00a      	b.n	800325e <HAL_RCC_ClockConfig+0x4a>
 8003248:	6813      	ldr	r3, [r2, #0]
 800324a:	f023 0307 	bic.w	r3, r3, #7
 800324e:	430b      	orrs	r3, r1
 8003250:	6013      	str	r3, [r2, #0]
 8003252:	6813      	ldr	r3, [r2, #0]
 8003254:	f003 0307 	and.w	r3, r3, #7
 8003258:	428b      	cmp	r3, r1
 800325a:	d0e3      	beq.n	8003224 <HAL_RCC_ClockConfig+0x10>
 800325c:	2001      	movs	r0, #1
 800325e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8003260:	483b      	ldr	r0, [pc, #236]	@ (8003350 <HAL_RCC_ClockConfig+0x13c>)
 8003262:	68a5      	ldr	r5, [r4, #8]
 8003264:	6843      	ldr	r3, [r0, #4]
 8003266:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 800326a:	432b      	orrs	r3, r5
 800326c:	6043      	str	r3, [r0, #4]
 800326e:	e7dc      	b.n	800322a <HAL_RCC_ClockConfig+0x16>
 8003270:	6862      	ldr	r2, [r4, #4]
 8003272:	4d37      	ldr	r5, [pc, #220]	@ (8003350 <HAL_RCC_ClockConfig+0x13c>)
 8003274:	2a01      	cmp	r2, #1
 8003276:	d125      	bne.n	80032c4 <HAL_RCC_ClockConfig+0xb0>
 8003278:	f44f 3300 	mov.w	r3, #131072	@ 0x20000
 800327c:	fa93 f0a3 	rbit	r0, r3
 8003280:	6828      	ldr	r0, [r5, #0]
 8003282:	fa93 f3a3 	rbit	r3, r3
 8003286:	fab3 f383 	clz	r3, r3
 800328a:	fa02 f303 	lsl.w	r3, r2, r3
 800328e:	4203      	tst	r3, r0
 8003290:	d0e4      	beq.n	800325c <HAL_RCC_ClockConfig+0x48>
 8003292:	686b      	ldr	r3, [r5, #4]
 8003294:	f023 0303 	bic.w	r3, r3, #3
 8003298:	4313      	orrs	r3, r2
 800329a:	606b      	str	r3, [r5, #4]
 800329c:	f7ff fd6c 	bl	8002d78 <HAL_GetTick>
 80032a0:	6863      	ldr	r3, [r4, #4]
 80032a2:	2b01      	cmp	r3, #1
 80032a4:	4606      	mov	r6, r0
 80032a6:	f241 3788 	movw	r7, #5000	@ 0x1388
 80032aa:	d11c      	bne.n	80032e6 <HAL_RCC_ClockConfig+0xd2>
 80032ac:	686b      	ldr	r3, [r5, #4]
 80032ae:	f003 030c 	and.w	r3, r3, #12
 80032b2:	2b04      	cmp	r3, #4
 80032b4:	d0bb      	beq.n	800322e <HAL_RCC_ClockConfig+0x1a>
 80032b6:	f7ff fd5f 	bl	8002d78 <HAL_GetTick>
 80032ba:	1b80      	subs	r0, r0, r6
 80032bc:	42b8      	cmp	r0, r7
 80032be:	d9f5      	bls.n	80032ac <HAL_RCC_ClockConfig+0x98>
 80032c0:	2003      	movs	r0, #3
 80032c2:	e7cc      	b.n	800325e <HAL_RCC_ClockConfig+0x4a>
 80032c4:	2a02      	cmp	r2, #2
 80032c6:	bf0c      	ite	eq
 80032c8:	f04f 7300 	moveq.w	r3, #33554432	@ 0x2000000
 80032cc:	2302      	movne	r3, #2
 80032ce:	fa93 f0a3 	rbit	r0, r3
 80032d2:	682e      	ldr	r6, [r5, #0]
 80032d4:	fa93 f3a3 	rbit	r3, r3
 80032d8:	2001      	movs	r0, #1
 80032da:	fab3 f383 	clz	r3, r3
 80032de:	fa00 f303 	lsl.w	r3, r0, r3
 80032e2:	4233      	tst	r3, r6
 80032e4:	e7d4      	b.n	8003290 <HAL_RCC_ClockConfig+0x7c>
 80032e6:	2b02      	cmp	r3, #2
 80032e8:	d10f      	bne.n	800330a <HAL_RCC_ClockConfig+0xf6>
 80032ea:	686b      	ldr	r3, [r5, #4]
 80032ec:	f003 030c 	and.w	r3, r3, #12
 80032f0:	2b08      	cmp	r3, #8
 80032f2:	d09c      	beq.n	800322e <HAL_RCC_ClockConfig+0x1a>
 80032f4:	f7ff fd40 	bl	8002d78 <HAL_GetTick>
 80032f8:	1b80      	subs	r0, r0, r6
 80032fa:	42b8      	cmp	r0, r7
 80032fc:	d9f5      	bls.n	80032ea <HAL_RCC_ClockConfig+0xd6>
 80032fe:	e7df      	b.n	80032c0 <HAL_RCC_ClockConfig+0xac>
 8003300:	f7ff fd3a 	bl	8002d78 <HAL_GetTick>
 8003304:	1b80      	subs	r0, r0, r6
 8003306:	42b8      	cmp	r0, r7
 8003308:	d8da      	bhi.n	80032c0 <HAL_RCC_ClockConfig+0xac>
 800330a:	686b      	ldr	r3, [r5, #4]
 800330c:	f013 0f0c 	tst.w	r3, #12
 8003310:	d1f6      	bne.n	8003300 <HAL_RCC_ClockConfig+0xec>
 8003312:	e78c      	b.n	800322e <HAL_RCC_ClockConfig+0x1a>
 8003314:	6813      	ldr	r3, [r2, #0]
 8003316:	f023 0307 	bic.w	r3, r3, #7
 800331a:	430b      	orrs	r3, r1
 800331c:	6013      	str	r3, [r2, #0]
 800331e:	6813      	ldr	r3, [r2, #0]
 8003320:	f003 0307 	and.w	r3, r3, #7
 8003324:	428b      	cmp	r3, r1
 8003326:	d199      	bne.n	800325c <HAL_RCC_ClockConfig+0x48>
 8003328:	e787      	b.n	800323a <HAL_RCC_ClockConfig+0x26>
 800332a:	4909      	ldr	r1, [pc, #36]	@ (8003350 <HAL_RCC_ClockConfig+0x13c>)
 800332c:	68e0      	ldr	r0, [r4, #12]
 800332e:	684b      	ldr	r3, [r1, #4]
 8003330:	f423 63e0 	bic.w	r3, r3, #1792	@ 0x700
 8003334:	4303      	orrs	r3, r0
 8003336:	604b      	str	r3, [r1, #4]
 8003338:	e782      	b.n	8003240 <HAL_RCC_ClockConfig+0x2c>
 800333a:	4a05      	ldr	r2, [pc, #20]	@ (8003350 <HAL_RCC_ClockConfig+0x13c>)
 800333c:	6921      	ldr	r1, [r4, #16]
 800333e:	6853      	ldr	r3, [r2, #4]
 8003340:	f423 5360 	bic.w	r3, r3, #14336	@ 0x3800
 8003344:	ea43 03c1 	orr.w	r3, r3, r1, lsl #3
 8003348:	6053      	str	r3, [r2, #4]
 800334a:	e77b      	b.n	8003244 <HAL_RCC_ClockConfig+0x30>
 800334c:	40022000 	.word	0x40022000
 8003350:	40021000 	.word	0x40021000

08003354 <HAL_GPIO_Init>:
 8003354:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003358:	f8df 8168 	ldr.w	r8, [pc, #360]	@ 80034c4 <HAL_GPIO_Init+0x170>
 800335c:	4c5a      	ldr	r4, [pc, #360]	@ (80034c8 <HAL_GPIO_Init+0x174>)
 800335e:	2300      	movs	r3, #0
 8003360:	f04f 090f 	mov.w	r9, #15
 8003364:	680a      	ldr	r2, [r1, #0]
 8003366:	fa32 f503 	lsrs.w	r5, r2, r3
 800336a:	d102      	bne.n	8003372 <HAL_GPIO_Init+0x1e>
 800336c:	b003      	add	sp, #12
 800336e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003372:	2501      	movs	r5, #1
 8003374:	fa05 fa03 	lsl.w	sl, r5, r3
 8003378:	ea1a 0202 	ands.w	r2, sl, r2
 800337c:	f000 8098 	beq.w	80034b0 <HAL_GPIO_Init+0x15c>
 8003380:	684d      	ldr	r5, [r1, #4]
 8003382:	f025 0e10 	bic.w	lr, r5, #16
 8003386:	f1be 0f02 	cmp.w	lr, #2
 800338a:	d111      	bne.n	80033b0 <HAL_GPIO_Init+0x5c>
 800338c:	08df      	lsrs	r7, r3, #3
 800338e:	eb00 0787 	add.w	r7, r0, r7, lsl #2
 8003392:	f003 0c07 	and.w	ip, r3, #7
 8003396:	6a3e      	ldr	r6, [r7, #32]
 8003398:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
 800339c:	fa09 fb0c 	lsl.w	fp, r9, ip
 80033a0:	ea26 0b0b 	bic.w	fp, r6, fp
 80033a4:	690e      	ldr	r6, [r1, #16]
 80033a6:	fa06 f60c 	lsl.w	r6, r6, ip
 80033aa:	ea46 060b 	orr.w	r6, r6, fp
 80033ae:	623e      	str	r6, [r7, #32]
 80033b0:	f8d0 b000 	ldr.w	fp, [r0]
 80033b4:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80033b8:	2603      	movs	r6, #3
 80033ba:	fa06 f70c 	lsl.w	r7, r6, ip
 80033be:	ea2b 0b07 	bic.w	fp, fp, r7
 80033c2:	43fe      	mvns	r6, r7
 80033c4:	f005 0703 	and.w	r7, r5, #3
 80033c8:	fa07 f70c 	lsl.w	r7, r7, ip
 80033cc:	f10e 3eff 	add.w	lr, lr, #4294967295	@ 0xffffffff
 80033d0:	ea47 070b 	orr.w	r7, r7, fp
 80033d4:	f1be 0f01 	cmp.w	lr, #1
 80033d8:	6007      	str	r7, [r0, #0]
 80033da:	d810      	bhi.n	80033fe <HAL_GPIO_Init+0xaa>
 80033dc:	6887      	ldr	r7, [r0, #8]
 80033de:	ea06 0e07 	and.w	lr, r6, r7
 80033e2:	68cf      	ldr	r7, [r1, #12]
 80033e4:	fa07 f70c 	lsl.w	r7, r7, ip
 80033e8:	ea47 070e 	orr.w	r7, r7, lr
 80033ec:	6087      	str	r7, [r0, #8]
 80033ee:	6847      	ldr	r7, [r0, #4]
 80033f0:	ea27 0e0a 	bic.w	lr, r7, sl
 80033f4:	092f      	lsrs	r7, r5, #4
 80033f6:	409f      	lsls	r7, r3
 80033f8:	ea47 070e 	orr.w	r7, r7, lr
 80033fc:	6047      	str	r7, [r0, #4]
 80033fe:	68c7      	ldr	r7, [r0, #12]
 8003400:	4037      	ands	r7, r6
 8003402:	688e      	ldr	r6, [r1, #8]
 8003404:	fa06 f60c 	lsl.w	r6, r6, ip
 8003408:	433e      	orrs	r6, r7
 800340a:	60c6      	str	r6, [r0, #12]
 800340c:	00ee      	lsls	r6, r5, #3
 800340e:	d54f      	bpl.n	80034b0 <HAL_GPIO_Init+0x15c>
 8003410:	f8d8 6018 	ldr.w	r6, [r8, #24]
 8003414:	f046 0601 	orr.w	r6, r6, #1
 8003418:	f8c8 6018 	str.w	r6, [r8, #24]
 800341c:	f8d8 6018 	ldr.w	r6, [r8, #24]
 8003420:	f023 0703 	bic.w	r7, r3, #3
 8003424:	f107 4780 	add.w	r7, r7, #1073741824	@ 0x40000000
 8003428:	f006 0601 	and.w	r6, r6, #1
 800342c:	f507 3780 	add.w	r7, r7, #65536	@ 0x10000
 8003430:	9601      	str	r6, [sp, #4]
 8003432:	f003 0c03 	and.w	ip, r3, #3
 8003436:	9e01      	ldr	r6, [sp, #4]
 8003438:	68be      	ldr	r6, [r7, #8]
 800343a:	ea4f 0c8c 	mov.w	ip, ip, lsl #2
 800343e:	fa09 fe0c 	lsl.w	lr, r9, ip
 8003442:	f1b0 4f90 	cmp.w	r0, #1207959552	@ 0x48000000
 8003446:	ea26 0e0e 	bic.w	lr, r6, lr
 800344a:	d033      	beq.n	80034b4 <HAL_GPIO_Init+0x160>
 800344c:	4e1f      	ldr	r6, [pc, #124]	@ (80034cc <HAL_GPIO_Init+0x178>)
 800344e:	42b0      	cmp	r0, r6
 8003450:	d032      	beq.n	80034b8 <HAL_GPIO_Init+0x164>
 8003452:	f506 6680 	add.w	r6, r6, #1024	@ 0x400
 8003456:	42b0      	cmp	r0, r6
 8003458:	d030      	beq.n	80034bc <HAL_GPIO_Init+0x168>
 800345a:	f506 6680 	add.w	r6, r6, #1024	@ 0x400
 800345e:	42b0      	cmp	r0, r6
 8003460:	d02e      	beq.n	80034c0 <HAL_GPIO_Init+0x16c>
 8003462:	f506 6680 	add.w	r6, r6, #1024	@ 0x400
 8003466:	42b0      	cmp	r0, r6
 8003468:	bf14      	ite	ne
 800346a:	2605      	movne	r6, #5
 800346c:	2604      	moveq	r6, #4
 800346e:	fa06 f60c 	lsl.w	r6, r6, ip
 8003472:	ea46 060e 	orr.w	r6, r6, lr
 8003476:	60be      	str	r6, [r7, #8]
 8003478:	6826      	ldr	r6, [r4, #0]
 800347a:	43d7      	mvns	r7, r2
 800347c:	f415 3f80 	tst.w	r5, #65536	@ 0x10000
 8003480:	bf0c      	ite	eq
 8003482:	403e      	andeq	r6, r7
 8003484:	4316      	orrne	r6, r2
 8003486:	6026      	str	r6, [r4, #0]
 8003488:	6866      	ldr	r6, [r4, #4]
 800348a:	f415 3f00 	tst.w	r5, #131072	@ 0x20000
 800348e:	bf0c      	ite	eq
 8003490:	403e      	andeq	r6, r7
 8003492:	4316      	orrne	r6, r2
 8003494:	6066      	str	r6, [r4, #4]
 8003496:	68a6      	ldr	r6, [r4, #8]
 8003498:	f415 1f80 	tst.w	r5, #1048576	@ 0x100000
 800349c:	bf0c      	ite	eq
 800349e:	403e      	andeq	r6, r7
 80034a0:	4316      	orrne	r6, r2
 80034a2:	60a6      	str	r6, [r4, #8]
 80034a4:	68e6      	ldr	r6, [r4, #12]
 80034a6:	02ad      	lsls	r5, r5, #10
 80034a8:	bf54      	ite	pl
 80034aa:	403e      	andpl	r6, r7
 80034ac:	4316      	orrmi	r6, r2
 80034ae:	60e6      	str	r6, [r4, #12]
 80034b0:	3301      	adds	r3, #1
 80034b2:	e757      	b.n	8003364 <HAL_GPIO_Init+0x10>
 80034b4:	2600      	movs	r6, #0
 80034b6:	e7da      	b.n	800346e <HAL_GPIO_Init+0x11a>
 80034b8:	2601      	movs	r6, #1
 80034ba:	e7d8      	b.n	800346e <HAL_GPIO_Init+0x11a>
 80034bc:	2602      	movs	r6, #2
 80034be:	e7d6      	b.n	800346e <HAL_GPIO_Init+0x11a>
 80034c0:	2603      	movs	r6, #3
 80034c2:	e7d4      	b.n	800346e <HAL_GPIO_Init+0x11a>
 80034c4:	40021000 	.word	0x40021000
 80034c8:	40010400 	.word	0x40010400
 80034cc:	48000400 	.word	0x48000400

080034d0 <HAL_GPIO_WritePin>:
 80034d0:	b10a      	cbz	r2, 80034d6 <HAL_GPIO_WritePin+0x6>
 80034d2:	6181      	str	r1, [r0, #24]
 80034d4:	4770      	bx	lr
 80034d6:	6281      	str	r1, [r0, #40]	@ 0x28
 80034d8:	4770      	bx	lr
	...

080034dc <UART_SetConfig>:
 80034dc:	6802      	ldr	r2, [r0, #0]
 80034de:	6883      	ldr	r3, [r0, #8]
 80034e0:	69c1      	ldr	r1, [r0, #28]
 80034e2:	b530      	push	{r4, r5, lr}
 80034e4:	6905      	ldr	r5, [r0, #16]
 80034e6:	6814      	ldr	r4, [r2, #0]
 80034e8:	432b      	orrs	r3, r5
 80034ea:	6945      	ldr	r5, [r0, #20]
 80034ec:	f424 4416 	bic.w	r4, r4, #38400	@ 0x9600
 80034f0:	432b      	orrs	r3, r5
 80034f2:	f024 040c 	bic.w	r4, r4, #12
 80034f6:	430b      	orrs	r3, r1
 80034f8:	4323      	orrs	r3, r4
 80034fa:	6013      	str	r3, [r2, #0]
 80034fc:	6853      	ldr	r3, [r2, #4]
 80034fe:	68c4      	ldr	r4, [r0, #12]
 8003500:	6a05      	ldr	r5, [r0, #32]
 8003502:	f423 5340 	bic.w	r3, r3, #12288	@ 0x3000
 8003506:	4323      	orrs	r3, r4
 8003508:	6053      	str	r3, [r2, #4]
 800350a:	6894      	ldr	r4, [r2, #8]
 800350c:	6983      	ldr	r3, [r0, #24]
 800350e:	f424 6430 	bic.w	r4, r4, #2816	@ 0xb00
 8003512:	432b      	orrs	r3, r5
 8003514:	4323      	orrs	r3, r4
 8003516:	6093      	str	r3, [r2, #8]
 8003518:	4b42      	ldr	r3, [pc, #264]	@ (8003624 <UART_SetConfig+0x148>)
 800351a:	429a      	cmp	r2, r3
 800351c:	d111      	bne.n	8003542 <UART_SetConfig+0x66>
 800351e:	f503 4358 	add.w	r3, r3, #55296	@ 0xd800
 8003522:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8003524:	f003 0303 	and.w	r3, r3, #3
 8003528:	2b02      	cmp	r3, #2
 800352a:	d05f      	beq.n	80035ec <UART_SetConfig+0x110>
 800352c:	2b03      	cmp	r3, #3
 800352e:	d065      	beq.n	80035fc <UART_SetConfig+0x120>
 8003530:	f5b1 4f00 	cmp.w	r1, #32768	@ 0x8000
 8003534:	6841      	ldr	r1, [r0, #4]
 8003536:	ea4f 0351 	mov.w	r3, r1, lsr #1
 800353a:	d045      	beq.n	80035c8 <UART_SetConfig+0xec>
 800353c:	f503 03e1 	add.w	r3, r3, #7372800	@ 0x708000
 8003540:	e048      	b.n	80035d4 <UART_SetConfig+0xf8>
 8003542:	4b39      	ldr	r3, [pc, #228]	@ (8003628 <UART_SetConfig+0x14c>)
 8003544:	429a      	cmp	r2, r3
 8003546:	d112      	bne.n	800356e <UART_SetConfig+0x92>
 8003548:	f503 33e6 	add.w	r3, r3, #117760	@ 0x1cc00
 800354c:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800354e:	f403 3340 	and.w	r3, r3, #196608	@ 0x30000
 8003552:	f5b3 3f00 	cmp.w	r3, #131072	@ 0x20000
 8003556:	d049      	beq.n	80035ec <UART_SetConfig+0x110>
 8003558:	d9ea      	bls.n	8003530 <UART_SetConfig+0x54>
 800355a:	f5b3 3f40 	cmp.w	r3, #196608	@ 0x30000
 800355e:	d04d      	beq.n	80035fc <UART_SetConfig+0x120>
 8003560:	f5b1 4f00 	cmp.w	r1, #32768	@ 0x8000
 8003564:	f04f 0001 	mov.w	r0, #1
 8003568:	d15b      	bne.n	8003622 <UART_SetConfig+0x146>
 800356a:	2300      	movs	r3, #0
 800356c:	e053      	b.n	8003616 <UART_SetConfig+0x13a>
 800356e:	4b2f      	ldr	r3, [pc, #188]	@ (800362c <UART_SetConfig+0x150>)
 8003570:	429a      	cmp	r2, r3
 8003572:	d10b      	bne.n	800358c <UART_SetConfig+0xb0>
 8003574:	f503 33e4 	add.w	r3, r3, #116736	@ 0x1c800
 8003578:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 800357a:	f403 2340 	and.w	r3, r3, #786432	@ 0xc0000
 800357e:	f5b3 2f00 	cmp.w	r3, #524288	@ 0x80000
 8003582:	d033      	beq.n	80035ec <UART_SetConfig+0x110>
 8003584:	d9d4      	bls.n	8003530 <UART_SetConfig+0x54>
 8003586:	f5b3 2f40 	cmp.w	r3, #786432	@ 0xc0000
 800358a:	e7e8      	b.n	800355e <UART_SetConfig+0x82>
 800358c:	4b28      	ldr	r3, [pc, #160]	@ (8003630 <UART_SetConfig+0x154>)
 800358e:	429a      	cmp	r2, r3
 8003590:	d10b      	bne.n	80035aa <UART_SetConfig+0xce>
 8003592:	f503 33e2 	add.w	r3, r3, #115712	@ 0x1c400
 8003596:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 8003598:	f403 1340 	and.w	r3, r3, #3145728	@ 0x300000
 800359c:	f5b3 1f00 	cmp.w	r3, #2097152	@ 0x200000
 80035a0:	d024      	beq.n	80035ec <UART_SetConfig+0x110>
 80035a2:	d9c5      	bls.n	8003530 <UART_SetConfig+0x54>
 80035a4:	f5b3 1f40 	cmp.w	r3, #3145728	@ 0x300000
 80035a8:	e7d9      	b.n	800355e <UART_SetConfig+0x82>
 80035aa:	4b22      	ldr	r3, [pc, #136]	@ (8003634 <UART_SetConfig+0x158>)
 80035ac:	429a      	cmp	r2, r3
 80035ae:	d1d7      	bne.n	8003560 <UART_SetConfig+0x84>
 80035b0:	f503 33e0 	add.w	r3, r3, #114688	@ 0x1c000
 80035b4:	6b1b      	ldr	r3, [r3, #48]	@ 0x30
 80035b6:	f403 0340 	and.w	r3, r3, #12582912	@ 0xc00000
 80035ba:	f5b3 0f00 	cmp.w	r3, #8388608	@ 0x800000
 80035be:	d015      	beq.n	80035ec <UART_SetConfig+0x110>
 80035c0:	d9b6      	bls.n	8003530 <UART_SetConfig+0x54>
 80035c2:	f5b3 0f40 	cmp.w	r3, #12582912	@ 0xc00000
 80035c6:	e7ca      	b.n	800355e <UART_SetConfig+0x82>
 80035c8:	f503 0361 	add.w	r3, r3, #14745600	@ 0xe10000
 80035cc:	e01f      	b.n	800360e <UART_SetConfig+0x132>
 80035ce:	084b      	lsrs	r3, r1, #1
 80035d0:	f503 4300 	add.w	r3, r3, #32768	@ 0x8000
 80035d4:	fbb3 f3f1 	udiv	r3, r3, r1
 80035d8:	b29b      	uxth	r3, r3
 80035da:	60d3      	str	r3, [r2, #12]
 80035dc:	2000      	movs	r0, #0
 80035de:	e020      	b.n	8003622 <UART_SetConfig+0x146>
 80035e0:	084b      	lsrs	r3, r1, #1
 80035e2:	f503 0374 	add.w	r3, r3, #15990784	@ 0xf40000
 80035e6:	f503 5310 	add.w	r3, r3, #9216	@ 0x2400
 80035ea:	e7f3      	b.n	80035d4 <UART_SetConfig+0xf8>
 80035ec:	f5b1 4f00 	cmp.w	r1, #32768	@ 0x8000
 80035f0:	6841      	ldr	r1, [r0, #4]
 80035f2:	d1ec      	bne.n	80035ce <UART_SetConfig+0xf2>
 80035f4:	084b      	lsrs	r3, r1, #1
 80035f6:	f503 3380 	add.w	r3, r3, #65536	@ 0x10000
 80035fa:	e008      	b.n	800360e <UART_SetConfig+0x132>
 80035fc:	f5b1 4f00 	cmp.w	r1, #32768	@ 0x8000
 8003600:	6841      	ldr	r1, [r0, #4]
 8003602:	d1ed      	bne.n	80035e0 <UART_SetConfig+0x104>
 8003604:	084b      	lsrs	r3, r1, #1
 8003606:	f103 73f4 	add.w	r3, r3, #31981568	@ 0x1e80000
 800360a:	f503 4390 	add.w	r3, r3, #18432	@ 0x4800
 800360e:	fbb3 f3f1 	udiv	r3, r3, r1
 8003612:	2000      	movs	r0, #0
 8003614:	b29b      	uxth	r3, r3
 8003616:	f023 010f 	bic.w	r1, r3, #15
 800361a:	f3c3 0342 	ubfx	r3, r3, #1, #3
 800361e:	430b      	orrs	r3, r1
 8003620:	60d3      	str	r3, [r2, #12]
 8003622:	bd30      	pop	{r4, r5, pc}
 8003624:	40013800 	.word	0x40013800
 8003628:	40004400 	.word	0x40004400
 800362c:	40004800 	.word	0x40004800
 8003630:	40004c00 	.word	0x40004c00
 8003634:	40005000 	.word	0x40005000

08003638 <UART_WaitOnFlagUntilTimeout>:
 8003638:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800363c:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003640:	4604      	mov	r4, r0
 8003642:	4616      	mov	r6, r2
 8003644:	461f      	mov	r7, r3
 8003646:	6825      	ldr	r5, [r4, #0]
 8003648:	69eb      	ldr	r3, [r5, #28]
 800364a:	ea31 0303 	bics.w	r3, r1, r3
 800364e:	bf0c      	ite	eq
 8003650:	2301      	moveq	r3, #1
 8003652:	2300      	movne	r3, #0
 8003654:	42b3      	cmp	r3, r6
 8003656:	d001      	beq.n	800365c <UART_WaitOnFlagUntilTimeout+0x24>
 8003658:	2000      	movs	r0, #0
 800365a:	e016      	b.n	800368a <UART_WaitOnFlagUntilTimeout+0x52>
 800365c:	f1b8 3fff 	cmp.w	r8, #4294967295	@ 0xffffffff
 8003660:	d0f2      	beq.n	8003648 <UART_WaitOnFlagUntilTimeout+0x10>
 8003662:	f1b8 0f00 	cmp.w	r8, #0
 8003666:	d112      	bne.n	800368e <UART_WaitOnFlagUntilTimeout+0x56>
 8003668:	682b      	ldr	r3, [r5, #0]
 800366a:	f423 73d0 	bic.w	r3, r3, #416	@ 0x1a0
 800366e:	602b      	str	r3, [r5, #0]
 8003670:	68ab      	ldr	r3, [r5, #8]
 8003672:	f023 0301 	bic.w	r3, r3, #1
 8003676:	60ab      	str	r3, [r5, #8]
 8003678:	2320      	movs	r3, #32
 800367a:	f884 3069 	strb.w	r3, [r4, #105]	@ 0x69
 800367e:	f884 306a 	strb.w	r3, [r4, #106]	@ 0x6a
 8003682:	2300      	movs	r3, #0
 8003684:	f884 3068 	strb.w	r3, [r4, #104]	@ 0x68
 8003688:	2003      	movs	r0, #3
 800368a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800368e:	f7ff fb73 	bl	8002d78 <HAL_GetTick>
 8003692:	1bc0      	subs	r0, r0, r7
 8003694:	4540      	cmp	r0, r8
 8003696:	d9d6      	bls.n	8003646 <UART_WaitOnFlagUntilTimeout+0xe>
 8003698:	e7e6      	b.n	8003668 <UART_WaitOnFlagUntilTimeout+0x30>

0800369a <UART_CheckIdleState>:
 800369a:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800369c:	4604      	mov	r4, r0
 800369e:	2100      	movs	r1, #0
 80036a0:	66c1      	str	r1, [r0, #108]	@ 0x6c
 80036a2:	f7ff fb69 	bl	8002d78 <HAL_GetTick>
 80036a6:	6826      	ldr	r6, [r4, #0]
 80036a8:	6833      	ldr	r3, [r6, #0]
 80036aa:	071a      	lsls	r2, r3, #28
 80036ac:	4605      	mov	r5, r0
 80036ae:	d416      	bmi.n	80036de <UART_CheckIdleState+0x44>
 80036b0:	6833      	ldr	r3, [r6, #0]
 80036b2:	075b      	lsls	r3, r3, #29
 80036b4:	d50a      	bpl.n	80036cc <UART_CheckIdleState+0x32>
 80036b6:	f06f 437e 	mvn.w	r3, #4261412864	@ 0xfe000000
 80036ba:	9300      	str	r3, [sp, #0]
 80036bc:	2200      	movs	r2, #0
 80036be:	462b      	mov	r3, r5
 80036c0:	f44f 0180 	mov.w	r1, #4194304	@ 0x400000
 80036c4:	4620      	mov	r0, r4
 80036c6:	f7ff ffb7 	bl	8003638 <UART_WaitOnFlagUntilTimeout>
 80036ca:	b9a0      	cbnz	r0, 80036f6 <UART_CheckIdleState+0x5c>
 80036cc:	2320      	movs	r3, #32
 80036ce:	2000      	movs	r0, #0
 80036d0:	f884 3069 	strb.w	r3, [r4, #105]	@ 0x69
 80036d4:	f884 0068 	strb.w	r0, [r4, #104]	@ 0x68
 80036d8:	f884 306a 	strb.w	r3, [r4, #106]	@ 0x6a
 80036dc:	e00c      	b.n	80036f8 <UART_CheckIdleState+0x5e>
 80036de:	f06f 437e 	mvn.w	r3, #4261412864	@ 0xfe000000
 80036e2:	9300      	str	r3, [sp, #0]
 80036e4:	460a      	mov	r2, r1
 80036e6:	4603      	mov	r3, r0
 80036e8:	f44f 1100 	mov.w	r1, #2097152	@ 0x200000
 80036ec:	4620      	mov	r0, r4
 80036ee:	f7ff ffa3 	bl	8003638 <UART_WaitOnFlagUntilTimeout>
 80036f2:	2800      	cmp	r0, #0
 80036f4:	d0dc      	beq.n	80036b0 <UART_CheckIdleState+0x16>
 80036f6:	2003      	movs	r0, #3
 80036f8:	b002      	add	sp, #8
 80036fa:	bd70      	pop	{r4, r5, r6, pc}

080036fc <HAL_UART_Init>:
 80036fc:	b538      	push	{r3, r4, r5, lr}
 80036fe:	4604      	mov	r4, r0
 8003700:	b320      	cbz	r0, 800374c <HAL_UART_Init+0x50>
 8003702:	f890 3069 	ldrb.w	r3, [r0, #105]	@ 0x69
 8003706:	f003 02ff 	and.w	r2, r3, #255	@ 0xff
 800370a:	b90b      	cbnz	r3, 8003710 <HAL_UART_Init+0x14>
 800370c:	f880 2068 	strb.w	r2, [r0, #104]	@ 0x68
 8003710:	6825      	ldr	r5, [r4, #0]
 8003712:	2324      	movs	r3, #36	@ 0x24
 8003714:	f884 3069 	strb.w	r3, [r4, #105]	@ 0x69
 8003718:	682b      	ldr	r3, [r5, #0]
 800371a:	f023 0301 	bic.w	r3, r3, #1
 800371e:	602b      	str	r3, [r5, #0]
 8003720:	4620      	mov	r0, r4
 8003722:	f7ff fedb 	bl	80034dc <UART_SetConfig>
 8003726:	2801      	cmp	r0, #1
 8003728:	d010      	beq.n	800374c <HAL_UART_Init+0x50>
 800372a:	686b      	ldr	r3, [r5, #4]
 800372c:	f423 4390 	bic.w	r3, r3, #18432	@ 0x4800
 8003730:	606b      	str	r3, [r5, #4]
 8003732:	68ab      	ldr	r3, [r5, #8]
 8003734:	f023 032a 	bic.w	r3, r3, #42	@ 0x2a
 8003738:	60ab      	str	r3, [r5, #8]
 800373a:	682b      	ldr	r3, [r5, #0]
 800373c:	f043 0301 	orr.w	r3, r3, #1
 8003740:	602b      	str	r3, [r5, #0]
 8003742:	4620      	mov	r0, r4
 8003744:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8003748:	f7ff bfa7 	b.w	800369a <UART_CheckIdleState>
 800374c:	2001      	movs	r0, #1
 800374e:	bd38      	pop	{r3, r4, r5, pc}

08003750 <HAL_UART_Transmit>:
 8003750:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8003752:	461e      	mov	r6, r3
 8003754:	f890 3069 	ldrb.w	r3, [r0, #105]	@ 0x69
 8003758:	2b20      	cmp	r3, #32
 800375a:	460d      	mov	r5, r1
 800375c:	4604      	mov	r4, r0
 800375e:	4611      	mov	r1, r2
 8003760:	d14a      	bne.n	80037f8 <HAL_UART_Transmit+0xa8>
 8003762:	2d00      	cmp	r5, #0
 8003764:	d046      	beq.n	80037f4 <HAL_UART_Transmit+0xa4>
 8003766:	2a00      	cmp	r2, #0
 8003768:	d044      	beq.n	80037f4 <HAL_UART_Transmit+0xa4>
 800376a:	f890 3068 	ldrb.w	r3, [r0, #104]	@ 0x68
 800376e:	2b01      	cmp	r3, #1
 8003770:	d042      	beq.n	80037f8 <HAL_UART_Transmit+0xa8>
 8003772:	2301      	movs	r3, #1
 8003774:	f880 3068 	strb.w	r3, [r0, #104]	@ 0x68
 8003778:	2300      	movs	r3, #0
 800377a:	66c3      	str	r3, [r0, #108]	@ 0x6c
 800377c:	2321      	movs	r3, #33	@ 0x21
 800377e:	f880 3069 	strb.w	r3, [r0, #105]	@ 0x69
 8003782:	f7ff faf9 	bl	8002d78 <HAL_GetTick>
 8003786:	f8a4 1050 	strh.w	r1, [r4, #80]	@ 0x50
 800378a:	4607      	mov	r7, r0
 800378c:	f8a4 1052 	strh.w	r1, [r4, #82]	@ 0x52
 8003790:	f8b4 2052 	ldrh.w	r2, [r4, #82]	@ 0x52
 8003794:	b292      	uxth	r2, r2
 8003796:	b962      	cbnz	r2, 80037b2 <HAL_UART_Transmit+0x62>
 8003798:	9600      	str	r6, [sp, #0]
 800379a:	463b      	mov	r3, r7
 800379c:	2140      	movs	r1, #64	@ 0x40
 800379e:	4620      	mov	r0, r4
 80037a0:	f7ff ff4a 	bl	8003638 <UART_WaitOnFlagUntilTimeout>
 80037a4:	b998      	cbnz	r0, 80037ce <HAL_UART_Transmit+0x7e>
 80037a6:	2320      	movs	r3, #32
 80037a8:	f884 3069 	strb.w	r3, [r4, #105]	@ 0x69
 80037ac:	f884 0068 	strb.w	r0, [r4, #104]	@ 0x68
 80037b0:	e00e      	b.n	80037d0 <HAL_UART_Transmit+0x80>
 80037b2:	f8b4 2052 	ldrh.w	r2, [r4, #82]	@ 0x52
 80037b6:	3a01      	subs	r2, #1
 80037b8:	b292      	uxth	r2, r2
 80037ba:	f8a4 2052 	strh.w	r2, [r4, #82]	@ 0x52
 80037be:	463b      	mov	r3, r7
 80037c0:	9600      	str	r6, [sp, #0]
 80037c2:	2200      	movs	r2, #0
 80037c4:	2180      	movs	r1, #128	@ 0x80
 80037c6:	4620      	mov	r0, r4
 80037c8:	f7ff ff36 	bl	8003638 <UART_WaitOnFlagUntilTimeout>
 80037cc:	b110      	cbz	r0, 80037d4 <HAL_UART_Transmit+0x84>
 80037ce:	2003      	movs	r0, #3
 80037d0:	b003      	add	sp, #12
 80037d2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80037d4:	68a3      	ldr	r3, [r4, #8]
 80037d6:	6822      	ldr	r2, [r4, #0]
 80037d8:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 80037dc:	d107      	bne.n	80037ee <HAL_UART_Transmit+0x9e>
 80037de:	6923      	ldr	r3, [r4, #16]
 80037e0:	b92b      	cbnz	r3, 80037ee <HAL_UART_Transmit+0x9e>
 80037e2:	f835 3b02 	ldrh.w	r3, [r5], #2
 80037e6:	f3c3 0308 	ubfx	r3, r3, #0, #9
 80037ea:	8513      	strh	r3, [r2, #40]	@ 0x28
 80037ec:	e7d0      	b.n	8003790 <HAL_UART_Transmit+0x40>
 80037ee:	f815 3b01 	ldrb.w	r3, [r5], #1
 80037f2:	e7fa      	b.n	80037ea <HAL_UART_Transmit+0x9a>
 80037f4:	2001      	movs	r0, #1
 80037f6:	e7eb      	b.n	80037d0 <HAL_UART_Transmit+0x80>
 80037f8:	2002      	movs	r0, #2
 80037fa:	e7e9      	b.n	80037d0 <HAL_UART_Transmit+0x80>

080037fc <HAL_UART_Receive>:
 80037fc:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8003800:	461e      	mov	r6, r3
 8003802:	f890 306a 	ldrb.w	r3, [r0, #106]	@ 0x6a
 8003806:	2b20      	cmp	r3, #32
 8003808:	460d      	mov	r5, r1
 800380a:	4604      	mov	r4, r0
 800380c:	4611      	mov	r1, r2
 800380e:	d15c      	bne.n	80038ca <HAL_UART_Receive+0xce>
 8003810:	2d00      	cmp	r5, #0
 8003812:	d058      	beq.n	80038c6 <HAL_UART_Receive+0xca>
 8003814:	2a00      	cmp	r2, #0
 8003816:	d056      	beq.n	80038c6 <HAL_UART_Receive+0xca>
 8003818:	f890 3068 	ldrb.w	r3, [r0, #104]	@ 0x68
 800381c:	2b01      	cmp	r3, #1
 800381e:	d054      	beq.n	80038ca <HAL_UART_Receive+0xce>
 8003820:	2301      	movs	r3, #1
 8003822:	f880 3068 	strb.w	r3, [r0, #104]	@ 0x68
 8003826:	6803      	ldr	r3, [r0, #0]
 8003828:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 800382c:	621a      	str	r2, [r3, #32]
 800382e:	2300      	movs	r3, #0
 8003830:	66c3      	str	r3, [r0, #108]	@ 0x6c
 8003832:	2322      	movs	r3, #34	@ 0x22
 8003834:	f880 306a 	strb.w	r3, [r0, #106]	@ 0x6a
 8003838:	f7ff fa9e 	bl	8002d78 <HAL_GetTick>
 800383c:	68a3      	ldr	r3, [r4, #8]
 800383e:	f8a4 1058 	strh.w	r1, [r4, #88]	@ 0x58
 8003842:	f5b3 5f80 	cmp.w	r3, #4096	@ 0x1000
 8003846:	4680      	mov	r8, r0
 8003848:	f8a4 105a 	strh.w	r1, [r4, #90]	@ 0x5a
 800384c:	d115      	bne.n	800387a <HAL_UART_Receive+0x7e>
 800384e:	6923      	ldr	r3, [r4, #16]
 8003850:	b98b      	cbnz	r3, 8003876 <HAL_UART_Receive+0x7a>
 8003852:	f240 13ff 	movw	r3, #511	@ 0x1ff
 8003856:	f8a4 305c 	strh.w	r3, [r4, #92]	@ 0x5c
 800385a:	f8b4 705c 	ldrh.w	r7, [r4, #92]	@ 0x5c
 800385e:	f8b4 005a 	ldrh.w	r0, [r4, #90]	@ 0x5a
 8003862:	b280      	uxth	r0, r0
 8003864:	b980      	cbnz	r0, 8003888 <HAL_UART_Receive+0x8c>
 8003866:	2320      	movs	r3, #32
 8003868:	f884 306a 	strb.w	r3, [r4, #106]	@ 0x6a
 800386c:	f884 0068 	strb.w	r0, [r4, #104]	@ 0x68
 8003870:	b002      	add	sp, #8
 8003872:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003876:	23ff      	movs	r3, #255	@ 0xff
 8003878:	e7ed      	b.n	8003856 <HAL_UART_Receive+0x5a>
 800387a:	2b00      	cmp	r3, #0
 800387c:	d1ed      	bne.n	800385a <HAL_UART_Receive+0x5e>
 800387e:	6923      	ldr	r3, [r4, #16]
 8003880:	2b00      	cmp	r3, #0
 8003882:	d0f8      	beq.n	8003876 <HAL_UART_Receive+0x7a>
 8003884:	237f      	movs	r3, #127	@ 0x7f
 8003886:	e7e6      	b.n	8003856 <HAL_UART_Receive+0x5a>
 8003888:	f8b4 205a 	ldrh.w	r2, [r4, #90]	@ 0x5a
 800388c:	3a01      	subs	r2, #1
 800388e:	b292      	uxth	r2, r2
 8003890:	f8a4 205a 	strh.w	r2, [r4, #90]	@ 0x5a
 8003894:	4643      	mov	r3, r8
 8003896:	9600      	str	r6, [sp, #0]
 8003898:	2200      	movs	r2, #0
 800389a:	2120      	movs	r1, #32
 800389c:	4620      	mov	r0, r4
 800389e:	f7ff fecb 	bl	8003638 <UART_WaitOnFlagUntilTimeout>
 80038a2:	b9a0      	cbnz	r0, 80038ce <HAL_UART_Receive+0xd2>
 80038a4:	68a2      	ldr	r2, [r4, #8]
 80038a6:	6823      	ldr	r3, [r4, #0]
 80038a8:	f5b2 5f80 	cmp.w	r2, #4096	@ 0x1000
 80038ac:	d106      	bne.n	80038bc <HAL_UART_Receive+0xc0>
 80038ae:	6922      	ldr	r2, [r4, #16]
 80038b0:	b922      	cbnz	r2, 80038bc <HAL_UART_Receive+0xc0>
 80038b2:	8c9b      	ldrh	r3, [r3, #36]	@ 0x24
 80038b4:	403b      	ands	r3, r7
 80038b6:	f825 3b02 	strh.w	r3, [r5], #2
 80038ba:	e7d0      	b.n	800385e <HAL_UART_Receive+0x62>
 80038bc:	8c9b      	ldrh	r3, [r3, #36]	@ 0x24
 80038be:	403b      	ands	r3, r7
 80038c0:	f805 3b01 	strb.w	r3, [r5], #1
 80038c4:	e7cb      	b.n	800385e <HAL_UART_Receive+0x62>
 80038c6:	2001      	movs	r0, #1
 80038c8:	e7d2      	b.n	8003870 <HAL_UART_Receive+0x74>
 80038ca:	2002      	movs	r0, #2
 80038cc:	e7d0      	b.n	8003870 <HAL_UART_Receive+0x74>
 80038ce:	2003      	movs	r0, #3
 80038d0:	e7ce      	b.n	8003870 <HAL_UART_Receive+0x74>
	...

080038d4 <_sbrk>:
 80038d4:	4a0a      	ldr	r2, [pc, #40]	@ (8003900 <_sbrk+0x2c>)
 80038d6:	6811      	ldr	r1, [r2, #0]
 80038d8:	b508      	push	{r3, lr}
 80038da:	4603      	mov	r3, r0
 80038dc:	b909      	cbnz	r1, 80038e2 <_sbrk+0xe>
 80038de:	4909      	ldr	r1, [pc, #36]	@ (8003904 <_sbrk+0x30>)
 80038e0:	6011      	str	r1, [r2, #0]
 80038e2:	6810      	ldr	r0, [r2, #0]
 80038e4:	4669      	mov	r1, sp
 80038e6:	4403      	add	r3, r0
 80038e8:	428b      	cmp	r3, r1
 80038ea:	d906      	bls.n	80038fa <_sbrk+0x26>
 80038ec:	f7fd f9cc 	bl	8000c88 <__errno>
 80038f0:	230c      	movs	r3, #12
 80038f2:	6003      	str	r3, [r0, #0]
 80038f4:	f04f 30ff 	mov.w	r0, #4294967295	@ 0xffffffff
 80038f8:	bd08      	pop	{r3, pc}
 80038fa:	6013      	str	r3, [r2, #0]
 80038fc:	e7fc      	b.n	80038f8 <_sbrk+0x24>
 80038fe:	bf00      	nop
 8003900:	20000398 	.word	0x20000398
 8003904:	200004e8 	.word	0x200004e8

08003908 <Reset_Handler>:
 8003908:	2100      	movs	r1, #0
 800390a:	e003      	b.n	8003914 <LoopCopyDataInit>

0800390c <CopyDataInit>:
 800390c:	4b0b      	ldr	r3, [pc, #44]	@ (800393c <LoopForever+0x2>)
 800390e:	585b      	ldr	r3, [r3, r1]
 8003910:	5043      	str	r3, [r0, r1]
 8003912:	3104      	adds	r1, #4

08003914 <LoopCopyDataInit>:
 8003914:	480a      	ldr	r0, [pc, #40]	@ (8003940 <LoopForever+0x6>)
 8003916:	4b0b      	ldr	r3, [pc, #44]	@ (8003944 <LoopForever+0xa>)
 8003918:	1842      	adds	r2, r0, r1
 800391a:	429a      	cmp	r2, r3
 800391c:	d3f6      	bcc.n	800390c <CopyDataInit>
 800391e:	4a0a      	ldr	r2, [pc, #40]	@ (8003948 <LoopForever+0xe>)
 8003920:	e002      	b.n	8003928 <LoopFillZerobss>

08003922 <FillZerobss>:
 8003922:	2300      	movs	r3, #0
 8003924:	6013      	str	r3, [r2, #0]
 8003926:	3204      	adds	r2, #4

08003928 <LoopFillZerobss>:
 8003928:	4b08      	ldr	r3, [pc, #32]	@ (800394c <LoopForever+0x12>)
 800392a:	429a      	cmp	r2, r3
 800392c:	d3f9      	bcc.n	8003922 <FillZerobss>
 800392e:	f3af 8000 	nop.w
 8003932:	f7fd f92f 	bl	8000b94 <__libc_init_array>
 8003936:	f7fd fc49 	bl	80011cc <main>

0800393a <LoopForever>:
 800393a:	e7fe      	b.n	800393a <LoopForever>
 800393c:	08003a6c 	.word	0x08003a6c
 8003940:	20000000 	.word	0x20000000
 8003944:	20000050 	.word	0x20000050
 8003948:	20000050 	.word	0x20000050
 800394c:	200004e4 	.word	0x200004e4

08003950 <BusFault_Handler>:
 8003950:	e7fe      	b.n	8003950 <BusFault_Handler>
	...

08003954 <_init>:
 8003954:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003956:	bf00      	nop
 8003958:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800395a:	bc08      	pop	{r3}
 800395c:	469e      	mov	lr, r3
 800395e:	4770      	bx	lr

08003960 <_fini>:
 8003960:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003962:	bf00      	nop
 8003964:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003966:	bc08      	pop	{r3}
 8003968:	469e      	mov	lr, r3
 800396a:	4770      	bx	lr
