
main:     file format elf32-littleriscv


Disassembly of section .text:

000100b4 <exit>:
   100b4:	1141                	c.addi	sp,-16
   100b6:	4581                	c.li	a1,0
   100b8:	c422                	c.swsp	s0,8(sp)
   100ba:	c606                	c.swsp	ra,12(sp)
   100bc:	842a                	c.mv	s0,a0
   100be:	75e000ef          	jal	ra,1081c <__call_exitprocs>
   100c2:	f201a783          	lw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   100c6:	c391                	c.beqz	a5,100ca <exit+0x16>
   100c8:	9782                	c.jalr	a5
   100ca:	8522                	c.mv	a0,s0
   100cc:	0c0080ef          	jal	ra,1818c <_exit>

000100d0 <register_fini>:
   100d0:	00000793          	addi	a5,zero,0
   100d4:	c791                	c.beqz	a5,100e0 <register_fini+0x10>
   100d6:	6551                	c.lui	a0,0x14
   100d8:	d7450513          	addi	a0,a0,-652 # 13d74 <__libc_fini_array>
   100dc:	00f0006f          	jal	zero,108ea <atexit>
   100e0:	8082                	c.jr	ra

000100e2 <_start>:
   100e2:	0000b197          	auipc	gp,0xb
   100e6:	72e18193          	addi	gp,gp,1838 # 1b810 <__global_pointer$>
   100ea:	f2018513          	addi	a0,gp,-224 # 1b730 <__stdio_exit_handler>
   100ee:	24c18613          	addi	a2,gp,588 # 1ba5c <__BSS_END__>
   100f2:	8e09                	c.sub	a2,a0
   100f4:	4581                	c.li	a1,0
   100f6:	2dbd                	c.jal	10774 <memset>
   100f8:	00000517          	auipc	a0,0x0
   100fc:	7f250513          	addi	a0,a0,2034 # 108ea <atexit>
   10100:	c519                	c.beqz	a0,1010e <_start+0x2c>
   10102:	00004517          	auipc	a0,0x4
   10106:	c7250513          	addi	a0,a0,-910 # 13d74 <__libc_fini_array>
   1010a:	7e0000ef          	jal	ra,108ea <atexit>
   1010e:	2bf5                	c.jal	1070a <__libc_init_array>
   10110:	4502                	c.lwsp	a0,0(sp)
   10112:	004c                	c.addi4spn	a1,sp,4
   10114:	4601                	c.li	a2,0
   10116:	20b1                	c.jal	10162 <main>
   10118:	bf71                	c.j	100b4 <exit>

0001011a <__do_global_dtors_aux>:
   1011a:	1141                	c.addi	sp,-16
   1011c:	c422                	c.swsp	s0,8(sp)
   1011e:	f401c783          	lbu	a5,-192(gp) # 1b750 <completed.1>
   10122:	c606                	c.swsp	ra,12(sp)
   10124:	ef91                	c.bnez	a5,10140 <__do_global_dtors_aux+0x26>
   10126:	00000793          	addi	a5,zero,0
   1012a:	cb81                	c.beqz	a5,1013a <__do_global_dtors_aux+0x20>
   1012c:	656d                	c.lui	a0,0x1b
   1012e:	f9850513          	addi	a0,a0,-104 # 1af98 <__EH_FRAME_BEGIN__>
   10132:	00000097          	auipc	ra,0x0
   10136:	000000e7          	jalr	ra,0(zero) # 0 <exit-0x100b4>
   1013a:	4785                	c.li	a5,1
   1013c:	f4f18023          	sb	a5,-192(gp) # 1b750 <completed.1>
   10140:	40b2                	c.lwsp	ra,12(sp)
   10142:	4422                	c.lwsp	s0,8(sp)
   10144:	0141                	c.addi	sp,16
   10146:	8082                	c.jr	ra

00010148 <frame_dummy>:
   10148:	00000793          	addi	a5,zero,0
   1014c:	cb91                	c.beqz	a5,10160 <frame_dummy+0x18>
   1014e:	656d                	c.lui	a0,0x1b
   10150:	f4418593          	addi	a1,gp,-188 # 1b754 <object.0>
   10154:	f9850513          	addi	a0,a0,-104 # 1af98 <__EH_FRAME_BEGIN__>
   10158:	00000317          	auipc	t1,0x0
   1015c:	00000067          	jalr	zero,0(zero) # 0 <exit-0x100b4>
   10160:	8082                	c.jr	ra

00010162 <main>:
   10162:	1101                	c.addi	sp,-32
   10164:	ce06                	c.swsp	ra,28(sp)
   10166:	cc22                	c.swsp	s0,24(sp)
   10168:	1000                	c.addi4spn	s0,sp,32
   1016a:	4799                	c.li	a5,6
   1016c:	fef42623          	sw	a5,-20(s0)
   10170:	4799                	c.li	a5,6
   10172:	fef42423          	sw	a5,-24(s0)
   10176:	fec42703          	lw	a4,-20(s0)
   1017a:	fe842783          	lw	a5,-24(s0)
   1017e:	97ba                	c.add	a5,a4
   10180:	fef42223          	sw	a5,-28(s0)
   10184:	67e9                	c.lui	a5,0x1a
   10186:	72078613          	addi	a2,a5,1824 # 1a720 <__clzsi2+0x40>
   1018a:	fe442583          	lw	a1,-28(s0)
   1018e:	67e9                	c.lui	a5,0x1a
   10190:	72478513          	addi	a0,a5,1828 # 1a724 <__clzsi2+0x44>
   10194:	2e21                	c.jal	104ac <printf>
   10196:	4781                	c.li	a5,0
   10198:	853e                	c.mv	a0,a5
   1019a:	40f2                	c.lwsp	ra,28(sp)
   1019c:	4462                	c.lwsp	s0,24(sp)
   1019e:	6105                	c.addi16sp	sp,32
   101a0:	8082                	c.jr	ra

000101a2 <__fp_lock>:
   101a2:	4501                	c.li	a0,0
   101a4:	8082                	c.jr	ra

000101a6 <stdio_exit_handler>:
   101a6:	666d                	c.lui	a2,0x1b
   101a8:	65cd                	c.lui	a1,0x13
   101aa:	656d                	c.lui	a0,0x1b
   101ac:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   101b0:	4f858593          	addi	a1,a1,1272 # 134f8 <_fclose_r>
   101b4:	02050513          	addi	a0,a0,32 # 1b020 <_impure_data>
   101b8:	aca9                	c.j	10412 <_fwalk_sglue>

000101ba <cleanup_stdio>:
   101ba:	414c                	c.lw	a1,4(a0)
   101bc:	1141                	c.addi	sp,-16
   101be:	c422                	c.swsp	s0,8(sp)
   101c0:	c606                	c.swsp	ra,12(sp)
   101c2:	f5c18793          	addi	a5,gp,-164 # 1b76c <__sf>
   101c6:	842a                	c.mv	s0,a0
   101c8:	00f58463          	beq	a1,a5,101d0 <cleanup_stdio+0x16>
   101cc:	32c030ef          	jal	ra,134f8 <_fclose_r>
   101d0:	440c                	c.lw	a1,8(s0)
   101d2:	fc418793          	addi	a5,gp,-60 # 1b7d4 <__sf+0x68>
   101d6:	00f58563          	beq	a1,a5,101e0 <cleanup_stdio+0x26>
   101da:	8522                	c.mv	a0,s0
   101dc:	31c030ef          	jal	ra,134f8 <_fclose_r>
   101e0:	444c                	c.lw	a1,12(s0)
   101e2:	02c18793          	addi	a5,gp,44 # 1b83c <__global_pointer$+0x2c>
   101e6:	00f58863          	beq	a1,a5,101f6 <cleanup_stdio+0x3c>
   101ea:	8522                	c.mv	a0,s0
   101ec:	4422                	c.lwsp	s0,8(sp)
   101ee:	40b2                	c.lwsp	ra,12(sp)
   101f0:	0141                	c.addi	sp,16
   101f2:	3060306f          	jal	zero,134f8 <_fclose_r>
   101f6:	40b2                	c.lwsp	ra,12(sp)
   101f8:	4422                	c.lwsp	s0,8(sp)
   101fa:	0141                	c.addi	sp,16
   101fc:	8082                	c.jr	ra

000101fe <__fp_unlock>:
   101fe:	4501                	c.li	a0,0
   10200:	8082                	c.jr	ra

00010202 <global_stdio_init.part.0>:
   10202:	1101                	c.addi	sp,-32
   10204:	cc22                	c.swsp	s0,24(sp)
   10206:	67c1                	c.lui	a5,0x10
   10208:	f5c18413          	addi	s0,gp,-164 # 1b76c <__sf>
   1020c:	ce06                	c.swsp	ra,28(sp)
   1020e:	ca26                	c.swsp	s1,20(sp)
   10210:	c84a                	c.swsp	s2,16(sp)
   10212:	c64e                	c.swsp	s3,12(sp)
   10214:	c452                	c.swsp	s4,8(sp)
   10216:	4711                	c.li	a4,4
   10218:	1a678793          	addi	a5,a5,422 # 101a6 <stdio_exit_handler>
   1021c:	4621                	c.li	a2,8
   1021e:	4581                	c.li	a1,0
   10220:	fb818513          	addi	a0,gp,-72 # 1b7c8 <__sf+0x5c>
   10224:	f2f1a023          	sw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   10228:	c458                	c.sw	a4,12(s0)
   1022a:	00042023          	sw	zero,0(s0)
   1022e:	00042223          	sw	zero,4(s0)
   10232:	00042423          	sw	zero,8(s0)
   10236:	06042223          	sw	zero,100(s0)
   1023a:	00042823          	sw	zero,16(s0)
   1023e:	00042a23          	sw	zero,20(s0)
   10242:	00042c23          	sw	zero,24(s0)
   10246:	233d                	c.jal	10774 <memset>
   10248:	67c1                	c.lui	a5,0x10
   1024a:	6a41                	c.lui	s4,0x10
   1024c:	69c1                	c.lui	s3,0x10
   1024e:	6941                	c.lui	s2,0x10
   10250:	64c1                	c.lui	s1,0x10
   10252:	4d8a0a13          	addi	s4,s4,1240 # 104d8 <__sread>
   10256:	51298993          	addi	s3,s3,1298 # 10512 <__swrite>
   1025a:	56290913          	addi	s2,s2,1378 # 10562 <__sseek>
   1025e:	59e48493          	addi	s1,s1,1438 # 1059e <__sclose>
   10262:	07a5                	c.addi	a5,9 # 10009 <exit-0xab>
   10264:	4621                	c.li	a2,8
   10266:	4581                	c.li	a1,0
   10268:	02018513          	addi	a0,gp,32 # 1b830 <__global_pointer$+0x20>
   1026c:	d87c                	c.sw	a5,116(s0)
   1026e:	03442023          	sw	s4,32(s0)
   10272:	03342223          	sw	s3,36(s0)
   10276:	03242423          	sw	s2,40(s0)
   1027a:	d444                	c.sw	s1,44(s0)
   1027c:	cc40                	c.sw	s0,28(s0)
   1027e:	06042423          	sw	zero,104(s0)
   10282:	06042623          	sw	zero,108(s0)
   10286:	06042823          	sw	zero,112(s0)
   1028a:	0c042623          	sw	zero,204(s0)
   1028e:	06042c23          	sw	zero,120(s0)
   10292:	06042e23          	sw	zero,124(s0)
   10296:	08042023          	sw	zero,128(s0)
   1029a:	29e9                	c.jal	10774 <memset>
   1029c:	000207b7          	lui	a5,0x20
   102a0:	07c9                	c.addi	a5,18 # 20012 <__BSS_END__+0x45b6>
   102a2:	fc418713          	addi	a4,gp,-60 # 1b7d4 <__sf+0x68>
   102a6:	08818513          	addi	a0,gp,136 # 1b898 <__global_pointer$+0x88>
   102aa:	4621                	c.li	a2,8
   102ac:	4581                	c.li	a1,0
   102ae:	09442423          	sw	s4,136(s0)
   102b2:	09342623          	sw	s3,140(s0)
   102b6:	09242823          	sw	s2,144(s0)
   102ba:	08942a23          	sw	s1,148(s0)
   102be:	0cf42e23          	sw	a5,220(s0)
   102c2:	0c042823          	sw	zero,208(s0)
   102c6:	0c042a23          	sw	zero,212(s0)
   102ca:	0c042c23          	sw	zero,216(s0)
   102ce:	12042a23          	sw	zero,308(s0)
   102d2:	0e042023          	sw	zero,224(s0)
   102d6:	0e042223          	sw	zero,228(s0)
   102da:	0e042423          	sw	zero,232(s0)
   102de:	08e42223          	sw	a4,132(s0)
   102e2:	2949                	c.jal	10774 <memset>
   102e4:	02c18793          	addi	a5,gp,44 # 1b83c <__global_pointer$+0x2c>
   102e8:	0f442823          	sw	s4,240(s0)
   102ec:	0f342a23          	sw	s3,244(s0)
   102f0:	0f242c23          	sw	s2,248(s0)
   102f4:	0e942e23          	sw	s1,252(s0)
   102f8:	40f2                	c.lwsp	ra,28(sp)
   102fa:	0ef42623          	sw	a5,236(s0)
   102fe:	4462                	c.lwsp	s0,24(sp)
   10300:	44d2                	c.lwsp	s1,20(sp)
   10302:	4942                	c.lwsp	s2,16(sp)
   10304:	49b2                	c.lwsp	s3,12(sp)
   10306:	4a22                	c.lwsp	s4,8(sp)
   10308:	6105                	c.addi16sp	sp,32
   1030a:	8082                	c.jr	ra

0001030c <__sfp>:
   1030c:	f201a783          	lw	a5,-224(gp) # 1b730 <__stdio_exit_handler>
   10310:	1101                	c.addi	sp,-32
   10312:	c64e                	c.swsp	s3,12(sp)
   10314:	ce06                	c.swsp	ra,28(sp)
   10316:	cc22                	c.swsp	s0,24(sp)
   10318:	ca26                	c.swsp	s1,20(sp)
   1031a:	c84a                	c.swsp	s2,16(sp)
   1031c:	89aa                	c.mv	s3,a0
   1031e:	c7cd                	c.beqz	a5,103c8 <__sfp+0xbc>
   10320:	696d                	c.lui	s2,0x1b
   10322:	01090913          	addi	s2,s2,16 # 1b010 <__sglue>
   10326:	54fd                	c.li	s1,-1
   10328:	00492783          	lw	a5,4(s2)
   1032c:	00892403          	lw	s0,8(s2)
   10330:	17fd                	c.addi	a5,-1
   10332:	0007d763          	bge	a5,zero,10340 <__sfp+0x34>
   10336:	a8b9                	c.j	10394 <__sfp+0x88>
   10338:	06840413          	addi	s0,s0,104
   1033c:	04978c63          	beq	a5,s1,10394 <__sfp+0x88>
   10340:	00c41703          	lh	a4,12(s0)
   10344:	17fd                	c.addi	a5,-1
   10346:	fb6d                	c.bnez	a4,10338 <__sfp+0x2c>
   10348:	77c1                	c.lui	a5,0xffff0
   1034a:	0785                	c.addi	a5,1 # ffff0001 <__BSS_END__+0xfffd45a5>
   1034c:	06042223          	sw	zero,100(s0)
   10350:	00042023          	sw	zero,0(s0)
   10354:	00042423          	sw	zero,8(s0)
   10358:	00042223          	sw	zero,4(s0)
   1035c:	00042823          	sw	zero,16(s0)
   10360:	00042a23          	sw	zero,20(s0)
   10364:	00042c23          	sw	zero,24(s0)
   10368:	c45c                	c.sw	a5,12(s0)
   1036a:	4621                	c.li	a2,8
   1036c:	4581                	c.li	a1,0
   1036e:	05c40513          	addi	a0,s0,92
   10372:	2109                	c.jal	10774 <memset>
   10374:	02042823          	sw	zero,48(s0)
   10378:	02042a23          	sw	zero,52(s0)
   1037c:	04042223          	sw	zero,68(s0)
   10380:	04042423          	sw	zero,72(s0)
   10384:	40f2                	c.lwsp	ra,28(sp)
   10386:	8522                	c.mv	a0,s0
   10388:	4462                	c.lwsp	s0,24(sp)
   1038a:	44d2                	c.lwsp	s1,20(sp)
   1038c:	4942                	c.lwsp	s2,16(sp)
   1038e:	49b2                	c.lwsp	s3,12(sp)
   10390:	6105                	c.addi16sp	sp,32
   10392:	8082                	c.jr	ra
   10394:	00092403          	lw	s0,0(s2)
   10398:	c019                	c.beqz	s0,1039e <__sfp+0x92>
   1039a:	8922                	c.mv	s2,s0
   1039c:	b771                	c.j	10328 <__sfp+0x1c>
   1039e:	1ac00593          	addi	a1,zero,428
   103a2:	854e                	c.mv	a0,s3
   103a4:	039000ef          	jal	ra,10bdc <_malloc_r>
   103a8:	842a                	c.mv	s0,a0
   103aa:	c10d                	c.beqz	a0,103cc <__sfp+0xc0>
   103ac:	4791                	c.li	a5,4
   103ae:	0531                	c.addi	a0,12
   103b0:	00042023          	sw	zero,0(s0)
   103b4:	c05c                	c.sw	a5,4(s0)
   103b6:	c408                	c.sw	a0,8(s0)
   103b8:	1a000613          	addi	a2,zero,416
   103bc:	4581                	c.li	a1,0
   103be:	2e5d                	c.jal	10774 <memset>
   103c0:	00892023          	sw	s0,0(s2)
   103c4:	8922                	c.mv	s2,s0
   103c6:	b78d                	c.j	10328 <__sfp+0x1c>
   103c8:	3d2d                	c.jal	10202 <global_stdio_init.part.0>
   103ca:	bf99                	c.j	10320 <__sfp+0x14>
   103cc:	00092023          	sw	zero,0(s2)
   103d0:	47b1                	c.li	a5,12
   103d2:	00f9a023          	sw	a5,0(s3)
   103d6:	b77d                	c.j	10384 <__sfp+0x78>

000103d8 <__sinit>:
   103d8:	595c                	c.lw	a5,52(a0)
   103da:	c391                	c.beqz	a5,103de <__sinit+0x6>
   103dc:	8082                	c.jr	ra
   103de:	67c1                	c.lui	a5,0x10
   103e0:	f201a703          	lw	a4,-224(gp) # 1b730 <__stdio_exit_handler>
   103e4:	1ba78793          	addi	a5,a5,442 # 101ba <cleanup_stdio>
   103e8:	d95c                	c.sw	a5,52(a0)
   103ea:	fb6d                	c.bnez	a4,103dc <__sinit+0x4>
   103ec:	bd19                	c.j	10202 <global_stdio_init.part.0>

000103ee <__sfp_lock_acquire>:
   103ee:	8082                	c.jr	ra

000103f0 <__sfp_lock_release>:
   103f0:	8082                	c.jr	ra

000103f2 <__fp_lock_all>:
   103f2:	666d                	c.lui	a2,0x1b
   103f4:	65c1                	c.lui	a1,0x10
   103f6:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   103fa:	1a258593          	addi	a1,a1,418 # 101a2 <__fp_lock>
   103fe:	4501                	c.li	a0,0
   10400:	a809                	c.j	10412 <_fwalk_sglue>

00010402 <__fp_unlock_all>:
   10402:	666d                	c.lui	a2,0x1b
   10404:	65c1                	c.lui	a1,0x10
   10406:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   1040a:	1fe58593          	addi	a1,a1,510 # 101fe <__fp_unlock>
   1040e:	4501                	c.li	a0,0
   10410:	a009                	c.j	10412 <_fwalk_sglue>

00010412 <_fwalk_sglue>:
   10412:	7179                	c.addi16sp	sp,-48
   10414:	d04a                	c.swsp	s2,32(sp)
   10416:	ce4e                	c.swsp	s3,28(sp)
   10418:	cc52                	c.swsp	s4,24(sp)
   1041a:	ca56                	c.swsp	s5,20(sp)
   1041c:	c85a                	c.swsp	s6,16(sp)
   1041e:	c65e                	c.swsp	s7,12(sp)
   10420:	d606                	c.swsp	ra,44(sp)
   10422:	d422                	c.swsp	s0,40(sp)
   10424:	d226                	c.swsp	s1,36(sp)
   10426:	8b2a                	c.mv	s6,a0
   10428:	8bae                	c.mv	s7,a1
   1042a:	8ab2                	c.mv	s5,a2
   1042c:	4a01                	c.li	s4,0
   1042e:	4985                	c.li	s3,1
   10430:	597d                	c.li	s2,-1
   10432:	004aa483          	lw	s1,4(s5)
   10436:	008aa403          	lw	s0,8(s5)
   1043a:	14fd                	c.addi	s1,-1
   1043c:	0204c463          	blt	s1,zero,10464 <_fwalk_sglue+0x52>
   10440:	00c45783          	lhu	a5,12(s0)
   10444:	00f9fb63          	bgeu	s3,a5,1045a <_fwalk_sglue+0x48>
   10448:	00e41783          	lh	a5,14(s0)
   1044c:	85a2                	c.mv	a1,s0
   1044e:	855a                	c.mv	a0,s6
   10450:	01278563          	beq	a5,s2,1045a <_fwalk_sglue+0x48>
   10454:	9b82                	c.jalr	s7
   10456:	00aa6a33          	or	s4,s4,a0
   1045a:	14fd                	c.addi	s1,-1
   1045c:	06840413          	addi	s0,s0,104
   10460:	ff2490e3          	bne	s1,s2,10440 <_fwalk_sglue+0x2e>
   10464:	000aaa83          	lw	s5,0(s5)
   10468:	fc0a95e3          	bne	s5,zero,10432 <_fwalk_sglue+0x20>
   1046c:	50b2                	c.lwsp	ra,44(sp)
   1046e:	5422                	c.lwsp	s0,40(sp)
   10470:	5492                	c.lwsp	s1,36(sp)
   10472:	5902                	c.lwsp	s2,32(sp)
   10474:	49f2                	c.lwsp	s3,28(sp)
   10476:	4ad2                	c.lwsp	s5,20(sp)
   10478:	4b42                	c.lwsp	s6,16(sp)
   1047a:	4bb2                	c.lwsp	s7,12(sp)
   1047c:	8552                	c.mv	a0,s4
   1047e:	4a62                	c.lwsp	s4,24(sp)
   10480:	6145                	c.addi16sp	sp,48
   10482:	8082                	c.jr	ra

00010484 <_printf_r>:
   10484:	7139                	c.addi16sp	sp,-64
   10486:	8e2e                	c.mv	t3,a1
   10488:	450c                	c.lw	a1,8(a0)
   1048a:	02810313          	addi	t1,sp,40
   1048e:	d432                	c.swsp	a2,40(sp)
   10490:	d636                	c.swsp	a3,44(sp)
   10492:	8672                	c.mv	a2,t3
   10494:	869a                	c.mv	a3,t1
   10496:	ce06                	c.swsp	ra,28(sp)
   10498:	d83a                	c.swsp	a4,48(sp)
   1049a:	da3e                	c.swsp	a5,52(sp)
   1049c:	dc42                	c.swsp	a6,56(sp)
   1049e:	de46                	c.swsp	a7,60(sp)
   104a0:	c61a                	c.swsp	t1,12(sp)
   104a2:	50b000ef          	jal	ra,111ac <_vfprintf_r>
   104a6:	40f2                	c.lwsp	ra,28(sp)
   104a8:	6121                	c.addi16sp	sp,64
   104aa:	8082                	c.jr	ra

000104ac <printf>:
   104ac:	f141a303          	lw	t1,-236(gp) # 1b724 <_impure_ptr>
   104b0:	7139                	c.addi16sp	sp,-64
   104b2:	d432                	c.swsp	a2,40(sp)
   104b4:	d636                	c.swsp	a3,44(sp)
   104b6:	d22e                	c.swsp	a1,36(sp)
   104b8:	d83a                	c.swsp	a4,48(sp)
   104ba:	da3e                	c.swsp	a5,52(sp)
   104bc:	dc42                	c.swsp	a6,56(sp)
   104be:	de46                	c.swsp	a7,60(sp)
   104c0:	00832583          	lw	a1,8(t1) # 10160 <frame_dummy+0x18>
   104c4:	1054                	c.addi4spn	a3,sp,36
   104c6:	862a                	c.mv	a2,a0
   104c8:	851a                	c.mv	a0,t1
   104ca:	ce06                	c.swsp	ra,28(sp)
   104cc:	c636                	c.swsp	a3,12(sp)
   104ce:	4df000ef          	jal	ra,111ac <_vfprintf_r>
   104d2:	40f2                	c.lwsp	ra,28(sp)
   104d4:	6121                	c.addi16sp	sp,64
   104d6:	8082                	c.jr	ra

000104d8 <__sread>:
   104d8:	1141                	c.addi	sp,-16
   104da:	c422                	c.swsp	s0,8(sp)
   104dc:	842e                	c.mv	s0,a1
   104de:	00e59583          	lh	a1,14(a1)
   104e2:	c606                	c.swsp	ra,12(sp)
   104e4:	227d                	c.jal	10692 <_read_r>
   104e6:	00054963          	blt	a0,zero,104f8 <__sread+0x20>
   104ea:	483c                	c.lw	a5,80(s0)
   104ec:	40b2                	c.lwsp	ra,12(sp)
   104ee:	97aa                	c.add	a5,a0
   104f0:	c83c                	c.sw	a5,80(s0)
   104f2:	4422                	c.lwsp	s0,8(sp)
   104f4:	0141                	c.addi	sp,16
   104f6:	8082                	c.jr	ra
   104f8:	00c45783          	lhu	a5,12(s0)
   104fc:	777d                	c.lui	a4,0xfffff
   104fe:	177d                	c.addi	a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10500:	8ff9                	c.and	a5,a4
   10502:	40b2                	c.lwsp	ra,12(sp)
   10504:	00f41623          	sh	a5,12(s0)
   10508:	4422                	c.lwsp	s0,8(sp)
   1050a:	0141                	c.addi	sp,16
   1050c:	8082                	c.jr	ra

0001050e <__seofread>:
   1050e:	4501                	c.li	a0,0
   10510:	8082                	c.jr	ra

00010512 <__swrite>:
   10512:	00c59783          	lh	a5,12(a1)
   10516:	1101                	c.addi	sp,-32
   10518:	cc22                	c.swsp	s0,24(sp)
   1051a:	ca26                	c.swsp	s1,20(sp)
   1051c:	c84a                	c.swsp	s2,16(sp)
   1051e:	c64e                	c.swsp	s3,12(sp)
   10520:	ce06                	c.swsp	ra,28(sp)
   10522:	1007f713          	andi	a4,a5,256
   10526:	842e                	c.mv	s0,a1
   10528:	8932                	c.mv	s2,a2
   1052a:	89b6                	c.mv	s3,a3
   1052c:	84aa                	c.mv	s1,a0
   1052e:	e315                	c.bnez	a4,10552 <__swrite+0x40>
   10530:	777d                	c.lui	a4,0xfffff
   10532:	177d                	c.addi	a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10534:	8ff9                	c.and	a5,a4
   10536:	00e41583          	lh	a1,14(s0)
   1053a:	00f41623          	sh	a5,12(s0)
   1053e:	4462                	c.lwsp	s0,24(sp)
   10540:	40f2                	c.lwsp	ra,28(sp)
   10542:	86ce                	c.mv	a3,s3
   10544:	864a                	c.mv	a2,s2
   10546:	49b2                	c.lwsp	s3,12(sp)
   10548:	4942                	c.lwsp	s2,16(sp)
   1054a:	8526                	c.mv	a0,s1
   1054c:	44d2                	c.lwsp	s1,20(sp)
   1054e:	6105                	c.addi16sp	sp,32
   10550:	aabd                	c.j	106ce <_write_r>
   10552:	00e59583          	lh	a1,14(a1)
   10556:	4689                	c.li	a3,2
   10558:	4601                	c.li	a2,0
   1055a:	28f5                	c.jal	10656 <_lseek_r>
   1055c:	00c41783          	lh	a5,12(s0)
   10560:	bfc1                	c.j	10530 <__swrite+0x1e>

00010562 <__sseek>:
   10562:	1141                	c.addi	sp,-16
   10564:	c422                	c.swsp	s0,8(sp)
   10566:	842e                	c.mv	s0,a1
   10568:	00e59583          	lh	a1,14(a1)
   1056c:	c606                	c.swsp	ra,12(sp)
   1056e:	20e5                	c.jal	10656 <_lseek_r>
   10570:	577d                	c.li	a4,-1
   10572:	00c41783          	lh	a5,12(s0)
   10576:	00e50b63          	beq	a0,a4,1058c <__sseek+0x2a>
   1057a:	6705                	c.lui	a4,0x1
   1057c:	8fd9                	c.or	a5,a4
   1057e:	40b2                	c.lwsp	ra,12(sp)
   10580:	c828                	c.sw	a0,80(s0)
   10582:	00f41623          	sh	a5,12(s0)
   10586:	4422                	c.lwsp	s0,8(sp)
   10588:	0141                	c.addi	sp,16
   1058a:	8082                	c.jr	ra
   1058c:	777d                	c.lui	a4,0xfffff
   1058e:	177d                	c.addi	a4,-1 # ffffefff <__BSS_END__+0xfffe35a3>
   10590:	8ff9                	c.and	a5,a4
   10592:	40b2                	c.lwsp	ra,12(sp)
   10594:	00f41623          	sh	a5,12(s0)
   10598:	4422                	c.lwsp	s0,8(sp)
   1059a:	0141                	c.addi	sp,16
   1059c:	8082                	c.jr	ra

0001059e <__sclose>:
   1059e:	00e59583          	lh	a1,14(a1)
   105a2:	a009                	c.j	105a4 <_close_r>

000105a4 <_close_r>:
   105a4:	1141                	c.addi	sp,-16
   105a6:	c422                	c.swsp	s0,8(sp)
   105a8:	c226                	c.swsp	s1,4(sp)
   105aa:	842a                	c.mv	s0,a0
   105ac:	852e                	c.mv	a0,a1
   105ae:	c606                	c.swsp	ra,12(sp)
   105b0:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   105b4:	3ad070ef          	jal	ra,18160 <_close>
   105b8:	57fd                	c.li	a5,-1
   105ba:	00f50763          	beq	a0,a5,105c8 <_close_r+0x24>
   105be:	40b2                	c.lwsp	ra,12(sp)
   105c0:	4422                	c.lwsp	s0,8(sp)
   105c2:	4492                	c.lwsp	s1,4(sp)
   105c4:	0141                	c.addi	sp,16
   105c6:	8082                	c.jr	ra
   105c8:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   105cc:	dbed                	c.beqz	a5,105be <_close_r+0x1a>
   105ce:	40b2                	c.lwsp	ra,12(sp)
   105d0:	c01c                	c.sw	a5,0(s0)
   105d2:	4422                	c.lwsp	s0,8(sp)
   105d4:	4492                	c.lwsp	s1,4(sp)
   105d6:	0141                	c.addi	sp,16
   105d8:	8082                	c.jr	ra

000105da <_reclaim_reent>:
   105da:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   105de:	06a78b63          	beq	a5,a0,10654 <_reclaim_reent+0x7a>
   105e2:	416c                	c.lw	a1,68(a0)
   105e4:	1101                	c.addi	sp,-32
   105e6:	ca26                	c.swsp	s1,20(sp)
   105e8:	ce06                	c.swsp	ra,28(sp)
   105ea:	cc22                	c.swsp	s0,24(sp)
   105ec:	84aa                	c.mv	s1,a0
   105ee:	c59d                	c.beqz	a1,1061c <_reclaim_reent+0x42>
   105f0:	c84a                	c.swsp	s2,16(sp)
   105f2:	c64e                	c.swsp	s3,12(sp)
   105f4:	4901                	c.li	s2,0
   105f6:	08000993          	addi	s3,zero,128
   105fa:	012587b3          	add	a5,a1,s2
   105fe:	4380                	c.lw	s0,0(a5)
   10600:	c419                	c.beqz	s0,1060e <_reclaim_reent+0x34>
   10602:	85a2                	c.mv	a1,s0
   10604:	4000                	c.lw	s0,0(s0)
   10606:	8526                	c.mv	a0,s1
   10608:	2e65                	c.jal	109c0 <_free_r>
   1060a:	fc65                	c.bnez	s0,10602 <_reclaim_reent+0x28>
   1060c:	40ec                	c.lw	a1,68(s1)
   1060e:	0911                	c.addi	s2,4
   10610:	ff3915e3          	bne	s2,s3,105fa <_reclaim_reent+0x20>
   10614:	8526                	c.mv	a0,s1
   10616:	266d                	c.jal	109c0 <_free_r>
   10618:	4942                	c.lwsp	s2,16(sp)
   1061a:	49b2                	c.lwsp	s3,12(sp)
   1061c:	5c8c                	c.lw	a1,56(s1)
   1061e:	c199                	c.beqz	a1,10624 <_reclaim_reent+0x4a>
   10620:	8526                	c.mv	a0,s1
   10622:	2e79                	c.jal	109c0 <_free_r>
   10624:	40a0                	c.lw	s0,64(s1)
   10626:	c411                	c.beqz	s0,10632 <_reclaim_reent+0x58>
   10628:	85a2                	c.mv	a1,s0
   1062a:	4000                	c.lw	s0,0(s0)
   1062c:	8526                	c.mv	a0,s1
   1062e:	2e49                	c.jal	109c0 <_free_r>
   10630:	fc65                	c.bnez	s0,10628 <_reclaim_reent+0x4e>
   10632:	44ec                	c.lw	a1,76(s1)
   10634:	c199                	c.beqz	a1,1063a <_reclaim_reent+0x60>
   10636:	8526                	c.mv	a0,s1
   10638:	2661                	c.jal	109c0 <_free_r>
   1063a:	58dc                	c.lw	a5,52(s1)
   1063c:	c799                	c.beqz	a5,1064a <_reclaim_reent+0x70>
   1063e:	4462                	c.lwsp	s0,24(sp)
   10640:	40f2                	c.lwsp	ra,28(sp)
   10642:	8526                	c.mv	a0,s1
   10644:	44d2                	c.lwsp	s1,20(sp)
   10646:	6105                	c.addi16sp	sp,32
   10648:	8782                	c.jr	a5
   1064a:	40f2                	c.lwsp	ra,28(sp)
   1064c:	4462                	c.lwsp	s0,24(sp)
   1064e:	44d2                	c.lwsp	s1,20(sp)
   10650:	6105                	c.addi16sp	sp,32
   10652:	8082                	c.jr	ra
   10654:	8082                	c.jr	ra

00010656 <_lseek_r>:
   10656:	1141                	c.addi	sp,-16
   10658:	872e                	c.mv	a4,a1
   1065a:	c422                	c.swsp	s0,8(sp)
   1065c:	c226                	c.swsp	s1,4(sp)
   1065e:	85b2                	c.mv	a1,a2
   10660:	842a                	c.mv	s0,a0
   10662:	8636                	c.mv	a2,a3
   10664:	853a                	c.mv	a0,a4
   10666:	c606                	c.swsp	ra,12(sp)
   10668:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   1066c:	3b9070ef          	jal	ra,18224 <_lseek>
   10670:	57fd                	c.li	a5,-1
   10672:	00f50763          	beq	a0,a5,10680 <_lseek_r+0x2a>
   10676:	40b2                	c.lwsp	ra,12(sp)
   10678:	4422                	c.lwsp	s0,8(sp)
   1067a:	4492                	c.lwsp	s1,4(sp)
   1067c:	0141                	c.addi	sp,16
   1067e:	8082                	c.jr	ra
   10680:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   10684:	dbed                	c.beqz	a5,10676 <_lseek_r+0x20>
   10686:	40b2                	c.lwsp	ra,12(sp)
   10688:	c01c                	c.sw	a5,0(s0)
   1068a:	4422                	c.lwsp	s0,8(sp)
   1068c:	4492                	c.lwsp	s1,4(sp)
   1068e:	0141                	c.addi	sp,16
   10690:	8082                	c.jr	ra

00010692 <_read_r>:
   10692:	1141                	c.addi	sp,-16
   10694:	872e                	c.mv	a4,a1
   10696:	c422                	c.swsp	s0,8(sp)
   10698:	c226                	c.swsp	s1,4(sp)
   1069a:	85b2                	c.mv	a1,a2
   1069c:	842a                	c.mv	s0,a0
   1069e:	8636                	c.mv	a2,a3
   106a0:	853a                	c.mv	a0,a4
   106a2:	c606                	c.swsp	ra,12(sp)
   106a4:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   106a8:	3a9070ef          	jal	ra,18250 <_read>
   106ac:	57fd                	c.li	a5,-1
   106ae:	00f50763          	beq	a0,a5,106bc <_read_r+0x2a>
   106b2:	40b2                	c.lwsp	ra,12(sp)
   106b4:	4422                	c.lwsp	s0,8(sp)
   106b6:	4492                	c.lwsp	s1,4(sp)
   106b8:	0141                	c.addi	sp,16
   106ba:	8082                	c.jr	ra
   106bc:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   106c0:	dbed                	c.beqz	a5,106b2 <_read_r+0x20>
   106c2:	40b2                	c.lwsp	ra,12(sp)
   106c4:	c01c                	c.sw	a5,0(s0)
   106c6:	4422                	c.lwsp	s0,8(sp)
   106c8:	4492                	c.lwsp	s1,4(sp)
   106ca:	0141                	c.addi	sp,16
   106cc:	8082                	c.jr	ra

000106ce <_write_r>:
   106ce:	1141                	c.addi	sp,-16
   106d0:	872e                	c.mv	a4,a1
   106d2:	c422                	c.swsp	s0,8(sp)
   106d4:	c226                	c.swsp	s1,4(sp)
   106d6:	85b2                	c.mv	a1,a2
   106d8:	842a                	c.mv	s0,a0
   106da:	8636                	c.mv	a2,a3
   106dc:	853a                	c.mv	a0,a4
   106de:	c606                	c.swsp	ra,12(sp)
   106e0:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   106e4:	3ed070ef          	jal	ra,182d0 <_write>
   106e8:	57fd                	c.li	a5,-1
   106ea:	00f50763          	beq	a0,a5,106f8 <_write_r+0x2a>
   106ee:	40b2                	c.lwsp	ra,12(sp)
   106f0:	4422                	c.lwsp	s0,8(sp)
   106f2:	4492                	c.lwsp	s1,4(sp)
   106f4:	0141                	c.addi	sp,16
   106f6:	8082                	c.jr	ra
   106f8:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   106fc:	dbed                	c.beqz	a5,106ee <_write_r+0x20>
   106fe:	40b2                	c.lwsp	ra,12(sp)
   10700:	c01c                	c.sw	a5,0(s0)
   10702:	4422                	c.lwsp	s0,8(sp)
   10704:	4492                	c.lwsp	s1,4(sp)
   10706:	0141                	c.addi	sp,16
   10708:	8082                	c.jr	ra

0001070a <__libc_init_array>:
   1070a:	1141                	c.addi	sp,-16
   1070c:	c422                	c.swsp	s0,8(sp)
   1070e:	67ed                	c.lui	a5,0x1b
   10710:	646d                	c.lui	s0,0x1b
   10712:	c04a                	c.swsp	s2,0(sp)
   10714:	00078793          	addi	a5,a5,0 # 1b000 <__init_array_start>
   10718:	00040713          	addi	a4,s0,0 # 1b000 <__init_array_start>
   1071c:	c606                	c.swsp	ra,12(sp)
   1071e:	c226                	c.swsp	s1,4(sp)
   10720:	40e78933          	sub	s2,a5,a4
   10724:	00e78d63          	beq	a5,a4,1073e <__libc_init_array+0x34>
   10728:	40295913          	srai	s2,s2,0x2
   1072c:	00040413          	addi	s0,s0,0
   10730:	4481                	c.li	s1,0
   10732:	401c                	c.lw	a5,0(s0)
   10734:	0485                	c.addi	s1,1
   10736:	0411                	c.addi	s0,4
   10738:	9782                	c.jalr	a5
   1073a:	ff24ece3          	bltu	s1,s2,10732 <__libc_init_array+0x28>
   1073e:	67ed                	c.lui	a5,0x1b
   10740:	646d                	c.lui	s0,0x1b
   10742:	00878793          	addi	a5,a5,8 # 1b008 <__do_global_dtors_aux_fini_array_entry>
   10746:	00040713          	addi	a4,s0,0 # 1b000 <__init_array_start>
   1074a:	40e78933          	sub	s2,a5,a4
   1074e:	40295913          	srai	s2,s2,0x2
   10752:	00e78b63          	beq	a5,a4,10768 <__libc_init_array+0x5e>
   10756:	00040413          	addi	s0,s0,0
   1075a:	4481                	c.li	s1,0
   1075c:	401c                	c.lw	a5,0(s0)
   1075e:	0485                	c.addi	s1,1
   10760:	0411                	c.addi	s0,4
   10762:	9782                	c.jalr	a5
   10764:	ff24ece3          	bltu	s1,s2,1075c <__libc_init_array+0x52>
   10768:	40b2                	c.lwsp	ra,12(sp)
   1076a:	4422                	c.lwsp	s0,8(sp)
   1076c:	4492                	c.lwsp	s1,4(sp)
   1076e:	4902                	c.lwsp	s2,0(sp)
   10770:	0141                	c.addi	sp,16
   10772:	8082                	c.jr	ra

00010774 <memset>:
   10774:	433d                	c.li	t1,15
   10776:	872a                	c.mv	a4,a0
   10778:	02c37363          	bgeu	t1,a2,1079e <memset+0x2a>
   1077c:	00f77793          	andi	a5,a4,15
   10780:	efbd                	c.bnez	a5,107fe <memset+0x8a>
   10782:	e5ad                	c.bnez	a1,107ec <memset+0x78>
   10784:	ff067693          	andi	a3,a2,-16
   10788:	8a3d                	c.andi	a2,15
   1078a:	96ba                	c.add	a3,a4
   1078c:	c30c                	c.sw	a1,0(a4)
   1078e:	c34c                	c.sw	a1,4(a4)
   10790:	c70c                	c.sw	a1,8(a4)
   10792:	c74c                	c.sw	a1,12(a4)
   10794:	0741                	c.addi	a4,16
   10796:	fed76be3          	bltu	a4,a3,1078c <memset+0x18>
   1079a:	e211                	c.bnez	a2,1079e <memset+0x2a>
   1079c:	8082                	c.jr	ra
   1079e:	40c306b3          	sub	a3,t1,a2
   107a2:	068a                	c.slli	a3,0x2
   107a4:	00000297          	auipc	t0,0x0
   107a8:	9696                	c.add	a3,t0
   107aa:	00a68067          	jalr	zero,10(a3)
   107ae:	00b70723          	sb	a1,14(a4)
   107b2:	00b706a3          	sb	a1,13(a4)
   107b6:	00b70623          	sb	a1,12(a4)
   107ba:	00b705a3          	sb	a1,11(a4)
   107be:	00b70523          	sb	a1,10(a4)
   107c2:	00b704a3          	sb	a1,9(a4)
   107c6:	00b70423          	sb	a1,8(a4)
   107ca:	00b703a3          	sb	a1,7(a4)
   107ce:	00b70323          	sb	a1,6(a4)
   107d2:	00b702a3          	sb	a1,5(a4)
   107d6:	00b70223          	sb	a1,4(a4)
   107da:	00b701a3          	sb	a1,3(a4)
   107de:	00b70123          	sb	a1,2(a4)
   107e2:	00b700a3          	sb	a1,1(a4)
   107e6:	00b70023          	sb	a1,0(a4)
   107ea:	8082                	c.jr	ra
   107ec:	0ff5f593          	andi	a1,a1,255
   107f0:	00859693          	slli	a3,a1,0x8
   107f4:	8dd5                	c.or	a1,a3
   107f6:	01059693          	slli	a3,a1,0x10
   107fa:	8dd5                	c.or	a1,a3
   107fc:	b761                	c.j	10784 <memset+0x10>
   107fe:	00279693          	slli	a3,a5,0x2
   10802:	00000297          	auipc	t0,0x0
   10806:	9696                	c.add	a3,t0
   10808:	8286                	c.mv	t0,ra
   1080a:	fa8680e7          	jalr	ra,-88(a3)
   1080e:	8096                	c.mv	ra,t0
   10810:	17c1                	c.addi	a5,-16
   10812:	8f1d                	c.sub	a4,a5
   10814:	963e                	c.add	a2,a5
   10816:	f8c374e3          	bgeu	t1,a2,1079e <memset+0x2a>
   1081a:	b7a5                	c.j	10782 <memset+0xe>

0001081c <__call_exitprocs>:
   1081c:	7179                	c.addi16sp	sp,-48
   1081e:	cc52                	c.swsp	s4,24(sp)
   10820:	d04a                	c.swsp	s2,32(sp)
   10822:	f281a903          	lw	s2,-216(gp) # 1b738 <__atexit>
   10826:	d606                	c.swsp	ra,44(sp)
   10828:	04090663          	beq	s2,zero,10874 <__call_exitprocs+0x58>
   1082c:	ce4e                	c.swsp	s3,28(sp)
   1082e:	ca56                	c.swsp	s5,20(sp)
   10830:	c85a                	c.swsp	s6,16(sp)
   10832:	c65e                	c.swsp	s7,12(sp)
   10834:	d422                	c.swsp	s0,40(sp)
   10836:	d226                	c.swsp	s1,36(sp)
   10838:	c462                	c.swsp	s8,8(sp)
   1083a:	8b2a                	c.mv	s6,a0
   1083c:	8bae                	c.mv	s7,a1
   1083e:	59fd                	c.li	s3,-1
   10840:	4a85                	c.li	s5,1
   10842:	00492483          	lw	s1,4(s2)
   10846:	fff48413          	addi	s0,s1,-1
   1084a:	00044e63          	blt	s0,zero,10866 <__call_exitprocs+0x4a>
   1084e:	048a                	c.slli	s1,0x2
   10850:	94ca                	c.add	s1,s2
   10852:	020b8663          	beq	s7,zero,1087e <__call_exitprocs+0x62>
   10856:	1044a783          	lw	a5,260(s1)
   1085a:	03778263          	beq	a5,s7,1087e <__call_exitprocs+0x62>
   1085e:	147d                	c.addi	s0,-1
   10860:	14f1                	c.addi	s1,-4
   10862:	ff341ae3          	bne	s0,s3,10856 <__call_exitprocs+0x3a>
   10866:	5422                	c.lwsp	s0,40(sp)
   10868:	5492                	c.lwsp	s1,36(sp)
   1086a:	49f2                	c.lwsp	s3,28(sp)
   1086c:	4ad2                	c.lwsp	s5,20(sp)
   1086e:	4b42                	c.lwsp	s6,16(sp)
   10870:	4bb2                	c.lwsp	s7,12(sp)
   10872:	4c22                	c.lwsp	s8,8(sp)
   10874:	50b2                	c.lwsp	ra,44(sp)
   10876:	5902                	c.lwsp	s2,32(sp)
   10878:	4a62                	c.lwsp	s4,24(sp)
   1087a:	6145                	c.addi16sp	sp,48
   1087c:	8082                	c.jr	ra
   1087e:	00492783          	lw	a5,4(s2)
   10882:	40d4                	c.lw	a3,4(s1)
   10884:	17fd                	c.addi	a5,-1
   10886:	04878c63          	beq	a5,s0,108de <__call_exitprocs+0xc2>
   1088a:	0004a223          	sw	zero,4(s1)
   1088e:	c295                	c.beqz	a3,108b2 <__call_exitprocs+0x96>
   10890:	18892783          	lw	a5,392(s2)
   10894:	008a9733          	sll	a4,s5,s0
   10898:	00492c03          	lw	s8,4(s2)
   1089c:	8ff9                	c.and	a5,a4
   1089e:	ef99                	c.bnez	a5,108bc <__call_exitprocs+0xa0>
   108a0:	9682                	c.jalr	a3
   108a2:	00492703          	lw	a4,4(s2)
   108a6:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   108aa:	03871763          	bne	a4,s8,108d8 <__call_exitprocs+0xbc>
   108ae:	03279563          	bne	a5,s2,108d8 <__call_exitprocs+0xbc>
   108b2:	147d                	c.addi	s0,-1
   108b4:	14f1                	c.addi	s1,-4
   108b6:	f9341ee3          	bne	s0,s3,10852 <__call_exitprocs+0x36>
   108ba:	b775                	c.j	10866 <__call_exitprocs+0x4a>
   108bc:	18c92783          	lw	a5,396(s2)
   108c0:	0844a583          	lw	a1,132(s1)
   108c4:	8f7d                	c.and	a4,a5
   108c6:	ef19                	c.bnez	a4,108e4 <__call_exitprocs+0xc8>
   108c8:	855a                	c.mv	a0,s6
   108ca:	9682                	c.jalr	a3
   108cc:	00492703          	lw	a4,4(s2)
   108d0:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   108d4:	fd870de3          	beq	a4,s8,108ae <__call_exitprocs+0x92>
   108d8:	d7d9                	c.beqz	a5,10866 <__call_exitprocs+0x4a>
   108da:	893e                	c.mv	s2,a5
   108dc:	b79d                	c.j	10842 <__call_exitprocs+0x26>
   108de:	00892223          	sw	s0,4(s2)
   108e2:	b775                	c.j	1088e <__call_exitprocs+0x72>
   108e4:	852e                	c.mv	a0,a1
   108e6:	9682                	c.jalr	a3
   108e8:	bf6d                	c.j	108a2 <__call_exitprocs+0x86>

000108ea <atexit>:
   108ea:	85aa                	c.mv	a1,a0
   108ec:	4681                	c.li	a3,0
   108ee:	4601                	c.li	a2,0
   108f0:	4501                	c.li	a0,0
   108f2:	7d20306f          	jal	zero,140c4 <__register_exitproc>

000108f6 <_malloc_trim_r>:
   108f6:	1101                	c.addi	sp,-32
   108f8:	c64e                	c.swsp	s3,12(sp)
   108fa:	69ed                	c.lui	s3,0x1b
   108fc:	cc22                	c.swsp	s0,24(sp)
   108fe:	ca26                	c.swsp	s1,20(sp)
   10900:	c84a                	c.swsp	s2,16(sp)
   10902:	c452                	c.swsp	s4,8(sp)
   10904:	ce06                	c.swsp	ra,28(sp)
   10906:	8a2e                	c.mv	s4,a1
   10908:	892a                	c.mv	s2,a0
   1090a:	14098993          	addi	s3,s3,320 # 1b140 <__malloc_av_>
   1090e:	09b000ef          	jal	ra,111a8 <__malloc_lock>
   10912:	0089a783          	lw	a5,8(s3)
   10916:	6405                	c.lui	s0,0x1
   10918:	143d                	c.addi	s0,-17 # fef <exit-0xf0c5>
   1091a:	43c4                	c.lw	s1,4(a5)
   1091c:	6785                	c.lui	a5,0x1
   1091e:	98f1                	c.andi	s1,-4
   10920:	9426                	c.add	s0,s1
   10922:	41440433          	sub	s0,s0,s4
   10926:	8031                	c.srli	s0,0xc
   10928:	147d                	c.addi	s0,-1
   1092a:	0432                	c.slli	s0,0xc
   1092c:	00f44b63          	blt	s0,a5,10942 <_malloc_trim_r+0x4c>
   10930:	4581                	c.li	a1,0
   10932:	854a                	c.mv	a0,s2
   10934:	40a030ef          	jal	ra,13d3e <_sbrk_r>
   10938:	0089a783          	lw	a5,8(s3)
   1093c:	97a6                	c.add	a5,s1
   1093e:	00f50e63          	beq	a0,a5,1095a <_malloc_trim_r+0x64>
   10942:	854a                	c.mv	a0,s2
   10944:	067000ef          	jal	ra,111aa <__malloc_unlock>
   10948:	40f2                	c.lwsp	ra,28(sp)
   1094a:	4462                	c.lwsp	s0,24(sp)
   1094c:	44d2                	c.lwsp	s1,20(sp)
   1094e:	4942                	c.lwsp	s2,16(sp)
   10950:	49b2                	c.lwsp	s3,12(sp)
   10952:	4a22                	c.lwsp	s4,8(sp)
   10954:	4501                	c.li	a0,0
   10956:	6105                	c.addi16sp	sp,32
   10958:	8082                	c.jr	ra
   1095a:	408005b3          	sub	a1,zero,s0
   1095e:	854a                	c.mv	a0,s2
   10960:	3de030ef          	jal	ra,13d3e <_sbrk_r>
   10964:	57fd                	c.li	a5,-1
   10966:	02f50963          	beq	a0,a5,10998 <_malloc_trim_r+0xa2>
   1096a:	09418793          	addi	a5,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   1096e:	0089a683          	lw	a3,8(s3)
   10972:	4398                	c.lw	a4,0(a5)
   10974:	8c81                	c.sub	s1,s0
   10976:	0014e493          	ori	s1,s1,1
   1097a:	854a                	c.mv	a0,s2
   1097c:	8f01                	c.sub	a4,s0
   1097e:	c2c4                	c.sw	s1,4(a3)
   10980:	c398                	c.sw	a4,0(a5)
   10982:	029000ef          	jal	ra,111aa <__malloc_unlock>
   10986:	40f2                	c.lwsp	ra,28(sp)
   10988:	4462                	c.lwsp	s0,24(sp)
   1098a:	44d2                	c.lwsp	s1,20(sp)
   1098c:	4942                	c.lwsp	s2,16(sp)
   1098e:	49b2                	c.lwsp	s3,12(sp)
   10990:	4a22                	c.lwsp	s4,8(sp)
   10992:	4505                	c.li	a0,1
   10994:	6105                	c.addi16sp	sp,32
   10996:	8082                	c.jr	ra
   10998:	4581                	c.li	a1,0
   1099a:	854a                	c.mv	a0,s2
   1099c:	3a2030ef          	jal	ra,13d3e <_sbrk_r>
   109a0:	0089a703          	lw	a4,8(s3)
   109a4:	46bd                	c.li	a3,15
   109a6:	40e507b3          	sub	a5,a0,a4
   109aa:	f8f6dce3          	bge	a3,a5,10942 <_malloc_trim_r+0x4c>
   109ae:	f181a603          	lw	a2,-232(gp) # 1b728 <__malloc_sbrk_base>
   109b2:	0017e793          	ori	a5,a5,1
   109b6:	8d11                	c.sub	a0,a2
   109b8:	c35c                	c.sw	a5,4(a4)
   109ba:	08a1aa23          	sw	a0,148(gp) # 1b8a4 <__malloc_current_mallinfo>
   109be:	b751                	c.j	10942 <_malloc_trim_r+0x4c>

000109c0 <_free_r>:
   109c0:	cdf9                	c.beqz	a1,10a9e <_free_r+0xde>
   109c2:	1141                	c.addi	sp,-16
   109c4:	c422                	c.swsp	s0,8(sp)
   109c6:	c226                	c.swsp	s1,4(sp)
   109c8:	842e                	c.mv	s0,a1
   109ca:	84aa                	c.mv	s1,a0
   109cc:	c606                	c.swsp	ra,12(sp)
   109ce:	7da000ef          	jal	ra,111a8 <__malloc_lock>
   109d2:	ffc42503          	lw	a0,-4(s0)
   109d6:	ff840713          	addi	a4,s0,-8
   109da:	65ed                	c.lui	a1,0x1b
   109dc:	ffe57793          	andi	a5,a0,-2
   109e0:	00f70633          	add	a2,a4,a5
   109e4:	14058593          	addi	a1,a1,320 # 1b140 <__malloc_av_>
   109e8:	4254                	c.lw	a3,4(a2)
   109ea:	0085a803          	lw	a6,8(a1)
   109ee:	00157893          	andi	a7,a0,1
   109f2:	9af1                	c.andi	a3,-4
   109f4:	12c80063          	beq	a6,a2,10b14 <_free_r+0x154>
   109f8:	c254                	c.sw	a3,4(a2)
   109fa:	00d60833          	add	a6,a2,a3
   109fe:	00482803          	lw	a6,4(a6)
   10a02:	00187813          	andi	a6,a6,1
   10a06:	06089763          	bne	a7,zero,10a74 <_free_r+0xb4>
   10a0a:	ff842303          	lw	t1,-8(s0)
   10a0e:	656d                	c.lui	a0,0x1b
   10a10:	14850513          	addi	a0,a0,328 # 1b148 <__malloc_av_+0x8>
   10a14:	40670733          	sub	a4,a4,t1
   10a18:	00872883          	lw	a7,8(a4)
   10a1c:	979a                	c.add	a5,t1
   10a1e:	0ca88e63          	beq	a7,a0,10afa <_free_r+0x13a>
   10a22:	00c72303          	lw	t1,12(a4)
   10a26:	0068a623          	sw	t1,12(a7)
   10a2a:	01132423          	sw	a7,8(t1)
   10a2e:	10080b63          	beq	a6,zero,10b44 <_free_r+0x184>
   10a32:	0017e693          	ori	a3,a5,1
   10a36:	c354                	c.sw	a3,4(a4)
   10a38:	c21c                	c.sw	a5,0(a2)
   10a3a:	1ff00693          	addi	a3,zero,511
   10a3e:	06f6ea63          	bltu	a3,a5,10ab2 <_free_r+0xf2>
   10a42:	ff87f693          	andi	a3,a5,-8
   10a46:	06a1                	c.addi	a3,8
   10a48:	41c8                	c.lw	a0,4(a1)
   10a4a:	96ae                	c.add	a3,a1
   10a4c:	4290                	c.lw	a2,0(a3)
   10a4e:	0057d813          	srli	a6,a5,0x5
   10a52:	4785                	c.li	a5,1
   10a54:	010797b3          	sll	a5,a5,a6
   10a58:	8fc9                	c.or	a5,a0
   10a5a:	ff868513          	addi	a0,a3,-8
   10a5e:	c710                	c.sw	a2,8(a4)
   10a60:	c748                	c.sw	a0,12(a4)
   10a62:	c1dc                	c.sw	a5,4(a1)
   10a64:	c298                	c.sw	a4,0(a3)
   10a66:	c658                	c.sw	a4,12(a2)
   10a68:	4422                	c.lwsp	s0,8(sp)
   10a6a:	40b2                	c.lwsp	ra,12(sp)
   10a6c:	8526                	c.mv	a0,s1
   10a6e:	4492                	c.lwsp	s1,4(sp)
   10a70:	0141                	c.addi	sp,16
   10a72:	af25                	c.j	111aa <__malloc_unlock>
   10a74:	02081663          	bne	a6,zero,10aa0 <_free_r+0xe0>
   10a78:	656d                	c.lui	a0,0x1b
   10a7a:	97b6                	c.add	a5,a3
   10a7c:	14850513          	addi	a0,a0,328 # 1b148 <__malloc_av_+0x8>
   10a80:	4614                	c.lw	a3,8(a2)
   10a82:	0017e893          	ori	a7,a5,1
   10a86:	00f70833          	add	a6,a4,a5
   10a8a:	0ea68963          	beq	a3,a0,10b7c <_free_r+0x1bc>
   10a8e:	4650                	c.lw	a2,12(a2)
   10a90:	c6d0                	c.sw	a2,12(a3)
   10a92:	c614                	c.sw	a3,8(a2)
   10a94:	01172223          	sw	a7,4(a4)
   10a98:	00f82023          	sw	a5,0(a6)
   10a9c:	bf79                	c.j	10a3a <_free_r+0x7a>
   10a9e:	8082                	c.jr	ra
   10aa0:	00156513          	ori	a0,a0,1
   10aa4:	fea42e23          	sw	a0,-4(s0)
   10aa8:	c21c                	c.sw	a5,0(a2)
   10aaa:	1ff00693          	addi	a3,zero,511
   10aae:	f8f6fae3          	bgeu	a3,a5,10a42 <_free_r+0x82>
   10ab2:	0097d693          	srli	a3,a5,0x9
   10ab6:	4611                	c.li	a2,4
   10ab8:	08d66863          	bltu	a2,a3,10b48 <_free_r+0x188>
   10abc:	0067d693          	srli	a3,a5,0x6
   10ac0:	03968513          	addi	a0,a3,57
   10ac4:	050e                	c.slli	a0,0x3
   10ac6:	03868613          	addi	a2,a3,56
   10aca:	952e                	c.add	a0,a1
   10acc:	4114                	c.lw	a3,0(a0)
   10ace:	1561                	c.addi	a0,-8
   10ad0:	00d51663          	bne	a0,a3,10adc <_free_r+0x11c>
   10ad4:	a86d                	c.j	10b8e <_free_r+0x1ce>
   10ad6:	4694                	c.lw	a3,8(a3)
   10ad8:	00d50663          	beq	a0,a3,10ae4 <_free_r+0x124>
   10adc:	42d0                	c.lw	a2,4(a3)
   10ade:	9a71                	c.andi	a2,-4
   10ae0:	fec7ebe3          	bltu	a5,a2,10ad6 <_free_r+0x116>
   10ae4:	46c8                	c.lw	a0,12(a3)
   10ae6:	c748                	c.sw	a0,12(a4)
   10ae8:	c714                	c.sw	a3,8(a4)
   10aea:	4422                	c.lwsp	s0,8(sp)
   10aec:	c518                	c.sw	a4,8(a0)
   10aee:	40b2                	c.lwsp	ra,12(sp)
   10af0:	8526                	c.mv	a0,s1
   10af2:	4492                	c.lwsp	s1,4(sp)
   10af4:	c6d8                	c.sw	a4,12(a3)
   10af6:	0141                	c.addi	sp,16
   10af8:	ad4d                	c.j	111aa <__malloc_unlock>
   10afa:	06081663          	bne	a6,zero,10b66 <_free_r+0x1a6>
   10afe:	464c                	c.lw	a1,12(a2)
   10b00:	4610                	c.lw	a2,8(a2)
   10b02:	96be                	c.add	a3,a5
   10b04:	0016e793          	ori	a5,a3,1
   10b08:	c64c                	c.sw	a1,12(a2)
   10b0a:	c590                	c.sw	a2,8(a1)
   10b0c:	c35c                	c.sw	a5,4(a4)
   10b0e:	9736                	c.add	a4,a3
   10b10:	c314                	c.sw	a3,0(a4)
   10b12:	bf99                	c.j	10a68 <_free_r+0xa8>
   10b14:	96be                	c.add	a3,a5
   10b16:	00089a63          	bne	a7,zero,10b2a <_free_r+0x16a>
   10b1a:	ff842503          	lw	a0,-8(s0)
   10b1e:	8f09                	c.sub	a4,a0
   10b20:	475c                	c.lw	a5,12(a4)
   10b22:	4710                	c.lw	a2,8(a4)
   10b24:	96aa                	c.add	a3,a0
   10b26:	c65c                	c.sw	a5,12(a2)
   10b28:	c790                	c.sw	a2,8(a5)
   10b2a:	0016e613          	ori	a2,a3,1
   10b2e:	f1c1a783          	lw	a5,-228(gp) # 1b72c <__malloc_trim_threshold>
   10b32:	c350                	c.sw	a2,4(a4)
   10b34:	c598                	c.sw	a4,8(a1)
   10b36:	f2f6e9e3          	bltu	a3,a5,10a68 <_free_r+0xa8>
   10b3a:	f341a583          	lw	a1,-204(gp) # 1b744 <__malloc_top_pad>
   10b3e:	8526                	c.mv	a0,s1
   10b40:	3b5d                	c.jal	108f6 <_malloc_trim_r>
   10b42:	b71d                	c.j	10a68 <_free_r+0xa8>
   10b44:	97b6                	c.add	a5,a3
   10b46:	bf2d                	c.j	10a80 <_free_r+0xc0>
   10b48:	4651                	c.li	a2,20
   10b4a:	02d67363          	bgeu	a2,a3,10b70 <_free_r+0x1b0>
   10b4e:	05400613          	addi	a2,zero,84
   10b52:	04d66863          	bltu	a2,a3,10ba2 <_free_r+0x1e2>
   10b56:	00c7d693          	srli	a3,a5,0xc
   10b5a:	06f68513          	addi	a0,a3,111
   10b5e:	050e                	c.slli	a0,0x3
   10b60:	06e68613          	addi	a2,a3,110
   10b64:	b79d                	c.j	10aca <_free_r+0x10a>
   10b66:	0017e693          	ori	a3,a5,1
   10b6a:	c354                	c.sw	a3,4(a4)
   10b6c:	c21c                	c.sw	a5,0(a2)
   10b6e:	bded                	c.j	10a68 <_free_r+0xa8>
   10b70:	05c68513          	addi	a0,a3,92
   10b74:	050e                	c.slli	a0,0x3
   10b76:	05b68613          	addi	a2,a3,91
   10b7a:	bf81                	c.j	10aca <_free_r+0x10a>
   10b7c:	c9d8                	c.sw	a4,20(a1)
   10b7e:	c998                	c.sw	a4,16(a1)
   10b80:	c748                	c.sw	a0,12(a4)
   10b82:	c708                	c.sw	a0,8(a4)
   10b84:	01172223          	sw	a7,4(a4)
   10b88:	00f82023          	sw	a5,0(a6)
   10b8c:	bdf1                	c.j	10a68 <_free_r+0xa8>
   10b8e:	0045a803          	lw	a6,4(a1)
   10b92:	8609                	c.srai	a2,0x2
   10b94:	4785                	c.li	a5,1
   10b96:	00c797b3          	sll	a5,a5,a2
   10b9a:	0107e7b3          	or	a5,a5,a6
   10b9e:	c1dc                	c.sw	a5,4(a1)
   10ba0:	b799                	c.j	10ae6 <_free_r+0x126>
   10ba2:	15400613          	addi	a2,zero,340
   10ba6:	00d66a63          	bltu	a2,a3,10bba <_free_r+0x1fa>
   10baa:	00f7d693          	srli	a3,a5,0xf
   10bae:	07868513          	addi	a0,a3,120
   10bb2:	050e                	c.slli	a0,0x3
   10bb4:	07768613          	addi	a2,a3,119
   10bb8:	bf09                	c.j	10aca <_free_r+0x10a>
   10bba:	55400613          	addi	a2,zero,1364
   10bbe:	00d66a63          	bltu	a2,a3,10bd2 <_free_r+0x212>
   10bc2:	0127d693          	srli	a3,a5,0x12
   10bc6:	07d68513          	addi	a0,a3,125
   10bca:	050e                	c.slli	a0,0x3
   10bcc:	07c68613          	addi	a2,a3,124
   10bd0:	bded                	c.j	10aca <_free_r+0x10a>
   10bd2:	3f800513          	addi	a0,zero,1016
   10bd6:	07e00613          	addi	a2,zero,126
   10bda:	bdc5                	c.j	10aca <_free_r+0x10a>

00010bdc <_malloc_r>:
   10bdc:	7179                	c.addi16sp	sp,-48
   10bde:	ce4e                	c.swsp	s3,28(sp)
   10be0:	d606                	c.swsp	ra,44(sp)
   10be2:	d422                	c.swsp	s0,40(sp)
   10be4:	d226                	c.swsp	s1,36(sp)
   10be6:	d04a                	c.swsp	s2,32(sp)
   10be8:	00b58793          	addi	a5,a1,11
   10bec:	4759                	c.li	a4,22
   10bee:	89aa                	c.mv	s3,a0
   10bf0:	04f76763          	bltu	a4,a5,10c3e <_malloc_r+0x62>
   10bf4:	44c1                	c.li	s1,16
   10bf6:	16b4e763          	bltu	s1,a1,10d64 <_malloc_r+0x188>
   10bfa:	237d                	c.jal	111a8 <__malloc_lock>
   10bfc:	47e1                	c.li	a5,24
   10bfe:	4589                	c.li	a1,2
   10c00:	696d                	c.lui	s2,0x1b
   10c02:	14090913          	addi	s2,s2,320 # 1b140 <__malloc_av_>
   10c06:	97ca                	c.add	a5,s2
   10c08:	43c0                	c.lw	s0,4(a5)
   10c0a:	ff878713          	addi	a4,a5,-8 # ff8 <exit-0xf0bc>
   10c0e:	30e40663          	beq	s0,a4,10f1a <_malloc_r+0x33e>
   10c12:	405c                	c.lw	a5,4(s0)
   10c14:	4454                	c.lw	a3,12(s0)
   10c16:	4410                	c.lw	a2,8(s0)
   10c18:	9bf1                	c.andi	a5,-4
   10c1a:	97a2                	c.add	a5,s0
   10c1c:	43d8                	c.lw	a4,4(a5)
   10c1e:	c654                	c.sw	a3,12(a2)
   10c20:	c690                	c.sw	a2,8(a3)
   10c22:	00176713          	ori	a4,a4,1
   10c26:	854e                	c.mv	a0,s3
   10c28:	c3d8                	c.sw	a4,4(a5)
   10c2a:	2341                	c.jal	111aa <__malloc_unlock>
   10c2c:	50b2                	c.lwsp	ra,44(sp)
   10c2e:	00840513          	addi	a0,s0,8
   10c32:	5422                	c.lwsp	s0,40(sp)
   10c34:	5492                	c.lwsp	s1,36(sp)
   10c36:	5902                	c.lwsp	s2,32(sp)
   10c38:	49f2                	c.lwsp	s3,28(sp)
   10c3a:	6145                	c.addi16sp	sp,48
   10c3c:	8082                	c.jr	ra
   10c3e:	ff87f493          	andi	s1,a5,-8
   10c42:	1207c163          	blt	a5,zero,10d64 <_malloc_r+0x188>
   10c46:	10b4ef63          	bltu	s1,a1,10d64 <_malloc_r+0x188>
   10c4a:	2bb9                	c.jal	111a8 <__malloc_lock>
   10c4c:	1f700793          	addi	a5,zero,503
   10c50:	3897f463          	bgeu	a5,s1,10fd8 <_malloc_r+0x3fc>
   10c54:	0094d793          	srli	a5,s1,0x9
   10c58:	12078163          	beq	a5,zero,10d7a <_malloc_r+0x19e>
   10c5c:	4711                	c.li	a4,4
   10c5e:	30f76363          	bltu	a4,a5,10f64 <_malloc_r+0x388>
   10c62:	0064d793          	srli	a5,s1,0x6
   10c66:	03978593          	addi	a1,a5,57
   10c6a:	03878813          	addi	a6,a5,56
   10c6e:	00359613          	slli	a2,a1,0x3
   10c72:	696d                	c.lui	s2,0x1b
   10c74:	14090913          	addi	s2,s2,320 # 1b140 <__malloc_av_>
   10c78:	964a                	c.add	a2,s2
   10c7a:	4240                	c.lw	s0,4(a2)
   10c7c:	1661                	c.addi	a2,-8
   10c7e:	02860163          	beq	a2,s0,10ca0 <_malloc_r+0xc4>
   10c82:	453d                	c.li	a0,15
   10c84:	a039                	c.j	10c92 <_malloc_r+0xb6>
   10c86:	4454                	c.lw	a3,12(s0)
   10c88:	26075663          	bge	a4,zero,10ef4 <_malloc_r+0x318>
   10c8c:	00d60a63          	beq	a2,a3,10ca0 <_malloc_r+0xc4>
   10c90:	8436                	c.mv	s0,a3
   10c92:	405c                	c.lw	a5,4(s0)
   10c94:	9bf1                	c.andi	a5,-4
   10c96:	40978733          	sub	a4,a5,s1
   10c9a:	fee556e3          	bge	a0,a4,10c86 <_malloc_r+0xaa>
   10c9e:	85c2                	c.mv	a1,a6
   10ca0:	01092403          	lw	s0,16(s2)
   10ca4:	686d                	c.lui	a6,0x1b
   10ca6:	14880813          	addi	a6,a6,328 # 1b148 <__malloc_av_+0x8>
   10caa:	1f040b63          	beq	s0,a6,10ea0 <_malloc_r+0x2c4>
   10cae:	405c                	c.lw	a5,4(s0)
   10cb0:	46bd                	c.li	a3,15
   10cb2:	9bf1                	c.andi	a5,-4
   10cb4:	40978733          	sub	a4,a5,s1
   10cb8:	32e6c563          	blt	a3,a4,10fe2 <_malloc_r+0x406>
   10cbc:	01092a23          	sw	a6,20(s2)
   10cc0:	01092823          	sw	a6,16(s2)
   10cc4:	30075063          	bge	a4,zero,10fc4 <_malloc_r+0x3e8>
   10cc8:	1ff00713          	addi	a4,zero,511
   10ccc:	00492503          	lw	a0,4(s2)
   10cd0:	24f76a63          	bltu	a4,a5,10f24 <_malloc_r+0x348>
   10cd4:	ff87f713          	andi	a4,a5,-8
   10cd8:	0721                	c.addi	a4,8
   10cda:	974a                	c.add	a4,s2
   10cdc:	4314                	c.lw	a3,0(a4)
   10cde:	0057d613          	srli	a2,a5,0x5
   10ce2:	4785                	c.li	a5,1
   10ce4:	00c797b3          	sll	a5,a5,a2
   10ce8:	8d5d                	c.or	a0,a5
   10cea:	ff870793          	addi	a5,a4,-8
   10cee:	c414                	c.sw	a3,8(s0)
   10cf0:	c45c                	c.sw	a5,12(s0)
   10cf2:	00a92223          	sw	a0,4(s2)
   10cf6:	c300                	c.sw	s0,0(a4)
   10cf8:	c6c0                	c.sw	s0,12(a3)
   10cfa:	4025d793          	srai	a5,a1,0x2
   10cfe:	4605                	c.li	a2,1
   10d00:	00f61633          	sll	a2,a2,a5
   10d04:	08c56263          	bltu	a0,a2,10d88 <_malloc_r+0x1ac>
   10d08:	00a677b3          	and	a5,a2,a0
   10d0c:	ef81                	c.bnez	a5,10d24 <_malloc_r+0x148>
   10d0e:	0606                	c.slli	a2,0x1
   10d10:	99f1                	c.andi	a1,-4
   10d12:	00a677b3          	and	a5,a2,a0
   10d16:	0591                	c.addi	a1,4
   10d18:	e791                	c.bnez	a5,10d24 <_malloc_r+0x148>
   10d1a:	0606                	c.slli	a2,0x1
   10d1c:	00a677b3          	and	a5,a2,a0
   10d20:	0591                	c.addi	a1,4
   10d22:	dfe5                	c.beqz	a5,10d1a <_malloc_r+0x13e>
   10d24:	48bd                	c.li	a7,15
   10d26:	00359313          	slli	t1,a1,0x3
   10d2a:	934a                	c.add	t1,s2
   10d2c:	851a                	c.mv	a0,t1
   10d2e:	455c                	c.lw	a5,12(a0)
   10d30:	8e2e                	c.mv	t3,a1
   10d32:	24f50963          	beq	a0,a5,10f84 <_malloc_r+0x3a8>
   10d36:	43d8                	c.lw	a4,4(a5)
   10d38:	843e                	c.mv	s0,a5
   10d3a:	47dc                	c.lw	a5,12(a5)
   10d3c:	9b71                	c.andi	a4,-4
   10d3e:	409706b3          	sub	a3,a4,s1
   10d42:	24d8c863          	blt	a7,a3,10f92 <_malloc_r+0x3b6>
   10d46:	fe06c6e3          	blt	a3,zero,10d32 <_malloc_r+0x156>
   10d4a:	9722                	c.add	a4,s0
   10d4c:	4354                	c.lw	a3,4(a4)
   10d4e:	4410                	c.lw	a2,8(s0)
   10d50:	854e                	c.mv	a0,s3
   10d52:	0016e693          	ori	a3,a3,1
   10d56:	c354                	c.sw	a3,4(a4)
   10d58:	c65c                	c.sw	a5,12(a2)
   10d5a:	c790                	c.sw	a2,8(a5)
   10d5c:	21b9                	c.jal	111aa <__malloc_unlock>
   10d5e:	00840513          	addi	a0,s0,8
   10d62:	a029                	c.j	10d6c <_malloc_r+0x190>
   10d64:	47b1                	c.li	a5,12
   10d66:	00f9a023          	sw	a5,0(s3)
   10d6a:	4501                	c.li	a0,0
   10d6c:	50b2                	c.lwsp	ra,44(sp)
   10d6e:	5422                	c.lwsp	s0,40(sp)
   10d70:	5492                	c.lwsp	s1,36(sp)
   10d72:	5902                	c.lwsp	s2,32(sp)
   10d74:	49f2                	c.lwsp	s3,28(sp)
   10d76:	6145                	c.addi16sp	sp,48
   10d78:	8082                	c.jr	ra
   10d7a:	20000613          	addi	a2,zero,512
   10d7e:	04000593          	addi	a1,zero,64
   10d82:	03f00813          	addi	a6,zero,63
   10d86:	b5f5                	c.j	10c72 <_malloc_r+0x96>
   10d88:	00892403          	lw	s0,8(s2)
   10d8c:	c85a                	c.swsp	s6,16(sp)
   10d8e:	405c                	c.lw	a5,4(s0)
   10d90:	ffc7fb13          	andi	s6,a5,-4
   10d94:	009b6763          	bltu	s6,s1,10da2 <_malloc_r+0x1c6>
   10d98:	409b0733          	sub	a4,s6,s1
   10d9c:	47bd                	c.li	a5,15
   10d9e:	12e7c663          	blt	a5,a4,10eca <_malloc_r+0x2ee>
   10da2:	c266                	c.swsp	s9,4(sp)
   10da4:	ca56                	c.swsp	s5,20(sp)
   10da6:	f181a703          	lw	a4,-232(gp) # 1b728 <__malloc_sbrk_base>
   10daa:	f341aa83          	lw	s5,-204(gp) # 1b744 <__malloc_top_pad>
   10dae:	cc52                	c.swsp	s4,24(sp)
   10db0:	c65e                	c.swsp	s7,12(sp)
   10db2:	57fd                	c.li	a5,-1
   10db4:	9aa6                	c.add	s5,s1
   10db6:	01640a33          	add	s4,s0,s6
   10dba:	2cf70263          	beq	a4,a5,1107e <_malloc_r+0x4a2>
   10dbe:	6785                	c.lui	a5,0x1
   10dc0:	07bd                	c.addi	a5,15 # 100f <exit-0xf0a5>
   10dc2:	9abe                	c.add	s5,a5
   10dc4:	77fd                	c.lui	a5,0xfffff
   10dc6:	00fafab3          	and	s5,s5,a5
   10dca:	85d6                	c.mv	a1,s5
   10dcc:	854e                	c.mv	a0,s3
   10dce:	771020ef          	jal	ra,13d3e <_sbrk_r>
   10dd2:	57fd                	c.li	a5,-1
   10dd4:	8baa                	c.mv	s7,a0
   10dd6:	32f50b63          	beq	a0,a5,1110c <_malloc_r+0x530>
   10dda:	c462                	c.swsp	s8,8(sp)
   10ddc:	0d456563          	bltu	a0,s4,10ea6 <_malloc_r+0x2ca>
   10de0:	09418c13          	addi	s8,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   10de4:	000c2583          	lw	a1,0(s8)
   10de8:	95d6                	c.add	a1,s5
   10dea:	00bc2023          	sw	a1,0(s8)
   10dee:	872e                	c.mv	a4,a1
   10df0:	32aa0263          	beq	s4,a0,11114 <_malloc_r+0x538>
   10df4:	f181a683          	lw	a3,-232(gp) # 1b728 <__malloc_sbrk_base>
   10df8:	57fd                	c.li	a5,-1
   10dfa:	32f68a63          	beq	a3,a5,1112e <_malloc_r+0x552>
   10dfe:	414b87b3          	sub	a5,s7,s4
   10e02:	97ba                	c.add	a5,a4
   10e04:	00fc2023          	sw	a5,0(s8)
   10e08:	007bfc93          	andi	s9,s7,7
   10e0c:	280c8363          	beq	s9,zero,11092 <_malloc_r+0x4b6>
   10e10:	419b8bb3          	sub	s7,s7,s9
   10e14:	6585                	c.lui	a1,0x1
   10e16:	0ba1                	c.addi	s7,8
   10e18:	05a1                	c.addi	a1,8 # 1008 <exit-0xf0ac>
   10e1a:	9ade                	c.add	s5,s7
   10e1c:	419585b3          	sub	a1,a1,s9
   10e20:	415585b3          	sub	a1,a1,s5
   10e24:	05d2                	c.slli	a1,0x14
   10e26:	0145da13          	srli	s4,a1,0x14
   10e2a:	85d2                	c.mv	a1,s4
   10e2c:	854e                	c.mv	a0,s3
   10e2e:	711020ef          	jal	ra,13d3e <_sbrk_r>
   10e32:	57fd                	c.li	a5,-1
   10e34:	32f50963          	beq	a0,a5,11166 <_malloc_r+0x58a>
   10e38:	41750533          	sub	a0,a0,s7
   10e3c:	01450ab3          	add	s5,a0,s4
   10e40:	000c2703          	lw	a4,0(s8)
   10e44:	01792423          	sw	s7,8(s2)
   10e48:	001ae793          	ori	a5,s5,1
   10e4c:	00ea05b3          	add	a1,s4,a4
   10e50:	00fba223          	sw	a5,4(s7)
   10e54:	00bc2023          	sw	a1,0(s8)
   10e58:	03240563          	beq	s0,s2,10e82 <_malloc_r+0x2a6>
   10e5c:	46bd                	c.li	a3,15
   10e5e:	2566fa63          	bgeu	a3,s6,110b2 <_malloc_r+0x4d6>
   10e62:	4058                	c.lw	a4,4(s0)
   10e64:	ff4b0793          	addi	a5,s6,-12
   10e68:	9be1                	c.andi	a5,-8
   10e6a:	8b05                	c.andi	a4,1
   10e6c:	8f5d                	c.or	a4,a5
   10e6e:	c058                	c.sw	a4,4(s0)
   10e70:	4615                	c.li	a2,5
   10e72:	00f40733          	add	a4,s0,a5
   10e76:	c350                	c.sw	a2,4(a4)
   10e78:	c710                	c.sw	a2,8(a4)
   10e7a:	1ef6e863          	bltu	a3,a5,1106a <_malloc_r+0x48e>
   10e7e:	004ba783          	lw	a5,4(s7)
   10e82:	f301a683          	lw	a3,-208(gp) # 1b740 <__malloc_max_sbrked_mem>
   10e86:	00b6f463          	bgeu	a3,a1,10e8e <_malloc_r+0x2b2>
   10e8a:	f2b1a823          	sw	a1,-208(gp) # 1b740 <__malloc_max_sbrked_mem>
   10e8e:	f2c1a683          	lw	a3,-212(gp) # 1b73c <__malloc_max_total_mem>
   10e92:	00b6f463          	bgeu	a3,a1,10e9a <_malloc_r+0x2be>
   10e96:	f2b1a623          	sw	a1,-212(gp) # 1b73c <__malloc_max_total_mem>
   10e9a:	4c22                	c.lwsp	s8,8(sp)
   10e9c:	845e                	c.mv	s0,s7
   10e9e:	a811                	c.j	10eb2 <_malloc_r+0x2d6>
   10ea0:	00492503          	lw	a0,4(s2)
   10ea4:	bd99                	c.j	10cfa <_malloc_r+0x11e>
   10ea6:	25240b63          	beq	s0,s2,110fc <_malloc_r+0x520>
   10eaa:	00892403          	lw	s0,8(s2)
   10eae:	4c22                	c.lwsp	s8,8(sp)
   10eb0:	405c                	c.lw	a5,4(s0)
   10eb2:	9bf1                	c.andi	a5,-4
   10eb4:	40978733          	sub	a4,a5,s1
   10eb8:	2097e163          	bltu	a5,s1,110ba <_malloc_r+0x4de>
   10ebc:	47bd                	c.li	a5,15
   10ebe:	1ee7de63          	bge	a5,a4,110ba <_malloc_r+0x4de>
   10ec2:	4a62                	c.lwsp	s4,24(sp)
   10ec4:	4ad2                	c.lwsp	s5,20(sp)
   10ec6:	4bb2                	c.lwsp	s7,12(sp)
   10ec8:	4c92                	c.lwsp	s9,4(sp)
   10eca:	0014e793          	ori	a5,s1,1
   10ece:	c05c                	c.sw	a5,4(s0)
   10ed0:	94a2                	c.add	s1,s0
   10ed2:	00992423          	sw	s1,8(s2)
   10ed6:	00176713          	ori	a4,a4,1
   10eda:	854e                	c.mv	a0,s3
   10edc:	c0d8                	c.sw	a4,4(s1)
   10ede:	24f1                	c.jal	111aa <__malloc_unlock>
   10ee0:	50b2                	c.lwsp	ra,44(sp)
   10ee2:	00840513          	addi	a0,s0,8
   10ee6:	5422                	c.lwsp	s0,40(sp)
   10ee8:	4b42                	c.lwsp	s6,16(sp)
   10eea:	5492                	c.lwsp	s1,36(sp)
   10eec:	5902                	c.lwsp	s2,32(sp)
   10eee:	49f2                	c.lwsp	s3,28(sp)
   10ef0:	6145                	c.addi16sp	sp,48
   10ef2:	8082                	c.jr	ra
   10ef4:	4410                	c.lw	a2,8(s0)
   10ef6:	97a2                	c.add	a5,s0
   10ef8:	43d8                	c.lw	a4,4(a5)
   10efa:	c654                	c.sw	a3,12(a2)
   10efc:	c690                	c.sw	a2,8(a3)
   10efe:	00176713          	ori	a4,a4,1
   10f02:	854e                	c.mv	a0,s3
   10f04:	c3d8                	c.sw	a4,4(a5)
   10f06:	2455                	c.jal	111aa <__malloc_unlock>
   10f08:	50b2                	c.lwsp	ra,44(sp)
   10f0a:	00840513          	addi	a0,s0,8
   10f0e:	5422                	c.lwsp	s0,40(sp)
   10f10:	5492                	c.lwsp	s1,36(sp)
   10f12:	5902                	c.lwsp	s2,32(sp)
   10f14:	49f2                	c.lwsp	s3,28(sp)
   10f16:	6145                	c.addi16sp	sp,48
   10f18:	8082                	c.jr	ra
   10f1a:	47c0                	c.lw	s0,12(a5)
   10f1c:	0589                	c.addi	a1,2
   10f1e:	d88781e3          	beq	a5,s0,10ca0 <_malloc_r+0xc4>
   10f22:	b9c5                	c.j	10c12 <_malloc_r+0x36>
   10f24:	0097d713          	srli	a4,a5,0x9
   10f28:	4691                	c.li	a3,4
   10f2a:	0ee6f263          	bgeu	a3,a4,1100e <_malloc_r+0x432>
   10f2e:	46d1                	c.li	a3,20
   10f30:	18e6ed63          	bltu	a3,a4,110ca <_malloc_r+0x4ee>
   10f34:	05c70613          	addi	a2,a4,92
   10f38:	060e                	c.slli	a2,0x3
   10f3a:	05b70693          	addi	a3,a4,91
   10f3e:	964a                	c.add	a2,s2
   10f40:	4218                	c.lw	a4,0(a2)
   10f42:	1661                	c.addi	a2,-8
   10f44:	00e61663          	bne	a2,a4,10f50 <_malloc_r+0x374>
   10f48:	aa2d                	c.j	11082 <_malloc_r+0x4a6>
   10f4a:	4718                	c.lw	a4,8(a4)
   10f4c:	00e60663          	beq	a2,a4,10f58 <_malloc_r+0x37c>
   10f50:	4354                	c.lw	a3,4(a4)
   10f52:	9af1                	c.andi	a3,-4
   10f54:	fed7ebe3          	bltu	a5,a3,10f4a <_malloc_r+0x36e>
   10f58:	4750                	c.lw	a2,12(a4)
   10f5a:	c450                	c.sw	a2,12(s0)
   10f5c:	c418                	c.sw	a4,8(s0)
   10f5e:	c600                	c.sw	s0,8(a2)
   10f60:	c740                	c.sw	s0,12(a4)
   10f62:	bb61                	c.j	10cfa <_malloc_r+0x11e>
   10f64:	4751                	c.li	a4,20
   10f66:	0af77c63          	bgeu	a4,a5,1101e <_malloc_r+0x442>
   10f6a:	05400713          	addi	a4,zero,84
   10f6e:	16f76a63          	bltu	a4,a5,110e2 <_malloc_r+0x506>
   10f72:	00c4d793          	srli	a5,s1,0xc
   10f76:	06f78593          	addi	a1,a5,111 # fffff06f <__BSS_END__+0xfffe3613>
   10f7a:	06e78813          	addi	a6,a5,110
   10f7e:	00359613          	slli	a2,a1,0x3
   10f82:	b9c5                	c.j	10c72 <_malloc_r+0x96>
   10f84:	0e05                	c.addi	t3,1
   10f86:	003e7793          	andi	a5,t3,3
   10f8a:	0521                	c.addi	a0,8
   10f8c:	c7cd                	c.beqz	a5,11036 <_malloc_r+0x45a>
   10f8e:	455c                	c.lw	a5,12(a0)
   10f90:	b34d                	c.j	10d32 <_malloc_r+0x156>
   10f92:	4410                	c.lw	a2,8(s0)
   10f94:	0014e593          	ori	a1,s1,1
   10f98:	c04c                	c.sw	a1,4(s0)
   10f9a:	c65c                	c.sw	a5,12(a2)
   10f9c:	c790                	c.sw	a2,8(a5)
   10f9e:	94a2                	c.add	s1,s0
   10fa0:	00992a23          	sw	s1,20(s2)
   10fa4:	00992823          	sw	s1,16(s2)
   10fa8:	0016e793          	ori	a5,a3,1
   10fac:	9722                	c.add	a4,s0
   10fae:	0104a623          	sw	a6,12(s1)
   10fb2:	0104a423          	sw	a6,8(s1)
   10fb6:	c0dc                	c.sw	a5,4(s1)
   10fb8:	854e                	c.mv	a0,s3
   10fba:	c314                	c.sw	a3,0(a4)
   10fbc:	22fd                	c.jal	111aa <__malloc_unlock>
   10fbe:	00840513          	addi	a0,s0,8
   10fc2:	b36d                	c.j	10d6c <_malloc_r+0x190>
   10fc4:	97a2                	c.add	a5,s0
   10fc6:	43d8                	c.lw	a4,4(a5)
   10fc8:	854e                	c.mv	a0,s3
   10fca:	00176713          	ori	a4,a4,1
   10fce:	c3d8                	c.sw	a4,4(a5)
   10fd0:	2ae9                	c.jal	111aa <__malloc_unlock>
   10fd2:	00840513          	addi	a0,s0,8
   10fd6:	bb59                	c.j	10d6c <_malloc_r+0x190>
   10fd8:	0034d593          	srli	a1,s1,0x3
   10fdc:	00848793          	addi	a5,s1,8
   10fe0:	b105                	c.j	10c00 <_malloc_r+0x24>
   10fe2:	0014e693          	ori	a3,s1,1
   10fe6:	c054                	c.sw	a3,4(s0)
   10fe8:	94a2                	c.add	s1,s0
   10fea:	00992a23          	sw	s1,20(s2)
   10fee:	00992823          	sw	s1,16(s2)
   10ff2:	00176693          	ori	a3,a4,1
   10ff6:	97a2                	c.add	a5,s0
   10ff8:	0104a623          	sw	a6,12(s1)
   10ffc:	0104a423          	sw	a6,8(s1)
   11000:	c0d4                	c.sw	a3,4(s1)
   11002:	854e                	c.mv	a0,s3
   11004:	c398                	c.sw	a4,0(a5)
   11006:	2255                	c.jal	111aa <__malloc_unlock>
   11008:	00840513          	addi	a0,s0,8
   1100c:	b385                	c.j	10d6c <_malloc_r+0x190>
   1100e:	0067d713          	srli	a4,a5,0x6
   11012:	03970613          	addi	a2,a4,57
   11016:	060e                	c.slli	a2,0x3
   11018:	03870693          	addi	a3,a4,56
   1101c:	b70d                	c.j	10f3e <_malloc_r+0x362>
   1101e:	05c78593          	addi	a1,a5,92
   11022:	05b78813          	addi	a6,a5,91
   11026:	00359613          	slli	a2,a1,0x3
   1102a:	b1a1                	c.j	10c72 <_malloc_r+0x96>
   1102c:	00832783          	lw	a5,8(t1)
   11030:	15fd                	c.addi	a1,-1
   11032:	16679863          	bne	a5,t1,111a2 <_malloc_r+0x5c6>
   11036:	0035f793          	andi	a5,a1,3
   1103a:	1361                	c.addi	t1,-8
   1103c:	fbe5                	c.bnez	a5,1102c <_malloc_r+0x450>
   1103e:	00492703          	lw	a4,4(s2)
   11042:	fff64793          	xori	a5,a2,-1
   11046:	8ff9                	c.and	a5,a4
   11048:	00f92223          	sw	a5,4(s2)
   1104c:	0606                	c.slli	a2,0x1
   1104e:	d2c7ede3          	bltu	a5,a2,10d88 <_malloc_r+0x1ac>
   11052:	d2060be3          	beq	a2,zero,10d88 <_malloc_r+0x1ac>
   11056:	00f67733          	and	a4,a2,a5
   1105a:	e711                	c.bnez	a4,11066 <_malloc_r+0x48a>
   1105c:	0606                	c.slli	a2,0x1
   1105e:	00f67733          	and	a4,a2,a5
   11062:	0e11                	c.addi	t3,4
   11064:	df65                	c.beqz	a4,1105c <_malloc_r+0x480>
   11066:	85f2                	c.mv	a1,t3
   11068:	b97d                	c.j	10d26 <_malloc_r+0x14a>
   1106a:	00840593          	addi	a1,s0,8
   1106e:	854e                	c.mv	a0,s3
   11070:	951ff0ef          	jal	ra,109c0 <_free_r>
   11074:	000c2583          	lw	a1,0(s8)
   11078:	00892b83          	lw	s7,8(s2)
   1107c:	b509                	c.j	10e7e <_malloc_r+0x2a2>
   1107e:	0ac1                	c.addi	s5,16
   11080:	b3a9                	c.j	10dca <_malloc_r+0x1ee>
   11082:	8689                	c.srai	a3,0x2
   11084:	4785                	c.li	a5,1
   11086:	00d797b3          	sll	a5,a5,a3
   1108a:	8d5d                	c.or	a0,a5
   1108c:	00a92223          	sw	a0,4(s2)
   11090:	b5e9                	c.j	10f5a <_malloc_r+0x37e>
   11092:	015b85b3          	add	a1,s7,s5
   11096:	40b005b3          	sub	a1,zero,a1
   1109a:	05d2                	c.slli	a1,0x14
   1109c:	0145da13          	srli	s4,a1,0x14
   110a0:	85d2                	c.mv	a1,s4
   110a2:	854e                	c.mv	a0,s3
   110a4:	49b020ef          	jal	ra,13d3e <_sbrk_r>
   110a8:	57fd                	c.li	a5,-1
   110aa:	d8f517e3          	bne	a0,a5,10e38 <_malloc_r+0x25c>
   110ae:	4a01                	c.li	s4,0
   110b0:	bb41                	c.j	10e40 <_malloc_r+0x264>
   110b2:	4c22                	c.lwsp	s8,8(sp)
   110b4:	4785                	c.li	a5,1
   110b6:	00fba223          	sw	a5,4(s7)
   110ba:	854e                	c.mv	a0,s3
   110bc:	20fd                	c.jal	111aa <__malloc_unlock>
   110be:	4a62                	c.lwsp	s4,24(sp)
   110c0:	4ad2                	c.lwsp	s5,20(sp)
   110c2:	4b42                	c.lwsp	s6,16(sp)
   110c4:	4bb2                	c.lwsp	s7,12(sp)
   110c6:	4c92                	c.lwsp	s9,4(sp)
   110c8:	b14d                	c.j	10d6a <_malloc_r+0x18e>
   110ca:	05400693          	addi	a3,zero,84
   110ce:	06e6e363          	bltu	a3,a4,11134 <_malloc_r+0x558>
   110d2:	00c7d713          	srli	a4,a5,0xc
   110d6:	06f70613          	addi	a2,a4,111
   110da:	060e                	c.slli	a2,0x3
   110dc:	06e70693          	addi	a3,a4,110
   110e0:	bdb9                	c.j	10f3e <_malloc_r+0x362>
   110e2:	15400713          	addi	a4,zero,340
   110e6:	06f76363          	bltu	a4,a5,1114c <_malloc_r+0x570>
   110ea:	00f4d793          	srli	a5,s1,0xf
   110ee:	07878593          	addi	a1,a5,120
   110f2:	07778813          	addi	a6,a5,119
   110f6:	00359613          	slli	a2,a1,0x3
   110fa:	bea5                	c.j	10c72 <_malloc_r+0x96>
   110fc:	09418c13          	addi	s8,gp,148 # 1b8a4 <__malloc_current_mallinfo>
   11100:	000c2703          	lw	a4,0(s8)
   11104:	9756                	c.add	a4,s5
   11106:	00ec2023          	sw	a4,0(s8)
   1110a:	b1ed                	c.j	10df4 <_malloc_r+0x218>
   1110c:	00892403          	lw	s0,8(s2)
   11110:	405c                	c.lw	a5,4(s0)
   11112:	b345                	c.j	10eb2 <_malloc_r+0x2d6>
   11114:	01451793          	slli	a5,a0,0x14
   11118:	cc079ee3          	bne	a5,zero,10df4 <_malloc_r+0x218>
   1111c:	00892b83          	lw	s7,8(s2)
   11120:	015b07b3          	add	a5,s6,s5
   11124:	0017e793          	ori	a5,a5,1
   11128:	00fba223          	sw	a5,4(s7)
   1112c:	bb99                	c.j	10e82 <_malloc_r+0x2a6>
   1112e:	f171ac23          	sw	s7,-232(gp) # 1b728 <__malloc_sbrk_base>
   11132:	b9d9                	c.j	10e08 <_malloc_r+0x22c>
   11134:	15400693          	addi	a3,zero,340
   11138:	02e6ed63          	bltu	a3,a4,11172 <_malloc_r+0x596>
   1113c:	00f7d713          	srli	a4,a5,0xf
   11140:	07870613          	addi	a2,a4,120
   11144:	060e                	c.slli	a2,0x3
   11146:	07770693          	addi	a3,a4,119
   1114a:	bbd5                	c.j	10f3e <_malloc_r+0x362>
   1114c:	55400713          	addi	a4,zero,1364
   11150:	02f76d63          	bltu	a4,a5,1118a <_malloc_r+0x5ae>
   11154:	0124d793          	srli	a5,s1,0x12
   11158:	07d78593          	addi	a1,a5,125
   1115c:	07c78813          	addi	a6,a5,124
   11160:	00359613          	slli	a2,a1,0x3
   11164:	b639                	c.j	10c72 <_malloc_r+0x96>
   11166:	1ce1                	c.addi	s9,-8
   11168:	9ae6                	c.add	s5,s9
   1116a:	417a8ab3          	sub	s5,s5,s7
   1116e:	4a01                	c.li	s4,0
   11170:	b9c1                	c.j	10e40 <_malloc_r+0x264>
   11172:	55400693          	addi	a3,zero,1364
   11176:	02e6e163          	bltu	a3,a4,11198 <_malloc_r+0x5bc>
   1117a:	0127d713          	srli	a4,a5,0x12
   1117e:	07d70613          	addi	a2,a4,125
   11182:	060e                	c.slli	a2,0x3
   11184:	07c70693          	addi	a3,a4,124
   11188:	bb5d                	c.j	10f3e <_malloc_r+0x362>
   1118a:	3f800613          	addi	a2,zero,1016
   1118e:	07f00593          	addi	a1,zero,127
   11192:	07e00813          	addi	a6,zero,126
   11196:	bcf1                	c.j	10c72 <_malloc_r+0x96>
   11198:	3f800613          	addi	a2,zero,1016
   1119c:	07e00693          	addi	a3,zero,126
   111a0:	bb79                	c.j	10f3e <_malloc_r+0x362>
   111a2:	00492783          	lw	a5,4(s2)
   111a6:	b55d                	c.j	1104c <_malloc_r+0x470>

000111a8 <__malloc_lock>:
   111a8:	8082                	c.jr	ra

000111aa <__malloc_unlock>:
   111aa:	8082                	c.jr	ra

000111ac <_vfprintf_r>:
   111ac:	7145                	c.addi16sp	sp,-464
   111ae:	1c112623          	sw	ra,460(sp)
   111b2:	1c812423          	sw	s0,456(sp)
   111b6:	1b312e23          	sw	s3,444(sp)
   111ba:	c432                	c.swsp	a2,8(sp)
   111bc:	89ae                	c.mv	s3,a1
   111be:	c836                	c.swsp	a3,16(sp)
   111c0:	842a                	c.mv	s0,a0
   111c2:	c22a                	c.swsp	a0,4(sp)
   111c4:	36f020ef          	jal	ra,13d32 <_localeconv_r>
   111c8:	411c                	c.lw	a5,0(a0)
   111ca:	853e                	c.mv	a0,a5
   111cc:	d63e                	c.swsp	a5,44(sp)
   111ce:	5a3020ef          	jal	ra,13f70 <strlen>
   111d2:	d22a                	c.swsp	a0,36(sp)
   111d4:	c982                	c.swsp	zero,208(sp)
   111d6:	cb82                	c.swsp	zero,212(sp)
   111d8:	cd82                	c.swsp	zero,216(sp)
   111da:	cf82                	c.swsp	zero,220(sp)
   111dc:	47a2                	c.lwsp	a5,8(sp)
   111de:	c409                	c.beqz	s0,111e8 <_vfprintf_r+0x3c>
   111e0:	5858                	c.lw	a4,52(s0)
   111e2:	e319                	c.bnez	a4,111e8 <_vfprintf_r+0x3c>
   111e4:	42c0106f          	jal	zero,12610 <_vfprintf_r+0x1464>
   111e8:	00c99703          	lh	a4,12(s3)
   111ec:	0649a683          	lw	a3,100(s3)
   111f0:	6589                	c.lui	a1,0x2
   111f2:	01271613          	slli	a2,a4,0x12
   111f6:	26064d63          	blt	a2,zero,11470 <_vfprintf_r+0x2c4>
   111fa:	7679                	c.lui	a2,0xffffe
   111fc:	8f4d                	c.or	a4,a1
   111fe:	167d                	c.addi	a2,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   11200:	8ef1                	c.and	a3,a2
   11202:	00e99623          	sh	a4,12(s3)
   11206:	0742                	c.slli	a4,0x10
   11208:	8741                	c.srai	a4,0x10
   1120a:	06d9a223          	sw	a3,100(s3)
   1120e:	00877693          	andi	a3,a4,8
   11212:	1e068c63          	beq	a3,zero,1140a <_vfprintf_r+0x25e>
   11216:	0109a683          	lw	a3,16(s3)
   1121a:	1e068863          	beq	a3,zero,1140a <_vfprintf_r+0x25e>
   1121e:	8b69                	c.andi	a4,26
   11220:	46a9                	c.li	a3,10
   11222:	20d70163          	beq	a4,a3,11424 <_vfprintf_r+0x278>
   11226:	1c912223          	sw	s1,452(sp)
   1122a:	1d212023          	sw	s2,448(sp)
   1122e:	1b512a23          	sw	s5,436(sp)
   11232:	1b612823          	sw	s6,432(sp)
   11236:	1b412c23          	sw	s4,440(sp)
   1123a:	1b712623          	sw	s7,428(sp)
   1123e:	1b812423          	sw	s8,424(sp)
   11242:	1b912223          	sw	s9,420(sp)
   11246:	1ba12023          	sw	s10,416(sp)
   1124a:	19b12e23          	sw	s11,412(sp)
   1124e:	8b3e                	c.mv	s6,a5
   11250:	000b4783          	lbu	a5,0(s6)
   11254:	0ec10a93          	addi	s5,sp,236
   11258:	c782                	c.swsp	zero,204(sp)
   1125a:	c582                	c.swsp	zero,200(sp)
   1125c:	c3d6                	c.swsp	s5,196(sp)
   1125e:	cc02                	c.swsp	zero,24(sp)
   11260:	da02                	c.swsp	zero,52(sp)
   11262:	d402                	c.swsp	zero,40(sp)
   11264:	c282                	c.swsp	zero,68(sp)
   11266:	dc02                	c.swsp	zero,56(sp)
   11268:	c602                	c.swsp	zero,12(sp)
   1126a:	c44e                	c.swsp	s3,8(sp)
   1126c:	8456                	c.mv	s0,s5
   1126e:	02500493          	addi	s1,zero,37
   11272:	4941                	c.li	s2,16
   11274:	18078063          	beq	a5,zero,113f4 <_vfprintf_r+0x248>
   11278:	8a5a                	c.mv	s4,s6
   1127a:	1c978a63          	beq	a5,s1,1144e <_vfprintf_r+0x2a2>
   1127e:	001a4783          	lbu	a5,1(s4)
   11282:	0a05                	c.addi	s4,1
   11284:	fbfd                	c.bnez	a5,1127a <_vfprintf_r+0xce>
   11286:	416a0d33          	sub	s10,s4,s6
   1128a:	176a0563          	beq	s4,s6,113f4 <_vfprintf_r+0x248>
   1128e:	47be                	c.lwsp	a5,204(sp)
   11290:	46ae                	c.lwsp	a3,200(sp)
   11292:	01642023          	sw	s6,0(s0)
   11296:	97ea                	c.add	a5,s10
   11298:	0685                	c.addi	a3,1
   1129a:	01a42223          	sw	s10,4(s0)
   1129e:	c7be                	c.swsp	a5,204(sp)
   112a0:	c5b6                	c.swsp	a3,200(sp)
   112a2:	479d                	c.li	a5,7
   112a4:	0421                	c.addi	s0,8
   112a6:	1ad7cb63          	blt	a5,a3,1145c <_vfprintf_r+0x2b0>
   112aa:	4732                	c.lwsp	a4,12(sp)
   112ac:	000a4783          	lbu	a5,0(s4)
   112b0:	976a                	c.add	a4,s10
   112b2:	c63a                	c.swsp	a4,12(sp)
   112b4:	14078063          	beq	a5,zero,113f4 <_vfprintf_r+0x248>
   112b8:	001a0e93          	addi	t4,s4,1
   112bc:	4301                	c.li	t1,0
   112be:	001a4883          	lbu	a7,1(s4)
   112c2:	0a0103a3          	sb	zero,167(sp)
   112c6:	5a7d                	c.li	s4,-1
   112c8:	4c81                	c.li	s9,0
   112ca:	05a00d13          	addi	s10,zero,90
   112ce:	89f6                	c.mv	s3,t4
   112d0:	8b9a                	c.mv	s7,t1
   112d2:	0985                	c.addi	s3,1
   112d4:	fe088793          	addi	a5,a7,-32
   112d8:	02fd6f63          	bltu	s10,a5,11316 <_vfprintf_r+0x16a>
   112dc:	676d                	c.lui	a4,0x1b
   112de:	078a                	c.slli	a5,0x2
   112e0:	8a870713          	addi	a4,a4,-1880 # 1a8a8 <__clzsi2+0x1c8>
   112e4:	97ba                	c.add	a5,a4
   112e6:	439c                	c.lw	a5,0(a5)
   112e8:	8782                	c.jr	a5
   112ea:	fd088793          	addi	a5,a7,-48
   112ee:	4b81                	c.li	s7,0
   112f0:	46a5                	c.li	a3,9
   112f2:	002b9713          	slli	a4,s7,0x2
   112f6:	0009c883          	lbu	a7,0(s3)
   112fa:	01770333          	add	t1,a4,s7
   112fe:	0306                	c.slli	t1,0x1
   11300:	00678bb3          	add	s7,a5,t1
   11304:	fd088793          	addi	a5,a7,-48
   11308:	0985                	c.addi	s3,1
   1130a:	fef6f4e3          	bgeu	a3,a5,112f2 <_vfprintf_r+0x146>
   1130e:	fe088793          	addi	a5,a7,-32
   11312:	fcfd75e3          	bgeu	s10,a5,112dc <_vfprintf_r+0x130>
   11316:	8ece                	c.mv	t4,s3
   11318:	835e                	c.mv	t1,s7
   1131a:	0c088d63          	beq	a7,zero,113f4 <_vfprintf_r+0x248>
   1131e:	4d85                	c.li	s11,1
   11320:	13110623          	sb	a7,300(sp)
   11324:	0a0103a3          	sb	zero,167(sp)
   11328:	8d6e                	c.mv	s10,s11
   1132a:	ca02                	c.swsp	zero,20(sp)
   1132c:	4a01                	c.li	s4,0
   1132e:	d002                	c.swsp	zero,32(sp)
   11330:	ce02                	c.swsp	zero,28(sp)
   11332:	4b81                	c.li	s7,0
   11334:	12c10b13          	addi	s6,sp,300
   11338:	463e                	c.lwsp	a2,204(sp)
   1133a:	084cf993          	andi	s3,s9,132
   1133e:	85b2                	c.mv	a1,a2
   11340:	38098263          	beq	s3,zero,116c4 <_vfprintf_r+0x518>
   11344:	0a714783          	lbu	a5,167(sp)
   11348:	cf95                	c.beqz	a5,11384 <_vfprintf_r+0x1d8>
   1134a:	452e                	c.lwsp	a0,200(sp)
   1134c:	4781                	c.li	a5,0
   1134e:	4685                	c.li	a3,1
   11350:	0605                	c.addi	a2,1
   11352:	0505                	c.addi	a0,1
   11354:	0a710593          	addi	a1,sp,167
   11358:	c054                	c.sw	a3,4(s0)
   1135a:	c00c                	c.sw	a1,0(s0)
   1135c:	c7b2                	c.swsp	a2,204(sp)
   1135e:	c5aa                	c.swsp	a0,200(sp)
   11360:	469d                	c.li	a3,7
   11362:	0421                	c.addi	s0,8
   11364:	1ea6c963          	blt	a3,a0,11556 <_vfprintf_r+0x3aa>
   11368:	cf91                	c.beqz	a5,11384 <_vfprintf_r+0x1d8>
   1136a:	452e                	c.lwsp	a0,200(sp)
   1136c:	4789                	c.li	a5,2
   1136e:	0609                	c.addi	a2,2
   11370:	0505                	c.addi	a0,1
   11372:	1134                	c.addi4spn	a3,sp,168
   11374:	c05c                	c.sw	a5,4(s0)
   11376:	c014                	c.sw	a3,0(s0)
   11378:	c7b2                	c.swsp	a2,204(sp)
   1137a:	c5aa                	c.swsp	a0,200(sp)
   1137c:	479d                	c.li	a5,7
   1137e:	0421                	c.addi	s0,8
   11380:	36a7c6e3          	blt	a5,a0,11eec <_vfprintf_r+0xd40>
   11384:	08000793          	addi	a5,zero,128
   11388:	18f98be3          	beq	s3,a5,11d1e <_vfprintf_r+0xb72>
   1138c:	41ba0a33          	sub	s4,s4,s11
   11390:	35404663          	blt	zero,s4,116dc <_vfprintf_r+0x530>
   11394:	100cf793          	andi	a5,s9,256
   11398:	3e079063          	bne	a5,zero,11778 <_vfprintf_r+0x5cc>
   1139c:	47ae                	c.lwsp	a5,200(sp)
   1139e:	966e                	c.add	a2,s11
   113a0:	c7b2                	c.swsp	a2,204(sp)
   113a2:	0785                	c.addi	a5,1
   113a4:	01642023          	sw	s6,0(s0)
   113a8:	01b42223          	sw	s11,4(s0)
   113ac:	c5be                	c.swsp	a5,200(sp)
   113ae:	469d                	c.li	a3,7
   113b0:	20f6c363          	blt	a3,a5,115b6 <_vfprintf_r+0x40a>
   113b4:	0421                	c.addi	s0,8
   113b6:	004cfe13          	andi	t3,s9,4
   113ba:	000e0663          	beq	t3,zero,113c6 <_vfprintf_r+0x21a>
   113be:	41a30a33          	sub	s4,t1,s10
   113c2:	21404863          	blt	zero,s4,115d2 <_vfprintf_r+0x426>
   113c6:	01a35363          	bge	t1,s10,113cc <_vfprintf_r+0x220>
   113ca:	836a                	c.mv	t1,s10
   113cc:	47b2                	c.lwsp	a5,12(sp)
   113ce:	979a                	c.add	a5,t1
   113d0:	c63e                	c.swsp	a5,12(sp)
   113d2:	1e0616e3          	bne	a2,zero,11dbe <_vfprintf_r+0xc12>
   113d6:	47d2                	c.lwsp	a5,20(sp)
   113d8:	c582                	c.swsp	zero,200(sp)
   113da:	c799                	c.beqz	a5,113e8 <_vfprintf_r+0x23c>
   113dc:	45d2                	c.lwsp	a1,20(sp)
   113de:	4512                	c.lwsp	a0,4(sp)
   113e0:	ce76                	c.swsp	t4,28(sp)
   113e2:	ddeff0ef          	jal	ra,109c0 <_free_r>
   113e6:	4ef2                	c.lwsp	t4,28(sp)
   113e8:	8456                	c.mv	s0,s5
   113ea:	8b76                	c.mv	s6,t4
   113ec:	000b4783          	lbu	a5,0(s6)
   113f0:	e80794e3          	bne	a5,zero,11278 <_vfprintf_r+0xcc>
   113f4:	47be                	c.lwsp	a5,204(sp)
   113f6:	49a2                	c.lwsp	s3,8(sp)
   113f8:	1e0782e3          	beq	a5,zero,11ddc <_vfprintf_r+0xc30>
   113fc:	4512                	c.lwsp	a0,4(sp)
   113fe:	01d0                	c.addi4spn	a2,sp,196
   11400:	85ce                	c.mv	a1,s3
   11402:	0ca020ef          	jal	ra,134cc <__sprint_r>
   11406:	1d70006f          	jal	zero,11ddc <_vfprintf_r+0xc30>
   1140a:	4512                	c.lwsp	a0,4(sp)
   1140c:	85ce                	c.mv	a1,s3
   1140e:	c43e                	c.swsp	a5,8(sp)
   11410:	6f4020ef          	jal	ra,13b04 <__swsetup_r>
   11414:	e135                	c.bnez	a0,11478 <_vfprintf_r+0x2cc>
   11416:	00c99703          	lh	a4,12(s3)
   1141a:	46a9                	c.li	a3,10
   1141c:	47a2                	c.lwsp	a5,8(sp)
   1141e:	8b69                	c.andi	a4,26
   11420:	e0d713e3          	bne	a4,a3,11226 <_vfprintf_r+0x7a>
   11424:	00e99703          	lh	a4,14(s3)
   11428:	de074fe3          	blt	a4,zero,11226 <_vfprintf_r+0x7a>
   1142c:	46c2                	c.lwsp	a3,16(sp)
   1142e:	4512                	c.lwsp	a0,4(sp)
   11430:	863e                	c.mv	a2,a5
   11432:	85ce                	c.mv	a1,s3
   11434:	004020ef          	jal	ra,13438 <__sbprintf>
   11438:	c62a                	c.swsp	a0,12(sp)
   1143a:	1d70006f          	jal	zero,11e10 <_vfprintf_r+0xc64>
   1143e:	0009c883          	lbu	a7,0(s3)
   11442:	bd41                	c.j	112d2 <_vfprintf_r+0x126>
   11444:	0009c883          	lbu	a7,0(s3)
   11448:	020cec93          	ori	s9,s9,32
   1144c:	b559                	c.j	112d2 <_vfprintf_r+0x126>
   1144e:	416a0d33          	sub	s10,s4,s6
   11452:	e36a1ee3          	bne	s4,s6,1128e <_vfprintf_r+0xe2>
   11456:	000a4783          	lbu	a5,0(s4)
   1145a:	bda9                	c.j	112b4 <_vfprintf_r+0x108>
   1145c:	45a2                	c.lwsp	a1,8(sp)
   1145e:	4512                	c.lwsp	a0,4(sp)
   11460:	01d0                	c.addi4spn	a2,sp,196
   11462:	06a020ef          	jal	ra,134cc <__sprint_r>
   11466:	c119                	c.beqz	a0,1146c <_vfprintf_r+0x2c0>
   11468:	61d0106f          	jal	zero,13284 <_vfprintf_r+0x20d8>
   1146c:	8456                	c.mv	s0,s5
   1146e:	bd35                	c.j	112aa <_vfprintf_r+0xfe>
   11470:	01269613          	slli	a2,a3,0x12
   11474:	d8065de3          	bge	a2,zero,1120e <_vfprintf_r+0x62>
   11478:	57fd                	c.li	a5,-1
   1147a:	c63e                	c.swsp	a5,12(sp)
   1147c:	1950006f          	jal	zero,11e10 <_vfprintf_r+0xc64>
   11480:	008cf793          	andi	a5,s9,8
   11484:	8ece                	c.mv	t4,s3
   11486:	835e                	c.mv	t1,s7
   11488:	4e0795e3          	bne	a5,zero,12172 <_vfprintf_r+0xfc6>
   1148c:	47c2                	c.lwsp	a5,16(sp)
   1148e:	0908                	c.addi4spn	a0,sp,144
   11490:	d046                	c.swsp	a7,32(sp)
   11492:	079d                	c.addi	a5,7
   11494:	9be1                	c.andi	a5,-8
   11496:	2388                	c.fld	fa0,0(a5)
   11498:	07a1                	c.addi	a5,8
   1149a:	c83e                	c.swsp	a5,16(sp)
   1149c:	ce5e                	c.swsp	s7,28(sp)
   1149e:	ca4e                	c.swsp	s3,20(sp)
   114a0:	0c0090ef          	jal	ra,1a560 <__extenddftf2>
   114a4:	464a                	c.lwsp	a2,144(sp)
   114a6:	46da                	c.lwsp	a3,148(sp)
   114a8:	476a                	c.lwsp	a4,152(sp)
   114aa:	47fa                	c.lwsp	a5,156(sp)
   114ac:	5882                	c.lwsp	a7,32(sp)
   114ae:	4372                	c.lwsp	t1,28(sp)
   114b0:	4ed2                	c.lwsp	t4,20(sp)
   114b2:	0988                	c.addi4spn	a0,sp,208
   114b4:	d046                	c.swsp	a7,32(sp)
   114b6:	ce1a                	c.swsp	t1,28(sp)
   114b8:	ca76                	c.swsp	t4,20(sp)
   114ba:	cfbe                	c.swsp	a5,220(sp)
   114bc:	c9b2                	c.swsp	a2,208(sp)
   114be:	cbb6                	c.swsp	a3,212(sp)
   114c0:	cdba                	c.swsp	a4,216(sp)
   114c2:	611020ef          	jal	ra,142d2 <_ldcheck>
   114c6:	d72a                	c.swsp	a0,172(sp)
   114c8:	4789                	c.li	a5,2
   114ca:	4ed2                	c.lwsp	t4,20(sp)
   114cc:	4372                	c.lwsp	t1,28(sp)
   114ce:	5882                	c.lwsp	a7,32(sp)
   114d0:	00f51463          	bne	a0,a5,114d8 <_vfprintf_r+0x32c>
   114d4:	1920106f          	jal	zero,12666 <_vfprintf_r+0x14ba>
   114d8:	4785                	c.li	a5,1
   114da:	00f51463          	bne	a0,a5,114e2 <_vfprintf_r+0x336>
   114de:	23e0106f          	jal	zero,1271c <_vfprintf_r+0x1570>
   114e2:	06100713          	addi	a4,zero,97
   114e6:	00e89463          	bne	a7,a4,114ee <_vfprintf_r+0x342>
   114ea:	3170106f          	jal	zero,13000 <_vfprintf_r+0x1e54>
   114ee:	04100713          	addi	a4,zero,65
   114f2:	00e89463          	bne	a7,a4,114fa <_vfprintf_r+0x34e>
   114f6:	6c40106f          	jal	zero,12bba <_vfprintf_r+0x1a0e>
   114fa:	577d                	c.li	a4,-1
   114fc:	00ea1463          	bne	s4,a4,11504 <_vfprintf_r+0x358>
   11500:	55f0106f          	jal	zero,1325e <_vfprintf_r+0x20b2>
   11504:	fdf8f713          	andi	a4,a7,-33
   11508:	04700693          	addi	a3,zero,71
   1150c:	ca02                	c.swsp	zero,20(sp)
   1150e:	00d71463          	bne	a4,a3,11516 <_vfprintf_r+0x36a>
   11512:	53f0106f          	jal	zero,13250 <_vfprintf_r+0x20a4>
   11516:	4f7e                	c.lwsp	t5,220(sp)
   11518:	100ce793          	ori	a5,s9,256
   1151c:	d802                	c.swsp	zero,48(sp)
   1151e:	43ce                	c.lwsp	t2,208(sp)
   11520:	42de                	c.lwsp	t0,212(sp)
   11522:	4fee                	c.lwsp	t6,216(sp)
   11524:	8c3e                	c.mv	s8,a5
   11526:	000f5963          	bge	t5,zero,11538 <_vfprintf_r+0x38c>
   1152a:	800007b7          	lui	a5,0x80000
   1152e:	00ff4f33          	xor	t5,t5,a5
   11532:	02d00793          	addi	a5,zero,45
   11536:	d83e                	c.swsp	a5,48(sp)
   11538:	fbf88793          	addi	a5,a7,-65
   1153c:	02500713          	addi	a4,zero,37
   11540:	00f77463          	bgeu	a4,a5,11548 <_vfprintf_r+0x39c>
   11544:	4b20106f          	jal	zero,129f6 <_vfprintf_r+0x184a>
   11548:	676d                	c.lui	a4,0x1b
   1154a:	078a                	c.slli	a5,0x2
   1154c:	a1470713          	addi	a4,a4,-1516 # 1aa14 <__clzsi2+0x334>
   11550:	97ba                	c.add	a5,a4
   11552:	439c                	c.lw	a5,0(a5)
   11554:	8782                	c.jr	a5
   11556:	45a2                	c.lwsp	a1,8(sp)
   11558:	4512                	c.lwsp	a0,4(sp)
   1155a:	01d0                	c.addi4spn	a2,sp,196
   1155c:	c4c6                	c.swsp	a7,72(sp)
   1155e:	c0be                	c.swsp	a5,64(sp)
   11560:	de1a                	c.swsp	t1,60(sp)
   11562:	d876                	c.swsp	t4,48(sp)
   11564:	769010ef          	jal	ra,134cc <__sprint_r>
   11568:	060514e3          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   1156c:	463e                	c.lwsp	a2,204(sp)
   1156e:	48a6                	c.lwsp	a7,72(sp)
   11570:	4786                	c.lwsp	a5,64(sp)
   11572:	5372                	c.lwsp	t1,60(sp)
   11574:	5ec2                	c.lwsp	t4,48(sp)
   11576:	8456                	c.mv	s0,s5
   11578:	bbc5                	c.j	11368 <_vfprintf_r+0x1bc>
   1157a:	46ae                	c.lwsp	a3,200(sp)
   1157c:	5712                	c.lwsp	a4,36(sp)
   1157e:	55b2                	c.lwsp	a1,44(sp)
   11580:	0685                	c.addi	a3,1
   11582:	963a                	c.add	a2,a4
   11584:	c00c                	c.sw	a1,0(s0)
   11586:	c058                	c.sw	a4,4(s0)
   11588:	c7b2                	c.swsp	a2,204(sp)
   1158a:	c5b6                	c.swsp	a3,200(sp)
   1158c:	459d                	c.li	a1,7
   1158e:	0421                	c.addi	s0,8
   11590:	00d5d463          	bge	a1,a3,11598 <_vfprintf_r+0x3ec>
   11594:	5fc0106f          	jal	zero,12b90 <_vfprintf_r+0x19e4>
   11598:	0007d463          	bge	a5,zero,115a0 <_vfprintf_r+0x3f4>
   1159c:	3d90106f          	jal	zero,13174 <_vfprintf_r+0x1fc8>
   115a0:	47e2                	c.lwsp	a5,24(sp)
   115a2:	0685                	c.addi	a3,1
   115a4:	c5b6                	c.swsp	a3,200(sp)
   115a6:	963e                	c.add	a2,a5
   115a8:	c05c                	c.sw	a5,4(s0)
   115aa:	c7b2                	c.swsp	a2,204(sp)
   115ac:	01642023          	sw	s6,0(s0)
   115b0:	479d                	c.li	a5,7
   115b2:	e0d7d1e3          	bge	a5,a3,113b4 <_vfprintf_r+0x208>
   115b6:	45a2                	c.lwsp	a1,8(sp)
   115b8:	4512                	c.lwsp	a0,4(sp)
   115ba:	01d0                	c.addi4spn	a2,sp,196
   115bc:	d01a                	c.swsp	t1,32(sp)
   115be:	ce76                	c.swsp	t4,28(sp)
   115c0:	70d010ef          	jal	ra,134cc <__sprint_r>
   115c4:	000516e3          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   115c8:	463e                	c.lwsp	a2,204(sp)
   115ca:	4ef2                	c.lwsp	t4,28(sp)
   115cc:	5302                	c.lwsp	t1,32(sp)
   115ce:	8456                	c.mv	s0,s5
   115d0:	b3dd                	c.j	113b6 <_vfprintf_r+0x20a>
   115d2:	66ed                	c.lui	a3,0x1b
   115d4:	4b41                	c.li	s6,16
   115d6:	47ae                	c.lwsp	a5,200(sp)
   115d8:	abc68693          	addi	a3,a3,-1348 # 1aabc <blanks.1>
   115dc:	054b5a63          	bge	s6,s4,11630 <_vfprintf_r+0x484>
   115e0:	8722                	c.mv	a4,s0
   115e2:	4ba2                	c.lwsp	s7,8(sp)
   115e4:	8cda                	c.mv	s9,s6
   115e6:	4d9d                	c.li	s11,7
   115e8:	8c76                	c.mv	s8,t4
   115ea:	841a                	c.mv	s0,t1
   115ec:	89b6                	c.mv	s3,a3
   115ee:	a021                	c.j	115f6 <_vfprintf_r+0x44a>
   115f0:	1a41                	c.addi	s4,-16
   115f2:	034cdb63          	bge	s9,s4,11628 <_vfprintf_r+0x47c>
   115f6:	0641                	c.addi	a2,16
   115f8:	0785                	c.addi	a5,1 # 80000001 <__BSS_END__+0x7ffe45a5>
   115fa:	01372023          	sw	s3,0(a4)
   115fe:	01672223          	sw	s6,4(a4)
   11602:	c7b2                	c.swsp	a2,204(sp)
   11604:	c5be                	c.swsp	a5,200(sp)
   11606:	0721                	c.addi	a4,8
   11608:	fefdd4e3          	bge	s11,a5,115f0 <_vfprintf_r+0x444>
   1160c:	4512                	c.lwsp	a0,4(sp)
   1160e:	01d0                	c.addi4spn	a2,sp,196
   11610:	85de                	c.mv	a1,s7
   11612:	6bb010ef          	jal	ra,134cc <__sprint_r>
   11616:	c119                	c.beqz	a0,1161c <_vfprintf_r+0x470>
   11618:	0220106f          	jal	zero,1263a <_vfprintf_r+0x148e>
   1161c:	1a41                	c.addi	s4,-16
   1161e:	463e                	c.lwsp	a2,204(sp)
   11620:	47ae                	c.lwsp	a5,200(sp)
   11622:	8756                	c.mv	a4,s5
   11624:	fd4cc9e3          	blt	s9,s4,115f6 <_vfprintf_r+0x44a>
   11628:	8322                	c.mv	t1,s0
   1162a:	8ee2                	c.mv	t4,s8
   1162c:	843a                	c.mv	s0,a4
   1162e:	86ce                	c.mv	a3,s3
   11630:	9652                	c.add	a2,s4
   11632:	0785                	c.addi	a5,1
   11634:	c014                	c.sw	a3,0(s0)
   11636:	c7b2                	c.swsp	a2,204(sp)
   11638:	c5be                	c.swsp	a5,200(sp)
   1163a:	01442223          	sw	s4,4(s0)
   1163e:	469d                	c.li	a3,7
   11640:	d8f6d3e3          	bge	a3,a5,113c6 <_vfprintf_r+0x21a>
   11644:	45a2                	c.lwsp	a1,8(sp)
   11646:	4512                	c.lwsp	a0,4(sp)
   11648:	01d0                	c.addi4spn	a2,sp,196
   1164a:	d01a                	c.swsp	t1,32(sp)
   1164c:	ce76                	c.swsp	t4,28(sp)
   1164e:	67f010ef          	jal	ra,134cc <__sprint_r>
   11652:	76051f63          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   11656:	463e                	c.lwsp	a2,204(sp)
   11658:	5302                	c.lwsp	t1,32(sp)
   1165a:	4ef2                	c.lwsp	t4,28(sp)
   1165c:	b3ad                	c.j	113c6 <_vfprintf_r+0x21a>
   1165e:	47c2                	c.lwsp	a5,16(sp)
   11660:	0a0103a3          	sb	zero,167(sp)
   11664:	8ece                	c.mv	t4,s3
   11666:	0007ab03          	lw	s6,0(a5)
   1166a:	835e                	c.mv	t1,s7
   1166c:	00478993          	addi	s3,a5,4
   11670:	500b0ee3          	beq	s6,zero,1238c <_vfprintf_r+0x11e0>
   11674:	580a4fe3          	blt	s4,zero,12412 <_vfprintf_r+0x1266>
   11678:	8652                	c.mv	a2,s4
   1167a:	4581                	c.li	a1,0
   1167c:	855a                	c.mv	a0,s6
   1167e:	d046                	c.swsp	a7,32(sp)
   11680:	c876                	c.swsp	t4,16(sp)
   11682:	ce5e                	c.swsp	s7,28(sp)
   11684:	59e020ef          	jal	ra,13c22 <memchr>
   11688:	ca2a                	c.swsp	a0,20(sp)
   1168a:	0a714783          	lbu	a5,167(sp)
   1168e:	4ec2                	c.lwsp	t4,16(sp)
   11690:	4372                	c.lwsp	t1,28(sp)
   11692:	5882                	c.lwsp	a7,32(sp)
   11694:	e119                	c.bnez	a0,1169a <_vfprintf_r+0x4ee>
   11696:	2810106f          	jal	zero,13116 <_vfprintf_r+0x1f6a>
   1169a:	41650db3          	sub	s11,a0,s6
   1169e:	fffdc713          	xori	a4,s11,-1
   116a2:	877d                	c.srai	a4,0x1f
   116a4:	00edfd33          	and	s10,s11,a4
   116a8:	580798e3          	bne	a5,zero,12438 <_vfprintf_r+0x128c>
   116ac:	c84e                	c.swsp	s3,16(sp)
   116ae:	463e                	c.lwsp	a2,204(sp)
   116b0:	ca02                	c.swsp	zero,20(sp)
   116b2:	d002                	c.swsp	zero,32(sp)
   116b4:	ce02                	c.swsp	zero,28(sp)
   116b6:	084cf993          	andi	s3,s9,132
   116ba:	4a01                	c.li	s4,0
   116bc:	4b81                	c.li	s7,0
   116be:	85b2                	c.mv	a1,a2
   116c0:	c80992e3          	bne	s3,zero,11344 <_vfprintf_r+0x198>
   116c4:	41a307b3          	sub	a5,t1,s10
   116c8:	14f04ce3          	blt	zero,a5,12020 <_vfprintf_r+0xe74>
   116cc:	0a714783          	lbu	a5,167(sp)
   116d0:	c6079de3          	bne	a5,zero,1134a <_vfprintf_r+0x19e>
   116d4:	41ba0a33          	sub	s4,s4,s11
   116d8:	cb405ee3          	bge	zero,s4,11394 <_vfprintf_r+0x1e8>
   116dc:	67ed                	c.lui	a5,0x1b
   116de:	45ae                	c.lwsp	a1,200(sp)
   116e0:	aac78993          	addi	s3,a5,-1364 # 1aaac <zeroes.0>
   116e4:	05495b63          	bge	s2,s4,1173a <_vfprintf_r+0x58e>
   116e8:	87a2                	c.mv	a5,s0
   116ea:	8c52                	c.mv	s8,s4
   116ec:	844e                	c.mv	s0,s3
   116ee:	469d                	c.li	a3,7
   116f0:	d876                	c.swsp	t4,48(sp)
   116f2:	8a46                	c.mv	s4,a7
   116f4:	899a                	c.mv	s3,t1
   116f6:	a021                	c.j	116fe <_vfprintf_r+0x552>
   116f8:	1c41                	c.addi	s8,-16
   116fa:	03895a63          	bge	s2,s8,1172e <_vfprintf_r+0x582>
   116fe:	0641                	c.addi	a2,16
   11700:	0585                	c.addi	a1,1 # 2001 <exit-0xe0b3>
   11702:	c380                	c.sw	s0,0(a5)
   11704:	0127a223          	sw	s2,4(a5)
   11708:	c7b2                	c.swsp	a2,204(sp)
   1170a:	c5ae                	c.swsp	a1,200(sp)
   1170c:	07a1                	c.addi	a5,8
   1170e:	feb6d5e3          	bge	a3,a1,116f8 <_vfprintf_r+0x54c>
   11712:	45a2                	c.lwsp	a1,8(sp)
   11714:	4512                	c.lwsp	a0,4(sp)
   11716:	01d0                	c.addi4spn	a2,sp,196
   11718:	5b5010ef          	jal	ra,134cc <__sprint_r>
   1171c:	6a051a63          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   11720:	1c41                	c.addi	s8,-16
   11722:	463e                	c.lwsp	a2,204(sp)
   11724:	45ae                	c.lwsp	a1,200(sp)
   11726:	87d6                	c.mv	a5,s5
   11728:	469d                	c.li	a3,7
   1172a:	fd894ae3          	blt	s2,s8,116fe <_vfprintf_r+0x552>
   1172e:	5ec2                	c.lwsp	t4,48(sp)
   11730:	834e                	c.mv	t1,s3
   11732:	88d2                	c.mv	a7,s4
   11734:	89a2                	c.mv	s3,s0
   11736:	8a62                	c.mv	s4,s8
   11738:	843e                	c.mv	s0,a5
   1173a:	9652                	c.add	a2,s4
   1173c:	0585                	c.addi	a1,1
   1173e:	01342023          	sw	s3,0(s0)
   11742:	01442223          	sw	s4,4(s0)
   11746:	c7b2                	c.swsp	a2,204(sp)
   11748:	c5ae                	c.swsp	a1,200(sp)
   1174a:	479d                	c.li	a5,7
   1174c:	0421                	c.addi	s0,8
   1174e:	c4b7d3e3          	bge	a5,a1,11394 <_vfprintf_r+0x1e8>
   11752:	45a2                	c.lwsp	a1,8(sp)
   11754:	4512                	c.lwsp	a0,4(sp)
   11756:	01d0                	c.addi4spn	a2,sp,196
   11758:	c0c6                	c.swsp	a7,64(sp)
   1175a:	de1a                	c.swsp	t1,60(sp)
   1175c:	d876                	c.swsp	t4,48(sp)
   1175e:	56f010ef          	jal	ra,134cc <__sprint_r>
   11762:	66051763          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   11766:	100cf793          	andi	a5,s9,256
   1176a:	463e                	c.lwsp	a2,204(sp)
   1176c:	4886                	c.lwsp	a7,64(sp)
   1176e:	5372                	c.lwsp	t1,60(sp)
   11770:	5ec2                	c.lwsp	t4,48(sp)
   11772:	8456                	c.mv	s0,s5
   11774:	c20784e3          	beq	a5,zero,1139c <_vfprintf_r+0x1f0>
   11778:	06500793          	addi	a5,zero,101
   1177c:	6b17d363          	bge	a5,a7,11e22 <_vfprintf_r+0xc76>
   11780:	454e                	c.lwsp	a0,208(sp)
   11782:	45de                	c.lwsp	a1,212(sp)
   11784:	46ee                	c.lwsp	a3,216(sp)
   11786:	47fe                	c.lwsp	a5,220(sp)
   11788:	c92a                	c.swsp	a0,144(sp)
   1178a:	cb2e                	c.swsp	a1,148(sp)
   1178c:	0908                	c.addi4spn	a0,sp,144
   1178e:	010c                	c.addi4spn	a1,sp,128
   11790:	c0b2                	c.swsp	a2,64(sp)
   11792:	de1a                	c.swsp	t1,60(sp)
   11794:	d876                	c.swsp	t4,48(sp)
   11796:	c102                	c.swsp	zero,128(sp)
   11798:	c302                	c.swsp	zero,132(sp)
   1179a:	c502                	c.swsp	zero,136(sp)
   1179c:	c702                	c.swsp	zero,140(sp)
   1179e:	cd36                	c.swsp	a3,152(sp)
   117a0:	cf3e                	c.swsp	a5,156(sp)
   117a2:	3d1060ef          	jal	ra,18372 <__eqtf2>
   117a6:	5ec2                	c.lwsp	t4,48(sp)
   117a8:	5372                	c.lwsp	t1,60(sp)
   117aa:	4606                	c.lwsp	a2,64(sp)
   117ac:	76051163          	bne	a0,zero,11f0e <_vfprintf_r+0xd62>
   117b0:	47ae                	c.lwsp	a5,200(sp)
   117b2:	66e9                	c.lui	a3,0x1a
   117b4:	77068693          	addi	a3,a3,1904 # 1a770 <__clzsi2+0x90>
   117b8:	0605                	c.addi	a2,1
   117ba:	0785                	c.addi	a5,1
   117bc:	4585                	c.li	a1,1
   117be:	c014                	c.sw	a3,0(s0)
   117c0:	c04c                	c.sw	a1,4(s0)
   117c2:	c7b2                	c.swsp	a2,204(sp)
   117c4:	c5be                	c.swsp	a5,200(sp)
   117c6:	469d                	c.li	a3,7
   117c8:	0421                	c.addi	s0,8
   117ca:	64f6c9e3          	blt	a3,a5,1261c <_vfprintf_r+0x1470>
   117ce:	57ba                	c.lwsp	a5,172(sp)
   117d0:	4762                	c.lwsp	a4,24(sp)
   117d2:	16e7d9e3          	bge	a5,a4,12144 <_vfprintf_r+0xf98>
   117d6:	47ae                	c.lwsp	a5,200(sp)
   117d8:	5712                	c.lwsp	a4,36(sp)
   117da:	56b2                	c.lwsp	a3,44(sp)
   117dc:	0785                	c.addi	a5,1
   117de:	963a                	c.add	a2,a4
   117e0:	c014                	c.sw	a3,0(s0)
   117e2:	c058                	c.sw	a4,4(s0)
   117e4:	c7b2                	c.swsp	a2,204(sp)
   117e6:	c5be                	c.swsp	a5,200(sp)
   117e8:	469d                	c.li	a3,7
   117ea:	0421                	c.addi	s0,8
   117ec:	38f6c1e3          	blt	a3,a5,1236e <_vfprintf_r+0x11c2>
   117f0:	47e2                	c.lwsp	a5,24(sp)
   117f2:	fff78a13          	addi	s4,a5,-1
   117f6:	bd4050e3          	bge	zero,s4,113b6 <_vfprintf_r+0x20a>
   117fa:	67ed                	c.lui	a5,0x1b
   117fc:	4b41                	c.li	s6,16
   117fe:	46ae                	c.lwsp	a3,200(sp)
   11800:	aac78993          	addi	s3,a5,-1364 # 1aaac <zeroes.0>
   11804:	654b52e3          	bge	s6,s4,12648 <_vfprintf_r+0x149c>
   11808:	87a2                	c.mv	a5,s0
   1180a:	8bce                	c.mv	s7,s3
   1180c:	4c22                	c.lwsp	s8,8(sp)
   1180e:	885a                	c.mv	a6,s6
   11810:	4d9d                	c.li	s11,7
   11812:	8476                	c.mv	s0,t4
   11814:	899a                	c.mv	s3,t1
   11816:	a021                	c.j	1181e <_vfprintf_r+0x672>
   11818:	1a41                	c.addi	s4,-16
   1181a:	634853e3          	bge	a6,s4,12640 <_vfprintf_r+0x1494>
   1181e:	0641                	c.addi	a2,16
   11820:	0685                	c.addi	a3,1
   11822:	0177a023          	sw	s7,0(a5)
   11826:	0167a223          	sw	s6,4(a5)
   1182a:	c7b2                	c.swsp	a2,204(sp)
   1182c:	c5b6                	c.swsp	a3,200(sp)
   1182e:	07a1                	c.addi	a5,8
   11830:	feddd4e3          	bge	s11,a3,11818 <_vfprintf_r+0x66c>
   11834:	4512                	c.lwsp	a0,4(sp)
   11836:	01d0                	c.addi4spn	a2,sp,196
   11838:	85e2                	c.mv	a1,s8
   1183a:	493010ef          	jal	ra,134cc <__sprint_r>
   1183e:	c119                	c.beqz	a0,11844 <_vfprintf_r+0x698>
   11840:	0190106f          	jal	zero,13058 <_vfprintf_r+0x1eac>
   11844:	463e                	c.lwsp	a2,204(sp)
   11846:	46ae                	c.lwsp	a3,200(sp)
   11848:	87d6                	c.mv	a5,s5
   1184a:	4841                	c.li	a6,16
   1184c:	b7f1                	c.j	11818 <_vfprintf_r+0x66c>
   1184e:	4742                	c.lwsp	a4,16(sp)
   11850:	8ece                	c.mv	t4,s3
   11852:	835e                	c.mv	t1,s7
   11854:	431c                	c.lw	a5,0(a4)
   11856:	4d85                	c.li	s11,1
   11858:	0a0103a3          	sb	zero,167(sp)
   1185c:	12f10623          	sb	a5,300(sp)
   11860:	00470793          	addi	a5,a4,4
   11864:	c83e                	c.swsp	a5,16(sp)
   11866:	b4c9                	c.j	11328 <_vfprintf_r+0x17c>
   11868:	020cf793          	andi	a5,s9,32
   1186c:	8ece                	c.mv	t4,s3
   1186e:	835e                	c.mv	t1,s7
   11870:	efb1                	c.bnez	a5,118cc <_vfprintf_r+0x720>
   11872:	4742                	c.lwsp	a4,16(sp)
   11874:	010cf793          	andi	a5,s9,16
   11878:	00072d03          	lw	s10,0(a4)
   1187c:	0711                	c.addi	a4,4
   1187e:	c399                	c.beqz	a5,11884 <_vfprintf_r+0x6d8>
   11880:	1730106f          	jal	zero,131f2 <_vfprintf_r+0x2046>
   11884:	040cf793          	andi	a5,s9,64
   11888:	66078de3          	beq	a5,zero,12702 <_vfprintf_r+0x1556>
   1188c:	0d42                	c.slli	s10,0x10
   1188e:	410d5d13          	srai	s10,s10,0x10
   11892:	41fd5d93          	srai	s11,s10,0x1f
   11896:	c83a                	c.swsp	a4,16(sp)
   11898:	876e                	c.mv	a4,s11
   1189a:	04074563          	blt	a4,zero,118e4 <_vfprintf_r+0x738>
   1189e:	060a4363          	blt	s4,zero,11904 <_vfprintf_r+0x758>
   118a2:	01bd67b3          	or	a5,s10,s11
   118a6:	f7fcfc93          	andi	s9,s9,-129
   118aa:	efa9                	c.bnez	a5,11904 <_vfprintf_r+0x758>
   118ac:	000a1463          	bne	s4,zero,118b4 <_vfprintf_r+0x708>
   118b0:	1fc0106f          	jal	zero,12aac <_vfprintf_r+0x1900>
   118b4:	03000793          	addi	a5,zero,48
   118b8:	a8b9                	c.j	11916 <_vfprintf_r+0x76a>
   118ba:	020cf793          	andi	a5,s9,32
   118be:	8ece                	c.mv	t4,s3
   118c0:	835e                	c.mv	t1,s7
   118c2:	010cee13          	ori	t3,s9,16
   118c6:	10078ae3          	beq	a5,zero,121da <_vfprintf_r+0x102e>
   118ca:	8cf2                	c.mv	s9,t3
   118cc:	47c2                	c.lwsp	a5,16(sp)
   118ce:	079d                	c.addi	a5,7
   118d0:	9be1                	c.andi	a5,-8
   118d2:	43d8                	c.lw	a4,4(a5)
   118d4:	00878693          	addi	a3,a5,8
   118d8:	c836                	c.swsp	a3,16(sp)
   118da:	0007ad03          	lw	s10,0(a5)
   118de:	8dba                	c.mv	s11,a4
   118e0:	fa075fe3          	bge	a4,zero,1189e <_vfprintf_r+0x6f2>
   118e4:	02d00713          	addi	a4,zero,45
   118e8:	01a037b3          	sltu	a5,zero,s10
   118ec:	41b00db3          	sub	s11,zero,s11
   118f0:	0ae103a3          	sb	a4,167(sp)
   118f4:	40fd8db3          	sub	s11,s11,a5
   118f8:	41a00d33          	sub	s10,zero,s10
   118fc:	000a4463          	blt	s4,zero,11904 <_vfprintf_r+0x758>
   11900:	f7fcfc93          	andi	s9,s9,-129
   11904:	140d9c63          	bne	s11,zero,11a5c <_vfprintf_r+0x8b0>
   11908:	47a5                	c.li	a5,9
   1190a:	15a7e963          	bltu	a5,s10,11a5c <_vfprintf_r+0x8b0>
   1190e:	030d0793          	addi	a5,s10,48
   11912:	0ff7f793          	andi	a5,a5,255
   11916:	18f107a3          	sb	a5,399(sp)
   1191a:	8d52                	c.mv	s10,s4
   1191c:	01404363          	blt	zero,s4,11922 <_vfprintf_r+0x776>
   11920:	4d05                	c.li	s10,1
   11922:	0a714783          	lbu	a5,167(sp)
   11926:	4d85                	c.li	s11,1
   11928:	18f10b13          	addi	s6,sp,399
   1192c:	c3d9                	c.beqz	a5,119b2 <_vfprintf_r+0x806>
   1192e:	0d05                	c.addi	s10,1
   11930:	ca02                	c.swsp	zero,20(sp)
   11932:	d002                	c.swsp	zero,32(sp)
   11934:	ce02                	c.swsp	zero,28(sp)
   11936:	4b81                	c.li	s7,0
   11938:	b401                	c.j	11338 <_vfprintf_r+0x18c>
   1193a:	47c2                	c.lwsp	a5,16(sp)
   1193c:	0007ab83          	lw	s7,0(a5)
   11940:	0791                	c.addi	a5,4
   11942:	000bd7e3          	bge	s7,zero,12150 <_vfprintf_r+0xfa4>
   11946:	41700bb3          	sub	s7,zero,s7
   1194a:	c83e                	c.swsp	a5,16(sp)
   1194c:	0009c883          	lbu	a7,0(s3)
   11950:	004cec93          	ori	s9,s9,4
   11954:	babd                	c.j	112d2 <_vfprintf_r+0x126>
   11956:	0009c883          	lbu	a7,0(s3)
   1195a:	008cec93          	ori	s9,s9,8
   1195e:	ba95                	c.j	112d2 <_vfprintf_r+0x126>
   11960:	020cf793          	andi	a5,s9,32
   11964:	8ece                	c.mv	t4,s3
   11966:	835e                	c.mv	t1,s7
   11968:	010ce813          	ori	a6,s9,16
   1196c:	04078ee3          	beq	a5,zero,121c8 <_vfprintf_r+0x101c>
   11970:	47c2                	c.lwsp	a5,16(sp)
   11972:	00778713          	addi	a4,a5,7
   11976:	9b61                	c.andi	a4,-8
   11978:	00870793          	addi	a5,a4,8
   1197c:	c83e                	c.swsp	a5,16(sp)
   1197e:	4350                	c.lw	a2,4(a4)
   11980:	431c                	c.lw	a5,0(a4)
   11982:	0a0103a3          	sb	zero,167(sp)
   11986:	bff87c93          	andi	s9,a6,-1025
   1198a:	020a4963          	blt	s4,zero,119bc <_vfprintf_r+0x810>
   1198e:	00c7e733          	or	a4,a5,a2
   11992:	b7f87c93          	andi	s9,a6,-1153
   11996:	e31d                	c.bnez	a4,119bc <_vfprintf_r+0x810>
   11998:	020a1263          	bne	s4,zero,119bc <_vfprintf_r+0x810>
   1199c:	00187d93          	andi	s11,a6,1
   119a0:	3c0d89e3          	beq	s11,zero,12572 <_vfprintf_r+0x13c6>
   119a4:	03000793          	addi	a5,zero,48
   119a8:	18f107a3          	sb	a5,399(sp)
   119ac:	8d6e                	c.mv	s10,s11
   119ae:	18f10b13          	addi	s6,sp,399
   119b2:	ca02                	c.swsp	zero,20(sp)
   119b4:	d002                	c.swsp	zero,32(sp)
   119b6:	ce02                	c.swsp	zero,28(sp)
   119b8:	4b81                	c.li	s7,0
   119ba:	babd                	c.j	11338 <_vfprintf_r+0x18c>
   119bc:	19010b13          	addi	s6,sp,400
   119c0:	01d61693          	slli	a3,a2,0x1d
   119c4:	0077f713          	andi	a4,a5,7
   119c8:	838d                	c.srli	a5,0x3
   119ca:	85da                	c.mv	a1,s6
   119cc:	03070713          	addi	a4,a4,48
   119d0:	8fd5                	c.or	a5,a3
   119d2:	820d                	c.srli	a2,0x3
   119d4:	00c7e6b3          	or	a3,a5,a2
   119d8:	feeb0fa3          	sb	a4,-1(s6)
   119dc:	1b7d                	c.addi	s6,-1
   119de:	f2ed                	c.bnez	a3,119c0 <_vfprintf_r+0x814>
   119e0:	001cf793          	andi	a5,s9,1
   119e4:	c78d                	c.beqz	a5,11a0e <_vfprintf_r+0x862>
   119e6:	03000793          	addi	a5,zero,48
   119ea:	02f70263          	beq	a4,a5,11a0e <_vfprintf_r+0x862>
   119ee:	15f9                	c.addi	a1,-2
   119f0:	fefb0fa3          	sb	a5,-1(s6)
   119f4:	0b1c                	c.addi4spn	a5,sp,400
   119f6:	40b78db3          	sub	s11,a5,a1
   119fa:	8d52                	c.mv	s10,s4
   119fc:	01ba5363          	bge	s4,s11,11a02 <_vfprintf_r+0x856>
   11a00:	8d6e                	c.mv	s10,s11
   11a02:	8b2e                	c.mv	s6,a1
   11a04:	ca02                	c.swsp	zero,20(sp)
   11a06:	d002                	c.swsp	zero,32(sp)
   11a08:	ce02                	c.swsp	zero,28(sp)
   11a0a:	4b81                	c.li	s7,0
   11a0c:	b235                	c.j	11338 <_vfprintf_r+0x18c>
   11a0e:	0b1c                	c.addi4spn	a5,sp,400
   11a10:	41678db3          	sub	s11,a5,s6
   11a14:	8d52                	c.mv	s10,s4
   11a16:	f9ba5ee3          	bge	s4,s11,119b2 <_vfprintf_r+0x806>
   11a1a:	8d6e                	c.mv	s10,s11
   11a1c:	ca02                	c.swsp	zero,20(sp)
   11a1e:	d002                	c.swsp	zero,32(sp)
   11a20:	ce02                	c.swsp	zero,28(sp)
   11a22:	4b81                	c.li	s7,0
   11a24:	ba11                	c.j	11338 <_vfprintf_r+0x18c>
   11a26:	020cf793          	andi	a5,s9,32
   11a2a:	8ece                	c.mv	t4,s3
   11a2c:	835e                	c.mv	t1,s7
   11a2e:	010cee13          	ori	t3,s9,16
   11a32:	10079963          	bne	a5,zero,11b44 <_vfprintf_r+0x998>
   11a36:	47c2                	c.lwsp	a5,16(sp)
   11a38:	00478713          	addi	a4,a5,4
   11a3c:	47c2                	c.lwsp	a5,16(sp)
   11a3e:	0a0103a3          	sb	zero,167(sp)
   11a42:	4d81                	c.li	s11,0
   11a44:	0007ad03          	lw	s10,0(a5)
   11a48:	540a47e3          	blt	s4,zero,12796 <_vfprintf_r+0x15ea>
   11a4c:	f7fe7c93          	andi	s9,t3,-129
   11a50:	760d0463          	beq	s10,zero,121b8 <_vfprintf_r+0x100c>
   11a54:	c83a                	c.swsp	a4,16(sp)
   11a56:	47a5                	c.li	a5,9
   11a58:	eba7fbe3          	bgeu	a5,s10,1190e <_vfprintf_r+0x762>
   11a5c:	ccccd737          	lui	a4,0xccccd
   11a60:	883a                	c.mv	a6,a4
   11a62:	ccc80813          	addi	a6,a6,-820
   11a66:	ccd70713          	addi	a4,a4,-819 # cccccccd <__BSS_END__+0xcccb1271>
   11a6a:	400cff13          	andi	t5,s9,1024
   11a6e:	4581                	c.li	a1,0
   11a70:	0b10                	c.addi4spn	a2,sp,400
   11a72:	0ff00993          	addi	s3,zero,255
   11a76:	8bf6                	c.mv	s7,t4
   11a78:	8c1a                	c.mv	s8,t1
   11a7a:	a8b9                	c.j	11ad8 <_vfprintf_r+0x92c>
   11a7c:	57a2                	c.lwsp	a5,40(sp)
   11a7e:	0007c783          	lbu	a5,0(a5)
   11a82:	2ab782e3          	beq	a5,a1,12526 <_vfprintf_r+0x137a>
   11a86:	8e6a                	c.mv	t3,s10
   11a88:	856e                	c.mv	a0,s11
   11a8a:	865a                	c.mv	a2,s6
   11a8c:	01bd07b3          	add	a5,s10,s11
   11a90:	01a7b6b3          	sltu	a3,a5,s10
   11a94:	97b6                	c.add	a5,a3
   11a96:	02e7b6b3          	mulhu	a3,a5,a4
   11a9a:	0026df93          	srli	t6,a3,0x2
   11a9e:	9af1                	c.andi	a3,-4
   11aa0:	96fe                	c.add	a3,t6
   11aa2:	8f95                	c.sub	a5,a3
   11aa4:	40fd07b3          	sub	a5,s10,a5
   11aa8:	00fd36b3          	sltu	a3,s10,a5
   11aac:	40dd86b3          	sub	a3,s11,a3
   11ab0:	030782b3          	mul	t0,a5,a6
   11ab4:	02e686b3          	mul	a3,a3,a4
   11ab8:	02e7bfb3          	mulhu	t6,a5,a4
   11abc:	9696                	c.add	a3,t0
   11abe:	02e787b3          	mul	a5,a5,a4
   11ac2:	96fe                	c.add	a3,t6
   11ac4:	01f69f93          	slli	t6,a3,0x1f
   11ac8:	0016dd93          	srli	s11,a3,0x1
   11acc:	8385                	c.srli	a5,0x1
   11ace:	00ffed33          	or	s10,t6,a5
   11ad2:	e119                	c.bnez	a0,11ad8 <_vfprintf_r+0x92c>
   11ad4:	5040106f          	jal	zero,12fd8 <_vfprintf_r+0x1e2c>
   11ad8:	01bd07b3          	add	a5,s10,s11
   11adc:	01a7b6b3          	sltu	a3,a5,s10
   11ae0:	96be                	c.add	a3,a5
   11ae2:	02e6b533          	mulhu	a0,a3,a4
   11ae6:	0585                	c.addi	a1,1
   11ae8:	fff60b13          	addi	s6,a2,-1
   11aec:	00255e13          	srli	t3,a0,0x2
   11af0:	9971                	c.andi	a0,-4
   11af2:	9572                	c.add	a0,t3
   11af4:	8e89                	c.sub	a3,a0
   11af6:	40dd06b3          	sub	a3,s10,a3
   11afa:	00dd3533          	sltu	a0,s10,a3
   11afe:	40ad8533          	sub	a0,s11,a0
   11b02:	02e6be33          	mulhu	t3,a3,a4
   11b06:	02e50533          	mul	a0,a0,a4
   11b0a:	02e686b3          	mul	a3,a3,a4
   11b0e:	9572                	c.add	a0,t3
   11b10:	057e                	c.slli	a0,0x1f
   11b12:	8285                	c.srli	a3,0x1
   11b14:	8ec9                	c.or	a3,a0
   11b16:	00269513          	slli	a0,a3,0x2
   11b1a:	96aa                	c.add	a3,a0
   11b1c:	0686                	c.slli	a3,0x1
   11b1e:	40dd06b3          	sub	a3,s10,a3
   11b22:	03068693          	addi	a3,a3,48
   11b26:	fed60fa3          	sb	a3,-1(a2)
   11b2a:	f40f19e3          	bne	t5,zero,11a7c <_vfprintf_r+0x8d0>
   11b2e:	8e6a                	c.mv	t3,s10
   11b30:	856e                	c.mv	a0,s11
   11b32:	865a                	c.mv	a2,s6
   11b34:	bfb1                	c.j	11a90 <_vfprintf_r+0x8e4>
   11b36:	020cf793          	andi	a5,s9,32
   11b3a:	8ece                	c.mv	t4,s3
   11b3c:	835e                	c.mv	t1,s7
   11b3e:	64078463          	beq	a5,zero,12186 <_vfprintf_r+0xfda>
   11b42:	8e66                	c.mv	t3,s9
   11b44:	47c2                	c.lwsp	a5,16(sp)
   11b46:	0a0103a3          	sb	zero,167(sp)
   11b4a:	8cf2                	c.mv	s9,t3
   11b4c:	079d                	c.addi	a5,7
   11b4e:	9be1                	c.andi	a5,-8
   11b50:	00878713          	addi	a4,a5,8
   11b54:	c83a                	c.swsp	a4,16(sp)
   11b56:	0007ad03          	lw	s10,0(a5)
   11b5a:	0047ad83          	lw	s11,4(a5)
   11b5e:	da0a43e3          	blt	s4,zero,11904 <_vfprintf_r+0x758>
   11b62:	01bd67b3          	or	a5,s10,s11
   11b66:	f7fe7c93          	andi	s9,t3,-129
   11b6a:	d8079de3          	bne	a5,zero,11904 <_vfprintf_r+0x758>
   11b6e:	080a08e3          	beq	s4,zero,123fe <_vfprintf_r+0x1252>
   11b72:	4d01                	c.li	s10,0
   11b74:	bb69                	c.j	1190e <_vfprintf_r+0x762>
   11b76:	0009c883          	lbu	a7,0(s3)
   11b7a:	06800793          	addi	a5,zero,104
   11b7e:	7ef88163          	beq	a7,a5,12360 <_vfprintf_r+0x11b4>
   11b82:	040cec93          	ori	s9,s9,64
   11b86:	f4cff06f          	jal	zero,112d2 <_vfprintf_r+0x126>
   11b8a:	46c2                	c.lwsp	a3,16(sp)
   11b8c:	020cf793          	andi	a5,s9,32
   11b90:	8ece                	c.mv	t4,s3
   11b92:	00468713          	addi	a4,a3,4
   11b96:	5c079663          	bne	a5,zero,12162 <_vfprintf_r+0xfb6>
   11b9a:	010cf793          	andi	a5,s9,16
   11b9e:	300799e3          	bne	a5,zero,126b0 <_vfprintf_r+0x1504>
   11ba2:	040cf793          	andi	a5,s9,64
   11ba6:	c399                	c.beqz	a5,11bac <_vfprintf_r+0xa00>
   11ba8:	7af0006f          	jal	zero,12b56 <_vfprintf_r+0x19aa>
   11bac:	200cfe13          	andi	t3,s9,512
   11bb0:	300e00e3          	beq	t3,zero,126b0 <_vfprintf_r+0x1504>
   11bb4:	47c2                	c.lwsp	a5,16(sp)
   11bb6:	46b2                	c.lwsp	a3,12(sp)
   11bb8:	c83a                	c.swsp	a4,16(sp)
   11bba:	439c                	c.lw	a5,0(a5)
   11bbc:	00d78023          	sb	a3,0(a5)
   11bc0:	8b76                	c.mv	s6,t4
   11bc2:	82bff06f          	jal	zero,113ec <_vfprintf_r+0x240>
   11bc6:	0009c883          	lbu	a7,0(s3)
   11bca:	06c00793          	addi	a5,zero,108
   11bce:	78f88263          	beq	a7,a5,12352 <_vfprintf_r+0x11a6>
   11bd2:	010cec93          	ori	s9,s9,16
   11bd6:	efcff06f          	jal	zero,112d2 <_vfprintf_r+0x126>
   11bda:	4742                	c.lwsp	a4,16(sp)
   11bdc:	67a1                	c.lui	a5,0x8
   11bde:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8884>
   11be2:	0af11423          	sh	a5,168(sp)
   11be6:	0a0103a3          	sb	zero,167(sp)
   11bea:	00470793          	addi	a5,a4,4
   11bee:	8ece                	c.mv	t4,s3
   11bf0:	4318                	c.lw	a4,0(a4)
   11bf2:	835e                	c.mv	t1,s7
   11bf4:	4681                	c.li	a3,0
   11bf6:	600a4263          	blt	s4,zero,121fa <_vfprintf_r+0x104e>
   11bfa:	f7fcf813          	andi	a6,s9,-129
   11bfe:	00286813          	ori	a6,a6,2
   11c02:	2a071ee3          	bne	a4,zero,126be <_vfprintf_r+0x1512>
   11c06:	6c0a0ae3          	beq	s4,zero,12ada <_vfprintf_r+0x192e>
   11c0a:	03000713          	addi	a4,zero,48
   11c0e:	c83e                	c.swsp	a5,16(sp)
   11c10:	8cc2                	c.mv	s9,a6
   11c12:	18e107a3          	sb	a4,399(sp)
   11c16:	8d52                	c.mv	s10,s4
   11c18:	ca02                	c.swsp	zero,20(sp)
   11c1a:	4d85                	c.li	s11,1
   11c1c:	d002                	c.swsp	zero,32(sp)
   11c1e:	ce02                	c.swsp	zero,28(sp)
   11c20:	4b81                	c.li	s7,0
   11c22:	07800893          	addi	a7,zero,120
   11c26:	18f10b13          	addi	s6,sp,399
   11c2a:	4f81                	c.li	t6,0
   11c2c:	ad35                	c.j	12268 <_vfprintf_r+0x10bc>
   11c2e:	020cf793          	andi	a5,s9,32
   11c32:	8ece                	c.mv	t4,s3
   11c34:	835e                	c.mv	t1,s7
   11c36:	5a079f63          	bne	a5,zero,121f4 <_vfprintf_r+0x1048>
   11c3a:	4742                	c.lwsp	a4,16(sp)
   11c3c:	010cf693          	andi	a3,s9,16
   11c40:	431c                	c.lw	a5,0(a4)
   11c42:	0711                	c.addi	a4,4
   11c44:	c299                	c.beqz	a3,11c4a <_vfprintf_r+0xa9e>
   11c46:	5a00106f          	jal	zero,131e6 <_vfprintf_r+0x203a>
   11c4a:	040cf693          	andi	a3,s9,64
   11c4e:	28068fe3          	beq	a3,zero,126ec <_vfprintf_r+0x1540>
   11c52:	07c2                	c.slli	a5,0x10
   11c54:	83c1                	c.srli	a5,0x10
   11c56:	c83a                	c.swsp	a4,16(sp)
   11c58:	8866                	c.mv	a6,s9
   11c5a:	4601                	c.li	a2,0
   11c5c:	b31d                	c.j	11982 <_vfprintf_r+0x7d6>
   11c5e:	4c12                	c.lwsp	s8,4(sp)
   11c60:	8562                	c.mv	a0,s8
   11c62:	0d0020ef          	jal	ra,13d32 <_localeconv_r>
   11c66:	415c                	c.lw	a5,4(a0)
   11c68:	853e                	c.mv	a0,a5
   11c6a:	dc3e                	c.swsp	a5,56(sp)
   11c6c:	304020ef          	jal	ra,13f70 <strlen>
   11c70:	87aa                	c.mv	a5,a0
   11c72:	8562                	c.mv	a0,s8
   11c74:	c2be                	c.swsp	a5,68(sp)
   11c76:	8c3e                	c.mv	s8,a5
   11c78:	0ba020ef          	jal	ra,13d32 <_localeconv_r>
   11c7c:	451c                	c.lw	a5,8(a0)
   11c7e:	0009c883          	lbu	a7,0(s3)
   11c82:	d43e                	c.swsp	a5,40(sp)
   11c84:	e40c0763          	beq	s8,zero,112d2 <_vfprintf_r+0x126>
   11c88:	e4078563          	beq	a5,zero,112d2 <_vfprintf_r+0x126>
   11c8c:	0007c783          	lbu	a5,0(a5)
   11c90:	e4078163          	beq	a5,zero,112d2 <_vfprintf_r+0x126>
   11c94:	400cec93          	ori	s9,s9,1024
   11c98:	e3aff06f          	jal	zero,112d2 <_vfprintf_r+0x126>
   11c9c:	0009c883          	lbu	a7,0(s3)
   11ca0:	001cec93          	ori	s9,s9,1
   11ca4:	e2eff06f          	jal	zero,112d2 <_vfprintf_r+0x126>
   11ca8:	0a714783          	lbu	a5,167(sp)
   11cac:	0009c883          	lbu	a7,0(s3)
   11cb0:	e2079163          	bne	a5,zero,112d2 <_vfprintf_r+0x126>
   11cb4:	02000793          	addi	a5,zero,32
   11cb8:	0af103a3          	sb	a5,167(sp)
   11cbc:	e16ff06f          	jal	zero,112d2 <_vfprintf_r+0x126>
   11cc0:	0009c883          	lbu	a7,0(s3)
   11cc4:	080cec93          	ori	s9,s9,128
   11cc8:	e0aff06f          	jal	zero,112d2 <_vfprintf_r+0x126>
   11ccc:	02b00793          	addi	a5,zero,43
   11cd0:	0009c883          	lbu	a7,0(s3)
   11cd4:	0af103a3          	sb	a5,167(sp)
   11cd8:	dfaff06f          	jal	zero,112d2 <_vfprintf_r+0x126>
   11cdc:	0009c883          	lbu	a7,0(s3)
   11ce0:	02a00793          	addi	a5,zero,42
   11ce4:	00198693          	addi	a3,s3,1
   11ce8:	00f89463          	bne	a7,a5,11cf0 <_vfprintf_r+0xb44>
   11cec:	6e40106f          	jal	zero,133d0 <_vfprintf_r+0x2224>
   11cf0:	4625                	c.li	a2,9
   11cf2:	fd088793          	addi	a5,a7,-48
   11cf6:	4a01                	c.li	s4,0
   11cf8:	02f66063          	bltu	a2,a5,11d18 <_vfprintf_r+0xb6c>
   11cfc:	002a1713          	slli	a4,s4,0x2
   11d00:	0006c883          	lbu	a7,0(a3)
   11d04:	9a3a                	c.add	s4,a4
   11d06:	0a06                	c.slli	s4,0x1
   11d08:	9a3e                	c.add	s4,a5
   11d0a:	fd088793          	addi	a5,a7,-48
   11d0e:	0685                	c.addi	a3,1
   11d10:	fef676e3          	bgeu	a2,a5,11cfc <_vfprintf_r+0xb50>
   11d14:	5a0a4963          	blt	s4,zero,122c6 <_vfprintf_r+0x111a>
   11d18:	89b6                	c.mv	s3,a3
   11d1a:	dbaff06f          	jal	zero,112d4 <_vfprintf_r+0x128>
   11d1e:	41a306b3          	sub	a3,t1,s10
   11d22:	e6d05563          	bge	zero,a3,1138c <_vfprintf_r+0x1e0>
   11d26:	67ed                	c.lui	a5,0x1b
   11d28:	4f41                	c.li	t5,16
   11d2a:	45ae                	c.lwsp	a1,200(sp)
   11d2c:	aac78993          	addi	s3,a5,-1364 # 1aaac <zeroes.0>
   11d30:	04df5c63          	bge	t5,a3,11d88 <_vfprintf_r+0xbdc>
   11d34:	87a2                	c.mv	a5,s0
   11d36:	82fa                	c.mv	t0,t5
   11d38:	4f9d                	c.li	t6,7
   11d3a:	8c76                	c.mv	s8,t4
   11d3c:	d81a                	c.swsp	t1,48(sp)
   11d3e:	8436                	c.mv	s0,a3
   11d40:	de46                	c.swsp	a7,60(sp)
   11d42:	a021                	c.j	11d4a <_vfprintf_r+0xb9e>
   11d44:	1441                	c.addi	s0,-16
   11d46:	0282dc63          	bge	t0,s0,11d7e <_vfprintf_r+0xbd2>
   11d4a:	0641                	c.addi	a2,16
   11d4c:	0585                	c.addi	a1,1
   11d4e:	0137a023          	sw	s3,0(a5)
   11d52:	01e7a223          	sw	t5,4(a5)
   11d56:	c7b2                	c.swsp	a2,204(sp)
   11d58:	c5ae                	c.swsp	a1,200(sp)
   11d5a:	07a1                	c.addi	a5,8
   11d5c:	febfd4e3          	bge	t6,a1,11d44 <_vfprintf_r+0xb98>
   11d60:	45a2                	c.lwsp	a1,8(sp)
   11d62:	4512                	c.lwsp	a0,4(sp)
   11d64:	01d0                	c.addi4spn	a2,sp,196
   11d66:	766010ef          	jal	ra,134cc <__sprint_r>
   11d6a:	e13d                	c.bnez	a0,11dd0 <_vfprintf_r+0xc24>
   11d6c:	42c1                	c.li	t0,16
   11d6e:	1441                	c.addi	s0,-16
   11d70:	463e                	c.lwsp	a2,204(sp)
   11d72:	45ae                	c.lwsp	a1,200(sp)
   11d74:	87d6                	c.mv	a5,s5
   11d76:	4f9d                	c.li	t6,7
   11d78:	8f16                	c.mv	t5,t0
   11d7a:	fc82c8e3          	blt	t0,s0,11d4a <_vfprintf_r+0xb9e>
   11d7e:	5342                	c.lwsp	t1,48(sp)
   11d80:	58f2                	c.lwsp	a7,60(sp)
   11d82:	86a2                	c.mv	a3,s0
   11d84:	8ee2                	c.mv	t4,s8
   11d86:	843e                	c.mv	s0,a5
   11d88:	9636                	c.add	a2,a3
   11d8a:	0585                	c.addi	a1,1
   11d8c:	01342023          	sw	s3,0(s0)
   11d90:	c054                	c.sw	a3,4(s0)
   11d92:	c7b2                	c.swsp	a2,204(sp)
   11d94:	c5ae                	c.swsp	a1,200(sp)
   11d96:	479d                	c.li	a5,7
   11d98:	0421                	c.addi	s0,8
   11d9a:	deb7d963          	bge	a5,a1,1138c <_vfprintf_r+0x1e0>
   11d9e:	45a2                	c.lwsp	a1,8(sp)
   11da0:	4512                	c.lwsp	a0,4(sp)
   11da2:	01d0                	c.addi4spn	a2,sp,196
   11da4:	c0c6                	c.swsp	a7,64(sp)
   11da6:	de1a                	c.swsp	t1,60(sp)
   11da8:	d876                	c.swsp	t4,48(sp)
   11daa:	722010ef          	jal	ra,134cc <__sprint_r>
   11dae:	e10d                	c.bnez	a0,11dd0 <_vfprintf_r+0xc24>
   11db0:	463e                	c.lwsp	a2,204(sp)
   11db2:	5ec2                	c.lwsp	t4,48(sp)
   11db4:	5372                	c.lwsp	t1,60(sp)
   11db6:	4886                	c.lwsp	a7,64(sp)
   11db8:	8456                	c.mv	s0,s5
   11dba:	dd2ff06f          	jal	zero,1138c <_vfprintf_r+0x1e0>
   11dbe:	45a2                	c.lwsp	a1,8(sp)
   11dc0:	4512                	c.lwsp	a0,4(sp)
   11dc2:	01d0                	c.addi4spn	a2,sp,196
   11dc4:	ce76                	c.swsp	t4,28(sp)
   11dc6:	706010ef          	jal	ra,134cc <__sprint_r>
   11dca:	4ef2                	c.lwsp	t4,28(sp)
   11dcc:	e0050563          	beq	a0,zero,113d6 <_vfprintf_r+0x22a>
   11dd0:	49a2                	c.lwsp	s3,8(sp)
   11dd2:	45d2                	c.lwsp	a1,20(sp)
   11dd4:	c581                	c.beqz	a1,11ddc <_vfprintf_r+0xc30>
   11dd6:	4512                	c.lwsp	a0,4(sp)
   11dd8:	be9fe0ef          	jal	ra,109c0 <_free_r>
   11ddc:	00c9d783          	lhu	a5,12(s3)
   11de0:	1c412483          	lw	s1,452(sp)
   11de4:	1c012903          	lw	s2,448(sp)
   11de8:	0407f793          	andi	a5,a5,64
   11dec:	1b812a03          	lw	s4,440(sp)
   11df0:	1b412a83          	lw	s5,436(sp)
   11df4:	1b012b03          	lw	s6,432(sp)
   11df8:	1ac12b83          	lw	s7,428(sp)
   11dfc:	1a812c03          	lw	s8,424(sp)
   11e00:	1a412c83          	lw	s9,420(sp)
   11e04:	1a012d03          	lw	s10,416(sp)
   11e08:	19c12d83          	lw	s11,412(sp)
   11e0c:	e6079663          	bne	a5,zero,11478 <_vfprintf_r+0x2cc>
   11e10:	1cc12083          	lw	ra,460(sp)
   11e14:	1c812403          	lw	s0,456(sp)
   11e18:	4532                	c.lwsp	a0,12(sp)
   11e1a:	1bc12983          	lw	s3,444(sp)
   11e1e:	6179                	c.addi16sp	sp,464
   11e20:	8082                	c.jr	ra
   11e22:	47ae                	c.lwsp	a5,200(sp)
   11e24:	4585                	c.li	a1,1
   11e26:	00b60a33          	add	s4,a2,a1
   11e2a:	00b78db3          	add	s11,a5,a1
   11e2e:	47e2                	c.lwsp	a5,24(sp)
   11e30:	00840693          	addi	a3,s0,8
   11e34:	28f5d063          	bge	a1,a5,120b4 <_vfprintf_r+0xf08>
   11e38:	4785                	c.li	a5,1
   11e3a:	c05c                	c.sw	a5,4(s0)
   11e3c:	01642023          	sw	s6,0(s0)
   11e40:	c7d2                	c.swsp	s4,204(sp)
   11e42:	c5ee                	c.swsp	s11,200(sp)
   11e44:	479d                	c.li	a5,7
   11e46:	69b7c063          	blt	a5,s11,124c6 <_vfprintf_r+0x131a>
   11e4a:	5792                	c.lwsp	a5,36(sp)
   11e4c:	5732                	c.lwsp	a4,44(sp)
   11e4e:	0d85                	c.addi	s11,1
   11e50:	9a3e                	c.add	s4,a5
   11e52:	c2dc                	c.sw	a5,4(a3)
   11e54:	c298                	c.sw	a4,0(a3)
   11e56:	c7d2                	c.swsp	s4,204(sp)
   11e58:	c5ee                	c.swsp	s11,200(sp)
   11e5a:	479d                	c.li	a5,7
   11e5c:	06a1                	c.addi	a3,8
   11e5e:	69b7c363          	blt	a5,s11,124e4 <_vfprintf_r+0x1338>
   11e62:	47fe                	c.lwsp	a5,220(sp)
   11e64:	454e                	c.lwsp	a0,208(sp)
   11e66:	45de                	c.lwsp	a1,212(sp)
   11e68:	466e                	c.lwsp	a2,216(sp)
   11e6a:	cf3e                	c.swsp	a5,156(sp)
   11e6c:	47e2                	c.lwsp	a5,24(sp)
   11e6e:	c92a                	c.swsp	a0,144(sp)
   11e70:	cb2e                	c.swsp	a1,148(sp)
   11e72:	0908                	c.addi4spn	a0,sp,144
   11e74:	010c                	c.addi4spn	a1,sp,128
   11e76:	d836                	c.swsp	a3,48(sp)
   11e78:	d01a                	c.swsp	t1,32(sp)
   11e7a:	ce76                	c.swsp	t4,28(sp)
   11e7c:	c102                	c.swsp	zero,128(sp)
   11e7e:	c302                	c.swsp	zero,132(sp)
   11e80:	c502                	c.swsp	zero,136(sp)
   11e82:	c702                	c.swsp	zero,140(sp)
   11e84:	cd32                	c.swsp	a2,152(sp)
   11e86:	fff78413          	addi	s0,a5,-1
   11e8a:	4e8060ef          	jal	ra,18372 <__eqtf2>
   11e8e:	4ef2                	c.lwsp	t4,28(sp)
   11e90:	5302                	c.lwsp	t1,32(sp)
   11e92:	56c2                	c.lwsp	a3,48(sp)
   11e94:	24050b63          	beq	a0,zero,120ea <_vfprintf_r+0xf3e>
   11e98:	0d85                	c.addi	s11,1
   11e9a:	9a22                	c.add	s4,s0
   11e9c:	0b05                	c.addi	s6,1
   11e9e:	c5ee                	c.swsp	s11,200(sp)
   11ea0:	c7d2                	c.swsp	s4,204(sp)
   11ea2:	0166a023          	sw	s6,0(a3)
   11ea6:	c2c0                	c.sw	s0,4(a3)
   11ea8:	479d                	c.li	a5,7
   11eaa:	3fb7cf63          	blt	a5,s11,122a8 <_vfprintf_r+0x10fc>
   11eae:	06a1                	c.addi	a3,8
   11eb0:	5752                	c.lwsp	a4,52(sp)
   11eb2:	194c                	c.addi4spn	a1,sp,180
   11eb4:	001d8793          	addi	a5,s11,1
   11eb8:	01470633          	add	a2,a4,s4
   11ebc:	c28c                	c.sw	a1,0(a3)
   11ebe:	c7b2                	c.swsp	a2,204(sp)
   11ec0:	c5be                	c.swsp	a5,200(sp)
   11ec2:	c2d8                	c.sw	a4,4(a3)
   11ec4:	459d                	c.li	a1,7
   11ec6:	00868413          	addi	s0,a3,8
   11eca:	cef5d663          	bge	a1,a5,113b6 <_vfprintf_r+0x20a>
   11ece:	45a2                	c.lwsp	a1,8(sp)
   11ed0:	4512                	c.lwsp	a0,4(sp)
   11ed2:	01d0                	c.addi4spn	a2,sp,196
   11ed4:	d01a                	c.swsp	t1,32(sp)
   11ed6:	ce76                	c.swsp	t4,28(sp)
   11ed8:	5f4010ef          	jal	ra,134cc <__sprint_r>
   11edc:	ee051ae3          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   11ee0:	463e                	c.lwsp	a2,204(sp)
   11ee2:	5302                	c.lwsp	t1,32(sp)
   11ee4:	4ef2                	c.lwsp	t4,28(sp)
   11ee6:	8456                	c.mv	s0,s5
   11ee8:	cceff06f          	jal	zero,113b6 <_vfprintf_r+0x20a>
   11eec:	45a2                	c.lwsp	a1,8(sp)
   11eee:	4512                	c.lwsp	a0,4(sp)
   11ef0:	01d0                	c.addi4spn	a2,sp,196
   11ef2:	c0c6                	c.swsp	a7,64(sp)
   11ef4:	de1a                	c.swsp	t1,60(sp)
   11ef6:	d876                	c.swsp	t4,48(sp)
   11ef8:	5d4010ef          	jal	ra,134cc <__sprint_r>
   11efc:	ec051ae3          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   11f00:	463e                	c.lwsp	a2,204(sp)
   11f02:	4886                	c.lwsp	a7,64(sp)
   11f04:	5372                	c.lwsp	t1,60(sp)
   11f06:	5ec2                	c.lwsp	t4,48(sp)
   11f08:	8456                	c.mv	s0,s5
   11f0a:	c7aff06f          	jal	zero,11384 <_vfprintf_r+0x1d8>
   11f0e:	57ba                	c.lwsp	a5,172(sp)
   11f10:	66f05a63          	bge	zero,a5,12584 <_vfprintf_r+0x13d8>
   11f14:	47e2                	c.lwsp	a5,24(sp)
   11f16:	8a5e                	c.mv	s4,s7
   11f18:	3777c663          	blt	a5,s7,12284 <_vfprintf_r+0x10d8>
   11f1c:	01405f63          	bge	zero,s4,11f3a <_vfprintf_r+0xd8e>
   11f20:	47ae                	c.lwsp	a5,200(sp)
   11f22:	9652                	c.add	a2,s4
   11f24:	01642023          	sw	s6,0(s0)
   11f28:	0785                	c.addi	a5,1
   11f2a:	01442223          	sw	s4,4(s0)
   11f2e:	c7b2                	c.swsp	a2,204(sp)
   11f30:	c5be                	c.swsp	a5,200(sp)
   11f32:	469d                	c.li	a3,7
   11f34:	0421                	c.addi	s0,8
   11f36:	38f6c3e3          	blt	a3,a5,12abc <_vfprintf_r+0x1910>
   11f3a:	fffa4793          	xori	a5,s4,-1
   11f3e:	87fd                	c.srai	a5,0x1f
   11f40:	00fa7a33          	and	s4,s4,a5
   11f44:	414b8a33          	sub	s4,s7,s4
   11f48:	47404263          	blt	zero,s4,123ac <_vfprintf_r+0x1200>
   11f4c:	400cf793          	andi	a5,s9,1024
   11f50:	017b09b3          	add	s3,s6,s7
   11f54:	120796e3          	bne	a5,zero,12880 <_vfprintf_r+0x16d4>
   11f58:	5a3a                	c.lwsp	s4,172(sp)
   11f5a:	4762                	c.lwsp	a4,24(sp)
   11f5c:	00ea4663          	blt	s4,a4,11f68 <_vfprintf_r+0xdbc>
   11f60:	001cf793          	andi	a5,s9,1
   11f64:	3a0785e3          	beq	a5,zero,12b0e <_vfprintf_r+0x1962>
   11f68:	47ae                	c.lwsp	a5,200(sp)
   11f6a:	5712                	c.lwsp	a4,36(sp)
   11f6c:	56b2                	c.lwsp	a3,44(sp)
   11f6e:	0785                	c.addi	a5,1
   11f70:	963a                	c.add	a2,a4
   11f72:	c014                	c.sw	a3,0(s0)
   11f74:	c058                	c.sw	a4,4(s0)
   11f76:	c7b2                	c.swsp	a2,204(sp)
   11f78:	c5be                	c.swsp	a5,200(sp)
   11f7a:	469d                	c.li	a3,7
   11f7c:	0421                	c.addi	s0,8
   11f7e:	00f6d463          	bge	a3,a5,11f86 <_vfprintf_r+0xdda>
   11f82:	0dc0106f          	jal	zero,1305e <_vfprintf_r+0x1eb2>
   11f86:	47e2                	c.lwsp	a5,24(sp)
   11f88:	9b3e                	c.add	s6,a5
   11f8a:	413b0b33          	sub	s6,s6,s3
   11f8e:	41478a33          	sub	s4,a5,s4
   11f92:	016a5363          	bge	s4,s6,11f98 <_vfprintf_r+0xdec>
   11f96:	8b52                	c.mv	s6,s4
   11f98:	03605163          	bge	zero,s6,11fba <_vfprintf_r+0xe0e>
   11f9c:	47ae                	c.lwsp	a5,200(sp)
   11f9e:	965a                	c.add	a2,s6
   11fa0:	01342023          	sw	s3,0(s0)
   11fa4:	0785                	c.addi	a5,1
   11fa6:	01642223          	sw	s6,4(s0)
   11faa:	c7b2                	c.swsp	a2,204(sp)
   11fac:	c5be                	c.swsp	a5,200(sp)
   11fae:	469d                	c.li	a3,7
   11fb0:	0421                	c.addi	s0,8
   11fb2:	00f6d463          	bge	a3,a5,11fba <_vfprintf_r+0xe0e>
   11fb6:	1980106f          	jal	zero,1314e <_vfprintf_r+0x1fa2>
   11fba:	fffb4793          	xori	a5,s6,-1
   11fbe:	87fd                	c.srai	a5,0x1f
   11fc0:	00fb7b33          	and	s6,s6,a5
   11fc4:	416a0a33          	sub	s4,s4,s6
   11fc8:	bf405763          	bge	zero,s4,113b6 <_vfprintf_r+0x20a>
   11fcc:	67ed                	c.lui	a5,0x1b
   11fce:	4b41                	c.li	s6,16
   11fd0:	46ae                	c.lwsp	a3,200(sp)
   11fd2:	aac78993          	addi	s3,a5,-1364 # 1aaac <zeroes.0>
   11fd6:	674b5963          	bge	s6,s4,12648 <_vfprintf_r+0x149c>
   11fda:	87a2                	c.mv	a5,s0
   11fdc:	8bce                	c.mv	s7,s3
   11fde:	4c22                	c.lwsp	s8,8(sp)
   11fe0:	885a                	c.mv	a6,s6
   11fe2:	4d9d                	c.li	s11,7
   11fe4:	8476                	c.mv	s0,t4
   11fe6:	899a                	c.mv	s3,t1
   11fe8:	a021                	c.j	11ff0 <_vfprintf_r+0xe44>
   11fea:	1a41                	c.addi	s4,-16
   11fec:	65485a63          	bge	a6,s4,12640 <_vfprintf_r+0x1494>
   11ff0:	0641                	c.addi	a2,16
   11ff2:	0685                	c.addi	a3,1
   11ff4:	0177a023          	sw	s7,0(a5)
   11ff8:	0167a223          	sw	s6,4(a5)
   11ffc:	c7b2                	c.swsp	a2,204(sp)
   11ffe:	c5b6                	c.swsp	a3,200(sp)
   12000:	07a1                	c.addi	a5,8
   12002:	feddd4e3          	bge	s11,a3,11fea <_vfprintf_r+0xe3e>
   12006:	4512                	c.lwsp	a0,4(sp)
   12008:	01d0                	c.addi4spn	a2,sp,196
   1200a:	85e2                	c.mv	a1,s8
   1200c:	4c0010ef          	jal	ra,134cc <__sprint_r>
   12010:	c119                	c.beqz	a0,12016 <_vfprintf_r+0xe6a>
   12012:	0460106f          	jal	zero,13058 <_vfprintf_r+0x1eac>
   12016:	463e                	c.lwsp	a2,204(sp)
   12018:	46ae                	c.lwsp	a3,200(sp)
   1201a:	87d6                	c.mv	a5,s5
   1201c:	4841                	c.li	a6,16
   1201e:	b7f1                	c.j	11fea <_vfprintf_r+0xe3e>
   12020:	46ae                	c.lwsp	a3,200(sp)
   12022:	8536                	c.mv	a0,a3
   12024:	4fc1                	c.li	t6,16
   12026:	66ed                	c.lui	a3,0x1b
   12028:	abc68693          	addi	a3,a3,-1348 # 1aabc <blanks.1>
   1202c:	06ffd163          	bge	t6,a5,1208e <_vfprintf_r+0xee2>
   12030:	8722                	c.mv	a4,s0
   12032:	de4e                	c.swsp	s3,60(sp)
   12034:	83fe                	c.mv	t2,t6
   12036:	429d                	c.li	t0,7
   12038:	d876                	c.swsp	t4,48(sp)
   1203a:	8c1a                	c.mv	s8,t1
   1203c:	843e                	c.mv	s0,a5
   1203e:	c0c6                	c.swsp	a7,64(sp)
   12040:	89b6                	c.mv	s3,a3
   12042:	a021                	c.j	1204a <_vfprintf_r+0xe9e>
   12044:	1441                	c.addi	s0,-16
   12046:	0283dd63          	bge	t2,s0,12080 <_vfprintf_r+0xed4>
   1204a:	05c1                	c.addi	a1,16
   1204c:	0505                	c.addi	a0,1
   1204e:	01372023          	sw	s3,0(a4)
   12052:	01f72223          	sw	t6,4(a4)
   12056:	c7ae                	c.swsp	a1,204(sp)
   12058:	c5aa                	c.swsp	a0,200(sp)
   1205a:	0721                	c.addi	a4,8
   1205c:	fea2d4e3          	bge	t0,a0,12044 <_vfprintf_r+0xe98>
   12060:	45a2                	c.lwsp	a1,8(sp)
   12062:	4512                	c.lwsp	a0,4(sp)
   12064:	01d0                	c.addi4spn	a2,sp,196
   12066:	466010ef          	jal	ra,134cc <__sprint_r>
   1206a:	d60513e3          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   1206e:	43c1                	c.li	t2,16
   12070:	1441                	c.addi	s0,-16
   12072:	45be                	c.lwsp	a1,204(sp)
   12074:	452e                	c.lwsp	a0,200(sp)
   12076:	8756                	c.mv	a4,s5
   12078:	429d                	c.li	t0,7
   1207a:	8f9e                	c.mv	t6,t2
   1207c:	fc83c7e3          	blt	t2,s0,1204a <_vfprintf_r+0xe9e>
   12080:	86ce                	c.mv	a3,s3
   12082:	5ec2                	c.lwsp	t4,48(sp)
   12084:	4886                	c.lwsp	a7,64(sp)
   12086:	59f2                	c.lwsp	s3,60(sp)
   12088:	87a2                	c.mv	a5,s0
   1208a:	8362                	c.mv	t1,s8
   1208c:	843a                	c.mv	s0,a4
   1208e:	00b78633          	add	a2,a5,a1
   12092:	0505                	c.addi	a0,1
   12094:	c05c                	c.sw	a5,4(s0)
   12096:	c7b2                	c.swsp	a2,204(sp)
   12098:	c5aa                	c.swsp	a0,200(sp)
   1209a:	c014                	c.sw	a3,0(s0)
   1209c:	479d                	c.li	a5,7
   1209e:	52a7cb63          	blt	a5,a0,125d4 <_vfprintf_r+0x1428>
   120a2:	0a714783          	lbu	a5,167(sp)
   120a6:	0421                	c.addi	s0,8
   120a8:	ebcd                	c.bnez	a5,1215a <_vfprintf_r+0xfae>
   120aa:	ae098163          	beq	s3,zero,1138c <_vfprintf_r+0x1e0>
   120ae:	4981                	c.li	s3,0
   120b0:	abcff06f          	jal	zero,1136c <_vfprintf_r+0x1c0>
   120b4:	00bcf7b3          	and	a5,s9,a1
   120b8:	d80790e3          	bne	a5,zero,11e38 <_vfprintf_r+0xc8c>
   120bc:	01642023          	sw	s6,0(s0)
   120c0:	c04c                	c.sw	a1,4(s0)
   120c2:	c7d2                	c.swsp	s4,204(sp)
   120c4:	c5ee                	c.swsp	s11,200(sp)
   120c6:	479d                	c.li	a5,7
   120c8:	dfb7d4e3          	bge	a5,s11,11eb0 <_vfprintf_r+0xd04>
   120cc:	45a2                	c.lwsp	a1,8(sp)
   120ce:	4512                	c.lwsp	a0,4(sp)
   120d0:	01d0                	c.addi4spn	a2,sp,196
   120d2:	d01a                	c.swsp	t1,32(sp)
   120d4:	ce76                	c.swsp	t4,28(sp)
   120d6:	3f6010ef          	jal	ra,134cc <__sprint_r>
   120da:	ce051be3          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   120de:	4a3e                	c.lwsp	s4,204(sp)
   120e0:	4dae                	c.lwsp	s11,200(sp)
   120e2:	5302                	c.lwsp	t1,32(sp)
   120e4:	4ef2                	c.lwsp	t4,28(sp)
   120e6:	86d6                	c.mv	a3,s5
   120e8:	b3e1                	c.j	11eb0 <_vfprintf_r+0xd04>
   120ea:	4762                	c.lwsp	a4,24(sp)
   120ec:	4785                	c.li	a5,1
   120ee:	dce7d1e3          	bge	a5,a4,11eb0 <_vfprintf_r+0xd04>
   120f2:	47c5                	c.li	a5,17
   120f4:	00e7c463          	blt	a5,a4,120fc <_vfprintf_r+0xf50>
   120f8:	2940106f          	jal	zero,1338c <_vfprintf_r+0x21e0>
   120fc:	67ed                	c.lui	a5,0x1b
   120fe:	aac78993          	addi	s3,a5,-1364 # 1aaac <zeroes.0>
   12102:	8ba2                	c.mv	s7,s0
   12104:	8c4e                	c.mv	s8,s3
   12106:	4b41                	c.li	s6,16
   12108:	481d                	c.li	a6,7
   1210a:	8476                	c.mv	s0,t4
   1210c:	899a                	c.mv	s3,t1
   1210e:	a021                	c.j	12116 <_vfprintf_r+0xf6a>
   12110:	1bc1                	c.addi	s7,-16
   12112:	177b5d63          	bge	s6,s7,1228c <_vfprintf_r+0x10e0>
   12116:	0a41                	c.addi	s4,16
   12118:	0d85                	c.addi	s11,1
   1211a:	0186a023          	sw	s8,0(a3)
   1211e:	0166a223          	sw	s6,4(a3)
   12122:	c7d2                	c.swsp	s4,204(sp)
   12124:	c5ee                	c.swsp	s11,200(sp)
   12126:	06a1                	c.addi	a3,8
   12128:	ffb854e3          	bge	a6,s11,12110 <_vfprintf_r+0xf64>
   1212c:	45a2                	c.lwsp	a1,8(sp)
   1212e:	4512                	c.lwsp	a0,4(sp)
   12130:	01d0                	c.addi4spn	a2,sp,196
   12132:	39a010ef          	jal	ra,134cc <__sprint_r>
   12136:	c8051de3          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   1213a:	4a3e                	c.lwsp	s4,204(sp)
   1213c:	4dae                	c.lwsp	s11,200(sp)
   1213e:	86d6                	c.mv	a3,s5
   12140:	481d                	c.li	a6,7
   12142:	b7f9                	c.j	12110 <_vfprintf_r+0xf64>
   12144:	001cf793          	andi	a5,s9,1
   12148:	a6078763          	beq	a5,zero,113b6 <_vfprintf_r+0x20a>
   1214c:	e8aff06f          	jal	zero,117d6 <_vfprintf_r+0x62a>
   12150:	0009c883          	lbu	a7,0(s3)
   12154:	c83e                	c.swsp	a5,16(sp)
   12156:	97cff06f          	jal	zero,112d2 <_vfprintf_r+0x126>
   1215a:	87ce                	c.mv	a5,s3
   1215c:	4981                	c.li	s3,0
   1215e:	9f0ff06f          	jal	zero,1134e <_vfprintf_r+0x1a2>
   12162:	4632                	c.lwsp	a2,12(sp)
   12164:	429c                	c.lw	a5,0(a3)
   12166:	c83a                	c.swsp	a4,16(sp)
   12168:	41f65693          	srai	a3,a2,0x1f
   1216c:	c390                	c.sw	a2,0(a5)
   1216e:	c3d4                	c.sw	a3,4(a5)
   12170:	bc81                	c.j	11bc0 <_vfprintf_r+0xa14>
   12172:	4742                	c.lwsp	a4,16(sp)
   12174:	431c                	c.lw	a5,0(a4)
   12176:	0711                	c.addi	a4,4
   12178:	c83a                	c.swsp	a4,16(sp)
   1217a:	4390                	c.lw	a2,0(a5)
   1217c:	43d4                	c.lw	a3,4(a5)
   1217e:	4798                	c.lw	a4,8(a5)
   12180:	47dc                	c.lw	a5,12(a5)
   12182:	b30ff06f          	jal	zero,114b2 <_vfprintf_r+0x306>
   12186:	4742                	c.lwsp	a4,16(sp)
   12188:	010cf793          	andi	a5,s9,16
   1218c:	4314                	c.lw	a3,0(a4)
   1218e:	0711                	c.addi	a4,4
   12190:	c399                	c.beqz	a5,12196 <_vfprintf_r+0xfea>
   12192:	05a0106f          	jal	zero,131ec <_vfprintf_r+0x2040>
   12196:	040cf793          	andi	a5,s9,64
   1219a:	3a078b63          	beq	a5,zero,12550 <_vfprintf_r+0x13a4>
   1219e:	01069d13          	slli	s10,a3,0x10
   121a2:	0a0103a3          	sb	zero,167(sp)
   121a6:	010d5d13          	srli	s10,s10,0x10
   121aa:	4d81                	c.li	s11,0
   121ac:	8a0a44e3          	blt	s4,zero,11a54 <_vfprintf_r+0x8a8>
   121b0:	f7fcfc93          	andi	s9,s9,-129
   121b4:	8a0d10e3          	bne	s10,zero,11a54 <_vfprintf_r+0x8a8>
   121b8:	c83a                	c.swsp	a4,16(sp)
   121ba:	9a0a1ce3          	bne	s4,zero,11b72 <_vfprintf_r+0x9c6>
   121be:	4d81                	c.li	s11,0
   121c0:	19010b13          	addi	s6,sp,400
   121c4:	feeff06f          	jal	zero,119b2 <_vfprintf_r+0x806>
   121c8:	47c2                	c.lwsp	a5,16(sp)
   121ca:	00478713          	addi	a4,a5,4
   121ce:	47c2                	c.lwsp	a5,16(sp)
   121d0:	4601                	c.li	a2,0
   121d2:	c83a                	c.swsp	a4,16(sp)
   121d4:	439c                	c.lw	a5,0(a5)
   121d6:	facff06f          	jal	zero,11982 <_vfprintf_r+0x7d6>
   121da:	47c2                	c.lwsp	a5,16(sp)
   121dc:	00478713          	addi	a4,a5,4
   121e0:	47c2                	c.lwsp	a5,16(sp)
   121e2:	8cf2                	c.mv	s9,t3
   121e4:	c83a                	c.swsp	a4,16(sp)
   121e6:	0007ad03          	lw	s10,0(a5)
   121ea:	41fd5d93          	srai	s11,s10,0x1f
   121ee:	876e                	c.mv	a4,s11
   121f0:	eaaff06f          	jal	zero,1189a <_vfprintf_r+0x6ee>
   121f4:	8866                	c.mv	a6,s9
   121f6:	f7aff06f          	jal	zero,11970 <_vfprintf_r+0x7c4>
   121fa:	65e9                	c.lui	a1,0x1a
   121fc:	00f77613          	andi	a2,a4,15
   12200:	74058693          	addi	a3,a1,1856 # 1a740 <__clzsi2+0x60>
   12204:	96b2                	c.add	a3,a2
   12206:	0006c683          	lbu	a3,0(a3)
   1220a:	8311                	c.srli	a4,0x4
   1220c:	002cec93          	ori	s9,s9,2
   12210:	18d107a3          	sb	a3,399(sp)
   12214:	4681                	c.li	a3,0
   12216:	e319                	c.bnez	a4,1221c <_vfprintf_r+0x1070>
   12218:	1d20106f          	jal	zero,133ea <_vfprintf_r+0x223e>
   1221c:	c83e                	c.swsp	a5,16(sp)
   1221e:	74058593          	addi	a1,a1,1856
   12222:	07800893          	addi	a7,zero,120
   12226:	4609                	c.li	a2,2
   12228:	18f10b13          	addi	s6,sp,399
   1222c:	00f77793          	andi	a5,a4,15
   12230:	97ae                	c.add	a5,a1
   12232:	0007c783          	lbu	a5,0(a5)
   12236:	01c69513          	slli	a0,a3,0x1c
   1223a:	8311                	c.srli	a4,0x4
   1223c:	8f49                	c.or	a4,a0
   1223e:	8291                	c.srli	a3,0x4
   12240:	fefb0fa3          	sb	a5,-1(s6)
   12244:	00d767b3          	or	a5,a4,a3
   12248:	1b7d                	c.addi	s6,-1
   1224a:	f3ed                	c.bnez	a5,1222c <_vfprintf_r+0x1080>
   1224c:	0b1c                	c.addi4spn	a5,sp,400
   1224e:	41678db3          	sub	s11,a5,s6
   12252:	8d52                	c.mv	s10,s4
   12254:	01ba5363          	bge	s4,s11,1225a <_vfprintf_r+0x10ae>
   12258:	8d6e                	c.mv	s10,s11
   1225a:	ca02                	c.swsp	zero,20(sp)
   1225c:	d002                	c.swsp	zero,32(sp)
   1225e:	ce02                	c.swsp	zero,28(sp)
   12260:	4b81                	c.li	s7,0
   12262:	4f81                	c.li	t6,0
   12264:	8c060a63          	beq	a2,zero,11338 <_vfprintf_r+0x18c>
   12268:	463e                	c.lwsp	a2,204(sp)
   1226a:	452e                	c.lwsp	a0,200(sp)
   1226c:	084cf993          	andi	s3,s9,132
   12270:	0d09                	c.addi	s10,2
   12272:	85b2                	c.mv	a1,a2
   12274:	86aa                	c.mv	a3,a0
   12276:	1e098063          	beq	s3,zero,12456 <_vfprintf_r+0x12aa>
   1227a:	4789                	c.li	a5,2
   1227c:	8c0f9963          	bne	t6,zero,1134e <_vfprintf_r+0x1a2>
   12280:	8ecff06f          	jal	zero,1136c <_vfprintf_r+0x1c0>
   12284:	8a3e                	c.mv	s4,a5
   12286:	c9404de3          	blt	zero,s4,11f20 <_vfprintf_r+0xd74>
   1228a:	b945                	c.j	11f3a <_vfprintf_r+0xd8e>
   1228c:	8ea2                	c.mv	t4,s0
   1228e:	834e                	c.mv	t1,s3
   12290:	845e                	c.mv	s0,s7
   12292:	89e2                	c.mv	s3,s8
   12294:	9a22                	c.add	s4,s0
   12296:	0d85                	c.addi	s11,1
   12298:	c7d2                	c.swsp	s4,204(sp)
   1229a:	c5ee                	c.swsp	s11,200(sp)
   1229c:	0136a023          	sw	s3,0(a3)
   122a0:	c2c0                	c.sw	s0,4(a3)
   122a2:	479d                	c.li	a5,7
   122a4:	c1b7d5e3          	bge	a5,s11,11eae <_vfprintf_r+0xd02>
   122a8:	45a2                	c.lwsp	a1,8(sp)
   122aa:	4512                	c.lwsp	a0,4(sp)
   122ac:	01d0                	c.addi4spn	a2,sp,196
   122ae:	d01a                	c.swsp	t1,32(sp)
   122b0:	ce76                	c.swsp	t4,28(sp)
   122b2:	21a010ef          	jal	ra,134cc <__sprint_r>
   122b6:	b0051de3          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   122ba:	4a3e                	c.lwsp	s4,204(sp)
   122bc:	4dae                	c.lwsp	s11,200(sp)
   122be:	4ef2                	c.lwsp	t4,28(sp)
   122c0:	5302                	c.lwsp	t1,32(sp)
   122c2:	86d6                	c.mv	a3,s5
   122c4:	b6f5                	c.j	11eb0 <_vfprintf_r+0xd04>
   122c6:	5a7d                	c.li	s4,-1
   122c8:	89b6                	c.mv	s3,a3
   122ca:	80aff06f          	jal	zero,112d4 <_vfprintf_r+0x128>
   122ce:	65e9                	c.lui	a1,0x1a
   122d0:	8ece                	c.mv	t4,s3
   122d2:	835e                	c.mv	t1,s7
   122d4:	75458593          	addi	a1,a1,1876 # 1a754 <__clzsi2+0x74>
   122d8:	020cf793          	andi	a5,s9,32
   122dc:	1c078763          	beq	a5,zero,124aa <_vfprintf_r+0x12fe>
   122e0:	47c2                	c.lwsp	a5,16(sp)
   122e2:	079d                	c.addi	a5,7
   122e4:	9be1                	c.andi	a5,-8
   122e6:	00878713          	addi	a4,a5,8
   122ea:	c83a                	c.swsp	a4,16(sp)
   122ec:	43d4                	c.lw	a3,4(a5)
   122ee:	4398                	c.lw	a4,0(a5)
   122f0:	001cf793          	andi	a5,s9,1
   122f4:	16078f63          	beq	a5,zero,12472 <_vfprintf_r+0x12c6>
   122f8:	00d767b3          	or	a5,a4,a3
   122fc:	30078363          	beq	a5,zero,12602 <_vfprintf_r+0x1456>
   12300:	03000793          	addi	a5,zero,48
   12304:	0b1104a3          	sb	a7,169(sp)
   12308:	0a0103a3          	sb	zero,167(sp)
   1230c:	0af10423          	sb	a5,168(sp)
   12310:	1e0a4f63          	blt	s4,zero,1250e <_vfprintf_r+0x1362>
   12314:	b7fcfe13          	andi	t3,s9,-1153
   12318:	002e6c93          	ori	s9,t3,2
   1231c:	00f77793          	andi	a5,a4,15
   12320:	97ae                	c.add	a5,a1
   12322:	0007c783          	lbu	a5,0(a5)
   12326:	002cf613          	andi	a2,s9,2
   1232a:	01c69513          	slli	a0,a3,0x1c
   1232e:	8311                	c.srli	a4,0x4
   12330:	8f49                	c.or	a4,a0
   12332:	8291                	c.srli	a3,0x4
   12334:	18f107a3          	sb	a5,399(sp)
   12338:	00d767b3          	or	a5,a4,a3
   1233c:	ee0796e3          	bne	a5,zero,12228 <_vfprintf_r+0x107c>
   12340:	18f10b13          	addi	s6,sp,399
   12344:	b721                	c.j	1224c <_vfprintf_r+0x10a0>
   12346:	65e9                	c.lui	a1,0x1a
   12348:	8ece                	c.mv	t4,s3
   1234a:	835e                	c.mv	t1,s7
   1234c:	74058593          	addi	a1,a1,1856 # 1a740 <__clzsi2+0x60>
   12350:	b761                	c.j	122d8 <_vfprintf_r+0x112c>
   12352:	0019c883          	lbu	a7,1(s3)
   12356:	020cec93          	ori	s9,s9,32
   1235a:	0985                	c.addi	s3,1
   1235c:	f77fe06f          	jal	zero,112d2 <_vfprintf_r+0x126>
   12360:	0019c883          	lbu	a7,1(s3)
   12364:	200cec93          	ori	s9,s9,512
   12368:	0985                	c.addi	s3,1
   1236a:	f69fe06f          	jal	zero,112d2 <_vfprintf_r+0x126>
   1236e:	45a2                	c.lwsp	a1,8(sp)
   12370:	4512                	c.lwsp	a0,4(sp)
   12372:	01d0                	c.addi4spn	a2,sp,196
   12374:	d01a                	c.swsp	t1,32(sp)
   12376:	ce76                	c.swsp	t4,28(sp)
   12378:	154010ef          	jal	ra,134cc <__sprint_r>
   1237c:	a4051ae3          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   12380:	463e                	c.lwsp	a2,204(sp)
   12382:	5302                	c.lwsp	t1,32(sp)
   12384:	4ef2                	c.lwsp	t4,28(sp)
   12386:	8456                	c.mv	s0,s5
   12388:	c68ff06f          	jal	zero,117f0 <_vfprintf_r+0x644>
   1238c:	4799                	c.li	a5,6
   1238e:	8d52                	c.mv	s10,s4
   12390:	7747ed63          	bltu	a5,s4,12b0a <_vfprintf_r+0x195e>
   12394:	6b69                	c.lui	s6,0x1a
   12396:	c84e                	c.swsp	s3,16(sp)
   12398:	768b0b13          	addi	s6,s6,1896 # 1a768 <__clzsi2+0x88>
   1239c:	ca02                	c.swsp	zero,20(sp)
   1239e:	8dea                	c.mv	s11,s10
   123a0:	4a01                	c.li	s4,0
   123a2:	d002                	c.swsp	zero,32(sp)
   123a4:	ce02                	c.swsp	zero,28(sp)
   123a6:	4b81                	c.li	s7,0
   123a8:	f91fe06f          	jal	zero,11338 <_vfprintf_r+0x18c>
   123ac:	67ed                	c.lui	a5,0x1b
   123ae:	46c1                	c.li	a3,16
   123b0:	45ae                	c.lwsp	a1,200(sp)
   123b2:	aac78993          	addi	s3,a5,-1364 # 1aaac <zeroes.0>
   123b6:	3b46d563          	bge	a3,s4,12760 <_vfprintf_r+0x15b4>
   123ba:	87a2                	c.mv	a5,s0
   123bc:	8c4e                	c.mv	s8,s3
   123be:	8452                	c.mv	s0,s4
   123c0:	88b6                	c.mv	a7,a3
   123c2:	4d9d                	c.li	s11,7
   123c4:	8a1a                	c.mv	s4,t1
   123c6:	89f6                	c.mv	s3,t4
   123c8:	a021                	c.j	123d0 <_vfprintf_r+0x1224>
   123ca:	1441                	c.addi	s0,-16
   123cc:	3888d563          	bge	a7,s0,12756 <_vfprintf_r+0x15aa>
   123d0:	0641                	c.addi	a2,16
   123d2:	0585                	c.addi	a1,1
   123d4:	0187a023          	sw	s8,0(a5)
   123d8:	c3d4                	c.sw	a3,4(a5)
   123da:	c7b2                	c.swsp	a2,204(sp)
   123dc:	c5ae                	c.swsp	a1,200(sp)
   123de:	07a1                	c.addi	a5,8
   123e0:	febdd5e3          	bge	s11,a1,123ca <_vfprintf_r+0x121e>
   123e4:	45a2                	c.lwsp	a1,8(sp)
   123e6:	4512                	c.lwsp	a0,4(sp)
   123e8:	01d0                	c.addi4spn	a2,sp,196
   123ea:	0e2010ef          	jal	ra,134cc <__sprint_r>
   123ee:	9e0511e3          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   123f2:	48c1                	c.li	a7,16
   123f4:	463e                	c.lwsp	a2,204(sp)
   123f6:	45ae                	c.lwsp	a1,200(sp)
   123f8:	87d6                	c.mv	a5,s5
   123fa:	86c6                	c.mv	a3,a7
   123fc:	b7f9                	c.j	123ca <_vfprintf_r+0x121e>
   123fe:	4d81                	c.li	s11,0
   12400:	4d01                	c.li	s10,0
   12402:	19010b13          	addi	s6,sp,400
   12406:	ca02                	c.swsp	zero,20(sp)
   12408:	d002                	c.swsp	zero,32(sp)
   1240a:	ce02                	c.swsp	zero,28(sp)
   1240c:	4b81                	c.li	s7,0
   1240e:	f2bfe06f          	jal	zero,11338 <_vfprintf_r+0x18c>
   12412:	855a                	c.mv	a0,s6
   12414:	ce46                	c.swsp	a7,28(sp)
   12416:	c876                	c.swsp	t4,16(sp)
   12418:	ca5e                	c.swsp	s7,20(sp)
   1241a:	357010ef          	jal	ra,13f70 <strlen>
   1241e:	0a714783          	lbu	a5,167(sp)
   12422:	fff54713          	xori	a4,a0,-1
   12426:	877d                	c.srai	a4,0x1f
   12428:	4ec2                	c.lwsp	t4,16(sp)
   1242a:	4352                	c.lwsp	t1,20(sp)
   1242c:	48f2                	c.lwsp	a7,28(sp)
   1242e:	8daa                	c.mv	s11,a0
   12430:	00e57d33          	and	s10,a0,a4
   12434:	a6078c63          	beq	a5,zero,116ac <_vfprintf_r+0x500>
   12438:	0d05                	c.addi	s10,1
   1243a:	a72ff06f          	jal	zero,116ac <_vfprintf_r+0x500>
   1243e:	8cc2                	c.mv	s9,a6
   12440:	c83e                	c.swsp	a5,16(sp)
   12442:	4b81                	c.li	s7,0
   12444:	ce02                	c.swsp	zero,28(sp)
   12446:	4d81                	c.li	s11,0
   12448:	ca02                	c.swsp	zero,20(sp)
   1244a:	19010b13          	addi	s6,sp,400
   1244e:	07800893          	addi	a7,zero,120
   12452:	4f81                	c.li	t6,0
   12454:	4d09                	c.li	s10,2
   12456:	41a307b3          	sub	a5,t1,s10
   1245a:	00f04a63          	blt	zero,a5,1246e <_vfprintf_r+0x12c2>
   1245e:	4981                	c.li	s3,0
   12460:	000f9463          	bne	t6,zero,12468 <_vfprintf_r+0x12bc>
   12464:	f09fe06f          	jal	zero,1136c <_vfprintf_r+0x1c0>
   12468:	4789                	c.li	a5,2
   1246a:	ee5fe06f          	jal	zero,1134e <_vfprintf_r+0x1a2>
   1246e:	4989                	c.li	s3,2
   12470:	be4d                	c.j	12022 <_vfprintf_r+0xe76>
   12472:	0a0103a3          	sb	zero,167(sp)
   12476:	080a4e63          	blt	s4,zero,12512 <_vfprintf_r+0x1366>
   1247a:	00d767b3          	or	a5,a4,a3
   1247e:	b7fcfc93          	andi	s9,s9,-1153
   12482:	e8079de3          	bne	a5,zero,1231c <_vfprintf_r+0x1170>
   12486:	f60a0ce3          	beq	s4,zero,123fe <_vfprintf_r+0x1252>
   1248a:	0005c783          	lbu	a5,0(a1)
   1248e:	8d52                	c.mv	s10,s4
   12490:	18f107a3          	sb	a5,399(sp)
   12494:	6d405963          	bge	zero,s4,12b66 <_vfprintf_r+0x19ba>
   12498:	ca02                	c.swsp	zero,20(sp)
   1249a:	4d85                	c.li	s11,1
   1249c:	d002                	c.swsp	zero,32(sp)
   1249e:	ce02                	c.swsp	zero,28(sp)
   124a0:	4b81                	c.li	s7,0
   124a2:	18f10b13          	addi	s6,sp,399
   124a6:	e93fe06f          	jal	zero,11338 <_vfprintf_r+0x18c>
   124aa:	46c2                	c.lwsp	a3,16(sp)
   124ac:	010cf793          	andi	a5,s9,16
   124b0:	4298                	c.lw	a4,0(a3)
   124b2:	0691                	c.addi	a3,4
   124b4:	c836                	c.swsp	a3,16(sp)
   124b6:	ebb1                	c.bnez	a5,1250a <_vfprintf_r+0x135e>
   124b8:	040cf793          	andi	a5,s9,64
   124bc:	c3b9                	c.beqz	a5,12502 <_vfprintf_r+0x1356>
   124be:	0742                	c.slli	a4,0x10
   124c0:	8341                	c.srli	a4,0x10
   124c2:	4681                	c.li	a3,0
   124c4:	b535                	c.j	122f0 <_vfprintf_r+0x1144>
   124c6:	45a2                	c.lwsp	a1,8(sp)
   124c8:	4512                	c.lwsp	a0,4(sp)
   124ca:	01d0                	c.addi4spn	a2,sp,196
   124cc:	d01a                	c.swsp	t1,32(sp)
   124ce:	ce76                	c.swsp	t4,28(sp)
   124d0:	7fd000ef          	jal	ra,134cc <__sprint_r>
   124d4:	8e051ee3          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   124d8:	4a3e                	c.lwsp	s4,204(sp)
   124da:	4dae                	c.lwsp	s11,200(sp)
   124dc:	5302                	c.lwsp	t1,32(sp)
   124de:	4ef2                	c.lwsp	t4,28(sp)
   124e0:	86d6                	c.mv	a3,s5
   124e2:	b2a5                	c.j	11e4a <_vfprintf_r+0xc9e>
   124e4:	45a2                	c.lwsp	a1,8(sp)
   124e6:	4512                	c.lwsp	a0,4(sp)
   124e8:	01d0                	c.addi4spn	a2,sp,196
   124ea:	d01a                	c.swsp	t1,32(sp)
   124ec:	ce76                	c.swsp	t4,28(sp)
   124ee:	7df000ef          	jal	ra,134cc <__sprint_r>
   124f2:	8c051fe3          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   124f6:	4a3e                	c.lwsp	s4,204(sp)
   124f8:	4dae                	c.lwsp	s11,200(sp)
   124fa:	5302                	c.lwsp	t1,32(sp)
   124fc:	4ef2                	c.lwsp	t4,28(sp)
   124fe:	86d6                	c.mv	a3,s5
   12500:	b28d                	c.j	11e62 <_vfprintf_r+0xcb6>
   12502:	200cf793          	andi	a5,s9,512
   12506:	62079163          	bne	a5,zero,12b28 <_vfprintf_r+0x197c>
   1250a:	4681                	c.li	a3,0
   1250c:	b3d5                	c.j	122f0 <_vfprintf_r+0x1144>
   1250e:	002cec93          	ori	s9,s9,2
   12512:	00f77793          	andi	a5,a4,15
   12516:	97ae                	c.add	a5,a1
   12518:	002cf613          	andi	a2,s9,2
   1251c:	0007c783          	lbu	a5,0(a5)
   12520:	bffcfc93          	andi	s9,s9,-1025
   12524:	b519                	c.j	1232a <_vfprintf_r+0x117e>
   12526:	d7358063          	beq	a1,s3,11a86 <_vfprintf_r+0x8da>
   1252a:	260d9a63          	bne	s11,zero,1279e <_vfprintf_r+0x15f2>
   1252e:	47a5                	c.li	a5,9
   12530:	27a7e763          	bltu	a5,s10,1279e <_vfprintf_r+0x15f2>
   12534:	0b1c                	c.addi4spn	a5,sp,400
   12536:	cc2e                	c.swsp	a1,24(sp)
   12538:	41678db3          	sub	s11,a5,s6
   1253c:	8ede                	c.mv	t4,s7
   1253e:	8362                	c.mv	t1,s8
   12540:	8d52                	c.mv	s10,s4
   12542:	01ba5363          	bge	s4,s11,12548 <_vfprintf_r+0x139c>
   12546:	8d6e                	c.mv	s10,s11
   12548:	0a714783          	lbu	a5,167(sp)
   1254c:	be0ff06f          	jal	zero,1192c <_vfprintf_r+0x780>
   12550:	200cf793          	andi	a5,s9,512
   12554:	0a0103a3          	sb	zero,167(sp)
   12558:	5c079d63          	bne	a5,zero,12b32 <_vfprintf_r+0x1986>
   1255c:	8d36                	c.mv	s10,a3
   1255e:	4d81                	c.li	s11,0
   12560:	ce0a4a63          	blt	s4,zero,11a54 <_vfprintf_r+0x8a8>
   12564:	f7fcfc93          	andi	s9,s9,-129
   12568:	ce069663          	bne	a3,zero,11a54 <_vfprintf_r+0x8a8>
   1256c:	c83a                	c.swsp	a4,16(sp)
   1256e:	e00a1263          	bne	s4,zero,11b72 <_vfprintf_r+0x9c6>
   12572:	4d01                	c.li	s10,0
   12574:	19010b13          	addi	s6,sp,400
   12578:	ca02                	c.swsp	zero,20(sp)
   1257a:	d002                	c.swsp	zero,32(sp)
   1257c:	ce02                	c.swsp	zero,28(sp)
   1257e:	4b81                	c.li	s7,0
   12580:	db9fe06f          	jal	zero,11338 <_vfprintf_r+0x18c>
   12584:	46ae                	c.lwsp	a3,200(sp)
   12586:	65e9                	c.lui	a1,0x1a
   12588:	77058593          	addi	a1,a1,1904 # 1a770 <__clzsi2+0x90>
   1258c:	0605                	c.addi	a2,1
   1258e:	0685                	c.addi	a3,1
   12590:	4505                	c.li	a0,1
   12592:	c00c                	c.sw	a1,0(s0)
   12594:	c048                	c.sw	a0,4(s0)
   12596:	c7b2                	c.swsp	a2,204(sp)
   12598:	c5b6                	c.swsp	a3,200(sp)
   1259a:	459d                	c.li	a1,7
   1259c:	0421                	c.addi	s0,8
   1259e:	4ed5c863          	blt	a1,a3,12a8e <_vfprintf_r+0x18e2>
   125a2:	c399                	c.beqz	a5,125a8 <_vfprintf_r+0x13fc>
   125a4:	fd7fe06f          	jal	zero,1157a <_vfprintf_r+0x3ce>
   125a8:	4762                	c.lwsp	a4,24(sp)
   125aa:	001cf793          	andi	a5,s9,1
   125ae:	8fd9                	c.or	a5,a4
   125b0:	e399                	c.bnez	a5,125b6 <_vfprintf_r+0x140a>
   125b2:	e05fe06f          	jal	zero,113b6 <_vfprintf_r+0x20a>
   125b6:	5792                	c.lwsp	a5,36(sp)
   125b8:	46ae                	c.lwsp	a3,200(sp)
   125ba:	5732                	c.lwsp	a4,44(sp)
   125bc:	963e                	c.add	a2,a5
   125be:	0685                	c.addi	a3,1
   125c0:	c05c                	c.sw	a5,4(s0)
   125c2:	c7b2                	c.swsp	a2,204(sp)
   125c4:	c018                	c.sw	a4,0(s0)
   125c6:	c5b6                	c.swsp	a3,200(sp)
   125c8:	479d                	c.li	a5,7
   125ca:	5cd7c363          	blt	a5,a3,12b90 <_vfprintf_r+0x19e4>
   125ce:	0421                	c.addi	s0,8
   125d0:	fd1fe06f          	jal	zero,115a0 <_vfprintf_r+0x3f4>
   125d4:	45a2                	c.lwsp	a1,8(sp)
   125d6:	4512                	c.lwsp	a0,4(sp)
   125d8:	01d0                	c.addi4spn	a2,sp,196
   125da:	c0c6                	c.swsp	a7,64(sp)
   125dc:	de1a                	c.swsp	t1,60(sp)
   125de:	d876                	c.swsp	t4,48(sp)
   125e0:	6ed000ef          	jal	ra,134cc <__sprint_r>
   125e4:	fe051663          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   125e8:	0a714783          	lbu	a5,167(sp)
   125ec:	463e                	c.lwsp	a2,204(sp)
   125ee:	5ec2                	c.lwsp	t4,48(sp)
   125f0:	5372                	c.lwsp	t1,60(sp)
   125f2:	4886                	c.lwsp	a7,64(sp)
   125f4:	c7ed                	c.beqz	a5,126de <_vfprintf_r+0x1532>
   125f6:	87ce                	c.mv	a5,s3
   125f8:	452e                	c.lwsp	a0,200(sp)
   125fa:	4981                	c.li	s3,0
   125fc:	8456                	c.mv	s0,s5
   125fe:	d51fe06f          	jal	zero,1134e <_vfprintf_r+0x1a2>
   12602:	0a0103a3          	sb	zero,167(sp)
   12606:	3c0a4e63          	blt	s4,zero,129e2 <_vfprintf_r+0x1836>
   1260a:	b7fcfc93          	andi	s9,s9,-1153
   1260e:	bda5                	c.j	12486 <_vfprintf_r+0x12da>
   12610:	4512                	c.lwsp	a0,4(sp)
   12612:	dc7fd0ef          	jal	ra,103d8 <__sinit>
   12616:	47a2                	c.lwsp	a5,8(sp)
   12618:	bd1fe06f          	jal	zero,111e8 <_vfprintf_r+0x3c>
   1261c:	45a2                	c.lwsp	a1,8(sp)
   1261e:	4512                	c.lwsp	a0,4(sp)
   12620:	01d0                	c.addi4spn	a2,sp,196
   12622:	d01a                	c.swsp	t1,32(sp)
   12624:	ce76                	c.swsp	t4,28(sp)
   12626:	6a7000ef          	jal	ra,134cc <__sprint_r>
   1262a:	fa051363          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   1262e:	463e                	c.lwsp	a2,204(sp)
   12630:	5302                	c.lwsp	t1,32(sp)
   12632:	4ef2                	c.lwsp	t4,28(sp)
   12634:	8456                	c.mv	s0,s5
   12636:	998ff06f          	jal	zero,117ce <_vfprintf_r+0x622>
   1263a:	89de                	c.mv	s3,s7
   1263c:	f96ff06f          	jal	zero,11dd2 <_vfprintf_r+0xc26>
   12640:	8ea2                	c.mv	t4,s0
   12642:	834e                	c.mv	t1,s3
   12644:	843e                	c.mv	s0,a5
   12646:	89de                	c.mv	s3,s7
   12648:	9652                	c.add	a2,s4
   1264a:	0685                	c.addi	a3,1
   1264c:	c7b2                	c.swsp	a2,204(sp)
   1264e:	c5b6                	c.swsp	a3,200(sp)
   12650:	01342023          	sw	s3,0(s0)
   12654:	01442223          	sw	s4,4(s0)
   12658:	479d                	c.li	a5,7
   1265a:	00d7c463          	blt	a5,a3,12662 <_vfprintf_r+0x14b6>
   1265e:	d57fe06f          	jal	zero,113b4 <_vfprintf_r+0x208>
   12662:	f55fe06f          	jal	zero,115b6 <_vfprintf_r+0x40a>
   12666:	464e                	c.lwsp	a2,208(sp)
   12668:	46de                	c.lwsp	a3,212(sp)
   1266a:	476e                	c.lwsp	a4,216(sp)
   1266c:	47fe                	c.lwsp	a5,220(sp)
   1266e:	010c                	c.addi4spn	a1,sp,128
   12670:	0908                	c.addi4spn	a0,sp,144
   12672:	c102                	c.swsp	zero,128(sp)
   12674:	c302                	c.swsp	zero,132(sp)
   12676:	c502                	c.swsp	zero,136(sp)
   12678:	c702                	c.swsp	zero,140(sp)
   1267a:	c932                	c.swsp	a2,144(sp)
   1267c:	cb36                	c.swsp	a3,148(sp)
   1267e:	cd3a                	c.swsp	a4,152(sp)
   12680:	cf3e                	c.swsp	a5,156(sp)
   12682:	6cb050ef          	jal	ra,1854c <__letf2>
   12686:	4ed2                	c.lwsp	t4,20(sp)
   12688:	4372                	c.lwsp	t1,28(sp)
   1268a:	5882                	c.lwsp	a7,32(sp)
   1268c:	f7fcfc93          	andi	s9,s9,-129
   12690:	1e0547e3          	blt	a0,zero,1307e <_vfprintf_r+0x1ed2>
   12694:	04700713          	addi	a4,zero,71
   12698:	0a714783          	lbu	a5,167(sp)
   1269c:	51175b63          	bge	a4,a7,12bb2 <_vfprintf_r+0x1a06>
   126a0:	6b69                	c.lui	s6,0x1a
   126a2:	734b0b13          	addi	s6,s6,1844 # 1a734 <__clzsi2+0x54>
   126a6:	efd9                	c.bnez	a5,12744 <_vfprintf_r+0x1598>
   126a8:	4d8d                	c.li	s11,3
   126aa:	8d6e                	c.mv	s10,s11
   126ac:	802ff06f          	jal	zero,116ae <_vfprintf_r+0x502>
   126b0:	47c2                	c.lwsp	a5,16(sp)
   126b2:	46b2                	c.lwsp	a3,12(sp)
   126b4:	439c                	c.lw	a5,0(a5)
   126b6:	c394                	c.sw	a3,0(a5)
   126b8:	c83a                	c.swsp	a4,16(sp)
   126ba:	d06ff06f          	jal	zero,11bc0 <_vfprintf_r+0xa14>
   126be:	65e9                	c.lui	a1,0x1a
   126c0:	74058513          	addi	a0,a1,1856 # 1a740 <__clzsi2+0x60>
   126c4:	00f77613          	andi	a2,a4,15
   126c8:	962a                	c.add	a2,a0
   126ca:	c83e                	c.swsp	a5,16(sp)
   126cc:	8cc2                	c.mv	s9,a6
   126ce:	00064783          	lbu	a5,0(a2)
   126d2:	74058593          	addi	a1,a1,1856
   126d6:	4609                	c.li	a2,2
   126d8:	07800893          	addi	a7,zero,120
   126dc:	b1b9                	c.j	1232a <_vfprintf_r+0x117e>
   126de:	44098263          	beq	s3,zero,12b22 <_vfprintf_r+0x1976>
   126e2:	452e                	c.lwsp	a0,200(sp)
   126e4:	4981                	c.li	s3,0
   126e6:	8456                	c.mv	s0,s5
   126e8:	c85fe06f          	jal	zero,1136c <_vfprintf_r+0x1c0>
   126ec:	200cf693          	andi	a3,s9,512
   126f0:	44068863          	beq	a3,zero,12b40 <_vfprintf_r+0x1994>
   126f4:	0ff7f793          	andi	a5,a5,255
   126f8:	c83a                	c.swsp	a4,16(sp)
   126fa:	8866                	c.mv	a6,s9
   126fc:	4601                	c.li	a2,0
   126fe:	a84ff06f          	jal	zero,11982 <_vfprintf_r+0x7d6>
   12702:	200cf793          	andi	a5,s9,512
   12706:	44078263          	beq	a5,zero,12b4a <_vfprintf_r+0x199e>
   1270a:	0d62                	c.slli	s10,0x18
   1270c:	418d5d13          	srai	s10,s10,0x18
   12710:	41fd5d93          	srai	s11,s10,0x1f
   12714:	c83a                	c.swsp	a4,16(sp)
   12716:	876e                	c.mv	a4,s11
   12718:	982ff06f          	jal	zero,1189a <_vfprintf_r+0x6ee>
   1271c:	4dfe                	c.lwsp	s11,220(sp)
   1271e:	800007b7          	lui	a5,0x80000
   12722:	f7fcfc93          	andi	s9,s9,-129
   12726:	00fdfbb3          	and	s7,s11,a5
   1272a:	440b8063          	beq	s7,zero,12b6a <_vfprintf_r+0x19be>
   1272e:	02d00793          	addi	a5,zero,45
   12732:	0af103a3          	sb	a5,167(sp)
   12736:	04700793          	addi	a5,zero,71
   1273a:	3517d0e3          	bge	a5,a7,1327a <_vfprintf_r+0x20ce>
   1273e:	6b69                	c.lui	s6,0x1a
   12740:	73cb0b13          	addi	s6,s6,1852 # 1a73c <__clzsi2+0x5c>
   12744:	ca02                	c.swsp	zero,20(sp)
   12746:	4d8d                	c.li	s11,3
   12748:	4a01                	c.li	s4,0
   1274a:	d002                	c.swsp	zero,32(sp)
   1274c:	ce02                	c.swsp	zero,28(sp)
   1274e:	4b81                	c.li	s7,0
   12750:	4d11                	c.li	s10,4
   12752:	be7fe06f          	jal	zero,11338 <_vfprintf_r+0x18c>
   12756:	8ece                	c.mv	t4,s3
   12758:	8352                	c.mv	t1,s4
   1275a:	89e2                	c.mv	s3,s8
   1275c:	8a22                	c.mv	s4,s0
   1275e:	843e                	c.mv	s0,a5
   12760:	9652                	c.add	a2,s4
   12762:	0585                	c.addi	a1,1
   12764:	01342023          	sw	s3,0(s0)
   12768:	01442223          	sw	s4,4(s0)
   1276c:	c7b2                	c.swsp	a2,204(sp)
   1276e:	c5ae                	c.swsp	a1,200(sp)
   12770:	479d                	c.li	a5,7
   12772:	0421                	c.addi	s0,8
   12774:	fcb7dc63          	bge	a5,a1,11f4c <_vfprintf_r+0xda0>
   12778:	45a2                	c.lwsp	a1,8(sp)
   1277a:	4512                	c.lwsp	a0,4(sp)
   1277c:	01d0                	c.addi4spn	a2,sp,196
   1277e:	de1a                	c.swsp	t1,60(sp)
   12780:	d876                	c.swsp	t4,48(sp)
   12782:	54b000ef          	jal	ra,134cc <__sprint_r>
   12786:	e4051563          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   1278a:	463e                	c.lwsp	a2,204(sp)
   1278c:	5372                	c.lwsp	t1,60(sp)
   1278e:	5ec2                	c.lwsp	t4,48(sp)
   12790:	8456                	c.mv	s0,s5
   12792:	fbaff06f          	jal	zero,11f4c <_vfprintf_r+0xda0>
   12796:	c83a                	c.swsp	a4,16(sp)
   12798:	8cf2                	c.mv	s9,t3
   1279a:	96eff06f          	jal	zero,11908 <_vfprintf_r+0x75c>
   1279e:	4616                	c.lwsp	a2,68(sp)
   127a0:	55e2                	c.lwsp	a1,56(sp)
   127a2:	ce7a                	c.swsp	t5,28(sp)
   127a4:	40cb06b3          	sub	a3,s6,a2
   127a8:	8536                	c.mv	a0,a3
   127aa:	cc46                	c.swsp	a7,24(sp)
   127ac:	ca36                	c.swsp	a3,20(sp)
   127ae:	508010ef          	jal	ra,13cb6 <strncpy>
   127b2:	01bd07b3          	add	a5,s10,s11
   127b6:	01a7b5b3          	sltu	a1,a5,s10
   127ba:	ccccd637          	lui	a2,0xccccd
   127be:	ccd60613          	addi	a2,a2,-819 # cccccccd <__BSS_END__+0xcccb1271>
   127c2:	97ae                	c.add	a5,a1
   127c4:	02c7b5b3          	mulhu	a1,a5,a2
   127c8:	5722                	c.lwsp	a4,40(sp)
   127ca:	ccccd537          	lui	a0,0xccccd
   127ce:	ccc50513          	addi	a0,a0,-820 # cccccccc <__BSS_END__+0xcccb1270>
   127d2:	00174303          	lbu	t1,1(a4)
   127d6:	46d2                	c.lwsp	a3,20(sp)
   127d8:	48e2                	c.lwsp	a7,24(sp)
   127da:	00603333          	sltu	t1,zero,t1
   127de:	971a                	c.add	a4,t1
   127e0:	d43a                	c.swsp	a4,40(sp)
   127e2:	0025d313          	srli	t1,a1,0x2
   127e6:	99f1                	c.andi	a1,-4
   127e8:	959a                	c.add	a1,t1
   127ea:	8f8d                	c.sub	a5,a1
   127ec:	40fd07b3          	sub	a5,s10,a5
   127f0:	00fd35b3          	sltu	a1,s10,a5
   127f4:	40bd85b3          	sub	a1,s11,a1
   127f8:	02a78533          	mul	a0,a5,a0
   127fc:	4f72                	c.lwsp	t5,28(sp)
   127fe:	fff68b13          	addi	s6,a3,-1
   12802:	02c585b3          	mul	a1,a1,a2
   12806:	02c7b333          	mulhu	t1,a5,a2
   1280a:	95aa                	c.add	a1,a0
   1280c:	02c787b3          	mul	a5,a5,a2
   12810:	959a                	c.add	a1,t1
   12812:	01f59513          	slli	a0,a1,0x1f
   12816:	0015dd93          	srli	s11,a1,0x1
   1281a:	4585                	c.li	a1,1
   1281c:	8385                	c.srli	a5,0x1
   1281e:	00f56d33          	or	s10,a0,a5
   12822:	01bd07b3          	add	a5,s10,s11
   12826:	01a7b533          	sltu	a0,a5,s10
   1282a:	97aa                	c.add	a5,a0
   1282c:	02c7b533          	mulhu	a0,a5,a2
   12830:	00255313          	srli	t1,a0,0x2
   12834:	9971                	c.andi	a0,-4
   12836:	951a                	c.add	a0,t1
   12838:	8f89                	c.sub	a5,a0
   1283a:	40fd07b3          	sub	a5,s10,a5
   1283e:	00fd3533          	sltu	a0,s10,a5
   12842:	40ad8533          	sub	a0,s11,a0
   12846:	02c7b333          	mulhu	t1,a5,a2
   1284a:	02c50533          	mul	a0,a0,a2
   1284e:	02c787b3          	mul	a5,a5,a2
   12852:	00650633          	add	a2,a0,t1
   12856:	067e                	c.slli	a2,0x1f
   12858:	8385                	c.srli	a5,0x1
   1285a:	8fd1                	c.or	a5,a2
   1285c:	00279613          	slli	a2,a5,0x2
   12860:	97b2                	c.add	a5,a2
   12862:	0786                	c.slli	a5,0x1
   12864:	40fd07b3          	sub	a5,s10,a5
   12868:	03078793          	addi	a5,a5,48 # 80000030 <__BSS_END__+0x7ffe45d4>
   1286c:	fef68fa3          	sb	a5,-1(a3)
   12870:	ccccd7b7          	lui	a5,0xccccd
   12874:	ccd78713          	addi	a4,a5,-819 # cccccccd <__BSS_END__+0xcccb1271>
   12878:	ccc78813          	addi	a6,a5,-820
   1287c:	a00ff06f          	jal	zero,11a7c <_vfprintf_r+0x8d0>
   12880:	47e2                	c.lwsp	a5,24(sp)
   12882:	5b82                	c.lwsp	s7,32(sp)
   12884:	c6da                	c.swsp	s6,76(sp)
   12886:	97da                	c.add	a5,s6
   12888:	d83e                	c.swsp	a5,48(sp)
   1288a:	47f2                	c.lwsp	a5,28(sp)
   1288c:	de76                	c.swsp	t4,60(sp)
   1288e:	c09a                	c.swsp	t1,64(sp)
   12890:	c4e6                	c.swsp	s9,72(sp)
   12892:	d06a                	c.swsp	s10,32(sp)
   12894:	86a2                	c.mv	a3,s0
   12896:	8b4e                	c.mv	s6,s3
   12898:	4416                	c.lwsp	s0,68(sp)
   1289a:	59a2                	c.lwsp	s3,40(sp)
   1289c:	4a1d                	c.li	s4,7
   1289e:	4dc1                	c.li	s11,16
   128a0:	6c6d                	c.lui	s8,0x1b
   128a2:	06f05563          	bge	zero,a5,1290c <_vfprintf_r+0x1760>
   128a6:	11705363          	bge	zero,s7,129ac <_vfprintf_r+0x1800>
   128aa:	1bfd                	c.addi	s7,-1
   128ac:	47ae                	c.lwsp	a5,200(sp)
   128ae:	5762                	c.lwsp	a4,56(sp)
   128b0:	9622                	c.add	a2,s0
   128b2:	0785                	c.addi	a5,1
   128b4:	c298                	c.sw	a4,0(a3)
   128b6:	c2c0                	c.sw	s0,4(a3)
   128b8:	c7b2                	c.swsp	a2,204(sp)
   128ba:	c5be                	c.swsp	a5,200(sp)
   128bc:	06a1                	c.addi	a3,8
   128be:	0efa4c63          	blt	s4,a5,129b6 <_vfprintf_r+0x180a>
   128c2:	57c2                	c.lwsp	a5,48(sp)
   128c4:	0009c703          	lbu	a4,0(s3)
   128c8:	41678cb3          	sub	s9,a5,s6
   128cc:	01975363          	bge	a4,s9,128d2 <_vfprintf_r+0x1726>
   128d0:	8cba                	c.mv	s9,a4
   128d2:	03905063          	bge	zero,s9,128f2 <_vfprintf_r+0x1746>
   128d6:	472e                	c.lwsp	a4,200(sp)
   128d8:	9666                	c.add	a2,s9
   128da:	c7b2                	c.swsp	a2,204(sp)
   128dc:	0705                	c.addi	a4,1
   128de:	0166a023          	sw	s6,0(a3)
   128e2:	0196a223          	sw	s9,4(a3)
   128e6:	c5ba                	c.swsp	a4,200(sp)
   128e8:	0eea4163          	blt	s4,a4,129ca <_vfprintf_r+0x181e>
   128ec:	0009c703          	lbu	a4,0(s3)
   128f0:	06a1                	c.addi	a3,8
   128f2:	fffcc593          	xori	a1,s9,-1
   128f6:	85fd                	c.srai	a1,0x1f
   128f8:	00bcf7b3          	and	a5,s9,a1
   128fc:	40f70cb3          	sub	s9,a4,a5
   12900:	03904763          	blt	zero,s9,1292e <_vfprintf_r+0x1782>
   12904:	9b3a                	c.add	s6,a4
   12906:	47f2                	c.lwsp	a5,28(sp)
   12908:	f8f04fe3          	blt	zero,a5,128a6 <_vfprintf_r+0x16fa>
   1290c:	f9704fe3          	blt	zero,s7,128aa <_vfprintf_r+0x16fe>
   12910:	47e2                	c.lwsp	a5,24(sp)
   12912:	d44e                	c.swsp	s3,40(sp)
   12914:	89da                	c.mv	s3,s6
   12916:	4b36                	c.lwsp	s6,76(sp)
   12918:	5ef2                	c.lwsp	t4,60(sp)
   1291a:	4306                	c.lwsp	t1,64(sp)
   1291c:	97da                	c.add	a5,s6
   1291e:	4ca6                	c.lwsp	s9,72(sp)
   12920:	5d02                	c.lwsp	s10,32(sp)
   12922:	8436                	c.mv	s0,a3
   12924:	e337fa63          	bgeu	a5,s3,11f58 <_vfprintf_r+0xdac>
   12928:	89be                	c.mv	s3,a5
   1292a:	e2eff06f          	jal	zero,11f58 <_vfprintf_r+0xdac>
   1292e:	686d                	c.lui	a6,0x1b
   12930:	472e                	c.lwsp	a4,200(sp)
   12932:	aac80d13          	addi	s10,a6,-1364 # 1aaac <zeroes.0>
   12936:	059ddc63          	bge	s11,s9,1298e <_vfprintf_r+0x17e2>
   1293a:	aacc0d13          	addi	s10,s8,-1364 # 1aaac <zeroes.0>
   1293e:	87ea                	c.mv	a5,s10
   12940:	8d5e                	c.mv	s10,s7
   12942:	8ba2                	c.mv	s7,s0
   12944:	8466                	c.mv	s0,s9
   12946:	8cce                	c.mv	s9,s3
   12948:	89be                	c.mv	s3,a5
   1294a:	a021                	c.j	12952 <_vfprintf_r+0x17a6>
   1294c:	1441                	c.addi	s0,-16
   1294e:	028dda63          	bge	s11,s0,12982 <_vfprintf_r+0x17d6>
   12952:	0641                	c.addi	a2,16
   12954:	0705                	c.addi	a4,1
   12956:	0136a023          	sw	s3,0(a3)
   1295a:	01b6a223          	sw	s11,4(a3)
   1295e:	c7b2                	c.swsp	a2,204(sp)
   12960:	c5ba                	c.swsp	a4,200(sp)
   12962:	06a1                	c.addi	a3,8
   12964:	feea54e3          	bge	s4,a4,1294c <_vfprintf_r+0x17a0>
   12968:	45a2                	c.lwsp	a1,8(sp)
   1296a:	4512                	c.lwsp	a0,4(sp)
   1296c:	01d0                	c.addi4spn	a2,sp,196
   1296e:	35f000ef          	jal	ra,134cc <__sprint_r>
   12972:	c4051f63          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   12976:	1441                	c.addi	s0,-16
   12978:	463e                	c.lwsp	a2,204(sp)
   1297a:	472e                	c.lwsp	a4,200(sp)
   1297c:	86d6                	c.mv	a3,s5
   1297e:	fc8dcae3          	blt	s11,s0,12952 <_vfprintf_r+0x17a6>
   12982:	87ce                	c.mv	a5,s3
   12984:	89e6                	c.mv	s3,s9
   12986:	8ca2                	c.mv	s9,s0
   12988:	845e                	c.mv	s0,s7
   1298a:	8bea                	c.mv	s7,s10
   1298c:	8d3e                	c.mv	s10,a5
   1298e:	9666                	c.add	a2,s9
   12990:	0705                	c.addi	a4,1
   12992:	c7b2                	c.swsp	a2,204(sp)
   12994:	c5ba                	c.swsp	a4,200(sp)
   12996:	01a6a023          	sw	s10,0(a3)
   1299a:	0196a223          	sw	s9,4(a3)
   1299e:	64ea4463          	blt	s4,a4,12fe6 <_vfprintf_r+0x1e3a>
   129a2:	0009c703          	lbu	a4,0(s3)
   129a6:	06a1                	c.addi	a3,8
   129a8:	9b3a                	c.add	s6,a4
   129aa:	bfb1                	c.j	12906 <_vfprintf_r+0x175a>
   129ac:	47f2                	c.lwsp	a5,28(sp)
   129ae:	19fd                	c.addi	s3,-1
   129b0:	17fd                	c.addi	a5,-1
   129b2:	ce3e                	c.swsp	a5,28(sp)
   129b4:	bde5                	c.j	128ac <_vfprintf_r+0x1700>
   129b6:	45a2                	c.lwsp	a1,8(sp)
   129b8:	4512                	c.lwsp	a0,4(sp)
   129ba:	01d0                	c.addi4spn	a2,sp,196
   129bc:	311000ef          	jal	ra,134cc <__sprint_r>
   129c0:	c0051863          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   129c4:	463e                	c.lwsp	a2,204(sp)
   129c6:	86d6                	c.mv	a3,s5
   129c8:	bded                	c.j	128c2 <_vfprintf_r+0x1716>
   129ca:	45a2                	c.lwsp	a1,8(sp)
   129cc:	4512                	c.lwsp	a0,4(sp)
   129ce:	01d0                	c.addi4spn	a2,sp,196
   129d0:	2fd000ef          	jal	ra,134cc <__sprint_r>
   129d4:	be051e63          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   129d8:	0009c703          	lbu	a4,0(s3)
   129dc:	463e                	c.lwsp	a2,204(sp)
   129de:	86d6                	c.mv	a3,s5
   129e0:	bf09                	c.j	128f2 <_vfprintf_r+0x1746>
   129e2:	0005c783          	lbu	a5,0(a1)
   129e6:	bffcfc93          	andi	s9,s9,-1025
   129ea:	4601                	c.li	a2,0
   129ec:	18f107a3          	sb	a5,399(sp)
   129f0:	18f10b13          	addi	s6,sp,399
   129f4:	b8a1                	c.j	1224c <_vfprintf_r+0x10a0>
   129f6:	4512                	c.lwsp	a0,4(sp)
   129f8:	09010d93          	addi	s11,sp,144
   129fc:	191c                	c.addi4spn	a5,sp,176
   129fe:	85ee                	c.mv	a1,s11
   12a00:	0bc10813          	addi	a6,sp,188
   12a04:	1178                	c.addi4spn	a4,sp,172
   12a06:	86d2                	c.mv	a3,s4
   12a08:	4609                	c.li	a2,2
   12a0a:	c6c6                	c.swsp	a7,76(sp)
   12a0c:	c49a                	c.swsp	t1,72(sp)
   12a0e:	c0f6                	c.swsp	t4,64(sp)
   12a10:	c91e                	c.swsp	t2,144(sp)
   12a12:	de1e                	c.swsp	t2,60(sp)
   12a14:	cb16                	c.swsp	t0,148(sp)
   12a16:	d016                	c.swsp	t0,32(sp)
   12a18:	cd7e                	c.swsp	t6,152(sp)
   12a1a:	ce7e                	c.swsp	t6,28(sp)
   12a1c:	cf7a                	c.swsp	t5,156(sp)
   12a1e:	cc7a                	c.swsp	t5,24(sp)
   12a20:	710010ef          	jal	ra,14130 <_ldtoa_r>
   12a24:	001cf793          	andi	a5,s9,1
   12a28:	4f62                	c.lwsp	t5,24(sp)
   12a2a:	4ff2                	c.lwsp	t6,28(sp)
   12a2c:	5282                	c.lwsp	t0,32(sp)
   12a2e:	53f2                	c.lwsp	t2,60(sp)
   12a30:	4e86                	c.lwsp	t4,64(sp)
   12a32:	4326                	c.lwsp	t1,72(sp)
   12a34:	48b6                	c.lwsp	a7,76(sp)
   12a36:	8b2a                	c.mv	s6,a0
   12a38:	7c079063          	bne	a5,zero,131f8 <_vfprintf_r+0x204c>
   12a3c:	577a                	c.lwsp	a4,188(sp)
   12a3e:	5bba                	c.lwsp	s7,172(sp)
   12a40:	57f5                	c.li	a5,-3
   12a42:	8f09                	c.sub	a4,a0
   12a44:	cc3a                	c.swsp	a4,24(sp)
   12a46:	6efbc363          	blt	s7,a5,1312c <_vfprintf_r+0x1f80>
   12a4a:	5d7a4b63          	blt	s4,s7,13020 <_vfprintf_r+0x1e74>
   12a4e:	76ebca63          	blt	s7,a4,131c2 <_vfprintf_r+0x2016>
   12a52:	8dde                	c.mv	s11,s7
   12a54:	400cfe13          	andi	t3,s9,1024
   12a58:	000e0463          	beq	t3,zero,12a60 <_vfprintf_r+0x18b4>
   12a5c:	037047e3          	blt	zero,s7,1328a <_vfprintf_r+0x20de>
   12a60:	fffdc713          	xori	a4,s11,-1
   12a64:	877d                	c.srai	a4,0x1f
   12a66:	00edfd33          	and	s10,s11,a4
   12a6a:	06700893          	addi	a7,zero,103
   12a6e:	8ce2                	c.mv	s9,s8
   12a70:	d002                	c.swsp	zero,32(sp)
   12a72:	ce02                	c.swsp	zero,28(sp)
   12a74:	57c2                	c.lwsp	a5,48(sp)
   12a76:	002cf613          	andi	a2,s9,2
   12a7a:	54078863          	beq	a5,zero,12fca <_vfprintf_r+0x1e1e>
   12a7e:	02d00f93          	addi	t6,zero,45
   12a82:	0bf103a3          	sb	t6,167(sp)
   12a86:	0d05                	c.addi	s10,1
   12a88:	4a01                	c.li	s4,0
   12a8a:	fdaff06f          	jal	zero,12264 <_vfprintf_r+0x10b8>
   12a8e:	45a2                	c.lwsp	a1,8(sp)
   12a90:	4512                	c.lwsp	a0,4(sp)
   12a92:	01d0                	c.addi4spn	a2,sp,196
   12a94:	d01a                	c.swsp	t1,32(sp)
   12a96:	ce76                	c.swsp	t4,28(sp)
   12a98:	235000ef          	jal	ra,134cc <__sprint_r>
   12a9c:	b2051a63          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   12aa0:	57ba                	c.lwsp	a5,172(sp)
   12aa2:	463e                	c.lwsp	a2,204(sp)
   12aa4:	5302                	c.lwsp	t1,32(sp)
   12aa6:	4ef2                	c.lwsp	t4,28(sp)
   12aa8:	8456                	c.mv	s0,s5
   12aaa:	bce5                	c.j	125a2 <_vfprintf_r+0x13f6>
   12aac:	0a714783          	lbu	a5,167(sp)
   12ab0:	4d01                	c.li	s10,0
   12ab2:	4d81                	c.li	s11,0
   12ab4:	19010b13          	addi	s6,sp,400
   12ab8:	e75fe06f          	jal	zero,1192c <_vfprintf_r+0x780>
   12abc:	45a2                	c.lwsp	a1,8(sp)
   12abe:	4512                	c.lwsp	a0,4(sp)
   12ac0:	01d0                	c.addi4spn	a2,sp,196
   12ac2:	de1a                	c.swsp	t1,60(sp)
   12ac4:	d876                	c.swsp	t4,48(sp)
   12ac6:	207000ef          	jal	ra,134cc <__sprint_r>
   12aca:	b0051363          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   12ace:	463e                	c.lwsp	a2,204(sp)
   12ad0:	5372                	c.lwsp	t1,60(sp)
   12ad2:	5ec2                	c.lwsp	t4,48(sp)
   12ad4:	8456                	c.mv	s0,s5
   12ad6:	c64ff06f          	jal	zero,11f3a <_vfprintf_r+0xd8e>
   12ada:	463e                	c.lwsp	a2,204(sp)
   12adc:	452e                	c.lwsp	a0,200(sp)
   12ade:	004cf713          	andi	a4,s9,4
   12ae2:	d03a                	c.swsp	a4,32(sp)
   12ae4:	85b2                	c.mv	a1,a2
   12ae6:	86aa                	c.mv	a3,a0
   12ae8:	94070be3          	beq	a4,zero,1243e <_vfprintf_r+0x1292>
   12aec:	c83e                	c.swsp	a5,16(sp)
   12aee:	8cc2                	c.mv	s9,a6
   12af0:	4d81                	c.li	s11,0
   12af2:	d002                	c.swsp	zero,32(sp)
   12af4:	ce02                	c.swsp	zero,28(sp)
   12af6:	4b81                	c.li	s7,0
   12af8:	ca02                	c.swsp	zero,20(sp)
   12afa:	4d09                	c.li	s10,2
   12afc:	19010b13          	addi	s6,sp,400
   12b00:	07800893          	addi	a7,zero,120
   12b04:	4991                	c.li	s3,4
   12b06:	867fe06f          	jal	zero,1136c <_vfprintf_r+0x1c0>
   12b0a:	8d3e                	c.mv	s10,a5
   12b0c:	b061                	c.j	12394 <_vfprintf_r+0x11e8>
   12b0e:	9b3a                	c.add	s6,a4
   12b10:	413b0b33          	sub	s6,s6,s3
   12b14:	41470a33          	sub	s4,a4,s4
   12b18:	cb6a5163          	bge	s4,s6,11fba <_vfprintf_r+0xe0e>
   12b1c:	8b52                	c.mv	s6,s4
   12b1e:	c9cff06f          	jal	zero,11fba <_vfprintf_r+0xe0e>
   12b22:	8456                	c.mv	s0,s5
   12b24:	869fe06f          	jal	zero,1138c <_vfprintf_r+0x1e0>
   12b28:	0ff77713          	andi	a4,a4,255
   12b2c:	4681                	c.li	a3,0
   12b2e:	fc2ff06f          	jal	zero,122f0 <_vfprintf_r+0x1144>
   12b32:	0ff6fd13          	andi	s10,a3,255
   12b36:	4d81                	c.li	s11,0
   12b38:	e60a5c63          	bge	s4,zero,121b0 <_vfprintf_r+0x1004>
   12b3c:	f19fe06f          	jal	zero,11a54 <_vfprintf_r+0x8a8>
   12b40:	c83a                	c.swsp	a4,16(sp)
   12b42:	8866                	c.mv	a6,s9
   12b44:	4601                	c.li	a2,0
   12b46:	e3dfe06f          	jal	zero,11982 <_vfprintf_r+0x7d6>
   12b4a:	41fd5d93          	srai	s11,s10,0x1f
   12b4e:	c83a                	c.swsp	a4,16(sp)
   12b50:	876e                	c.mv	a4,s11
   12b52:	d49fe06f          	jal	zero,1189a <_vfprintf_r+0x6ee>
   12b56:	47c2                	c.lwsp	a5,16(sp)
   12b58:	46b2                	c.lwsp	a3,12(sp)
   12b5a:	c83a                	c.swsp	a4,16(sp)
   12b5c:	439c                	c.lw	a5,0(a5)
   12b5e:	00d79023          	sh	a3,0(a5)
   12b62:	85eff06f          	jal	zero,11bc0 <_vfprintf_r+0xa14>
   12b66:	4d05                	c.li	s10,1
   12b68:	ba05                	c.j	12498 <_vfprintf_r+0x12ec>
   12b6a:	04700713          	addi	a4,zero,71
   12b6e:	0a714783          	lbu	a5,167(sp)
   12b72:	77175863          	bge	a4,a7,132e2 <_vfprintf_r+0x2136>
   12b76:	6b69                	c.lui	s6,0x1a
   12b78:	73cb0b13          	addi	s6,s6,1852 # 1a73c <__clzsi2+0x5c>
   12b7c:	080799e3          	bne	a5,zero,1340e <_vfprintf_r+0x2262>
   12b80:	4d8d                	c.li	s11,3
   12b82:	8d6e                	c.mv	s10,s11
   12b84:	4a01                	c.li	s4,0
   12b86:	d002                	c.swsp	zero,32(sp)
   12b88:	ce02                	c.swsp	zero,28(sp)
   12b8a:	ca02                	c.swsp	zero,20(sp)
   12b8c:	facfe06f          	jal	zero,11338 <_vfprintf_r+0x18c>
   12b90:	45a2                	c.lwsp	a1,8(sp)
   12b92:	4512                	c.lwsp	a0,4(sp)
   12b94:	01d0                	c.addi4spn	a2,sp,196
   12b96:	d01a                	c.swsp	t1,32(sp)
   12b98:	ce76                	c.swsp	t4,28(sp)
   12b9a:	133000ef          	jal	ra,134cc <__sprint_r>
   12b9e:	a2051963          	bne	a0,zero,11dd0 <_vfprintf_r+0xc24>
   12ba2:	57ba                	c.lwsp	a5,172(sp)
   12ba4:	463e                	c.lwsp	a2,204(sp)
   12ba6:	46ae                	c.lwsp	a3,200(sp)
   12ba8:	5302                	c.lwsp	t1,32(sp)
   12baa:	4ef2                	c.lwsp	t4,28(sp)
   12bac:	8456                	c.mv	s0,s5
   12bae:	9ebfe06f          	jal	zero,11598 <_vfprintf_r+0x3ec>
   12bb2:	6b69                	c.lui	s6,0x1a
   12bb4:	730b0b13          	addi	s6,s6,1840 # 1a730 <__clzsi2+0x50>
   12bb8:	b4fd                	c.j	126a6 <_vfprintf_r+0x14fa>
   12bba:	05800793          	addi	a5,zero,88
   12bbe:	03000713          	addi	a4,zero,48
   12bc2:	0af104a3          	sb	a5,169(sp)
   12bc6:	0ae10423          	sb	a4,168(sp)
   12bca:	06300793          	addi	a5,zero,99
   12bce:	ca02                	c.swsp	zero,20(sp)
   12bd0:	002cec93          	ori	s9,s9,2
   12bd4:	12c10b13          	addi	s6,sp,300
   12bd8:	0147c463          	blt	a5,s4,12be0 <_vfprintf_r+0x1a34>
   12bdc:	93bfe06f          	jal	zero,11516 <_vfprintf_r+0x36a>
   12be0:	4512                	c.lwsp	a0,4(sp)
   12be2:	001a0593          	addi	a1,s4,1
   12be6:	ce46                	c.swsp	a7,28(sp)
   12be8:	cc1a                	c.swsp	t1,24(sp)
   12bea:	ca76                	c.swsp	t4,20(sp)
   12bec:	ff1fd0ef          	jal	ra,10bdc <_malloc_r>
   12bf0:	4ed2                	c.lwsp	t4,20(sp)
   12bf2:	4362                	c.lwsp	t1,24(sp)
   12bf4:	48f2                	c.lwsp	a7,28(sp)
   12bf6:	8b2a                	c.mv	s6,a0
   12bf8:	7e050f63          	beq	a0,zero,133f6 <_vfprintf_r+0x224a>
   12bfc:	ca2a                	c.swsp	a0,20(sp)
   12bfe:	919fe06f          	jal	zero,11516 <_vfprintf_r+0x36a>
   12c02:	001a0793          	addi	a5,s4,1
   12c06:	cc3e                	c.swsp	a5,24(sp)
   12c08:	4609                	c.li	a2,2
   12c0a:	49e2                	c.lwsp	s3,24(sp)
   12c0c:	4512                	c.lwsp	a0,4(sp)
   12c0e:	09010d93          	addi	s11,sp,144
   12c12:	1178                	c.addi4spn	a4,sp,172
   12c14:	86ce                	c.mv	a3,s3
   12c16:	85ee                	c.mv	a1,s11
   12c18:	0bc10813          	addi	a6,sp,188
   12c1c:	191c                	c.addi4spn	a5,sp,176
   12c1e:	c8c6                	c.swsp	a7,80(sp)
   12c20:	c69a                	c.swsp	t1,76(sp)
   12c22:	c4f6                	c.swsp	t4,72(sp)
   12c24:	c91e                	c.swsp	t2,144(sp)
   12c26:	c09e                	c.swsp	t2,64(sp)
   12c28:	cb16                	c.swsp	t0,148(sp)
   12c2a:	de16                	c.swsp	t0,60(sp)
   12c2c:	cd7e                	c.swsp	t6,152(sp)
   12c2e:	d07e                	c.swsp	t6,32(sp)
   12c30:	cf7a                	c.swsp	t5,156(sp)
   12c32:	ce7a                	c.swsp	t5,28(sp)
   12c34:	4fc010ef          	jal	ra,14130 <_ldtoa_r>
   12c38:	48c6                	c.lwsp	a7,80(sp)
   12c3a:	04600693          	addi	a3,zero,70
   12c3e:	4f72                	c.lwsp	t5,28(sp)
   12c40:	fdf8f713          	andi	a4,a7,-33
   12c44:	5f82                	c.lwsp	t6,32(sp)
   12c46:	52f2                	c.lwsp	t0,60(sp)
   12c48:	4386                	c.lwsp	t2,64(sp)
   12c4a:	4ea6                	c.lwsp	t4,72(sp)
   12c4c:	4336                	c.lwsp	t1,76(sp)
   12c4e:	8b2a                	c.mv	s6,a0
   12c50:	01350d33          	add	s10,a0,s3
   12c54:	44d70263          	beq	a4,a3,13098 <_vfprintf_r+0x1eec>
   12c58:	856e                	c.mv	a0,s11
   12c5a:	010c                	c.addi4spn	a1,sp,128
   12c5c:	de46                	c.swsp	a7,60(sp)
   12c5e:	d01a                	c.swsp	t1,32(sp)
   12c60:	ce76                	c.swsp	t4,28(sp)
   12c62:	c91e                	c.swsp	t2,144(sp)
   12c64:	cb16                	c.swsp	t0,148(sp)
   12c66:	cd7e                	c.swsp	t6,152(sp)
   12c68:	cf7a                	c.swsp	t5,156(sp)
   12c6a:	c102                	c.swsp	zero,128(sp)
   12c6c:	c302                	c.swsp	zero,132(sp)
   12c6e:	c502                	c.swsp	zero,136(sp)
   12c70:	c702                	c.swsp	zero,140(sp)
   12c72:	700050ef          	jal	ra,18372 <__eqtf2>
   12c76:	4ef2                	c.lwsp	t4,28(sp)
   12c78:	5302                	c.lwsp	t1,32(sp)
   12c7a:	58f2                	c.lwsp	a7,60(sp)
   12c7c:	6c050863          	beq	a0,zero,1334c <_vfprintf_r+0x21a0>
   12c80:	55fa                	c.lwsp	a1,188(sp)
   12c82:	04500713          	addi	a4,zero,69
   12c86:	6da5f063          	bgeu	a1,s10,13346 <_vfprintf_r+0x219a>
   12c8a:	03000613          	addi	a2,zero,48
   12c8e:	00158793          	addi	a5,a1,1
   12c92:	df3e                	c.swsp	a5,188(sp)
   12c94:	00c58023          	sb	a2,0(a1)
   12c98:	55fa                	c.lwsp	a1,188(sp)
   12c9a:	ffa5eae3          	bltu	a1,s10,12c8e <_vfprintf_r+0x1ae2>
   12c9e:	416586b3          	sub	a3,a1,s6
   12ca2:	04700793          	addi	a5,zero,71
   12ca6:	cc36                	c.swsp	a3,24(sp)
   12ca8:	5bba                	c.lwsp	s7,172(sp)
   12caa:	36f70663          	beq	a4,a5,13016 <_vfprintf_r+0x1e6a>
   12cae:	04600793          	addi	a5,zero,70
   12cb2:	42f70d63          	beq	a4,a5,130ec <_vfprintf_r+0x1f40>
   12cb6:	fffb8793          	addi	a5,s7,-1
   12cba:	0b110a23          	sb	a7,180(sp)
   12cbe:	d73e                	c.swsp	a5,172(sp)
   12cc0:	4607cc63          	blt	a5,zero,13138 <_vfprintf_r+0x1f8c>
   12cc4:	02b00713          	addi	a4,zero,43
   12cc8:	0ae10aa3          	sb	a4,181(sp)
   12ccc:	4725                	c.li	a4,9
   12cce:	26f74663          	blt	a4,a5,12f3a <_vfprintf_r+0x1d8e>
   12cd2:	03000713          	addi	a4,zero,48
   12cd6:	0ae10b23          	sb	a4,182(sp)
   12cda:	0b710713          	addi	a4,sp,183
   12cde:	0b14                	c.addi4spn	a3,sp,400
   12ce0:	03078793          	addi	a5,a5,48
   12ce4:	40d706b3          	sub	a3,a4,a3
   12ce8:	00f70023          	sb	a5,0(a4)
   12cec:	0dd68793          	addi	a5,a3,221
   12cf0:	da3e                	c.swsp	a5,52(sp)
   12cf2:	4762                	c.lwsp	a4,24(sp)
   12cf4:	56d2                	c.lwsp	a3,52(sp)
   12cf6:	4785                	c.li	a5,1
   12cf8:	00d70db3          	add	s11,a4,a3
   12cfc:	56e7d563          	bge	a5,a4,13266 <_vfprintf_r+0x20ba>
   12d00:	5792                	c.lwsp	a5,36(sp)
   12d02:	9dbe                	c.add	s11,a5
   12d04:	fffdc713          	xori	a4,s11,-1
   12d08:	bffcfe13          	andi	t3,s9,-1025
   12d0c:	877d                	c.srai	a4,0x1f
   12d0e:	100e6c93          	ori	s9,t3,256
   12d12:	00edfd33          	and	s10,s11,a4
   12d16:	d002                	c.swsp	zero,32(sp)
   12d18:	ce02                	c.swsp	zero,28(sp)
   12d1a:	4b81                	c.li	s7,0
   12d1c:	bba1                	c.j	12a74 <_vfprintf_r+0x18c8>
   12d1e:	09010d93          	addi	s11,sp,144
   12d22:	08010993          	addi	s3,sp,128
   12d26:	856e                	c.mv	a0,s11
   12d28:	85ce                	c.mv	a1,s3
   12d2a:	1170                	c.addi4spn	a2,sp,172
   12d2c:	c4c6                	c.swsp	a7,72(sp)
   12d2e:	c09a                	c.swsp	t1,64(sp)
   12d30:	de76                	c.swsp	t4,60(sp)
   12d32:	c11e                	c.swsp	t2,128(sp)
   12d34:	c316                	c.swsp	t0,132(sp)
   12d36:	c57e                	c.swsp	t6,136(sp)
   12d38:	c77a                	c.swsp	t5,140(sp)
   12d3a:	29a010ef          	jal	ra,13fd4 <frexpl>
   12d3e:	454a                	c.lwsp	a0,144(sp)
   12d40:	465a                	c.lwsp	a2,148(sp)
   12d42:	46ea                	c.lwsp	a3,152(sp)
   12d44:	477a                	c.lwsp	a4,156(sp)
   12d46:	3ffc07b7          	lui	a5,0x3ffc0
   12d4a:	c12a                	c.swsp	a0,128(sp)
   12d4c:	c332                	c.swsp	a2,132(sp)
   12d4e:	85ce                	c.mv	a1,s3
   12d50:	1890                	c.addi4spn	a2,sp,112
   12d52:	856e                	c.mv	a0,s11
   12d54:	c536                	c.swsp	a3,136(sp)
   12d56:	c73a                	c.swsp	a4,140(sp)
   12d58:	debe                	c.swsp	a5,124(sp)
   12d5a:	d882                	c.swsp	zero,112(sp)
   12d5c:	da82                	c.swsp	zero,116(sp)
   12d5e:	dc82                	c.swsp	zero,120(sp)
   12d60:	0db050ef          	jal	ra,1863a <__multf3>
   12d64:	4f4a                	c.lwsp	t5,144(sp)
   12d66:	485a                	c.lwsp	a6,148(sp)
   12d68:	466a                	c.lwsp	a2,152(sp)
   12d6a:	46fa                	c.lwsp	a3,156(sp)
   12d6c:	85ce                	c.mv	a1,s3
   12d6e:	856e                	c.mv	a0,s11
   12d70:	da7a                	c.swsp	t5,52(sp)
   12d72:	d042                	c.swsp	a6,32(sp)
   12d74:	ce32                	c.swsp	a2,28(sp)
   12d76:	cc36                	c.swsp	a3,24(sp)
   12d78:	c102                	c.swsp	zero,128(sp)
   12d7a:	c302                	c.swsp	zero,132(sp)
   12d7c:	c502                	c.swsp	zero,136(sp)
   12d7e:	c702                	c.swsp	zero,140(sp)
   12d80:	5f2050ef          	jal	ra,18372 <__eqtf2>
   12d84:	46e2                	c.lwsp	a3,24(sp)
   12d86:	4672                	c.lwsp	a2,28(sp)
   12d88:	5802                	c.lwsp	a6,32(sp)
   12d8a:	5f52                	c.lwsp	t5,52(sp)
   12d8c:	5ef2                	c.lwsp	t4,60(sp)
   12d8e:	4306                	c.lwsp	t1,64(sp)
   12d90:	48a6                	c.lwsp	a7,72(sp)
   12d92:	e119                	c.bnez	a0,12d98 <_vfprintf_r+0x1bec>
   12d94:	4785                	c.li	a5,1
   12d96:	d73e                	c.swsp	a5,172(sp)
   12d98:	06100793          	addi	a5,zero,97
   12d9c:	5ef88363          	beq	a7,a5,13382 <_vfprintf_r+0x21d6>
   12da0:	67e9                	c.lui	a5,0x1a
   12da2:	75478793          	addi	a5,a5,1876 # 1a754 <__clzsi2+0x74>
   12da6:	cc3e                	c.swsp	a5,24(sp)
   12da8:	c0e6                	c.swsp	s9,64(sp)
   12daa:	1a7d                	c.addi	s4,-1
   12dac:	ce76                	c.swsp	t4,28(sp)
   12dae:	d01a                	c.swsp	t1,32(sp)
   12db0:	da22                	c.swsp	s0,52(sp)
   12db2:	de46                	c.swsp	a7,60(sp)
   12db4:	c4da                	c.swsp	s6,72(sp)
   12db6:	8bfa                	c.mv	s7,t5
   12db8:	8c42                	c.mv	s8,a6
   12dba:	8cb2                	c.mv	s9,a2
   12dbc:	8d36                	c.mv	s10,a3
   12dbe:	a015                	c.j	12de2 <_vfprintf_r+0x1c36>
   12dc0:	85ce                	c.mv	a1,s3
   12dc2:	856e                	c.mv	a0,s11
   12dc4:	c95e                	c.swsp	s7,144(sp)
   12dc6:	cb62                	c.swsp	s8,148(sp)
   12dc8:	cd66                	c.swsp	s9,152(sp)
   12dca:	cf6a                	c.swsp	s10,156(sp)
   12dcc:	c102                	c.swsp	zero,128(sp)
   12dce:	c302                	c.swsp	zero,132(sp)
   12dd0:	c502                	c.swsp	zero,136(sp)
   12dd2:	c702                	c.swsp	zero,140(sp)
   12dd4:	00fa0433          	add	s0,s4,a5
   12dd8:	59a050ef          	jal	ra,18372 <__eqtf2>
   12ddc:	56050a63          	beq	a0,zero,13350 <_vfprintf_r+0x21a4>
   12de0:	8a22                	c.mv	s4,s0
   12de2:	400307b7          	lui	a5,0x40030
   12de6:	1890                	c.addi4spn	a2,sp,112
   12de8:	85ce                	c.mv	a1,s3
   12dea:	856e                	c.mv	a0,s11
   12dec:	debe                	c.swsp	a5,124(sp)
   12dee:	c15e                	c.swsp	s7,128(sp)
   12df0:	c362                	c.swsp	s8,132(sp)
   12df2:	c566                	c.swsp	s9,136(sp)
   12df4:	c76a                	c.swsp	s10,140(sp)
   12df6:	d882                	c.swsp	zero,112(sp)
   12df8:	da82                	c.swsp	zero,116(sp)
   12dfa:	dc82                	c.swsp	zero,120(sp)
   12dfc:	03f050ef          	jal	ra,1863a <__multf3>
   12e00:	856e                	c.mv	a0,s11
   12e02:	58a070ef          	jal	ra,1a38c <__fixtfsi>
   12e06:	842a                	c.mv	s0,a0
   12e08:	85a2                	c.mv	a1,s0
   12e0a:	856e                	c.mv	a0,s11
   12e0c:	4d4a                	c.lwsp	s10,144(sp)
   12e0e:	4cda                	c.lwsp	s9,148(sp)
   12e10:	4c6a                	c.lwsp	s8,152(sp)
   12e12:	4bfa                	c.lwsp	s7,156(sp)
   12e14:	684070ef          	jal	ra,1a498 <__floatsitf>
   12e18:	454a                	c.lwsp	a0,144(sp)
   12e1a:	45da                	c.lwsp	a1,148(sp)
   12e1c:	466a                	c.lwsp	a2,152(sp)
   12e1e:	46fa                	c.lwsp	a3,156(sp)
   12e20:	d0aa                	c.swsp	a0,96(sp)
   12e22:	d2ae                	c.swsp	a1,100(sp)
   12e24:	d4b2                	c.swsp	a2,104(sp)
   12e26:	188c                	c.addi4spn	a1,sp,112
   12e28:	1090                	c.addi4spn	a2,sp,96
   12e2a:	854e                	c.mv	a0,s3
   12e2c:	d8ea                	c.swsp	s10,112(sp)
   12e2e:	dae6                	c.swsp	s9,116(sp)
   12e30:	dce2                	c.swsp	s8,120(sp)
   12e32:	dede                	c.swsp	s7,124(sp)
   12e34:	d6b6                	c.swsp	a3,108(sp)
   12e36:	400060ef          	jal	ra,19236 <__subtf3>
   12e3a:	47e2                	c.lwsp	a5,24(sp)
   12e3c:	82da                	c.mv	t0,s6
   12e3e:	0b05                	c.addi	s6,1
   12e40:	008786b3          	add	a3,a5,s0
   12e44:	0006c583          	lbu	a1,0(a3)
   12e48:	4b8a                	c.lwsp	s7,128(sp)
   12e4a:	4c1a                	c.lwsp	s8,132(sp)
   12e4c:	4caa                	c.lwsp	s9,136(sp)
   12e4e:	4d3a                	c.lwsp	s10,140(sp)
   12e50:	57fd                	c.li	a5,-1
   12e52:	febb0fa3          	sb	a1,-1(s6)
   12e56:	f6fa15e3          	bne	s4,a5,12dc0 <_vfprintf_r+0x1c14>
   12e5a:	4ef2                	c.lwsp	t4,28(sp)
   12e5c:	5302                	c.lwsp	t1,32(sp)
   12e5e:	58f2                	c.lwsp	a7,60(sp)
   12e60:	8666                	c.mv	a2,s9
   12e62:	86ea                	c.mv	a3,s10
   12e64:	3ffe0a37          	lui	s4,0x3ffe0
   12e68:	85ce                	c.mv	a1,s3
   12e6a:	856e                	c.mv	a0,s11
   12e6c:	cef6                	c.swsp	t4,92(sp)
   12e6e:	cc9a                	c.swsp	t1,88(sp)
   12e70:	d016                	c.swsp	t0,32(sp)
   12e72:	ce46                	c.swsp	a7,28(sp)
   12e74:	caa2                	c.swsp	s0,84(sp)
   12e76:	4c86                	c.lwsp	s9,64(sp)
   12e78:	8d5a                	c.mv	s10,s6
   12e7a:	c95e                	c.swsp	s7,144(sp)
   12e7c:	4b26                	c.lwsp	s6,72(sp)
   12e7e:	c8de                	c.swsp	s7,80(sp)
   12e80:	cb62                	c.swsp	s8,148(sp)
   12e82:	c6e2                	c.swsp	s8,76(sp)
   12e84:	cd32                	c.swsp	a2,152(sp)
   12e86:	c4b2                	c.swsp	a2,72(sp)
   12e88:	cf36                	c.swsp	a3,156(sp)
   12e8a:	c0b6                	c.swsp	a3,64(sp)
   12e8c:	c102                	c.swsp	zero,128(sp)
   12e8e:	c302                	c.swsp	zero,132(sp)
   12e90:	c502                	c.swsp	zero,136(sp)
   12e92:	c752                	c.swsp	s4,140(sp)
   12e94:	5ca050ef          	jal	ra,1845e <__getf2>
   12e98:	5452                	c.lwsp	s0,52(sp)
   12e9a:	48f2                	c.lwsp	a7,28(sp)
   12e9c:	5282                	c.lwsp	t0,32(sp)
   12e9e:	4366                	c.lwsp	t1,88(sp)
   12ea0:	4ef6                	c.lwsp	t4,92(sp)
   12ea2:	02a04163          	blt	zero,a0,12ec4 <_vfprintf_r+0x1d18>
   12ea6:	85ce                	c.mv	a1,s3
   12ea8:	856e                	c.mv	a0,s11
   12eaa:	d01a                	c.swsp	t1,32(sp)
   12eac:	ce76                	c.swsp	t4,28(sp)
   12eae:	da16                	c.swsp	t0,52(sp)
   12eb0:	4c2050ef          	jal	ra,18372 <__eqtf2>
   12eb4:	4ef2                	c.lwsp	t4,28(sp)
   12eb6:	5302                	c.lwsp	t1,32(sp)
   12eb8:	58f2                	c.lwsp	a7,60(sp)
   12eba:	e521                	c.bnez	a0,12f02 <_vfprintf_r+0x1d56>
   12ebc:	4756                	c.lwsp	a4,84(sp)
   12ebe:	52d2                	c.lwsp	t0,52(sp)
   12ec0:	8b05                	c.andi	a4,1
   12ec2:	c321                	c.beqz	a4,12f02 <_vfprintf_r+0x1d56>
   12ec4:	47e2                	c.lwsp	a5,24(sp)
   12ec6:	df16                	c.swsp	t0,188(sp)
   12ec8:	fffd4683          	lbu	a3,-1(s10)
   12ecc:	00f7c603          	lbu	a2,15(a5) # 4003000f <__BSS_END__+0x400145b3>
   12ed0:	876a                	c.mv	a4,s10
   12ed2:	00c69e63          	bne	a3,a2,12eee <_vfprintf_r+0x1d42>
   12ed6:	03000593          	addi	a1,zero,48
   12eda:	feb70fa3          	sb	a1,-1(a4)
   12ede:	577a                	c.lwsp	a4,188(sp)
   12ee0:	fff70793          	addi	a5,a4,-1
   12ee4:	df3e                	c.swsp	a5,188(sp)
   12ee6:	fff74683          	lbu	a3,-1(a4)
   12eea:	fec688e3          	beq	a3,a2,12eda <_vfprintf_r+0x1d2e>
   12eee:	00168613          	addi	a2,a3,1
   12ef2:	03900593          	addi	a1,zero,57
   12ef6:	0ff67613          	andi	a2,a2,255
   12efa:	0cb68463          	beq	a3,a1,12fc2 <_vfprintf_r+0x1e16>
   12efe:	fec70fa3          	sb	a2,-1(a4)
   12f02:	573a                	c.lwsp	a4,172(sp)
   12f04:	416d07b3          	sub	a5,s10,s6
   12f08:	cc3e                	c.swsp	a5,24(sp)
   12f0a:	fff70793          	addi	a5,a4,-1
   12f0e:	06100613          	addi	a2,zero,97
   12f12:	d73e                	c.swsp	a5,172(sp)
   12f14:	07000693          	addi	a3,zero,112
   12f18:	00c88663          	beq	a7,a2,12f24 <_vfprintf_r+0x1d78>
   12f1c:	05000693          	addi	a3,zero,80
   12f20:	04100893          	addi	a7,zero,65
   12f24:	0ad10a23          	sb	a3,180(sp)
   12f28:	0607ce63          	blt	a5,zero,12fa4 <_vfprintf_r+0x1df8>
   12f2c:	02b00713          	addi	a4,zero,43
   12f30:	0ae10aa3          	sb	a4,181(sp)
   12f34:	4725                	c.li	a4,9
   12f36:	08f75063          	bge	a4,a5,12fb6 <_vfprintf_r+0x1e0a>
   12f3a:	0c310813          	addi	a6,sp,195
   12f3e:	ccccd537          	lui	a0,0xccccd
   12f42:	8642                	c.mv	a2,a6
   12f44:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccb1271>
   12f48:	06300f13          	addi	t5,zero,99
   12f4c:	02a7b733          	mulhu	a4,a5,a0
   12f50:	8e3e                	c.mv	t3,a5
   12f52:	86b2                	c.mv	a3,a2
   12f54:	167d                	c.addi	a2,-1
   12f56:	830d                	c.srli	a4,0x3
   12f58:	00271593          	slli	a1,a4,0x2
   12f5c:	95ba                	c.add	a1,a4
   12f5e:	0586                	c.slli	a1,0x1
   12f60:	8f8d                	c.sub	a5,a1
   12f62:	03078793          	addi	a5,a5,48
   12f66:	fef68fa3          	sb	a5,-1(a3)
   12f6a:	87ba                	c.mv	a5,a4
   12f6c:	ffcf40e3          	blt	t5,t3,12f4c <_vfprintf_r+0x1da0>
   12f70:	03070793          	addi	a5,a4,48
   12f74:	fef60fa3          	sb	a5,-1(a2)
   12f78:	ffe68793          	addi	a5,a3,-2
   12f7c:	4507f763          	bgeu	a5,a6,133ca <_vfprintf_r+0x221e>
   12f80:	0b610593          	addi	a1,sp,182
   12f84:	872e                	c.mv	a4,a1
   12f86:	0007c603          	lbu	a2,0(a5)
   12f8a:	0785                	c.addi	a5,1
   12f8c:	0705                	c.addi	a4,1
   12f8e:	fec70fa3          	sb	a2,-1(a4)
   12f92:	ff079ae3          	bne	a5,a6,12f86 <_vfprintf_r+0x1dda>
   12f96:	97ae                	c.add	a5,a1
   12f98:	0789                	c.addi	a5,2
   12f9a:	8f95                	c.sub	a5,a3
   12f9c:	1958                	c.addi4spn	a4,sp,180
   12f9e:	8f99                	c.sub	a5,a4
   12fa0:	da3e                	c.swsp	a5,52(sp)
   12fa2:	bb81                	c.j	12cf2 <_vfprintf_r+0x1b46>
   12fa4:	4785                	c.li	a5,1
   12fa6:	02d00693          	addi	a3,zero,45
   12faa:	8f99                	c.sub	a5,a4
   12fac:	0ad10aa3          	sb	a3,181(sp)
   12fb0:	4725                	c.li	a4,9
   12fb2:	f8f744e3          	blt	a4,a5,12f3a <_vfprintf_r+0x1d8e>
   12fb6:	0b610713          	addi	a4,sp,182
   12fba:	b315                	c.j	12cde <_vfprintf_r+0x1b32>
   12fbc:	cc52                	c.swsp	s4,24(sp)
   12fbe:	460d                	c.li	a2,3
   12fc0:	b1a9                	c.j	12c0a <_vfprintf_r+0x1a5e>
   12fc2:	47e2                	c.lwsp	a5,24(sp)
   12fc4:	00a7c603          	lbu	a2,10(a5)
   12fc8:	bf1d                	c.j	12efe <_vfprintf_r+0x1d52>
   12fca:	0a714f83          	lbu	t6,167(sp)
   12fce:	aa0f9ce3          	bne	t6,zero,12a86 <_vfprintf_r+0x18da>
   12fd2:	4a01                	c.li	s4,0
   12fd4:	a90ff06f          	jal	zero,12264 <_vfprintf_r+0x10b8>
   12fd8:	47a5                	c.li	a5,9
   12fda:	01c7f463          	bgeu	a5,t3,12fe2 <_vfprintf_r+0x1e36>
   12fde:	afbfe06f          	jal	zero,11ad8 <_vfprintf_r+0x92c>
   12fe2:	d52ff06f          	jal	zero,12534 <_vfprintf_r+0x1388>
   12fe6:	45a2                	c.lwsp	a1,8(sp)
   12fe8:	4512                	c.lwsp	a0,4(sp)
   12fea:	01d0                	c.addi4spn	a2,sp,196
   12fec:	21c5                	c.jal	134cc <__sprint_r>
   12fee:	c119                	c.beqz	a0,12ff4 <_vfprintf_r+0x1e48>
   12ff0:	de1fe06f          	jal	zero,11dd0 <_vfprintf_r+0xc24>
   12ff4:	0009c703          	lbu	a4,0(s3)
   12ff8:	463e                	c.lwsp	a2,204(sp)
   12ffa:	86d6                	c.mv	a3,s5
   12ffc:	9b3a                	c.add	s6,a4
   12ffe:	b221                	c.j	12906 <_vfprintf_r+0x175a>
   13000:	07800793          	addi	a5,zero,120
   13004:	be6d                	c.j	12bbe <_vfprintf_r+0x1a12>
   13006:	416d07b3          	sub	a5,s10,s6
   1300a:	04700693          	addi	a3,zero,71
   1300e:	cc3e                	c.swsp	a5,24(sp)
   13010:	5bba                	c.lwsp	s7,172(sp)
   13012:	0cd71d63          	bne	a4,a3,130ec <_vfprintf_r+0x1f40>
   13016:	57f5                	c.li	a5,-3
   13018:	10fbca63          	blt	s7,a5,1312c <_vfprintf_r+0x1f80>
   1301c:	037a5263          	bge	s4,s7,13040 <_vfprintf_r+0x1e94>
   13020:	18f9                	c.addi	a7,-2
   13022:	fffb8793          	addi	a5,s7,-1
   13026:	0b110a23          	sb	a7,180(sp)
   1302a:	d73e                	c.swsp	a5,172(sp)
   1302c:	c807dce3          	bge	a5,zero,12cc4 <_vfprintf_r+0x1b18>
   13030:	4785                	c.li	a5,1
   13032:	02d00713          	addi	a4,zero,45
   13036:	417787b3          	sub	a5,a5,s7
   1303a:	0ae10aa3          	sb	a4,181(sp)
   1303e:	b951                	c.j	12cd2 <_vfprintf_r+0x1b26>
   13040:	47e2                	c.lwsp	a5,24(sp)
   13042:	18fbc063          	blt	s7,a5,131c2 <_vfprintf_r+0x2016>
   13046:	001cf793          	andi	a5,s9,1
   1304a:	8dde                	c.mv	s11,s7
   1304c:	a00784e3          	beq	a5,zero,12a54 <_vfprintf_r+0x18a8>
   13050:	5792                	c.lwsp	a5,36(sp)
   13052:	00fb8db3          	add	s11,s7,a5
   13056:	bafd                	c.j	12a54 <_vfprintf_r+0x18a8>
   13058:	89e2                	c.mv	s3,s8
   1305a:	d79fe06f          	jal	zero,11dd2 <_vfprintf_r+0xc26>
   1305e:	45a2                	c.lwsp	a1,8(sp)
   13060:	4512                	c.lwsp	a0,4(sp)
   13062:	01d0                	c.addi4spn	a2,sp,196
   13064:	d01a                	c.swsp	t1,32(sp)
   13066:	ce76                	c.swsp	t4,28(sp)
   13068:	2195                	c.jal	134cc <__sprint_r>
   1306a:	c119                	c.beqz	a0,13070 <_vfprintf_r+0x1ec4>
   1306c:	d65fe06f          	jal	zero,11dd0 <_vfprintf_r+0xc24>
   13070:	5a3a                	c.lwsp	s4,172(sp)
   13072:	463e                	c.lwsp	a2,204(sp)
   13074:	5302                	c.lwsp	t1,32(sp)
   13076:	4ef2                	c.lwsp	t4,28(sp)
   13078:	8456                	c.mv	s0,s5
   1307a:	f0dfe06f          	jal	zero,11f86 <_vfprintf_r+0xdda>
   1307e:	02d00793          	addi	a5,zero,45
   13082:	0af103a3          	sb	a5,167(sp)
   13086:	04700793          	addi	a5,zero,71
   1308a:	1f17d363          	bge	a5,a7,13270 <_vfprintf_r+0x20c4>
   1308e:	6b69                	c.lui	s6,0x1a
   13090:	734b0b13          	addi	s6,s6,1844 # 1a734 <__clzsi2+0x54>
   13094:	eb0ff06f          	jal	zero,12744 <_vfprintf_r+0x1598>
   13098:	000b4603          	lbu	a2,0(s6)
   1309c:	03000693          	addi	a3,zero,48
   130a0:	24d60563          	beq	a2,a3,132ea <_vfprintf_r+0x213e>
   130a4:	56ba                	c.lwsp	a3,172(sp)
   130a6:	08010993          	addi	s3,sp,128
   130aa:	9d36                	c.add	s10,a3
   130ac:	85ce                	c.mv	a1,s3
   130ae:	856e                	c.mv	a0,s11
   130b0:	de3a                	c.swsp	a4,60(sp)
   130b2:	d046                	c.swsp	a7,32(sp)
   130b4:	ce1a                	c.swsp	t1,28(sp)
   130b6:	cc76                	c.swsp	t4,24(sp)
   130b8:	c91e                	c.swsp	t2,144(sp)
   130ba:	cb16                	c.swsp	t0,148(sp)
   130bc:	cd7e                	c.swsp	t6,152(sp)
   130be:	cf7a                	c.swsp	t5,156(sp)
   130c0:	c102                	c.swsp	zero,128(sp)
   130c2:	c302                	c.swsp	zero,132(sp)
   130c4:	c502                	c.swsp	zero,136(sp)
   130c6:	c702                	c.swsp	zero,140(sp)
   130c8:	2aa050ef          	jal	ra,18372 <__eqtf2>
   130cc:	4ee2                	c.lwsp	t4,24(sp)
   130ce:	4372                	c.lwsp	t1,28(sp)
   130d0:	5882                	c.lwsp	a7,32(sp)
   130d2:	5772                	c.lwsp	a4,60(sp)
   130d4:	d90d                	c.beqz	a0,13006 <_vfprintf_r+0x1e5a>
   130d6:	55fa                	c.lwsp	a1,188(sp)
   130d8:	bba5e9e3          	bltu	a1,s10,12c8a <_vfprintf_r+0x1ade>
   130dc:	416586b3          	sub	a3,a1,s6
   130e0:	04700793          	addi	a5,zero,71
   130e4:	cc36                	c.swsp	a3,24(sp)
   130e6:	5bba                	c.lwsp	s7,172(sp)
   130e8:	f2f707e3          	beq	a4,a5,13016 <_vfprintf_r+0x1e6a>
   130ec:	001cf793          	andi	a5,s9,1
   130f0:	0147e7b3          	or	a5,a5,s4
   130f4:	2b705663          	bge	zero,s7,133a0 <_vfprintf_r+0x21f4>
   130f8:	22079f63          	bne	a5,zero,13336 <_vfprintf_r+0x218a>
   130fc:	8dde                	c.mv	s11,s7
   130fe:	06600893          	addi	a7,zero,102
   13102:	400cfe13          	andi	t3,s9,1024
   13106:	180e1463          	bne	t3,zero,1328e <_vfprintf_r+0x20e2>
   1310a:	fffdc713          	xori	a4,s11,-1
   1310e:	877d                	c.srai	a4,0x1f
   13110:	00edfd33          	and	s10,s11,a4
   13114:	baa9                	c.j	12a6e <_vfprintf_r+0x18c2>
   13116:	c84e                	c.swsp	s3,16(sp)
   13118:	c7fd                	c.beqz	a5,13206 <_vfprintf_r+0x205a>
   1311a:	001a0d13          	addi	s10,s4,1 # 3ffe0001 <__BSS_END__+0x3ffc45a5>
   1311e:	8dd2                	c.mv	s11,s4
   13120:	d002                	c.swsp	zero,32(sp)
   13122:	4a01                	c.li	s4,0
   13124:	ce02                	c.swsp	zero,28(sp)
   13126:	4b81                	c.li	s7,0
   13128:	a10fe06f          	jal	zero,11338 <_vfprintf_r+0x18c>
   1312c:	18f9                	c.addi	a7,-2
   1312e:	fffb8793          	addi	a5,s7,-1
   13132:	0b110a23          	sb	a7,180(sp)
   13136:	d73e                	c.swsp	a5,172(sp)
   13138:	02d00713          	addi	a4,zero,45
   1313c:	4785                	c.li	a5,1
   1313e:	0ae10aa3          	sb	a4,181(sp)
   13142:	417787b3          	sub	a5,a5,s7
   13146:	4725                	c.li	a4,9
   13148:	def749e3          	blt	a4,a5,12f3a <_vfprintf_r+0x1d8e>
   1314c:	b659                	c.j	12cd2 <_vfprintf_r+0x1b26>
   1314e:	45a2                	c.lwsp	a1,8(sp)
   13150:	4512                	c.lwsp	a0,4(sp)
   13152:	01d0                	c.addi4spn	a2,sp,196
   13154:	d01a                	c.swsp	t1,32(sp)
   13156:	ce76                	c.swsp	t4,28(sp)
   13158:	2e95                	c.jal	134cc <__sprint_r>
   1315a:	c119                	c.beqz	a0,13160 <_vfprintf_r+0x1fb4>
   1315c:	c75fe06f          	jal	zero,11dd0 <_vfprintf_r+0xc24>
   13160:	5a3a                	c.lwsp	s4,172(sp)
   13162:	47e2                	c.lwsp	a5,24(sp)
   13164:	463e                	c.lwsp	a2,204(sp)
   13166:	5302                	c.lwsp	t1,32(sp)
   13168:	4ef2                	c.lwsp	t4,28(sp)
   1316a:	8456                	c.mv	s0,s5
   1316c:	41478a33          	sub	s4,a5,s4
   13170:	e4bfe06f          	jal	zero,11fba <_vfprintf_r+0xe0e>
   13174:	55c1                	c.li	a1,-16
   13176:	40f00a33          	sub	s4,zero,a5
   1317a:	2ab7d263          	bge	a5,a1,1341e <_vfprintf_r+0x2272>
   1317e:	67ed                	c.lui	a5,0x1b
   13180:	aac78993          	addi	s3,a5,-1364 # 1aaac <zeroes.0>
   13184:	4dc1                	c.li	s11,16
   13186:	481d                	c.li	a6,7
   13188:	8bf6                	c.mv	s7,t4
   1318a:	8c1a                	c.mv	s8,t1
   1318c:	a021                	c.j	13194 <_vfprintf_r+0x1fe8>
   1318e:	1a41                	c.addi	s4,-16
   13190:	094dd363          	bge	s11,s4,13216 <_vfprintf_r+0x206a>
   13194:	0641                	c.addi	a2,16
   13196:	0685                	c.addi	a3,1
   13198:	01342023          	sw	s3,0(s0)
   1319c:	01b42223          	sw	s11,4(s0)
   131a0:	c7b2                	c.swsp	a2,204(sp)
   131a2:	c5b6                	c.swsp	a3,200(sp)
   131a4:	0421                	c.addi	s0,8
   131a6:	fed854e3          	bge	a6,a3,1318e <_vfprintf_r+0x1fe2>
   131aa:	45a2                	c.lwsp	a1,8(sp)
   131ac:	4512                	c.lwsp	a0,4(sp)
   131ae:	01d0                	c.addi4spn	a2,sp,196
   131b0:	2e31                	c.jal	134cc <__sprint_r>
   131b2:	c119                	c.beqz	a0,131b8 <_vfprintf_r+0x200c>
   131b4:	c1dfe06f          	jal	zero,11dd0 <_vfprintf_r+0xc24>
   131b8:	463e                	c.lwsp	a2,204(sp)
   131ba:	46ae                	c.lwsp	a3,200(sp)
   131bc:	8456                	c.mv	s0,s5
   131be:	481d                	c.li	a6,7
   131c0:	b7f9                	c.j	1318e <_vfprintf_r+0x1fe2>
   131c2:	47e2                	c.lwsp	a5,24(sp)
   131c4:	5712                	c.lwsp	a4,36(sp)
   131c6:	06700893          	addi	a7,zero,103
   131ca:	00e78db3          	add	s11,a5,a4
   131ce:	f3704ae3          	blt	zero,s7,13102 <_vfprintf_r+0x1f56>
   131d2:	417d8833          	sub	a6,s11,s7
   131d6:	00180d93          	addi	s11,a6,1
   131da:	fffdc713          	xori	a4,s11,-1
   131de:	877d                	c.srai	a4,0x1f
   131e0:	00edfd33          	and	s10,s11,a4
   131e4:	b069                	c.j	12a6e <_vfprintf_r+0x18c2>
   131e6:	8866                	c.mv	a6,s9
   131e8:	fe7fe06f          	jal	zero,121ce <_vfprintf_r+0x1022>
   131ec:	8e66                	c.mv	t3,s9
   131ee:	84ffe06f          	jal	zero,11a3c <_vfprintf_r+0x890>
   131f2:	8e66                	c.mv	t3,s9
   131f4:	fedfe06f          	jal	zero,121e0 <_vfprintf_r+0x1034>
   131f8:	01450d33          	add	s10,a0,s4
   131fc:	04700713          	addi	a4,zero,71
   13200:	08010993          	addi	s3,sp,128
   13204:	b565                	c.j	130ac <_vfprintf_r+0x1f00>
   13206:	8dd2                	c.mv	s11,s4
   13208:	8d52                	c.mv	s10,s4
   1320a:	d002                	c.swsp	zero,32(sp)
   1320c:	4a01                	c.li	s4,0
   1320e:	ce02                	c.swsp	zero,28(sp)
   13210:	4b81                	c.li	s7,0
   13212:	926fe06f          	jal	zero,11338 <_vfprintf_r+0x18c>
   13216:	8ede                	c.mv	t4,s7
   13218:	8362                	c.mv	t1,s8
   1321a:	9652                	c.add	a2,s4
   1321c:	0685                	c.addi	a3,1
   1321e:	c7b2                	c.swsp	a2,204(sp)
   13220:	c5b6                	c.swsp	a3,200(sp)
   13222:	01342023          	sw	s3,0(s0)
   13226:	01442223          	sw	s4,4(s0)
   1322a:	479d                	c.li	a5,7
   1322c:	bad7d163          	bge	a5,a3,125ce <_vfprintf_r+0x1422>
   13230:	45a2                	c.lwsp	a1,8(sp)
   13232:	4512                	c.lwsp	a0,4(sp)
   13234:	01d0                	c.addi4spn	a2,sp,196
   13236:	d01a                	c.swsp	t1,32(sp)
   13238:	ce76                	c.swsp	t4,28(sp)
   1323a:	2c49                	c.jal	134cc <__sprint_r>
   1323c:	c119                	c.beqz	a0,13242 <_vfprintf_r+0x2096>
   1323e:	b93fe06f          	jal	zero,11dd0 <_vfprintf_r+0xc24>
   13242:	463e                	c.lwsp	a2,204(sp)
   13244:	46ae                	c.lwsp	a3,200(sp)
   13246:	5302                	c.lwsp	t1,32(sp)
   13248:	4ef2                	c.lwsp	t4,28(sp)
   1324a:	8456                	c.mv	s0,s5
   1324c:	b54fe06f          	jal	zero,115a0 <_vfprintf_r+0x3f4>
   13250:	000a0463          	beq	s4,zero,13258 <_vfprintf_r+0x20ac>
   13254:	ac2fe06f          	jal	zero,11516 <_vfprintf_r+0x36a>
   13258:	8a3e                	c.mv	s4,a5
   1325a:	abcfe06f          	jal	zero,11516 <_vfprintf_r+0x36a>
   1325e:	ca02                	c.swsp	zero,20(sp)
   13260:	4a19                	c.li	s4,6
   13262:	ab4fe06f          	jal	zero,11516 <_vfprintf_r+0x36a>
   13266:	00fcf7b3          	and	a5,s9,a5
   1326a:	a8078de3          	beq	a5,zero,12d04 <_vfprintf_r+0x1b58>
   1326e:	bc49                	c.j	12d00 <_vfprintf_r+0x1b54>
   13270:	6b69                	c.lui	s6,0x1a
   13272:	730b0b13          	addi	s6,s6,1840 # 1a730 <__clzsi2+0x50>
   13276:	cceff06f          	jal	zero,12744 <_vfprintf_r+0x1598>
   1327a:	6b69                	c.lui	s6,0x1a
   1327c:	738b0b13          	addi	s6,s6,1848 # 1a738 <__clzsi2+0x58>
   13280:	cc4ff06f          	jal	zero,12744 <_vfprintf_r+0x1598>
   13284:	49a2                	c.lwsp	s3,8(sp)
   13286:	b57fe06f          	jal	zero,11ddc <_vfprintf_r+0xc30>
   1328a:	06700893          	addi	a7,zero,103
   1328e:	56a2                	c.lwsp	a3,40(sp)
   13290:	0ff00713          	addi	a4,zero,255
   13294:	0006c783          	lbu	a5,0(a3)
   13298:	16e78863          	beq	a5,a4,13408 <_vfprintf_r+0x225c>
   1329c:	4581                	c.li	a1,0
   1329e:	4601                	c.li	a2,0
   132a0:	0177db63          	bge	a5,s7,132b6 <_vfprintf_r+0x210a>
   132a4:	40fb8bb3          	sub	s7,s7,a5
   132a8:	0016c783          	lbu	a5,1(a3)
   132ac:	c79d                	c.beqz	a5,132da <_vfprintf_r+0x212e>
   132ae:	0605                	c.addi	a2,1
   132b0:	0685                	c.addi	a3,1
   132b2:	fee797e3          	bne	a5,a4,132a0 <_vfprintf_r+0x20f4>
   132b6:	d436                	c.swsp	a3,40(sp)
   132b8:	ce32                	c.swsp	a2,28(sp)
   132ba:	d02e                	c.swsp	a1,32(sp)
   132bc:	4772                	c.lwsp	a4,28(sp)
   132be:	5782                	c.lwsp	a5,32(sp)
   132c0:	8ce2                	c.mv	s9,s8
   132c2:	97ba                	c.add	a5,a4
   132c4:	4716                	c.lwsp	a4,68(sp)
   132c6:	02e787b3          	mul	a5,a5,a4
   132ca:	9dbe                	c.add	s11,a5
   132cc:	fffdc713          	xori	a4,s11,-1
   132d0:	877d                	c.srai	a4,0x1f
   132d2:	00edfd33          	and	s10,s11,a4
   132d6:	f9eff06f          	jal	zero,12a74 <_vfprintf_r+0x18c8>
   132da:	0006c783          	lbu	a5,0(a3)
   132de:	0585                	c.addi	a1,1
   132e0:	bfc9                	c.j	132b2 <_vfprintf_r+0x2106>
   132e2:	6b69                	c.lui	s6,0x1a
   132e4:	738b0b13          	addi	s6,s6,1848 # 1a738 <__clzsi2+0x58>
   132e8:	b851                	c.j	12b7c <_vfprintf_r+0x19d0>
   132ea:	08010993          	addi	s3,sp,128
   132ee:	85ce                	c.mv	a1,s3
   132f0:	856e                	c.mv	a0,s11
   132f2:	caba                	c.swsp	a4,84(sp)
   132f4:	c8c6                	c.swsp	a7,80(sp)
   132f6:	c69a                	c.swsp	t1,76(sp)
   132f8:	c4f6                	c.swsp	t4,72(sp)
   132fa:	c91e                	c.swsp	t2,144(sp)
   132fc:	c09e                	c.swsp	t2,64(sp)
   132fe:	cb16                	c.swsp	t0,148(sp)
   13300:	de16                	c.swsp	t0,60(sp)
   13302:	cd7e                	c.swsp	t6,152(sp)
   13304:	d07e                	c.swsp	t6,32(sp)
   13306:	cf7a                	c.swsp	t5,156(sp)
   13308:	ce7a                	c.swsp	t5,28(sp)
   1330a:	c102                	c.swsp	zero,128(sp)
   1330c:	c302                	c.swsp	zero,132(sp)
   1330e:	c502                	c.swsp	zero,136(sp)
   13310:	c702                	c.swsp	zero,140(sp)
   13312:	060050ef          	jal	ra,18372 <__eqtf2>
   13316:	4f72                	c.lwsp	t5,28(sp)
   13318:	5f82                	c.lwsp	t6,32(sp)
   1331a:	52f2                	c.lwsp	t0,60(sp)
   1331c:	4386                	c.lwsp	t2,64(sp)
   1331e:	4ea6                	c.lwsp	t4,72(sp)
   13320:	4336                	c.lwsp	t1,76(sp)
   13322:	48c6                	c.lwsp	a7,80(sp)
   13324:	4756                	c.lwsp	a4,84(sp)
   13326:	e925                	c.bnez	a0,13396 <_vfprintf_r+0x21ea>
   13328:	5bba                	c.lwsp	s7,172(sp)
   1332a:	017d07b3          	add	a5,s10,s7
   1332e:	416787b3          	sub	a5,a5,s6
   13332:	cc3e                	c.swsp	a5,24(sp)
   13334:	bb65                	c.j	130ec <_vfprintf_r+0x1f40>
   13336:	5792                	c.lwsp	a5,36(sp)
   13338:	06600893          	addi	a7,zero,102
   1333c:	00fa0833          	add	a6,s4,a5
   13340:	01780db3          	add	s11,a6,s7
   13344:	bb7d                	c.j	13102 <_vfprintf_r+0x1f56>
   13346:	416587b3          	sub	a5,a1,s6
   1334a:	cc3e                	c.swsp	a5,24(sp)
   1334c:	5bba                	c.lwsp	s7,172(sp)
   1334e:	b2a5                	c.j	12cb6 <_vfprintf_r+0x1b0a>
   13350:	8d5a                	c.mv	s10,s6
   13352:	4ef2                	c.lwsp	t4,28(sp)
   13354:	5302                	c.lwsp	t1,32(sp)
   13356:	5452                	c.lwsp	s0,52(sp)
   13358:	58f2                	c.lwsp	a7,60(sp)
   1335a:	4c86                	c.lwsp	s9,64(sp)
   1335c:	4b26                	c.lwsp	s6,72(sp)
   1335e:	ba0a42e3          	blt	s4,zero,12f02 <_vfprintf_r+0x1d56>
   13362:	001a0693          	addi	a3,s4,1
   13366:	96ea                	c.add	a3,s10
   13368:	876a                	c.mv	a4,s10
   1336a:	03000613          	addi	a2,zero,48
   1336e:	0705                	c.addi	a4,1
   13370:	fec70fa3          	sb	a2,-1(a4)
   13374:	fee69de3          	bne	a3,a4,1336e <_vfprintf_r+0x21c2>
   13378:	014d0fb3          	add	t6,s10,s4
   1337c:	001f8d13          	addi	s10,t6,1
   13380:	b649                	c.j	12f02 <_vfprintf_r+0x1d56>
   13382:	67e9                	c.lui	a5,0x1a
   13384:	74078793          	addi	a5,a5,1856 # 1a740 <__clzsi2+0x60>
   13388:	cc3e                	c.swsp	a5,24(sp)
   1338a:	bc39                	c.j	12da8 <_vfprintf_r+0x1bfc>
   1338c:	67ed                	c.lui	a5,0x1b
   1338e:	aac78993          	addi	s3,a5,-1364 # 1aaac <zeroes.0>
   13392:	f03fe06f          	jal	zero,12294 <_vfprintf_r+0x10e8>
   13396:	47e2                	c.lwsp	a5,24(sp)
   13398:	4685                	c.li	a3,1
   1339a:	8e9d                	c.sub	a3,a5
   1339c:	d736                	c.swsp	a3,172(sp)
   1339e:	b331                	c.j	130aa <_vfprintf_r+0x1efe>
   133a0:	e799                	c.bnez	a5,133ae <_vfprintf_r+0x2202>
   133a2:	4d05                	c.li	s10,1
   133a4:	8dea                	c.mv	s11,s10
   133a6:	06600893          	addi	a7,zero,102
   133aa:	ec4ff06f          	jal	zero,12a6e <_vfprintf_r+0x18c2>
   133ae:	5792                	c.lwsp	a5,36(sp)
   133b0:	06600893          	addi	a7,zero,102
   133b4:	00178813          	addi	a6,a5,1
   133b8:	01480db3          	add	s11,a6,s4
   133bc:	fffdc713          	xori	a4,s11,-1
   133c0:	877d                	c.srai	a4,0x1f
   133c2:	00edfd33          	and	s10,s11,a4
   133c6:	ea8ff06f          	jal	zero,12a6e <_vfprintf_r+0x18c2>
   133ca:	4789                	c.li	a5,2
   133cc:	da3e                	c.swsp	a5,52(sp)
   133ce:	b215                	c.j	12cf2 <_vfprintf_r+0x1b46>
   133d0:	47c2                	c.lwsp	a5,16(sp)
   133d2:	0007aa03          	lw	s4,0(a5)
   133d6:	0791                	c.addi	a5,4
   133d8:	000a5363          	bge	s4,zero,133de <_vfprintf_r+0x2232>
   133dc:	5a7d                	c.li	s4,-1
   133de:	0019c883          	lbu	a7,1(s3)
   133e2:	c83e                	c.swsp	a5,16(sp)
   133e4:	89b6                	c.mv	s3,a3
   133e6:	eedfd06f          	jal	zero,112d2 <_vfprintf_r+0x126>
   133ea:	4d05                	c.li	s10,1
   133ec:	c83e                	c.swsp	a5,16(sp)
   133ee:	8dea                	c.mv	s11,s10
   133f0:	ca02                	c.swsp	zero,20(sp)
   133f2:	82bfe06f          	jal	zero,11c1c <_vfprintf_r+0xa70>
   133f6:	49a2                	c.lwsp	s3,8(sp)
   133f8:	00c9d783          	lhu	a5,12(s3)
   133fc:	0407e793          	ori	a5,a5,64
   13400:	00f99623          	sh	a5,12(s3)
   13404:	9d9fe06f          	jal	zero,11ddc <_vfprintf_r+0xc30>
   13408:	d002                	c.swsp	zero,32(sp)
   1340a:	ce02                	c.swsp	zero,28(sp)
   1340c:	bd45                	c.j	132bc <_vfprintf_r+0x2110>
   1340e:	4a01                	c.li	s4,0
   13410:	d002                	c.swsp	zero,32(sp)
   13412:	ce02                	c.swsp	zero,28(sp)
   13414:	ca02                	c.swsp	zero,20(sp)
   13416:	4d8d                	c.li	s11,3
   13418:	4d11                	c.li	s10,4
   1341a:	f1ffd06f          	jal	zero,11338 <_vfprintf_r+0x18c>
   1341e:	67ed                	c.lui	a5,0x1b
   13420:	aac78993          	addi	s3,a5,-1364 # 1aaac <zeroes.0>
   13424:	bbdd                	c.j	1321a <_vfprintf_r+0x206e>

00013426 <vfprintf>:
   13426:	872a                	c.mv	a4,a0
   13428:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   1342c:	87ae                	c.mv	a5,a1
   1342e:	86b2                	c.mv	a3,a2
   13430:	85ba                	c.mv	a1,a4
   13432:	863e                	c.mv	a2,a5
   13434:	d79fd06f          	jal	zero,111ac <_vfprintf_r>

00013438 <__sbprintf>:
   13438:	00c5d783          	lhu	a5,12(a1)
   1343c:	0645ae83          	lw	t4,100(a1)
   13440:	00e5de03          	lhu	t3,14(a1)
   13444:	01c5a303          	lw	t1,28(a1)
   13448:	0245a883          	lw	a7,36(a1)
   1344c:	b8010113          	addi	sp,sp,-1152
   13450:	07010813          	addi	a6,sp,112
   13454:	40000713          	addi	a4,zero,1024
   13458:	46812c23          	sw	s0,1144(sp)
   1345c:	9bf5                	c.andi	a5,-3
   1345e:	842e                	c.mv	s0,a1
   13460:	002c                	c.addi4spn	a1,sp,8
   13462:	46912a23          	sw	s1,1140(sp)
   13466:	47212823          	sw	s2,1136(sp)
   1346a:	46112e23          	sw	ra,1148(sp)
   1346e:	d002                	c.swsp	zero,32(sp)
   13470:	00f11a23          	sh	a5,20(sp)
   13474:	d6f6                	c.swsp	t4,108(sp)
   13476:	01c11b23          	sh	t3,22(sp)
   1347a:	d21a                	c.swsp	t1,36(sp)
   1347c:	d646                	c.swsp	a7,44(sp)
   1347e:	892a                	c.mv	s2,a0
   13480:	c442                	c.swsp	a6,8(sp)
   13482:	cc42                	c.swsp	a6,24(sp)
   13484:	c83a                	c.swsp	a4,16(sp)
   13486:	ce3a                	c.swsp	a4,28(sp)
   13488:	d25fd0ef          	jal	ra,111ac <_vfprintf_r>
   1348c:	84aa                	c.mv	s1,a0
   1348e:	02055963          	bge	a0,zero,134c0 <__sbprintf+0x88>
   13492:	01415783          	lhu	a5,20(sp)
   13496:	0407f793          	andi	a5,a5,64
   1349a:	c799                	c.beqz	a5,134a8 <__sbprintf+0x70>
   1349c:	00c45783          	lhu	a5,12(s0)
   134a0:	0407e793          	ori	a5,a5,64
   134a4:	00f41623          	sh	a5,12(s0)
   134a8:	47c12083          	lw	ra,1148(sp)
   134ac:	47812403          	lw	s0,1144(sp)
   134b0:	47012903          	lw	s2,1136(sp)
   134b4:	8526                	c.mv	a0,s1
   134b6:	47412483          	lw	s1,1140(sp)
   134ba:	48010113          	addi	sp,sp,1152
   134be:	8082                	c.jr	ra
   134c0:	002c                	c.addi4spn	a1,sp,8
   134c2:	854a                	c.mv	a0,s2
   134c4:	2cad                	c.jal	1373e <_fflush_r>
   134c6:	d571                	c.beqz	a0,13492 <__sbprintf+0x5a>
   134c8:	54fd                	c.li	s1,-1
   134ca:	b7e1                	c.j	13492 <__sbprintf+0x5a>

000134cc <__sprint_r>:
   134cc:	461c                	c.lw	a5,8(a2)
   134ce:	1141                	c.addi	sp,-16
   134d0:	c422                	c.swsp	s0,8(sp)
   134d2:	c606                	c.swsp	ra,12(sp)
   134d4:	8432                	c.mv	s0,a2
   134d6:	eb81                	c.bnez	a5,134e6 <__sprint_r+0x1a>
   134d8:	40b2                	c.lwsp	ra,12(sp)
   134da:	00042223          	sw	zero,4(s0)
   134de:	4422                	c.lwsp	s0,8(sp)
   134e0:	4501                	c.li	a0,0
   134e2:	0141                	c.addi	sp,16
   134e4:	8082                	c.jr	ra
   134e6:	2cf9                	c.jal	137c4 <__sfvwrite_r>
   134e8:	40b2                	c.lwsp	ra,12(sp)
   134ea:	00042423          	sw	zero,8(s0)
   134ee:	00042223          	sw	zero,4(s0)
   134f2:	4422                	c.lwsp	s0,8(sp)
   134f4:	0141                	c.addi	sp,16
   134f6:	8082                	c.jr	ra

000134f8 <_fclose_r>:
   134f8:	1141                	c.addi	sp,-16
   134fa:	c606                	c.swsp	ra,12(sp)
   134fc:	c04a                	c.swsp	s2,0(sp)
   134fe:	cd89                	c.beqz	a1,13518 <_fclose_r+0x20>
   13500:	c422                	c.swsp	s0,8(sp)
   13502:	c226                	c.swsp	s1,4(sp)
   13504:	842e                	c.mv	s0,a1
   13506:	84aa                	c.mv	s1,a0
   13508:	c119                	c.beqz	a0,1350e <_fclose_r+0x16>
   1350a:	595c                	c.lw	a5,52(a0)
   1350c:	c7d1                	c.beqz	a5,13598 <_fclose_r+0xa0>
   1350e:	00c41783          	lh	a5,12(s0)
   13512:	eb89                	c.bnez	a5,13524 <_fclose_r+0x2c>
   13514:	4422                	c.lwsp	s0,8(sp)
   13516:	4492                	c.lwsp	s1,4(sp)
   13518:	40b2                	c.lwsp	ra,12(sp)
   1351a:	4901                	c.li	s2,0
   1351c:	854a                	c.mv	a0,s2
   1351e:	4902                	c.lwsp	s2,0(sp)
   13520:	0141                	c.addi	sp,16
   13522:	8082                	c.jr	ra
   13524:	85a2                	c.mv	a1,s0
   13526:	8526                	c.mv	a0,s1
   13528:	28bd                	c.jal	135a6 <__sflush_r>
   1352a:	545c                	c.lw	a5,44(s0)
   1352c:	892a                	c.mv	s2,a0
   1352e:	c791                	c.beqz	a5,1353a <_fclose_r+0x42>
   13530:	4c4c                	c.lw	a1,28(s0)
   13532:	8526                	c.mv	a0,s1
   13534:	9782                	c.jalr	a5
   13536:	04054663          	blt	a0,zero,13582 <_fclose_r+0x8a>
   1353a:	00c45783          	lhu	a5,12(s0)
   1353e:	0807f793          	andi	a5,a5,128
   13542:	e7b1                	c.bnez	a5,1358e <_fclose_r+0x96>
   13544:	580c                	c.lw	a1,48(s0)
   13546:	c991                	c.beqz	a1,1355a <_fclose_r+0x62>
   13548:	04040793          	addi	a5,s0,64
   1354c:	00f58563          	beq	a1,a5,13556 <_fclose_r+0x5e>
   13550:	8526                	c.mv	a0,s1
   13552:	c6efd0ef          	jal	ra,109c0 <_free_r>
   13556:	02042823          	sw	zero,48(s0)
   1355a:	406c                	c.lw	a1,68(s0)
   1355c:	c591                	c.beqz	a1,13568 <_fclose_r+0x70>
   1355e:	8526                	c.mv	a0,s1
   13560:	c60fd0ef          	jal	ra,109c0 <_free_r>
   13564:	04042223          	sw	zero,68(s0)
   13568:	e87fc0ef          	jal	ra,103ee <__sfp_lock_acquire>
   1356c:	00041623          	sh	zero,12(s0)
   13570:	e81fc0ef          	jal	ra,103f0 <__sfp_lock_release>
   13574:	40b2                	c.lwsp	ra,12(sp)
   13576:	4422                	c.lwsp	s0,8(sp)
   13578:	4492                	c.lwsp	s1,4(sp)
   1357a:	854a                	c.mv	a0,s2
   1357c:	4902                	c.lwsp	s2,0(sp)
   1357e:	0141                	c.addi	sp,16
   13580:	8082                	c.jr	ra
   13582:	00c45783          	lhu	a5,12(s0)
   13586:	597d                	c.li	s2,-1
   13588:	0807f793          	andi	a5,a5,128
   1358c:	dfc5                	c.beqz	a5,13544 <_fclose_r+0x4c>
   1358e:	480c                	c.lw	a1,16(s0)
   13590:	8526                	c.mv	a0,s1
   13592:	c2efd0ef          	jal	ra,109c0 <_free_r>
   13596:	b77d                	c.j	13544 <_fclose_r+0x4c>
   13598:	e41fc0ef          	jal	ra,103d8 <__sinit>
   1359c:	bf8d                	c.j	1350e <_fclose_r+0x16>

0001359e <fclose>:
   1359e:	85aa                	c.mv	a1,a0
   135a0:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   135a4:	bf91                	c.j	134f8 <_fclose_r>

000135a6 <__sflush_r>:
   135a6:	00c59703          	lh	a4,12(a1)
   135aa:	1101                	c.addi	sp,-32
   135ac:	cc22                	c.swsp	s0,24(sp)
   135ae:	c64e                	c.swsp	s3,12(sp)
   135b0:	ce06                	c.swsp	ra,28(sp)
   135b2:	00877793          	andi	a5,a4,8
   135b6:	842e                	c.mv	s0,a1
   135b8:	89aa                	c.mv	s3,a0
   135ba:	e7e1                	c.bnez	a5,13682 <__sflush_r+0xdc>
   135bc:	6785                	c.lui	a5,0x1
   135be:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf8b4>
   135c2:	41d4                	c.lw	a3,4(a1)
   135c4:	8fd9                	c.or	a5,a4
   135c6:	00f59623          	sh	a5,12(a1)
   135ca:	10d05963          	bge	zero,a3,136dc <__sflush_r+0x136>
   135ce:	02842803          	lw	a6,40(s0)
   135d2:	0a080263          	beq	a6,zero,13676 <__sflush_r+0xd0>
   135d6:	ca26                	c.swsp	s1,20(sp)
   135d8:	01371693          	slli	a3,a4,0x13
   135dc:	0009a483          	lw	s1,0(s3)
   135e0:	0009a023          	sw	zero,0(s3)
   135e4:	1006c363          	blt	a3,zero,136ea <__sflush_r+0x144>
   135e8:	4c4c                	c.lw	a1,28(s0)
   135ea:	4601                	c.li	a2,0
   135ec:	4685                	c.li	a3,1
   135ee:	854e                	c.mv	a0,s3
   135f0:	9802                	c.jalr	a6
   135f2:	57fd                	c.li	a5,-1
   135f4:	862a                	c.mv	a2,a0
   135f6:	12f50163          	beq	a0,a5,13718 <__sflush_r+0x172>
   135fa:	00c41783          	lh	a5,12(s0)
   135fe:	02842803          	lw	a6,40(s0)
   13602:	8b91                	c.andi	a5,4
   13604:	c799                	c.beqz	a5,13612 <__sflush_r+0x6c>
   13606:	4058                	c.lw	a4,4(s0)
   13608:	581c                	c.lw	a5,48(s0)
   1360a:	8e19                	c.sub	a2,a4
   1360c:	c399                	c.beqz	a5,13612 <__sflush_r+0x6c>
   1360e:	5c5c                	c.lw	a5,60(s0)
   13610:	8e1d                	c.sub	a2,a5
   13612:	4c4c                	c.lw	a1,28(s0)
   13614:	4681                	c.li	a3,0
   13616:	854e                	c.mv	a0,s3
   13618:	9802                	c.jalr	a6
   1361a:	577d                	c.li	a4,-1
   1361c:	00c41783          	lh	a5,12(s0)
   13620:	0ce51763          	bne	a0,a4,136ee <__sflush_r+0x148>
   13624:	0009a683          	lw	a3,0(s3)
   13628:	4775                	c.li	a4,29
   1362a:	10d76363          	bltu	a4,a3,13730 <__sflush_r+0x18a>
   1362e:	20400737          	lui	a4,0x20400
   13632:	0705                	c.addi	a4,1 # 20400001 <__BSS_END__+0x203e45a5>
   13634:	00d75733          	srl	a4,a4,a3
   13638:	8b05                	c.andi	a4,1
   1363a:	cb7d                	c.beqz	a4,13730 <__sflush_r+0x18a>
   1363c:	4810                	c.lw	a2,16(s0)
   1363e:	777d                	c.lui	a4,0xfffff
   13640:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffe3da3>
   13644:	8f7d                	c.and	a4,a5
   13646:	00e41623          	sh	a4,12(s0)
   1364a:	00042223          	sw	zero,4(s0)
   1364e:	c010                	c.sw	a2,0(s0)
   13650:	01379713          	slli	a4,a5,0x13
   13654:	00075363          	bge	a4,zero,1365a <__sflush_r+0xb4>
   13658:	cacd                	c.beqz	a3,1370a <__sflush_r+0x164>
   1365a:	580c                	c.lw	a1,48(s0)
   1365c:	0099a023          	sw	s1,0(s3)
   13660:	c9d5                	c.beqz	a1,13714 <__sflush_r+0x16e>
   13662:	04040793          	addi	a5,s0,64
   13666:	00f58563          	beq	a1,a5,13670 <__sflush_r+0xca>
   1366a:	854e                	c.mv	a0,s3
   1366c:	b54fd0ef          	jal	ra,109c0 <_free_r>
   13670:	44d2                	c.lwsp	s1,20(sp)
   13672:	02042823          	sw	zero,48(s0)
   13676:	40f2                	c.lwsp	ra,28(sp)
   13678:	4462                	c.lwsp	s0,24(sp)
   1367a:	49b2                	c.lwsp	s3,12(sp)
   1367c:	4501                	c.li	a0,0
   1367e:	6105                	c.addi16sp	sp,32
   13680:	8082                	c.jr	ra
   13682:	c84a                	c.swsp	s2,16(sp)
   13684:	0105a903          	lw	s2,16(a1)
   13688:	04090f63          	beq	s2,zero,136e6 <__sflush_r+0x140>
   1368c:	ca26                	c.swsp	s1,20(sp)
   1368e:	4184                	c.lw	s1,0(a1)
   13690:	8b0d                	c.andi	a4,3
   13692:	0125a023          	sw	s2,0(a1)
   13696:	412484b3          	sub	s1,s1,s2
   1369a:	4781                	c.li	a5,0
   1369c:	e311                	c.bnez	a4,136a0 <__sflush_r+0xfa>
   1369e:	49dc                	c.lw	a5,20(a1)
   136a0:	c41c                	c.sw	a5,8(s0)
   136a2:	00904663          	blt	zero,s1,136ae <__sflush_r+0x108>
   136a6:	a83d                	c.j	136e4 <__sflush_r+0x13e>
   136a8:	992a                	c.add	s2,a0
   136aa:	02905d63          	bge	zero,s1,136e4 <__sflush_r+0x13e>
   136ae:	505c                	c.lw	a5,36(s0)
   136b0:	4c4c                	c.lw	a1,28(s0)
   136b2:	86a6                	c.mv	a3,s1
   136b4:	864a                	c.mv	a2,s2
   136b6:	854e                	c.mv	a0,s3
   136b8:	9782                	c.jalr	a5
   136ba:	8c89                	c.sub	s1,a0
   136bc:	fea046e3          	blt	zero,a0,136a8 <__sflush_r+0x102>
   136c0:	00c41783          	lh	a5,12(s0)
   136c4:	4942                	c.lwsp	s2,16(sp)
   136c6:	0407e793          	ori	a5,a5,64
   136ca:	40f2                	c.lwsp	ra,28(sp)
   136cc:	00f41623          	sh	a5,12(s0)
   136d0:	4462                	c.lwsp	s0,24(sp)
   136d2:	44d2                	c.lwsp	s1,20(sp)
   136d4:	49b2                	c.lwsp	s3,12(sp)
   136d6:	557d                	c.li	a0,-1
   136d8:	6105                	c.addi16sp	sp,32
   136da:	8082                	c.jr	ra
   136dc:	5dd4                	c.lw	a3,60(a1)
   136de:	eed048e3          	blt	zero,a3,135ce <__sflush_r+0x28>
   136e2:	bf51                	c.j	13676 <__sflush_r+0xd0>
   136e4:	44d2                	c.lwsp	s1,20(sp)
   136e6:	4942                	c.lwsp	s2,16(sp)
   136e8:	b779                	c.j	13676 <__sflush_r+0xd0>
   136ea:	4830                	c.lw	a2,80(s0)
   136ec:	bf19                	c.j	13602 <__sflush_r+0x5c>
   136ee:	4814                	c.lw	a3,16(s0)
   136f0:	777d                	c.lui	a4,0xfffff
   136f2:	7ff70713          	addi	a4,a4,2047 # fffff7ff <__BSS_END__+0xfffe3da3>
   136f6:	8f7d                	c.and	a4,a5
   136f8:	00e41623          	sh	a4,12(s0)
   136fc:	00042223          	sw	zero,4(s0)
   13700:	c014                	c.sw	a3,0(s0)
   13702:	01379713          	slli	a4,a5,0x13
   13706:	f4075ae3          	bge	a4,zero,1365a <__sflush_r+0xb4>
   1370a:	580c                	c.lw	a1,48(s0)
   1370c:	c828                	c.sw	a0,80(s0)
   1370e:	0099a023          	sw	s1,0(s3)
   13712:	f9a1                	c.bnez	a1,13662 <__sflush_r+0xbc>
   13714:	44d2                	c.lwsp	s1,20(sp)
   13716:	b785                	c.j	13676 <__sflush_r+0xd0>
   13718:	0009a783          	lw	a5,0(s3)
   1371c:	ec078fe3          	beq	a5,zero,135fa <__sflush_r+0x54>
   13720:	4775                	c.li	a4,29
   13722:	00e78a63          	beq	a5,a4,13736 <__sflush_r+0x190>
   13726:	4759                	c.li	a4,22
   13728:	00e78763          	beq	a5,a4,13736 <__sflush_r+0x190>
   1372c:	00c41783          	lh	a5,12(s0)
   13730:	0407e793          	ori	a5,a5,64
   13734:	bf59                	c.j	136ca <__sflush_r+0x124>
   13736:	0099a023          	sw	s1,0(s3)
   1373a:	44d2                	c.lwsp	s1,20(sp)
   1373c:	bf2d                	c.j	13676 <__sflush_r+0xd0>

0001373e <_fflush_r>:
   1373e:	1101                	c.addi	sp,-32
   13740:	cc22                	c.swsp	s0,24(sp)
   13742:	ce06                	c.swsp	ra,28(sp)
   13744:	842a                	c.mv	s0,a0
   13746:	c119                	c.beqz	a0,1374c <_fflush_r+0xe>
   13748:	595c                	c.lw	a5,52(a0)
   1374a:	cf91                	c.beqz	a5,13766 <_fflush_r+0x28>
   1374c:	00c59783          	lh	a5,12(a1)
   13750:	e791                	c.bnez	a5,1375c <_fflush_r+0x1e>
   13752:	40f2                	c.lwsp	ra,28(sp)
   13754:	4462                	c.lwsp	s0,24(sp)
   13756:	4501                	c.li	a0,0
   13758:	6105                	c.addi16sp	sp,32
   1375a:	8082                	c.jr	ra
   1375c:	8522                	c.mv	a0,s0
   1375e:	4462                	c.lwsp	s0,24(sp)
   13760:	40f2                	c.lwsp	ra,28(sp)
   13762:	6105                	c.addi16sp	sp,32
   13764:	b589                	c.j	135a6 <__sflush_r>
   13766:	c62e                	c.swsp	a1,12(sp)
   13768:	c71fc0ef          	jal	ra,103d8 <__sinit>
   1376c:	45b2                	c.lwsp	a1,12(sp)
   1376e:	bff9                	c.j	1374c <_fflush_r+0xe>

00013770 <fflush>:
   13770:	cd05                	c.beqz	a0,137a8 <fflush+0x38>
   13772:	85aa                	c.mv	a1,a0
   13774:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   13778:	c119                	c.beqz	a0,1377e <fflush+0xe>
   1377a:	595c                	c.lw	a5,52(a0)
   1377c:	c799                	c.beqz	a5,1378a <fflush+0x1a>
   1377e:	00c59783          	lh	a5,12(a1)
   13782:	e399                	c.bnez	a5,13788 <fflush+0x18>
   13784:	4501                	c.li	a0,0
   13786:	8082                	c.jr	ra
   13788:	bd39                	c.j	135a6 <__sflush_r>
   1378a:	1101                	c.addi	sp,-32
   1378c:	c62e                	c.swsp	a1,12(sp)
   1378e:	c42a                	c.swsp	a0,8(sp)
   13790:	ce06                	c.swsp	ra,28(sp)
   13792:	c47fc0ef          	jal	ra,103d8 <__sinit>
   13796:	45b2                	c.lwsp	a1,12(sp)
   13798:	4522                	c.lwsp	a0,8(sp)
   1379a:	00c59783          	lh	a5,12(a1)
   1379e:	e385                	c.bnez	a5,137be <fflush+0x4e>
   137a0:	40f2                	c.lwsp	ra,28(sp)
   137a2:	4501                	c.li	a0,0
   137a4:	6105                	c.addi16sp	sp,32
   137a6:	8082                	c.jr	ra
   137a8:	666d                	c.lui	a2,0x1b
   137aa:	65cd                	c.lui	a1,0x13
   137ac:	656d                	c.lui	a0,0x1b
   137ae:	01060613          	addi	a2,a2,16 # 1b010 <__sglue>
   137b2:	73e58593          	addi	a1,a1,1854 # 1373e <_fflush_r>
   137b6:	02050513          	addi	a0,a0,32 # 1b020 <_impure_data>
   137ba:	c59fc06f          	jal	zero,10412 <_fwalk_sglue>
   137be:	40f2                	c.lwsp	ra,28(sp)
   137c0:	6105                	c.addi16sp	sp,32
   137c2:	b3d5                	c.j	135a6 <__sflush_r>

000137c4 <__sfvwrite_r>:
   137c4:	461c                	c.lw	a5,8(a2)
   137c6:	18078a63          	beq	a5,zero,1395a <__sfvwrite_r+0x196>
   137ca:	00c59703          	lh	a4,12(a1)
   137ce:	7179                	c.addi16sp	sp,-48
   137d0:	d422                	c.swsp	s0,40(sp)
   137d2:	cc52                	c.swsp	s4,24(sp)
   137d4:	ca56                	c.swsp	s5,20(sp)
   137d6:	d606                	c.swsp	ra,44(sp)
   137d8:	00877793          	andi	a5,a4,8
   137dc:	8a32                	c.mv	s4,a2
   137de:	8aaa                	c.mv	s5,a0
   137e0:	842e                	c.mv	s0,a1
   137e2:	c7b5                	c.beqz	a5,1384e <__sfvwrite_r+0x8a>
   137e4:	499c                	c.lw	a5,16(a1)
   137e6:	c7a5                	c.beqz	a5,1384e <__sfvwrite_r+0x8a>
   137e8:	d226                	c.swsp	s1,36(sp)
   137ea:	d04a                	c.swsp	s2,32(sp)
   137ec:	ce4e                	c.swsp	s3,28(sp)
   137ee:	c85a                	c.swsp	s6,16(sp)
   137f0:	00277793          	andi	a5,a4,2
   137f4:	000a2483          	lw	s1,0(s4)
   137f8:	cbbd                	c.beqz	a5,1386e <__sfvwrite_r+0xaa>
   137fa:	80000b37          	lui	s6,0x80000
   137fe:	c00b0b13          	addi	s6,s6,-1024 # 7ffffc00 <__BSS_END__+0x7ffe41a4>
   13802:	4981                	c.li	s3,0
   13804:	4901                	c.li	s2,0
   13806:	864e                	c.mv	a2,s3
   13808:	8556                	c.mv	a0,s5
   1380a:	14090263          	beq	s2,zero,1394e <__sfvwrite_r+0x18a>
   1380e:	800007b7          	lui	a5,0x80000
   13812:	86ca                	c.mv	a3,s2
   13814:	012b7463          	bgeu	s6,s2,1381c <__sfvwrite_r+0x58>
   13818:	c0078693          	addi	a3,a5,-1024 # 7ffffc00 <__BSS_END__+0x7ffe41a4>
   1381c:	505c                	c.lw	a5,36(s0)
   1381e:	4c4c                	c.lw	a1,28(s0)
   13820:	9782                	c.jalr	a5
   13822:	2ca05563          	bge	zero,a0,13aec <__sfvwrite_r+0x328>
   13826:	008a2783          	lw	a5,8(s4)
   1382a:	99aa                	c.add	s3,a0
   1382c:	40a90933          	sub	s2,s2,a0
   13830:	8f89                	c.sub	a5,a0
   13832:	00fa2423          	sw	a5,8(s4)
   13836:	fbe1                	c.bnez	a5,13806 <__sfvwrite_r+0x42>
   13838:	5492                	c.lwsp	s1,36(sp)
   1383a:	5902                	c.lwsp	s2,32(sp)
   1383c:	49f2                	c.lwsp	s3,28(sp)
   1383e:	4b42                	c.lwsp	s6,16(sp)
   13840:	4501                	c.li	a0,0
   13842:	50b2                	c.lwsp	ra,44(sp)
   13844:	5422                	c.lwsp	s0,40(sp)
   13846:	4a62                	c.lwsp	s4,24(sp)
   13848:	4ad2                	c.lwsp	s5,20(sp)
   1384a:	6145                	c.addi16sp	sp,48
   1384c:	8082                	c.jr	ra
   1384e:	85a2                	c.mv	a1,s0
   13850:	8556                	c.mv	a0,s5
   13852:	2c4d                	c.jal	13b04 <__swsetup_r>
   13854:	1a051f63          	bne	a0,zero,13a12 <__sfvwrite_r+0x24e>
   13858:	00c41703          	lh	a4,12(s0)
   1385c:	d226                	c.swsp	s1,36(sp)
   1385e:	d04a                	c.swsp	s2,32(sp)
   13860:	ce4e                	c.swsp	s3,28(sp)
   13862:	c85a                	c.swsp	s6,16(sp)
   13864:	00277793          	andi	a5,a4,2
   13868:	000a2483          	lw	s1,0(s4)
   1386c:	f7d9                	c.bnez	a5,137fa <__sfvwrite_r+0x36>
   1386e:	c65e                	c.swsp	s7,12(sp)
   13870:	c462                	c.swsp	s8,8(sp)
   13872:	00177793          	andi	a5,a4,1
   13876:	e7e5                	c.bnez	a5,1395e <__sfvwrite_r+0x19a>
   13878:	80000bb7          	lui	s7,0x80000
   1387c:	c266                	c.swsp	s9,4(sp)
   1387e:	1bfd                	c.addi	s7,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   13880:	4b01                	c.li	s6,0
   13882:	4901                	c.li	s2,0
   13884:	0a090f63          	beq	s2,zero,13942 <__sfvwrite_r+0x17e>
   13888:	20077793          	andi	a5,a4,512
   1388c:	4008                	c.lw	a0,0(s0)
   1388e:	00842c03          	lw	s8,8(s0)
   13892:	18078263          	beq	a5,zero,13a16 <__sfvwrite_r+0x252>
   13896:	8ce2                	c.mv	s9,s8
   13898:	1f896c63          	bltu	s2,s8,13a90 <__sfvwrite_r+0x2cc>
   1389c:	48077793          	andi	a5,a4,1152
   138a0:	cba5                	c.beqz	a5,13910 <__sfvwrite_r+0x14c>
   138a2:	4854                	c.lw	a3,20(s0)
   138a4:	480c                	c.lw	a1,16(s0)
   138a6:	00169793          	slli	a5,a3,0x1
   138aa:	97b6                	c.add	a5,a3
   138ac:	01f7d993          	srli	s3,a5,0x1f
   138b0:	40b50c33          	sub	s8,a0,a1
   138b4:	99be                	c.add	s3,a5
   138b6:	001c0793          	addi	a5,s8,1
   138ba:	4019d993          	srai	s3,s3,0x1
   138be:	97ca                	c.add	a5,s2
   138c0:	864e                	c.mv	a2,s3
   138c2:	00f9f463          	bgeu	s3,a5,138ca <__sfvwrite_r+0x106>
   138c6:	89be                	c.mv	s3,a5
   138c8:	863e                	c.mv	a2,a5
   138ca:	40077713          	andi	a4,a4,1024
   138ce:	1e070663          	beq	a4,zero,13aba <__sfvwrite_r+0x2f6>
   138d2:	85b2                	c.mv	a1,a2
   138d4:	8556                	c.mv	a0,s5
   138d6:	b06fd0ef          	jal	ra,10bdc <_malloc_r>
   138da:	8caa                	c.mv	s9,a0
   138dc:	20050b63          	beq	a0,zero,13af2 <__sfvwrite_r+0x32e>
   138e0:	480c                	c.lw	a1,16(s0)
   138e2:	8662                	c.mv	a2,s8
   138e4:	2345                	c.jal	13e84 <memcpy>
   138e6:	00c45783          	lhu	a5,12(s0)
   138ea:	b7f7f793          	andi	a5,a5,-1153
   138ee:	0807e793          	ori	a5,a5,128
   138f2:	00f41623          	sh	a5,12(s0)
   138f6:	018c8533          	add	a0,s9,s8
   138fa:	41898c33          	sub	s8,s3,s8
   138fe:	01942823          	sw	s9,16(s0)
   13902:	01842423          	sw	s8,8(s0)
   13906:	c008                	c.sw	a0,0(s0)
   13908:	01342a23          	sw	s3,20(s0)
   1390c:	8c4a                	c.mv	s8,s2
   1390e:	8cca                	c.mv	s9,s2
   13910:	85da                	c.mv	a1,s6
   13912:	8666                	c.mv	a2,s9
   13914:	2951                	c.jal	13da8 <memmove>
   13916:	401c                	c.lw	a5,0(s0)
   13918:	4418                	c.lw	a4,8(s0)
   1391a:	89ca                	c.mv	s3,s2
   1391c:	97e6                	c.add	a5,s9
   1391e:	c01c                	c.sw	a5,0(s0)
   13920:	008a2783          	lw	a5,8(s4)
   13924:	41870733          	sub	a4,a4,s8
   13928:	c418                	c.sw	a4,8(s0)
   1392a:	413787b3          	sub	a5,a5,s3
   1392e:	00fa2423          	sw	a5,8(s4)
   13932:	4901                	c.li	s2,0
   13934:	9b4e                	c.add	s6,s3
   13936:	12078063          	beq	a5,zero,13a56 <__sfvwrite_r+0x292>
   1393a:	00c41703          	lh	a4,12(s0)
   1393e:	f40915e3          	bne	s2,zero,13888 <__sfvwrite_r+0xc4>
   13942:	0004ab03          	lw	s6,0(s1)
   13946:	0044a903          	lw	s2,4(s1)
   1394a:	04a1                	c.addi	s1,8
   1394c:	bf25                	c.j	13884 <__sfvwrite_r+0xc0>
   1394e:	0004a983          	lw	s3,0(s1)
   13952:	0044a903          	lw	s2,4(s1)
   13956:	04a1                	c.addi	s1,8
   13958:	b57d                	c.j	13806 <__sfvwrite_r+0x42>
   1395a:	4501                	c.li	a0,0
   1395c:	8082                	c.jr	ra
   1395e:	4b01                	c.li	s6,0
   13960:	4501                	c.li	a0,0
   13962:	4c01                	c.li	s8,0
   13964:	4981                	c.li	s3,0
   13966:	04098e63          	beq	s3,zero,139c2 <__sfvwrite_r+0x1fe>
   1396a:	c525                	c.beqz	a0,139d2 <__sfvwrite_r+0x20e>
   1396c:	87da                	c.mv	a5,s6
   1396e:	8bce                	c.mv	s7,s3
   13970:	0137f363          	bgeu	a5,s3,13976 <__sfvwrite_r+0x1b2>
   13974:	8bbe                	c.mv	s7,a5
   13976:	4008                	c.lw	a0,0(s0)
   13978:	481c                	c.lw	a5,16(s0)
   1397a:	4854                	c.lw	a3,20(s0)
   1397c:	00a7f763          	bgeu	a5,a0,1398a <__sfvwrite_r+0x1c6>
   13980:	00842903          	lw	s2,8(s0)
   13984:	9936                	c.add	s2,a3
   13986:	07794063          	blt	s2,s7,139e6 <__sfvwrite_r+0x222>
   1398a:	10dbcc63          	blt	s7,a3,13aa2 <__sfvwrite_r+0x2de>
   1398e:	505c                	c.lw	a5,36(s0)
   13990:	4c4c                	c.lw	a1,28(s0)
   13992:	8662                	c.mv	a2,s8
   13994:	8556                	c.mv	a0,s5
   13996:	9782                	c.jalr	a5
   13998:	892a                	c.mv	s2,a0
   1399a:	06a05063          	bge	zero,a0,139fa <__sfvwrite_r+0x236>
   1399e:	412b0b33          	sub	s6,s6,s2
   139a2:	4505                	c.li	a0,1
   139a4:	0e0b0963          	beq	s6,zero,13a96 <__sfvwrite_r+0x2d2>
   139a8:	008a2783          	lw	a5,8(s4)
   139ac:	9c4a                	c.add	s8,s2
   139ae:	412989b3          	sub	s3,s3,s2
   139b2:	412787b3          	sub	a5,a5,s2
   139b6:	00fa2423          	sw	a5,8(s4)
   139ba:	f7d5                	c.bnez	a5,13966 <__sfvwrite_r+0x1a2>
   139bc:	4bb2                	c.lwsp	s7,12(sp)
   139be:	4c22                	c.lwsp	s8,8(sp)
   139c0:	bda5                	c.j	13838 <__sfvwrite_r+0x74>
   139c2:	0044a983          	lw	s3,4(s1)
   139c6:	87a6                	c.mv	a5,s1
   139c8:	04a1                	c.addi	s1,8
   139ca:	fe098ce3          	beq	s3,zero,139c2 <__sfvwrite_r+0x1fe>
   139ce:	0007ac03          	lw	s8,0(a5)
   139d2:	864e                	c.mv	a2,s3
   139d4:	45a9                	c.li	a1,10
   139d6:	8562                	c.mv	a0,s8
   139d8:	24a9                	c.jal	13c22 <memchr>
   139da:	10050563          	beq	a0,zero,13ae4 <__sfvwrite_r+0x320>
   139de:	0505                	c.addi	a0,1
   139e0:	41850b33          	sub	s6,a0,s8
   139e4:	b761                	c.j	1396c <__sfvwrite_r+0x1a8>
   139e6:	85e2                	c.mv	a1,s8
   139e8:	864a                	c.mv	a2,s2
   139ea:	2e7d                	c.jal	13da8 <memmove>
   139ec:	401c                	c.lw	a5,0(s0)
   139ee:	85a2                	c.mv	a1,s0
   139f0:	8556                	c.mv	a0,s5
   139f2:	97ca                	c.add	a5,s2
   139f4:	c01c                	c.sw	a5,0(s0)
   139f6:	33a1                	c.jal	1373e <_fflush_r>
   139f8:	d15d                	c.beqz	a0,1399e <__sfvwrite_r+0x1da>
   139fa:	00c41783          	lh	a5,12(s0)
   139fe:	4bb2                	c.lwsp	s7,12(sp)
   13a00:	4c22                	c.lwsp	s8,8(sp)
   13a02:	5492                	c.lwsp	s1,36(sp)
   13a04:	5902                	c.lwsp	s2,32(sp)
   13a06:	49f2                	c.lwsp	s3,28(sp)
   13a08:	4b42                	c.lwsp	s6,16(sp)
   13a0a:	0407e793          	ori	a5,a5,64
   13a0e:	00f41623          	sh	a5,12(s0)
   13a12:	557d                	c.li	a0,-1
   13a14:	b53d                	c.j	13842 <__sfvwrite_r+0x7e>
   13a16:	481c                	c.lw	a5,16(s0)
   13a18:	04a7e363          	bltu	a5,a0,13a5e <__sfvwrite_r+0x29a>
   13a1c:	485c                	c.lw	a5,20(s0)
   13a1e:	04f96063          	bltu	s2,a5,13a5e <__sfvwrite_r+0x29a>
   13a22:	86ca                	c.mv	a3,s2
   13a24:	012bf363          	bgeu	s7,s2,13a2a <__sfvwrite_r+0x266>
   13a28:	86de                	c.mv	a3,s7
   13a2a:	02f6e7b3          	rem	a5,a3,a5
   13a2e:	5058                	c.lw	a4,36(s0)
   13a30:	4c4c                	c.lw	a1,28(s0)
   13a32:	865a                	c.mv	a2,s6
   13a34:	8556                	c.mv	a0,s5
   13a36:	8e9d                	c.sub	a3,a5
   13a38:	9702                	c.jalr	a4
   13a3a:	89aa                	c.mv	s3,a0
   13a3c:	04a05463          	bge	zero,a0,13a84 <__sfvwrite_r+0x2c0>
   13a40:	008a2783          	lw	a5,8(s4)
   13a44:	41390933          	sub	s2,s2,s3
   13a48:	9b4e                	c.add	s6,s3
   13a4a:	413787b3          	sub	a5,a5,s3
   13a4e:	00fa2423          	sw	a5,8(s4)
   13a52:	ee0794e3          	bne	a5,zero,1393a <__sfvwrite_r+0x176>
   13a56:	4bb2                	c.lwsp	s7,12(sp)
   13a58:	4c22                	c.lwsp	s8,8(sp)
   13a5a:	4c92                	c.lwsp	s9,4(sp)
   13a5c:	bbf1                	c.j	13838 <__sfvwrite_r+0x74>
   13a5e:	89e2                	c.mv	s3,s8
   13a60:	01897363          	bgeu	s2,s8,13a66 <__sfvwrite_r+0x2a2>
   13a64:	89ca                	c.mv	s3,s2
   13a66:	864e                	c.mv	a2,s3
   13a68:	85da                	c.mv	a1,s6
   13a6a:	2e3d                	c.jal	13da8 <memmove>
   13a6c:	4018                	c.lw	a4,0(s0)
   13a6e:	441c                	c.lw	a5,8(s0)
   13a70:	974e                	c.add	a4,s3
   13a72:	413787b3          	sub	a5,a5,s3
   13a76:	c018                	c.sw	a4,0(s0)
   13a78:	c41c                	c.sw	a5,8(s0)
   13a7a:	f3f9                	c.bnez	a5,13a40 <__sfvwrite_r+0x27c>
   13a7c:	85a2                	c.mv	a1,s0
   13a7e:	8556                	c.mv	a0,s5
   13a80:	397d                	c.jal	1373e <_fflush_r>
   13a82:	dd5d                	c.beqz	a0,13a40 <__sfvwrite_r+0x27c>
   13a84:	00c41783          	lh	a5,12(s0)
   13a88:	4bb2                	c.lwsp	s7,12(sp)
   13a8a:	4c22                	c.lwsp	s8,8(sp)
   13a8c:	4c92                	c.lwsp	s9,4(sp)
   13a8e:	bf95                	c.j	13a02 <__sfvwrite_r+0x23e>
   13a90:	8c4a                	c.mv	s8,s2
   13a92:	8cca                	c.mv	s9,s2
   13a94:	bdb5                	c.j	13910 <__sfvwrite_r+0x14c>
   13a96:	85a2                	c.mv	a1,s0
   13a98:	8556                	c.mv	a0,s5
   13a9a:	3155                	c.jal	1373e <_fflush_r>
   13a9c:	f00506e3          	beq	a0,zero,139a8 <__sfvwrite_r+0x1e4>
   13aa0:	bfa9                	c.j	139fa <__sfvwrite_r+0x236>
   13aa2:	865e                	c.mv	a2,s7
   13aa4:	85e2                	c.mv	a1,s8
   13aa6:	2609                	c.jal	13da8 <memmove>
   13aa8:	4418                	c.lw	a4,8(s0)
   13aaa:	401c                	c.lw	a5,0(s0)
   13aac:	895e                	c.mv	s2,s7
   13aae:	41770733          	sub	a4,a4,s7
   13ab2:	97de                	c.add	a5,s7
   13ab4:	c418                	c.sw	a4,8(s0)
   13ab6:	c01c                	c.sw	a5,0(s0)
   13ab8:	b5dd                	c.j	1399e <__sfvwrite_r+0x1da>
   13aba:	8556                	c.mv	a0,s5
   13abc:	171020ef          	jal	ra,1642c <_realloc_r>
   13ac0:	8caa                	c.mv	s9,a0
   13ac2:	e2051ae3          	bne	a0,zero,138f6 <__sfvwrite_r+0x132>
   13ac6:	480c                	c.lw	a1,16(s0)
   13ac8:	8556                	c.mv	a0,s5
   13aca:	ef7fc0ef          	jal	ra,109c0 <_free_r>
   13ace:	00c41783          	lh	a5,12(s0)
   13ad2:	4731                	c.li	a4,12
   13ad4:	4bb2                	c.lwsp	s7,12(sp)
   13ad6:	4c22                	c.lwsp	s8,8(sp)
   13ad8:	4c92                	c.lwsp	s9,4(sp)
   13ada:	00eaa023          	sw	a4,0(s5)
   13ade:	f7f7f793          	andi	a5,a5,-129
   13ae2:	b705                	c.j	13a02 <__sfvwrite_r+0x23e>
   13ae4:	00198793          	addi	a5,s3,1
   13ae8:	8b3e                	c.mv	s6,a5
   13aea:	b551                	c.j	1396e <__sfvwrite_r+0x1aa>
   13aec:	00c41783          	lh	a5,12(s0)
   13af0:	bf09                	c.j	13a02 <__sfvwrite_r+0x23e>
   13af2:	47b1                	c.li	a5,12
   13af4:	00faa023          	sw	a5,0(s5)
   13af8:	4bb2                	c.lwsp	s7,12(sp)
   13afa:	00c41783          	lh	a5,12(s0)
   13afe:	4c22                	c.lwsp	s8,8(sp)
   13b00:	4c92                	c.lwsp	s9,4(sp)
   13b02:	b701                	c.j	13a02 <__sfvwrite_r+0x23e>

00013b04 <__swsetup_r>:
   13b04:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   13b08:	1141                	c.addi	sp,-16
   13b0a:	c422                	c.swsp	s0,8(sp)
   13b0c:	c226                	c.swsp	s1,4(sp)
   13b0e:	c606                	c.swsp	ra,12(sp)
   13b10:	84aa                	c.mv	s1,a0
   13b12:	842e                	c.mv	s0,a1
   13b14:	c399                	c.beqz	a5,13b1a <__swsetup_r+0x16>
   13b16:	5bd8                	c.lw	a4,52(a5)
   13b18:	cb69                	c.beqz	a4,13bea <__swsetup_r+0xe6>
   13b1a:	00c41783          	lh	a5,12(s0)
   13b1e:	0087f713          	andi	a4,a5,8
   13b22:	c315                	c.beqz	a4,13b46 <__swsetup_r+0x42>
   13b24:	4818                	c.lw	a4,16(s0)
   13b26:	cf05                	c.beqz	a4,13b5e <__swsetup_r+0x5a>
   13b28:	0017f713          	andi	a4,a5,1
   13b2c:	c32d                	c.beqz	a4,13b8e <__swsetup_r+0x8a>
   13b2e:	485c                	c.lw	a5,20(s0)
   13b30:	00042423          	sw	zero,8(s0)
   13b34:	40f007b3          	sub	a5,zero,a5
   13b38:	cc1c                	c.sw	a5,24(s0)
   13b3a:	4501                	c.li	a0,0
   13b3c:	40b2                	c.lwsp	ra,12(sp)
   13b3e:	4422                	c.lwsp	s0,8(sp)
   13b40:	4492                	c.lwsp	s1,4(sp)
   13b42:	0141                	c.addi	sp,16
   13b44:	8082                	c.jr	ra
   13b46:	0107f713          	andi	a4,a5,16
   13b4a:	c761                	c.beqz	a4,13c12 <__swsetup_r+0x10e>
   13b4c:	0047f713          	andi	a4,a5,4
   13b50:	e721                	c.bnez	a4,13b98 <__swsetup_r+0x94>
   13b52:	4818                	c.lw	a4,16(s0)
   13b54:	0087e793          	ori	a5,a5,8
   13b58:	00f41623          	sh	a5,12(s0)
   13b5c:	f771                	c.bnez	a4,13b28 <__swsetup_r+0x24>
   13b5e:	2807f693          	andi	a3,a5,640
   13b62:	20000613          	addi	a2,zero,512
   13b66:	06c69063          	bne	a3,a2,13bc6 <__swsetup_r+0xc2>
   13b6a:	0017f693          	andi	a3,a5,1
   13b6e:	c2d1                	c.beqz	a3,13bf2 <__swsetup_r+0xee>
   13b70:	4858                	c.lw	a4,20(s0)
   13b72:	00042423          	sw	zero,8(s0)
   13b76:	40e00733          	sub	a4,zero,a4
   13b7a:	cc18                	c.sw	a4,24(s0)
   13b7c:	0807f713          	andi	a4,a5,128
   13b80:	df4d                	c.beqz	a4,13b3a <__swsetup_r+0x36>
   13b82:	0407e793          	ori	a5,a5,64
   13b86:	00f41623          	sh	a5,12(s0)
   13b8a:	557d                	c.li	a0,-1
   13b8c:	bf45                	c.j	13b3c <__swsetup_r+0x38>
   13b8e:	8b89                	c.andi	a5,2
   13b90:	eb85                	c.bnez	a5,13bc0 <__swsetup_r+0xbc>
   13b92:	485c                	c.lw	a5,20(s0)
   13b94:	c41c                	c.sw	a5,8(s0)
   13b96:	b755                	c.j	13b3a <__swsetup_r+0x36>
   13b98:	580c                	c.lw	a1,48(s0)
   13b9a:	cd81                	c.beqz	a1,13bb2 <__swsetup_r+0xae>
   13b9c:	04040713          	addi	a4,s0,64
   13ba0:	00e58763          	beq	a1,a4,13bae <__swsetup_r+0xaa>
   13ba4:	8526                	c.mv	a0,s1
   13ba6:	e1bfc0ef          	jal	ra,109c0 <_free_r>
   13baa:	00c41783          	lh	a5,12(s0)
   13bae:	02042823          	sw	zero,48(s0)
   13bb2:	4818                	c.lw	a4,16(s0)
   13bb4:	fdb7f793          	andi	a5,a5,-37
   13bb8:	00042223          	sw	zero,4(s0)
   13bbc:	c018                	c.sw	a4,0(s0)
   13bbe:	bf59                	c.j	13b54 <__swsetup_r+0x50>
   13bc0:	00042423          	sw	zero,8(s0)
   13bc4:	bf9d                	c.j	13b3a <__swsetup_r+0x36>
   13bc6:	8526                	c.mv	a0,s1
   13bc8:	85a2                	c.mv	a1,s0
   13bca:	46f020ef          	jal	ra,16838 <__smakebuf_r>
   13bce:	00c41783          	lh	a5,12(s0)
   13bd2:	4818                	c.lw	a4,16(s0)
   13bd4:	0017f693          	andi	a3,a5,1
   13bd8:	c685                	c.beqz	a3,13c00 <__swsetup_r+0xfc>
   13bda:	4854                	c.lw	a3,20(s0)
   13bdc:	00042423          	sw	zero,8(s0)
   13be0:	40d006b3          	sub	a3,zero,a3
   13be4:	cc14                	c.sw	a3,24(s0)
   13be6:	db59                	c.beqz	a4,13b7c <__swsetup_r+0x78>
   13be8:	bf89                	c.j	13b3a <__swsetup_r+0x36>
   13bea:	853e                	c.mv	a0,a5
   13bec:	fecfc0ef          	jal	ra,103d8 <__sinit>
   13bf0:	b72d                	c.j	13b1a <__swsetup_r+0x16>
   13bf2:	0027f693          	andi	a3,a5,2
   13bf6:	ea99                	c.bnez	a3,13c0c <__swsetup_r+0x108>
   13bf8:	4850                	c.lw	a2,20(s0)
   13bfa:	c410                	c.sw	a2,8(s0)
   13bfc:	d341                	c.beqz	a4,13b7c <__swsetup_r+0x78>
   13bfe:	bf35                	c.j	13b3a <__swsetup_r+0x36>
   13c00:	0027f693          	andi	a3,a5,2
   13c04:	4601                	c.li	a2,0
   13c06:	faf5                	c.bnez	a3,13bfa <__swsetup_r+0xf6>
   13c08:	4850                	c.lw	a2,20(s0)
   13c0a:	bfc5                	c.j	13bfa <__swsetup_r+0xf6>
   13c0c:	00042423          	sw	zero,8(s0)
   13c10:	b7b5                	c.j	13b7c <__swsetup_r+0x78>
   13c12:	4725                	c.li	a4,9
   13c14:	0407e793          	ori	a5,a5,64
   13c18:	c098                	c.sw	a4,0(s1)
   13c1a:	00f41623          	sh	a5,12(s0)
   13c1e:	557d                	c.li	a0,-1
   13c20:	bf31                	c.j	13b3c <__swsetup_r+0x38>

00013c22 <memchr>:
   13c22:	00357713          	andi	a4,a0,3
   13c26:	87aa                	c.mv	a5,a0
   13c28:	0ff5f813          	andi	a6,a1,255
   13c2c:	832a                	c.mv	t1,a0
   13c2e:	c70d                	c.beqz	a4,13c58 <memchr+0x36>
   13c30:	00c508b3          	add	a7,a0,a2
   13c34:	a039                	c.j	13c42 <memchr+0x20>
   13c36:	0007c683          	lbu	a3,0(a5)
   13c3a:	07068c63          	beq	a3,a6,13cb2 <memchr+0x90>
   13c3e:	cb11                	c.beqz	a4,13c52 <memchr+0x30>
   13c40:	87aa                	c.mv	a5,a0
   13c42:	00178513          	addi	a0,a5,1
   13c46:	00357713          	andi	a4,a0,3
   13c4a:	ff1796e3          	bne	a5,a7,13c36 <memchr+0x14>
   13c4e:	4501                	c.li	a0,0
   13c50:	8082                	c.jr	ra
   13c52:	167d                	c.addi	a2,-1
   13c54:	961a                	c.add	a2,t1
   13c56:	8e1d                	c.sub	a2,a5
   13c58:	478d                	c.li	a5,3
   13c5a:	04c7f163          	bgeu	a5,a2,13c9c <memchr+0x7a>
   13c5e:	0ff5f593          	andi	a1,a1,255
   13c62:	00859693          	slli	a3,a1,0x8
   13c66:	96ae                	c.add	a3,a1
   13c68:	01069713          	slli	a4,a3,0x10
   13c6c:	feff0337          	lui	t1,0xfeff0
   13c70:	808088b7          	lui	a7,0x80808
   13c74:	85be                	c.mv	a1,a5
   13c76:	96ba                	c.add	a3,a4
   13c78:	eff30313          	addi	t1,t1,-257 # fefefeff <__BSS_END__+0xfefd44a3>
   13c7c:	08088893          	addi	a7,a7,128 # 80808080 <__BSS_END__+0x807ec624>
   13c80:	411c                	c.lw	a5,0(a0)
   13c82:	8fb5                	c.xor	a5,a3
   13c84:	00678733          	add	a4,a5,t1
   13c88:	fff7c793          	xori	a5,a5,-1
   13c8c:	8ff9                	c.and	a5,a4
   13c8e:	0117f7b3          	and	a5,a5,a7
   13c92:	e791                	c.bnez	a5,13c9e <memchr+0x7c>
   13c94:	1671                	c.addi	a2,-4
   13c96:	0511                	c.addi	a0,4
   13c98:	fec5e4e3          	bltu	a1,a2,13c80 <memchr+0x5e>
   13c9c:	da4d                	c.beqz	a2,13c4e <memchr+0x2c>
   13c9e:	962a                	c.add	a2,a0
   13ca0:	a021                	c.j	13ca8 <memchr+0x86>
   13ca2:	0505                	c.addi	a0,1
   13ca4:	fac505e3          	beq	a0,a2,13c4e <memchr+0x2c>
   13ca8:	00054783          	lbu	a5,0(a0)
   13cac:	ff079be3          	bne	a5,a6,13ca2 <memchr+0x80>
   13cb0:	8082                	c.jr	ra
   13cb2:	853e                	c.mv	a0,a5
   13cb4:	8082                	c.jr	ra

00013cb6 <strncpy>:
   13cb6:	00a5e7b3          	or	a5,a1,a0
   13cba:	8b8d                	c.andi	a5,3
   13cbc:	e781                	c.bnez	a5,13cc4 <strncpy+0xe>
   13cbe:	488d                	c.li	a7,3
   13cc0:	02c8eb63          	bltu	a7,a2,13cf6 <strncpy+0x40>
   13cc4:	872a                	c.mv	a4,a0
   13cc6:	a811                	c.j	13cda <strncpy+0x24>
   13cc8:	fff5c683          	lbu	a3,-1(a1)
   13ccc:	fff60813          	addi	a6,a2,-1
   13cd0:	fed78fa3          	sb	a3,-1(a5)
   13cd4:	ca81                	c.beqz	a3,13ce4 <strncpy+0x2e>
   13cd6:	873e                	c.mv	a4,a5
   13cd8:	8642                	c.mv	a2,a6
   13cda:	0585                	c.addi	a1,1
   13cdc:	00170793          	addi	a5,a4,1
   13ce0:	f665                	c.bnez	a2,13cc8 <strncpy+0x12>
   13ce2:	8082                	c.jr	ra
   13ce4:	9732                	c.add	a4,a2
   13ce6:	04080263          	beq	a6,zero,13d2a <strncpy+0x74>
   13cea:	0785                	c.addi	a5,1
   13cec:	fe078fa3          	sb	zero,-1(a5)
   13cf0:	fee79de3          	bne	a5,a4,13cea <strncpy+0x34>
   13cf4:	8082                	c.jr	ra
   13cf6:	feff0e37          	lui	t3,0xfeff0
   13cfa:	80808337          	lui	t1,0x80808
   13cfe:	effe0e13          	addi	t3,t3,-257 # fefefeff <__BSS_END__+0xfefd44a3>
   13d02:	08030313          	addi	t1,t1,128 # 80808080 <__BSS_END__+0x807ec624>
   13d06:	872a                	c.mv	a4,a0
   13d08:	4194                	c.lw	a3,0(a1)
   13d0a:	01c687b3          	add	a5,a3,t3
   13d0e:	fff6c813          	xori	a6,a3,-1
   13d12:	0107f7b3          	and	a5,a5,a6
   13d16:	0067f7b3          	and	a5,a5,t1
   13d1a:	f3e1                	c.bnez	a5,13cda <strncpy+0x24>
   13d1c:	1671                	c.addi	a2,-4
   13d1e:	c314                	c.sw	a3,0(a4)
   13d20:	0711                	c.addi	a4,4
   13d22:	0591                	c.addi	a1,4
   13d24:	fec8e2e3          	bltu	a7,a2,13d08 <strncpy+0x52>
   13d28:	bf4d                	c.j	13cda <strncpy+0x24>
   13d2a:	8082                	c.jr	ra

00013d2c <__localeconv_l>:
   13d2c:	0f050513          	addi	a0,a0,240
   13d30:	8082                	c.jr	ra

00013d32 <_localeconv_r>:
   13d32:	e2818513          	addi	a0,gp,-472 # 1b638 <__global_locale+0xf0>
   13d36:	8082                	c.jr	ra

00013d38 <localeconv>:
   13d38:	e2818513          	addi	a0,gp,-472 # 1b638 <__global_locale+0xf0>
   13d3c:	8082                	c.jr	ra

00013d3e <_sbrk_r>:
   13d3e:	1141                	c.addi	sp,-16
   13d40:	c422                	c.swsp	s0,8(sp)
   13d42:	c226                	c.swsp	s1,4(sp)
   13d44:	842a                	c.mv	s0,a0
   13d46:	852e                	c.mv	a0,a1
   13d48:	c606                	c.swsp	ra,12(sp)
   13d4a:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   13d4e:	52e040ef          	jal	ra,1827c <_sbrk>
   13d52:	57fd                	c.li	a5,-1
   13d54:	00f50763          	beq	a0,a5,13d62 <_sbrk_r+0x24>
   13d58:	40b2                	c.lwsp	ra,12(sp)
   13d5a:	4422                	c.lwsp	s0,8(sp)
   13d5c:	4492                	c.lwsp	s1,4(sp)
   13d5e:	0141                	c.addi	sp,16
   13d60:	8082                	c.jr	ra
   13d62:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   13d66:	dbed                	c.beqz	a5,13d58 <_sbrk_r+0x1a>
   13d68:	40b2                	c.lwsp	ra,12(sp)
   13d6a:	c01c                	c.sw	a5,0(s0)
   13d6c:	4422                	c.lwsp	s0,8(sp)
   13d6e:	4492                	c.lwsp	s1,4(sp)
   13d70:	0141                	c.addi	sp,16
   13d72:	8082                	c.jr	ra

00013d74 <__libc_fini_array>:
   13d74:	1141                	c.addi	sp,-16
   13d76:	c422                	c.swsp	s0,8(sp)
   13d78:	67ed                	c.lui	a5,0x1b
   13d7a:	646d                	c.lui	s0,0x1b
   13d7c:	00c40413          	addi	s0,s0,12 # 1b00c <__fini_array_end>
   13d80:	00878793          	addi	a5,a5,8 # 1b008 <__do_global_dtors_aux_fini_array_entry>
   13d84:	8c1d                	c.sub	s0,a5
   13d86:	c226                	c.swsp	s1,4(sp)
   13d88:	c606                	c.swsp	ra,12(sp)
   13d8a:	40245493          	srai	s1,s0,0x2
   13d8e:	c881                	c.beqz	s1,13d9e <__libc_fini_array+0x2a>
   13d90:	1471                	c.addi	s0,-4
   13d92:	943e                	c.add	s0,a5
   13d94:	401c                	c.lw	a5,0(s0)
   13d96:	14fd                	c.addi	s1,-1
   13d98:	1471                	c.addi	s0,-4
   13d9a:	9782                	c.jalr	a5
   13d9c:	fce5                	c.bnez	s1,13d94 <__libc_fini_array+0x20>
   13d9e:	40b2                	c.lwsp	ra,12(sp)
   13da0:	4422                	c.lwsp	s0,8(sp)
   13da2:	4492                	c.lwsp	s1,4(sp)
   13da4:	0141                	c.addi	sp,16
   13da6:	8082                	c.jr	ra

00013da8 <memmove>:
   13da8:	02a5f263          	bgeu	a1,a0,13dcc <memmove+0x24>
   13dac:	00c58733          	add	a4,a1,a2
   13db0:	00e57e63          	bgeu	a0,a4,13dcc <memmove+0x24>
   13db4:	00c507b3          	add	a5,a0,a2
   13db8:	ca1d                	c.beqz	a2,13dee <memmove+0x46>
   13dba:	fff74683          	lbu	a3,-1(a4)
   13dbe:	17fd                	c.addi	a5,-1
   13dc0:	177d                	c.addi	a4,-1
   13dc2:	00d78023          	sb	a3,0(a5)
   13dc6:	fef51ae3          	bne	a0,a5,13dba <memmove+0x12>
   13dca:	8082                	c.jr	ra
   13dcc:	47bd                	c.li	a5,15
   13dce:	02c7e163          	bltu	a5,a2,13df0 <memmove+0x48>
   13dd2:	87aa                	c.mv	a5,a0
   13dd4:	fff60693          	addi	a3,a2,-1
   13dd8:	c25d                	c.beqz	a2,13e7e <memmove+0xd6>
   13dda:	0685                	c.addi	a3,1
   13ddc:	96be                	c.add	a3,a5
   13dde:	0005c703          	lbu	a4,0(a1)
   13de2:	0785                	c.addi	a5,1
   13de4:	0585                	c.addi	a1,1
   13de6:	fee78fa3          	sb	a4,-1(a5)
   13dea:	fed79ae3          	bne	a5,a3,13dde <memmove+0x36>
   13dee:	8082                	c.jr	ra
   13df0:	00b567b3          	or	a5,a0,a1
   13df4:	8b8d                	c.andi	a5,3
   13df6:	88ae                	c.mv	a7,a1
   13df8:	efbd                	c.bnez	a5,13e76 <memmove+0xce>
   13dfa:	ff060793          	addi	a5,a2,-16
   13dfe:	ff07f813          	andi	a6,a5,-16
   13e02:	0841                	c.addi	a6,16
   13e04:	982a                	c.add	a6,a0
   13e06:	872a                	c.mv	a4,a0
   13e08:	4194                	c.lw	a3,0(a1)
   13e0a:	05c1                	c.addi	a1,16
   13e0c:	0741                	c.addi	a4,16
   13e0e:	fed72823          	sw	a3,-16(a4)
   13e12:	ff45a683          	lw	a3,-12(a1)
   13e16:	fed72a23          	sw	a3,-12(a4)
   13e1a:	ff85a683          	lw	a3,-8(a1)
   13e1e:	fed72c23          	sw	a3,-8(a4)
   13e22:	ffc5a683          	lw	a3,-4(a1)
   13e26:	fed72e23          	sw	a3,-4(a4)
   13e2a:	fd071fe3          	bne	a4,a6,13e08 <memmove+0x60>
   13e2e:	9bc1                	c.andi	a5,-16
   13e30:	01178733          	add	a4,a5,a7
   13e34:	01070593          	addi	a1,a4,16
   13e38:	97aa                	c.add	a5,a0
   13e3a:	00c67813          	andi	a6,a2,12
   13e3e:	07c1                	c.addi	a5,16
   13e40:	8e2e                	c.mv	t3,a1
   13e42:	00f67693          	andi	a3,a2,15
   13e46:	02080d63          	beq	a6,zero,13e80 <memmove+0xd8>
   13e4a:	16f1                	c.addi	a3,-4
   13e4c:	9af1                	c.andi	a3,-4
   13e4e:	9736                	c.add	a4,a3
   13e50:	0751                	c.addi	a4,20
   13e52:	41150833          	sub	a6,a0,a7
   13e56:	0005a303          	lw	t1,0(a1)
   13e5a:	010588b3          	add	a7,a1,a6
   13e5e:	0591                	c.addi	a1,4
   13e60:	0068a023          	sw	t1,0(a7)
   13e64:	fee599e3          	bne	a1,a4,13e56 <memmove+0xae>
   13e68:	00468713          	addi	a4,a3,4
   13e6c:	01c705b3          	add	a1,a4,t3
   13e70:	97ba                	c.add	a5,a4
   13e72:	8a0d                	c.andi	a2,3
   13e74:	b785                	c.j	13dd4 <memmove+0x2c>
   13e76:	fff60693          	addi	a3,a2,-1
   13e7a:	87aa                	c.mv	a5,a0
   13e7c:	bfb9                	c.j	13dda <memmove+0x32>
   13e7e:	8082                	c.jr	ra
   13e80:	8636                	c.mv	a2,a3
   13e82:	bf89                	c.j	13dd4 <memmove+0x2c>

00013e84 <memcpy>:
   13e84:	00a5c7b3          	xor	a5,a1,a0
   13e88:	8b8d                	c.andi	a5,3
   13e8a:	00c508b3          	add	a7,a0,a2
   13e8e:	e7b1                	c.bnez	a5,13eda <memcpy+0x56>
   13e90:	478d                	c.li	a5,3
   13e92:	04c7f463          	bgeu	a5,a2,13eda <memcpy+0x56>
   13e96:	00357793          	andi	a5,a0,3
   13e9a:	872a                	c.mv	a4,a0
   13e9c:	e7dd                	c.bnez	a5,13f4a <memcpy+0xc6>
   13e9e:	ffc8f613          	andi	a2,a7,-4
   13ea2:	40e606b3          	sub	a3,a2,a4
   13ea6:	02000793          	addi	a5,zero,32
   13eaa:	04d7c463          	blt	a5,a3,13ef2 <memcpy+0x6e>
   13eae:	86ae                	c.mv	a3,a1
   13eb0:	87ba                	c.mv	a5,a4
   13eb2:	02c77163          	bgeu	a4,a2,13ed4 <memcpy+0x50>
   13eb6:	0006a803          	lw	a6,0(a3)
   13eba:	0791                	c.addi	a5,4
   13ebc:	0691                	c.addi	a3,4
   13ebe:	ff07ae23          	sw	a6,-4(a5)
   13ec2:	fec7eae3          	bltu	a5,a2,13eb6 <memcpy+0x32>
   13ec6:	167d                	c.addi	a2,-1
   13ec8:	8e19                	c.sub	a2,a4
   13eca:	9a71                	c.andi	a2,-4
   13ecc:	0591                	c.addi	a1,4
   13ece:	0711                	c.addi	a4,4
   13ed0:	95b2                	c.add	a1,a2
   13ed2:	9732                	c.add	a4,a2
   13ed4:	01176663          	bltu	a4,a7,13ee0 <memcpy+0x5c>
   13ed8:	8082                	c.jr	ra
   13eda:	872a                	c.mv	a4,a0
   13edc:	ff157ee3          	bgeu	a0,a7,13ed8 <memcpy+0x54>
   13ee0:	0005c783          	lbu	a5,0(a1)
   13ee4:	0705                	c.addi	a4,1
   13ee6:	0585                	c.addi	a1,1
   13ee8:	fef70fa3          	sb	a5,-1(a4)
   13eec:	fee89ae3          	bne	a7,a4,13ee0 <memcpy+0x5c>
   13ef0:	8082                	c.jr	ra
   13ef2:	5194                	c.lw	a3,32(a1)
   13ef4:	0005a383          	lw	t2,0(a1)
   13ef8:	0045a283          	lw	t0,4(a1)
   13efc:	0085af83          	lw	t6,8(a1)
   13f00:	00c5af03          	lw	t5,12(a1)
   13f04:	0105ae83          	lw	t4,16(a1)
   13f08:	0145ae03          	lw	t3,20(a1)
   13f0c:	0185a303          	lw	t1,24(a1)
   13f10:	01c5a803          	lw	a6,28(a1)
   13f14:	02470713          	addi	a4,a4,36
   13f18:	fed72e23          	sw	a3,-4(a4)
   13f1c:	fc772e23          	sw	t2,-36(a4)
   13f20:	40e606b3          	sub	a3,a2,a4
   13f24:	fe572023          	sw	t0,-32(a4)
   13f28:	fff72223          	sw	t6,-28(a4)
   13f2c:	ffe72423          	sw	t5,-24(a4)
   13f30:	ffd72623          	sw	t4,-20(a4)
   13f34:	ffc72823          	sw	t3,-16(a4)
   13f38:	fe672a23          	sw	t1,-12(a4)
   13f3c:	ff072c23          	sw	a6,-8(a4)
   13f40:	02458593          	addi	a1,a1,36
   13f44:	fad7c7e3          	blt	a5,a3,13ef2 <memcpy+0x6e>
   13f48:	b79d                	c.j	13eae <memcpy+0x2a>
   13f4a:	0005c683          	lbu	a3,0(a1)
   13f4e:	0705                	c.addi	a4,1
   13f50:	00377793          	andi	a5,a4,3
   13f54:	fed70fa3          	sb	a3,-1(a4)
   13f58:	0585                	c.addi	a1,1
   13f5a:	d3b1                	c.beqz	a5,13e9e <memcpy+0x1a>
   13f5c:	0005c683          	lbu	a3,0(a1)
   13f60:	0705                	c.addi	a4,1
   13f62:	00377793          	andi	a5,a4,3
   13f66:	fed70fa3          	sb	a3,-1(a4)
   13f6a:	0585                	c.addi	a1,1
   13f6c:	fff9                	c.bnez	a5,13f4a <memcpy+0xc6>
   13f6e:	bf05                	c.j	13e9e <memcpy+0x1a>

00013f70 <strlen>:
   13f70:	00357793          	andi	a5,a0,3
   13f74:	872a                	c.mv	a4,a0
   13f76:	ef9d                	c.bnez	a5,13fb4 <strlen+0x44>
   13f78:	7f7f86b7          	lui	a3,0x7f7f8
   13f7c:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__BSS_END__+0x7f7dc523>
   13f80:	55fd                	c.li	a1,-1
   13f82:	4310                	c.lw	a2,0(a4)
   13f84:	0711                	c.addi	a4,4
   13f86:	00d677b3          	and	a5,a2,a3
   13f8a:	97b6                	c.add	a5,a3
   13f8c:	8fd1                	c.or	a5,a2
   13f8e:	8fd5                	c.or	a5,a3
   13f90:	feb789e3          	beq	a5,a1,13f82 <strlen+0x12>
   13f94:	ffc74683          	lbu	a3,-4(a4)
   13f98:	40a707b3          	sub	a5,a4,a0
   13f9c:	ca8d                	c.beqz	a3,13fce <strlen+0x5e>
   13f9e:	ffd74683          	lbu	a3,-3(a4)
   13fa2:	c29d                	c.beqz	a3,13fc8 <strlen+0x58>
   13fa4:	ffe74503          	lbu	a0,-2(a4)
   13fa8:	00a03533          	sltu	a0,zero,a0
   13fac:	953e                	c.add	a0,a5
   13fae:	1579                	c.addi	a0,-2
   13fb0:	8082                	c.jr	ra
   13fb2:	d2f9                	c.beqz	a3,13f78 <strlen+0x8>
   13fb4:	00074783          	lbu	a5,0(a4)
   13fb8:	0705                	c.addi	a4,1
   13fba:	00377693          	andi	a3,a4,3
   13fbe:	fbf5                	c.bnez	a5,13fb2 <strlen+0x42>
   13fc0:	8f09                	c.sub	a4,a0
   13fc2:	fff70513          	addi	a0,a4,-1
   13fc6:	8082                	c.jr	ra
   13fc8:	ffd78513          	addi	a0,a5,-3
   13fcc:	8082                	c.jr	ra
   13fce:	ffc78513          	addi	a0,a5,-4
   13fd2:	8082                	c.jr	ra

00013fd4 <frexpl>:
   13fd4:	7159                	c.addi16sp	sp,-112
   13fd6:	d0ca                	c.swsp	s2,96(sp)
   13fd8:	00c5a903          	lw	s2,12(a1)
   13fdc:	ccd2                	c.swsp	s4,88(sp)
   13fde:	cad6                	c.swsp	s5,84(sp)
   13fe0:	c8da                	c.swsp	s6,80(sp)
   13fe2:	0045aa83          	lw	s5,4(a1)
   13fe6:	0005ab03          	lw	s6,0(a1)
   13fea:	0085aa03          	lw	s4,8(a1)
   13fee:	cece                	c.swsp	s3,92(sp)
   13ff0:	69a1                	c.lui	s3,0x8
   13ff2:	d4a2                	c.swsp	s0,104(sp)
   13ff4:	d2a6                	c.swsp	s1,100(sp)
   13ff6:	d686                	c.swsp	ra,108(sp)
   13ff8:	01095493          	srli	s1,s2,0x10
   13ffc:	19fd                	c.addi	s3,-1 # 7fff <exit-0x80b5>
   13ffe:	00062023          	sw	zero,0(a2)
   14002:	de4a                	c.swsp	s2,60(sp)
   14004:	0134f4b3          	and	s1,s1,s3
   14008:	d85a                	c.swsp	s6,48(sp)
   1400a:	da56                	c.swsp	s5,52(sp)
   1400c:	dc52                	c.swsp	s4,56(sp)
   1400e:	842a                	c.mv	s0,a0
   14010:	05348763          	beq	s1,s3,1405e <frexpl+0x8a>
   14014:	1008                	c.addi4spn	a0,sp,32
   14016:	080c                	c.addi4spn	a1,sp,16
   14018:	c6de                	c.swsp	s7,76(sp)
   1401a:	d05a                	c.swsp	s6,32(sp)
   1401c:	8bb2                	c.mv	s7,a2
   1401e:	d256                	c.swsp	s5,36(sp)
   14020:	d452                	c.swsp	s4,40(sp)
   14022:	d64a                	c.swsp	s2,44(sp)
   14024:	c802                	c.swsp	zero,16(sp)
   14026:	ca02                	c.swsp	zero,20(sp)
   14028:	cc02                	c.swsp	zero,24(sp)
   1402a:	ce02                	c.swsp	zero,28(sp)
   1402c:	346040ef          	jal	ra,18372 <__eqtf2>
   14030:	c941                	c.beqz	a0,140c0 <frexpl+0xec>
   14032:	4681                	c.li	a3,0
   14034:	c8a1                	c.beqz	s1,14084 <frexpl+0xb0>
   14036:	7771                	c.lui	a4,0xffffc
   14038:	0709                	c.addi	a4,2 # ffffc002 <__BSS_END__+0xfffe05a6>
   1403a:	5972                	c.lwsp	s2,60(sp)
   1403c:	94ba                	c.add	s1,a4
   1403e:	800107b7          	lui	a5,0x80010
   14042:	94b6                	c.add	s1,a3
   14044:	17fd                	c.addi	a5,-1 # 8000ffff <__BSS_END__+0x7fff45a3>
   14046:	009ba023          	sw	s1,0(s7)
   1404a:	5b42                	c.lwsp	s6,48(sp)
   1404c:	5ad2                	c.lwsp	s5,52(sp)
   1404e:	5a62                	c.lwsp	s4,56(sp)
   14050:	4bb6                	c.lwsp	s7,76(sp)
   14052:	00f97933          	and	s2,s2,a5
   14056:	3ffe07b7          	lui	a5,0x3ffe0
   1405a:	00f96933          	or	s2,s2,a5
   1405e:	01642023          	sw	s6,0(s0)
   14062:	01542223          	sw	s5,4(s0)
   14066:	01442423          	sw	s4,8(s0)
   1406a:	01242623          	sw	s2,12(s0)
   1406e:	50b6                	c.lwsp	ra,108(sp)
   14070:	8522                	c.mv	a0,s0
   14072:	5426                	c.lwsp	s0,104(sp)
   14074:	5496                	c.lwsp	s1,100(sp)
   14076:	5906                	c.lwsp	s2,96(sp)
   14078:	49f6                	c.lwsp	s3,92(sp)
   1407a:	4a66                	c.lwsp	s4,88(sp)
   1407c:	4ad6                	c.lwsp	s5,84(sp)
   1407e:	4b46                	c.lwsp	s6,80(sp)
   14080:	6165                	c.addi16sp	sp,112
   14082:	8082                	c.jr	ra
   14084:	407107b7          	lui	a5,0x40710
   14088:	860a                	c.mv	a2,sp
   1408a:	080c                	c.addi4spn	a1,sp,16
   1408c:	1008                	c.addi4spn	a0,sp,32
   1408e:	c63e                	c.swsp	a5,12(sp)
   14090:	c85a                	c.swsp	s6,16(sp)
   14092:	ca56                	c.swsp	s5,20(sp)
   14094:	cc52                	c.swsp	s4,24(sp)
   14096:	ce4a                	c.swsp	s2,28(sp)
   14098:	c002                	c.swsp	zero,0(sp)
   1409a:	c202                	c.swsp	zero,4(sp)
   1409c:	c402                	c.swsp	zero,8(sp)
   1409e:	59c040ef          	jal	ra,1863a <__multf3>
   140a2:	57b2                	c.lwsp	a5,44(sp)
   140a4:	5692                	c.lwsp	a3,36(sp)
   140a6:	5602                	c.lwsp	a2,32(sp)
   140a8:	5722                	c.lwsp	a4,40(sp)
   140aa:	0107d493          	srli	s1,a5,0x10
   140ae:	da36                	c.swsp	a3,52(sp)
   140b0:	d832                	c.swsp	a2,48(sp)
   140b2:	dc3a                	c.swsp	a4,56(sp)
   140b4:	de3e                	c.swsp	a5,60(sp)
   140b6:	0134f4b3          	and	s1,s1,s3
   140ba:	f8e00693          	addi	a3,zero,-114
   140be:	bfa5                	c.j	14036 <frexpl+0x62>
   140c0:	4bb6                	c.lwsp	s7,76(sp)
   140c2:	bf71                	c.j	1405e <frexpl+0x8a>

000140c4 <__register_exitproc>:
   140c4:	f281a783          	lw	a5,-216(gp) # 1b738 <__atexit>
   140c8:	c3a1                	c.beqz	a5,14108 <__register_exitproc+0x44>
   140ca:	43d8                	c.lw	a4,4(a5)
   140cc:	487d                	c.li	a6,31
   140ce:	04e84f63          	blt	a6,a4,1412c <__register_exitproc+0x68>
   140d2:	00271813          	slli	a6,a4,0x2
   140d6:	c11d                	c.beqz	a0,140fc <__register_exitproc+0x38>
   140d8:	01078333          	add	t1,a5,a6
   140dc:	08c32423          	sw	a2,136(t1)
   140e0:	1887a883          	lw	a7,392(a5) # 40710188 <__BSS_END__+0x406f472c>
   140e4:	4605                	c.li	a2,1
   140e6:	00e61633          	sll	a2,a2,a4
   140ea:	00c8e8b3          	or	a7,a7,a2
   140ee:	1917a423          	sw	a7,392(a5)
   140f2:	10d32423          	sw	a3,264(t1)
   140f6:	4689                	c.li	a3,2
   140f8:	00d50f63          	beq	a0,a3,14116 <__register_exitproc+0x52>
   140fc:	0705                	c.addi	a4,1
   140fe:	c3d8                	c.sw	a4,4(a5)
   14100:	97c2                	c.add	a5,a6
   14102:	c78c                	c.sw	a1,8(a5)
   14104:	4501                	c.li	a0,0
   14106:	8082                	c.jr	ra
   14108:	0bc18813          	addi	a6,gp,188 # 1b8cc <__atexit0>
   1410c:	f301a423          	sw	a6,-216(gp) # 1b738 <__atexit>
   14110:	0bc18793          	addi	a5,gp,188 # 1b8cc <__atexit0>
   14114:	bf5d                	c.j	140ca <__register_exitproc+0x6>
   14116:	18c7a683          	lw	a3,396(a5)
   1411a:	0705                	c.addi	a4,1
   1411c:	c3d8                	c.sw	a4,4(a5)
   1411e:	8ed1                	c.or	a3,a2
   14120:	18d7a623          	sw	a3,396(a5)
   14124:	97c2                	c.add	a5,a6
   14126:	c78c                	c.sw	a1,8(a5)
   14128:	4501                	c.li	a0,0
   1412a:	8082                	c.jr	ra
   1412c:	557d                	c.li	a0,-1
   1412e:	8082                	c.jr	ra

00014130 <_ldtoa_r>:
   14130:	68ed                	c.lui	a7,0x1b
   14132:	acc88893          	addi	a7,a7,-1332 # 1aacc <blanks.1+0x10>
   14136:	0008af83          	lw	t6,0(a7)
   1413a:	0048af03          	lw	t5,4(a7)
   1413e:	0088ae83          	lw	t4,8(a7)
   14142:	00c8ae03          	lw	t3,12(a7)
   14146:	0108a303          	lw	t1,16(a7)
   1414a:	03852883          	lw	a7,56(a0)
   1414e:	7171                	c.addi16sp	sp,-176
   14150:	d14a                	c.swsp	s2,160(sp)
   14152:	cf4e                	c.swsp	s3,156(sp)
   14154:	cd52                	c.swsp	s4,152(sp)
   14156:	c95a                	c.swsp	s6,144(sp)
   14158:	c75e                	c.swsp	s7,140(sp)
   1415a:	c562                	c.swsp	s8,136(sp)
   1415c:	c366                	c.swsp	s9,132(sp)
   1415e:	c16a                	c.swsp	s10,128(sp)
   14160:	d706                	c.swsp	ra,172(sp)
   14162:	d522                	c.swsp	s0,168(sp)
   14164:	d326                	c.swsp	s1,164(sp)
   14166:	cb56                	c.swsp	s5,148(sp)
   14168:	deee                	c.swsp	s11,124(sp)
   1416a:	cefe                	c.swsp	t6,92(sp)
   1416c:	d0fa                	c.swsp	t5,96(sp)
   1416e:	d2f6                	c.swsp	t4,100(sp)
   14170:	d4f2                	c.swsp	t3,104(sp)
   14172:	d69a                	c.swsp	t1,108(sp)
   14174:	cc32                	c.swsp	a2,24(sp)
   14176:	ce36                	c.swsp	a3,28(sp)
   14178:	0005aa03          	lw	s4,0(a1)
   1417c:	0045a983          	lw	s3,4(a1)
   14180:	0085a903          	lw	s2,8(a1)
   14184:	00c5ac03          	lw	s8,12(a1)
   14188:	8b2a                	c.mv	s6,a0
   1418a:	8bba                	c.mv	s7,a4
   1418c:	8cbe                	c.mv	s9,a5
   1418e:	8d42                	c.mv	s10,a6
   14190:	00088763          	beq	a7,zero,1419e <_ldtoa_r+0x6e>
   14194:	85c6                	c.mv	a1,a7
   14196:	3ea010ef          	jal	ra,15580 <__freedtoa>
   1419a:	020b2c23          	sw	zero,56(s6)
   1419e:	5626                	c.lwsp	a2,104(sp)
   141a0:	01fc5693          	srli	a3,s8,0x1f
   141a4:	001c1a93          	slli	s5,s8,0x1
   141a8:	40165713          	srai	a4,a2,0x1
   141ac:	74f1                	c.lui	s1,0xffffc
   141ae:	001c1413          	slli	s0,s8,0x1
   141b2:	010c1d93          	slli	s11,s8,0x10
   141b6:	8f75                	c.and	a4,a3
   141b8:	d852                	c.swsp	s4,48(sp)
   141ba:	da4e                	c.swsp	s3,52(sp)
   141bc:	dc4a                	c.swsp	s2,56(sp)
   141be:	d052                	c.swsp	s4,32(sp)
   141c0:	d24e                	c.swsp	s3,36(sp)
   141c2:	d44a                	c.swsp	s2,40(sp)
   141c4:	011ada93          	srli	s5,s5,0x11
   141c8:	f9148493          	addi	s1,s1,-111 # ffffbf91 <__BSS_END__+0xfffe0535>
   141cc:	8005                	c.srli	s0,0x1
   141ce:	00dca023          	sw	a3,0(s9)
   141d2:	010ddd93          	srli	s11,s11,0x10
   141d6:	8f31                	c.xor	a4,a2
   141d8:	009a87b3          	add	a5,s5,s1
   141dc:	1808                	c.addi4spn	a0,sp,48
   141de:	100c                	c.addi4spn	a1,sp,32
   141e0:	de22                	c.swsp	s0,60(sp)
   141e2:	d622                	c.swsp	s0,44(sp)
   141e4:	c6d2                	c.swsp	s4,76(sp)
   141e6:	c8ce                	c.swsp	s3,80(sp)
   141e8:	caca                	c.swsp	s2,84(sp)
   141ea:	d4ba                	c.swsp	a4,104(sp)
   141ec:	ca3e                	c.swsp	a5,20(sp)
   141ee:	ccee                	c.swsp	s11,88(sp)
   141f0:	0f0060ef          	jal	ra,1a2e0 <__unordtf2>
   141f4:	ed61                	c.bnez	a0,142cc <_ldtoa_r+0x19c>
   141f6:	7fff0737          	lui	a4,0x7fff0
   141fa:	54fd                	c.li	s1,-1
   141fc:	fff70c93          	addi	s9,a4,-1 # 7ffeffff <__BSS_END__+0x7ffd45a3>
   14200:	100c                	c.addi4spn	a1,sp,32
   14202:	1808                	c.addi4spn	a0,sp,48
   14204:	d852                	c.swsp	s4,48(sp)
   14206:	da4e                	c.swsp	s3,52(sp)
   14208:	dc4a                	c.swsp	s2,56(sp)
   1420a:	de22                	c.swsp	s0,60(sp)
   1420c:	d666                	c.swsp	s9,44(sp)
   1420e:	d026                	c.swsp	s1,32(sp)
   14210:	d226                	c.swsp	s1,36(sp)
   14212:	d426                	c.swsp	s1,40(sp)
   14214:	0cc060ef          	jal	ra,1a2e0 <__unordtf2>
   14218:	ed21                	c.bnez	a0,14270 <_ldtoa_r+0x140>
   1421a:	100c                	c.addi4spn	a1,sp,32
   1421c:	1808                	c.addi4spn	a0,sp,48
   1421e:	32e040ef          	jal	ra,1854c <__letf2>
   14222:	04a05763          	bge	zero,a0,14270 <_ldtoa_r+0x140>
   14226:	478d                	c.li	a5,3
   14228:	c4be                	c.swsp	a5,72(sp)
   1422a:	47e2                	c.lwsp	a5,24(sp)
   1422c:	4872                	c.lwsp	a6,28(sp)
   1422e:	4652                	c.lwsp	a2,20(sp)
   14230:	00b8                	c.addi4spn	a4,sp,72
   14232:	c06a                	c.swsp	s10,0(sp)
   14234:	855a                	c.mv	a0,s6
   14236:	88de                	c.mv	a7,s7
   14238:	00f4                	c.addi4spn	a3,sp,76
   1423a:	08ec                	c.addi4spn	a1,sp,92
   1423c:	223d                	c.jal	1436a <__gdtoa>
   1423e:	000ba703          	lw	a4,0(s7)
   14242:	77e1                	c.lui	a5,0xffff8
   14244:	00f71763          	bne	a4,a5,14252 <_ldtoa_r+0x122>
   14248:	800007b7          	lui	a5,0x80000
   1424c:	17fd                	c.addi	a5,-1 # 7fffffff <__BSS_END__+0x7ffe45a3>
   1424e:	00fba023          	sw	a5,0(s7)
   14252:	50ba                	c.lwsp	ra,172(sp)
   14254:	542a                	c.lwsp	s0,168(sp)
   14256:	549a                	c.lwsp	s1,164(sp)
   14258:	590a                	c.lwsp	s2,160(sp)
   1425a:	49fa                	c.lwsp	s3,156(sp)
   1425c:	4a6a                	c.lwsp	s4,152(sp)
   1425e:	4ada                	c.lwsp	s5,148(sp)
   14260:	4b4a                	c.lwsp	s6,144(sp)
   14262:	4bba                	c.lwsp	s7,140(sp)
   14264:	4c2a                	c.lwsp	s8,136(sp)
   14266:	4c9a                	c.lwsp	s9,132(sp)
   14268:	4d0a                	c.lwsp	s10,128(sp)
   1426a:	5df6                	c.lwsp	s11,124(sp)
   1426c:	614d                	c.addi16sp	sp,176
   1426e:	8082                	c.jr	ra
   14270:	67c1                	c.lui	a5,0x10
   14272:	100c                	c.addi4spn	a1,sp,32
   14274:	1808                	c.addi4spn	a0,sp,48
   14276:	d852                	c.swsp	s4,48(sp)
   14278:	da4e                	c.swsp	s3,52(sp)
   1427a:	dc4a                	c.swsp	s2,56(sp)
   1427c:	de22                	c.swsp	s0,60(sp)
   1427e:	d002                	c.swsp	zero,32(sp)
   14280:	d202                	c.swsp	zero,36(sp)
   14282:	d402                	c.swsp	zero,40(sp)
   14284:	d63e                	c.swsp	a5,44(sp)
   14286:	1d8040ef          	jal	ra,1845e <__getf2>
   1428a:	00054963          	blt	a0,zero,1429c <_ldtoa_r+0x16c>
   1428e:	67c1                	c.lui	a5,0x10
   14290:	00fdedb3          	or	s11,s11,a5
   14294:	4785                	c.li	a5,1
   14296:	ccee                	c.swsp	s11,88(sp)
   14298:	c4be                	c.swsp	a5,72(sp)
   1429a:	bf41                	c.j	1422a <_ldtoa_r+0xfa>
   1429c:	100c                	c.addi4spn	a1,sp,32
   1429e:	1808                	c.addi4spn	a0,sp,48
   142a0:	d852                	c.swsp	s4,48(sp)
   142a2:	da4e                	c.swsp	s3,52(sp)
   142a4:	dc4a                	c.swsp	s2,56(sp)
   142a6:	de62                	c.swsp	s8,60(sp)
   142a8:	d002                	c.swsp	zero,32(sp)
   142aa:	d202                	c.swsp	zero,36(sp)
   142ac:	d402                	c.swsp	zero,40(sp)
   142ae:	d602                	c.swsp	zero,44(sp)
   142b0:	0c2040ef          	jal	ra,18372 <__eqtf2>
   142b4:	e119                	c.bnez	a0,142ba <_ldtoa_r+0x18a>
   142b6:	c482                	c.swsp	zero,72(sp)
   142b8:	bf8d                	c.j	1422a <_ldtoa_r+0xfa>
   142ba:	74f1                	c.lui	s1,0xffffc
   142bc:	f9248493          	addi	s1,s1,-110 # ffffbf92 <__BSS_END__+0xfffe0536>
   142c0:	4789                	c.li	a5,2
   142c2:	009a8733          	add	a4,s5,s1
   142c6:	ca3a                	c.swsp	a4,20(sp)
   142c8:	c4be                	c.swsp	a5,72(sp)
   142ca:	b785                	c.j	1422a <_ldtoa_r+0xfa>
   142cc:	4791                	c.li	a5,4
   142ce:	c4be                	c.swsp	a5,72(sp)
   142d0:	bfa9                	c.j	1422a <_ldtoa_r+0xfa>

000142d2 <_ldcheck>:
   142d2:	7139                	c.addi16sp	sp,-64
   142d4:	dc22                	c.swsp	s0,56(sp)
   142d6:	4540                	c.lw	s0,12(a0)
   142d8:	d64e                	c.swsp	s3,44(sp)
   142da:	d452                	c.swsp	s4,40(sp)
   142dc:	00852983          	lw	s3,8(a0)
   142e0:	00452a03          	lw	s4,4(a0)
   142e4:	d256                	c.swsp	s5,36(sp)
   142e6:	00052a83          	lw	s5,0(a0)
   142ea:	0406                	c.slli	s0,0x1
   142ec:	8005                	c.srli	s0,0x1
   142ee:	0808                	c.addi4spn	a0,sp,16
   142f0:	858a                	c.mv	a1,sp
   142f2:	de06                	c.swsp	ra,60(sp)
   142f4:	ce22                	c.swsp	s0,28(sp)
   142f6:	c622                	c.swsp	s0,12(sp)
   142f8:	c856                	c.swsp	s5,16(sp)
   142fa:	c056                	c.swsp	s5,0(sp)
   142fc:	ca52                	c.swsp	s4,20(sp)
   142fe:	c252                	c.swsp	s4,4(sp)
   14300:	cc4e                	c.swsp	s3,24(sp)
   14302:	c44e                	c.swsp	s3,8(sp)
   14304:	7dd050ef          	jal	ra,1a2e0 <__unordtf2>
   14308:	e929                	c.bnez	a0,1435a <_ldcheck+0x88>
   1430a:	d05a                	c.swsp	s6,32(sp)
   1430c:	7fff0b37          	lui	s6,0x7fff0
   14310:	d84a                	c.swsp	s2,48(sp)
   14312:	1b7d                	c.addi	s6,-1 # 7ffeffff <__BSS_END__+0x7ffd45a3>
   14314:	597d                	c.li	s2,-1
   14316:	858a                	c.mv	a1,sp
   14318:	0808                	c.addi4spn	a0,sp,16
   1431a:	da26                	c.swsp	s1,52(sp)
   1431c:	c65a                	c.swsp	s6,12(sp)
   1431e:	c04a                	c.swsp	s2,0(sp)
   14320:	c24a                	c.swsp	s2,4(sp)
   14322:	c44a                	c.swsp	s2,8(sp)
   14324:	4485                	c.li	s1,1
   14326:	7bb050ef          	jal	ra,1a2e0 <__unordtf2>
   1432a:	c105                	c.beqz	a0,1434a <_ldcheck+0x78>
   1432c:	50f2                	c.lwsp	ra,60(sp)
   1432e:	5462                	c.lwsp	s0,56(sp)
   14330:	0014c513          	xori	a0,s1,1
   14334:	0ff57513          	andi	a0,a0,255
   14338:	54d2                	c.lwsp	s1,52(sp)
   1433a:	5942                	c.lwsp	s2,48(sp)
   1433c:	5b02                	c.lwsp	s6,32(sp)
   1433e:	59b2                	c.lwsp	s3,44(sp)
   14340:	5a22                	c.lwsp	s4,40(sp)
   14342:	5a92                	c.lwsp	s5,36(sp)
   14344:	0506                	c.slli	a0,0x1
   14346:	6121                	c.addi16sp	sp,64
   14348:	8082                	c.jr	ra
   1434a:	858a                	c.mv	a1,sp
   1434c:	0808                	c.addi4spn	a0,sp,16
   1434e:	1fe040ef          	jal	ra,1854c <__letf2>
   14352:	fca05de3          	bge	zero,a0,1432c <_ldcheck+0x5a>
   14356:	4481                	c.li	s1,0
   14358:	bfd1                	c.j	1432c <_ldcheck+0x5a>
   1435a:	50f2                	c.lwsp	ra,60(sp)
   1435c:	5462                	c.lwsp	s0,56(sp)
   1435e:	59b2                	c.lwsp	s3,44(sp)
   14360:	5a22                	c.lwsp	s4,40(sp)
   14362:	5a92                	c.lwsp	s5,36(sp)
   14364:	4505                	c.li	a0,1
   14366:	6121                	c.addi16sp	sp,64
   14368:	8082                	c.jr	ra

0001436a <__gdtoa>:
   1436a:	7135                	c.addi16sp	sp,-160
   1436c:	c356                	c.swsp	s5,132(sp)
   1436e:	00072a83          	lw	s5,0(a4)
   14372:	cb26                	c.swsp	s1,148(sp)
   14374:	dede                	c.swsp	s7,124(sp)
   14376:	fcfafe13          	andi	t3,s5,-49
   1437a:	cf06                	c.swsp	ra,156(sp)
   1437c:	01c72023          	sw	t3,0(a4)
   14380:	4e8d                	c.li	t4,3
   14382:	00fafe13          	andi	t3,s5,15
   14386:	c232                	c.swsp	a2,4(sp)
   14388:	cc42                	c.swsp	a6,24(sp)
   1438a:	5b8a                	c.lwsp	s7,160(sp)
   1438c:	84c6                	c.mv	s1,a7
   1438e:	23de0963          	beq	t3,t4,145c0 <__gdtoa+0x256>
   14392:	c15a                	c.swsp	s6,128(sp)
   14394:	00cafb13          	andi	s6,s5,12
   14398:	180b1763          	bne	s6,zero,14526 <__gdtoa+0x1bc>
   1439c:	cd22                	c.swsp	s0,152(sp)
   1439e:	842a                	c.mv	s0,a0
   143a0:	1e0e0d63          	beq	t3,zero,1459a <__gdtoa+0x230>
   143a4:	d6ee                	c.swsp	s11,108(sp)
   143a6:	0005ad83          	lw	s11,0(a1)
   143aa:	c94a                	c.swsp	s2,144(sp)
   143ac:	c74e                	c.swsp	s3,140(sp)
   143ae:	c552                	c.swsp	s4,136(sp)
   143b0:	d8ea                	c.swsp	s10,112(sp)
   143b2:	893e                	c.mv	s2,a5
   143b4:	dae6                	c.swsp	s9,116(sp)
   143b6:	02000793          	addi	a5,zero,32
   143ba:	8a2e                	c.mv	s4,a1
   143bc:	8d3a                	c.mv	s10,a4
   143be:	89b6                	c.mv	s3,a3
   143c0:	4581                	c.li	a1,0
   143c2:	01b7d663          	bge	a5,s11,143ce <__gdtoa+0x64>
   143c6:	0786                	c.slli	a5,0x1
   143c8:	0585                	c.addi	a1,1
   143ca:	ffb7cee3          	blt	a5,s11,143c6 <__gdtoa+0x5c>
   143ce:	8522                	c.mv	a0,s0
   143d0:	3fc010ef          	jal	ra,157cc <_Balloc>
   143d4:	8caa                	c.mv	s9,a0
   143d6:	40050d63          	beq	a0,zero,147f0 <__gdtoa+0x486>
   143da:	fffd8893          	addi	a7,s11,-1
   143de:	4058d893          	srai	a7,a7,0x5
   143e2:	00289513          	slli	a0,a7,0x2
   143e6:	dce2                	c.swsp	s8,120(sp)
   143e8:	954e                	c.add	a0,s3
   143ea:	014c8613          	addi	a2,s9,20
   143ee:	87ce                	c.mv	a5,s3
   143f0:	4398                	c.lw	a4,0(a5)
   143f2:	0791                	c.addi	a5,4 # 10004 <exit-0xb0>
   143f4:	0611                	c.addi	a2,4
   143f6:	fee62e23          	sw	a4,-4(a2)
   143fa:	fef57be3          	bgeu	a0,a5,143f0 <__gdtoa+0x86>
   143fe:	0505                	c.addi	a0,1
   14400:	00198793          	addi	a5,s3,1
   14404:	4601                	c.li	a2,0
   14406:	00f56463          	bltu	a0,a5,1440e <__gdtoa+0xa4>
   1440a:	00289613          	slli	a2,a7,0x2
   1440e:	0611                	c.addi	a2,4
   14410:	40265793          	srai	a5,a2,0x2
   14414:	9666                	c.add	a2,s9
   14416:	a021                	c.j	1441e <__gdtoa+0xb4>
   14418:	1671                	c.addi	a2,-4
   1441a:	1c078263          	beq	a5,zero,145de <__gdtoa+0x274>
   1441e:	4a18                	c.lw	a4,16(a2)
   14420:	8c3e                	c.mv	s8,a5
   14422:	17fd                	c.addi	a5,-1
   14424:	db75                	c.beqz	a4,14418 <__gdtoa+0xae>
   14426:	078a                	c.slli	a5,0x2
   14428:	97e6                	c.add	a5,s9
   1442a:	4bc8                	c.lw	a0,20(a5)
   1442c:	018ca823          	sw	s8,16(s9)
   14430:	0c16                	c.slli	s8,0x5
   14432:	5c6010ef          	jal	ra,159f8 <__hi0bits>
   14436:	40ac07b3          	sub	a5,s8,a0
   1443a:	8566                	c.mv	a0,s9
   1443c:	c83e                	c.swsp	a5,16(sp)
   1443e:	354010ef          	jal	ra,15792 <__trailz_D2A>
   14442:	ceaa                	c.swsp	a0,92(sp)
   14444:	4c12                	c.lwsp	s8,4(sp)
   14446:	47c2                	c.lwsp	a5,16(sp)
   14448:	38051363          	bne	a0,zero,147ce <__gdtoa+0x464>
   1444c:	010ca583          	lw	a1,16(s9)
   14450:	12058a63          	beq	a1,zero,14584 <__gdtoa+0x21a>
   14454:	08ec                	c.addi4spn	a1,sp,92
   14456:	8566                	c.mv	a0,s9
   14458:	ce3e                	c.swsp	a5,28(sp)
   1445a:	4d5010ef          	jal	ra,1612e <__b2d>
   1445e:	a82a                	c.fsdsp	fa0,16(sp)
   14460:	4552                	c.lwsp	a0,20(sp)
   14462:	45c2                	c.lwsp	a1,16(sp)
   14464:	3ff00e37          	lui	t3,0x3ff00
   14468:	00c51893          	slli	a7,a0,0xc
   1446c:	00c8d893          	srli	a7,a7,0xc
   14470:	01c8e8b3          	or	a7,a7,t3
   14474:	c42e                	c.swsp	a1,8(sp)
   14476:	c646                	c.swsp	a7,12(sp)
   14478:	ea81b707          	fld	fa4,-344(gp) # 1b6b8 <__SDATA_BEGIN__>
   1447c:	27a2                	c.fldsp	fa5,8(sp)
   1447e:	0ae7f753          	fsub.d	fa4,fa5,fa4
   14482:	eb01b687          	fld	fa3,-336(gp) # 1b6c0 <__SDATA_BEGIN__+0x8>
   14486:	eb81b787          	fld	fa5,-328(gp) # 1b6c8 <__SDATA_BEGIN__+0x10>
   1448a:	47f2                	c.lwsp	a5,28(sp)
   1448c:	00fc0eb3          	add	t4,s8,a5
   14490:	7ad77743          	fmadd.d	fa4,fa4,fa3,fa5
   14494:	fffe8593          	addi	a1,t4,-1
   14498:	ec01b687          	fld	fa3,-320(gp) # 1b6d0 <__SDATA_BEGIN__+0x18>
   1449c:	d20587d3          	fcvt.d.w	fa5,a1
   144a0:	852e                	c.mv	a0,a1
   144a2:	72d7f7c3          	fmadd.d	fa5,fa5,fa3,fa4
   144a6:	0005d563          	bge	a1,zero,144b0 <__gdtoa+0x146>
   144aa:	4505                	c.li	a0,1
   144ac:	41d50533          	sub	a0,a0,t4
   144b0:	bcb50513          	addi	a0,a0,-1077
   144b4:	00a05863          	bge	zero,a0,144c4 <__gdtoa+0x15a>
   144b8:	ec81b707          	fld	fa4,-312(gp) # 1b6d8 <__SDATA_BEGIN__+0x20>
   144bc:	d20506d3          	fcvt.d.w	fa3,a0
   144c0:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   144c4:	d2000753          	fcvt.d.w	fa4,zero
   144c8:	c2079e53          	fcvt.w.d	t3,fa5,rtz
   144cc:	a2e79553          	flt.d	a0,fa5,fa4
   144d0:	c909                	c.beqz	a0,144e2 <__gdtoa+0x178>
   144d2:	d20e0753          	fcvt.d.w	fa4,t3
   144d6:	a2f72553          	feq.d	a0,fa4,fa5
   144da:	00153513          	sltiu	a0,a0,1
   144de:	40ae0e33          	sub	t3,t3,a0
   144e2:	01459f13          	slli	t5,a1,0x14
   144e6:	40b78533          	sub	a0,a5,a1
   144ea:	011f0733          	add	a4,t5,a7
   144ee:	c63a                	c.swsp	a4,12(sp)
   144f0:	fff50713          	addi	a4,a0,-1
   144f4:	45d9                	c.li	a1,22
   144f6:	c83a                	c.swsp	a4,16(sp)
   144f8:	0fc5e663          	bltu	a1,t3,145e4 <__gdtoa+0x27a>
   144fc:	65ed                	c.lui	a1,0x1b
   144fe:	b4058893          	addi	a7,a1,-1216 # 1ab40 <__mprec_tens>
   14502:	003e1593          	slli	a1,t3,0x3
   14506:	95c6                	c.add	a1,a7
   14508:	219c                	c.fld	fa5,0(a1)
   1450a:	2722                	c.fldsp	fa4,8(sp)
   1450c:	a2f715d3          	flt.d	a1,fa4,fa5
   14510:	30059063          	bne	a1,zero,14810 <__gdtoa+0x4a6>
   14514:	18a05de3          	bge	zero,a0,14eae <__gdtoa+0xb44>
   14518:	9772                	c.add	a4,t3
   1451a:	c83a                	c.swsp	a4,16(sp)
   1451c:	c282                	c.swsp	zero,68(sp)
   1451e:	dc72                	c.swsp	t3,56(sp)
   14520:	ce02                	c.swsp	zero,28(sp)
   14522:	d602                	c.swsp	zero,44(sp)
   14524:	a0c5                	c.j	14604 <__gdtoa+0x29a>
   14526:	4791                	c.li	a5,4
   14528:	04fe1563          	bne	t3,a5,14572 <__gdtoa+0x208>
   1452c:	4b0a                	c.lwsp	s6,128(sp)
   1452e:	40fa                	c.lwsp	ra,156(sp)
   14530:	44da                	c.lwsp	s1,148(sp)
   14532:	4a9a                	c.lwsp	s5,132(sp)
   14534:	77e1                	c.lui	a5,0xffff8
   14536:	865e                	c.mv	a2,s7
   14538:	5bf6                	c.lwsp	s7,124(sp)
   1453a:	65e9                	c.lui	a1,0x1a
   1453c:	00f8a023          	sw	a5,0(a7)
   14540:	86f6                	c.mv	a3,t4
   14542:	78058593          	addi	a1,a1,1920 # 1a780 <__clzsi2+0xa0>
   14546:	610d                	c.addi16sp	sp,160
   14548:	7c70006f          	jal	zero,1550e <__nrv_alloc_D2A>
   1454c:	85f6                	c.mv	a1,t4
   1454e:	8522                	c.mv	a0,s0
   14550:	c442                	c.swsp	a6,8(sp)
   14552:	c272                	c.swsp	t3,4(sp)
   14554:	0a1010ef          	jal	ra,15df4 <__lshift>
   14558:	4e12                	c.lwsp	t3,4(sp)
   1455a:	4822                	c.lwsp	a6,8(sp)
   1455c:	8eaa                	c.mv	t4,a0
   1455e:	42051c63          	bne	a0,zero,14996 <__gdtoa+0x62c>
   14562:	446a                	c.lwsp	s0,152(sp)
   14564:	494a                	c.lwsp	s2,144(sp)
   14566:	49ba                	c.lwsp	s3,140(sp)
   14568:	4a2a                	c.lwsp	s4,136(sp)
   1456a:	5c66                	c.lwsp	s8,120(sp)
   1456c:	5cd6                	c.lwsp	s9,116(sp)
   1456e:	5d46                	c.lwsp	s10,112(sp)
   14570:	5db6                	c.lwsp	s11,108(sp)
   14572:	4801                	c.li	a6,0
   14574:	40fa                	c.lwsp	ra,156(sp)
   14576:	4b0a                	c.lwsp	s6,128(sp)
   14578:	44da                	c.lwsp	s1,148(sp)
   1457a:	4a9a                	c.lwsp	s5,132(sp)
   1457c:	5bf6                	c.lwsp	s7,124(sp)
   1457e:	8542                	c.mv	a0,a6
   14580:	610d                	c.addi16sp	sp,160
   14582:	8082                	c.jr	ra
   14584:	85e6                	c.mv	a1,s9
   14586:	8522                	c.mv	a0,s0
   14588:	2ae010ef          	jal	ra,15836 <_Bfree>
   1458c:	494a                	c.lwsp	s2,144(sp)
   1458e:	49ba                	c.lwsp	s3,140(sp)
   14590:	4a2a                	c.lwsp	s4,136(sp)
   14592:	5c66                	c.lwsp	s8,120(sp)
   14594:	5cd6                	c.lwsp	s9,116(sp)
   14596:	5d46                	c.lwsp	s10,112(sp)
   14598:	5db6                	c.lwsp	s11,108(sp)
   1459a:	4685                	c.li	a3,1
   1459c:	65e9                	c.lui	a1,0x1a
   1459e:	865e                	c.mv	a2,s7
   145a0:	8522                	c.mv	a0,s0
   145a2:	c094                	c.sw	a3,0(s1)
   145a4:	77058593          	addi	a1,a1,1904 # 1a770 <__clzsi2+0x90>
   145a8:	767000ef          	jal	ra,1550e <__nrv_alloc_D2A>
   145ac:	40fa                	c.lwsp	ra,156(sp)
   145ae:	446a                	c.lwsp	s0,152(sp)
   145b0:	882a                	c.mv	a6,a0
   145b2:	4b0a                	c.lwsp	s6,128(sp)
   145b4:	44da                	c.lwsp	s1,148(sp)
   145b6:	4a9a                	c.lwsp	s5,132(sp)
   145b8:	5bf6                	c.lwsp	s7,124(sp)
   145ba:	8542                	c.mv	a0,a6
   145bc:	610d                	c.addi16sp	sp,160
   145be:	8082                	c.jr	ra
   145c0:	40fa                	c.lwsp	ra,156(sp)
   145c2:	44da                	c.lwsp	s1,148(sp)
   145c4:	4a9a                	c.lwsp	s5,132(sp)
   145c6:	77e1                	c.lui	a5,0xffff8
   145c8:	865e                	c.mv	a2,s7
   145ca:	5bf6                	c.lwsp	s7,124(sp)
   145cc:	65e9                	c.lui	a1,0x1a
   145ce:	00f8a023          	sw	a5,0(a7)
   145d2:	77458593          	addi	a1,a1,1908 # 1a774 <__clzsi2+0x94>
   145d6:	46a1                	c.li	a3,8
   145d8:	610d                	c.addi16sp	sp,160
   145da:	7350006f          	jal	zero,1550e <__nrv_alloc_D2A>
   145de:	000ca823          	sw	zero,16(s9)
   145e2:	bda1                	c.j	1443a <__gdtoa+0xd0>
   145e4:	4705                	c.li	a4,1
   145e6:	c2ba                	c.swsp	a4,68(sp)
   145e8:	4742                	c.lwsp	a4,16(sp)
   145ea:	ce02                	c.swsp	zero,28(sp)
   145ec:	20074a63          	blt	a4,zero,14800 <__gdtoa+0x496>
   145f0:	1e0e5a63          	bge	t3,zero,147e4 <__gdtoa+0x47a>
   145f4:	4772                	c.lwsp	a4,28(sp)
   145f6:	dc02                	c.swsp	zero,56(sp)
   145f8:	41c70733          	sub	a4,a4,t3
   145fc:	ce3a                	c.swsp	a4,28(sp)
   145fe:	41c00733          	sub	a4,zero,t3
   14602:	d63a                	c.swsp	a4,44(sp)
   14604:	45a5                	c.li	a1,9
   14606:	5125ee63          	bltu	a1,s2,14b22 <__gdtoa+0x7b8>
   1460a:	4595                	c.li	a1,5
   1460c:	6325d263          	bge	a1,s2,14c30 <__gdtoa+0x8c6>
   14610:	1971                	c.addi	s2,-4
   14612:	4511                	c.li	a0,4
   14614:	52a90e63          	beq	s2,a0,14b50 <__gdtoa+0x7e6>
   14618:	08b905e3          	beq	s2,a1,14ea2 <__gdtoa+0xb38>
   1461c:	4589                	c.li	a1,2
   1461e:	c482                	c.swsp	zero,72(sp)
   14620:	c082                	c.swsp	zero,64(sp)
   14622:	52b90a63          	beq	s2,a1,14b56 <__gdtoa+0x7ec>
   14626:	490d                	c.li	s2,3
   14628:	4762                	c.lwsp	a4,24(sp)
   1462a:	9772                	c.add	a4,t3
   1462c:	c6ba                	c.swsp	a4,76(sp)
   1462e:	0705                	c.addi	a4,1
   14630:	d43a                	c.swsp	a4,40(sp)
   14632:	7ce05b63          	bge	zero,a4,14e08 <__gdtoa+0xa9e>
   14636:	88ba                	c.mv	a7,a4
   14638:	85ba                	c.mv	a1,a4
   1463a:	8522                	c.mv	a0,s0
   1463c:	de3e                	c.swsp	a5,60(sp)
   1463e:	d872                	c.swsp	t3,48(sp)
   14640:	cec6                	c.swsp	a7,92(sp)
   14642:	68f000ef          	jal	ra,154d0 <__rv_alloc_D2A>
   14646:	882a                	c.mv	a6,a0
   14648:	dd09                	c.beqz	a0,14562 <__gdtoa+0x1f8>
   1464a:	00ca2703          	lw	a4,12(s4)
   1464e:	5e42                	c.lwsp	t3,48(sp)
   14650:	57f2                	c.lwsp	a5,60(sp)
   14652:	177d                	c.addi	a4,-1
   14654:	d03a                	c.swsp	a4,32(sp)
   14656:	cf11                	c.beqz	a4,14672 <__gdtoa+0x308>
   14658:	00075463          	bge	a4,zero,14660 <__gdtoa+0x2f6>
   1465c:	4709                	c.li	a4,2
   1465e:	d03a                	c.swsp	a4,32(sp)
   14660:	100af313          	andi	t1,s5,256
   14664:	1a030963          	beq	t1,zero,14816 <__gdtoa+0x4ac>
   14668:	5702                	c.lwsp	a4,32(sp)
   1466a:	458d                	c.li	a1,3
   1466c:	40e58733          	sub	a4,a1,a4
   14670:	d03a                	c.swsp	a4,32(sp)
   14672:	5722                	c.lwsp	a4,40(sp)
   14674:	45b9                	c.li	a1,14
   14676:	1ae5e063          	bltu	a1,a4,14816 <__gdtoa+0x4ac>
   1467a:	4726                	c.lwsp	a4,72(sp)
   1467c:	18070d63          	beq	a4,zero,14816 <__gdtoa+0x4ac>
   14680:	5702                	c.lwsp	a4,32(sp)
   14682:	01c765b3          	or	a1,a4,t3
   14686:	18059863          	bne	a1,zero,14816 <__gdtoa+0x4ac>
   1468a:	27a2                	c.fldsp	fa5,8(sp)
   1468c:	4716                	c.lwsp	a4,68(sp)
   1468e:	ce82                	c.swsp	zero,92(sp)
   14690:	b03e                	c.fsdsp	fa5,32(sp)
   14692:	cb01                	c.beqz	a4,146a2 <__gdtoa+0x338>
   14694:	ed81b787          	fld	fa5,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   14698:	3702                	c.fldsp	fa4,32(sp)
   1469a:	a2f715d3          	flt.d	a1,fa4,fa5
   1469e:	3c059be3          	bne	a1,zero,15274 <__gdtoa+0xf0a>
   146a2:	ef81b787          	fld	fa5,-264(gp) # 1b708 <__SDATA_BEGIN__+0x50>
   146a6:	3702                	c.fldsp	fa4,32(sp)
   146a8:	b83e                	c.fsdsp	fa5,48(sp)
   146aa:	36c2                	c.fldsp	fa3,48(sp)
   146ac:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   146b0:	5722                	c.lwsp	a4,40(sp)
   146b2:	fcc00eb7          	lui	t4,0xfcc00
   146b6:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   146ba:	b83e                	c.fsdsp	fa5,48(sp)
   146bc:	5542                	c.lwsp	a0,48(sp)
   146be:	55d2                	c.lwsp	a1,52(sp)
   146c0:	88aa                	c.mv	a7,a0
   146c2:	9eae                	c.add	t4,a1
   146c4:	18070ce3          	beq	a4,zero,1505c <__gdtoa+0xcf2>
   146c8:	3782                	c.fldsp	fa5,32(sp)
   146ca:	5522                	c.lwsp	a0,40(sp)
   146cc:	4281                	c.li	t0,0
   146ce:	b83e                	c.fsdsp	fa5,48(sp)
   146d0:	65ed                	c.lui	a1,0x1b
   146d2:	4706                	c.lwsp	a4,64(sp)
   146d4:	b4058f93          	addi	t6,a1,-1216 # 1ab40 <__mprec_tens>
   146d8:	00351f13          	slli	t5,a0,0x3
   146dc:	9f7e                	c.add	t5,t6
   146de:	ff8f3787          	fld	fa5,-8(t5)
   146e2:	86f6                	c.mv	a3,t4
   146e4:	2e070ae3          	beq	a4,zero,151d8 <__gdtoa+0xe6e>
   146e8:	f081b707          	fld	fa4,-248(gp) # 1b718 <__SDATA_BEGIN__+0x60>
   146ec:	36c2                	c.fldsp	fa3,48(sp)
   146ee:	c446                	c.swsp	a7,8(sp)
   146f0:	1af77753          	fdiv.d	fa4,fa4,fa5
   146f4:	c2069ed3          	fcvt.w.d	t4,fa3,rtz
   146f8:	c636                	c.swsp	a3,12(sp)
   146fa:	00180313          	addi	t1,a6,1
   146fe:	d20e87d3          	fcvt.d.w	fa5,t4
   14702:	030e8e93          	addi	t4,t4,48 # fcc00030 <__BSS_END__+0xfcbe45d4>
   14706:	01d80023          	sb	t4,0(a6)
   1470a:	0af6f7d3          	fsub.d	fa5,fa3,fa5
   1470e:	26a2                	c.fldsp	fa3,8(sp)
   14710:	0ad77753          	fsub.d	fa4,fa4,fa3
   14714:	a2e79ed3          	flt.d	t4,fa5,fa4
   14718:	420e92e3          	bne	t4,zero,1533c <__gdtoa+0xfd2>
   1471c:	ed81b587          	fld	fa1,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   14720:	ee01b607          	fld	fa2,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   14724:	a80d                	c.j	14756 <__gdtoa+0x3ec>
   14726:	4776                	c.lwsp	a4,92(sp)
   14728:	0305                	c.addi	t1,1
   1472a:	0705                	c.addi	a4,1
   1472c:	ceba                	c.swsp	a4,92(sp)
   1472e:	42a756e3          	bge	a4,a0,1535a <__gdtoa+0xff0>
   14732:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   14736:	12c77753          	fmul.d	fa4,fa4,fa2
   1473a:	c2079753          	fcvt.w.d	a4,fa5,rtz
   1473e:	d20706d3          	fcvt.d.w	fa3,a4
   14742:	03070713          	addi	a4,a4,48
   14746:	fee30fa3          	sb	a4,-1(t1)
   1474a:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   1474e:	a2e79753          	flt.d	a4,fa5,fa4
   14752:	3e0715e3          	bne	a4,zero,1533c <__gdtoa+0xfd2>
   14756:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   1475a:	a2e69753          	flt.d	a4,fa3,fa4
   1475e:	d761                	c.beqz	a4,14726 <__gdtoa+0x3bc>
   14760:	fff34683          	lbu	a3,-1(t1)
   14764:	00128e13          	addi	t3,t0,1 # 10803 <memset+0x8f>
   14768:	03900613          	addi	a2,zero,57
   1476c:	a031                	c.j	14778 <__gdtoa+0x40e>
   1476e:	26f800e3          	beq	a6,a5,151ce <__gdtoa+0xe64>
   14772:	fff7c683          	lbu	a3,-1(a5) # ffff7fff <__BSS_END__+0xfffdc5a3>
   14776:	833e                	c.mv	t1,a5
   14778:	fff30793          	addi	a5,t1,-1
   1477c:	fec689e3          	beq	a3,a2,1476e <__gdtoa+0x404>
   14780:	0685                	c.addi	a3,1
   14782:	0ff6f693          	andi	a3,a3,255
   14786:	00d78023          	sb	a3,0(a5)
   1478a:	8972                	c.mv	s2,t3
   1478c:	02000b13          	addi	s6,zero,32
   14790:	85e6                	c.mv	a1,s9
   14792:	8522                	c.mv	a0,s0
   14794:	cc42                	c.swsp	a6,24(sp)
   14796:	c21a                	c.swsp	t1,4(sp)
   14798:	09e010ef          	jal	ra,15836 <_Bfree>
   1479c:	4312                	c.lwsp	t1,4(sp)
   1479e:	4862                	c.lwsp	a6,24(sp)
   147a0:	00030023          	sb	zero,0(t1)
   147a4:	0124a023          	sw	s2,0(s1)
   147a8:	000b8463          	beq	s7,zero,147b0 <__gdtoa+0x446>
   147ac:	006ba023          	sw	t1,0(s7)
   147b0:	000d2783          	lw	a5,0(s10)
   147b4:	446a                	c.lwsp	s0,152(sp)
   147b6:	494a                	c.lwsp	s2,144(sp)
   147b8:	0167e7b3          	or	a5,a5,s6
   147bc:	00fd2023          	sw	a5,0(s10)
   147c0:	49ba                	c.lwsp	s3,140(sp)
   147c2:	4a2a                	c.lwsp	s4,136(sp)
   147c4:	5c66                	c.lwsp	s8,120(sp)
   147c6:	5cd6                	c.lwsp	s9,116(sp)
   147c8:	5d46                	c.lwsp	s10,112(sp)
   147ca:	5db6                	c.lwsp	s11,108(sp)
   147cc:	b365                	c.j	14574 <__gdtoa+0x20a>
   147ce:	85aa                	c.mv	a1,a0
   147d0:	8566                	c.mv	a0,s9
   147d2:	71d000ef          	jal	ra,156ee <__rshift_D2A>
   147d6:	4676                	c.lwsp	a2,92(sp)
   147d8:	47c2                	c.lwsp	a5,16(sp)
   147da:	4712                	c.lwsp	a4,4(sp)
   147dc:	8f91                	c.sub	a5,a2
   147de:	00e60c33          	add	s8,a2,a4
   147e2:	b1ad                	c.j	1444c <__gdtoa+0xe2>
   147e4:	4742                	c.lwsp	a4,16(sp)
   147e6:	dc72                	c.swsp	t3,56(sp)
   147e8:	d602                	c.swsp	zero,44(sp)
   147ea:	9772                	c.add	a4,t3
   147ec:	c83a                	c.swsp	a4,16(sp)
   147ee:	bd19                	c.j	14604 <__gdtoa+0x29a>
   147f0:	446a                	c.lwsp	s0,152(sp)
   147f2:	494a                	c.lwsp	s2,144(sp)
   147f4:	49ba                	c.lwsp	s3,140(sp)
   147f6:	4a2a                	c.lwsp	s4,136(sp)
   147f8:	5cd6                	c.lwsp	s9,116(sp)
   147fa:	5d46                	c.lwsp	s10,112(sp)
   147fc:	5db6                	c.lwsp	s11,108(sp)
   147fe:	bb95                	c.j	14572 <__gdtoa+0x208>
   14800:	4585                	c.li	a1,1
   14802:	40a58733          	sub	a4,a1,a0
   14806:	ce3a                	c.swsp	a4,28(sp)
   14808:	c802                	c.swsp	zero,16(sp)
   1480a:	de0e45e3          	blt	t3,zero,145f4 <__gdtoa+0x28a>
   1480e:	bfd9                	c.j	147e4 <__gdtoa+0x47a>
   14810:	1e7d                	c.addi	t3,-1 # 3fefffff <__BSS_END__+0x3fee45a3>
   14812:	c282                	c.swsp	zero,68(sp)
   14814:	bbd1                	c.j	145e8 <__gdtoa+0x27e>
   14816:	0a0c4063          	blt	s8,zero,148b6 <__gdtoa+0x54c>
   1481a:	45b9                	c.li	a1,14
   1481c:	09c5cd63          	blt	a1,t3,148b6 <__gdtoa+0x54c>
   14820:	66ed                	c.lui	a3,0x1b
   14822:	b4068693          	addi	a3,a3,-1216 # 1ab40 <__mprec_tens>
   14826:	003e1793          	slli	a5,t3,0x3
   1482a:	97b6                	c.add	a5,a3
   1482c:	2398                	c.fld	fa4,0(a5)
   1482e:	47e2                	c.lwsp	a5,24(sp)
   14830:	6807c963          	blt	a5,zero,14ec2 <__gdtoa+0xb58>
   14834:	27a2                	c.fldsp	fa5,8(sp)
   14836:	4785                	c.li	a5,1
   14838:	cebe                	c.swsp	a5,92(sp)
   1483a:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   1483e:	9e3e                	c.add	t3,a5
   14840:	00f80333          	add	t1,a6,a5
   14844:	26a2                	c.fldsp	fa3,8(sp)
   14846:	d2000653          	fcvt.d.w	fa2,zero
   1484a:	8972                	c.mv	s2,t3
   1484c:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   14850:	d20787d3          	fcvt.d.w	fa5,a5
   14854:	03078693          	addi	a3,a5,48
   14858:	00d80023          	sb	a3,0(a6)
   1485c:	6ae7f7cb          	fnmsub.d	fa5,fa5,fa4,fa3
   14860:	a2c7a6d3          	feq.d	a3,fa5,fa2
   14864:	f695                	c.bnez	a3,14790 <__gdtoa+0x426>
   14866:	ee01b587          	fld	fa1,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   1486a:	5622                	c.lwsp	a2,40(sp)
   1486c:	a02d                	c.j	14896 <__gdtoa+0x52c>
   1486e:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   14872:	ceb6                	c.swsp	a3,92(sp)
   14874:	0305                	c.addi	t1,1
   14876:	1ae7f6d3          	fdiv.d	fa3,fa5,fa4
   1487a:	c20697d3          	fcvt.w.d	a5,fa3,rtz
   1487e:	d20786d3          	fcvt.d.w	fa3,a5
   14882:	03078713          	addi	a4,a5,48
   14886:	fee30fa3          	sb	a4,-1(t1)
   1488a:	7ae6f7cb          	fnmsub.d	fa5,fa3,fa4,fa5
   1488e:	a2c7a753          	feq.d	a4,fa5,fa2
   14892:	ee071fe3          	bne	a4,zero,14790 <__gdtoa+0x426>
   14896:	4776                	c.lwsp	a4,92(sp)
   14898:	00170693          	addi	a3,a4,1
   1489c:	fcc719e3          	bne	a4,a2,1486e <__gdtoa+0x504>
   148a0:	5702                	c.lwsp	a4,32(sp)
   148a2:	080708e3          	beq	a4,zero,15132 <__gdtoa+0xdc8>
   148a6:	4785                	c.li	a5,1
   148a8:	4b41                	c.li	s6,16
   148aa:	eef713e3          	bne	a4,a5,14790 <__gdtoa+0x426>
   148ae:	fff34683          	lbu	a3,-1(t1)
   148b2:	bd5d                	c.j	14768 <__gdtoa+0x3fe>
   148b4:	d002                	c.swsp	zero,32(sp)
   148b6:	4706                	c.lwsp	a4,64(sp)
   148b8:	34070363          	beq	a4,zero,14bfe <__gdtoa+0x894>
   148bc:	40fd86b3          	sub	a3,s11,a5
   148c0:	004a2583          	lw	a1,4(s4)
   148c4:	00168313          	addi	t1,a3,1
   148c8:	ce9a                	c.swsp	t1,92(sp)
   148ca:	40dc06b3          	sub	a3,s8,a3
   148ce:	56b6df63          	bge	a3,a1,14e4c <__gdtoa+0xae2>
   148d2:	ffd90693          	addi	a3,s2,-3
   148d6:	9af5                	c.andi	a3,-3
   148d8:	46068263          	beq	a3,zero,14d3c <__gdtoa+0x9d2>
   148dc:	40bc05b3          	sub	a1,s8,a1
   148e0:	00158313          	addi	t1,a1,1
   148e4:	ce9a                	c.swsp	t1,92(sp)
   148e6:	4685                	c.li	a3,1
   148e8:	5ab2                	c.lwsp	s5,44(sp)
   148ea:	0126d763          	bge	a3,s2,148f8 <__gdtoa+0x58e>
   148ee:	5722                	c.lwsp	a4,40(sp)
   148f0:	00e05463          	bge	zero,a4,148f8 <__gdtoa+0x58e>
   148f4:	26674ce3          	blt	a4,t1,1536c <__gdtoa+0x1002>
   148f8:	de3e                	c.swsp	a5,60(sp)
   148fa:	47c2                	c.lwsp	a5,16(sp)
   148fc:	4585                	c.li	a1,1
   148fe:	8522                	c.mv	a0,s0
   14900:	979a                	c.add	a5,t1
   14902:	c4c2                	c.swsp	a6,72(sp)
   14904:	d872                	c.swsp	t3,48(sp)
   14906:	c41a                	c.swsp	t1,8(sp)
   14908:	c83e                	c.swsp	a5,16(sp)
   1490a:	1f4010ef          	jal	ra,15afe <__i2b>
   1490e:	8c2a                	c.mv	s8,a0
   14910:	c40509e3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14914:	4772                	c.lwsp	a4,28(sp)
   14916:	4322                	c.lwsp	t1,8(sp)
   14918:	5e42                	c.lwsp	t3,48(sp)
   1491a:	57f2                	c.lwsp	a5,60(sp)
   1491c:	4826                	c.lwsp	a6,72(sp)
   1491e:	68071e63          	bne	a4,zero,14fba <__gdtoa+0xc50>
   14922:	5732                	c.lwsp	a4,44(sp)
   14924:	ce1a                	c.swsp	t1,28(sp)
   14926:	4d81                	c.li	s11,0
   14928:	c30d                	c.beqz	a4,1494a <__gdtoa+0x5e0>
   1492a:	5e0a9b63          	bne	s5,zero,14f20 <__gdtoa+0xbb6>
   1492e:	5632                	c.lwsp	a2,44(sp)
   14930:	85e6                	c.mv	a1,s9
   14932:	8522                	c.mv	a0,s0
   14934:	de42                	c.swsp	a6,60(sp)
   14936:	d83e                	c.swsp	a5,48(sp)
   14938:	c472                	c.swsp	t3,8(sp)
   1493a:	3d8010ef          	jal	ra,15d12 <__pow5mult>
   1493e:	4e22                	c.lwsp	t3,8(sp)
   14940:	57c2                	c.lwsp	a5,48(sp)
   14942:	5872                	c.lwsp	a6,60(sp)
   14944:	8caa                	c.mv	s9,a0
   14946:	c0050ee3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   1494a:	4585                	c.li	a1,1
   1494c:	8522                	c.mv	a0,s0
   1494e:	d842                	c.swsp	a6,48(sp)
   14950:	d63e                	c.swsp	a5,44(sp)
   14952:	c472                	c.swsp	t3,8(sp)
   14954:	1aa010ef          	jal	ra,15afe <__i2b>
   14958:	8eaa                	c.mv	t4,a0
   1495a:	c00504e3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   1495e:	5762                	c.lwsp	a4,56(sp)
   14960:	4e22                	c.lwsp	t3,8(sp)
   14962:	57b2                	c.lwsp	a5,44(sp)
   14964:	5842                	c.lwsp	a6,48(sp)
   14966:	4a071563          	bne	a4,zero,14e10 <__gdtoa+0xaa6>
   1496a:	4685                	c.li	a3,1
   1496c:	457d                	c.li	a0,31
   1496e:	5126da63          	bge	a3,s2,14e82 <__gdtoa+0xb18>
   14972:	47c2                	c.lwsp	a5,16(sp)
   14974:	40f50a33          	sub	s4,a0,a5
   14978:	47f2                	c.lwsp	a5,28(sp)
   1497a:	1a71                	c.addi	s4,-4
   1497c:	01fa7a13          	andi	s4,s4,31
   14980:	00fa0633          	add	a2,s4,a5
   14984:	ced2                	c.swsp	s4,92(sp)
   14986:	87d2                	c.mv	a5,s4
   14988:	2cc04663          	blt	zero,a2,14c54 <__gdtoa+0x8ea>
   1498c:	4742                	c.lwsp	a4,16(sp)
   1498e:	00e78633          	add	a2,a5,a4
   14992:	bac04de3          	blt	zero,a2,1454c <__gdtoa+0x1e2>
   14996:	4796                	c.lwsp	a5,68(sp)
   14998:	2c079d63          	bne	a5,zero,14c72 <__gdtoa+0x908>
   1499c:	57a2                	c.lwsp	a5,40(sp)
   1499e:	40f05063          	bge	zero,a5,14d9e <__gdtoa+0xa34>
   149a2:	4786                	c.lwsp	a5,64(sp)
   149a4:	30078d63          	beq	a5,zero,14cbe <__gdtoa+0x954>
   149a8:	01ba0633          	add	a2,s4,s11
   149ac:	5ec04863          	blt	zero,a2,14f9c <__gdtoa+0xc32>
   149b0:	57e2                	c.lwsp	a5,56(sp)
   149b2:	8f62                	c.mv	t5,s8
   149b4:	62079263          	bne	a5,zero,14fd8 <__gdtoa+0xc6e>
   149b8:	5b22                	c.lwsp	s6,40(sp)
   149ba:	c86a                	c.swsp	s10,16(sp)
   149bc:	ce26                	c.swsp	s1,28(sp)
   149be:	8dc2                	c.mv	s11,a6
   149c0:	4785                	c.li	a5,1
   149c2:	cc72                	c.swsp	t3,24(sp)
   149c4:	c442                	c.swsp	a6,8(sp)
   149c6:	8d76                	c.mv	s10,t4
   149c8:	84fa                	c.mv	s1,t5
   149ca:	d45e                	c.swsp	s7,40(sp)
   149cc:	a885                	c.j	14a3c <__gdtoa+0x6d2>
   149ce:	8522                	c.mv	a0,s0
   149d0:	667000ef          	jal	ra,15836 <_Bfree>
   149d4:	780a4a63          	blt	s4,zero,15168 <__gdtoa+0xdfe>
   149d8:	012a6a33          	or	s4,s4,s2
   149dc:	000a1763          	bne	s4,zero,149ea <__gdtoa+0x680>
   149e0:	0009a783          	lw	a5,0(s3)
   149e4:	8b85                	c.andi	a5,1
   149e6:	78078163          	beq	a5,zero,15168 <__gdtoa+0xdfe>
   149ea:	5782                	c.lwsp	a5,32(sp)
   149ec:	4709                	c.li	a4,2
   149ee:	0ee799e3          	bne	a5,a4,152e0 <__gdtoa+0xf76>
   149f2:	015d8023          	sb	s5,0(s11)
   149f6:	47f6                	c.lwsp	a5,92(sp)
   149f8:	0d85                	c.addi	s11,1
   149fa:	076783e3          	beq	a5,s6,15260 <__gdtoa+0xef6>
   149fe:	85e6                	c.mv	a1,s9
   14a00:	4681                	c.li	a3,0
   14a02:	4629                	c.li	a2,10
   14a04:	8522                	c.mv	a0,s0
   14a06:	643000ef          	jal	ra,15848 <__multadd>
   14a0a:	8caa                	c.mv	s9,a0
   14a0c:	b4050be3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14a10:	85e2                	c.mv	a1,s8
   14a12:	4681                	c.li	a3,0
   14a14:	4629                	c.li	a2,10
   14a16:	8522                	c.mv	a0,s0
   14a18:	149c0863          	beq	s8,s1,14b68 <__gdtoa+0x7fe>
   14a1c:	62d000ef          	jal	ra,15848 <__multadd>
   14a20:	8c2a                	c.mv	s8,a0
   14a22:	b40500e3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14a26:	85a6                	c.mv	a1,s1
   14a28:	4681                	c.li	a3,0
   14a2a:	4629                	c.li	a2,10
   14a2c:	8522                	c.mv	a0,s0
   14a2e:	61b000ef          	jal	ra,15848 <__multadd>
   14a32:	84aa                	c.mv	s1,a0
   14a34:	b20507e3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14a38:	47f6                	c.lwsp	a5,92(sp)
   14a3a:	0785                	c.addi	a5,1
   14a3c:	85ea                	c.mv	a1,s10
   14a3e:	8566                	c.mv	a0,s9
   14a40:	cebe                	c.swsp	a5,92(sp)
   14a42:	34d000ef          	jal	ra,1558e <__quorem_D2A>
   14a46:	8baa                	c.mv	s7,a0
   14a48:	85e2                	c.mv	a1,s8
   14a4a:	8566                	c.mv	a0,s9
   14a4c:	4b2010ef          	jal	ra,15efe <__mcmp>
   14a50:	85ea                	c.mv	a1,s10
   14a52:	8a2a                	c.mv	s4,a0
   14a54:	8626                	c.mv	a2,s1
   14a56:	8522                	c.mv	a0,s0
   14a58:	4e2010ef          	jal	ra,15f3a <__mdiff>
   14a5c:	030b8a93          	addi	s5,s7,48
   14a60:	85aa                	c.mv	a1,a0
   14a62:	b00500e3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14a66:	455c                	c.lw	a5,12(a0)
   14a68:	f3bd                	c.bnez	a5,149ce <__gdtoa+0x664>
   14a6a:	c22a                	c.swsp	a0,4(sp)
   14a6c:	8566                	c.mv	a0,s9
   14a6e:	490010ef          	jal	ra,15efe <__mcmp>
   14a72:	4592                	c.lwsp	a1,4(sp)
   14a74:	86aa                	c.mv	a3,a0
   14a76:	8522                	c.mv	a0,s0
   14a78:	c236                	c.swsp	a3,4(sp)
   14a7a:	5bd000ef          	jal	ra,15836 <_Bfree>
   14a7e:	4692                	c.lwsp	a3,4(sp)
   14a80:	0126e733          	or	a4,a3,s2
   14a84:	1c071ee3          	bne	a4,zero,15460 <__gdtoa+0x10f6>
   14a88:	0009a783          	lw	a5,0(s3)
   14a8c:	8b85                	c.andi	a5,1
   14a8e:	0e079463          	bne	a5,zero,14b76 <__gdtoa+0x80c>
   14a92:	5782                	c.lwsp	a5,32(sp)
   14a94:	0e0786e3          	beq	a5,zero,15380 <__gdtoa+0x1016>
   14a98:	f5404de3          	blt	zero,s4,149f2 <__gdtoa+0x688>
   14a9c:	010ca603          	lw	a2,16(s9)
   14aa0:	4685                	c.li	a3,1
   14aa2:	8f26                	c.mv	t5,s1
   14aa4:	8eea                	c.mv	t4,s10
   14aa6:	4e62                	c.lwsp	t3,24(sp)
   14aa8:	4822                	c.lwsp	a6,8(sp)
   14aaa:	4d42                	c.lwsp	s10,16(sp)
   14aac:	44f2                	c.lwsp	s1,28(sp)
   14aae:	5ba2                	c.lwsp	s7,40(sp)
   14ab0:	8b3a                	c.mv	s6,a4
   14ab2:	18c6dfe3          	bge	a3,a2,15450 <__gdtoa+0x10e6>
   14ab6:	5782                	c.lwsp	a5,32(sp)
   14ab8:	4689                	c.li	a3,2
   14aba:	14d78be3          	beq	a5,a3,15410 <__gdtoa+0x10a6>
   14abe:	87de                	c.mv	a5,s7
   14ac0:	89d6                	c.mv	s3,s5
   14ac2:	8ba6                	c.mv	s7,s1
   14ac4:	c272                	c.swsp	t3,4(sp)
   14ac6:	84ee                	c.mv	s1,s11
   14ac8:	8a7a                	c.mv	s4,t5
   14aca:	8b76                	c.mv	s6,t4
   14acc:	8ac2                	c.mv	s5,a6
   14ace:	8dbe                	c.mv	s11,a5
   14ad0:	a829                	c.j	14aea <__gdtoa+0x780>
   14ad2:	577000ef          	jal	ra,15848 <__multadd>
   14ad6:	85da                	c.mv	a1,s6
   14ad8:	8caa                	c.mv	s9,a0
   14ada:	a80504e3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14ade:	2b1000ef          	jal	ra,1558e <__quorem_D2A>
   14ae2:	8a4e                	c.mv	s4,s3
   14ae4:	84ca                	c.mv	s1,s2
   14ae6:	03050993          	addi	s3,a0,48
   14aea:	85d2                	c.mv	a1,s4
   14aec:	855a                	c.mv	a0,s6
   14aee:	410010ef          	jal	ra,15efe <__mcmp>
   14af2:	872a                	c.mv	a4,a0
   14af4:	4681                	c.li	a3,0
   14af6:	4629                	c.li	a2,10
   14af8:	85d2                	c.mv	a1,s4
   14afa:	8522                	c.mv	a0,s0
   14afc:	00148913          	addi	s2,s1,1
   14b00:	0ee056e3          	bge	zero,a4,153ec <__gdtoa+0x1082>
   14b04:	ff390fa3          	sb	s3,-1(s2)
   14b08:	541000ef          	jal	ra,15848 <__multadd>
   14b0c:	89aa                	c.mv	s3,a0
   14b0e:	4681                	c.li	a3,0
   14b10:	4629                	c.li	a2,10
   14b12:	85e6                	c.mv	a1,s9
   14b14:	8522                	c.mv	a0,s0
   14b16:	a40986e3          	beq	s3,zero,14562 <__gdtoa+0x1f8>
   14b1a:	fb4c1ce3          	bne	s8,s4,14ad2 <__gdtoa+0x768>
   14b1e:	8c4e                	c.mv	s8,s3
   14b20:	bf4d                	c.j	14ad2 <__gdtoa+0x768>
   14b22:	3fde8e93          	addi	t4,t4,1021
   14b26:	7f8eb713          	sltiu	a4,t4,2040
   14b2a:	c4ba                	c.swsp	a4,72(sp)
   14b2c:	4901                	c.li	s2,0
   14b2e:	ed01b707          	fld	fa4,-304(gp) # 1b6e0 <__SDATA_BEGIN__+0x28>
   14b32:	d20d87d3          	fcvt.d.w	fa5,s11
   14b36:	577d                	c.li	a4,-1
   14b38:	c6ba                	c.swsp	a4,76(sp)
   14b3a:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   14b3e:	d43a                	c.swsp	a4,40(sp)
   14b40:	4705                	c.li	a4,1
   14b42:	cc02                	c.swsp	zero,24(sp)
   14b44:	c0ba                	c.swsp	a4,64(sp)
   14b46:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   14b4a:	058d                	c.addi	a1,3
   14b4c:	88ae                	c.mv	a7,a1
   14b4e:	b4f5                	c.j	1463a <__gdtoa+0x2d0>
   14b50:	4705                	c.li	a4,1
   14b52:	c482                	c.swsp	zero,72(sp)
   14b54:	c0ba                	c.swsp	a4,64(sp)
   14b56:	45e2                	c.lwsp	a1,24(sp)
   14b58:	00b04363          	blt	zero,a1,14b5e <__gdtoa+0x7f4>
   14b5c:	4585                	c.li	a1,1
   14b5e:	88ae                	c.mv	a7,a1
   14b60:	c6ae                	c.swsp	a1,76(sp)
   14b62:	d42e                	c.swsp	a1,40(sp)
   14b64:	cc2e                	c.swsp	a1,24(sp)
   14b66:	bcd1                	c.j	1463a <__gdtoa+0x2d0>
   14b68:	4e1000ef          	jal	ra,15848 <__multadd>
   14b6c:	8c2a                	c.mv	s8,a0
   14b6e:	9e050ae3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14b72:	84aa                	c.mv	s1,a0
   14b74:	b5d1                	c.j	14a38 <__gdtoa+0x6ce>
   14b76:	e60a5ee3          	bge	s4,zero,149f2 <__gdtoa+0x688>
   14b7a:	5782                	c.lwsp	a5,32(sp)
   14b7c:	8f26                	c.mv	t5,s1
   14b7e:	8eea                	c.mv	t4,s10
   14b80:	4e62                	c.lwsp	t3,24(sp)
   14b82:	4822                	c.lwsp	a6,8(sp)
   14b84:	4d42                	c.lwsp	s10,16(sp)
   14b86:	44f2                	c.lwsp	s1,28(sp)
   14b88:	5ba2                	c.lwsp	s7,40(sp)
   14b8a:	8b3a                	c.mv	s6,a4
   14b8c:	0a079de3          	bne	a5,zero,15446 <__gdtoa+0x10dc>
   14b90:	010ca603          	lw	a2,16(s9)
   14b94:	4685                	c.li	a3,1
   14b96:	4b41                	c.li	s6,16
   14b98:	00dd8933          	add	s2,s11,a3
   14b9c:	04c6d1e3          	bge	a3,a2,153de <__gdtoa+0x1074>
   14ba0:	89e2                	c.mv	s3,s8
   14ba2:	834a                	c.mv	t1,s2
   14ba4:	015d8023          	sb	s5,0(s11)
   14ba8:	8c7a                	c.mv	s8,t5
   14baa:	85f6                	c.mv	a1,t4
   14bac:	8522                	c.mv	a0,s0
   14bae:	c442                	c.swsp	a6,8(sp)
   14bb0:	cc1a                	c.swsp	t1,24(sp)
   14bb2:	c272                	c.swsp	t3,4(sp)
   14bb4:	483000ef          	jal	ra,15836 <_Bfree>
   14bb8:	4e12                	c.lwsp	t3,4(sp)
   14bba:	4362                	c.lwsp	t1,24(sp)
   14bbc:	4822                	c.lwsp	a6,8(sp)
   14bbe:	001e0913          	addi	s2,t3,1
   14bc2:	bc0c07e3          	beq	s8,zero,14790 <__gdtoa+0x426>
   14bc6:	00098e63          	beq	s3,zero,14be2 <__gdtoa+0x878>
   14bca:	01898c63          	beq	s3,s8,14be2 <__gdtoa+0x878>
   14bce:	85ce                	c.mv	a1,s3
   14bd0:	8522                	c.mv	a0,s0
   14bd2:	c442                	c.swsp	a6,8(sp)
   14bd4:	cc1a                	c.swsp	t1,24(sp)
   14bd6:	c272                	c.swsp	t3,4(sp)
   14bd8:	45f000ef          	jal	ra,15836 <_Bfree>
   14bdc:	4e12                	c.lwsp	t3,4(sp)
   14bde:	4362                	c.lwsp	t1,24(sp)
   14be0:	4822                	c.lwsp	a6,8(sp)
   14be2:	85e2                	c.mv	a1,s8
   14be4:	8522                	c.mv	a0,s0
   14be6:	c442                	c.swsp	a6,8(sp)
   14be8:	cc1a                	c.swsp	t1,24(sp)
   14bea:	c272                	c.swsp	t3,4(sp)
   14bec:	44b000ef          	jal	ra,15836 <_Bfree>
   14bf0:	4e12                	c.lwsp	t3,4(sp)
   14bf2:	4362                	c.lwsp	t1,24(sp)
   14bf4:	4822                	c.lwsp	a6,8(sp)
   14bf6:	001e0913          	addi	s2,t3,1
   14bfa:	be59                	c.j	14790 <__gdtoa+0x426>
   14bfc:	d002                	c.swsp	zero,32(sp)
   14bfe:	4772                	c.lwsp	a4,28(sp)
   14c00:	24071b63          	bne	a4,zero,14e56 <__gdtoa+0xaec>
   14c04:	5732                	c.lwsp	a4,44(sp)
   14c06:	4d81                	c.li	s11,0
   14c08:	4c01                	c.li	s8,0
   14c0a:	d40700e3          	beq	a4,zero,1494a <__gdtoa+0x5e0>
   14c0e:	5632                	c.lwsp	a2,44(sp)
   14c10:	85e6                	c.mv	a1,s9
   14c12:	8522                	c.mv	a0,s0
   14c14:	de42                	c.swsp	a6,60(sp)
   14c16:	d83e                	c.swsp	a5,48(sp)
   14c18:	c472                	c.swsp	t3,8(sp)
   14c1a:	0f8010ef          	jal	ra,15d12 <__pow5mult>
   14c1e:	8caa                	c.mv	s9,a0
   14c20:	940501e3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14c24:	4df2                	c.lwsp	s11,28(sp)
   14c26:	5872                	c.lwsp	a6,60(sp)
   14c28:	57c2                	c.lwsp	a5,48(sp)
   14c2a:	4e22                	c.lwsp	t3,8(sp)
   14c2c:	4c01                	c.li	s8,0
   14c2e:	bb31                	c.j	1494a <__gdtoa+0x5e0>
   14c30:	3fde8e93          	addi	t4,t4,1021
   14c34:	7f8eb713          	sltiu	a4,t4,2040
   14c38:	4511                	c.li	a0,4
   14c3a:	c4ba                	c.swsp	a4,72(sp)
   14c3c:	38a90563          	beq	s2,a0,14fc6 <__gdtoa+0xc5c>
   14c40:	26b90263          	beq	s2,a1,14ea4 <__gdtoa+0xb3a>
   14c44:	4589                	c.li	a1,2
   14c46:	36b90e63          	beq	s2,a1,14fc2 <__gdtoa+0xc58>
   14c4a:	458d                	c.li	a1,3
   14c4c:	c082                	c.swsp	zero,64(sp)
   14c4e:	9cb90de3          	beq	s2,a1,14628 <__gdtoa+0x2be>
   14c52:	bdf1                	c.j	14b2e <__gdtoa+0x7c4>
   14c54:	85e6                	c.mv	a1,s9
   14c56:	8522                	c.mv	a0,s0
   14c58:	ce42                	c.swsp	a6,28(sp)
   14c5a:	c476                	c.swsp	t4,8(sp)
   14c5c:	c272                	c.swsp	t3,4(sp)
   14c5e:	196010ef          	jal	ra,15df4 <__lshift>
   14c62:	8caa                	c.mv	s9,a0
   14c64:	8e050fe3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14c68:	47f6                	c.lwsp	a5,92(sp)
   14c6a:	4872                	c.lwsp	a6,28(sp)
   14c6c:	4ea2                	c.lwsp	t4,8(sp)
   14c6e:	4e12                	c.lwsp	t3,4(sp)
   14c70:	bb31                	c.j	1498c <__gdtoa+0x622>
   14c72:	85f6                	c.mv	a1,t4
   14c74:	8566                	c.mv	a0,s9
   14c76:	c842                	c.swsp	a6,16(sp)
   14c78:	c472                	c.swsp	t3,8(sp)
   14c7a:	c276                	c.swsp	t4,4(sp)
   14c7c:	282010ef          	jal	ra,15efe <__mcmp>
   14c80:	4e92                	c.lwsp	t4,4(sp)
   14c82:	4e22                	c.lwsp	t3,8(sp)
   14c84:	4842                	c.lwsp	a6,16(sp)
   14c86:	d0055be3          	bge	a0,zero,1499c <__gdtoa+0x632>
   14c8a:	1e7d                	c.addi	t3,-1
   14c8c:	85e6                	c.mv	a1,s9
   14c8e:	4681                	c.li	a3,0
   14c90:	4629                	c.li	a2,10
   14c92:	8522                	c.mv	a0,s0
   14c94:	c476                	c.swsp	t4,8(sp)
   14c96:	c272                	c.swsp	t3,4(sp)
   14c98:	ce72                	c.swsp	t3,28(sp)
   14c9a:	3af000ef          	jal	ra,15848 <__multadd>
   14c9e:	8caa                	c.mv	s9,a0
   14ca0:	8c0501e3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14ca4:	4786                	c.lwsp	a5,64(sp)
   14ca6:	4e12                	c.lwsp	t3,4(sp)
   14ca8:	4ea2                	c.lwsp	t4,8(sp)
   14caa:	4842                	c.lwsp	a6,16(sp)
   14cac:	66079563          	bne	a5,zero,15316 <__gdtoa+0xfac>
   14cb0:	47b6                	c.lwsp	a5,76(sp)
   14cb2:	d43e                	c.swsp	a5,40(sp)
   14cb4:	00f04563          	blt	zero,a5,14cbe <__gdtoa+0x954>
   14cb8:	4789                	c.li	a5,2
   14cba:	0f27c563          	blt	a5,s2,14da4 <__gdtoa+0xa3a>
   14cbe:	5922                	c.lwsp	s2,40(sp)
   14cc0:	8dc2                	c.mv	s11,a6
   14cc2:	4785                	c.li	a5,1
   14cc4:	8a72                	c.mv	s4,t3
   14cc6:	89f6                	c.mv	s3,t4
   14cc8:	8b42                	c.mv	s6,a6
   14cca:	a801                	c.j	14cda <__gdtoa+0x970>
   14ccc:	37d000ef          	jal	ra,15848 <__multadd>
   14cd0:	8caa                	c.mv	s9,a0
   14cd2:	880508e3          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14cd6:	47f6                	c.lwsp	a5,92(sp)
   14cd8:	0785                	c.addi	a5,1
   14cda:	85ce                	c.mv	a1,s3
   14cdc:	8566                	c.mv	a0,s9
   14cde:	cebe                	c.swsp	a5,92(sp)
   14ce0:	0af000ef          	jal	ra,1558e <__quorem_D2A>
   14ce4:	03050a93          	addi	s5,a0,48
   14ce8:	015d8023          	sb	s5,0(s11)
   14cec:	47f6                	c.lwsp	a5,92(sp)
   14cee:	0d85                	c.addi	s11,1
   14cf0:	4681                	c.li	a3,0
   14cf2:	4629                	c.li	a2,10
   14cf4:	85e6                	c.mv	a1,s9
   14cf6:	8522                	c.mv	a0,s0
   14cf8:	fd27cae3          	blt	a5,s2,14ccc <__gdtoa+0x962>
   14cfc:	8ece                	c.mv	t4,s3
   14cfe:	8e52                	c.mv	t3,s4
   14d00:	885a                	c.mv	a6,s6
   14d02:	4981                	c.li	s3,0
   14d04:	5702                	c.lwsp	a4,32(sp)
   14d06:	3a070a63          	beq	a4,zero,150ba <__gdtoa+0xd50>
   14d0a:	4789                	c.li	a5,2
   14d0c:	3ef70063          	beq	a4,a5,150ec <__gdtoa+0xd82>
   14d10:	010ca683          	lw	a3,16(s9)
   14d14:	4785                	c.li	a5,1
   14d16:	26d7c263          	blt	a5,a3,14f7a <__gdtoa+0xc10>
   14d1a:	014ca783          	lw	a5,20(s9)
   14d1e:	24079e63          	bne	a5,zero,14f7a <__gdtoa+0xc10>
   14d22:	00f037b3          	sltu	a5,zero,a5
   14d26:	00479b13          	slli	s6,a5,0x4
   14d2a:	03000693          	addi	a3,zero,48
   14d2e:	836e                	c.mv	t1,s11
   14d30:	fffdc783          	lbu	a5,-1(s11)
   14d34:	1dfd                	c.addi	s11,-1
   14d36:	fed78ce3          	beq	a5,a3,14d2e <__gdtoa+0x9c4>
   14d3a:	bd85                	c.j	14baa <__gdtoa+0x840>
   14d3c:	56a2                	c.lwsp	a3,40(sp)
   14d3e:	5632                	c.lwsp	a2,44(sp)
   14d40:	fff68713          	addi	a4,a3,-1
   14d44:	1ce64363          	blt	a2,a4,14f0a <__gdtoa+0xba0>
   14d48:	40e60ab3          	sub	s5,a2,a4
   14d4c:	5c06d163          	bge	a3,zero,1530e <__gdtoa+0xfa4>
   14d50:	5722                	c.lwsp	a4,40(sp)
   14d52:	d83e                	c.swsp	a5,48(sp)
   14d54:	47f2                	c.lwsp	a5,28(sp)
   14d56:	4585                	c.li	a1,1
   14d58:	8522                	c.mv	a0,s0
   14d5a:	de42                	c.swsp	a6,60(sp)
   14d5c:	c472                	c.swsp	t3,8(sp)
   14d5e:	40e78db3          	sub	s11,a5,a4
   14d62:	ce82                	c.swsp	zero,92(sp)
   14d64:	59b000ef          	jal	ra,15afe <__i2b>
   14d68:	4e22                	c.lwsp	t3,8(sp)
   14d6a:	57c2                	c.lwsp	a5,48(sp)
   14d6c:	5872                	c.lwsp	a6,60(sp)
   14d6e:	8c2a                	c.mv	s8,a0
   14d70:	fe050963          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14d74:	4742                	c.lwsp	a4,16(sp)
   14d76:	02e05063          	bge	zero,a4,14d96 <__gdtoa+0xa2c>
   14d7a:	4742                	c.lwsp	a4,16(sp)
   14d7c:	86ee                	c.mv	a3,s11
   14d7e:	01b75363          	bge	a4,s11,14d84 <__gdtoa+0xa1a>
   14d82:	86ba                	c.mv	a3,a4
   14d84:	4772                	c.lwsp	a4,28(sp)
   14d86:	ceb6                	c.swsp	a3,92(sp)
   14d88:	40dd8db3          	sub	s11,s11,a3
   14d8c:	8f15                	c.sub	a4,a3
   14d8e:	ce3a                	c.swsp	a4,28(sp)
   14d90:	4742                	c.lwsp	a4,16(sp)
   14d92:	8f15                	c.sub	a4,a3
   14d94:	c83a                	c.swsp	a4,16(sp)
   14d96:	5732                	c.lwsp	a4,44(sp)
   14d98:	b80719e3          	bne	a4,zero,1492a <__gdtoa+0x5c0>
   14d9c:	b67d                	c.j	1494a <__gdtoa+0x5e0>
   14d9e:	4789                	c.li	a5,2
   14da0:	c127d1e3          	bge	a5,s2,149a2 <__gdtoa+0x638>
   14da4:	85f6                	c.mv	a1,t4
   14da6:	4681                	c.li	a3,0
   14da8:	4615                	c.li	a2,5
   14daa:	8522                	c.mv	a0,s0
   14dac:	c442                	c.swsp	a6,8(sp)
   14dae:	c272                	c.swsp	t3,4(sp)
   14db0:	299000ef          	jal	ra,15848 <__multadd>
   14db4:	85aa                	c.mv	a1,a0
   14db6:	fa050663          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14dba:	57a2                	c.lwsp	a5,40(sp)
   14dbc:	4e12                	c.lwsp	t3,4(sp)
   14dbe:	4822                	c.lwsp	a6,8(sp)
   14dc0:	34079763          	bne	a5,zero,1510e <__gdtoa+0xda4>
   14dc4:	c22a                	c.swsp	a0,4(sp)
   14dc6:	8566                	c.mv	a0,s9
   14dc8:	c842                	c.swsp	a6,16(sp)
   14dca:	c472                	c.swsp	t3,8(sp)
   14dcc:	132010ef          	jal	ra,15efe <__mcmp>
   14dd0:	4592                	c.lwsp	a1,4(sp)
   14dd2:	4e22                	c.lwsp	t3,8(sp)
   14dd4:	4842                	c.lwsp	a6,16(sp)
   14dd6:	32a05c63          	bge	zero,a0,1510e <__gdtoa+0xda4>
   14dda:	03100793          	addi	a5,zero,49
   14dde:	00180313          	addi	t1,a6,1
   14de2:	00f80023          	sb	a5,0(a6)
   14de6:	8522                	c.mv	a0,s0
   14de8:	c442                	c.swsp	a6,8(sp)
   14dea:	cc1a                	c.swsp	t1,24(sp)
   14dec:	001e0913          	addi	s2,t3,1
   14df0:	c272                	c.swsp	t3,4(sp)
   14df2:	245000ef          	jal	ra,15836 <_Bfree>
   14df6:	4e12                	c.lwsp	t3,4(sp)
   14df8:	4362                	c.lwsp	t1,24(sp)
   14dfa:	4822                	c.lwsp	a6,8(sp)
   14dfc:	620c0f63          	beq	s8,zero,1543a <__gdtoa+0x10d0>
   14e00:	8e4a                	c.mv	t3,s2
   14e02:	02000b13          	addi	s6,zero,32
   14e06:	bbf1                	c.j	14be2 <__gdtoa+0x878>
   14e08:	4885                	c.li	a7,1
   14e0a:	85c6                	c.mv	a1,a7
   14e0c:	82fff06f          	jal	zero,1463a <__gdtoa+0x2d0>
   14e10:	85aa                	c.mv	a1,a0
   14e12:	863a                	c.mv	a2,a4
   14e14:	8522                	c.mv	a0,s0
   14e16:	d642                	c.swsp	a6,44(sp)
   14e18:	d83e                	c.swsp	a5,48(sp)
   14e1a:	6f9000ef          	jal	ra,15d12 <__pow5mult>
   14e1e:	8eaa                	c.mv	t4,a0
   14e20:	f4050163          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14e24:	4685                	c.li	a3,1
   14e26:	4e22                	c.lwsp	t3,8(sp)
   14e28:	5832                	c.lwsp	a6,44(sp)
   14e2a:	1f26d863          	bge	a3,s2,1501a <__gdtoa+0xcb0>
   14e2e:	010ea783          	lw	a5,16(t4)
   14e32:	d642                	c.swsp	a6,44(sp)
   14e34:	c472                	c.swsp	t3,8(sp)
   14e36:	078a                	c.slli	a5,0x2
   14e38:	97f6                	c.add	a5,t4
   14e3a:	4b88                	c.lw	a0,16(a5)
   14e3c:	c276                	c.swsp	t4,4(sp)
   14e3e:	3bb000ef          	jal	ra,159f8 <__hi0bits>
   14e42:	5832                	c.lwsp	a6,44(sp)
   14e44:	4e22                	c.lwsp	t3,8(sp)
   14e46:	4e92                	c.lwsp	t4,4(sp)
   14e48:	dc5a                	c.swsp	s6,56(sp)
   14e4a:	b625                	c.j	14972 <__gdtoa+0x608>
   14e4c:	4685                	c.li	a3,1
   14e4e:	ef26c7e3          	blt	a3,s2,14d3c <__gdtoa+0x9d2>
   14e52:	5ab2                	c.lwsp	s5,44(sp)
   14e54:	b455                	c.j	148f8 <__gdtoa+0x58e>
   14e56:	4742                	c.lwsp	a4,16(sp)
   14e58:	16070a63          	beq	a4,zero,14fcc <__gdtoa+0xc62>
   14e5c:	4772                	c.lwsp	a4,28(sp)
   14e5e:	4642                	c.lwsp	a2,16(sp)
   14e60:	86ba                	c.mv	a3,a4
   14e62:	00e65363          	bge	a2,a4,14e68 <__gdtoa+0xafe>
   14e66:	86b2                	c.mv	a3,a2
   14e68:	4772                	c.lwsp	a4,28(sp)
   14e6a:	ceb6                	c.swsp	a3,92(sp)
   14e6c:	40d70db3          	sub	s11,a4,a3
   14e70:	4742                	c.lwsp	a4,16(sp)
   14e72:	ce6e                	c.swsp	s11,28(sp)
   14e74:	8f15                	c.sub	a4,a3
   14e76:	c83a                	c.swsp	a4,16(sp)
   14e78:	5732                	c.lwsp	a4,44(sp)
   14e7a:	d8071ae3          	bne	a4,zero,14c0e <__gdtoa+0x8a4>
   14e7e:	4c01                	c.li	s8,0
   14e80:	b4e9                	c.j	1494a <__gdtoa+0x5e0>
   14e82:	aed798e3          	bne	a5,a3,14972 <__gdtoa+0x608>
   14e86:	004a2683          	lw	a3,4(s4)
   14e8a:	4712                	c.lwsp	a4,4(sp)
   14e8c:	0685                	c.addi	a3,1
   14e8e:	aee6d2e3          	bge	a3,a4,14972 <__gdtoa+0x608>
   14e92:	4772                	c.lwsp	a4,28(sp)
   14e94:	dc3e                	c.swsp	a5,56(sp)
   14e96:	0705                	c.addi	a4,1
   14e98:	ce3a                	c.swsp	a4,28(sp)
   14e9a:	4742                	c.lwsp	a4,16(sp)
   14e9c:	0705                	c.addi	a4,1
   14e9e:	c83a                	c.swsp	a4,16(sp)
   14ea0:	bcc9                	c.j	14972 <__gdtoa+0x608>
   14ea2:	c482                	c.swsp	zero,72(sp)
   14ea4:	4705                	c.li	a4,1
   14ea6:	4915                	c.li	s2,5
   14ea8:	c0ba                	c.swsp	a4,64(sp)
   14eaa:	f7eff06f          	jal	zero,14628 <__gdtoa+0x2be>
   14eae:	4585                	c.li	a1,1
   14eb0:	40a58733          	sub	a4,a1,a0
   14eb4:	ce3a                	c.swsp	a4,28(sp)
   14eb6:	c872                	c.swsp	t3,16(sp)
   14eb8:	c282                	c.swsp	zero,68(sp)
   14eba:	dc72                	c.swsp	t3,56(sp)
   14ebc:	d602                	c.swsp	zero,44(sp)
   14ebe:	f46ff06f          	jal	zero,14604 <__gdtoa+0x29a>
   14ec2:	57a2                	c.lwsp	a5,40(sp)
   14ec4:	96f048e3          	blt	zero,a5,14834 <__gdtoa+0x4ca>
   14ec8:	1c079c63          	bne	a5,zero,150a0 <__gdtoa+0xd36>
   14ecc:	f001b787          	fld	fa5,-256(gp) # 1b710 <__SDATA_BEGIN__+0x58>
   14ed0:	12f77753          	fmul.d	fa4,fa4,fa5
   14ed4:	27a2                	c.fldsp	fa5,8(sp)
   14ed6:	a2e787d3          	fle.d	a5,fa5,fa4
   14eda:	1c079363          	bne	a5,zero,150a0 <__gdtoa+0xd36>
   14ede:	03100793          	addi	a5,zero,49
   14ee2:	00180313          	addi	t1,a6,1
   14ee6:	00f80023          	sb	a5,0(a6)
   14eea:	4581                	c.li	a1,0
   14eec:	8522                	c.mv	a0,s0
   14eee:	c472                	c.swsp	t3,8(sp)
   14ef0:	cc42                	c.swsp	a6,24(sp)
   14ef2:	c21a                	c.swsp	t1,4(sp)
   14ef4:	143000ef          	jal	ra,15836 <_Bfree>
   14ef8:	4e22                	c.lwsp	t3,8(sp)
   14efa:	4312                	c.lwsp	t1,4(sp)
   14efc:	4862                	c.lwsp	a6,24(sp)
   14efe:	002e0913          	addi	s2,t3,2
   14f02:	02000b13          	addi	s6,zero,32
   14f06:	88bff06f          	jal	zero,14790 <__gdtoa+0x426>
   14f0a:	56b2                	c.lwsp	a3,44(sp)
   14f0c:	5662                	c.lwsp	a2,56(sp)
   14f0e:	5322                	c.lwsp	t1,40(sp)
   14f10:	40d706b3          	sub	a3,a4,a3
   14f14:	96b2                	c.add	a3,a2
   14f16:	dc36                	c.swsp	a3,56(sp)
   14f18:	ce9a                	c.swsp	t1,92(sp)
   14f1a:	d63a                	c.swsp	a4,44(sp)
   14f1c:	4a81                	c.li	s5,0
   14f1e:	bae9                	c.j	148f8 <__gdtoa+0x58e>
   14f20:	85e2                	c.mv	a1,s8
   14f22:	8656                	c.mv	a2,s5
   14f24:	8522                	c.mv	a0,s0
   14f26:	de42                	c.swsp	a6,60(sp)
   14f28:	d83e                	c.swsp	a5,48(sp)
   14f2a:	c472                	c.swsp	t3,8(sp)
   14f2c:	5e7000ef          	jal	ra,15d12 <__pow5mult>
   14f30:	8c2a                	c.mv	s8,a0
   14f32:	e2050863          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14f36:	85aa                	c.mv	a1,a0
   14f38:	8666                	c.mv	a2,s9
   14f3a:	8522                	c.mv	a0,s0
   14f3c:	42b000ef          	jal	ra,15b66 <__multiply>
   14f40:	c4aa                	c.swsp	a0,72(sp)
   14f42:	e2050063          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14f46:	85e6                	c.mv	a1,s9
   14f48:	8522                	c.mv	a0,s0
   14f4a:	0ed000ef          	jal	ra,15836 <_Bfree>
   14f4e:	57b2                	c.lwsp	a5,44(sp)
   14f50:	46a6                	c.lwsp	a3,72(sp)
   14f52:	4e22                	c.lwsp	t3,8(sp)
   14f54:	41578733          	sub	a4,a5,s5
   14f58:	d63a                	c.swsp	a4,44(sp)
   14f5a:	57c2                	c.lwsp	a5,48(sp)
   14f5c:	5872                	c.lwsp	a6,60(sp)
   14f5e:	8cb6                	c.mv	s9,a3
   14f60:	9e0705e3          	beq	a4,zero,1494a <__gdtoa+0x5e0>
   14f64:	b2e9                	c.j	1492e <__gdtoa+0x5c4>
   14f66:	89e2                	c.mv	s3,s8
   14f68:	87ee                	c.mv	a5,s11
   14f6a:	001d8913          	addi	s2,s11,1
   14f6e:	8c7a                	c.mv	s8,t5
   14f70:	03900693          	addi	a3,zero,57
   14f74:	8dca                	c.mv	s11,s2
   14f76:	00d78023          	sb	a3,0(a5)
   14f7a:	03900693          	addi	a3,zero,57
   14f7e:	a019                	c.j	14f84 <__gdtoa+0xc1a>
   14f80:	17b80f63          	beq	a6,s11,150fe <__gdtoa+0xd94>
   14f84:	fffdc783          	lbu	a5,-1(s11)
   14f88:	836e                	c.mv	t1,s11
   14f8a:	1dfd                	c.addi	s11,-1
   14f8c:	fed78ae3          	beq	a5,a3,14f80 <__gdtoa+0xc16>
   14f90:	0785                	c.addi	a5,1
   14f92:	00fd8023          	sb	a5,0(s11)
   14f96:	02000b13          	addi	s6,zero,32
   14f9a:	b901                	c.j	14baa <__gdtoa+0x840>
   14f9c:	85e2                	c.mv	a1,s8
   14f9e:	8522                	c.mv	a0,s0
   14fa0:	c442                	c.swsp	a6,8(sp)
   14fa2:	cc76                	c.swsp	t4,24(sp)
   14fa4:	c272                	c.swsp	t3,4(sp)
   14fa6:	64f000ef          	jal	ra,15df4 <__lshift>
   14faa:	4e12                	c.lwsp	t3,4(sp)
   14fac:	4ee2                	c.lwsp	t4,24(sp)
   14fae:	4822                	c.lwsp	a6,8(sp)
   14fb0:	8c2a                	c.mv	s8,a0
   14fb2:	9e051fe3          	bne	a0,zero,149b0 <__gdtoa+0x646>
   14fb6:	dacff06f          	jal	zero,14562 <__gdtoa+0x1f8>
   14fba:	8dba                	c.mv	s11,a4
   14fbc:	971a                	c.add	a4,t1
   14fbe:	ce3a                	c.swsp	a4,28(sp)
   14fc0:	bb55                	c.j	14d74 <__gdtoa+0xa0a>
   14fc2:	c082                	c.swsp	zero,64(sp)
   14fc4:	be49                	c.j	14b56 <__gdtoa+0x7ec>
   14fc6:	4705                	c.li	a4,1
   14fc8:	c0ba                	c.swsp	a4,64(sp)
   14fca:	b671                	c.j	14b56 <__gdtoa+0x7ec>
   14fcc:	5732                	c.lwsp	a4,44(sp)
   14fce:	c40710e3          	bne	a4,zero,14c0e <__gdtoa+0x8a4>
   14fd2:	4df2                	c.lwsp	s11,28(sp)
   14fd4:	4c01                	c.li	s8,0
   14fd6:	ba95                	c.j	1494a <__gdtoa+0x5e0>
   14fd8:	004c2583          	lw	a1,4(s8)
   14fdc:	8522                	c.mv	a0,s0
   14fde:	c442                	c.swsp	a6,8(sp)
   14fe0:	cc76                	c.swsp	t4,24(sp)
   14fe2:	c272                	c.swsp	t3,4(sp)
   14fe4:	7e8000ef          	jal	ra,157cc <_Balloc>
   14fe8:	8a2a                	c.mv	s4,a0
   14fea:	d6050c63          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   14fee:	010c2603          	lw	a2,16(s8)
   14ff2:	00cc0593          	addi	a1,s8,12
   14ff6:	0531                	c.addi	a0,12
   14ff8:	0609                	c.addi	a2,2
   14ffa:	060a                	c.slli	a2,0x2
   14ffc:	e89fe0ef          	jal	ra,13e84 <memcpy>
   15000:	85d2                	c.mv	a1,s4
   15002:	8522                	c.mv	a0,s0
   15004:	4605                	c.li	a2,1
   15006:	5ef000ef          	jal	ra,15df4 <__lshift>
   1500a:	4e12                	c.lwsp	t3,4(sp)
   1500c:	4ee2                	c.lwsp	t4,24(sp)
   1500e:	4822                	c.lwsp	a6,8(sp)
   15010:	8f2a                	c.mv	t5,a0
   15012:	9a0513e3          	bne	a0,zero,149b8 <__gdtoa+0x64e>
   15016:	d4cff06f          	jal	zero,14562 <__gdtoa+0x1f8>
   1501a:	57c2                	c.lwsp	a5,48(sp)
   1501c:	e0d799e3          	bne	a5,a3,14e2e <__gdtoa+0xac4>
   15020:	004a2683          	lw	a3,4(s4)
   15024:	4712                	c.lwsp	a4,4(sp)
   15026:	0685                	c.addi	a3,1
   15028:	e0e6d3e3          	bge	a3,a4,14e2e <__gdtoa+0xac4>
   1502c:	4772                	c.lwsp	a4,28(sp)
   1502e:	8b3e                	c.mv	s6,a5
   15030:	0705                	c.addi	a4,1
   15032:	ce3a                	c.swsp	a4,28(sp)
   15034:	4742                	c.lwsp	a4,16(sp)
   15036:	0705                	c.addi	a4,1
   15038:	c83a                	c.swsp	a4,16(sp)
   1503a:	bbd5                	c.j	14e2e <__gdtoa+0xac4>
   1503c:	ef81b787          	fld	fa5,-264(gp) # 1b708 <__SDATA_BEGIN__+0x50>
   15040:	3702                	c.fldsp	fa4,32(sp)
   15042:	a43e                	c.fsdsp	fa5,8(sp)
   15044:	26a2                	c.fldsp	fa3,8(sp)
   15046:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   1504a:	fcc00eb7          	lui	t4,0xfcc00
   1504e:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   15052:	a43e                	c.fsdsp	fa5,8(sp)
   15054:	4522                	c.lwsp	a0,8(sp)
   15056:	45b2                	c.lwsp	a1,12(sp)
   15058:	88aa                	c.mv	a7,a0
   1505a:	9eae                	c.add	t4,a1
   1505c:	3782                	c.fldsp	fa5,32(sp)
   1505e:	f001b707          	fld	fa4,-256(gp) # 1b710 <__SDATA_BEGIN__+0x58>
   15062:	c446                	c.swsp	a7,8(sp)
   15064:	c676                	c.swsp	t4,12(sp)
   15066:	0ae7f753          	fsub.d	fa4,fa5,fa4
   1506a:	27a2                	c.fldsp	fa5,8(sp)
   1506c:	a2e79353          	flt.d	t1,fa5,fa4
   15070:	24031663          	bne	t1,zero,152bc <__gdtoa+0xf52>
   15074:	22f797d3          	fsgnjn.d	fa5,fa5,fa5
   15078:	a2f715d3          	flt.d	a1,fa4,fa5
   1507c:	e195                	c.bnez	a1,150a0 <__gdtoa+0xd36>
   1507e:	5682                	c.lwsp	a3,32(sp)
   15080:	5712                	c.lwsp	a4,36(sp)
   15082:	65ed                	c.lui	a1,0x1b
   15084:	c436                	c.swsp	a3,8(sp)
   15086:	c63a                	c.swsp	a4,12(sp)
   15088:	820c46e3          	blt	s8,zero,148b4 <__gdtoa+0x54a>
   1508c:	47e2                	c.lwsp	a5,24(sp)
   1508e:	d002                	c.swsp	zero,32(sp)
   15090:	b405b707          	fld	fa4,-1216(a1) # 1ab40 <__mprec_tens>
   15094:	fa07d063          	bge	a5,zero,14834 <__gdtoa+0x4ca>
   15098:	57a2                	c.lwsp	a5,40(sp)
   1509a:	f8079d63          	bne	a5,zero,14834 <__gdtoa+0x4ca>
   1509e:	b53d                	c.j	14ecc <__gdtoa+0xb62>
   150a0:	4581                	c.li	a1,0
   150a2:	8522                	c.mv	a0,s0
   150a4:	c242                	c.swsp	a6,4(sp)
   150a6:	790000ef          	jal	ra,15836 <_Bfree>
   150aa:	47e2                	c.lwsp	a5,24(sp)
   150ac:	4812                	c.lwsp	a6,4(sp)
   150ae:	4b41                	c.li	s6,16
   150b0:	40f00933          	sub	s2,zero,a5
   150b4:	8342                	c.mv	t1,a6
   150b6:	edaff06f          	jal	zero,14790 <__gdtoa+0x426>
   150ba:	85e6                	c.mv	a1,s9
   150bc:	4605                	c.li	a2,1
   150be:	8522                	c.mv	a0,s0
   150c0:	c442                	c.swsp	a6,8(sp)
   150c2:	c276                	c.swsp	t4,4(sp)
   150c4:	cc72                	c.swsp	t3,24(sp)
   150c6:	52f000ef          	jal	ra,15df4 <__lshift>
   150ca:	8caa                	c.mv	s9,a0
   150cc:	c8050b63          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   150d0:	4e92                	c.lwsp	t4,4(sp)
   150d2:	85f6                	c.mv	a1,t4
   150d4:	62b000ef          	jal	ra,15efe <__mcmp>
   150d8:	4e92                	c.lwsp	t4,4(sp)
   150da:	4e62                	c.lwsp	t3,24(sp)
   150dc:	4822                	c.lwsp	a6,8(sp)
   150de:	e8a04ee3          	blt	zero,a0,14f7a <__gdtoa+0xc10>
   150e2:	e509                	c.bnez	a0,150ec <__gdtoa+0xd82>
   150e4:	001af793          	andi	a5,s5,1
   150e8:	e80799e3          	bne	a5,zero,14f7a <__gdtoa+0xc10>
   150ec:	010ca683          	lw	a3,16(s9)
   150f0:	4785                	c.li	a5,1
   150f2:	4b41                	c.li	s6,16
   150f4:	c2d7cbe3          	blt	a5,a3,14d2a <__gdtoa+0x9c0>
   150f8:	014ca783          	lw	a5,20(s9)
   150fc:	b11d                	c.j	14d22 <__gdtoa+0x9b8>
   150fe:	03100793          	addi	a5,zero,49
   15102:	0e05                	c.addi	t3,1
   15104:	00f80023          	sb	a5,0(a6)
   15108:	02000b13          	addi	s6,zero,32
   1510c:	bc79                	c.j	14baa <__gdtoa+0x840>
   1510e:	47e2                	c.lwsp	a5,24(sp)
   15110:	8522                	c.mv	a0,s0
   15112:	c442                	c.swsp	a6,8(sp)
   15114:	fff7ce13          	xori	t3,a5,-1
   15118:	c272                	c.swsp	t3,4(sp)
   1511a:	2f31                	c.jal	15836 <_Bfree>
   1511c:	4822                	c.lwsp	a6,8(sp)
   1511e:	4e12                	c.lwsp	t3,4(sp)
   15120:	4b41                	c.li	s6,16
   15122:	8342                	c.mv	t1,a6
   15124:	aa0c1fe3          	bne	s8,zero,14be2 <__gdtoa+0x878>
   15128:	47e2                	c.lwsp	a5,24(sp)
   1512a:	40f00933          	sub	s2,zero,a5
   1512e:	e62ff06f          	jal	zero,14790 <__gdtoa+0x426>
   15132:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   15136:	fff34683          	lbu	a3,-1(t1)
   1513a:	a2f71653          	flt.d	a2,fa4,fa5
   1513e:	e2061563          	bne	a2,zero,14768 <__gdtoa+0x3fe>
   15142:	a2e7a653          	feq.d	a2,fa5,fa4
   15146:	c601                	c.beqz	a2,1514e <__gdtoa+0xde4>
   15148:	8b85                	c.andi	a5,1
   1514a:	e0079f63          	bne	a5,zero,14768 <__gdtoa+0x3fe>
   1514e:	879a                	c.mv	a5,t1
   15150:	4b41                	c.li	s6,16
   15152:	03000613          	addi	a2,zero,48
   15156:	fff7c703          	lbu	a4,-1(a5)
   1515a:	833e                	c.mv	t1,a5
   1515c:	17fd                	c.addi	a5,-1
   1515e:	fec70ce3          	beq	a4,a2,15156 <__gdtoa+0xdec>
   15162:	8972                	c.mv	s2,t3
   15164:	e2cff06f          	jal	zero,14790 <__gdtoa+0x426>
   15168:	5782                	c.lwsp	a5,32(sp)
   1516a:	895e                	c.mv	s2,s7
   1516c:	8f26                	c.mv	t5,s1
   1516e:	8eea                	c.mv	t4,s10
   15170:	4e62                	c.lwsp	t3,24(sp)
   15172:	4822                	c.lwsp	a6,8(sp)
   15174:	4d42                	c.lwsp	s10,16(sp)
   15176:	44f2                	c.lwsp	s1,28(sp)
   15178:	5ba2                	c.lwsp	s7,40(sp)
   1517a:	cb91                	c.beqz	a5,1518e <__gdtoa+0xe24>
   1517c:	010ca603          	lw	a2,16(s9)
   15180:	4685                	c.li	a3,1
   15182:	92c6cae3          	blt	a3,a2,14ab6 <__gdtoa+0x74c>
   15186:	014ca683          	lw	a3,20(s9)
   1518a:	920696e3          	bne	a3,zero,14ab6 <__gdtoa+0x74c>
   1518e:	85e6                	c.mv	a1,s9
   15190:	4605                	c.li	a2,1
   15192:	8522                	c.mv	a0,s0
   15194:	c842                	c.swsp	a6,16(sp)
   15196:	c276                	c.swsp	t4,4(sp)
   15198:	c47a                	c.swsp	t5,8(sp)
   1519a:	cc72                	c.swsp	t3,24(sp)
   1519c:	459000ef          	jal	ra,15df4 <__lshift>
   151a0:	8caa                	c.mv	s9,a0
   151a2:	bc050063          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   151a6:	4e92                	c.lwsp	t4,4(sp)
   151a8:	85f6                	c.mv	a1,t4
   151aa:	555000ef          	jal	ra,15efe <__mcmp>
   151ae:	4e92                	c.lwsp	t4,4(sp)
   151b0:	4e62                	c.lwsp	t3,24(sp)
   151b2:	4f22                	c.lwsp	t5,8(sp)
   151b4:	4842                	c.lwsp	a6,16(sp)
   151b6:	20a05a63          	bge	zero,a0,153ca <__gdtoa+0x1060>
   151ba:	03900693          	addi	a3,zero,57
   151be:	dada84e3          	beq	s5,a3,14f66 <__gdtoa+0xbfc>
   151c2:	02000793          	addi	a5,zero,32
   151c6:	03190a93          	addi	s5,s2,49
   151ca:	d03e                	c.swsp	a5,32(sp)
   151cc:	b2d1                	c.j	14b90 <__gdtoa+0x826>
   151ce:	0e05                	c.addi	t3,1
   151d0:	03100693          	addi	a3,zero,49
   151d4:	db2ff06f          	jal	zero,14786 <__gdtoa+0x41c>
   151d8:	d846                	c.swsp	a7,48(sp)
   151da:	da76                	c.swsp	t4,52(sp)
   151dc:	3742                	c.fldsp	fa4,48(sp)
   151de:	25a2                	c.fldsp	fa1,8(sp)
   151e0:	12e7f653          	fmul.d	fa2,fa5,fa4
   151e4:	ee01b707          	fld	fa4,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   151e8:	4685                	c.li	a3,1
   151ea:	22b587d3          	fsgnj.d	fa5,fa1,fa1
   151ee:	ceb6                	c.swsp	a3,92(sp)
   151f0:	8342                	c.mv	t1,a6
   151f2:	4f01                	c.li	t5,0
   151f4:	a029                	c.j	151fe <__gdtoa+0xe94>
   151f6:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   151fa:	ceb2                	c.swsp	a2,92(sp)
   151fc:	4f05                	c.li	t5,1
   151fe:	c2079753          	fcvt.w.d	a4,fa5,rtz
   15202:	0305                	c.addi	t1,1
   15204:	03070693          	addi	a3,a4,48
   15208:	0ff6f693          	andi	a3,a3,255
   1520c:	c711                	c.beqz	a4,15218 <__gdtoa+0xeae>
   1520e:	d20706d3          	fcvt.d.w	fa3,a4
   15212:	4f05                	c.li	t5,1
   15214:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   15218:	fed30fa3          	sb	a3,-1(t1)
   1521c:	4776                	c.lwsp	a4,92(sp)
   1521e:	00170613          	addi	a2,a4,1
   15222:	fca71ae3          	bne	a4,a0,151f6 <__gdtoa+0xe8c>
   15226:	000f0463          	beq	t5,zero,1522e <__gdtoa+0xec4>
   1522a:	22f785d3          	fsgnj.d	fa1,fa5,fa5
   1522e:	f081b787          	fld	fa5,-248(gp) # 1b718 <__SDATA_BEGIN__+0x60>
   15232:	02f67753          	fadd.d	fa4,fa2,fa5
   15236:	a2b71553          	flt.d	a0,fa4,fa1
   1523a:	10051c63          	bne	a0,zero,15352 <__gdtoa+0xfe8>
   1523e:	0ac7f7d3          	fsub.d	fa5,fa5,fa2
   15242:	a2f596d3          	flt.d	a3,fa1,fa5
   15246:	16069763          	bne	a3,zero,153b4 <__gdtoa+0x104a>
   1524a:	5682                	c.lwsp	a3,32(sp)
   1524c:	5712                	c.lwsp	a4,36(sp)
   1524e:	c436                	c.swsp	a3,8(sp)
   15250:	c63a                	c.swsp	a4,12(sp)
   15252:	9a0c45e3          	blt	s8,zero,14bfc <__gdtoa+0x892>
   15256:	b405b707          	fld	fa4,-1216(a1)
   1525a:	d002                	c.swsp	zero,32(sp)
   1525c:	dd8ff06f          	jal	zero,14834 <__gdtoa+0x4ca>
   15260:	8f26                	c.mv	t5,s1
   15262:	8eea                	c.mv	t4,s10
   15264:	89e2                	c.mv	s3,s8
   15266:	4e62                	c.lwsp	t3,24(sp)
   15268:	4822                	c.lwsp	a6,8(sp)
   1526a:	4d42                	c.lwsp	s10,16(sp)
   1526c:	44f2                	c.lwsp	s1,28(sp)
   1526e:	5ba2                	c.lwsp	s7,40(sp)
   15270:	8c7a                	c.mv	s8,t5
   15272:	bc49                	c.j	14d04 <__gdtoa+0x99a>
   15274:	5722                	c.lwsp	a4,40(sp)
   15276:	dc0703e3          	beq	a4,zero,1503c <__gdtoa+0xcd2>
   1527a:	4736                	c.lwsp	a4,76(sp)
   1527c:	e0e051e3          	bge	zero,a4,1507e <__gdtoa+0xd14>
   15280:	ee01b787          	fld	fa5,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   15284:	3702                	c.fldsp	fa4,32(sp)
   15286:	12f777d3          	fmul.d	fa5,fa4,fa5
   1528a:	fcc00eb7          	lui	t4,0xfcc00
   1528e:	52fd                	c.li	t0,-1
   15290:	b83e                	c.fsdsp	fa5,48(sp)
   15292:	ee81b787          	fld	fa5,-280(gp) # 1b6f8 <__SDATA_BEGIN__+0x40>
   15296:	3742                	c.fldsp	fa4,48(sp)
   15298:	56c2                	c.lwsp	a3,48(sp)
   1529a:	a43e                	c.fsdsp	fa5,8(sp)
   1529c:	26a2                	c.fldsp	fa3,8(sp)
   1529e:	ef01b787          	fld	fa5,-272(gp) # 1b700 <__SDATA_BEGIN__+0x48>
   152a2:	853a                	c.mv	a0,a4
   152a4:	5752                	c.lwsp	a4,52(sp)
   152a6:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   152aa:	a43e                	c.fsdsp	fa5,8(sp)
   152ac:	4322                	c.lwsp	t1,8(sp)
   152ae:	43b2                	c.lwsp	t2,12(sp)
   152b0:	c436                	c.swsp	a3,8(sp)
   152b2:	c63a                	c.swsp	a4,12(sp)
   152b4:	889a                	c.mv	a7,t1
   152b6:	9e9e                	c.add	t4,t2
   152b8:	c18ff06f          	jal	zero,146d0 <__gdtoa+0x366>
   152bc:	03100793          	addi	a5,zero,49
   152c0:	00180313          	addi	t1,a6,1
   152c4:	00f80023          	sb	a5,0(a6)
   152c8:	4581                	c.li	a1,0
   152ca:	8522                	c.mv	a0,s0
   152cc:	cc42                	c.swsp	a6,24(sp)
   152ce:	c21a                	c.swsp	t1,4(sp)
   152d0:	239d                	c.jal	15836 <_Bfree>
   152d2:	4312                	c.lwsp	t1,4(sp)
   152d4:	4862                	c.lwsp	a6,24(sp)
   152d6:	4909                	c.li	s2,2
   152d8:	02000b13          	addi	s6,zero,32
   152dc:	cb4ff06f          	jal	zero,14790 <__gdtoa+0x426>
   152e0:	03900693          	addi	a3,zero,57
   152e4:	8f26                	c.mv	t5,s1
   152e6:	8eea                	c.mv	t4,s10
   152e8:	4e62                	c.lwsp	t3,24(sp)
   152ea:	4822                	c.lwsp	a6,8(sp)
   152ec:	4d42                	c.lwsp	s10,16(sp)
   152ee:	44f2                	c.lwsp	s1,28(sp)
   152f0:	5ba2                	c.lwsp	s7,40(sp)
   152f2:	c6da8ae3          	beq	s5,a3,14f66 <__gdtoa+0xbfc>
   152f6:	001a8793          	addi	a5,s5,1
   152fa:	89e2                	c.mv	s3,s8
   152fc:	00fd8023          	sb	a5,0(s11)
   15300:	001d8313          	addi	t1,s11,1
   15304:	8c7a                	c.mv	s8,t5
   15306:	02000b13          	addi	s6,zero,32
   1530a:	8a1ff06f          	jal	zero,14baa <__gdtoa+0x840>
   1530e:	ceb6                	c.swsp	a3,92(sp)
   15310:	8336                	c.mv	t1,a3
   15312:	de6ff06f          	jal	zero,148f8 <__gdtoa+0x58e>
   15316:	85e2                	c.mv	a1,s8
   15318:	4681                	c.li	a3,0
   1531a:	4629                	c.li	a2,10
   1531c:	8522                	c.mv	a0,s0
   1531e:	232d                	c.jal	15848 <__multadd>
   15320:	8c2a                	c.mv	s8,a0
   15322:	a4050063          	beq	a0,zero,14562 <__gdtoa+0x1f8>
   15326:	47b6                	c.lwsp	a5,76(sp)
   15328:	4e12                	c.lwsp	t3,4(sp)
   1532a:	4ea2                	c.lwsp	t4,8(sp)
   1532c:	d43e                	c.swsp	a5,40(sp)
   1532e:	4842                	c.lwsp	a6,16(sp)
   15330:	e6f04c63          	blt	zero,a5,149a8 <__gdtoa+0x63e>
   15334:	4789                	c.li	a5,2
   15336:	e727d963          	bge	a5,s2,149a8 <__gdtoa+0x63e>
   1533a:	b4ad                	c.j	14da4 <__gdtoa+0xa3a>
   1533c:	d2000753          	fcvt.d.w	fa4,zero
   15340:	00128913          	addi	s2,t0,1
   15344:	a2e7ab53          	feq.d	s6,fa5,fa4
   15348:	001b3b13          	sltiu	s6,s6,1
   1534c:	0b12                	c.slli	s6,0x4
   1534e:	c42ff06f          	jal	zero,14790 <__gdtoa+0x426>
   15352:	00128e13          	addi	t3,t0,1
   15356:	c12ff06f          	jal	zero,14768 <__gdtoa+0x3fe>
   1535a:	5682                	c.lwsp	a3,32(sp)
   1535c:	5712                	c.lwsp	a4,36(sp)
   1535e:	c436                	c.swsp	a3,8(sp)
   15360:	c63a                	c.swsp	a4,12(sp)
   15362:	d20c55e3          	bge	s8,zero,1508c <__gdtoa+0xd22>
   15366:	d002                	c.swsp	zero,32(sp)
   15368:	d54ff06f          	jal	zero,148bc <__gdtoa+0x552>
   1536c:	86ba                	c.mv	a3,a4
   1536e:	177d                	c.addi	a4,-1
   15370:	b8eacde3          	blt	s5,a4,14f0a <__gdtoa+0xba0>
   15374:	40ea8ab3          	sub	s5,s5,a4
   15378:	ceb6                	c.swsp	a3,92(sp)
   1537a:	8336                	c.mv	t1,a3
   1537c:	d7cff06f          	jal	zero,148f8 <__gdtoa+0x58e>
   15380:	03900693          	addi	a3,zero,57
   15384:	895e                	c.mv	s2,s7
   15386:	8f26                	c.mv	t5,s1
   15388:	8eea                	c.mv	t4,s10
   1538a:	4e62                	c.lwsp	t3,24(sp)
   1538c:	4822                	c.lwsp	a6,8(sp)
   1538e:	4d42                	c.lwsp	s10,16(sp)
   15390:	44f2                	c.lwsp	s1,28(sp)
   15392:	5ba2                	c.lwsp	s7,40(sp)
   15394:	bcda89e3          	beq	s5,a3,14f66 <__gdtoa+0xbfc>
   15398:	09405163          	bge	zero,s4,1541a <__gdtoa+0x10b0>
   1539c:	03190a93          	addi	s5,s2,49
   153a0:	02000b13          	addi	s6,zero,32
   153a4:	89e2                	c.mv	s3,s8
   153a6:	015d8023          	sb	s5,0(s11)
   153aa:	001d8313          	addi	t1,s11,1
   153ae:	8c7a                	c.mv	s8,t5
   153b0:	ffaff06f          	jal	zero,14baa <__gdtoa+0x840>
   153b4:	d20007d3          	fcvt.d.w	fa5,zero
   153b8:	879a                	c.mv	a5,t1
   153ba:	00128e13          	addi	t3,t0,1
   153be:	a2f5ab53          	feq.d	s6,fa1,fa5
   153c2:	001b3b13          	sltiu	s6,s6,1
   153c6:	0b12                	c.slli	s6,0x4
   153c8:	b369                	c.j	15152 <__gdtoa+0xde8>
   153ca:	e509                	c.bnez	a0,153d4 <__gdtoa+0x106a>
   153cc:	001af693          	andi	a3,s5,1
   153d0:	de0695e3          	bne	a3,zero,151ba <__gdtoa+0xe50>
   153d4:	02000793          	addi	a5,zero,32
   153d8:	d03e                	c.swsp	a5,32(sp)
   153da:	fb6ff06f          	jal	zero,14b90 <__gdtoa+0x826>
   153de:	014ca683          	lw	a3,20(s9)
   153e2:	fa069f63          	bne	a3,zero,14ba0 <__gdtoa+0x836>
   153e6:	5b02                	c.lwsp	s6,32(sp)
   153e8:	fb8ff06f          	jal	zero,14ba0 <__gdtoa+0x836>
   153ec:	87ee                	c.mv	a5,s11
   153ee:	03900693          	addi	a3,zero,57
   153f2:	8da6                	c.mv	s11,s1
   153f4:	4e12                	c.lwsp	t3,4(sp)
   153f6:	84de                	c.mv	s1,s7
   153f8:	8f52                	c.mv	t5,s4
   153fa:	8eda                	c.mv	t4,s6
   153fc:	8856                	c.mv	a6,s5
   153fe:	8bbe                	c.mv	s7,a5
   15400:	02d98963          	beq	s3,a3,15432 <__gdtoa+0x10c8>
   15404:	00198a93          	addi	s5,s3,1
   15408:	02000b13          	addi	s6,zero,32
   1540c:	f94ff06f          	jal	zero,14ba0 <__gdtoa+0x836>
   15410:	4b41                	c.li	s6,16
   15412:	001d8913          	addi	s2,s11,1
   15416:	f8aff06f          	jal	zero,14ba0 <__gdtoa+0x836>
   1541a:	010ca603          	lw	a2,16(s9)
   1541e:	4685                	c.li	a3,1
   15420:	4b41                	c.li	s6,16
   15422:	f8c6c1e3          	blt	a3,a2,153a4 <__gdtoa+0x103a>
   15426:	014cab03          	lw	s6,20(s9)
   1542a:	01603b33          	sltu	s6,zero,s6
   1542e:	0b12                	c.slli	s6,0x4
   15430:	bf95                	c.j	153a4 <__gdtoa+0x103a>
   15432:	89e2                	c.mv	s3,s8
   15434:	87ee                	c.mv	a5,s11
   15436:	8c2e                	c.mv	s8,a1
   15438:	be25                	c.j	14f70 <__gdtoa+0xc06>
   1543a:	002e0913          	addi	s2,t3,2
   1543e:	02000b13          	addi	s6,zero,32
   15442:	b4eff06f          	jal	zero,14790 <__gdtoa+0x426>
   15446:	010ca603          	lw	a2,16(s9)
   1544a:	4685                	c.li	a3,1
   1544c:	e6c6c563          	blt	a3,a2,14ab6 <__gdtoa+0x74c>
   15450:	014ca683          	lw	a3,20(s9)
   15454:	e6069163          	bne	a3,zero,14ab6 <__gdtoa+0x74c>
   15458:	001d8913          	addi	s2,s11,1
   1545c:	f44ff06f          	jal	zero,14ba0 <__gdtoa+0x836>
   15460:	000a4e63          	blt	s4,zero,1547c <__gdtoa+0x1112>
   15464:	012a6a33          	or	s4,s4,s2
   15468:	000a1663          	bne	s4,zero,15474 <__gdtoa+0x110a>
   1546c:	0009a783          	lw	a5,0(s3)
   15470:	8b85                	c.andi	a5,1
   15472:	c789                	c.beqz	a5,1547c <__gdtoa+0x1112>
   15474:	d6d05f63          	bge	zero,a3,149f2 <__gdtoa+0x688>
   15478:	d72ff06f          	jal	zero,149ea <__gdtoa+0x680>
   1547c:	5782                	c.lwsp	a5,32(sp)
   1547e:	895e                	c.mv	s2,s7
   15480:	8f26                	c.mv	t5,s1
   15482:	8eea                	c.mv	t4,s10
   15484:	4e62                	c.lwsp	t3,24(sp)
   15486:	4822                	c.lwsp	a6,8(sp)
   15488:	4d42                	c.lwsp	s10,16(sp)
   1548a:	44f2                	c.lwsp	s1,28(sp)
   1548c:	5ba2                	c.lwsp	s7,40(sp)
   1548e:	e781                	c.bnez	a5,15496 <__gdtoa+0x112c>
   15490:	f0d05063          	bge	zero,a3,14b90 <__gdtoa+0x826>
   15494:	b9ed                	c.j	1518e <__gdtoa+0xe24>
   15496:	010ca583          	lw	a1,16(s9)
   1549a:	4605                	c.li	a2,1
   1549c:	e0b64d63          	blt	a2,a1,14ab6 <__gdtoa+0x74c>
   154a0:	014ca603          	lw	a2,20(s9)
   154a4:	e0061963          	bne	a2,zero,14ab6 <__gdtoa+0x74c>
   154a8:	ced043e3          	blt	zero,a3,1518e <__gdtoa+0xe24>
   154ac:	4b01                	c.li	s6,0
   154ae:	001d8913          	addi	s2,s11,1
   154b2:	eeeff06f          	jal	zero,14ba0 <__gdtoa+0x836>

000154b6 <__rv_alloc_D2A.part.0>:
   154b6:	66e9                	c.lui	a3,0x1a
   154b8:	6569                	c.lui	a0,0x1a
   154ba:	1141                	c.addi	sp,-16
   154bc:	78468693          	addi	a3,a3,1924 # 1a784 <__clzsi2+0xa4>
   154c0:	79850513          	addi	a0,a0,1944 # 1a798 <__clzsi2+0xb8>
   154c4:	4601                	c.li	a2,0
   154c6:	03900593          	addi	a1,zero,57
   154ca:	c606                	c.swsp	ra,12(sp)
   154cc:	710010ef          	jal	ra,16bdc <__assert_func>

000154d0 <__rv_alloc_D2A>:
   154d0:	1141                	c.addi	sp,-16
   154d2:	c422                	c.swsp	s0,8(sp)
   154d4:	c606                	c.swsp	ra,12(sp)
   154d6:	46dd                	c.li	a3,23
   154d8:	842a                	c.mv	s0,a0
   154da:	4705                	c.li	a4,1
   154dc:	4791                	c.li	a5,4
   154de:	02b6f363          	bgeu	a3,a1,15504 <__rv_alloc_D2A+0x34>
   154e2:	0786                	c.slli	a5,0x1
   154e4:	01478693          	addi	a3,a5,20
   154e8:	863a                	c.mv	a2,a4
   154ea:	0705                	c.addi	a4,1
   154ec:	fed5fbe3          	bgeu	a1,a3,154e2 <__rv_alloc_D2A+0x12>
   154f0:	85b2                	c.mv	a1,a2
   154f2:	dc50                	c.sw	a2,60(s0)
   154f4:	8522                	c.mv	a0,s0
   154f6:	2cd9                	c.jal	157cc <_Balloc>
   154f8:	c911                	c.beqz	a0,1550c <__rv_alloc_D2A+0x3c>
   154fa:	40b2                	c.lwsp	ra,12(sp)
   154fc:	dc08                	c.sw	a0,56(s0)
   154fe:	4422                	c.lwsp	s0,8(sp)
   15500:	0141                	c.addi	sp,16
   15502:	8082                	c.jr	ra
   15504:	02052e23          	sw	zero,60(a0)
   15508:	4581                	c.li	a1,0
   1550a:	b7ed                	c.j	154f4 <__rv_alloc_D2A+0x24>
   1550c:	376d                	c.jal	154b6 <__rv_alloc_D2A.part.0>

0001550e <__nrv_alloc_D2A>:
   1550e:	1141                	c.addi	sp,-16
   15510:	c422                	c.swsp	s0,8(sp)
   15512:	c226                	c.swsp	s1,4(sp)
   15514:	c04a                	c.swsp	s2,0(sp)
   15516:	c606                	c.swsp	ra,12(sp)
   15518:	485d                	c.li	a6,23
   1551a:	84aa                	c.mv	s1,a0
   1551c:	842e                	c.mv	s0,a1
   1551e:	8932                	c.mv	s2,a2
   15520:	4705                	c.li	a4,1
   15522:	4791                	c.li	a5,4
   15524:	04d87763          	bgeu	a6,a3,15572 <__nrv_alloc_D2A+0x64>
   15528:	0786                	c.slli	a5,0x1
   1552a:	01478813          	addi	a6,a5,20
   1552e:	85ba                	c.mv	a1,a4
   15530:	0705                	c.addi	a4,1
   15532:	ff06fbe3          	bgeu	a3,a6,15528 <__nrv_alloc_D2A+0x1a>
   15536:	dccc                	c.sw	a1,60(s1)
   15538:	8526                	c.mv	a0,s1
   1553a:	2c49                	c.jal	157cc <_Balloc>
   1553c:	c129                	c.beqz	a0,1557e <__nrv_alloc_D2A+0x70>
   1553e:	dc88                	c.sw	a0,56(s1)
   15540:	00044783          	lbu	a5,0(s0)
   15544:	00140593          	addi	a1,s0,1
   15548:	00f50023          	sb	a5,0(a0)
   1554c:	c79d                	c.beqz	a5,1557a <__nrv_alloc_D2A+0x6c>
   1554e:	87aa                	c.mv	a5,a0
   15550:	0005c703          	lbu	a4,0(a1)
   15554:	0585                	c.addi	a1,1
   15556:	0785                	c.addi	a5,1
   15558:	00e78023          	sb	a4,0(a5)
   1555c:	fb75                	c.bnez	a4,15550 <__nrv_alloc_D2A+0x42>
   1555e:	00090463          	beq	s2,zero,15566 <__nrv_alloc_D2A+0x58>
   15562:	00f92023          	sw	a5,0(s2)
   15566:	40b2                	c.lwsp	ra,12(sp)
   15568:	4422                	c.lwsp	s0,8(sp)
   1556a:	4492                	c.lwsp	s1,4(sp)
   1556c:	4902                	c.lwsp	s2,0(sp)
   1556e:	0141                	c.addi	sp,16
   15570:	8082                	c.jr	ra
   15572:	02052e23          	sw	zero,60(a0)
   15576:	4581                	c.li	a1,0
   15578:	b7c1                	c.j	15538 <__nrv_alloc_D2A+0x2a>
   1557a:	87aa                	c.mv	a5,a0
   1557c:	b7cd                	c.j	1555e <__nrv_alloc_D2A+0x50>
   1557e:	3f25                	c.jal	154b6 <__rv_alloc_D2A.part.0>

00015580 <__freedtoa>:
   15580:	5d54                	c.lw	a3,60(a0)
   15582:	4705                	c.li	a4,1
   15584:	00d71733          	sll	a4,a4,a3
   15588:	c598                	c.sw	a4,8(a1)
   1558a:	c1d4                	c.sw	a3,4(a1)
   1558c:	a46d                	c.j	15836 <_Bfree>

0001558e <__quorem_D2A>:
   1558e:	1101                	c.addi	sp,-32
   15590:	ca26                	c.swsp	s1,20(sp)
   15592:	491c                	c.lw	a5,16(a0)
   15594:	4984                	c.lw	s1,16(a1)
   15596:	ce06                	c.swsp	ra,28(sp)
   15598:	1497c663          	blt	a5,s1,156e4 <__quorem_D2A+0x156>
   1559c:	14fd                	c.addi	s1,-1
   1559e:	00249893          	slli	a7,s1,0x2
   155a2:	cc22                	c.swsp	s0,24(sp)
   155a4:	01458413          	addi	s0,a1,20
   155a8:	c64e                	c.swsp	s3,12(sp)
   155aa:	c452                	c.swsp	s4,8(sp)
   155ac:	011409b3          	add	s3,s0,a7
   155b0:	01450a13          	addi	s4,a0,20
   155b4:	0009a783          	lw	a5,0(s3)
   155b8:	98d2                	c.add	a7,s4
   155ba:	0008a703          	lw	a4,0(a7)
   155be:	c84a                	c.swsp	s2,16(sp)
   155c0:	c256                	c.swsp	s5,4(sp)
   155c2:	0785                	c.addi	a5,1
   155c4:	02f75933          	divu	s2,a4,a5
   155c8:	8aaa                	c.mv	s5,a0
   155ca:	08f76863          	bltu	a4,a5,1565a <__quorem_D2A+0xcc>
   155ce:	8822                	c.mv	a6,s0
   155d0:	8552                	c.mv	a0,s4
   155d2:	4e81                	c.li	t4,0
   155d4:	4e01                	c.li	t3,0
   155d6:	00082783          	lw	a5,0(a6)
   155da:	4110                	c.lw	a2,0(a0)
   155dc:	0511                	c.addi	a0,4
   155de:	01079693          	slli	a3,a5,0x10
   155e2:	82c1                	c.srli	a3,0x10
   155e4:	83c1                	c.srli	a5,0x10
   155e6:	01061713          	slli	a4,a2,0x10
   155ea:	01065313          	srli	t1,a2,0x10
   155ee:	8341                	c.srli	a4,0x10
   155f0:	0811                	c.addi	a6,4
   155f2:	032686b3          	mul	a3,a3,s2
   155f6:	032787b3          	mul	a5,a5,s2
   155fa:	96f6                	c.add	a3,t4
   155fc:	01069613          	slli	a2,a3,0x10
   15600:	8241                	c.srli	a2,0x10
   15602:	82c1                	c.srli	a3,0x10
   15604:	8f11                	c.sub	a4,a2
   15606:	41c70733          	sub	a4,a4,t3
   1560a:	01075613          	srli	a2,a4,0x10
   1560e:	8a05                	c.andi	a2,1
   15610:	0742                	c.slli	a4,0x10
   15612:	97b6                	c.add	a5,a3
   15614:	01079693          	slli	a3,a5,0x10
   15618:	82c1                	c.srli	a3,0x10
   1561a:	96b2                	c.add	a3,a2
   1561c:	0107de93          	srli	t4,a5,0x10
   15620:	40d307b3          	sub	a5,t1,a3
   15624:	01079693          	slli	a3,a5,0x10
   15628:	8341                	c.srli	a4,0x10
   1562a:	8f55                	c.or	a4,a3
   1562c:	83c1                	c.srli	a5,0x10
   1562e:	fee52e23          	sw	a4,-4(a0)
   15632:	0017fe13          	andi	t3,a5,1
   15636:	fb09f0e3          	bgeu	s3,a6,155d6 <__quorem_D2A+0x48>
   1563a:	0008a783          	lw	a5,0(a7)
   1563e:	ef91                	c.bnez	a5,1565a <__quorem_D2A+0xcc>
   15640:	18f1                	c.addi	a7,-4
   15642:	011a6663          	bltu	s4,a7,1564e <__quorem_D2A+0xc0>
   15646:	a801                	c.j	15656 <__quorem_D2A+0xc8>
   15648:	14fd                	c.addi	s1,-1
   1564a:	011a7663          	bgeu	s4,a7,15656 <__quorem_D2A+0xc8>
   1564e:	0008a783          	lw	a5,0(a7)
   15652:	18f1                	c.addi	a7,-4
   15654:	dbf5                	c.beqz	a5,15648 <__quorem_D2A+0xba>
   15656:	009aa823          	sw	s1,16(s5)
   1565a:	8556                	c.mv	a0,s5
   1565c:	0a3000ef          	jal	ra,15efe <__mcmp>
   15660:	06054863          	blt	a0,zero,156d0 <__quorem_D2A+0x142>
   15664:	85d2                	c.mv	a1,s4
   15666:	4501                	c.li	a0,0
   15668:	419c                	c.lw	a5,0(a1)
   1566a:	4014                	c.lw	a3,0(s0)
   1566c:	0591                	c.addi	a1,4
   1566e:	01079713          	slli	a4,a5,0x10
   15672:	01069813          	slli	a6,a3,0x10
   15676:	01085813          	srli	a6,a6,0x10
   1567a:	8341                	c.srli	a4,0x10
   1567c:	41070733          	sub	a4,a4,a6
   15680:	8f09                	c.sub	a4,a0
   15682:	0106d613          	srli	a2,a3,0x10
   15686:	01075693          	srli	a3,a4,0x10
   1568a:	8a85                	c.andi	a3,1
   1568c:	96b2                	c.add	a3,a2
   1568e:	83c1                	c.srli	a5,0x10
   15690:	8f95                	c.sub	a5,a3
   15692:	0742                	c.slli	a4,0x10
   15694:	01079693          	slli	a3,a5,0x10
   15698:	8341                	c.srli	a4,0x10
   1569a:	8f55                	c.or	a4,a3
   1569c:	0411                	c.addi	s0,4
   1569e:	83c1                	c.srli	a5,0x10
   156a0:	fee5ae23          	sw	a4,-4(a1)
   156a4:	0017f513          	andi	a0,a5,1
   156a8:	fc89f0e3          	bgeu	s3,s0,15668 <__quorem_D2A+0xda>
   156ac:	00249793          	slli	a5,s1,0x2
   156b0:	97d2                	c.add	a5,s4
   156b2:	4398                	c.lw	a4,0(a5)
   156b4:	ef09                	c.bnez	a4,156ce <__quorem_D2A+0x140>
   156b6:	17f1                	c.addi	a5,-4
   156b8:	00fa6663          	bltu	s4,a5,156c4 <__quorem_D2A+0x136>
   156bc:	a039                	c.j	156ca <__quorem_D2A+0x13c>
   156be:	14fd                	c.addi	s1,-1
   156c0:	00fa7563          	bgeu	s4,a5,156ca <__quorem_D2A+0x13c>
   156c4:	4398                	c.lw	a4,0(a5)
   156c6:	17f1                	c.addi	a5,-4
   156c8:	db7d                	c.beqz	a4,156be <__quorem_D2A+0x130>
   156ca:	009aa823          	sw	s1,16(s5)
   156ce:	0905                	c.addi	s2,1
   156d0:	4462                	c.lwsp	s0,24(sp)
   156d2:	40f2                	c.lwsp	ra,28(sp)
   156d4:	49b2                	c.lwsp	s3,12(sp)
   156d6:	4a22                	c.lwsp	s4,8(sp)
   156d8:	4a92                	c.lwsp	s5,4(sp)
   156da:	44d2                	c.lwsp	s1,20(sp)
   156dc:	854a                	c.mv	a0,s2
   156de:	4942                	c.lwsp	s2,16(sp)
   156e0:	6105                	c.addi16sp	sp,32
   156e2:	8082                	c.jr	ra
   156e4:	40f2                	c.lwsp	ra,28(sp)
   156e6:	44d2                	c.lwsp	s1,20(sp)
   156e8:	4501                	c.li	a0,0
   156ea:	6105                	c.addi16sp	sp,32
   156ec:	8082                	c.jr	ra

000156ee <__rshift_D2A>:
   156ee:	01052803          	lw	a6,16(a0)
   156f2:	4055de13          	srai	t3,a1,0x5
   156f6:	010e4763          	blt	t3,a6,15704 <__rshift_D2A+0x16>
   156fa:	00052823          	sw	zero,16(a0)
   156fe:	00052a23          	sw	zero,20(a0)
   15702:	8082                	c.jr	ra
   15704:	01450313          	addi	t1,a0,20
   15708:	00281613          	slli	a2,a6,0x2
   1570c:	002e1793          	slli	a5,t3,0x2
   15710:	89fd                	c.andi	a1,31
   15712:	961a                	c.add	a2,t1
   15714:	979a                	c.add	a5,t1
   15716:	c5a1                	c.beqz	a1,1575e <__rshift_D2A+0x70>
   15718:	4394                	c.lw	a3,0(a5)
   1571a:	02000e93          	addi	t4,zero,32
   1571e:	0791                	c.addi	a5,4
   15720:	00b6d6b3          	srl	a3,a3,a1
   15724:	40be8eb3          	sub	t4,t4,a1
   15728:	06c7f063          	bgeu	a5,a2,15788 <__rshift_D2A+0x9a>
   1572c:	889a                	c.mv	a7,t1
   1572e:	4398                	c.lw	a4,0(a5)
   15730:	0891                	c.addi	a7,4
   15732:	0791                	c.addi	a5,4
   15734:	01d71733          	sll	a4,a4,t4
   15738:	8f55                	c.or	a4,a3
   1573a:	fee8ae23          	sw	a4,-4(a7)
   1573e:	ffc7a683          	lw	a3,-4(a5)
   15742:	00b6d6b3          	srl	a3,a3,a1
   15746:	fec7e4e3          	bltu	a5,a2,1572e <__rshift_D2A+0x40>
   1574a:	41c80833          	sub	a6,a6,t3
   1574e:	080a                	c.slli	a6,0x2
   15750:	981a                	c.add	a6,t1
   15752:	fed82e23          	sw	a3,-4(a6)
   15756:	1871                	c.addi	a6,-4
   15758:	c28d                	c.beqz	a3,1577a <__rshift_D2A+0x8c>
   1575a:	0811                	c.addi	a6,4
   1575c:	a839                	c.j	1577a <__rshift_D2A+0x8c>
   1575e:	871a                	c.mv	a4,t1
   15760:	f8c7fde3          	bgeu	a5,a2,156fa <__rshift_D2A+0xc>
   15764:	4394                	c.lw	a3,0(a5)
   15766:	0791                	c.addi	a5,4
   15768:	0711                	c.addi	a4,4
   1576a:	fed72e23          	sw	a3,-4(a4)
   1576e:	fec7ebe3          	bltu	a5,a2,15764 <__rshift_D2A+0x76>
   15772:	41c80833          	sub	a6,a6,t3
   15776:	080a                	c.slli	a6,0x2
   15778:	981a                	c.add	a6,t1
   1577a:	406807b3          	sub	a5,a6,t1
   1577e:	8789                	c.srai	a5,0x2
   15780:	c91c                	c.sw	a5,16(a0)
   15782:	f6680ee3          	beq	a6,t1,156fe <__rshift_D2A+0x10>
   15786:	8082                	c.jr	ra
   15788:	c954                	c.sw	a3,20(a0)
   1578a:	daa5                	c.beqz	a3,156fa <__rshift_D2A+0xc>
   1578c:	881a                	c.mv	a6,t1
   1578e:	0811                	c.addi	a6,4
   15790:	b7ed                	c.j	1577a <__rshift_D2A+0x8c>

00015792 <__trailz_D2A>:
   15792:	4918                	c.lw	a4,16(a0)
   15794:	1101                	c.addi	sp,-32
   15796:	0551                	c.addi	a0,20
   15798:	070a                	c.slli	a4,0x2
   1579a:	cc22                	c.swsp	s0,24(sp)
   1579c:	ce06                	c.swsp	ra,28(sp)
   1579e:	972a                	c.add	a4,a0
   157a0:	4401                	c.li	s0,0
   157a2:	00e56863          	bltu	a0,a4,157b2 <__trailz_D2A+0x20>
   157a6:	a831                	c.j	157c2 <__trailz_D2A+0x30>
   157a8:	0511                	c.addi	a0,4
   157aa:	02040413          	addi	s0,s0,32
   157ae:	00e57a63          	bgeu	a0,a4,157c2 <__trailz_D2A+0x30>
   157b2:	411c                	c.lw	a5,0(a0)
   157b4:	dbf5                	c.beqz	a5,157a8 <__trailz_D2A+0x16>
   157b6:	00e57663          	bgeu	a0,a4,157c2 <__trailz_D2A+0x30>
   157ba:	0068                	c.addi4spn	a0,sp,12
   157bc:	c63e                	c.swsp	a5,12(sp)
   157be:	244d                	c.jal	15a60 <__lo0bits>
   157c0:	942a                	c.add	s0,a0
   157c2:	40f2                	c.lwsp	ra,28(sp)
   157c4:	8522                	c.mv	a0,s0
   157c6:	4462                	c.lwsp	s0,24(sp)
   157c8:	6105                	c.addi16sp	sp,32
   157ca:	8082                	c.jr	ra

000157cc <_Balloc>:
   157cc:	417c                	c.lw	a5,68(a0)
   157ce:	1141                	c.addi	sp,-16
   157d0:	c422                	c.swsp	s0,8(sp)
   157d2:	c226                	c.swsp	s1,4(sp)
   157d4:	c606                	c.swsp	ra,12(sp)
   157d6:	842a                	c.mv	s0,a0
   157d8:	84ae                	c.mv	s1,a1
   157da:	c38d                	c.beqz	a5,157fc <_Balloc+0x30>
   157dc:	00249713          	slli	a4,s1,0x2
   157e0:	97ba                	c.add	a5,a4
   157e2:	4388                	c.lw	a0,0(a5)
   157e4:	c515                	c.beqz	a0,15810 <_Balloc+0x44>
   157e6:	4118                	c.lw	a4,0(a0)
   157e8:	c398                	c.sw	a4,0(a5)
   157ea:	00052823          	sw	zero,16(a0)
   157ee:	00052623          	sw	zero,12(a0)
   157f2:	40b2                	c.lwsp	ra,12(sp)
   157f4:	4422                	c.lwsp	s0,8(sp)
   157f6:	4492                	c.lwsp	s1,4(sp)
   157f8:	0141                	c.addi	sp,16
   157fa:	8082                	c.jr	ra
   157fc:	02100613          	addi	a2,zero,33
   15800:	4591                	c.li	a1,4
   15802:	418010ef          	jal	ra,16c1a <_calloc_r>
   15806:	c068                	c.sw	a0,68(s0)
   15808:	87aa                	c.mv	a5,a0
   1580a:	f969                	c.bnez	a0,157dc <_Balloc+0x10>
   1580c:	4501                	c.li	a0,0
   1580e:	b7d5                	c.j	157f2 <_Balloc+0x26>
   15810:	4585                	c.li	a1,1
   15812:	c04a                	c.swsp	s2,0(sp)
   15814:	00959933          	sll	s2,a1,s1
   15818:	00590613          	addi	a2,s2,5
   1581c:	8522                	c.mv	a0,s0
   1581e:	060a                	c.slli	a2,0x2
   15820:	3fa010ef          	jal	ra,16c1a <_calloc_r>
   15824:	c511                	c.beqz	a0,15830 <_Balloc+0x64>
   15826:	01252423          	sw	s2,8(a0)
   1582a:	c144                	c.sw	s1,4(a0)
   1582c:	4902                	c.lwsp	s2,0(sp)
   1582e:	bf75                	c.j	157ea <_Balloc+0x1e>
   15830:	4902                	c.lwsp	s2,0(sp)
   15832:	4501                	c.li	a0,0
   15834:	bf7d                	c.j	157f2 <_Balloc+0x26>

00015836 <_Bfree>:
   15836:	c981                	c.beqz	a1,15846 <_Bfree+0x10>
   15838:	41d8                	c.lw	a4,4(a1)
   1583a:	417c                	c.lw	a5,68(a0)
   1583c:	070a                	c.slli	a4,0x2
   1583e:	97ba                	c.add	a5,a4
   15840:	4398                	c.lw	a4,0(a5)
   15842:	c198                	c.sw	a4,0(a1)
   15844:	c38c                	c.sw	a1,0(a5)
   15846:	8082                	c.jr	ra

00015848 <__multadd>:
   15848:	1101                	c.addi	sp,-32
   1584a:	ca26                	c.swsp	s1,20(sp)
   1584c:	4984                	c.lw	s1,16(a1)
   1584e:	cc22                	c.swsp	s0,24(sp)
   15850:	c84a                	c.swsp	s2,16(sp)
   15852:	c64e                	c.swsp	s3,12(sp)
   15854:	ce06                	c.swsp	ra,28(sp)
   15856:	892e                	c.mv	s2,a1
   15858:	89aa                	c.mv	s3,a0
   1585a:	8436                	c.mv	s0,a3
   1585c:	01458813          	addi	a6,a1,20
   15860:	4881                	c.li	a7,0
   15862:	00082783          	lw	a5,0(a6)
   15866:	0811                	c.addi	a6,4
   15868:	0885                	c.addi	a7,1
   1586a:	01079713          	slli	a4,a5,0x10
   1586e:	8341                	c.srli	a4,0x10
   15870:	0107d693          	srli	a3,a5,0x10
   15874:	02c707b3          	mul	a5,a4,a2
   15878:	02c686b3          	mul	a3,a3,a2
   1587c:	97a2                	c.add	a5,s0
   1587e:	0107d713          	srli	a4,a5,0x10
   15882:	07c2                	c.slli	a5,0x10
   15884:	83c1                	c.srli	a5,0x10
   15886:	96ba                	c.add	a3,a4
   15888:	01069713          	slli	a4,a3,0x10
   1588c:	97ba                	c.add	a5,a4
   1588e:	fef82e23          	sw	a5,-4(a6)
   15892:	0106d413          	srli	s0,a3,0x10
   15896:	fc98c6e3          	blt	a7,s1,15862 <__multadd+0x1a>
   1589a:	cc09                	c.beqz	s0,158b4 <__multadd+0x6c>
   1589c:	00892783          	lw	a5,8(s2)
   158a0:	02f4d263          	bge	s1,a5,158c4 <__multadd+0x7c>
   158a4:	00249713          	slli	a4,s1,0x2
   158a8:	974a                	c.add	a4,s2
   158aa:	cb40                	c.sw	s0,20(a4)
   158ac:	00148793          	addi	a5,s1,1
   158b0:	00f92823          	sw	a5,16(s2)
   158b4:	40f2                	c.lwsp	ra,28(sp)
   158b6:	4462                	c.lwsp	s0,24(sp)
   158b8:	44d2                	c.lwsp	s1,20(sp)
   158ba:	49b2                	c.lwsp	s3,12(sp)
   158bc:	854a                	c.mv	a0,s2
   158be:	4942                	c.lwsp	s2,16(sp)
   158c0:	6105                	c.addi16sp	sp,32
   158c2:	8082                	c.jr	ra
   158c4:	00492583          	lw	a1,4(s2)
   158c8:	854e                	c.mv	a0,s3
   158ca:	c452                	c.swsp	s4,8(sp)
   158cc:	0585                	c.addi	a1,1
   158ce:	3dfd                	c.jal	157cc <_Balloc>
   158d0:	8a2a                	c.mv	s4,a0
   158d2:	c121                	c.beqz	a0,15912 <__multadd+0xca>
   158d4:	01092603          	lw	a2,16(s2)
   158d8:	00c90593          	addi	a1,s2,12
   158dc:	0531                	c.addi	a0,12
   158de:	0609                	c.addi	a2,2
   158e0:	060a                	c.slli	a2,0x2
   158e2:	da2fe0ef          	jal	ra,13e84 <memcpy>
   158e6:	00492703          	lw	a4,4(s2)
   158ea:	0449a783          	lw	a5,68(s3)
   158ee:	070a                	c.slli	a4,0x2
   158f0:	97ba                	c.add	a5,a4
   158f2:	4398                	c.lw	a4,0(a5)
   158f4:	00e92023          	sw	a4,0(s2)
   158f8:	0127a023          	sw	s2,0(a5)
   158fc:	00249713          	slli	a4,s1,0x2
   15900:	8952                	c.mv	s2,s4
   15902:	974a                	c.add	a4,s2
   15904:	4a22                	c.lwsp	s4,8(sp)
   15906:	00148793          	addi	a5,s1,1
   1590a:	cb40                	c.sw	s0,20(a4)
   1590c:	00f92823          	sw	a5,16(s2)
   15910:	b755                	c.j	158b4 <__multadd+0x6c>
   15912:	66e9                	c.lui	a3,0x1a
   15914:	6569                	c.lui	a0,0x1a
   15916:	78468693          	addi	a3,a3,1924 # 1a784 <__clzsi2+0xa4>
   1591a:	7fc50513          	addi	a0,a0,2044 # 1a7fc <__clzsi2+0x11c>
   1591e:	4601                	c.li	a2,0
   15920:	0ba00593          	addi	a1,zero,186
   15924:	2b8010ef          	jal	ra,16bdc <__assert_func>

00015928 <__s2b>:
   15928:	1101                	c.addi	sp,-32
   1592a:	c64e                	c.swsp	s3,12(sp)
   1592c:	89b6                	c.mv	s3,a3
   1592e:	38e396b7          	lui	a3,0x38e39
   15932:	00898793          	addi	a5,s3,8
   15936:	e3968693          	addi	a3,a3,-455 # 38e38e39 <__BSS_END__+0x38e1d3dd>
   1593a:	02d796b3          	mulh	a3,a5,a3
   1593e:	cc22                	c.swsp	s0,24(sp)
   15940:	ca26                	c.swsp	s1,20(sp)
   15942:	c84a                	c.swsp	s2,16(sp)
   15944:	c452                	c.swsp	s4,8(sp)
   15946:	842e                	c.mv	s0,a1
   15948:	87fd                	c.srai	a5,0x1f
   1594a:	ce06                	c.swsp	ra,28(sp)
   1594c:	45a5                	c.li	a1,9
   1594e:	892a                	c.mv	s2,a0
   15950:	8685                	c.srai	a3,0x1
   15952:	8a32                	c.mv	s4,a2
   15954:	84ba                	c.mv	s1,a4
   15956:	8e9d                	c.sub	a3,a5
   15958:	0935d263          	bge	a1,s3,159dc <__s2b+0xb4>
   1595c:	4785                	c.li	a5,1
   1595e:	4581                	c.li	a1,0
   15960:	0786                	c.slli	a5,0x1
   15962:	0585                	c.addi	a1,1
   15964:	fed7cee3          	blt	a5,a3,15960 <__s2b+0x38>
   15968:	854a                	c.mv	a0,s2
   1596a:	358d                	c.jal	157cc <_Balloc>
   1596c:	85aa                	c.mv	a1,a0
   1596e:	c92d                	c.beqz	a0,159e0 <__s2b+0xb8>
   15970:	4785                	c.li	a5,1
   15972:	c91c                	c.sw	a5,16(a0)
   15974:	c944                	c.sw	s1,20(a0)
   15976:	47a5                	c.li	a5,9
   15978:	0547df63          	bge	a5,s4,159d6 <__s2b+0xae>
   1597c:	c256                	c.swsp	s5,4(sp)
   1597e:	00f40ab3          	add	s5,s0,a5
   15982:	84d6                	c.mv	s1,s5
   15984:	9452                	c.add	s0,s4
   15986:	0004c683          	lbu	a3,0(s1)
   1598a:	4629                	c.li	a2,10
   1598c:	854a                	c.mv	a0,s2
   1598e:	fd068693          	addi	a3,a3,-48
   15992:	0485                	c.addi	s1,1
   15994:	3d55                	c.jal	15848 <__multadd>
   15996:	85aa                	c.mv	a1,a0
   15998:	fe8497e3          	bne	s1,s0,15986 <__s2b+0x5e>
   1599c:	9ad2                	c.add	s5,s4
   1599e:	ff8a8413          	addi	s0,s5,-8
   159a2:	4a92                	c.lwsp	s5,4(sp)
   159a4:	033a5063          	bge	s4,s3,159c4 <__s2b+0x9c>
   159a8:	414989b3          	sub	s3,s3,s4
   159ac:	99a2                	c.add	s3,s0
   159ae:	00044683          	lbu	a3,0(s0)
   159b2:	4629                	c.li	a2,10
   159b4:	854a                	c.mv	a0,s2
   159b6:	fd068693          	addi	a3,a3,-48
   159ba:	0405                	c.addi	s0,1
   159bc:	3571                	c.jal	15848 <__multadd>
   159be:	85aa                	c.mv	a1,a0
   159c0:	ff3417e3          	bne	s0,s3,159ae <__s2b+0x86>
   159c4:	40f2                	c.lwsp	ra,28(sp)
   159c6:	4462                	c.lwsp	s0,24(sp)
   159c8:	44d2                	c.lwsp	s1,20(sp)
   159ca:	4942                	c.lwsp	s2,16(sp)
   159cc:	49b2                	c.lwsp	s3,12(sp)
   159ce:	4a22                	c.lwsp	s4,8(sp)
   159d0:	852e                	c.mv	a0,a1
   159d2:	6105                	c.addi16sp	sp,32
   159d4:	8082                	c.jr	ra
   159d6:	0429                	c.addi	s0,10
   159d8:	8a3e                	c.mv	s4,a5
   159da:	b7e9                	c.j	159a4 <__s2b+0x7c>
   159dc:	4581                	c.li	a1,0
   159de:	b769                	c.j	15968 <__s2b+0x40>
   159e0:	66e9                	c.lui	a3,0x1a
   159e2:	6569                	c.lui	a0,0x1a
   159e4:	78468693          	addi	a3,a3,1924 # 1a784 <__clzsi2+0xa4>
   159e8:	7fc50513          	addi	a0,a0,2044 # 1a7fc <__clzsi2+0x11c>
   159ec:	4601                	c.li	a2,0
   159ee:	0d300593          	addi	a1,zero,211
   159f2:	c256                	c.swsp	s5,4(sp)
   159f4:	1e8010ef          	jal	ra,16bdc <__assert_func>

000159f8 <__hi0bits>:
   159f8:	87aa                	c.mv	a5,a0
   159fa:	6741                	c.lui	a4,0x10
   159fc:	4501                	c.li	a0,0
   159fe:	00e7f463          	bgeu	a5,a4,15a06 <__hi0bits+0xe>
   15a02:	07c2                	c.slli	a5,0x10
   15a04:	4541                	c.li	a0,16
   15a06:	01000737          	lui	a4,0x1000
   15a0a:	00e7f463          	bgeu	a5,a4,15a12 <__hi0bits+0x1a>
   15a0e:	0521                	c.addi	a0,8
   15a10:	07a2                	c.slli	a5,0x8
   15a12:	10000737          	lui	a4,0x10000
   15a16:	00e7ec63          	bltu	a5,a4,15a2e <__hi0bits+0x36>
   15a1a:	40000737          	lui	a4,0x40000
   15a1e:	02e7f963          	bgeu	a5,a4,15a50 <__hi0bits+0x58>
   15a22:	00279713          	slli	a4,a5,0x2
   15a26:	02074b63          	blt	a4,zero,15a5c <__hi0bits+0x64>
   15a2a:	050d                	c.addi	a0,3
   15a2c:	8082                	c.jr	ra
   15a2e:	00479713          	slli	a4,a5,0x4
   15a32:	400006b7          	lui	a3,0x40000
   15a36:	0511                	c.addi	a0,4
   15a38:	00d77d63          	bgeu	a4,a3,15a52 <__hi0bits+0x5a>
   15a3c:	079a                	c.slli	a5,0x6
   15a3e:	0007cf63          	blt	a5,zero,15a5c <__hi0bits+0x64>
   15a42:	00179713          	slli	a4,a5,0x1
   15a46:	fe0742e3          	blt	a4,zero,15a2a <__hi0bits+0x32>
   15a4a:	02000513          	addi	a0,zero,32
   15a4e:	8082                	c.jr	ra
   15a50:	873e                	c.mv	a4,a5
   15a52:	fff74713          	xori	a4,a4,-1
   15a56:	837d                	c.srli	a4,0x1f
   15a58:	953a                	c.add	a0,a4
   15a5a:	8082                	c.jr	ra
   15a5c:	0509                	c.addi	a0,2
   15a5e:	8082                	c.jr	ra

00015a60 <__lo0bits>:
   15a60:	411c                	c.lw	a5,0(a0)
   15a62:	872a                	c.mv	a4,a0
   15a64:	0077f693          	andi	a3,a5,7
   15a68:	c28d                	c.beqz	a3,15a8a <__lo0bits+0x2a>
   15a6a:	0017f693          	andi	a3,a5,1
   15a6e:	4501                	c.li	a0,0
   15a70:	ee81                	c.bnez	a3,15a88 <__lo0bits+0x28>
   15a72:	0027f693          	andi	a3,a5,2
   15a76:	cabd                	c.beqz	a3,15aec <__lo0bits+0x8c>
   15a78:	8385                	c.srli	a5,0x1
   15a7a:	c31c                	c.sw	a5,0(a4)
   15a7c:	4505                	c.li	a0,1
   15a7e:	8082                	c.jr	ra
   15a80:	838d                	c.srli	a5,0x3
   15a82:	efa5                	c.bnez	a5,15afa <__lo0bits+0x9a>
   15a84:	02000513          	addi	a0,zero,32
   15a88:	8082                	c.jr	ra
   15a8a:	01079693          	slli	a3,a5,0x10
   15a8e:	82c1                	c.srli	a3,0x10
   15a90:	e68d                	c.bnez	a3,15aba <__lo0bits+0x5a>
   15a92:	83c1                	c.srli	a5,0x10
   15a94:	0ff7f693          	andi	a3,a5,255
   15a98:	4541                	c.li	a0,16
   15a9a:	e299                	c.bnez	a3,15aa0 <__lo0bits+0x40>
   15a9c:	4561                	c.li	a0,24
   15a9e:	83a1                	c.srli	a5,0x8
   15aa0:	00f7f693          	andi	a3,a5,15
   15aa4:	ce95                	c.beqz	a3,15ae0 <__lo0bits+0x80>
   15aa6:	0037f693          	andi	a3,a5,3
   15aaa:	c29d                	c.beqz	a3,15ad0 <__lo0bits+0x70>
   15aac:	0017f693          	andi	a3,a5,1
   15ab0:	e299                	c.bnez	a3,15ab6 <__lo0bits+0x56>
   15ab2:	0505                	c.addi	a0,1
   15ab4:	8385                	c.srli	a5,0x1
   15ab6:	c31c                	c.sw	a5,0(a4)
   15ab8:	8082                	c.jr	ra
   15aba:	0ff7f693          	andi	a3,a5,255
   15abe:	c685                	c.beqz	a3,15ae6 <__lo0bits+0x86>
   15ac0:	00f7f693          	andi	a3,a5,15
   15ac4:	ea85                	c.bnez	a3,15af4 <__lo0bits+0x94>
   15ac6:	4511                	c.li	a0,4
   15ac8:	8391                	c.srli	a5,0x4
   15aca:	0037f693          	andi	a3,a5,3
   15ace:	fef9                	c.bnez	a3,15aac <__lo0bits+0x4c>
   15ad0:	0027d693          	srli	a3,a5,0x2
   15ad4:	0016f613          	andi	a2,a3,1
   15ad8:	d645                	c.beqz	a2,15a80 <__lo0bits+0x20>
   15ada:	0509                	c.addi	a0,2
   15adc:	87b6                	c.mv	a5,a3
   15ade:	bfe1                	c.j	15ab6 <__lo0bits+0x56>
   15ae0:	0511                	c.addi	a0,4
   15ae2:	8391                	c.srli	a5,0x4
   15ae4:	b7dd                	c.j	15aca <__lo0bits+0x6a>
   15ae6:	4521                	c.li	a0,8
   15ae8:	83a1                	c.srli	a5,0x8
   15aea:	bf5d                	c.j	15aa0 <__lo0bits+0x40>
   15aec:	8389                	c.srli	a5,0x2
   15aee:	c31c                	c.sw	a5,0(a4)
   15af0:	4509                	c.li	a0,2
   15af2:	8082                	c.jr	ra
   15af4:	838d                	c.srli	a5,0x3
   15af6:	450d                	c.li	a0,3
   15af8:	bf7d                	c.j	15ab6 <__lo0bits+0x56>
   15afa:	050d                	c.addi	a0,3
   15afc:	bf6d                	c.j	15ab6 <__lo0bits+0x56>

00015afe <__i2b>:
   15afe:	417c                	c.lw	a5,68(a0)
   15b00:	1141                	c.addi	sp,-16
   15b02:	c422                	c.swsp	s0,8(sp)
   15b04:	c226                	c.swsp	s1,4(sp)
   15b06:	c606                	c.swsp	ra,12(sp)
   15b08:	842a                	c.mv	s0,a0
   15b0a:	84ae                	c.mv	s1,a1
   15b0c:	cf99                	c.beqz	a5,15b2a <__i2b+0x2c>
   15b0e:	43c8                	c.lw	a0,4(a5)
   15b10:	c121                	c.beqz	a0,15b50 <__i2b+0x52>
   15b12:	4118                	c.lw	a4,0(a0)
   15b14:	c3d8                	c.sw	a4,4(a5)
   15b16:	40b2                	c.lwsp	ra,12(sp)
   15b18:	4422                	c.lwsp	s0,8(sp)
   15b1a:	4785                	c.li	a5,1
   15b1c:	c944                	c.sw	s1,20(a0)
   15b1e:	00052623          	sw	zero,12(a0)
   15b22:	c91c                	c.sw	a5,16(a0)
   15b24:	4492                	c.lwsp	s1,4(sp)
   15b26:	0141                	c.addi	sp,16
   15b28:	8082                	c.jr	ra
   15b2a:	02100613          	addi	a2,zero,33
   15b2e:	4591                	c.li	a1,4
   15b30:	0ea010ef          	jal	ra,16c1a <_calloc_r>
   15b34:	c068                	c.sw	a0,68(s0)
   15b36:	87aa                	c.mv	a5,a0
   15b38:	f979                	c.bnez	a0,15b0e <__i2b+0x10>
   15b3a:	66e9                	c.lui	a3,0x1a
   15b3c:	6569                	c.lui	a0,0x1a
   15b3e:	78468693          	addi	a3,a3,1924 # 1a784 <__clzsi2+0xa4>
   15b42:	7fc50513          	addi	a0,a0,2044 # 1a7fc <__clzsi2+0x11c>
   15b46:	4601                	c.li	a2,0
   15b48:	14500593          	addi	a1,zero,325
   15b4c:	090010ef          	jal	ra,16bdc <__assert_func>
   15b50:	8522                	c.mv	a0,s0
   15b52:	4671                	c.li	a2,28
   15b54:	4585                	c.li	a1,1
   15b56:	0c4010ef          	jal	ra,16c1a <_calloc_r>
   15b5a:	d165                	c.beqz	a0,15b3a <__i2b+0x3c>
   15b5c:	4705                	c.li	a4,1
   15b5e:	4789                	c.li	a5,2
   15b60:	c158                	c.sw	a4,4(a0)
   15b62:	c51c                	c.sw	a5,8(a0)
   15b64:	bf4d                	c.j	15b16 <__i2b+0x18>

00015b66 <__multiply>:
   15b66:	1101                	c.addi	sp,-32
   15b68:	c84a                	c.swsp	s2,16(sp)
   15b6a:	c64e                	c.swsp	s3,12(sp)
   15b6c:	0105a903          	lw	s2,16(a1)
   15b70:	01062983          	lw	s3,16(a2)
   15b74:	ca26                	c.swsp	s1,20(sp)
   15b76:	c452                	c.swsp	s4,8(sp)
   15b78:	ce06                	c.swsp	ra,28(sp)
   15b7a:	cc22                	c.swsp	s0,24(sp)
   15b7c:	8a2e                	c.mv	s4,a1
   15b7e:	84b2                	c.mv	s1,a2
   15b80:	01394763          	blt	s2,s3,15b8e <__multiply+0x28>
   15b84:	874e                	c.mv	a4,s3
   15b86:	84ae                	c.mv	s1,a1
   15b88:	89ca                	c.mv	s3,s2
   15b8a:	8a32                	c.mv	s4,a2
   15b8c:	893a                	c.mv	s2,a4
   15b8e:	449c                	c.lw	a5,8(s1)
   15b90:	40cc                	c.lw	a1,4(s1)
   15b92:	01298433          	add	s0,s3,s2
   15b96:	0087a7b3          	slt	a5,a5,s0
   15b9a:	95be                	c.add	a1,a5
   15b9c:	c31ff0ef          	jal	ra,157cc <_Balloc>
   15ba0:	14050e63          	beq	a0,zero,15cfc <__multiply+0x196>
   15ba4:	01450893          	addi	a7,a0,20
   15ba8:	00241813          	slli	a6,s0,0x2
   15bac:	9846                	c.add	a6,a7
   15bae:	87c6                	c.mv	a5,a7
   15bb0:	0108f763          	bgeu	a7,a6,15bbe <__multiply+0x58>
   15bb4:	0007a023          	sw	zero,0(a5)
   15bb8:	0791                	c.addi	a5,4
   15bba:	ff07ede3          	bltu	a5,a6,15bb4 <__multiply+0x4e>
   15bbe:	014a0593          	addi	a1,s4,20
   15bc2:	00291313          	slli	t1,s2,0x2
   15bc6:	00299693          	slli	a3,s3,0x2
   15bca:	01448e13          	addi	t3,s1,20
   15bce:	932e                	c.add	t1,a1
   15bd0:	96f2                	c.add	a3,t3
   15bd2:	1065f363          	bgeu	a1,t1,15cd8 <__multiply+0x172>
   15bd6:	01548793          	addi	a5,s1,21
   15bda:	4e81                	c.li	t4,0
   15bdc:	02f6e763          	bltu	a3,a5,15c0a <__multiply+0xa4>
   15be0:	0005af03          	lw	t5,0(a1)
   15be4:	409684b3          	sub	s1,a3,s1
   15be8:	14ad                	c.addi	s1,-21
   15bea:	010f1293          	slli	t0,t5,0x10
   15bee:	0102d293          	srli	t0,t0,0x10
   15bf2:	ffc4fe93          	andi	t4,s1,-4
   15bf6:	02029263          	bne	t0,zero,15c1a <__multiply+0xb4>
   15bfa:	010f5f13          	srli	t5,t5,0x10
   15bfe:	060f1e63          	bne	t5,zero,15c7a <__multiply+0x114>
   15c02:	0591                	c.addi	a1,4
   15c04:	0891                	c.addi	a7,4
   15c06:	0c65f963          	bgeu	a1,t1,15cd8 <__multiply+0x172>
   15c0a:	0005af03          	lw	t5,0(a1)
   15c0e:	010f1293          	slli	t0,t5,0x10
   15c12:	0102d293          	srli	t0,t0,0x10
   15c16:	fe0282e3          	beq	t0,zero,15bfa <__multiply+0x94>
   15c1a:	8fc6                	c.mv	t6,a7
   15c1c:	8f72                	c.mv	t5,t3
   15c1e:	4381                	c.li	t2,0
   15c20:	000f2783          	lw	a5,0(t5)
   15c24:	000fa603          	lw	a2,0(t6)
   15c28:	0f91                	c.addi	t6,4
   15c2a:	01079713          	slli	a4,a5,0x10
   15c2e:	8341                	c.srli	a4,0x10
   15c30:	02570733          	mul	a4,a4,t0
   15c34:	83c1                	c.srli	a5,0x10
   15c36:	01061493          	slli	s1,a2,0x10
   15c3a:	80c1                	c.srli	s1,0x10
   15c3c:	8241                	c.srli	a2,0x10
   15c3e:	0f11                	c.addi	t5,4
   15c40:	025787b3          	mul	a5,a5,t0
   15c44:	9726                	c.add	a4,s1
   15c46:	971e                	c.add	a4,t2
   15c48:	97b2                	c.add	a5,a2
   15c4a:	01075613          	srli	a2,a4,0x10
   15c4e:	97b2                	c.add	a5,a2
   15c50:	0742                	c.slli	a4,0x10
   15c52:	8341                	c.srli	a4,0x10
   15c54:	01079613          	slli	a2,a5,0x10
   15c58:	8f51                	c.or	a4,a2
   15c5a:	feefae23          	sw	a4,-4(t6)
   15c5e:	0107d393          	srli	t2,a5,0x10
   15c62:	fadf6fe3          	bltu	t5,a3,15c20 <__multiply+0xba>
   15c66:	01d887b3          	add	a5,a7,t4
   15c6a:	0077a223          	sw	t2,4(a5)
   15c6e:	0005af03          	lw	t5,0(a1)
   15c72:	010f5f13          	srli	t5,t5,0x10
   15c76:	f80f06e3          	beq	t5,zero,15c02 <__multiply+0x9c>
   15c7a:	0008a783          	lw	a5,0(a7)
   15c7e:	8fc6                	c.mv	t6,a7
   15c80:	8672                	c.mv	a2,t3
   15c82:	83be                	c.mv	t2,a5
   15c84:	4281                	c.li	t0,0
   15c86:	00065703          	lhu	a4,0(a2)
   15c8a:	0103d913          	srli	s2,t2,0x10
   15c8e:	07c2                	c.slli	a5,0x10
   15c90:	03e70733          	mul	a4,a4,t5
   15c94:	83c1                	c.srli	a5,0x10
   15c96:	0611                	c.addi	a2,4
   15c98:	004fa383          	lw	t2,4(t6)
   15c9c:	0f91                	c.addi	t6,4
   15c9e:	01039493          	slli	s1,t2,0x10
   15ca2:	80c1                	c.srli	s1,0x10
   15ca4:	9716                	c.add	a4,t0
   15ca6:	974a                	c.add	a4,s2
   15ca8:	01071293          	slli	t0,a4,0x10
   15cac:	00f2e7b3          	or	a5,t0,a5
   15cb0:	feffae23          	sw	a5,-4(t6)
   15cb4:	ffe65783          	lhu	a5,-2(a2)
   15cb8:	8341                	c.srli	a4,0x10
   15cba:	03e787b3          	mul	a5,a5,t5
   15cbe:	97a6                	c.add	a5,s1
   15cc0:	97ba                	c.add	a5,a4
   15cc2:	0107d293          	srli	t0,a5,0x10
   15cc6:	fcd660e3          	bltu	a2,a3,15c86 <__multiply+0x120>
   15cca:	01d88733          	add	a4,a7,t4
   15cce:	c35c                	c.sw	a5,4(a4)
   15cd0:	0591                	c.addi	a1,4
   15cd2:	0891                	c.addi	a7,4
   15cd4:	f265ebe3          	bltu	a1,t1,15c0a <__multiply+0xa4>
   15cd8:	00804563          	blt	zero,s0,15ce2 <__multiply+0x17c>
   15cdc:	a039                	c.j	15cea <__multiply+0x184>
   15cde:	147d                	c.addi	s0,-1
   15ce0:	c409                	c.beqz	s0,15cea <__multiply+0x184>
   15ce2:	ffc82783          	lw	a5,-4(a6)
   15ce6:	1871                	c.addi	a6,-4
   15ce8:	dbfd                	c.beqz	a5,15cde <__multiply+0x178>
   15cea:	40f2                	c.lwsp	ra,28(sp)
   15cec:	c900                	c.sw	s0,16(a0)
   15cee:	4462                	c.lwsp	s0,24(sp)
   15cf0:	44d2                	c.lwsp	s1,20(sp)
   15cf2:	4942                	c.lwsp	s2,16(sp)
   15cf4:	49b2                	c.lwsp	s3,12(sp)
   15cf6:	4a22                	c.lwsp	s4,8(sp)
   15cf8:	6105                	c.addi16sp	sp,32
   15cfa:	8082                	c.jr	ra
   15cfc:	66e9                	c.lui	a3,0x1a
   15cfe:	6569                	c.lui	a0,0x1a
   15d00:	78468693          	addi	a3,a3,1924 # 1a784 <__clzsi2+0xa4>
   15d04:	7fc50513          	addi	a0,a0,2044 # 1a7fc <__clzsi2+0x11c>
   15d08:	4601                	c.li	a2,0
   15d0a:	16200593          	addi	a1,zero,354
   15d0e:	6cf000ef          	jal	ra,16bdc <__assert_func>

00015d12 <__pow5mult>:
   15d12:	1101                	c.addi	sp,-32
   15d14:	cc22                	c.swsp	s0,24(sp)
   15d16:	c84a                	c.swsp	s2,16(sp)
   15d18:	c64e                	c.swsp	s3,12(sp)
   15d1a:	ce06                	c.swsp	ra,28(sp)
   15d1c:	00367793          	andi	a5,a2,3
   15d20:	8432                	c.mv	s0,a2
   15d22:	89aa                	c.mv	s3,a0
   15d24:	892e                	c.mv	s2,a1
   15d26:	e3c1                	c.bnez	a5,15da6 <__pow5mult+0x94>
   15d28:	8409                	c.srai	s0,0x2
   15d2a:	c43d                	c.beqz	s0,15d98 <__pow5mult+0x86>
   15d2c:	ca26                	c.swsp	s1,20(sp)
   15d2e:	0409a483          	lw	s1,64(s3)
   15d32:	c4d1                	c.beqz	s1,15dbe <__pow5mult+0xac>
   15d34:	00147793          	andi	a5,s0,1
   15d38:	8405                	c.srai	s0,0x1
   15d3a:	eb81                	c.bnez	a5,15d4a <__pow5mult+0x38>
   15d3c:	4088                	c.lw	a0,0(s1)
   15d3e:	cd05                	c.beqz	a0,15d76 <__pow5mult+0x64>
   15d40:	84aa                	c.mv	s1,a0
   15d42:	00147793          	andi	a5,s0,1
   15d46:	8405                	c.srai	s0,0x1
   15d48:	dbf5                	c.beqz	a5,15d3c <__pow5mult+0x2a>
   15d4a:	8626                	c.mv	a2,s1
   15d4c:	85ca                	c.mv	a1,s2
   15d4e:	854e                	c.mv	a0,s3
   15d50:	e17ff0ef          	jal	ra,15b66 <__multiply>
   15d54:	00090d63          	beq	s2,zero,15d6e <__pow5mult+0x5c>
   15d58:	00492703          	lw	a4,4(s2)
   15d5c:	0449a783          	lw	a5,68(s3)
   15d60:	070a                	c.slli	a4,0x2
   15d62:	97ba                	c.add	a5,a4
   15d64:	4398                	c.lw	a4,0(a5)
   15d66:	00e92023          	sw	a4,0(s2)
   15d6a:	0127a023          	sw	s2,0(a5)
   15d6e:	cc11                	c.beqz	s0,15d8a <__pow5mult+0x78>
   15d70:	892a                	c.mv	s2,a0
   15d72:	4088                	c.lw	a0,0(s1)
   15d74:	f571                	c.bnez	a0,15d40 <__pow5mult+0x2e>
   15d76:	8626                	c.mv	a2,s1
   15d78:	85a6                	c.mv	a1,s1
   15d7a:	854e                	c.mv	a0,s3
   15d7c:	debff0ef          	jal	ra,15b66 <__multiply>
   15d80:	c088                	c.sw	a0,0(s1)
   15d82:	00052023          	sw	zero,0(a0)
   15d86:	84aa                	c.mv	s1,a0
   15d88:	bf6d                	c.j	15d42 <__pow5mult+0x30>
   15d8a:	40f2                	c.lwsp	ra,28(sp)
   15d8c:	4462                	c.lwsp	s0,24(sp)
   15d8e:	44d2                	c.lwsp	s1,20(sp)
   15d90:	4942                	c.lwsp	s2,16(sp)
   15d92:	49b2                	c.lwsp	s3,12(sp)
   15d94:	6105                	c.addi16sp	sp,32
   15d96:	8082                	c.jr	ra
   15d98:	40f2                	c.lwsp	ra,28(sp)
   15d9a:	4462                	c.lwsp	s0,24(sp)
   15d9c:	49b2                	c.lwsp	s3,12(sp)
   15d9e:	854a                	c.mv	a0,s2
   15da0:	4942                	c.lwsp	s2,16(sp)
   15da2:	6105                	c.addi16sp	sp,32
   15da4:	8082                	c.jr	ra
   15da6:	676d                	c.lui	a4,0x1b
   15da8:	ae070713          	addi	a4,a4,-1312 # 1aae0 <p05.0>
   15dac:	078a                	c.slli	a5,0x2
   15dae:	97ba                	c.add	a5,a4
   15db0:	ffc7a603          	lw	a2,-4(a5)
   15db4:	4681                	c.li	a3,0
   15db6:	a93ff0ef          	jal	ra,15848 <__multadd>
   15dba:	892a                	c.mv	s2,a0
   15dbc:	b7b5                	c.j	15d28 <__pow5mult+0x16>
   15dbe:	4585                	c.li	a1,1
   15dc0:	854e                	c.mv	a0,s3
   15dc2:	a0bff0ef          	jal	ra,157cc <_Balloc>
   15dc6:	84aa                	c.mv	s1,a0
   15dc8:	c919                	c.beqz	a0,15dde <__pow5mult+0xcc>
   15dca:	27100713          	addi	a4,zero,625
   15dce:	4785                	c.li	a5,1
   15dd0:	c958                	c.sw	a4,20(a0)
   15dd2:	c91c                	c.sw	a5,16(a0)
   15dd4:	04a9a023          	sw	a0,64(s3)
   15dd8:	00052023          	sw	zero,0(a0)
   15ddc:	bfa1                	c.j	15d34 <__pow5mult+0x22>
   15dde:	66e9                	c.lui	a3,0x1a
   15de0:	6569                	c.lui	a0,0x1a
   15de2:	78468693          	addi	a3,a3,1924 # 1a784 <__clzsi2+0xa4>
   15de6:	7fc50513          	addi	a0,a0,2044 # 1a7fc <__clzsi2+0x11c>
   15dea:	4601                	c.li	a2,0
   15dec:	14500593          	addi	a1,zero,325
   15df0:	5ed000ef          	jal	ra,16bdc <__assert_func>

00015df4 <__lshift>:
   15df4:	1101                	c.addi	sp,-32
   15df6:	c64e                	c.swsp	s3,12(sp)
   15df8:	0105a983          	lw	s3,16(a1)
   15dfc:	459c                	c.lw	a5,8(a1)
   15dfe:	c256                	c.swsp	s5,4(sp)
   15e00:	40565a93          	srai	s5,a2,0x5
   15e04:	99d6                	c.add	s3,s5
   15e06:	cc22                	c.swsp	s0,24(sp)
   15e08:	ca26                	c.swsp	s1,20(sp)
   15e0a:	c84a                	c.swsp	s2,16(sp)
   15e0c:	c452                	c.swsp	s4,8(sp)
   15e0e:	ce06                	c.swsp	ra,28(sp)
   15e10:	00198493          	addi	s1,s3,1
   15e14:	842e                	c.mv	s0,a1
   15e16:	8a32                	c.mv	s4,a2
   15e18:	41cc                	c.lw	a1,4(a1)
   15e1a:	892a                	c.mv	s2,a0
   15e1c:	0097d663          	bge	a5,s1,15e28 <__lshift+0x34>
   15e20:	0786                	c.slli	a5,0x1
   15e22:	0585                	c.addi	a1,1
   15e24:	fe97cee3          	blt	a5,s1,15e20 <__lshift+0x2c>
   15e28:	854a                	c.mv	a0,s2
   15e2a:	9a3ff0ef          	jal	ra,157cc <_Balloc>
   15e2e:	cd4d                	c.beqz	a0,15ee8 <__lshift+0xf4>
   15e30:	01450813          	addi	a6,a0,20
   15e34:	01505e63          	bge	zero,s5,15e50 <__lshift+0x5c>
   15e38:	005a8713          	addi	a4,s5,5
   15e3c:	070a                	c.slli	a4,0x2
   15e3e:	972a                	c.add	a4,a0
   15e40:	87c2                	c.mv	a5,a6
   15e42:	0791                	c.addi	a5,4
   15e44:	fe07ae23          	sw	zero,-4(a5)
   15e48:	fee79de3          	bne	a5,a4,15e42 <__lshift+0x4e>
   15e4c:	0a8a                	c.slli	s5,0x2
   15e4e:	9856                	c.add	a6,s5
   15e50:	01042883          	lw	a7,16(s0)
   15e54:	01440793          	addi	a5,s0,20
   15e58:	01fa7613          	andi	a2,s4,31
   15e5c:	088a                	c.slli	a7,0x2
   15e5e:	98be                	c.add	a7,a5
   15e60:	c62d                	c.beqz	a2,15eca <__lshift+0xd6>
   15e62:	02000593          	addi	a1,zero,32
   15e66:	8d91                	c.sub	a1,a2
   15e68:	8342                	c.mv	t1,a6
   15e6a:	4681                	c.li	a3,0
   15e6c:	4398                	c.lw	a4,0(a5)
   15e6e:	0311                	c.addi	t1,4
   15e70:	0791                	c.addi	a5,4
   15e72:	00c71733          	sll	a4,a4,a2
   15e76:	8f55                	c.or	a4,a3
   15e78:	fee32e23          	sw	a4,-4(t1)
   15e7c:	ffc7a683          	lw	a3,-4(a5)
   15e80:	00b6d6b3          	srl	a3,a3,a1
   15e84:	ff17e4e3          	bltu	a5,a7,15e6c <__lshift+0x78>
   15e88:	01540793          	addi	a5,s0,21
   15e8c:	4701                	c.li	a4,0
   15e8e:	00f8e763          	bltu	a7,a5,15e9c <__lshift+0xa8>
   15e92:	408888b3          	sub	a7,a7,s0
   15e96:	18ad                	c.addi	a7,-21
   15e98:	ffc8f713          	andi	a4,a7,-4
   15e9c:	983a                	c.add	a6,a4
   15e9e:	00d82223          	sw	a3,4(a6)
   15ea2:	e291                	c.bnez	a3,15ea6 <__lshift+0xb2>
   15ea4:	84ce                	c.mv	s1,s3
   15ea6:	4058                	c.lw	a4,4(s0)
   15ea8:	04492783          	lw	a5,68(s2)
   15eac:	c904                	c.sw	s1,16(a0)
   15eae:	070a                	c.slli	a4,0x2
   15eb0:	97ba                	c.add	a5,a4
   15eb2:	4398                	c.lw	a4,0(a5)
   15eb4:	40f2                	c.lwsp	ra,28(sp)
   15eb6:	44d2                	c.lwsp	s1,20(sp)
   15eb8:	c018                	c.sw	a4,0(s0)
   15eba:	c380                	c.sw	s0,0(a5)
   15ebc:	4462                	c.lwsp	s0,24(sp)
   15ebe:	4942                	c.lwsp	s2,16(sp)
   15ec0:	49b2                	c.lwsp	s3,12(sp)
   15ec2:	4a22                	c.lwsp	s4,8(sp)
   15ec4:	4a92                	c.lwsp	s5,4(sp)
   15ec6:	6105                	c.addi16sp	sp,32
   15ec8:	8082                	c.jr	ra
   15eca:	4398                	c.lw	a4,0(a5)
   15ecc:	0791                	c.addi	a5,4
   15ece:	0811                	c.addi	a6,4
   15ed0:	fee82e23          	sw	a4,-4(a6)
   15ed4:	fd17f8e3          	bgeu	a5,a7,15ea4 <__lshift+0xb0>
   15ed8:	4398                	c.lw	a4,0(a5)
   15eda:	0791                	c.addi	a5,4
   15edc:	0811                	c.addi	a6,4
   15ede:	fee82e23          	sw	a4,-4(a6)
   15ee2:	ff17e4e3          	bltu	a5,a7,15eca <__lshift+0xd6>
   15ee6:	bf7d                	c.j	15ea4 <__lshift+0xb0>
   15ee8:	66e9                	c.lui	a3,0x1a
   15eea:	6569                	c.lui	a0,0x1a
   15eec:	78468693          	addi	a3,a3,1924 # 1a784 <__clzsi2+0xa4>
   15ef0:	7fc50513          	addi	a0,a0,2044 # 1a7fc <__clzsi2+0x11c>
   15ef4:	4601                	c.li	a2,0
   15ef6:	1de00593          	addi	a1,zero,478
   15efa:	4e3000ef          	jal	ra,16bdc <__assert_func>

00015efe <__mcmp>:
   15efe:	4918                	c.lw	a4,16(a0)
   15f00:	499c                	c.lw	a5,16(a1)
   15f02:	882a                	c.mv	a6,a0
   15f04:	40f70533          	sub	a0,a4,a5
   15f08:	02f71863          	bne	a4,a5,15f38 <__mcmp+0x3a>
   15f0c:	078a                	c.slli	a5,0x2
   15f0e:	0851                	c.addi	a6,20
   15f10:	05d1                	c.addi	a1,20
   15f12:	00f58733          	add	a4,a1,a5
   15f16:	97c2                	c.add	a5,a6
   15f18:	a019                	c.j	15f1e <__mcmp+0x20>
   15f1a:	00f87f63          	bgeu	a6,a5,15f38 <__mcmp+0x3a>
   15f1e:	ffc7a603          	lw	a2,-4(a5)
   15f22:	ffc72683          	lw	a3,-4(a4)
   15f26:	17f1                	c.addi	a5,-4
   15f28:	1771                	c.addi	a4,-4
   15f2a:	fed608e3          	beq	a2,a3,15f1a <__mcmp+0x1c>
   15f2e:	4505                	c.li	a0,1
   15f30:	00d67463          	bgeu	a2,a3,15f38 <__mcmp+0x3a>
   15f34:	557d                	c.li	a0,-1
   15f36:	8082                	c.jr	ra
   15f38:	8082                	c.jr	ra

00015f3a <__mdiff>:
   15f3a:	4998                	c.lw	a4,16(a1)
   15f3c:	4a1c                	c.lw	a5,16(a2)
   15f3e:	1141                	c.addi	sp,-16
   15f40:	c422                	c.swsp	s0,8(sp)
   15f42:	c226                	c.swsp	s1,4(sp)
   15f44:	c04a                	c.swsp	s2,0(sp)
   15f46:	c606                	c.swsp	ra,12(sp)
   15f48:	842e                	c.mv	s0,a1
   15f4a:	84b2                	c.mv	s1,a2
   15f4c:	40f70933          	sub	s2,a4,a5
   15f50:	02f71a63          	bne	a4,a5,15f84 <__mdiff+0x4a>
   15f54:	00279693          	slli	a3,a5,0x2
   15f58:	01458613          	addi	a2,a1,20
   15f5c:	01448713          	addi	a4,s1,20
   15f60:	00d607b3          	add	a5,a2,a3
   15f64:	9736                	c.add	a4,a3
   15f66:	a019                	c.j	15f6c <__mdiff+0x32>
   15f68:	10f67b63          	bgeu	a2,a5,1607e <__mdiff+0x144>
   15f6c:	ffc7a803          	lw	a6,-4(a5)
   15f70:	ffc72683          	lw	a3,-4(a4)
   15f74:	17f1                	c.addi	a5,-4
   15f76:	1771                	c.addi	a4,-4
   15f78:	fed808e3          	beq	a6,a3,15f68 <__mdiff+0x2e>
   15f7c:	10d87f63          	bgeu	a6,a3,1609a <__mdiff+0x160>
   15f80:	4905                	c.li	s2,1
   15f82:	a031                	c.j	15f8e <__mdiff+0x54>
   15f84:	fe094ee3          	blt	s2,zero,15f80 <__mdiff+0x46>
   15f88:	4901                	c.li	s2,0
   15f8a:	84ae                	c.mv	s1,a1
   15f8c:	8432                	c.mv	s0,a2
   15f8e:	40cc                	c.lw	a1,4(s1)
   15f90:	83dff0ef          	jal	ra,157cc <_Balloc>
   15f94:	12050263          	beq	a0,zero,160b8 <__mdiff+0x17e>
   15f98:	0104a803          	lw	a6,16(s1)
   15f9c:	01042f03          	lw	t5,16(s0)
   15fa0:	04d1                	c.addi	s1,20
   15fa2:	00281713          	slli	a4,a6,0x2
   15fa6:	0f0a                	c.slli	t5,0x2
   15fa8:	01440613          	addi	a2,s0,20
   15fac:	01450f93          	addi	t6,a0,20
   15fb0:	01252623          	sw	s2,12(a0)
   15fb4:	00e48333          	add	t1,s1,a4
   15fb8:	9f32                	c.add	t5,a2
   15fba:	8ea6                	c.mv	t4,s1
   15fbc:	8e7e                	c.mv	t3,t6
   15fbe:	4881                	c.li	a7,0
   15fc0:	000ea703          	lw	a4,0(t4) # fcc00000 <__BSS_END__+0xfcbe45a4>
   15fc4:	4214                	c.lw	a3,0(a2)
   15fc6:	0e11                	c.addi	t3,4
   15fc8:	01071793          	slli	a5,a4,0x10
   15fcc:	01069593          	slli	a1,a3,0x10
   15fd0:	83c1                	c.srli	a5,0x10
   15fd2:	81c1                	c.srli	a1,0x10
   15fd4:	8f8d                	c.sub	a5,a1
   15fd6:	97c6                	c.add	a5,a7
   15fd8:	82c1                	c.srli	a3,0x10
   15fda:	8341                	c.srli	a4,0x10
   15fdc:	8f15                	c.sub	a4,a3
   15fde:	4107d693          	srai	a3,a5,0x10
   15fe2:	9736                	c.add	a4,a3
   15fe4:	07c2                	c.slli	a5,0x10
   15fe6:	83c1                	c.srli	a5,0x10
   15fe8:	01071693          	slli	a3,a4,0x10
   15fec:	8fd5                	c.or	a5,a3
   15fee:	0611                	c.addi	a2,4
   15ff0:	fefe2e23          	sw	a5,-4(t3)
   15ff4:	0e91                	c.addi	t4,4
   15ff6:	41075893          	srai	a7,a4,0x10
   15ffa:	fde663e3          	bltu	a2,t5,15fc0 <__mdiff+0x86>
   15ffe:	01540693          	addi	a3,s0,21
   16002:	4701                	c.li	a4,0
   16004:	00df6763          	bltu	t5,a3,16012 <__mdiff+0xd8>
   16008:	408f0f33          	sub	t5,t5,s0
   1600c:	1f2d                	c.addi	t5,-21
   1600e:	ffcf7713          	andi	a4,t5,-4
   16012:	00e48eb3          	add	t4,s1,a4
   16016:	0e91                	c.addi	t4,4
   16018:	977e                	c.add	a4,t6
   1601a:	409f8e33          	sub	t3,t6,s1
   1601e:	8676                	c.mv	a2,t4
   16020:	00470f13          	addi	t5,a4,4
   16024:	026eff63          	bgeu	t4,t1,16062 <__mdiff+0x128>
   16028:	4214                	c.lw	a3,0(a2)
   1602a:	01c605b3          	add	a1,a2,t3
   1602e:	0611                	c.addi	a2,4
   16030:	01069713          	slli	a4,a3,0x10
   16034:	8341                	c.srli	a4,0x10
   16036:	9746                	c.add	a4,a7
   16038:	011687b3          	add	a5,a3,a7
   1603c:	8741                	c.srai	a4,0x10
   1603e:	82c1                	c.srli	a3,0x10
   16040:	9736                	c.add	a4,a3
   16042:	07c2                	c.slli	a5,0x10
   16044:	83c1                	c.srli	a5,0x10
   16046:	01071693          	slli	a3,a4,0x10
   1604a:	8fd5                	c.or	a5,a3
   1604c:	c19c                	c.sw	a5,0(a1)
   1604e:	41075893          	srai	a7,a4,0x10
   16052:	fc666be3          	bltu	a2,t1,16028 <__mdiff+0xee>
   16056:	fff30713          	addi	a4,t1,-1
   1605a:	41d70733          	sub	a4,a4,t4
   1605e:	9b71                	c.andi	a4,-4
   16060:	977a                	c.add	a4,t5
   16062:	e791                	c.bnez	a5,1606e <__mdiff+0x134>
   16064:	ffc72783          	lw	a5,-4(a4)
   16068:	1771                	c.addi	a4,-4
   1606a:	187d                	c.addi	a6,-1
   1606c:	dfe5                	c.beqz	a5,16064 <__mdiff+0x12a>
   1606e:	40b2                	c.lwsp	ra,12(sp)
   16070:	4422                	c.lwsp	s0,8(sp)
   16072:	01052823          	sw	a6,16(a0)
   16076:	4492                	c.lwsp	s1,4(sp)
   16078:	4902                	c.lwsp	s2,0(sp)
   1607a:	0141                	c.addi	sp,16
   1607c:	8082                	c.jr	ra
   1607e:	4581                	c.li	a1,0
   16080:	f4cff0ef          	jal	ra,157cc <_Balloc>
   16084:	cd19                	c.beqz	a0,160a2 <__mdiff+0x168>
   16086:	40b2                	c.lwsp	ra,12(sp)
   16088:	4422                	c.lwsp	s0,8(sp)
   1608a:	4785                	c.li	a5,1
   1608c:	00052a23          	sw	zero,20(a0)
   16090:	c91c                	c.sw	a5,16(a0)
   16092:	4492                	c.lwsp	s1,4(sp)
   16094:	4902                	c.lwsp	s2,0(sp)
   16096:	0141                	c.addi	sp,16
   16098:	8082                	c.jr	ra
   1609a:	87a6                	c.mv	a5,s1
   1609c:	84a2                	c.mv	s1,s0
   1609e:	843e                	c.mv	s0,a5
   160a0:	b5fd                	c.j	15f8e <__mdiff+0x54>
   160a2:	66e9                	c.lui	a3,0x1a
   160a4:	6569                	c.lui	a0,0x1a
   160a6:	78468693          	addi	a3,a3,1924 # 1a784 <__clzsi2+0xa4>
   160aa:	7fc50513          	addi	a0,a0,2044 # 1a7fc <__clzsi2+0x11c>
   160ae:	4601                	c.li	a2,0
   160b0:	23700593          	addi	a1,zero,567
   160b4:	329000ef          	jal	ra,16bdc <__assert_func>
   160b8:	66e9                	c.lui	a3,0x1a
   160ba:	6569                	c.lui	a0,0x1a
   160bc:	78468693          	addi	a3,a3,1924 # 1a784 <__clzsi2+0xa4>
   160c0:	7fc50513          	addi	a0,a0,2044 # 1a7fc <__clzsi2+0x11c>
   160c4:	4601                	c.li	a2,0
   160c6:	24500593          	addi	a1,zero,581
   160ca:	313000ef          	jal	ra,16bdc <__assert_func>

000160ce <__ulp>:
   160ce:	1141                	c.addi	sp,-16
   160d0:	a42a                	c.fsdsp	fa0,8(sp)
   160d2:	46b2                	c.lwsp	a3,12(sp)
   160d4:	7ff007b7          	lui	a5,0x7ff00
   160d8:	fcc00737          	lui	a4,0xfcc00
   160dc:	8ff5                	c.and	a5,a3
   160de:	97ba                	c.add	a5,a4
   160e0:	4701                	c.li	a4,0
   160e2:	00f05763          	bge	zero,a5,160f0 <__ulp+0x22>
   160e6:	c03a                	c.swsp	a4,0(sp)
   160e8:	c23e                	c.swsp	a5,4(sp)
   160ea:	2502                	c.fldsp	fa0,0(sp)
   160ec:	0141                	c.addi	sp,16
   160ee:	8082                	c.jr	ra
   160f0:	40f007b3          	sub	a5,zero,a5
   160f4:	87d1                	c.srai	a5,0x14
   160f6:	474d                	c.li	a4,19
   160f8:	00f74c63          	blt	a4,a5,16110 <__ulp+0x42>
   160fc:	00080737          	lui	a4,0x80
   16100:	40f757b3          	sra	a5,a4,a5
   16104:	4701                	c.li	a4,0
   16106:	c03a                	c.swsp	a4,0(sp)
   16108:	c23e                	c.swsp	a5,4(sp)
   1610a:	2502                	c.fldsp	fa0,0(sp)
   1610c:	0141                	c.addi	sp,16
   1610e:	8082                	c.jr	ra
   16110:	17b1                	c.addi	a5,-20 # 7fefffec <__BSS_END__+0x7fee4590>
   16112:	46f9                	c.li	a3,30
   16114:	4705                	c.li	a4,1
   16116:	00f6c663          	blt	a3,a5,16122 <__ulp+0x54>
   1611a:	80000737          	lui	a4,0x80000
   1611e:	00f75733          	srl	a4,a4,a5
   16122:	4781                	c.li	a5,0
   16124:	c03a                	c.swsp	a4,0(sp)
   16126:	c23e                	c.swsp	a5,4(sp)
   16128:	2502                	c.fldsp	fa0,0(sp)
   1612a:	0141                	c.addi	sp,16
   1612c:	8082                	c.jr	ra

0001612e <__b2d>:
   1612e:	7179                	c.addi16sp	sp,-48
   16130:	d226                	c.swsp	s1,36(sp)
   16132:	4904                	c.lw	s1,16(a0)
   16134:	d422                	c.swsp	s0,40(sp)
   16136:	01450413          	addi	s0,a0,20
   1613a:	048a                	c.slli	s1,0x2
   1613c:	94a2                	c.add	s1,s0
   1613e:	d04a                	c.swsp	s2,32(sp)
   16140:	ffc4a903          	lw	s2,-4(s1)
   16144:	ce4e                	c.swsp	s3,28(sp)
   16146:	cc52                	c.swsp	s4,24(sp)
   16148:	854a                	c.mv	a0,s2
   1614a:	89ae                	c.mv	s3,a1
   1614c:	d606                	c.swsp	ra,44(sp)
   1614e:	8abff0ef          	jal	ra,159f8 <__hi0bits>
   16152:	02000713          	addi	a4,zero,32
   16156:	40a707b3          	sub	a5,a4,a0
   1615a:	00f9a023          	sw	a5,0(s3)
   1615e:	47a9                	c.li	a5,10
   16160:	ffc48a13          	addi	s4,s1,-4
   16164:	06a7dc63          	bge	a5,a0,161dc <__b2d+0xae>
   16168:	ff550613          	addi	a2,a0,-11
   1616c:	03447d63          	bgeu	s0,s4,161a6 <__b2d+0x78>
   16170:	ff84a783          	lw	a5,-8(s1)
   16174:	c629                	c.beqz	a2,161be <__b2d+0x90>
   16176:	40c706b3          	sub	a3,a4,a2
   1617a:	00d7d733          	srl	a4,a5,a3
   1617e:	00c91933          	sll	s2,s2,a2
   16182:	00e96933          	or	s2,s2,a4
   16186:	ff848593          	addi	a1,s1,-8
   1618a:	3ff00737          	lui	a4,0x3ff00
   1618e:	00c797b3          	sll	a5,a5,a2
   16192:	00e96733          	or	a4,s2,a4
   16196:	02b47863          	bgeu	s0,a1,161c6 <__b2d+0x98>
   1619a:	ff44a603          	lw	a2,-12(s1)
   1619e:	00d656b3          	srl	a3,a2,a3
   161a2:	8fd5                	c.or	a5,a3
   161a4:	a00d                	c.j	161c6 <__b2d+0x98>
   161a6:	47ad                	c.li	a5,11
   161a8:	00f50a63          	beq	a0,a5,161bc <__b2d+0x8e>
   161ac:	00c91933          	sll	s2,s2,a2
   161b0:	3ff00737          	lui	a4,0x3ff00
   161b4:	00e96733          	or	a4,s2,a4
   161b8:	4781                	c.li	a5,0
   161ba:	a031                	c.j	161c6 <__b2d+0x98>
   161bc:	4781                	c.li	a5,0
   161be:	3ff00737          	lui	a4,0x3ff00
   161c2:	00e96733          	or	a4,s2,a4
   161c6:	50b2                	c.lwsp	ra,44(sp)
   161c8:	5422                	c.lwsp	s0,40(sp)
   161ca:	c43e                	c.swsp	a5,8(sp)
   161cc:	c63a                	c.swsp	a4,12(sp)
   161ce:	2522                	c.fldsp	fa0,8(sp)
   161d0:	5492                	c.lwsp	s1,36(sp)
   161d2:	5902                	c.lwsp	s2,32(sp)
   161d4:	49f2                	c.lwsp	s3,28(sp)
   161d6:	4a62                	c.lwsp	s4,24(sp)
   161d8:	6145                	c.addi16sp	sp,48
   161da:	8082                	c.jr	ra
   161dc:	46ad                	c.li	a3,11
   161de:	8e89                	c.sub	a3,a0
   161e0:	3ff007b7          	lui	a5,0x3ff00
   161e4:	00d95733          	srl	a4,s2,a3
   161e8:	8f5d                	c.or	a4,a5
   161ea:	4781                	c.li	a5,0
   161ec:	01447663          	bgeu	s0,s4,161f8 <__b2d+0xca>
   161f0:	ff84a783          	lw	a5,-8(s1)
   161f4:	00d7d7b3          	srl	a5,a5,a3
   161f8:	0555                	c.addi	a0,21
   161fa:	00a91933          	sll	s2,s2,a0
   161fe:	00f967b3          	or	a5,s2,a5
   16202:	b7d1                	c.j	161c6 <__b2d+0x98>

00016204 <__d2b>:
   16204:	7139                	c.addi16sp	sp,-64
   16206:	d452                	c.swsp	s4,40(sp)
   16208:	a42a                	c.fsdsp	fa0,8(sp)
   1620a:	8a2e                	c.mv	s4,a1
   1620c:	4585                	c.li	a1,1
   1620e:	da26                	c.swsp	s1,52(sp)
   16210:	d64e                	c.swsp	s3,44(sp)
   16212:	d256                	c.swsp	s5,36(sp)
   16214:	de06                	c.swsp	ra,60(sp)
   16216:	dc22                	c.swsp	s0,56(sp)
   16218:	d84a                	c.swsp	s2,48(sp)
   1621a:	4aa2                	c.lwsp	s5,8(sp)
   1621c:	44b2                	c.lwsp	s1,12(sp)
   1621e:	89b2                	c.mv	s3,a2
   16220:	dacff0ef          	jal	ra,157cc <_Balloc>
   16224:	c945                	c.beqz	a0,162d4 <__d2b+0xd0>
   16226:	00100737          	lui	a4,0x100
   1622a:	0144d913          	srli	s2,s1,0x14
   1622e:	fff70793          	addi	a5,a4,-1 # fffff <__BSS_END__+0xe45a3>
   16232:	7ff97913          	andi	s2,s2,2047
   16236:	842a                	c.mv	s0,a0
   16238:	8fe5                	c.and	a5,s1
   1623a:	00090363          	beq	s2,zero,16240 <__d2b+0x3c>
   1623e:	8fd9                	c.or	a5,a4
   16240:	ce3e                	c.swsp	a5,28(sp)
   16242:	040a9263          	bne	s5,zero,16286 <__d2b+0x82>
   16246:	0868                	c.addi4spn	a0,sp,28
   16248:	819ff0ef          	jal	ra,15a60 <__lo0bits>
   1624c:	4772                	c.lwsp	a4,28(sp)
   1624e:	4485                	c.li	s1,1
   16250:	c804                	c.sw	s1,16(s0)
   16252:	c858                	c.sw	a4,20(s0)
   16254:	02050793          	addi	a5,a0,32
   16258:	06090063          	beq	s2,zero,162b8 <__d2b+0xb4>
   1625c:	bcd90913          	addi	s2,s2,-1075
   16260:	993e                	c.add	s2,a5
   16262:	03500493          	addi	s1,zero,53
   16266:	012a2023          	sw	s2,0(s4)
   1626a:	40f48533          	sub	a0,s1,a5
   1626e:	00a9a023          	sw	a0,0(s3)
   16272:	50f2                	c.lwsp	ra,60(sp)
   16274:	8522                	c.mv	a0,s0
   16276:	5462                	c.lwsp	s0,56(sp)
   16278:	54d2                	c.lwsp	s1,52(sp)
   1627a:	5942                	c.lwsp	s2,48(sp)
   1627c:	59b2                	c.lwsp	s3,44(sp)
   1627e:	5a22                	c.lwsp	s4,40(sp)
   16280:	5a92                	c.lwsp	s5,36(sp)
   16282:	6121                	c.addi16sp	sp,64
   16284:	8082                	c.jr	ra
   16286:	0828                	c.addi4spn	a0,sp,24
   16288:	cc56                	c.swsp	s5,24(sp)
   1628a:	fd6ff0ef          	jal	ra,15a60 <__lo0bits>
   1628e:	4772                	c.lwsp	a4,28(sp)
   16290:	46e2                	c.lwsp	a3,24(sp)
   16292:	87aa                	c.mv	a5,a0
   16294:	c911                	c.beqz	a0,162a8 <__d2b+0xa4>
   16296:	02000613          	addi	a2,zero,32
   1629a:	8e09                	c.sub	a2,a0
   1629c:	00c71633          	sll	a2,a4,a2
   162a0:	00a75733          	srl	a4,a4,a0
   162a4:	8ed1                	c.or	a3,a2
   162a6:	ce3a                	c.swsp	a4,28(sp)
   162a8:	00e034b3          	sltu	s1,zero,a4
   162ac:	0485                	c.addi	s1,1
   162ae:	c854                	c.sw	a3,20(s0)
   162b0:	cc18                	c.sw	a4,24(s0)
   162b2:	c804                	c.sw	s1,16(s0)
   162b4:	fa0914e3          	bne	s2,zero,1625c <__d2b+0x58>
   162b8:	00249713          	slli	a4,s1,0x2
   162bc:	9722                	c.add	a4,s0
   162be:	4b08                	c.lw	a0,16(a4)
   162c0:	bce78793          	addi	a5,a5,-1074 # 3feffbce <__BSS_END__+0x3fee4172>
   162c4:	00fa2023          	sw	a5,0(s4)
   162c8:	f30ff0ef          	jal	ra,159f8 <__hi0bits>
   162cc:	0496                	c.slli	s1,0x5
   162ce:	40a48533          	sub	a0,s1,a0
   162d2:	bf71                	c.j	1626e <__d2b+0x6a>
   162d4:	66e9                	c.lui	a3,0x1a
   162d6:	6569                	c.lui	a0,0x1a
   162d8:	78468693          	addi	a3,a3,1924 # 1a784 <__clzsi2+0xa4>
   162dc:	7fc50513          	addi	a0,a0,2044 # 1a7fc <__clzsi2+0x11c>
   162e0:	4601                	c.li	a2,0
   162e2:	30f00593          	addi	a1,zero,783
   162e6:	0f7000ef          	jal	ra,16bdc <__assert_func>

000162ea <__ratio>:
   162ea:	715d                	c.addi16sp	sp,-80
   162ec:	c4a2                	c.swsp	s0,72(sp)
   162ee:	842e                	c.mv	s0,a1
   162f0:	182c                	c.addi4spn	a1,sp,56
   162f2:	c686                	c.swsp	ra,76(sp)
   162f4:	c2a6                	c.swsp	s1,68(sp)
   162f6:	84aa                	c.mv	s1,a0
   162f8:	e37ff0ef          	jal	ra,1612e <__b2d>
   162fc:	a42a                	c.fsdsp	fa0,8(sp)
   162fe:	47a2                	c.lwsp	a5,8(sp)
   16300:	186c                	c.addi4spn	a1,sp,60
   16302:	8522                	c.mv	a0,s0
   16304:	c83e                	c.swsp	a5,16(sp)
   16306:	47b2                	c.lwsp	a5,12(sp)
   16308:	ca3e                	c.swsp	a5,20(sp)
   1630a:	27c2                	c.fldsp	fa5,16(sp)
   1630c:	a43e                	c.fsdsp	fa5,8(sp)
   1630e:	e21ff0ef          	jal	ra,1612e <__b2d>
   16312:	4814                	c.lw	a3,16(s0)
   16314:	489c                	c.lw	a5,16(s1)
   16316:	a82a                	c.fsdsp	fa0,16(sp)
   16318:	5762                	c.lwsp	a4,56(sp)
   1631a:	8f95                	c.sub	a5,a3
   1631c:	46c2                	c.lwsp	a3,16(sp)
   1631e:	5672                	c.lwsp	a2,60(sp)
   16320:	0796                	c.slli	a5,0x5
   16322:	cc36                	c.swsp	a3,24(sp)
   16324:	46d2                	c.lwsp	a3,20(sp)
   16326:	8f11                	c.sub	a4,a2
   16328:	97ba                	c.add	a5,a4
   1632a:	ce36                	c.swsp	a3,28(sp)
   1632c:	27e2                	c.fldsp	fa5,24(sp)
   1632e:	a83e                	c.fsdsp	fa5,16(sp)
   16330:	02f05363          	bge	zero,a5,16356 <__ratio+0x6c>
   16334:	46b2                	c.lwsp	a3,12(sp)
   16336:	4722                	c.lwsp	a4,8(sp)
   16338:	07d2                	c.slli	a5,0x14
   1633a:	97b6                	c.add	a5,a3
   1633c:	d03a                	c.swsp	a4,32(sp)
   1633e:	d23e                	c.swsp	a5,36(sp)
   16340:	3782                	c.fldsp	fa5,32(sp)
   16342:	2742                	c.fldsp	fa4,16(sp)
   16344:	40b6                	c.lwsp	ra,76(sp)
   16346:	a43e                	c.fsdsp	fa5,8(sp)
   16348:	27a2                	c.fldsp	fa5,8(sp)
   1634a:	4426                	c.lwsp	s0,72(sp)
   1634c:	4496                	c.lwsp	s1,68(sp)
   1634e:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   16352:	6161                	c.addi16sp	sp,80
   16354:	8082                	c.jr	ra
   16356:	46d2                	c.lwsp	a3,20(sp)
   16358:	4742                	c.lwsp	a4,16(sp)
   1635a:	07d2                	c.slli	a5,0x14
   1635c:	40f687b3          	sub	a5,a3,a5
   16360:	d43a                	c.swsp	a4,40(sp)
   16362:	d63e                	c.swsp	a5,44(sp)
   16364:	37a2                	c.fldsp	fa5,40(sp)
   16366:	40b6                	c.lwsp	ra,76(sp)
   16368:	4426                	c.lwsp	s0,72(sp)
   1636a:	a83e                	c.fsdsp	fa5,16(sp)
   1636c:	2742                	c.fldsp	fa4,16(sp)
   1636e:	27a2                	c.fldsp	fa5,8(sp)
   16370:	4496                	c.lwsp	s1,68(sp)
   16372:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   16376:	6161                	c.addi16sp	sp,80
   16378:	8082                	c.jr	ra

0001637a <_mprec_log10>:
   1637a:	47dd                	c.li	a5,23
   1637c:	00a7db63          	bge	a5,a0,16392 <_mprec_log10+0x18>
   16380:	ed81b507          	fld	fa0,-296(gp) # 1b6e8 <__SDATA_BEGIN__+0x30>
   16384:	ee01b787          	fld	fa5,-288(gp) # 1b6f0 <__SDATA_BEGIN__+0x38>
   16388:	157d                	c.addi	a0,-1
   1638a:	12f57553          	fmul.d	fa0,fa0,fa5
   1638e:	fd6d                	c.bnez	a0,16388 <_mprec_log10+0xe>
   16390:	8082                	c.jr	ra
   16392:	67ed                	c.lui	a5,0x1b
   16394:	050e                	c.slli	a0,0x3
   16396:	b4078793          	addi	a5,a5,-1216 # 1ab40 <__mprec_tens>
   1639a:	97aa                	c.add	a5,a0
   1639c:	2388                	c.fld	fa0,0(a5)
   1639e:	8082                	c.jr	ra

000163a0 <__copybits>:
   163a0:	4a14                	c.lw	a3,16(a2)
   163a2:	15fd                	c.addi	a1,-1
   163a4:	8595                	c.srai	a1,0x5
   163a6:	0585                	c.addi	a1,1
   163a8:	068a                	c.slli	a3,0x2
   163aa:	01460793          	addi	a5,a2,20
   163ae:	058a                	c.slli	a1,0x2
   163b0:	96be                	c.add	a3,a5
   163b2:	95aa                	c.add	a1,a0
   163b4:	02d7f063          	bgeu	a5,a3,163d4 <__copybits+0x34>
   163b8:	872a                	c.mv	a4,a0
   163ba:	0007a803          	lw	a6,0(a5)
   163be:	0791                	c.addi	a5,4
   163c0:	0711                	c.addi	a4,4
   163c2:	ff072e23          	sw	a6,-4(a4)
   163c6:	fed7eae3          	bltu	a5,a3,163ba <__copybits+0x1a>
   163ca:	8e91                	c.sub	a3,a2
   163cc:	16ad                	c.addi	a3,-21
   163ce:	9af1                	c.andi	a3,-4
   163d0:	0511                	c.addi	a0,4
   163d2:	9536                	c.add	a0,a3
   163d4:	00b57763          	bgeu	a0,a1,163e2 <__copybits+0x42>
   163d8:	0511                	c.addi	a0,4
   163da:	fe052e23          	sw	zero,-4(a0)
   163de:	feb56de3          	bltu	a0,a1,163d8 <__copybits+0x38>
   163e2:	8082                	c.jr	ra

000163e4 <__any_on>:
   163e4:	4918                	c.lw	a4,16(a0)
   163e6:	4055d613          	srai	a2,a1,0x5
   163ea:	01450693          	addi	a3,a0,20
   163ee:	00c75d63          	bge	a4,a2,16408 <__any_on+0x24>
   163f2:	070a                	c.slli	a4,0x2
   163f4:	00e687b3          	add	a5,a3,a4
   163f8:	02f6f863          	bgeu	a3,a5,16428 <__any_on+0x44>
   163fc:	ffc7a703          	lw	a4,-4(a5)
   16400:	17f1                	c.addi	a5,-4
   16402:	db7d                	c.beqz	a4,163f8 <__any_on+0x14>
   16404:	4505                	c.li	a0,1
   16406:	8082                	c.jr	ra
   16408:	00261793          	slli	a5,a2,0x2
   1640c:	97b6                	c.add	a5,a3
   1640e:	fee655e3          	bge	a2,a4,163f8 <__any_on+0x14>
   16412:	89fd                	c.andi	a1,31
   16414:	d1f5                	c.beqz	a1,163f8 <__any_on+0x14>
   16416:	4390                	c.lw	a2,0(a5)
   16418:	4505                	c.li	a0,1
   1641a:	00b65733          	srl	a4,a2,a1
   1641e:	00b71733          	sll	a4,a4,a1
   16422:	fce60be3          	beq	a2,a4,163f8 <__any_on+0x14>
   16426:	8082                	c.jr	ra
   16428:	4501                	c.li	a0,0
   1642a:	8082                	c.jr	ra

0001642c <_realloc_r>:
   1642c:	7179                	c.addi16sp	sp,-48
   1642e:	d226                	c.swsp	s1,36(sp)
   16430:	d606                	c.swsp	ra,44(sp)
   16432:	84b2                	c.mv	s1,a2
   16434:	14058d63          	beq	a1,zero,1658e <_realloc_r+0x162>
   16438:	d422                	c.swsp	s0,40(sp)
   1643a:	d04a                	c.swsp	s2,32(sp)
   1643c:	842e                	c.mv	s0,a1
   1643e:	ce4e                	c.swsp	s3,28(sp)
   16440:	ca56                	c.swsp	s5,20(sp)
   16442:	cc52                	c.swsp	s4,24(sp)
   16444:	892a                	c.mv	s2,a0
   16446:	d63fa0ef          	jal	ra,111a8 <__malloc_lock>
   1644a:	ffc42703          	lw	a4,-4(s0)
   1644e:	00b48793          	addi	a5,s1,11
   16452:	46d9                	c.li	a3,22
   16454:	ffc77993          	andi	s3,a4,-4
   16458:	ff840a93          	addi	s5,s0,-8
   1645c:	0af6ff63          	bgeu	a3,a5,1651a <_realloc_r+0xee>
   16460:	ff87fa13          	andi	s4,a5,-8
   16464:	0a07ce63          	blt	a5,zero,16520 <_realloc_r+0xf4>
   16468:	0a9a6c63          	bltu	s4,s1,16520 <_realloc_r+0xf4>
   1646c:	0d49d563          	bge	s3,s4,16536 <_realloc_r+0x10a>
   16470:	67ed                	c.lui	a5,0x1b
   16472:	c462                	c.swsp	s8,8(sp)
   16474:	14078c13          	addi	s8,a5,320 # 1b140 <__malloc_av_>
   16478:	008c2603          	lw	a2,8(s8)
   1647c:	013a86b3          	add	a3,s5,s3
   16480:	42dc                	c.lw	a5,4(a3)
   16482:	12d60e63          	beq	a2,a3,165be <_realloc_r+0x192>
   16486:	ffe7f613          	andi	a2,a5,-2
   1648a:	9636                	c.add	a2,a3
   1648c:	4250                	c.lw	a2,4(a2)
   1648e:	8a05                	c.andi	a2,1
   16490:	e27d                	c.bnez	a2,16576 <_realloc_r+0x14a>
   16492:	9bf1                	c.andi	a5,-4
   16494:	00f98633          	add	a2,s3,a5
   16498:	09465963          	bge	a2,s4,1652a <_realloc_r+0xfe>
   1649c:	8b05                	c.andi	a4,1
   1649e:	e70d                	c.bnez	a4,164c8 <_realloc_r+0x9c>
   164a0:	c65e                	c.swsp	s7,12(sp)
   164a2:	ff842b83          	lw	s7,-8(s0)
   164a6:	c85a                	c.swsp	s6,16(sp)
   164a8:	417a8bb3          	sub	s7,s5,s7
   164ac:	004ba703          	lw	a4,4(s7)
   164b0:	9b71                	c.andi	a4,-4
   164b2:	97ba                	c.add	a5,a4
   164b4:	01378b33          	add	s6,a5,s3
   164b8:	234b5763          	bge	s6,s4,166e6 <_realloc_r+0x2ba>
   164bc:	00e98b33          	add	s6,s3,a4
   164c0:	1d4b5463          	bge	s6,s4,16688 <_realloc_r+0x25c>
   164c4:	4b42                	c.lwsp	s6,16(sp)
   164c6:	4bb2                	c.lwsp	s7,12(sp)
   164c8:	85a6                	c.mv	a1,s1
   164ca:	854a                	c.mv	a0,s2
   164cc:	f10fa0ef          	jal	ra,10bdc <_malloc_r>
   164d0:	84aa                	c.mv	s1,a0
   164d2:	2c050563          	beq	a0,zero,1679c <_realloc_r+0x370>
   164d6:	ffc42783          	lw	a5,-4(s0)
   164da:	ff850713          	addi	a4,a0,-8
   164de:	9bf9                	c.andi	a5,-2
   164e0:	97d6                	c.add	a5,s5
   164e2:	18e78d63          	beq	a5,a4,1667c <_realloc_r+0x250>
   164e6:	ffc98613          	addi	a2,s3,-4
   164ea:	02400793          	addi	a5,zero,36
   164ee:	1ec7e863          	bltu	a5,a2,166de <_realloc_r+0x2b2>
   164f2:	474d                	c.li	a4,19
   164f4:	16c76863          	bltu	a4,a2,16664 <_realloc_r+0x238>
   164f8:	87aa                	c.mv	a5,a0
   164fa:	8722                	c.mv	a4,s0
   164fc:	4314                	c.lw	a3,0(a4)
   164fe:	c394                	c.sw	a3,0(a5)
   16500:	4354                	c.lw	a3,4(a4)
   16502:	c3d4                	c.sw	a3,4(a5)
   16504:	4718                	c.lw	a4,8(a4)
   16506:	c798                	c.sw	a4,8(a5)
   16508:	85a2                	c.mv	a1,s0
   1650a:	854a                	c.mv	a0,s2
   1650c:	cb4fa0ef          	jal	ra,109c0 <_free_r>
   16510:	854a                	c.mv	a0,s2
   16512:	c99fa0ef          	jal	ra,111aa <__malloc_unlock>
   16516:	4c22                	c.lwsp	s8,8(sp)
   16518:	a0a9                	c.j	16562 <_realloc_r+0x136>
   1651a:	4a41                	c.li	s4,16
   1651c:	f49a78e3          	bgeu	s4,s1,1646c <_realloc_r+0x40>
   16520:	47b1                	c.li	a5,12
   16522:	00f92023          	sw	a5,0(s2)
   16526:	4481                	c.li	s1,0
   16528:	a82d                	c.j	16562 <_realloc_r+0x136>
   1652a:	46dc                	c.lw	a5,12(a3)
   1652c:	4698                	c.lw	a4,8(a3)
   1652e:	4c22                	c.lwsp	s8,8(sp)
   16530:	89b2                	c.mv	s3,a2
   16532:	c75c                	c.sw	a5,12(a4)
   16534:	c798                	c.sw	a4,8(a5)
   16536:	004aa783          	lw	a5,4(s5)
   1653a:	414986b3          	sub	a3,s3,s4
   1653e:	463d                	c.li	a2,15
   16540:	8b85                	c.andi	a5,1
   16542:	013a8733          	add	a4,s5,s3
   16546:	04d66a63          	bltu	a2,a3,1659a <_realloc_r+0x16e>
   1654a:	0137e7b3          	or	a5,a5,s3
   1654e:	00faa223          	sw	a5,4(s5)
   16552:	435c                	c.lw	a5,4(a4)
   16554:	0017e793          	ori	a5,a5,1
   16558:	c35c                	c.sw	a5,4(a4)
   1655a:	854a                	c.mv	a0,s2
   1655c:	c4ffa0ef          	jal	ra,111aa <__malloc_unlock>
   16560:	84a2                	c.mv	s1,s0
   16562:	5422                	c.lwsp	s0,40(sp)
   16564:	50b2                	c.lwsp	ra,44(sp)
   16566:	5902                	c.lwsp	s2,32(sp)
   16568:	49f2                	c.lwsp	s3,28(sp)
   1656a:	4a62                	c.lwsp	s4,24(sp)
   1656c:	4ad2                	c.lwsp	s5,20(sp)
   1656e:	8526                	c.mv	a0,s1
   16570:	5492                	c.lwsp	s1,36(sp)
   16572:	6145                	c.addi16sp	sp,48
   16574:	8082                	c.jr	ra
   16576:	8b05                	c.andi	a4,1
   16578:	fb21                	c.bnez	a4,164c8 <_realloc_r+0x9c>
   1657a:	c65e                	c.swsp	s7,12(sp)
   1657c:	ff842b83          	lw	s7,-8(s0)
   16580:	c85a                	c.swsp	s6,16(sp)
   16582:	417a8bb3          	sub	s7,s5,s7
   16586:	004ba703          	lw	a4,4(s7)
   1658a:	9b71                	c.andi	a4,-4
   1658c:	bf05                	c.j	164bc <_realloc_r+0x90>
   1658e:	50b2                	c.lwsp	ra,44(sp)
   16590:	5492                	c.lwsp	s1,36(sp)
   16592:	85b2                	c.mv	a1,a2
   16594:	6145                	c.addi16sp	sp,48
   16596:	e46fa06f          	jal	zero,10bdc <_malloc_r>
   1659a:	0147e7b3          	or	a5,a5,s4
   1659e:	00faa223          	sw	a5,4(s5)
   165a2:	014a85b3          	add	a1,s5,s4
   165a6:	0016e693          	ori	a3,a3,1
   165aa:	c1d4                	c.sw	a3,4(a1)
   165ac:	435c                	c.lw	a5,4(a4)
   165ae:	05a1                	c.addi	a1,8
   165b0:	854a                	c.mv	a0,s2
   165b2:	0017e793          	ori	a5,a5,1
   165b6:	c35c                	c.sw	a5,4(a4)
   165b8:	c08fa0ef          	jal	ra,109c0 <_free_r>
   165bc:	bf79                	c.j	1655a <_realloc_r+0x12e>
   165be:	9bf1                	c.andi	a5,-4
   165c0:	013786b3          	add	a3,a5,s3
   165c4:	010a0613          	addi	a2,s4,16
   165c8:	18c6d863          	bge	a3,a2,16758 <_realloc_r+0x32c>
   165cc:	8b05                	c.andi	a4,1
   165ce:	ee071de3          	bne	a4,zero,164c8 <_realloc_r+0x9c>
   165d2:	c65e                	c.swsp	s7,12(sp)
   165d4:	ff842b83          	lw	s7,-8(s0)
   165d8:	c85a                	c.swsp	s6,16(sp)
   165da:	417a8bb3          	sub	s7,s5,s7
   165de:	004ba703          	lw	a4,4(s7)
   165e2:	9b71                	c.andi	a4,-4
   165e4:	97ba                	c.add	a5,a4
   165e6:	01378b33          	add	s6,a5,s3
   165ea:	eccb49e3          	blt	s6,a2,164bc <_realloc_r+0x90>
   165ee:	00cba783          	lw	a5,12(s7)
   165f2:	008ba703          	lw	a4,8(s7)
   165f6:	ffc98613          	addi	a2,s3,-4
   165fa:	02400693          	addi	a3,zero,36
   165fe:	c75c                	c.sw	a5,12(a4)
   16600:	c798                	c.sw	a4,8(a5)
   16602:	008b8493          	addi	s1,s7,8
   16606:	1cc6e863          	bltu	a3,a2,167d6 <_realloc_r+0x3aa>
   1660a:	474d                	c.li	a4,19
   1660c:	87a6                	c.mv	a5,s1
   1660e:	00c77e63          	bgeu	a4,a2,1662a <_realloc_r+0x1fe>
   16612:	4018                	c.lw	a4,0(s0)
   16614:	47ed                	c.li	a5,27
   16616:	00eba423          	sw	a4,8(s7)
   1661a:	4058                	c.lw	a4,4(s0)
   1661c:	00eba623          	sw	a4,12(s7)
   16620:	1cc7eb63          	bltu	a5,a2,167f6 <_realloc_r+0x3ca>
   16624:	0421                	c.addi	s0,8
   16626:	010b8793          	addi	a5,s7,16
   1662a:	4018                	c.lw	a4,0(s0)
   1662c:	c398                	c.sw	a4,0(a5)
   1662e:	4058                	c.lw	a4,4(s0)
   16630:	c3d8                	c.sw	a4,4(a5)
   16632:	4418                	c.lw	a4,8(s0)
   16634:	c798                	c.sw	a4,8(a5)
   16636:	014b87b3          	add	a5,s7,s4
   1663a:	414b0733          	sub	a4,s6,s4
   1663e:	00fc2423          	sw	a5,8(s8)
   16642:	00176713          	ori	a4,a4,1
   16646:	c3d8                	c.sw	a4,4(a5)
   16648:	004ba783          	lw	a5,4(s7)
   1664c:	854a                	c.mv	a0,s2
   1664e:	8b85                	c.andi	a5,1
   16650:	0147e7b3          	or	a5,a5,s4
   16654:	00fba223          	sw	a5,4(s7)
   16658:	b53fa0ef          	jal	ra,111aa <__malloc_unlock>
   1665c:	4b42                	c.lwsp	s6,16(sp)
   1665e:	4bb2                	c.lwsp	s7,12(sp)
   16660:	4c22                	c.lwsp	s8,8(sp)
   16662:	b701                	c.j	16562 <_realloc_r+0x136>
   16664:	4014                	c.lw	a3,0(s0)
   16666:	476d                	c.li	a4,27
   16668:	c114                	c.sw	a3,0(a0)
   1666a:	4054                	c.lw	a3,4(s0)
   1666c:	c154                	c.sw	a3,4(a0)
   1666e:	0cc76a63          	bltu	a4,a2,16742 <_realloc_r+0x316>
   16672:	00840713          	addi	a4,s0,8
   16676:	00850793          	addi	a5,a0,8
   1667a:	b549                	c.j	164fc <_realloc_r+0xd0>
   1667c:	ffc52783          	lw	a5,-4(a0)
   16680:	4c22                	c.lwsp	s8,8(sp)
   16682:	9bf1                	c.andi	a5,-4
   16684:	99be                	c.add	s3,a5
   16686:	bd45                	c.j	16536 <_realloc_r+0x10a>
   16688:	00cba783          	lw	a5,12(s7)
   1668c:	008ba683          	lw	a3,8(s7)
   16690:	ffc98613          	addi	a2,s3,-4
   16694:	02400593          	addi	a1,zero,36
   16698:	c6dc                	c.sw	a5,12(a3)
   1669a:	c794                	c.sw	a3,8(a5)
   1669c:	008b8493          	addi	s1,s7,8
   166a0:	08c5ec63          	bltu	a1,a2,16738 <_realloc_r+0x30c>
   166a4:	46cd                	c.li	a3,19
   166a6:	87a6                	c.mv	a5,s1
   166a8:	00c6fe63          	bgeu	a3,a2,166c4 <_realloc_r+0x298>
   166ac:	4018                	c.lw	a4,0(s0)
   166ae:	47ed                	c.li	a5,27
   166b0:	00eba423          	sw	a4,8(s7)
   166b4:	4058                	c.lw	a4,4(s0)
   166b6:	00eba623          	sw	a4,12(s7)
   166ba:	0cc7e563          	bltu	a5,a2,16784 <_realloc_r+0x358>
   166be:	0421                	c.addi	s0,8
   166c0:	010b8793          	addi	a5,s7,16
   166c4:	4014                	c.lw	a3,0(s0)
   166c6:	c394                	c.sw	a3,0(a5)
   166c8:	4054                	c.lw	a3,4(s0)
   166ca:	c3d4                	c.sw	a3,4(a5)
   166cc:	4414                	c.lw	a3,8(s0)
   166ce:	c794                	c.sw	a3,8(a5)
   166d0:	89da                	c.mv	s3,s6
   166d2:	8ade                	c.mv	s5,s7
   166d4:	4b42                	c.lwsp	s6,16(sp)
   166d6:	4bb2                	c.lwsp	s7,12(sp)
   166d8:	4c22                	c.lwsp	s8,8(sp)
   166da:	8426                	c.mv	s0,s1
   166dc:	bda9                	c.j	16536 <_realloc_r+0x10a>
   166de:	85a2                	c.mv	a1,s0
   166e0:	ec8fd0ef          	jal	ra,13da8 <memmove>
   166e4:	b515                	c.j	16508 <_realloc_r+0xdc>
   166e6:	46dc                	c.lw	a5,12(a3)
   166e8:	4698                	c.lw	a4,8(a3)
   166ea:	ffc98613          	addi	a2,s3,-4
   166ee:	02400693          	addi	a3,zero,36
   166f2:	c75c                	c.sw	a5,12(a4)
   166f4:	c798                	c.sw	a4,8(a5)
   166f6:	008ba703          	lw	a4,8(s7)
   166fa:	00cba783          	lw	a5,12(s7)
   166fe:	008b8493          	addi	s1,s7,8
   16702:	c75c                	c.sw	a5,12(a4)
   16704:	c798                	c.sw	a4,8(a5)
   16706:	02c6e963          	bltu	a3,a2,16738 <_realloc_r+0x30c>
   1670a:	474d                	c.li	a4,19
   1670c:	87a6                	c.mv	a5,s1
   1670e:	00c77e63          	bgeu	a4,a2,1672a <_realloc_r+0x2fe>
   16712:	4018                	c.lw	a4,0(s0)
   16714:	47ed                	c.li	a5,27
   16716:	00eba423          	sw	a4,8(s7)
   1671a:	4058                	c.lw	a4,4(s0)
   1671c:	00eba623          	sw	a4,12(s7)
   16720:	08c7ed63          	bltu	a5,a2,167ba <_realloc_r+0x38e>
   16724:	0421                	c.addi	s0,8
   16726:	010b8793          	addi	a5,s7,16
   1672a:	4018                	c.lw	a4,0(s0)
   1672c:	c398                	c.sw	a4,0(a5)
   1672e:	4058                	c.lw	a4,4(s0)
   16730:	c3d8                	c.sw	a4,4(a5)
   16732:	4418                	c.lw	a4,8(s0)
   16734:	c798                	c.sw	a4,8(a5)
   16736:	bf69                	c.j	166d0 <_realloc_r+0x2a4>
   16738:	85a2                	c.mv	a1,s0
   1673a:	8526                	c.mv	a0,s1
   1673c:	e6cfd0ef          	jal	ra,13da8 <memmove>
   16740:	bf41                	c.j	166d0 <_realloc_r+0x2a4>
   16742:	4418                	c.lw	a4,8(s0)
   16744:	c518                	c.sw	a4,8(a0)
   16746:	4458                	c.lw	a4,12(s0)
   16748:	c558                	c.sw	a4,12(a0)
   1674a:	04f60f63          	beq	a2,a5,167a8 <_realloc_r+0x37c>
   1674e:	01040713          	addi	a4,s0,16
   16752:	01050793          	addi	a5,a0,16
   16756:	b35d                	c.j	164fc <_realloc_r+0xd0>
   16758:	9ad2                	c.add	s5,s4
   1675a:	414686b3          	sub	a3,a3,s4
   1675e:	015c2423          	sw	s5,8(s8)
   16762:	0016e793          	ori	a5,a3,1
   16766:	00faa223          	sw	a5,4(s5)
   1676a:	ffc42783          	lw	a5,-4(s0)
   1676e:	854a                	c.mv	a0,s2
   16770:	84a2                	c.mv	s1,s0
   16772:	8b85                	c.andi	a5,1
   16774:	0147e7b3          	or	a5,a5,s4
   16778:	fef42e23          	sw	a5,-4(s0)
   1677c:	a2ffa0ef          	jal	ra,111aa <__malloc_unlock>
   16780:	4c22                	c.lwsp	s8,8(sp)
   16782:	b3c5                	c.j	16562 <_realloc_r+0x136>
   16784:	441c                	c.lw	a5,8(s0)
   16786:	00fba823          	sw	a5,16(s7)
   1678a:	445c                	c.lw	a5,12(s0)
   1678c:	00fbaa23          	sw	a5,20(s7)
   16790:	04b60863          	beq	a2,a1,167e0 <_realloc_r+0x3b4>
   16794:	0441                	c.addi	s0,16
   16796:	018b8793          	addi	a5,s7,24
   1679a:	b72d                	c.j	166c4 <_realloc_r+0x298>
   1679c:	854a                	c.mv	a0,s2
   1679e:	a0dfa0ef          	jal	ra,111aa <__malloc_unlock>
   167a2:	4481                	c.li	s1,0
   167a4:	4c22                	c.lwsp	s8,8(sp)
   167a6:	bb75                	c.j	16562 <_realloc_r+0x136>
   167a8:	4814                	c.lw	a3,16(s0)
   167aa:	01840713          	addi	a4,s0,24
   167ae:	01850793          	addi	a5,a0,24
   167b2:	c914                	c.sw	a3,16(a0)
   167b4:	4854                	c.lw	a3,20(s0)
   167b6:	c954                	c.sw	a3,20(a0)
   167b8:	b391                	c.j	164fc <_realloc_r+0xd0>
   167ba:	4418                	c.lw	a4,8(s0)
   167bc:	02400793          	addi	a5,zero,36
   167c0:	00eba823          	sw	a4,16(s7)
   167c4:	4458                	c.lw	a4,12(s0)
   167c6:	00ebaa23          	sw	a4,20(s7)
   167ca:	04f60263          	beq	a2,a5,1680e <_realloc_r+0x3e2>
   167ce:	0441                	c.addi	s0,16
   167d0:	018b8793          	addi	a5,s7,24
   167d4:	bf99                	c.j	1672a <_realloc_r+0x2fe>
   167d6:	85a2                	c.mv	a1,s0
   167d8:	8526                	c.mv	a0,s1
   167da:	dcefd0ef          	jal	ra,13da8 <memmove>
   167de:	bda1                	c.j	16636 <_realloc_r+0x20a>
   167e0:	4818                	c.lw	a4,16(s0)
   167e2:	020b8793          	addi	a5,s7,32
   167e6:	0461                	c.addi	s0,24
   167e8:	00ebac23          	sw	a4,24(s7)
   167ec:	ffc42703          	lw	a4,-4(s0)
   167f0:	00ebae23          	sw	a4,28(s7)
   167f4:	bdc1                	c.j	166c4 <_realloc_r+0x298>
   167f6:	441c                	c.lw	a5,8(s0)
   167f8:	00fba823          	sw	a5,16(s7)
   167fc:	445c                	c.lw	a5,12(s0)
   167fe:	00fbaa23          	sw	a5,20(s7)
   16802:	02d60163          	beq	a2,a3,16824 <_realloc_r+0x3f8>
   16806:	0441                	c.addi	s0,16
   16808:	018b8793          	addi	a5,s7,24
   1680c:	bd39                	c.j	1662a <_realloc_r+0x1fe>
   1680e:	4818                	c.lw	a4,16(s0)
   16810:	020b8793          	addi	a5,s7,32
   16814:	0461                	c.addi	s0,24
   16816:	00ebac23          	sw	a4,24(s7)
   1681a:	ffc42703          	lw	a4,-4(s0)
   1681e:	00ebae23          	sw	a4,28(s7)
   16822:	b721                	c.j	1672a <_realloc_r+0x2fe>
   16824:	4818                	c.lw	a4,16(s0)
   16826:	020b8793          	addi	a5,s7,32
   1682a:	00ebac23          	sw	a4,24(s7)
   1682e:	4858                	c.lw	a4,20(s0)
   16830:	0461                	c.addi	s0,24
   16832:	00ebae23          	sw	a4,28(s7)
   16836:	bbd5                	c.j	1662a <_realloc_r+0x1fe>

00016838 <__smakebuf_r>:
   16838:	00c59783          	lh	a5,12(a1)
   1683c:	7159                	c.addi16sp	sp,-112
   1683e:	d4a2                	c.swsp	s0,104(sp)
   16840:	d686                	c.swsp	ra,108(sp)
   16842:	0027f713          	andi	a4,a5,2
   16846:	842e                	c.mv	s0,a1
   16848:	cb19                	c.beqz	a4,1685e <__smakebuf_r+0x26>
   1684a:	04358793          	addi	a5,a1,67
   1684e:	4705                	c.li	a4,1
   16850:	c19c                	c.sw	a5,0(a1)
   16852:	c99c                	c.sw	a5,16(a1)
   16854:	c9d8                	c.sw	a4,20(a1)
   16856:	50b6                	c.lwsp	ra,108(sp)
   16858:	5426                	c.lwsp	s0,104(sp)
   1685a:	6165                	c.addi16sp	sp,112
   1685c:	8082                	c.jr	ra
   1685e:	00e59583          	lh	a1,14(a1)
   16862:	d0ca                	c.swsp	s2,96(sp)
   16864:	d2a6                	c.swsp	s1,100(sp)
   16866:	892a                	c.mv	s2,a0
   16868:	0405cd63          	blt	a1,zero,168c2 <__smakebuf_r+0x8a>
   1686c:	0030                	c.addi4spn	a2,sp,8
   1686e:	22c5                	c.jal	16a4e <_fstat_r>
   16870:	04054763          	blt	a0,zero,168be <__smakebuf_r+0x86>
   16874:	40000593          	addi	a1,zero,1024
   16878:	854a                	c.mv	a0,s2
   1687a:	44b2                	c.lwsp	s1,12(sp)
   1687c:	b60fa0ef          	jal	ra,10bdc <_malloc_r>
   16880:	00c41783          	lh	a5,12(s0)
   16884:	cd3d                	c.beqz	a0,16902 <__smakebuf_r+0xca>
   16886:	673d                	c.lui	a4,0xf
   16888:	0807e793          	ori	a5,a5,128
   1688c:	40000693          	addi	a3,zero,1024
   16890:	8cf9                	c.and	s1,a4
   16892:	00f41623          	sh	a5,12(s0)
   16896:	c008                	c.sw	a0,0(s0)
   16898:	c808                	c.sw	a0,16(s0)
   1689a:	c854                	c.sw	a3,20(s0)
   1689c:	6709                	c.lui	a4,0x2
   1689e:	08e49663          	bne	s1,a4,1692a <__smakebuf_r+0xf2>
   168a2:	00e41583          	lh	a1,14(s0)
   168a6:	854a                	c.mv	a0,s2
   168a8:	22c5                	c.jal	16a88 <_isatty_r>
   168aa:	6705                	c.lui	a4,0x1
   168ac:	00c41783          	lh	a5,12(s0)
   168b0:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8b4>
   168b4:	cd15                	c.beqz	a0,168f0 <__smakebuf_r+0xb8>
   168b6:	9bf1                	c.andi	a5,-4
   168b8:	0017e793          	ori	a5,a5,1
   168bc:	a815                	c.j	168f0 <__smakebuf_r+0xb8>
   168be:	00c41783          	lh	a5,12(s0)
   168c2:	0807f493          	andi	s1,a5,128
   168c6:	0014b493          	sltiu	s1,s1,1
   168ca:	409004b3          	sub	s1,zero,s1
   168ce:	3c04f493          	andi	s1,s1,960
   168d2:	04048493          	addi	s1,s1,64
   168d6:	854a                	c.mv	a0,s2
   168d8:	85a6                	c.mv	a1,s1
   168da:	b02fa0ef          	jal	ra,10bdc <_malloc_r>
   168de:	00c41783          	lh	a5,12(s0)
   168e2:	c105                	c.beqz	a0,16902 <__smakebuf_r+0xca>
   168e4:	0807e793          	ori	a5,a5,128
   168e8:	c008                	c.sw	a0,0(s0)
   168ea:	c808                	c.sw	a0,16(s0)
   168ec:	c844                	c.sw	s1,20(s0)
   168ee:	4701                	c.li	a4,0
   168f0:	8fd9                	c.or	a5,a4
   168f2:	50b6                	c.lwsp	ra,108(sp)
   168f4:	00f41623          	sh	a5,12(s0)
   168f8:	5426                	c.lwsp	s0,104(sp)
   168fa:	5496                	c.lwsp	s1,100(sp)
   168fc:	5906                	c.lwsp	s2,96(sp)
   168fe:	6165                	c.addi16sp	sp,112
   16900:	8082                	c.jr	ra
   16902:	2007f713          	andi	a4,a5,512
   16906:	ef19                	c.bnez	a4,16924 <__smakebuf_r+0xec>
   16908:	9bf1                	c.andi	a5,-4
   1690a:	04340713          	addi	a4,s0,67
   1690e:	0027e793          	ori	a5,a5,2
   16912:	4685                	c.li	a3,1
   16914:	5496                	c.lwsp	s1,100(sp)
   16916:	5906                	c.lwsp	s2,96(sp)
   16918:	00f41623          	sh	a5,12(s0)
   1691c:	c018                	c.sw	a4,0(s0)
   1691e:	c818                	c.sw	a4,16(s0)
   16920:	c854                	c.sw	a3,20(s0)
   16922:	bf15                	c.j	16856 <__smakebuf_r+0x1e>
   16924:	5496                	c.lwsp	s1,100(sp)
   16926:	5906                	c.lwsp	s2,96(sp)
   16928:	b73d                	c.j	16856 <__smakebuf_r+0x1e>
   1692a:	6705                	c.lui	a4,0x1
   1692c:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf8b4>
   16930:	b7c1                	c.j	168f0 <__smakebuf_r+0xb8>

00016932 <__swhatbuf_r>:
   16932:	7159                	c.addi16sp	sp,-112
   16934:	d4a2                	c.swsp	s0,104(sp)
   16936:	842e                	c.mv	s0,a1
   16938:	00e59583          	lh	a1,14(a1)
   1693c:	d2a6                	c.swsp	s1,100(sp)
   1693e:	d0ca                	c.swsp	s2,96(sp)
   16940:	d686                	c.swsp	ra,108(sp)
   16942:	84b2                	c.mv	s1,a2
   16944:	8936                	c.mv	s2,a3
   16946:	0205cb63          	blt	a1,zero,1697c <__swhatbuf_r+0x4a>
   1694a:	0030                	c.addi4spn	a2,sp,8
   1694c:	2209                	c.jal	16a4e <_fstat_r>
   1694e:	02054763          	blt	a0,zero,1697c <__swhatbuf_r+0x4a>
   16952:	47b2                	c.lwsp	a5,12(sp)
   16954:	66bd                	c.lui	a3,0xf
   16956:	7779                	c.lui	a4,0xffffe
   16958:	8ff5                	c.and	a5,a3
   1695a:	97ba                	c.add	a5,a4
   1695c:	50b6                	c.lwsp	ra,108(sp)
   1695e:	5426                	c.lwsp	s0,104(sp)
   16960:	0017b793          	sltiu	a5,a5,1
   16964:	00f92023          	sw	a5,0(s2)
   16968:	40000713          	addi	a4,zero,1024
   1696c:	c098                	c.sw	a4,0(s1)
   1696e:	6505                	c.lui	a0,0x1
   16970:	5496                	c.lwsp	s1,100(sp)
   16972:	5906                	c.lwsp	s2,96(sp)
   16974:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf8b4>
   16978:	6165                	c.addi16sp	sp,112
   1697a:	8082                	c.jr	ra
   1697c:	00c45783          	lhu	a5,12(s0)
   16980:	0807f793          	andi	a5,a5,128
   16984:	cf91                	c.beqz	a5,169a0 <__swhatbuf_r+0x6e>
   16986:	50b6                	c.lwsp	ra,108(sp)
   16988:	5426                	c.lwsp	s0,104(sp)
   1698a:	4781                	c.li	a5,0
   1698c:	00f92023          	sw	a5,0(s2)
   16990:	04000713          	addi	a4,zero,64
   16994:	c098                	c.sw	a4,0(s1)
   16996:	5906                	c.lwsp	s2,96(sp)
   16998:	5496                	c.lwsp	s1,100(sp)
   1699a:	4501                	c.li	a0,0
   1699c:	6165                	c.addi16sp	sp,112
   1699e:	8082                	c.jr	ra
   169a0:	50b6                	c.lwsp	ra,108(sp)
   169a2:	5426                	c.lwsp	s0,104(sp)
   169a4:	00f92023          	sw	a5,0(s2)
   169a8:	40000713          	addi	a4,zero,1024
   169ac:	c098                	c.sw	a4,0(s1)
   169ae:	5906                	c.lwsp	s2,96(sp)
   169b0:	5496                	c.lwsp	s1,100(sp)
   169b2:	4501                	c.li	a0,0
   169b4:	6165                	c.addi16sp	sp,112
   169b6:	8082                	c.jr	ra

000169b8 <_setlocale_r>:
   169b8:	1141                	c.addi	sp,-16
   169ba:	c606                	c.swsp	ra,12(sp)
   169bc:	c226                	c.swsp	s1,4(sp)
   169be:	c20d                	c.beqz	a2,169e0 <_setlocale_r+0x28>
   169c0:	65ed                	c.lui	a1,0x1b
   169c2:	85c58593          	addi	a1,a1,-1956 # 1a85c <__clzsi2+0x17c>
   169c6:	8532                	c.mv	a0,a2
   169c8:	c422                	c.swsp	s0,8(sp)
   169ca:	8432                	c.mv	s0,a2
   169cc:	28cd                	c.jal	16abe <strcmp>
   169ce:	64ed                	c.lui	s1,0x1b
   169d0:	e911                	c.bnez	a0,169e4 <_setlocale_r+0x2c>
   169d2:	4422                	c.lwsp	s0,8(sp)
   169d4:	85848513          	addi	a0,s1,-1960 # 1a858 <__clzsi2+0x178>
   169d8:	40b2                	c.lwsp	ra,12(sp)
   169da:	4492                	c.lwsp	s1,4(sp)
   169dc:	0141                	c.addi	sp,16
   169de:	8082                	c.jr	ra
   169e0:	64ed                	c.lui	s1,0x1b
   169e2:	bfcd                	c.j	169d4 <_setlocale_r+0x1c>
   169e4:	85848593          	addi	a1,s1,-1960 # 1a858 <__clzsi2+0x178>
   169e8:	8522                	c.mv	a0,s0
   169ea:	28d1                	c.jal	16abe <strcmp>
   169ec:	d17d                	c.beqz	a0,169d2 <_setlocale_r+0x1a>
   169ee:	65ed                	c.lui	a1,0x1b
   169f0:	8522                	c.mv	a0,s0
   169f2:	87458593          	addi	a1,a1,-1932 # 1a874 <__clzsi2+0x194>
   169f6:	20e1                	c.jal	16abe <strcmp>
   169f8:	dd69                	c.beqz	a0,169d2 <_setlocale_r+0x1a>
   169fa:	4422                	c.lwsp	s0,8(sp)
   169fc:	4501                	c.li	a0,0
   169fe:	bfe9                	c.j	169d8 <_setlocale_r+0x20>

00016a00 <__locale_mb_cur_max>:
   16a00:	e601c503          	lbu	a0,-416(gp) # 1b670 <__global_locale+0x128>
   16a04:	8082                	c.jr	ra

00016a06 <setlocale>:
   16a06:	1141                	c.addi	sp,-16
   16a08:	c606                	c.swsp	ra,12(sp)
   16a0a:	c226                	c.swsp	s1,4(sp)
   16a0c:	c18d                	c.beqz	a1,16a2e <setlocale+0x28>
   16a0e:	c422                	c.swsp	s0,8(sp)
   16a10:	842e                	c.mv	s0,a1
   16a12:	65ed                	c.lui	a1,0x1b
   16a14:	85c58593          	addi	a1,a1,-1956 # 1a85c <__clzsi2+0x17c>
   16a18:	8522                	c.mv	a0,s0
   16a1a:	2055                	c.jal	16abe <strcmp>
   16a1c:	64ed                	c.lui	s1,0x1b
   16a1e:	e911                	c.bnez	a0,16a32 <setlocale+0x2c>
   16a20:	4422                	c.lwsp	s0,8(sp)
   16a22:	85848513          	addi	a0,s1,-1960 # 1a858 <__clzsi2+0x178>
   16a26:	40b2                	c.lwsp	ra,12(sp)
   16a28:	4492                	c.lwsp	s1,4(sp)
   16a2a:	0141                	c.addi	sp,16
   16a2c:	8082                	c.jr	ra
   16a2e:	64ed                	c.lui	s1,0x1b
   16a30:	bfcd                	c.j	16a22 <setlocale+0x1c>
   16a32:	85848593          	addi	a1,s1,-1960 # 1a858 <__clzsi2+0x178>
   16a36:	8522                	c.mv	a0,s0
   16a38:	2059                	c.jal	16abe <strcmp>
   16a3a:	d17d                	c.beqz	a0,16a20 <setlocale+0x1a>
   16a3c:	65ed                	c.lui	a1,0x1b
   16a3e:	8522                	c.mv	a0,s0
   16a40:	87458593          	addi	a1,a1,-1932 # 1a874 <__clzsi2+0x194>
   16a44:	28ad                	c.jal	16abe <strcmp>
   16a46:	dd69                	c.beqz	a0,16a20 <setlocale+0x1a>
   16a48:	4422                	c.lwsp	s0,8(sp)
   16a4a:	4501                	c.li	a0,0
   16a4c:	bfe9                	c.j	16a26 <setlocale+0x20>

00016a4e <_fstat_r>:
   16a4e:	1141                	c.addi	sp,-16
   16a50:	872e                	c.mv	a4,a1
   16a52:	c422                	c.swsp	s0,8(sp)
   16a54:	c226                	c.swsp	s1,4(sp)
   16a56:	85b2                	c.mv	a1,a2
   16a58:	842a                	c.mv	s0,a0
   16a5a:	853a                	c.mv	a0,a4
   16a5c:	c606                	c.swsp	ra,12(sp)
   16a5e:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   16a62:	74c010ef          	jal	ra,181ae <_fstat>
   16a66:	57fd                	c.li	a5,-1
   16a68:	00f50763          	beq	a0,a5,16a76 <_fstat_r+0x28>
   16a6c:	40b2                	c.lwsp	ra,12(sp)
   16a6e:	4422                	c.lwsp	s0,8(sp)
   16a70:	4492                	c.lwsp	s1,4(sp)
   16a72:	0141                	c.addi	sp,16
   16a74:	8082                	c.jr	ra
   16a76:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   16a7a:	dbed                	c.beqz	a5,16a6c <_fstat_r+0x1e>
   16a7c:	40b2                	c.lwsp	ra,12(sp)
   16a7e:	c01c                	c.sw	a5,0(s0)
   16a80:	4422                	c.lwsp	s0,8(sp)
   16a82:	4492                	c.lwsp	s1,4(sp)
   16a84:	0141                	c.addi	sp,16
   16a86:	8082                	c.jr	ra

00016a88 <_isatty_r>:
   16a88:	1141                	c.addi	sp,-16
   16a8a:	c422                	c.swsp	s0,8(sp)
   16a8c:	c226                	c.swsp	s1,4(sp)
   16a8e:	842a                	c.mv	s0,a0
   16a90:	852e                	c.mv	a0,a1
   16a92:	c606                	c.swsp	ra,12(sp)
   16a94:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   16a98:	754010ef          	jal	ra,181ec <_isatty>
   16a9c:	57fd                	c.li	a5,-1
   16a9e:	00f50763          	beq	a0,a5,16aac <_isatty_r+0x24>
   16aa2:	40b2                	c.lwsp	ra,12(sp)
   16aa4:	4422                	c.lwsp	s0,8(sp)
   16aa6:	4492                	c.lwsp	s1,4(sp)
   16aa8:	0141                	c.addi	sp,16
   16aaa:	8082                	c.jr	ra
   16aac:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   16ab0:	dbed                	c.beqz	a5,16aa2 <_isatty_r+0x1a>
   16ab2:	40b2                	c.lwsp	ra,12(sp)
   16ab4:	c01c                	c.sw	a5,0(s0)
   16ab6:	4422                	c.lwsp	s0,8(sp)
   16ab8:	4492                	c.lwsp	s1,4(sp)
   16aba:	0141                	c.addi	sp,16
   16abc:	8082                	c.jr	ra

00016abe <strcmp>:
   16abe:	00b56733          	or	a4,a0,a1
   16ac2:	53fd                	c.li	t2,-1
   16ac4:	8b0d                	c.andi	a4,3
   16ac6:	e779                	c.bnez	a4,16b94 <strcmp+0xd6>
   16ac8:	7f7f87b7          	lui	a5,0x7f7f8
   16acc:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7dc523>
   16ad0:	4110                	c.lw	a2,0(a0)
   16ad2:	4194                	c.lw	a3,0(a1)
   16ad4:	00f672b3          	and	t0,a2,a5
   16ad8:	00f66333          	or	t1,a2,a5
   16adc:	92be                	c.add	t0,a5
   16ade:	0062e2b3          	or	t0,t0,t1
   16ae2:	0c729763          	bne	t0,t2,16bb0 <strcmp+0xf2>
   16ae6:	06d61863          	bne	a2,a3,16b56 <strcmp+0x98>
   16aea:	4150                	c.lw	a2,4(a0)
   16aec:	41d4                	c.lw	a3,4(a1)
   16aee:	00f672b3          	and	t0,a2,a5
   16af2:	00f66333          	or	t1,a2,a5
   16af6:	92be                	c.add	t0,a5
   16af8:	0062e2b3          	or	t0,t0,t1
   16afc:	0a729863          	bne	t0,t2,16bac <strcmp+0xee>
   16b00:	04d61b63          	bne	a2,a3,16b56 <strcmp+0x98>
   16b04:	4510                	c.lw	a2,8(a0)
   16b06:	4594                	c.lw	a3,8(a1)
   16b08:	00f672b3          	and	t0,a2,a5
   16b0c:	00f66333          	or	t1,a2,a5
   16b10:	92be                	c.add	t0,a5
   16b12:	0062e2b3          	or	t0,t0,t1
   16b16:	0a729163          	bne	t0,t2,16bb8 <strcmp+0xfa>
   16b1a:	02d61e63          	bne	a2,a3,16b56 <strcmp+0x98>
   16b1e:	4550                	c.lw	a2,12(a0)
   16b20:	45d4                	c.lw	a3,12(a1)
   16b22:	00f672b3          	and	t0,a2,a5
   16b26:	00f66333          	or	t1,a2,a5
   16b2a:	92be                	c.add	t0,a5
   16b2c:	0062e2b3          	or	t0,t0,t1
   16b30:	08729a63          	bne	t0,t2,16bc4 <strcmp+0x106>
   16b34:	02d61163          	bne	a2,a3,16b56 <strcmp+0x98>
   16b38:	4910                	c.lw	a2,16(a0)
   16b3a:	4994                	c.lw	a3,16(a1)
   16b3c:	00f672b3          	and	t0,a2,a5
   16b40:	00f66333          	or	t1,a2,a5
   16b44:	92be                	c.add	t0,a5
   16b46:	0062e2b3          	or	t0,t0,t1
   16b4a:	08729363          	bne	t0,t2,16bd0 <strcmp+0x112>
   16b4e:	0551                	c.addi	a0,20
   16b50:	05d1                	c.addi	a1,20
   16b52:	f6d60fe3          	beq	a2,a3,16ad0 <strcmp+0x12>
   16b56:	01061713          	slli	a4,a2,0x10
   16b5a:	01069793          	slli	a5,a3,0x10
   16b5e:	00f71c63          	bne	a4,a5,16b76 <strcmp+0xb8>
   16b62:	01065713          	srli	a4,a2,0x10
   16b66:	0106d793          	srli	a5,a3,0x10
   16b6a:	40f70533          	sub	a0,a4,a5
   16b6e:	0ff57593          	andi	a1,a0,255
   16b72:	e991                	c.bnez	a1,16b86 <strcmp+0xc8>
   16b74:	8082                	c.jr	ra
   16b76:	8341                	c.srli	a4,0x10
   16b78:	83c1                	c.srli	a5,0x10
   16b7a:	40f70533          	sub	a0,a4,a5
   16b7e:	0ff57593          	andi	a1,a0,255
   16b82:	e191                	c.bnez	a1,16b86 <strcmp+0xc8>
   16b84:	8082                	c.jr	ra
   16b86:	0ff77713          	andi	a4,a4,255
   16b8a:	0ff7f793          	andi	a5,a5,255
   16b8e:	40f70533          	sub	a0,a4,a5
   16b92:	8082                	c.jr	ra
   16b94:	00054603          	lbu	a2,0(a0)
   16b98:	0005c683          	lbu	a3,0(a1)
   16b9c:	0505                	c.addi	a0,1
   16b9e:	0585                	c.addi	a1,1
   16ba0:	00d61363          	bne	a2,a3,16ba6 <strcmp+0xe8>
   16ba4:	fa65                	c.bnez	a2,16b94 <strcmp+0xd6>
   16ba6:	40d60533          	sub	a0,a2,a3
   16baa:	8082                	c.jr	ra
   16bac:	0511                	c.addi	a0,4
   16bae:	0591                	c.addi	a1,4
   16bb0:	fed612e3          	bne	a2,a3,16b94 <strcmp+0xd6>
   16bb4:	4501                	c.li	a0,0
   16bb6:	8082                	c.jr	ra
   16bb8:	0521                	c.addi	a0,8
   16bba:	05a1                	c.addi	a1,8
   16bbc:	fcd61ce3          	bne	a2,a3,16b94 <strcmp+0xd6>
   16bc0:	4501                	c.li	a0,0
   16bc2:	8082                	c.jr	ra
   16bc4:	0531                	c.addi	a0,12
   16bc6:	05b1                	c.addi	a1,12
   16bc8:	fcd616e3          	bne	a2,a3,16b94 <strcmp+0xd6>
   16bcc:	4501                	c.li	a0,0
   16bce:	8082                	c.jr	ra
   16bd0:	0541                	c.addi	a0,16
   16bd2:	05c1                	c.addi	a1,16
   16bd4:	fcd610e3          	bne	a2,a3,16b94 <strcmp+0xd6>
   16bd8:	4501                	c.li	a0,0
   16bda:	8082                	c.jr	ra

00016bdc <__assert_func>:
   16bdc:	f141a783          	lw	a5,-236(gp) # 1b724 <_impure_ptr>
   16be0:	1141                	c.addi	sp,-16
   16be2:	8832                	c.mv	a6,a2
   16be4:	c606                	c.swsp	ra,12(sp)
   16be6:	8636                	c.mv	a2,a3
   16be8:	872e                	c.mv	a4,a1
   16bea:	86aa                	c.mv	a3,a0
   16bec:	47c8                	c.lw	a0,12(a5)
   16bee:	00080b63          	beq	a6,zero,16c04 <__assert_func+0x28>
   16bf2:	67ed                	c.lui	a5,0x1b
   16bf4:	86878793          	addi	a5,a5,-1944 # 1a868 <__clzsi2+0x188>
   16bf8:	65ed                	c.lui	a1,0x1b
   16bfa:	87858593          	addi	a1,a1,-1928 # 1a878 <__clzsi2+0x198>
   16bfe:	22b9                	c.jal	16d4c <fiprintf>
   16c00:	1e0010ef          	jal	ra,17de0 <abort>
   16c04:	686d                	c.lui	a6,0x1b
   16c06:	87480793          	addi	a5,a6,-1932 # 1a874 <__clzsi2+0x194>
   16c0a:	87480813          	addi	a6,a6,-1932
   16c0e:	b7ed                	c.j	16bf8 <__assert_func+0x1c>

00016c10 <__assert>:
   16c10:	1141                	c.addi	sp,-16
   16c12:	86b2                	c.mv	a3,a2
   16c14:	4601                	c.li	a2,0
   16c16:	c606                	c.swsp	ra,12(sp)
   16c18:	37d1                	c.jal	16bdc <__assert_func>

00016c1a <_calloc_r>:
   16c1a:	02c5b7b3          	mulhu	a5,a1,a2
   16c1e:	1141                	c.addi	sp,-16
   16c20:	c606                	c.swsp	ra,12(sp)
   16c22:	c422                	c.swsp	s0,8(sp)
   16c24:	02c585b3          	mul	a1,a1,a2
   16c28:	efa5                	c.bnez	a5,16ca0 <_calloc_r+0x86>
   16c2a:	fb3f90ef          	jal	ra,10bdc <_malloc_r>
   16c2e:	842a                	c.mv	s0,a0
   16c30:	cd25                	c.beqz	a0,16ca8 <_calloc_r+0x8e>
   16c32:	ffc52603          	lw	a2,-4(a0)
   16c36:	02400713          	addi	a4,zero,36
   16c3a:	9a71                	c.andi	a2,-4
   16c3c:	1671                	c.addi	a2,-4
   16c3e:	04c76063          	bltu	a4,a2,16c7e <_calloc_r+0x64>
   16c42:	46cd                	c.li	a3,19
   16c44:	87aa                	c.mv	a5,a0
   16c46:	02c6f163          	bgeu	a3,a2,16c68 <_calloc_r+0x4e>
   16c4a:	00052023          	sw	zero,0(a0)
   16c4e:	00052223          	sw	zero,4(a0)
   16c52:	47ed                	c.li	a5,27
   16c54:	02c7fd63          	bgeu	a5,a2,16c8e <_calloc_r+0x74>
   16c58:	00052423          	sw	zero,8(a0)
   16c5c:	00052623          	sw	zero,12(a0)
   16c60:	01050793          	addi	a5,a0,16
   16c64:	04e60863          	beq	a2,a4,16cb4 <_calloc_r+0x9a>
   16c68:	0007a023          	sw	zero,0(a5)
   16c6c:	0007a223          	sw	zero,4(a5)
   16c70:	0007a423          	sw	zero,8(a5)
   16c74:	40b2                	c.lwsp	ra,12(sp)
   16c76:	8522                	c.mv	a0,s0
   16c78:	4422                	c.lwsp	s0,8(sp)
   16c7a:	0141                	c.addi	sp,16
   16c7c:	8082                	c.jr	ra
   16c7e:	4581                	c.li	a1,0
   16c80:	af5f90ef          	jal	ra,10774 <memset>
   16c84:	40b2                	c.lwsp	ra,12(sp)
   16c86:	8522                	c.mv	a0,s0
   16c88:	4422                	c.lwsp	s0,8(sp)
   16c8a:	0141                	c.addi	sp,16
   16c8c:	8082                	c.jr	ra
   16c8e:	00850793          	addi	a5,a0,8
   16c92:	0007a023          	sw	zero,0(a5)
   16c96:	0007a223          	sw	zero,4(a5)
   16c9a:	0007a423          	sw	zero,8(a5)
   16c9e:	bfd9                	c.j	16c74 <_calloc_r+0x5a>
   16ca0:	13a010ef          	jal	ra,17dda <__errno>
   16ca4:	47b1                	c.li	a5,12
   16ca6:	c11c                	c.sw	a5,0(a0)
   16ca8:	4401                	c.li	s0,0
   16caa:	40b2                	c.lwsp	ra,12(sp)
   16cac:	8522                	c.mv	a0,s0
   16cae:	4422                	c.lwsp	s0,8(sp)
   16cb0:	0141                	c.addi	sp,16
   16cb2:	8082                	c.jr	ra
   16cb4:	00052823          	sw	zero,16(a0)
   16cb8:	00052a23          	sw	zero,20(a0)
   16cbc:	01850793          	addi	a5,a0,24
   16cc0:	b765                	c.j	16c68 <_calloc_r+0x4e>

00016cc2 <_mbtowc_r>:
   16cc2:	e1c1a783          	lw	a5,-484(gp) # 1b62c <__global_locale+0xe4>
   16cc6:	8782                	c.jr	a5

00016cc8 <__ascii_mbtowc>:
   16cc8:	c999                	c.beqz	a1,16cde <__ascii_mbtowc+0x16>
   16cca:	c61d                	c.beqz	a2,16cf8 <__ascii_mbtowc+0x30>
   16ccc:	ca95                	c.beqz	a3,16d00 <__ascii_mbtowc+0x38>
   16cce:	00064783          	lbu	a5,0(a2)
   16cd2:	c19c                	c.sw	a5,0(a1)
   16cd4:	00064503          	lbu	a0,0(a2)
   16cd8:	00a03533          	sltu	a0,zero,a0
   16cdc:	8082                	c.jr	ra
   16cde:	1141                	c.addi	sp,-16
   16ce0:	006c                	c.addi4spn	a1,sp,12
   16ce2:	ce09                	c.beqz	a2,16cfc <__ascii_mbtowc+0x34>
   16ce4:	c285                	c.beqz	a3,16d04 <__ascii_mbtowc+0x3c>
   16ce6:	00064783          	lbu	a5,0(a2)
   16cea:	c19c                	c.sw	a5,0(a1)
   16cec:	00064503          	lbu	a0,0(a2)
   16cf0:	00a03533          	sltu	a0,zero,a0
   16cf4:	0141                	c.addi	sp,16
   16cf6:	8082                	c.jr	ra
   16cf8:	4501                	c.li	a0,0
   16cfa:	8082                	c.jr	ra
   16cfc:	4501                	c.li	a0,0
   16cfe:	bfdd                	c.j	16cf4 <__ascii_mbtowc+0x2c>
   16d00:	5579                	c.li	a0,-2
   16d02:	8082                	c.jr	ra
   16d04:	5579                	c.li	a0,-2
   16d06:	b7fd                	c.j	16cf4 <__ascii_mbtowc+0x2c>

00016d08 <_wctomb_r>:
   16d08:	e181a783          	lw	a5,-488(gp) # 1b628 <__global_locale+0xe0>
   16d0c:	8782                	c.jr	a5

00016d0e <__ascii_wctomb>:
   16d0e:	cd91                	c.beqz	a1,16d2a <__ascii_wctomb+0x1c>
   16d10:	0ff00793          	addi	a5,zero,255
   16d14:	00c7e663          	bltu	a5,a2,16d20 <__ascii_wctomb+0x12>
   16d18:	00c58023          	sb	a2,0(a1)
   16d1c:	4505                	c.li	a0,1
   16d1e:	8082                	c.jr	ra
   16d20:	08a00793          	addi	a5,zero,138
   16d24:	c11c                	c.sw	a5,0(a0)
   16d26:	557d                	c.li	a0,-1
   16d28:	8082                	c.jr	ra
   16d2a:	4501                	c.li	a0,0
   16d2c:	8082                	c.jr	ra

00016d2e <_fiprintf_r>:
   16d2e:	7139                	c.addi16sp	sp,-64
   16d30:	02c10313          	addi	t1,sp,44
   16d34:	d636                	c.swsp	a3,44(sp)
   16d36:	869a                	c.mv	a3,t1
   16d38:	ce06                	c.swsp	ra,28(sp)
   16d3a:	d83a                	c.swsp	a4,48(sp)
   16d3c:	da3e                	c.swsp	a5,52(sp)
   16d3e:	dc42                	c.swsp	a6,56(sp)
   16d40:	de46                	c.swsp	a7,60(sp)
   16d42:	c61a                	c.swsp	t1,12(sp)
   16d44:	2815                	c.jal	16d78 <_vfiprintf_r>
   16d46:	40f2                	c.lwsp	ra,28(sp)
   16d48:	6121                	c.addi16sp	sp,64
   16d4a:	8082                	c.jr	ra

00016d4c <fiprintf>:
   16d4c:	7139                	c.addi16sp	sp,-64
   16d4e:	8eaa                	c.mv	t4,a0
   16d50:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   16d54:	8e2e                	c.mv	t3,a1
   16d56:	02810313          	addi	t1,sp,40
   16d5a:	d432                	c.swsp	a2,40(sp)
   16d5c:	d636                	c.swsp	a3,44(sp)
   16d5e:	85f6                	c.mv	a1,t4
   16d60:	8672                	c.mv	a2,t3
   16d62:	869a                	c.mv	a3,t1
   16d64:	ce06                	c.swsp	ra,28(sp)
   16d66:	d83a                	c.swsp	a4,48(sp)
   16d68:	da3e                	c.swsp	a5,52(sp)
   16d6a:	dc42                	c.swsp	a6,56(sp)
   16d6c:	de46                	c.swsp	a7,60(sp)
   16d6e:	c61a                	c.swsp	t1,12(sp)
   16d70:	2021                	c.jal	16d78 <_vfiprintf_r>
   16d72:	40f2                	c.lwsp	ra,28(sp)
   16d74:	6121                	c.addi16sp	sp,64
   16d76:	8082                	c.jr	ra

00016d78 <_vfiprintf_r>:
   16d78:	7169                	c.addi16sp	sp,-304
   16d7a:	13212023          	sw	s2,288(sp)
   16d7e:	11712623          	sw	s7,268(sp)
   16d82:	11912223          	sw	s9,260(sp)
   16d86:	12112623          	sw	ra,300(sp)
   16d8a:	c636                	c.swsp	a3,12(sp)
   16d8c:	8caa                	c.mv	s9,a0
   16d8e:	8bae                	c.mv	s7,a1
   16d90:	8932                	c.mv	s2,a2
   16d92:	c501                	c.beqz	a0,16d9a <_vfiprintf_r+0x22>
   16d94:	595c                	c.lw	a5,52(a0)
   16d96:	50078be3          	beq	a5,zero,17aac <_vfiprintf_r+0xd34>
   16d9a:	00cb9783          	lh	a5,12(s7)
   16d9e:	064ba703          	lw	a4,100(s7)
   16da2:	6609                	c.lui	a2,0x2
   16da4:	01279693          	slli	a3,a5,0x12
   16da8:	1e06c7e3          	blt	a3,zero,17796 <_vfiprintf_r+0xa1e>
   16dac:	76f9                	c.lui	a3,0xffffe
   16dae:	8fd1                	c.or	a5,a2
   16db0:	16fd                	c.addi	a3,-1 # ffffdfff <__BSS_END__+0xfffe25a3>
   16db2:	8f75                	c.and	a4,a3
   16db4:	00fb9623          	sh	a5,12(s7)
   16db8:	07c2                	c.slli	a5,0x10
   16dba:	87c1                	c.srai	a5,0x10
   16dbc:	06eba223          	sw	a4,100(s7)
   16dc0:	0087f713          	andi	a4,a5,8
   16dc4:	20070563          	beq	a4,zero,16fce <_vfiprintf_r+0x256>
   16dc8:	010ba703          	lw	a4,16(s7)
   16dcc:	20070163          	beq	a4,zero,16fce <_vfiprintf_r+0x256>
   16dd0:	8be9                	c.andi	a5,26
   16dd2:	4729                	c.li	a4,10
   16dd4:	20e78963          	beq	a5,a4,16fe6 <_vfiprintf_r+0x26e>
   16dd8:	11a12023          	sw	s10,256(sp)
   16ddc:	04c10d13          	addi	s10,sp,76
   16de0:	12812423          	sw	s0,296(sp)
   16de4:	11512a23          	sw	s5,276(sp)
   16de8:	11612823          	sw	s6,272(sp)
   16dec:	dfee                	c.swsp	s11,252(sp)
   16dee:	12912223          	sw	s1,292(sp)
   16df2:	11312e23          	sw	s3,284(sp)
   16df6:	11412c23          	sw	s4,280(sp)
   16dfa:	11812423          	sw	s8,264(sp)
   16dfe:	c482                	c.swsp	zero,72(sp)
   16e00:	c282                	c.swsp	zero,68(sp)
   16e02:	c0ea                	c.swsp	s10,64(sp)
   16e04:	846a                	c.mv	s0,s10
   16e06:	c802                	c.swsp	zero,16(sp)
   16e08:	ce02                	c.swsp	zero,28(sp)
   16e0a:	d002                	c.swsp	zero,32(sp)
   16e0c:	c402                	c.swsp	zero,8(sp)
   16e0e:	02500d93          	addi	s11,zero,37
   16e12:	4b1d                	c.li	s6,7
   16e14:	4ac1                	c.li	s5,16
   16e16:	00094783          	lbu	a5,0(s2)
   16e1a:	14078d63          	beq	a5,zero,16f74 <_vfiprintf_r+0x1fc>
   16e1e:	84ca                	c.mv	s1,s2
   16e20:	1fb78663          	beq	a5,s11,1700c <_vfiprintf_r+0x294>
   16e24:	0014c783          	lbu	a5,1(s1)
   16e28:	0485                	c.addi	s1,1
   16e2a:	fbfd                	c.bnez	a5,16e20 <_vfiprintf_r+0xa8>
   16e2c:	41248c33          	sub	s8,s1,s2
   16e30:	15248263          	beq	s1,s2,16f74 <_vfiprintf_r+0x1fc>
   16e34:	4726                	c.lwsp	a4,72(sp)
   16e36:	4796                	c.lwsp	a5,68(sp)
   16e38:	01242023          	sw	s2,0(s0)
   16e3c:	9762                	c.add	a4,s8
   16e3e:	0785                	c.addi	a5,1
   16e40:	01842223          	sw	s8,4(s0)
   16e44:	c4ba                	c.swsp	a4,72(sp)
   16e46:	c2be                	c.swsp	a5,68(sp)
   16e48:	0421                	c.addi	s0,8
   16e4a:	1cfb4863          	blt	s6,a5,1701a <_vfiprintf_r+0x2a2>
   16e4e:	4722                	c.lwsp	a4,8(sp)
   16e50:	0004c783          	lbu	a5,0(s1)
   16e54:	9762                	c.add	a4,s8
   16e56:	c43a                	c.swsp	a4,8(sp)
   16e58:	10078e63          	beq	a5,zero,16f74 <_vfiprintf_r+0x1fc>
   16e5c:	4681                	c.li	a3,0
   16e5e:	0014c703          	lbu	a4,1(s1)
   16e62:	00148913          	addi	s2,s1,1
   16e66:	02010da3          	sb	zero,59(sp)
   16e6a:	54fd                	c.li	s1,-1
   16e6c:	4981                	c.li	s3,0
   16e6e:	05a00c13          	addi	s8,zero,90
   16e72:	8a36                	c.mv	s4,a3
   16e74:	0905                	c.addi	s2,1
   16e76:	fe070793          	addi	a5,a4,-32 # ffffdfe0 <__BSS_END__+0xfffe2584>
   16e7a:	02fc6f63          	bltu	s8,a5,16eb8 <_vfiprintf_r+0x140>
   16e7e:	66ed                	c.lui	a3,0x1b
   16e80:	078a                	c.slli	a5,0x2
   16e82:	d0c68613          	addi	a2,a3,-756 # 1ad0c <_ctype_+0x104>
   16e86:	97b2                	c.add	a5,a2
   16e88:	439c                	c.lw	a5,0(a5)
   16e8a:	8782                	c.jr	a5
   16e8c:	fd070793          	addi	a5,a4,-48
   16e90:	4a01                	c.li	s4,0
   16e92:	45a5                	c.li	a1,9
   16e94:	002a1613          	slli	a2,s4,0x2
   16e98:	00094703          	lbu	a4,0(s2)
   16e9c:	014606b3          	add	a3,a2,s4
   16ea0:	0686                	c.slli	a3,0x1
   16ea2:	00d78a33          	add	s4,a5,a3
   16ea6:	fd070793          	addi	a5,a4,-48
   16eaa:	0905                	c.addi	s2,1
   16eac:	fef5f4e3          	bgeu	a1,a5,16e94 <_vfiprintf_r+0x11c>
   16eb0:	fe070793          	addi	a5,a4,-32
   16eb4:	fcfc75e3          	bgeu	s8,a5,16e7e <_vfiprintf_r+0x106>
   16eb8:	86d2                	c.mv	a3,s4
   16eba:	cf4d                	c.beqz	a4,16f74 <_vfiprintf_r+0x1fc>
   16ebc:	4305                	c.li	t1,1
   16ebe:	08e10623          	sb	a4,140(sp)
   16ec2:	02010da3          	sb	zero,59(sp)
   16ec6:	8a1a                	c.mv	s4,t1
   16ec8:	4481                	c.li	s1,0
   16eca:	08c10c13          	addi	s8,sp,140
   16ece:	45a6                	c.lwsp	a1,72(sp)
   16ed0:	4616                	c.lwsp	a2,68(sp)
   16ed2:	0849ff13          	andi	t5,s3,132
   16ed6:	872e                	c.mv	a4,a1
   16ed8:	87b2                	c.mv	a5,a2
   16eda:	040f1463          	bne	t5,zero,16f22 <_vfiprintf_r+0x1aa>
   16ede:	41468e33          	sub	t3,a3,s4
   16ee2:	0dc04be3          	blt	zero,t3,177b8 <_vfiprintf_r+0xa40>
   16ee6:	03b14603          	lbu	a2,59(sp)
   16eea:	c221                	c.beqz	a2,16f2a <_vfiprintf_r+0x1b2>
   16eec:	4f01                	c.li	t5,0
   16eee:	4e81                	c.li	t4,0
   16ef0:	0705                	c.addi	a4,1
   16ef2:	0785                	c.addi	a5,1
   16ef4:	03b10593          	addi	a1,sp,59
   16ef8:	4605                	c.li	a2,1
   16efa:	c00c                	c.sw	a1,0(s0)
   16efc:	c050                	c.sw	a2,4(s0)
   16efe:	c4ba                	c.swsp	a4,72(sp)
   16f00:	c2be                	c.swsp	a5,68(sp)
   16f02:	0421                	c.addi	s0,8
   16f04:	12fb4363          	blt	s6,a5,1702a <_vfiprintf_r+0x2b2>
   16f08:	000e8d63          	beq	t4,zero,16f22 <_vfiprintf_r+0x1aa>
   16f0c:	0709                	c.addi	a4,2
   16f0e:	0785                	c.addi	a5,1
   16f10:	186c                	c.addi4spn	a1,sp,60
   16f12:	4609                	c.li	a2,2
   16f14:	c00c                	c.sw	a1,0(s0)
   16f16:	c050                	c.sw	a2,4(s0)
   16f18:	c4ba                	c.swsp	a4,72(sp)
   16f1a:	c2be                	c.swsp	a5,68(sp)
   16f1c:	0421                	c.addi	s0,8
   16f1e:	04fb4ae3          	blt	s6,a5,17772 <_vfiprintf_r+0x9fa>
   16f22:	08000613          	addi	a2,zero,128
   16f26:	6ccf0f63          	beq	t5,a2,17604 <_vfiprintf_r+0x88c>
   16f2a:	406484b3          	sub	s1,s1,t1
   16f2e:	76904f63          	blt	zero,s1,176ac <_vfiprintf_r+0x934>
   16f32:	971a                	c.add	a4,t1
   16f34:	0785                	c.addi	a5,1
   16f36:	01842023          	sw	s8,0(s0)
   16f3a:	00642223          	sw	t1,4(s0)
   16f3e:	c4ba                	c.swsp	a4,72(sp)
   16f40:	c2be                	c.swsp	a5,68(sp)
   16f42:	0421                	c.addi	s0,8
   16f44:	00fb41e3          	blt	s6,a5,17746 <_vfiprintf_r+0x9ce>
   16f48:	0049f813          	andi	a6,s3,4
   16f4c:	00080663          	beq	a6,zero,16f58 <_vfiprintf_r+0x1e0>
   16f50:	414684b3          	sub	s1,a3,s4
   16f54:	0e904d63          	blt	zero,s1,1704e <_vfiprintf_r+0x2d6>
   16f58:	0146d363          	bge	a3,s4,16f5e <_vfiprintf_r+0x1e6>
   16f5c:	86d2                	c.mv	a3,s4
   16f5e:	47a2                	c.lwsp	a5,8(sp)
   16f60:	97b6                	c.add	a5,a3
   16f62:	c43e                	c.swsp	a5,8(sp)
   16f64:	7e071e63          	bne	a4,zero,17760 <_vfiprintf_r+0x9e8>
   16f68:	00094783          	lbu	a5,0(s2)
   16f6c:	c282                	c.swsp	zero,68(sp)
   16f6e:	846a                	c.mv	s0,s10
   16f70:	ea0797e3          	bne	a5,zero,16e1e <_vfiprintf_r+0xa6>
   16f74:	47a6                	c.lwsp	a5,72(sp)
   16f76:	54079ae3          	bne	a5,zero,17cca <_vfiprintf_r+0xf52>
   16f7a:	00cbd783          	lhu	a5,12(s7)
   16f7e:	12812403          	lw	s0,296(sp)
   16f82:	12412483          	lw	s1,292(sp)
   16f86:	0407f793          	andi	a5,a5,64
   16f8a:	11c12983          	lw	s3,284(sp)
   16f8e:	11812a03          	lw	s4,280(sp)
   16f92:	11412a83          	lw	s5,276(sp)
   16f96:	11012b03          	lw	s6,272(sp)
   16f9a:	10812c03          	lw	s8,264(sp)
   16f9e:	10012d03          	lw	s10,256(sp)
   16fa2:	5dfe                	c.lwsp	s11,252(sp)
   16fa4:	7e079d63          	bne	a5,zero,1779e <_vfiprintf_r+0xa26>
   16fa8:	12c12083          	lw	ra,300(sp)
   16fac:	4522                	c.lwsp	a0,8(sp)
   16fae:	12012903          	lw	s2,288(sp)
   16fb2:	10c12b83          	lw	s7,268(sp)
   16fb6:	10412c83          	lw	s9,260(sp)
   16fba:	6155                	c.addi16sp	sp,304
   16fbc:	8082                	c.jr	ra
   16fbe:	00094703          	lbu	a4,0(s2)
   16fc2:	bd4d                	c.j	16e74 <_vfiprintf_r+0xfc>
   16fc4:	00094703          	lbu	a4,0(s2)
   16fc8:	0209e993          	ori	s3,s3,32
   16fcc:	b565                	c.j	16e74 <_vfiprintf_r+0xfc>
   16fce:	85de                	c.mv	a1,s7
   16fd0:	8566                	c.mv	a0,s9
   16fd2:	b33fc0ef          	jal	ra,13b04 <__swsetup_r>
   16fd6:	7c051463          	bne	a0,zero,1779e <_vfiprintf_r+0xa26>
   16fda:	00cb9783          	lh	a5,12(s7)
   16fde:	4729                	c.li	a4,10
   16fe0:	8be9                	c.andi	a5,26
   16fe2:	dee79be3          	bne	a5,a4,16dd8 <_vfiprintf_r+0x60>
   16fe6:	00eb9783          	lh	a5,14(s7)
   16fea:	de07c7e3          	blt	a5,zero,16dd8 <_vfiprintf_r+0x60>
   16fee:	46b2                	c.lwsp	a3,12(sp)
   16ff0:	12c12083          	lw	ra,300(sp)
   16ff4:	864a                	c.mv	a2,s2
   16ff6:	85de                	c.mv	a1,s7
   16ff8:	12012903          	lw	s2,288(sp)
   16ffc:	10c12b83          	lw	s7,268(sp)
   17000:	8566                	c.mv	a0,s9
   17002:	10412c83          	lw	s9,260(sp)
   17006:	6155                	c.addi16sp	sp,304
   17008:	53d0006f          	jal	zero,17d44 <__sbprintf>
   1700c:	41248c33          	sub	s8,s1,s2
   17010:	e32492e3          	bne	s1,s2,16e34 <_vfiprintf_r+0xbc>
   17014:	0004c783          	lbu	a5,0(s1)
   17018:	b581                	c.j	16e58 <_vfiprintf_r+0xe0>
   1701a:	0090                	c.addi4spn	a2,sp,64
   1701c:	85de                	c.mv	a1,s7
   1701e:	8566                	c.mv	a0,s9
   17020:	cacfc0ef          	jal	ra,134cc <__sprint_r>
   17024:	f939                	c.bnez	a0,16f7a <_vfiprintf_r+0x202>
   17026:	846a                	c.mv	s0,s10
   17028:	b51d                	c.j	16e4e <_vfiprintf_r+0xd6>
   1702a:	0090                	c.addi4spn	a2,sp,64
   1702c:	85de                	c.mv	a1,s7
   1702e:	8566                	c.mv	a0,s9
   17030:	d41a                	c.swsp	t1,40(sp)
   17032:	d27a                	c.swsp	t5,36(sp)
   17034:	cc76                	c.swsp	t4,24(sp)
   17036:	ca36                	c.swsp	a3,20(sp)
   17038:	c94fc0ef          	jal	ra,134cc <__sprint_r>
   1703c:	fd1d                	c.bnez	a0,16f7a <_vfiprintf_r+0x202>
   1703e:	4726                	c.lwsp	a4,72(sp)
   17040:	4796                	c.lwsp	a5,68(sp)
   17042:	5322                	c.lwsp	t1,40(sp)
   17044:	5f12                	c.lwsp	t5,36(sp)
   17046:	4ee2                	c.lwsp	t4,24(sp)
   17048:	46d2                	c.lwsp	a3,20(sp)
   1704a:	846a                	c.mv	s0,s10
   1704c:	bd75                	c.j	16f08 <_vfiprintf_r+0x190>
   1704e:	6f6d                	c.lui	t5,0x1b
   17050:	4c41                	c.li	s8,16
   17052:	4796                	c.lwsp	a5,68(sp)
   17054:	e88f0f13          	addi	t5,t5,-376 # 1ae88 <blanks.1>
   17058:	049c5663          	bge	s8,s1,170a4 <_vfiprintf_r+0x32c>
   1705c:	ca36                	c.swsp	a3,20(sp)
   1705e:	8362                	c.mv	t1,s8
   17060:	86a2                	c.mv	a3,s0
   17062:	499d                	c.li	s3,7
   17064:	847a                	c.mv	s0,t5
   17066:	a021                	c.j	1706e <_vfiprintf_r+0x2f6>
   17068:	14c1                	c.addi	s1,-16
   1706a:	02935a63          	bge	t1,s1,1709e <_vfiprintf_r+0x326>
   1706e:	0741                	c.addi	a4,16
   17070:	0785                	c.addi	a5,1
   17072:	c280                	c.sw	s0,0(a3)
   17074:	0186a223          	sw	s8,4(a3)
   17078:	c4ba                	c.swsp	a4,72(sp)
   1707a:	c2be                	c.swsp	a5,68(sp)
   1707c:	06a1                	c.addi	a3,8
   1707e:	fef9d5e3          	bge	s3,a5,17068 <_vfiprintf_r+0x2f0>
   17082:	0090                	c.addi4spn	a2,sp,64
   17084:	85de                	c.mv	a1,s7
   17086:	8566                	c.mv	a0,s9
   17088:	c44fc0ef          	jal	ra,134cc <__sprint_r>
   1708c:	ee0517e3          	bne	a0,zero,16f7a <_vfiprintf_r+0x202>
   17090:	4341                	c.li	t1,16
   17092:	14c1                	c.addi	s1,-16
   17094:	4726                	c.lwsp	a4,72(sp)
   17096:	4796                	c.lwsp	a5,68(sp)
   17098:	86ea                	c.mv	a3,s10
   1709a:	fc934ae3          	blt	t1,s1,1706e <_vfiprintf_r+0x2f6>
   1709e:	8f22                	c.mv	t5,s0
   170a0:	8436                	c.mv	s0,a3
   170a2:	46d2                	c.lwsp	a3,20(sp)
   170a4:	9726                	c.add	a4,s1
   170a6:	0785                	c.addi	a5,1
   170a8:	c4ba                	c.swsp	a4,72(sp)
   170aa:	c2be                	c.swsp	a5,68(sp)
   170ac:	01e42023          	sw	t5,0(s0)
   170b0:	c044                	c.sw	s1,4(s0)
   170b2:	461d                	c.li	a2,7
   170b4:	eaf652e3          	bge	a2,a5,16f58 <_vfiprintf_r+0x1e0>
   170b8:	0090                	c.addi4spn	a2,sp,64
   170ba:	85de                	c.mv	a1,s7
   170bc:	8566                	c.mv	a0,s9
   170be:	ca36                	c.swsp	a3,20(sp)
   170c0:	c0cfc0ef          	jal	ra,134cc <__sprint_r>
   170c4:	ea051be3          	bne	a0,zero,16f7a <_vfiprintf_r+0x202>
   170c8:	4726                	c.lwsp	a4,72(sp)
   170ca:	46d2                	c.lwsp	a3,20(sp)
   170cc:	b571                	c.j	16f58 <_vfiprintf_r+0x1e0>
   170ce:	0209f793          	andi	a5,s3,32
   170d2:	86d2                	c.mv	a3,s4
   170d4:	efe5                	c.bnez	a5,171cc <_vfiprintf_r+0x454>
   170d6:	4632                	c.lwsp	a2,12(sp)
   170d8:	0109f713          	andi	a4,s3,16
   170dc:	421c                	c.lw	a5,0(a2)
   170de:	0611                	c.addi	a2,4 # 2004 <exit-0xe0b0>
   170e0:	400718e3          	bne	a4,zero,17cf0 <_vfiprintf_r+0xf78>
   170e4:	0409f713          	andi	a4,s3,64
   170e8:	220701e3          	beq	a4,zero,17b0a <_vfiprintf_r+0xd92>
   170ec:	07c2                	c.slli	a5,0x10
   170ee:	87c1                	c.srai	a5,0x10
   170f0:	41f7df93          	srai	t6,a5,0x1f
   170f4:	c632                	c.swsp	a2,12(sp)
   170f6:	877e                	c.mv	a4,t6
   170f8:	0e074563          	blt	a4,zero,171e2 <_vfiprintf_r+0x46a>
   170fc:	0004c863          	blt	s1,zero,1710c <_vfiprintf_r+0x394>
   17100:	01f7e733          	or	a4,a5,t6
   17104:	f7f9f993          	andi	s3,s3,-129
   17108:	000701e3          	beq	a4,zero,1790a <_vfiprintf_r+0xb92>
   1710c:	0e0f9d63          	bne	t6,zero,17206 <_vfiprintf_r+0x48e>
   17110:	4725                	c.li	a4,9
   17112:	0ef76a63          	bltu	a4,a5,17206 <_vfiprintf_r+0x48e>
   17116:	03078793          	addi	a5,a5,48
   1711a:	0ff7f793          	andi	a5,a5,255
   1711e:	0ef107a3          	sb	a5,239(sp)
   17122:	8a26                	c.mv	s4,s1
   17124:	00904363          	blt	zero,s1,1712a <_vfiprintf_r+0x3b2>
   17128:	4a05                	c.li	s4,1
   1712a:	03b14783          	lbu	a5,59(sp)
   1712e:	72078063          	beq	a5,zero,1784e <_vfiprintf_r+0xad6>
   17132:	0a05                	c.addi	s4,1
   17134:	4305                	c.li	t1,1
   17136:	0ef10c13          	addi	s8,sp,239
   1713a:	4726                	c.lwsp	a4,72(sp)
   1713c:	4796                	c.lwsp	a5,68(sp)
   1713e:	0849ff13          	andi	t5,s3,132
   17142:	85ba                	c.mv	a1,a4
   17144:	863e                	c.mv	a2,a5
   17146:	4e81                	c.li	t4,0
   17148:	da0f14e3          	bne	t5,zero,16ef0 <_vfiprintf_r+0x178>
   1714c:	bb49                	c.j	16ede <_vfiprintf_r+0x166>
   1714e:	47b2                	c.lwsp	a5,12(sp)
   17150:	02010da3          	sb	zero,59(sp)
   17154:	86d2                	c.mv	a3,s4
   17156:	0007ac03          	lw	s8,0(a5)
   1715a:	00478713          	addi	a4,a5,4
   1715e:	160c0ee3          	beq	s8,zero,17ada <_vfiprintf_r+0xd62>
   17162:	ca3a                	c.swsp	a4,20(sp)
   17164:	c652                	c.swsp	s4,12(sp)
   17166:	0204c3e3          	blt	s1,zero,1798c <_vfiprintf_r+0xc14>
   1716a:	8626                	c.mv	a2,s1
   1716c:	4581                	c.li	a1,0
   1716e:	8562                	c.mv	a0,s8
   17170:	ab3fc0ef          	jal	ra,13c22 <memchr>
   17174:	03b14783          	lbu	a5,59(sp)
   17178:	46b2                	c.lwsp	a3,12(sp)
   1717a:	4752                	c.lwsp	a4,20(sp)
   1717c:	34050ee3          	beq	a0,zero,17cd8 <_vfiprintf_r+0xf60>
   17180:	41850333          	sub	t1,a0,s8
   17184:	fff34893          	xori	a7,t1,-1
   17188:	41f8d893          	srai	a7,a7,0x1f
   1718c:	01137a33          	and	s4,t1,a7
   17190:	00078ee3          	beq	a5,zero,179ac <_vfiprintf_r+0xc34>
   17194:	0a05                	c.addi	s4,1
   17196:	c63a                	c.swsp	a4,12(sp)
   17198:	4481                	c.li	s1,0
   1719a:	b745                	c.j	1713a <_vfiprintf_r+0x3c2>
   1719c:	4732                	c.lwsp	a4,12(sp)
   1719e:	4305                	c.li	t1,1
   171a0:	86d2                	c.mv	a3,s4
   171a2:	431c                	c.lw	a5,0(a4)
   171a4:	02010da3          	sb	zero,59(sp)
   171a8:	8a1a                	c.mv	s4,t1
   171aa:	08f10623          	sb	a5,140(sp)
   171ae:	00470793          	addi	a5,a4,4
   171b2:	c63e                	c.swsp	a5,12(sp)
   171b4:	4481                	c.li	s1,0
   171b6:	08c10c13          	addi	s8,sp,140
   171ba:	bb11                	c.j	16ece <_vfiprintf_r+0x156>
   171bc:	0209f793          	andi	a5,s3,32
   171c0:	86d2                	c.mv	a3,s4
   171c2:	0109e813          	ori	a6,s3,16
   171c6:	6c078863          	beq	a5,zero,17896 <_vfiprintf_r+0xb1e>
   171ca:	89c2                	c.mv	s3,a6
   171cc:	47b2                	c.lwsp	a5,12(sp)
   171ce:	079d                	c.addi	a5,7
   171d0:	9be1                	c.andi	a5,-8
   171d2:	43d8                	c.lw	a4,4(a5)
   171d4:	00878613          	addi	a2,a5,8
   171d8:	c632                	c.swsp	a2,12(sp)
   171da:	439c                	c.lw	a5,0(a5)
   171dc:	8fba                	c.mv	t6,a4
   171de:	f0075fe3          	bge	a4,zero,170fc <_vfiprintf_r+0x384>
   171e2:	02d00613          	addi	a2,zero,45
   171e6:	00f03733          	sltu	a4,zero,a5
   171ea:	41f00fb3          	sub	t6,zero,t6
   171ee:	02c10da3          	sb	a2,59(sp)
   171f2:	40ef8fb3          	sub	t6,t6,a4
   171f6:	40f007b3          	sub	a5,zero,a5
   171fa:	f004c9e3          	blt	s1,zero,1710c <_vfiprintf_r+0x394>
   171fe:	f7f9f993          	andi	s3,s3,-129
   17202:	f00f87e3          	beq	t6,zero,17110 <_vfiprintf_r+0x398>
   17206:	ccccd737          	lui	a4,0xccccd
   1720a:	88ba                	c.mv	a7,a4
   1720c:	ccc88893          	addi	a7,a7,-820
   17210:	ccd70713          	addi	a4,a4,-819 # cccccccd <__BSS_END__+0xcccb1271>
   17214:	4009fe13          	andi	t3,s3,1024
   17218:	4581                	c.li	a1,0
   1721a:	1990                	c.addi4spn	a2,sp,240
   1721c:	0ff00a13          	addi	s4,zero,255
   17220:	a085                	c.j	17280 <_vfiprintf_r+0x508>
   17222:	4642                	c.lwsp	a2,16(sp)
   17224:	00064603          	lbu	a2,0(a2)
   17228:	7eb60a63          	beq	a2,a1,17a1c <_vfiprintf_r+0xca4>
   1722c:	833e                	c.mv	t1,a5
   1722e:	887e                	c.mv	a6,t6
   17230:	8662                	c.mv	a2,s8
   17232:	01f78533          	add	a0,a5,t6
   17236:	00f53eb3          	sltu	t4,a0,a5
   1723a:	9576                	c.add	a0,t4
   1723c:	02e53eb3          	mulhu	t4,a0,a4
   17240:	002edf13          	srli	t5,t4,0x2
   17244:	ffcefe93          	andi	t4,t4,-4
   17248:	9efa                	c.add	t4,t5
   1724a:	41d50533          	sub	a0,a0,t4
   1724e:	40a78533          	sub	a0,a5,a0
   17252:	00a7b7b3          	sltu	a5,a5,a0
   17256:	40ff87b3          	sub	a5,t6,a5
   1725a:	03150f33          	mul	t5,a0,a7
   1725e:	02e787b3          	mul	a5,a5,a4
   17262:	02e53eb3          	mulhu	t4,a0,a4
   17266:	97fa                	c.add	a5,t5
   17268:	02e50533          	mul	a0,a0,a4
   1726c:	97f6                	c.add	a5,t4
   1726e:	01f79e93          	slli	t4,a5,0x1f
   17272:	0017df93          	srli	t6,a5,0x1
   17276:	8105                	c.srli	a0,0x1
   17278:	00aee7b3          	or	a5,t4,a0
   1727c:	1c0807e3          	beq	a6,zero,17c4a <_vfiprintf_r+0xed2>
   17280:	01f78533          	add	a0,a5,t6
   17284:	00f53833          	sltu	a6,a0,a5
   17288:	982a                	c.add	a6,a0
   1728a:	02e83333          	mulhu	t1,a6,a4
   1728e:	0585                	c.addi	a1,1
   17290:	fff60c13          	addi	s8,a2,-1
   17294:	00235e93          	srli	t4,t1,0x2
   17298:	ffc37313          	andi	t1,t1,-4
   1729c:	9376                	c.add	t1,t4
   1729e:	40680833          	sub	a6,a6,t1
   172a2:	41078833          	sub	a6,a5,a6
   172a6:	0107b333          	sltu	t1,a5,a6
   172aa:	406f8333          	sub	t1,t6,t1
   172ae:	02e83eb3          	mulhu	t4,a6,a4
   172b2:	02e30333          	mul	t1,t1,a4
   172b6:	02e80833          	mul	a6,a6,a4
   172ba:	9376                	c.add	t1,t4
   172bc:	037e                	c.slli	t1,0x1f
   172be:	00185813          	srli	a6,a6,0x1
   172c2:	01036833          	or	a6,t1,a6
   172c6:	00281313          	slli	t1,a6,0x2
   172ca:	981a                	c.add	a6,t1
   172cc:	0806                	c.slli	a6,0x1
   172ce:	41078833          	sub	a6,a5,a6
   172d2:	03080813          	addi	a6,a6,48
   172d6:	ff060fa3          	sb	a6,-1(a2)
   172da:	f40e14e3          	bne	t3,zero,17222 <_vfiprintf_r+0x4aa>
   172de:	833e                	c.mv	t1,a5
   172e0:	887e                	c.mv	a6,t6
   172e2:	8662                	c.mv	a2,s8
   172e4:	bf89                	c.j	17236 <_vfiprintf_r+0x4be>
   172e6:	47b2                	c.lwsp	a5,12(sp)
   172e8:	0007aa03          	lw	s4,0(a5)
   172ec:	0791                	c.addi	a5,4
   172ee:	560a5563          	bge	s4,zero,17858 <_vfiprintf_r+0xae0>
   172f2:	41400a33          	sub	s4,zero,s4
   172f6:	c63e                	c.swsp	a5,12(sp)
   172f8:	00094703          	lbu	a4,0(s2)
   172fc:	0049e993          	ori	s3,s3,4
   17300:	be95                	c.j	16e74 <_vfiprintf_r+0xfc>
   17302:	0209f793          	andi	a5,s3,32
   17306:	86d2                	c.mv	a3,s4
   17308:	2c079763          	bne	a5,zero,175d6 <_vfiprintf_r+0x85e>
   1730c:	4632                	c.lwsp	a2,12(sp)
   1730e:	0109f793          	andi	a5,s3,16
   17312:	4218                	c.lw	a4,0(a2)
   17314:	0611                	c.addi	a2,4
   17316:	1c0799e3          	bne	a5,zero,17ce8 <_vfiprintf_r+0xf70>
   1731a:	0409f793          	andi	a5,s3,64
   1731e:	68078b63          	beq	a5,zero,179b4 <_vfiprintf_r+0xc3c>
   17322:	01071793          	slli	a5,a4,0x10
   17326:	02010da3          	sb	zero,59(sp)
   1732a:	83c1                	c.srli	a5,0x10
   1732c:	4f81                	c.li	t6,0
   1732e:	6804ce63          	blt	s1,zero,179ca <_vfiprintf_r+0xc52>
   17332:	c632                	c.swsp	a2,12(sp)
   17334:	f7f9f993          	andi	s3,s3,-129
   17338:	dc079ce3          	bne	a5,zero,17110 <_vfiprintf_r+0x398>
   1733c:	60048d63          	beq	s1,zero,17956 <_vfiprintf_r+0xbde>
   17340:	4781                	c.li	a5,0
   17342:	bbd1                	c.j	17116 <_vfiprintf_r+0x39e>
   17344:	67a1                	c.lui	a5,0x8
   17346:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x8884>
   1734a:	02f11e23          	sh	a5,60(sp)
   1734e:	47b2                	c.lwsp	a5,12(sp)
   17350:	02010da3          	sb	zero,59(sp)
   17354:	86d2                	c.mv	a3,s4
   17356:	00478593          	addi	a1,a5,4
   1735a:	4601                	c.li	a2,0
   1735c:	439c                	c.lw	a5,0(a5)
   1735e:	5604cb63          	blt	s1,zero,178d4 <_vfiprintf_r+0xb5c>
   17362:	f7f9f813          	andi	a6,s3,-129
   17366:	00286993          	ori	s3,a6,2
   1736a:	78078463          	beq	a5,zero,17af2 <_vfiprintf_r+0xd7a>
   1736e:	6569                	c.lui	a0,0x1a
   17370:	74050893          	addi	a7,a0,1856 # 1a740 <__clzsi2+0x60>
   17374:	00f7f713          	andi	a4,a5,15
   17378:	9746                	c.add	a4,a7
   1737a:	00074703          	lbu	a4,0(a4)
   1737e:	c62e                	c.swsp	a1,12(sp)
   17380:	74050513          	addi	a0,a0,1856
   17384:	4a09                	c.li	s4,2
   17386:	01c61593          	slli	a1,a2,0x1c
   1738a:	8391                	c.srli	a5,0x4
   1738c:	8fcd                	c.or	a5,a1
   1738e:	8211                	c.srli	a2,0x4
   17390:	0ee107a3          	sb	a4,239(sp)
   17394:	00c7e733          	or	a4,a5,a2
   17398:	16070fe3          	beq	a4,zero,17d16 <_vfiprintf_r+0xf9e>
   1739c:	0ef10c13          	addi	s8,sp,239
   173a0:	00f7f713          	andi	a4,a5,15
   173a4:	972a                	c.add	a4,a0
   173a6:	00074703          	lbu	a4,0(a4)
   173aa:	01c61593          	slli	a1,a2,0x1c
   173ae:	8391                	c.srli	a5,0x4
   173b0:	8fcd                	c.or	a5,a1
   173b2:	8211                	c.srli	a2,0x4
   173b4:	feec0fa3          	sb	a4,-1(s8)
   173b8:	00c7e733          	or	a4,a5,a2
   173bc:	1c7d                	c.addi	s8,-1
   173be:	f36d                	c.bnez	a4,173a0 <_vfiprintf_r+0x628>
   173c0:	199c                	c.addi4spn	a5,sp,240
   173c2:	41878333          	sub	t1,a5,s8
   173c6:	87a6                	c.mv	a5,s1
   173c8:	0064d363          	bge	s1,t1,173ce <_vfiprintf_r+0x656>
   173cc:	879a                	c.mv	a5,t1
   173ce:	140a08e3          	beq	s4,zero,17d1e <_vfiprintf_r+0xfa6>
   173d2:	45a6                	c.lwsp	a1,72(sp)
   173d4:	4616                	c.lwsp	a2,68(sp)
   173d6:	0849ff13          	andi	t5,s3,132
   173da:	00278a13          	addi	s4,a5,2
   173de:	872e                	c.mv	a4,a1
   173e0:	87b2                	c.mv	a5,a2
   173e2:	b20f15e3          	bne	t5,zero,16f0c <_vfiprintf_r+0x194>
   173e6:	41468e33          	sub	t3,a3,s4
   173ea:	b3c051e3          	bge	zero,t3,16f0c <_vfiprintf_r+0x194>
   173ee:	4e89                	c.li	t4,2
   173f0:	a6e9                	c.j	177ba <_vfiprintf_r+0xa42>
   173f2:	0209f793          	andi	a5,s3,32
   173f6:	86d2                	c.mv	a3,s4
   173f8:	4c079c63          	bne	a5,zero,178d0 <_vfiprintf_r+0xb58>
   173fc:	4632                	c.lwsp	a2,12(sp)
   173fe:	0109f713          	andi	a4,s3,16
   17402:	421c                	c.lw	a5,0(a2)
   17404:	0611                	c.addi	a2,4
   17406:	0e0713e3          	bne	a4,zero,17cec <_vfiprintf_r+0xf74>
   1740a:	0409f713          	andi	a4,s3,64
   1740e:	70070a63          	beq	a4,zero,17b22 <_vfiprintf_r+0xdaa>
   17412:	07c2                	c.slli	a5,0x10
   17414:	83c1                	c.srli	a5,0x10
   17416:	c632                	c.swsp	a2,12(sp)
   17418:	88ce                	c.mv	a7,s3
   1741a:	4701                	c.li	a4,0
   1741c:	a889                	c.j	1746e <_vfiprintf_r+0x6f6>
   1741e:	0209f793          	andi	a5,s3,32
   17422:	48078563          	beq	a5,zero,178ac <_vfiprintf_r+0xb34>
   17426:	47b2                	c.lwsp	a5,12(sp)
   17428:	46a2                	c.lwsp	a3,8(sp)
   1742a:	439c                	c.lw	a5,0(a5)
   1742c:	41f6d713          	srai	a4,a3,0x1f
   17430:	c394                	c.sw	a3,0(a5)
   17432:	c3d8                	c.sw	a4,4(a5)
   17434:	47b2                	c.lwsp	a5,12(sp)
   17436:	0791                	c.addi	a5,4
   17438:	c63e                	c.swsp	a5,12(sp)
   1743a:	baf1                	c.j	16e16 <_vfiprintf_r+0x9e>
   1743c:	00094703          	lbu	a4,0(s2)
   17440:	06c00793          	addi	a5,zero,108
   17444:	66f70863          	beq	a4,a5,17ab4 <_vfiprintf_r+0xd3c>
   17448:	0109e993          	ori	s3,s3,16
   1744c:	b425                	c.j	16e74 <_vfiprintf_r+0xfc>
   1744e:	0209f793          	andi	a5,s3,32
   17452:	86d2                	c.mv	a3,s4
   17454:	0109e893          	ori	a7,s3,16
   17458:	42078763          	beq	a5,zero,17886 <_vfiprintf_r+0xb0e>
   1745c:	47b2                	c.lwsp	a5,12(sp)
   1745e:	00778713          	addi	a4,a5,7
   17462:	9b61                	c.andi	a4,-8
   17464:	00870793          	addi	a5,a4,8
   17468:	c63e                	c.swsp	a5,12(sp)
   1746a:	431c                	c.lw	a5,0(a4)
   1746c:	4358                	c.lw	a4,4(a4)
   1746e:	02010da3          	sb	zero,59(sp)
   17472:	bff8f993          	andi	s3,a7,-1025
   17476:	0004c863          	blt	s1,zero,17486 <_vfiprintf_r+0x70e>
   1747a:	00e7e633          	or	a2,a5,a4
   1747e:	b7f8f993          	andi	s3,a7,-1153
   17482:	3e060063          	beq	a2,zero,17862 <_vfiprintf_r+0xaea>
   17486:	0f010c13          	addi	s8,sp,240
   1748a:	01d71593          	slli	a1,a4,0x1d
   1748e:	0077f613          	andi	a2,a5,7
   17492:	838d                	c.srli	a5,0x3
   17494:	8562                	c.mv	a0,s8
   17496:	03060613          	addi	a2,a2,48
   1749a:	8fcd                	c.or	a5,a1
   1749c:	830d                	c.srli	a4,0x3
   1749e:	00e7e5b3          	or	a1,a5,a4
   174a2:	fecc0fa3          	sb	a2,-1(s8)
   174a6:	1c7d                	c.addi	s8,-1
   174a8:	f1ed                	c.bnez	a1,1748a <_vfiprintf_r+0x712>
   174aa:	0019f793          	andi	a5,s3,1
   174ae:	2e078c63          	beq	a5,zero,177a6 <_vfiprintf_r+0xa2e>
   174b2:	03000793          	addi	a5,zero,48
   174b6:	2ef60863          	beq	a2,a5,177a6 <_vfiprintf_r+0xa2e>
   174ba:	1579                	c.addi	a0,-2
   174bc:	fefc0fa3          	sb	a5,-1(s8)
   174c0:	199c                	c.addi4spn	a5,sp,240
   174c2:	40a78333          	sub	t1,a5,a0
   174c6:	8a26                	c.mv	s4,s1
   174c8:	4264cb63          	blt	s1,t1,178fe <_vfiprintf_r+0xb86>
   174cc:	8c2a                	c.mv	s8,a0
   174ce:	4726                	c.lwsp	a4,72(sp)
   174d0:	4796                	c.lwsp	a5,68(sp)
   174d2:	0849ff13          	andi	t5,s3,132
   174d6:	85ba                	c.mv	a1,a4
   174d8:	863e                	c.mv	a2,a5
   174da:	a00f02e3          	beq	t5,zero,16ede <_vfiprintf_r+0x166>
   174de:	03b14603          	lbu	a2,59(sp)
   174e2:	4e81                	c.li	t4,0
   174e4:	a00616e3          	bne	a2,zero,16ef0 <_vfiprintf_r+0x178>
   174e8:	bc2d                	c.j	16f22 <_vfiprintf_r+0x1aa>
   174ea:	00094703          	lbu	a4,0(s2)
   174ee:	06800793          	addi	a5,zero,104
   174f2:	5cf70863          	beq	a4,a5,17ac2 <_vfiprintf_r+0xd4a>
   174f6:	0409e993          	ori	s3,s3,64
   174fa:	baad                	c.j	16e74 <_vfiprintf_r+0xfc>
   174fc:	8566                	c.mv	a0,s9
   174fe:	835fc0ef          	jal	ra,13d32 <_localeconv_r>
   17502:	415c                	c.lw	a5,4(a0)
   17504:	853e                	c.mv	a0,a5
   17506:	d03e                	c.swsp	a5,32(sp)
   17508:	a69fc0ef          	jal	ra,13f70 <strlen>
   1750c:	87aa                	c.mv	a5,a0
   1750e:	8566                	c.mv	a0,s9
   17510:	ce3e                	c.swsp	a5,28(sp)
   17512:	821fc0ef          	jal	ra,13d32 <_localeconv_r>
   17516:	4514                	c.lw	a3,8(a0)
   17518:	47f2                	c.lwsp	a5,28(sp)
   1751a:	00094703          	lbu	a4,0(s2)
   1751e:	c836                	c.swsp	a3,16(sp)
   17520:	94078ae3          	beq	a5,zero,16e74 <_vfiprintf_r+0xfc>
   17524:	940688e3          	beq	a3,zero,16e74 <_vfiprintf_r+0xfc>
   17528:	0006c783          	lbu	a5,0(a3)
   1752c:	940784e3          	beq	a5,zero,16e74 <_vfiprintf_r+0xfc>
   17530:	4009e993          	ori	s3,s3,1024
   17534:	b281                	c.j	16e74 <_vfiprintf_r+0xfc>
   17536:	00094703          	lbu	a4,0(s2)
   1753a:	0019e993          	ori	s3,s3,1
   1753e:	ba1d                	c.j	16e74 <_vfiprintf_r+0xfc>
   17540:	03b14783          	lbu	a5,59(sp)
   17544:	00094703          	lbu	a4,0(s2)
   17548:	920796e3          	bne	a5,zero,16e74 <_vfiprintf_r+0xfc>
   1754c:	02000793          	addi	a5,zero,32
   17550:	02f10da3          	sb	a5,59(sp)
   17554:	b205                	c.j	16e74 <_vfiprintf_r+0xfc>
   17556:	00094703          	lbu	a4,0(s2)
   1755a:	0809e993          	ori	s3,s3,128
   1755e:	ba19                	c.j	16e74 <_vfiprintf_r+0xfc>
   17560:	00094703          	lbu	a4,0(s2)
   17564:	02a00793          	addi	a5,zero,42
   17568:	00190593          	addi	a1,s2,1
   1756c:	78f70963          	beq	a4,a5,17cfe <_vfiprintf_r+0xf86>
   17570:	4525                	c.li	a0,9
   17572:	fd070793          	addi	a5,a4,-48
   17576:	4481                	c.li	s1,0
   17578:	02f56063          	bltu	a0,a5,17598 <_vfiprintf_r+0x820>
   1757c:	00249613          	slli	a2,s1,0x2
   17580:	0005c703          	lbu	a4,0(a1)
   17584:	94b2                	c.add	s1,a2
   17586:	0486                	c.slli	s1,0x1
   17588:	94be                	c.add	s1,a5
   1758a:	fd070793          	addi	a5,a4,-48
   1758e:	0585                	c.addi	a1,1
   17590:	fef576e3          	bgeu	a0,a5,1757c <_vfiprintf_r+0x804>
   17594:	3604c763          	blt	s1,zero,17902 <_vfiprintf_r+0xb8a>
   17598:	892e                	c.mv	s2,a1
   1759a:	b8f1                	c.j	16e76 <_vfiprintf_r+0xfe>
   1759c:	02b00793          	addi	a5,zero,43
   175a0:	00094703          	lbu	a4,0(s2)
   175a4:	02f10da3          	sb	a5,59(sp)
   175a8:	b0f1                	c.j	16e74 <_vfiprintf_r+0xfc>
   175aa:	0209f793          	andi	a5,s3,32
   175ae:	86d2                	c.mv	a3,s4
   175b0:	0109e813          	ori	a6,s3,16
   175b4:	e395                	c.bnez	a5,175d8 <_vfiprintf_r+0x860>
   175b6:	47b2                	c.lwsp	a5,12(sp)
   175b8:	00478613          	addi	a2,a5,4
   175bc:	47b2                	c.lwsp	a5,12(sp)
   175be:	02010da3          	sb	zero,59(sp)
   175c2:	4f81                	c.li	t6,0
   175c4:	439c                	c.lw	a5,0(a5)
   175c6:	5604cc63          	blt	s1,zero,17b3e <_vfiprintf_r+0xdc6>
   175ca:	c632                	c.swsp	a2,12(sp)
   175cc:	f7f87993          	andi	s3,a6,-129
   175d0:	b40790e3          	bne	a5,zero,17110 <_vfiprintf_r+0x398>
   175d4:	b3a5                	c.j	1733c <_vfiprintf_r+0x5c4>
   175d6:	884e                	c.mv	a6,s3
   175d8:	47b2                	c.lwsp	a5,12(sp)
   175da:	02010da3          	sb	zero,59(sp)
   175de:	89c2                	c.mv	s3,a6
   175e0:	00778713          	addi	a4,a5,7
   175e4:	9b61                	c.andi	a4,-8
   175e6:	00870793          	addi	a5,a4,8
   175ea:	c63e                	c.swsp	a5,12(sp)
   175ec:	00472f83          	lw	t6,4(a4)
   175f0:	431c                	c.lw	a5,0(a4)
   175f2:	b004cde3          	blt	s1,zero,1710c <_vfiprintf_r+0x394>
   175f6:	01f7e733          	or	a4,a5,t6
   175fa:	f7f87993          	andi	s3,a6,-129
   175fe:	b00717e3          	bne	a4,zero,1710c <_vfiprintf_r+0x394>
   17602:	bb2d                	c.j	1733c <_vfiprintf_r+0x5c4>
   17604:	41468e33          	sub	t3,a3,s4
   17608:	93c051e3          	bge	zero,t3,16f2a <_vfiprintf_r+0x1b2>
   1760c:	6eed                	c.lui	t4,0x1b
   1760e:	4f41                	c.li	t5,16
   17610:	e78e8e93          	addi	t4,t4,-392 # 1ae78 <zeroes.0>
   17614:	05cf5e63          	bge	t5,t3,17670 <_vfiprintf_r+0x8f8>
   17618:	ca36                	c.swsp	a3,20(sp)
   1761a:	cc26                	c.swsp	s1,24(sp)
   1761c:	86a2                	c.mv	a3,s0
   1761e:	82fa                	c.mv	t0,t5
   17620:	4f9d                	c.li	t6,7
   17622:	8472                	c.mv	s0,t3
   17624:	d21a                	c.swsp	t1,36(sp)
   17626:	84f6                	c.mv	s1,t4
   17628:	a021                	c.j	17630 <_vfiprintf_r+0x8b8>
   1762a:	1441                	c.addi	s0,-16
   1762c:	0282dc63          	bge	t0,s0,17664 <_vfiprintf_r+0x8ec>
   17630:	0741                	c.addi	a4,16
   17632:	0785                	c.addi	a5,1
   17634:	c284                	c.sw	s1,0(a3)
   17636:	01e6a223          	sw	t5,4(a3)
   1763a:	c4ba                	c.swsp	a4,72(sp)
   1763c:	c2be                	c.swsp	a5,68(sp)
   1763e:	06a1                	c.addi	a3,8
   17640:	feffd5e3          	bge	t6,a5,1762a <_vfiprintf_r+0x8b2>
   17644:	0090                	c.addi4spn	a2,sp,64
   17646:	85de                	c.mv	a1,s7
   17648:	8566                	c.mv	a0,s9
   1764a:	e83fb0ef          	jal	ra,134cc <__sprint_r>
   1764e:	920516e3          	bne	a0,zero,16f7a <_vfiprintf_r+0x202>
   17652:	42c1                	c.li	t0,16
   17654:	1441                	c.addi	s0,-16
   17656:	4726                	c.lwsp	a4,72(sp)
   17658:	4796                	c.lwsp	a5,68(sp)
   1765a:	86ea                	c.mv	a3,s10
   1765c:	4f9d                	c.li	t6,7
   1765e:	8f16                	c.mv	t5,t0
   17660:	fc82c8e3          	blt	t0,s0,17630 <_vfiprintf_r+0x8b8>
   17664:	8e22                	c.mv	t3,s0
   17666:	8ea6                	c.mv	t4,s1
   17668:	8436                	c.mv	s0,a3
   1766a:	5312                	c.lwsp	t1,36(sp)
   1766c:	46d2                	c.lwsp	a3,20(sp)
   1766e:	44e2                	c.lwsp	s1,24(sp)
   17670:	9772                	c.add	a4,t3
   17672:	0785                	c.addi	a5,1
   17674:	01d42023          	sw	t4,0(s0)
   17678:	01c42223          	sw	t3,4(s0)
   1767c:	c4ba                	c.swsp	a4,72(sp)
   1767e:	c2be                	c.swsp	a5,68(sp)
   17680:	461d                	c.li	a2,7
   17682:	0421                	c.addi	s0,8
   17684:	8af653e3          	bge	a2,a5,16f2a <_vfiprintf_r+0x1b2>
   17688:	0090                	c.addi4spn	a2,sp,64
   1768a:	85de                	c.mv	a1,s7
   1768c:	8566                	c.mv	a0,s9
   1768e:	cc1a                	c.swsp	t1,24(sp)
   17690:	ca36                	c.swsp	a3,20(sp)
   17692:	e3bfb0ef          	jal	ra,134cc <__sprint_r>
   17696:	8e0512e3          	bne	a0,zero,16f7a <_vfiprintf_r+0x202>
   1769a:	4362                	c.lwsp	t1,24(sp)
   1769c:	4726                	c.lwsp	a4,72(sp)
   1769e:	4796                	c.lwsp	a5,68(sp)
   176a0:	406484b3          	sub	s1,s1,t1
   176a4:	46d2                	c.lwsp	a3,20(sp)
   176a6:	846a                	c.mv	s0,s10
   176a8:	889055e3          	bge	zero,s1,16f32 <_vfiprintf_r+0x1ba>
   176ac:	6eed                	c.lui	t4,0x1b
   176ae:	e78e8e93          	addi	t4,t4,-392 # 1ae78 <zeroes.0>
   176b2:	049ad763          	bge	s5,s1,17700 <_vfiprintf_r+0x988>
   176b6:	ca36                	c.swsp	a3,20(sp)
   176b8:	cc1a                	c.swsp	t1,24(sp)
   176ba:	86a2                	c.mv	a3,s0
   176bc:	8426                	c.mv	s0,s1
   176be:	84f6                	c.mv	s1,t4
   176c0:	a021                	c.j	176c8 <_vfiprintf_r+0x950>
   176c2:	1441                	c.addi	s0,-16
   176c4:	028ad963          	bge	s5,s0,176f6 <_vfiprintf_r+0x97e>
   176c8:	0741                	c.addi	a4,16
   176ca:	0785                	c.addi	a5,1
   176cc:	c284                	c.sw	s1,0(a3)
   176ce:	0156a223          	sw	s5,4(a3)
   176d2:	c4ba                	c.swsp	a4,72(sp)
   176d4:	c2be                	c.swsp	a5,68(sp)
   176d6:	06a1                	c.addi	a3,8
   176d8:	fefb55e3          	bge	s6,a5,176c2 <_vfiprintf_r+0x94a>
   176dc:	0090                	c.addi4spn	a2,sp,64
   176de:	85de                	c.mv	a1,s7
   176e0:	8566                	c.mv	a0,s9
   176e2:	debfb0ef          	jal	ra,134cc <__sprint_r>
   176e6:	88051ae3          	bne	a0,zero,16f7a <_vfiprintf_r+0x202>
   176ea:	1441                	c.addi	s0,-16
   176ec:	4726                	c.lwsp	a4,72(sp)
   176ee:	4796                	c.lwsp	a5,68(sp)
   176f0:	86ea                	c.mv	a3,s10
   176f2:	fc8acbe3          	blt	s5,s0,176c8 <_vfiprintf_r+0x950>
   176f6:	8ea6                	c.mv	t4,s1
   176f8:	4362                	c.lwsp	t1,24(sp)
   176fa:	84a2                	c.mv	s1,s0
   176fc:	8436                	c.mv	s0,a3
   176fe:	46d2                	c.lwsp	a3,20(sp)
   17700:	9726                	c.add	a4,s1
   17702:	0785                	c.addi	a5,1
   17704:	01d42023          	sw	t4,0(s0)
   17708:	c044                	c.sw	s1,4(s0)
   1770a:	c4ba                	c.swsp	a4,72(sp)
   1770c:	c2be                	c.swsp	a5,68(sp)
   1770e:	0421                	c.addi	s0,8
   17710:	82fb51e3          	bge	s6,a5,16f32 <_vfiprintf_r+0x1ba>
   17714:	0090                	c.addi4spn	a2,sp,64
   17716:	85de                	c.mv	a1,s7
   17718:	8566                	c.mv	a0,s9
   1771a:	cc1a                	c.swsp	t1,24(sp)
   1771c:	ca36                	c.swsp	a3,20(sp)
   1771e:	daffb0ef          	jal	ra,134cc <__sprint_r>
   17722:	84051ce3          	bne	a0,zero,16f7a <_vfiprintf_r+0x202>
   17726:	4726                	c.lwsp	a4,72(sp)
   17728:	4796                	c.lwsp	a5,68(sp)
   1772a:	4362                	c.lwsp	t1,24(sp)
   1772c:	846a                	c.mv	s0,s10
   1772e:	0785                	c.addi	a5,1
   17730:	971a                	c.add	a4,t1
   17732:	01842023          	sw	s8,0(s0)
   17736:	00642223          	sw	t1,4(s0)
   1773a:	c4ba                	c.swsp	a4,72(sp)
   1773c:	c2be                	c.swsp	a5,68(sp)
   1773e:	46d2                	c.lwsp	a3,20(sp)
   17740:	0421                	c.addi	s0,8
   17742:	80fb53e3          	bge	s6,a5,16f48 <_vfiprintf_r+0x1d0>
   17746:	0090                	c.addi4spn	a2,sp,64
   17748:	85de                	c.mv	a1,s7
   1774a:	8566                	c.mv	a0,s9
   1774c:	ca36                	c.swsp	a3,20(sp)
   1774e:	d7ffb0ef          	jal	ra,134cc <__sprint_r>
   17752:	820514e3          	bne	a0,zero,16f7a <_vfiprintf_r+0x202>
   17756:	4726                	c.lwsp	a4,72(sp)
   17758:	46d2                	c.lwsp	a3,20(sp)
   1775a:	846a                	c.mv	s0,s10
   1775c:	fecff06f          	jal	zero,16f48 <_vfiprintf_r+0x1d0>
   17760:	0090                	c.addi4spn	a2,sp,64
   17762:	85de                	c.mv	a1,s7
   17764:	8566                	c.mv	a0,s9
   17766:	d67fb0ef          	jal	ra,134cc <__sprint_r>
   1776a:	fe050f63          	beq	a0,zero,16f68 <_vfiprintf_r+0x1f0>
   1776e:	80dff06f          	jal	zero,16f7a <_vfiprintf_r+0x202>
   17772:	0090                	c.addi4spn	a2,sp,64
   17774:	85de                	c.mv	a1,s7
   17776:	8566                	c.mv	a0,s9
   17778:	d21a                	c.swsp	t1,36(sp)
   1777a:	cc7a                	c.swsp	t5,24(sp)
   1777c:	ca36                	c.swsp	a3,20(sp)
   1777e:	d4ffb0ef          	jal	ra,134cc <__sprint_r>
   17782:	fe051c63          	bne	a0,zero,16f7a <_vfiprintf_r+0x202>
   17786:	4726                	c.lwsp	a4,72(sp)
   17788:	4796                	c.lwsp	a5,68(sp)
   1778a:	5312                	c.lwsp	t1,36(sp)
   1778c:	4f62                	c.lwsp	t5,24(sp)
   1778e:	46d2                	c.lwsp	a3,20(sp)
   17790:	846a                	c.mv	s0,s10
   17792:	f90ff06f          	jal	zero,16f22 <_vfiprintf_r+0x1aa>
   17796:	01271693          	slli	a3,a4,0x12
   1779a:	e206d363          	bge	a3,zero,16dc0 <_vfiprintf_r+0x48>
   1779e:	57fd                	c.li	a5,-1
   177a0:	c43e                	c.swsp	a5,8(sp)
   177a2:	807ff06f          	jal	zero,16fa8 <_vfiprintf_r+0x230>
   177a6:	199c                	c.addi4spn	a5,sp,240
   177a8:	41878333          	sub	t1,a5,s8
   177ac:	8a26                	c.mv	s4,s1
   177ae:	f264d063          	bge	s1,t1,16ece <_vfiprintf_r+0x156>
   177b2:	8a1a                	c.mv	s4,t1
   177b4:	f1aff06f          	jal	zero,16ece <_vfiprintf_r+0x156>
   177b8:	4e81                	c.li	t4,0
   177ba:	6f6d                	c.lui	t5,0x1b
   177bc:	4fc1                	c.li	t6,16
   177be:	872e                	c.mv	a4,a1
   177c0:	87b2                	c.mv	a5,a2
   177c2:	e88f0f13          	addi	t5,t5,-376 # 1ae88 <blanks.1>
   177c6:	07cfd063          	bge	t6,t3,17826 <_vfiprintf_r+0xaae>
   177ca:	ca36                	c.swsp	a3,20(sp)
   177cc:	cc26                	c.swsp	s1,24(sp)
   177ce:	86a2                	c.mv	a3,s0
   177d0:	83fe                	c.mv	t2,t6
   177d2:	429d                	c.li	t0,7
   177d4:	8472                	c.mv	s0,t3
   177d6:	d276                	c.swsp	t4,36(sp)
   177d8:	d41a                	c.swsp	t1,40(sp)
   177da:	84fa                	c.mv	s1,t5
   177dc:	a021                	c.j	177e4 <_vfiprintf_r+0xa6c>
   177de:	1441                	c.addi	s0,-16
   177e0:	0283dc63          	bge	t2,s0,17818 <_vfiprintf_r+0xaa0>
   177e4:	0741                	c.addi	a4,16
   177e6:	0785                	c.addi	a5,1
   177e8:	c284                	c.sw	s1,0(a3)
   177ea:	01f6a223          	sw	t6,4(a3)
   177ee:	c4ba                	c.swsp	a4,72(sp)
   177f0:	c2be                	c.swsp	a5,68(sp)
   177f2:	06a1                	c.addi	a3,8
   177f4:	fef2d5e3          	bge	t0,a5,177de <_vfiprintf_r+0xa66>
   177f8:	0090                	c.addi4spn	a2,sp,64
   177fa:	85de                	c.mv	a1,s7
   177fc:	8566                	c.mv	a0,s9
   177fe:	ccffb0ef          	jal	ra,134cc <__sprint_r>
   17802:	f6051c63          	bne	a0,zero,16f7a <_vfiprintf_r+0x202>
   17806:	43c1                	c.li	t2,16
   17808:	1441                	c.addi	s0,-16
   1780a:	4726                	c.lwsp	a4,72(sp)
   1780c:	4796                	c.lwsp	a5,68(sp)
   1780e:	86ea                	c.mv	a3,s10
   17810:	429d                	c.li	t0,7
   17812:	8f9e                	c.mv	t6,t2
   17814:	fc83c8e3          	blt	t2,s0,177e4 <_vfiprintf_r+0xa6c>
   17818:	8e22                	c.mv	t3,s0
   1781a:	8f26                	c.mv	t5,s1
   1781c:	8436                	c.mv	s0,a3
   1781e:	5e92                	c.lwsp	t4,36(sp)
   17820:	46d2                	c.lwsp	a3,20(sp)
   17822:	5322                	c.lwsp	t1,40(sp)
   17824:	44e2                	c.lwsp	s1,24(sp)
   17826:	9772                	c.add	a4,t3
   17828:	0785                	c.addi	a5,1
   1782a:	c4ba                	c.swsp	a4,72(sp)
   1782c:	c2be                	c.swsp	a5,68(sp)
   1782e:	01e42023          	sw	t5,0(s0)
   17832:	01c42223          	sw	t3,4(s0)
   17836:	461d                	c.li	a2,7
   17838:	20f64c63          	blt	a2,a5,17a50 <_vfiprintf_r+0xcd8>
   1783c:	03b14603          	lbu	a2,59(sp)
   17840:	0421                	c.addi	s0,8
   17842:	ee1d                	c.bnez	a2,17880 <_vfiprintf_r+0xb08>
   17844:	ee0e8363          	beq	t4,zero,16f2a <_vfiprintf_r+0x1b2>
   17848:	4f01                	c.li	t5,0
   1784a:	ec2ff06f          	jal	zero,16f0c <_vfiprintf_r+0x194>
   1784e:	4305                	c.li	t1,1
   17850:	0ef10c13          	addi	s8,sp,239
   17854:	e7aff06f          	jal	zero,16ece <_vfiprintf_r+0x156>
   17858:	00094703          	lbu	a4,0(s2)
   1785c:	c63e                	c.swsp	a5,12(sp)
   1785e:	e16ff06f          	jal	zero,16e74 <_vfiprintf_r+0xfc>
   17862:	c20492e3          	bne	s1,zero,17486 <_vfiprintf_r+0x70e>
   17866:	0018fa13          	andi	s4,a7,1
   1786a:	1c0a0e63          	beq	s4,zero,17a46 <_vfiprintf_r+0xcce>
   1786e:	03000793          	addi	a5,zero,48
   17872:	0ef107a3          	sb	a5,239(sp)
   17876:	8352                	c.mv	t1,s4
   17878:	0ef10c13          	addi	s8,sp,239
   1787c:	e52ff06f          	jal	zero,16ece <_vfiprintf_r+0x156>
   17880:	4f01                	c.li	t5,0
   17882:	e6eff06f          	jal	zero,16ef0 <_vfiprintf_r+0x178>
   17886:	47b2                	c.lwsp	a5,12(sp)
   17888:	00478613          	addi	a2,a5,4
   1788c:	47b2                	c.lwsp	a5,12(sp)
   1788e:	4701                	c.li	a4,0
   17890:	c632                	c.swsp	a2,12(sp)
   17892:	439c                	c.lw	a5,0(a5)
   17894:	bee9                	c.j	1746e <_vfiprintf_r+0x6f6>
   17896:	47b2                	c.lwsp	a5,12(sp)
   17898:	00478613          	addi	a2,a5,4
   1789c:	47b2                	c.lwsp	a5,12(sp)
   1789e:	89c2                	c.mv	s3,a6
   178a0:	c632                	c.swsp	a2,12(sp)
   178a2:	439c                	c.lw	a5,0(a5)
   178a4:	41f7df93          	srai	t6,a5,0x1f
   178a8:	877e                	c.mv	a4,t6
   178aa:	b0b9                	c.j	170f8 <_vfiprintf_r+0x380>
   178ac:	0109f793          	andi	a5,s3,16
   178b0:	22079063          	bne	a5,zero,17ad0 <_vfiprintf_r+0xd58>
   178b4:	0409f793          	andi	a5,s3,64
   178b8:	3e079d63          	bne	a5,zero,17cb2 <_vfiprintf_r+0xf3a>
   178bc:	2009f813          	andi	a6,s3,512
   178c0:	20080863          	beq	a6,zero,17ad0 <_vfiprintf_r+0xd58>
   178c4:	47b2                	c.lwsp	a5,12(sp)
   178c6:	4722                	c.lwsp	a4,8(sp)
   178c8:	439c                	c.lw	a5,0(a5)
   178ca:	00e78023          	sb	a4,0(a5)
   178ce:	b69d                	c.j	17434 <_vfiprintf_r+0x6bc>
   178d0:	88ce                	c.mv	a7,s3
   178d2:	b669                	c.j	1745c <_vfiprintf_r+0x6e4>
   178d4:	6569                	c.lui	a0,0x1a
   178d6:	00f7f613          	andi	a2,a5,15
   178da:	74050713          	addi	a4,a0,1856 # 1a740 <__clzsi2+0x60>
   178de:	9732                	c.add	a4,a2
   178e0:	00074703          	lbu	a4,0(a4)
   178e4:	8391                	c.srli	a5,0x4
   178e6:	0029e993          	ori	s3,s3,2
   178ea:	0ee107a3          	sb	a4,239(sp)
   178ee:	4601                	c.li	a2,0
   178f0:	42078a63          	beq	a5,zero,17d24 <_vfiprintf_r+0xfac>
   178f4:	c62e                	c.swsp	a1,12(sp)
   178f6:	74050513          	addi	a0,a0,1856
   178fa:	4a09                	c.li	s4,2
   178fc:	b445                	c.j	1739c <_vfiprintf_r+0x624>
   178fe:	8a1a                	c.mv	s4,t1
   17900:	b6f1                	c.j	174cc <_vfiprintf_r+0x754>
   17902:	54fd                	c.li	s1,-1
   17904:	892e                	c.mv	s2,a1
   17906:	d70ff06f          	jal	zero,16e76 <_vfiprintf_r+0xfe>
   1790a:	34048463          	beq	s1,zero,17c52 <_vfiprintf_r+0xeda>
   1790e:	03000793          	addi	a5,zero,48
   17912:	80dff06f          	jal	zero,1711e <_vfiprintf_r+0x3a6>
   17916:	6569                	c.lui	a0,0x1a
   17918:	0209f793          	andi	a5,s3,32
   1791c:	86d2                	c.mv	a3,s4
   1791e:	75450513          	addi	a0,a0,1876 # 1a754 <__clzsi2+0x74>
   17922:	c7b9                	c.beqz	a5,17970 <_vfiprintf_r+0xbf8>
   17924:	47b2                	c.lwsp	a5,12(sp)
   17926:	00778613          	addi	a2,a5,7
   1792a:	9a61                	c.andi	a2,-8
   1792c:	00860793          	addi	a5,a2,8
   17930:	c63e                	c.swsp	a5,12(sp)
   17932:	421c                	c.lw	a5,0(a2)
   17934:	4250                	c.lw	a2,4(a2)
   17936:	0019fa13          	andi	s4,s3,1
   1793a:	080a0b63          	beq	s4,zero,179d0 <_vfiprintf_r+0xc58>
   1793e:	00c7e5b3          	or	a1,a5,a2
   17942:	14059063          	bne	a1,zero,17a82 <_vfiprintf_r+0xd0a>
   17946:	02010da3          	sb	zero,59(sp)
   1794a:	1e04ce63          	blt	s1,zero,17b46 <_vfiprintf_r+0xdce>
   1794e:	b7f9f993          	andi	s3,s3,-1153
   17952:	30049b63          	bne	s1,zero,17c68 <_vfiprintf_r+0xef0>
   17956:	4301                	c.li	t1,0
   17958:	4a01                	c.li	s4,0
   1795a:	0f010c13          	addi	s8,sp,240
   1795e:	d70ff06f          	jal	zero,16ece <_vfiprintf_r+0x156>
   17962:	6569                	c.lui	a0,0x1a
   17964:	0209f793          	andi	a5,s3,32
   17968:	86d2                	c.mv	a3,s4
   1796a:	74050513          	addi	a0,a0,1856 # 1a740 <__clzsi2+0x60>
   1796e:	fbdd                	c.bnez	a5,17924 <_vfiprintf_r+0xbac>
   17970:	45b2                	c.lwsp	a1,12(sp)
   17972:	0109f613          	andi	a2,s3,16
   17976:	419c                	c.lw	a5,0(a1)
   17978:	0591                	c.addi	a1,4
   1797a:	c62e                	c.swsp	a1,12(sp)
   1797c:	e251                	c.bnez	a2,17a00 <_vfiprintf_r+0xc88>
   1797e:	0409f613          	andi	a2,s3,64
   17982:	ca3d                	c.beqz	a2,179f8 <_vfiprintf_r+0xc80>
   17984:	07c2                	c.slli	a5,0x10
   17986:	83c1                	c.srli	a5,0x10
   17988:	4601                	c.li	a2,0
   1798a:	b775                	c.j	17936 <_vfiprintf_r+0xbbe>
   1798c:	8562                	c.mv	a0,s8
   1798e:	de2fc0ef          	jal	ra,13f70 <strlen>
   17992:	03b14783          	lbu	a5,59(sp)
   17996:	fff54893          	xori	a7,a0,-1
   1799a:	41f8d893          	srai	a7,a7,0x1f
   1799e:	46b2                	c.lwsp	a3,12(sp)
   179a0:	4752                	c.lwsp	a4,20(sp)
   179a2:	832a                	c.mv	t1,a0
   179a4:	01157a33          	and	s4,a0,a7
   179a8:	fe079663          	bne	a5,zero,17194 <_vfiprintf_r+0x41c>
   179ac:	c63a                	c.swsp	a4,12(sp)
   179ae:	4481                	c.li	s1,0
   179b0:	d1eff06f          	jal	zero,16ece <_vfiprintf_r+0x156>
   179b4:	2009f793          	andi	a5,s3,512
   179b8:	02010da3          	sb	zero,59(sp)
   179bc:	2e078063          	beq	a5,zero,17c9c <_vfiprintf_r+0xf24>
   179c0:	0ff77793          	andi	a5,a4,255
   179c4:	4f81                	c.li	t6,0
   179c6:	9604d6e3          	bge	s1,zero,17332 <_vfiprintf_r+0x5ba>
   179ca:	c632                	c.swsp	a2,12(sp)
   179cc:	f44ff06f          	jal	zero,17110 <_vfiprintf_r+0x398>
   179d0:	02010da3          	sb	zero,59(sp)
   179d4:	0204ca63          	blt	s1,zero,17a08 <_vfiprintf_r+0xc90>
   179d8:	00c7e733          	or	a4,a5,a2
   179dc:	b7f9f993          	andi	s3,s3,-1153
   179e0:	e361                	c.bnez	a4,17aa0 <_vfiprintf_r+0xd28>
   179e2:	14048a63          	beq	s1,zero,17b36 <_vfiprintf_r+0xdbe>
   179e6:	00054783          	lbu	a5,0(a0)
   179ea:	8a26                	c.mv	s4,s1
   179ec:	4305                	c.li	t1,1
   179ee:	0ef107a3          	sb	a5,239(sp)
   179f2:	0ef10c13          	addi	s8,sp,239
   179f6:	bce1                	c.j	174ce <_vfiprintf_r+0x756>
   179f8:	2009f613          	andi	a2,s3,512
   179fc:	28061663          	bne	a2,zero,17c88 <_vfiprintf_r+0xf10>
   17a00:	4601                	c.li	a2,0
   17a02:	bf15                	c.j	17936 <_vfiprintf_r+0xbbe>
   17a04:	0029e993          	ori	s3,s3,2
   17a08:	00f7f713          	andi	a4,a5,15
   17a0c:	972a                	c.add	a4,a0
   17a0e:	0029fa13          	andi	s4,s3,2
   17a12:	00074703          	lbu	a4,0(a4)
   17a16:	bff9f993          	andi	s3,s3,-1025
   17a1a:	b2b5                	c.j	17386 <_vfiprintf_r+0x60e>
   17a1c:	814588e3          	beq	a1,s4,1722c <_vfiprintf_r+0x4b4>
   17a20:	120f9d63          	bne	t6,zero,17b5a <_vfiprintf_r+0xde2>
   17a24:	4625                	c.li	a2,9
   17a26:	12f66a63          	bltu	a2,a5,17b5a <_vfiprintf_r+0xde2>
   17a2a:	199c                	c.addi4spn	a5,sp,240
   17a2c:	41878333          	sub	t1,a5,s8
   17a30:	8a26                	c.mv	s4,s1
   17a32:	0064d363          	bge	s1,t1,17a38 <_vfiprintf_r+0xcc0>
   17a36:	8a1a                	c.mv	s4,t1
   17a38:	03b14783          	lbu	a5,59(sp)
   17a3c:	c8078963          	beq	a5,zero,16ece <_vfiprintf_r+0x156>
   17a40:	0a05                	c.addi	s4,1
   17a42:	ef8ff06f          	jal	zero,1713a <_vfiprintf_r+0x3c2>
   17a46:	4301                	c.li	t1,0
   17a48:	0f010c13          	addi	s8,sp,240
   17a4c:	c82ff06f          	jal	zero,16ece <_vfiprintf_r+0x156>
   17a50:	0090                	c.addi4spn	a2,sp,64
   17a52:	85de                	c.mv	a1,s7
   17a54:	8566                	c.mv	a0,s9
   17a56:	d21a                	c.swsp	t1,36(sp)
   17a58:	cc76                	c.swsp	t4,24(sp)
   17a5a:	ca36                	c.swsp	a3,20(sp)
   17a5c:	a71fb0ef          	jal	ra,134cc <__sprint_r>
   17a60:	8f2a                	c.mv	t5,a0
   17a62:	d0051c63          	bne	a0,zero,16f7a <_vfiprintf_r+0x202>
   17a66:	03b14603          	lbu	a2,59(sp)
   17a6a:	4726                	c.lwsp	a4,72(sp)
   17a6c:	4796                	c.lwsp	a5,68(sp)
   17a6e:	46d2                	c.lwsp	a3,20(sp)
   17a70:	4ee2                	c.lwsp	t4,24(sp)
   17a72:	5312                	c.lwsp	t1,36(sp)
   17a74:	846a                	c.mv	s0,s10
   17a76:	c6061d63          	bne	a2,zero,16ef0 <_vfiprintf_r+0x178>
   17a7a:	c80e9963          	bne	t4,zero,16f0c <_vfiprintf_r+0x194>
   17a7e:	cacff06f          	jal	zero,16f2a <_vfiprintf_r+0x1b2>
   17a82:	03000593          	addi	a1,zero,48
   17a86:	02e10ea3          	sb	a4,61(sp)
   17a8a:	02010da3          	sb	zero,59(sp)
   17a8e:	02b10e23          	sb	a1,60(sp)
   17a92:	f604c9e3          	blt	s1,zero,17a04 <_vfiprintf_r+0xc8c>
   17a96:	b7f9f813          	andi	a6,s3,-1153
   17a9a:	00286993          	ori	s3,a6,2
   17a9e:	4a09                	c.li	s4,2
   17aa0:	00f7f713          	andi	a4,a5,15
   17aa4:	972a                	c.add	a4,a0
   17aa6:	00074703          	lbu	a4,0(a4)
   17aaa:	b8f1                	c.j	17386 <_vfiprintf_r+0x60e>
   17aac:	92df80ef          	jal	ra,103d8 <__sinit>
   17ab0:	aeaff06f          	jal	zero,16d9a <_vfiprintf_r+0x22>
   17ab4:	00194703          	lbu	a4,1(s2)
   17ab8:	0209e993          	ori	s3,s3,32
   17abc:	0905                	c.addi	s2,1
   17abe:	bb6ff06f          	jal	zero,16e74 <_vfiprintf_r+0xfc>
   17ac2:	00194703          	lbu	a4,1(s2)
   17ac6:	2009e993          	ori	s3,s3,512
   17aca:	0905                	c.addi	s2,1
   17acc:	ba8ff06f          	jal	zero,16e74 <_vfiprintf_r+0xfc>
   17ad0:	47b2                	c.lwsp	a5,12(sp)
   17ad2:	4722                	c.lwsp	a4,8(sp)
   17ad4:	439c                	c.lw	a5,0(a5)
   17ad6:	c398                	c.sw	a4,0(a5)
   17ad8:	bab1                	c.j	17434 <_vfiprintf_r+0x6bc>
   17ada:	4799                	c.li	a5,6
   17adc:	8a26                	c.mv	s4,s1
   17ade:	1897e363          	bltu	a5,s1,17c64 <_vfiprintf_r+0xeec>
   17ae2:	6c69                	c.lui	s8,0x1a
   17ae4:	c63a                	c.swsp	a4,12(sp)
   17ae6:	768c0c13          	addi	s8,s8,1896 # 1a768 <__clzsi2+0x88>
   17aea:	8352                	c.mv	t1,s4
   17aec:	4481                	c.li	s1,0
   17aee:	be0ff06f          	jal	zero,16ece <_vfiprintf_r+0x156>
   17af2:	18048463          	beq	s1,zero,17c7a <_vfiprintf_r+0xf02>
   17af6:	03000793          	addi	a5,zero,48
   17afa:	0ef107a3          	sb	a5,239(sp)
   17afe:	c62e                	c.swsp	a1,12(sp)
   17b00:	87a6                	c.mv	a5,s1
   17b02:	0ef10c13          	addi	s8,sp,239
   17b06:	4305                	c.li	t1,1
   17b08:	b0e9                	c.j	173d2 <_vfiprintf_r+0x65a>
   17b0a:	2009f713          	andi	a4,s3,512
   17b0e:	18070163          	beq	a4,zero,17c90 <_vfiprintf_r+0xf18>
   17b12:	07e2                	c.slli	a5,0x18
   17b14:	87e1                	c.srai	a5,0x18
   17b16:	41f7df93          	srai	t6,a5,0x1f
   17b1a:	c632                	c.swsp	a2,12(sp)
   17b1c:	877e                	c.mv	a4,t6
   17b1e:	ddaff06f          	jal	zero,170f8 <_vfiprintf_r+0x380>
   17b22:	2009f713          	andi	a4,s3,512
   17b26:	18070d63          	beq	a4,zero,17cc0 <_vfiprintf_r+0xf48>
   17b2a:	0ff7f793          	andi	a5,a5,255
   17b2e:	c632                	c.swsp	a2,12(sp)
   17b30:	88ce                	c.mv	a7,s3
   17b32:	4701                	c.li	a4,0
   17b34:	ba2d                	c.j	1746e <_vfiprintf_r+0x6f6>
   17b36:	4301                	c.li	t1,0
   17b38:	0f010c13          	addi	s8,sp,240
   17b3c:	ba49                	c.j	174ce <_vfiprintf_r+0x756>
   17b3e:	c632                	c.swsp	a2,12(sp)
   17b40:	89c2                	c.mv	s3,a6
   17b42:	dceff06f          	jal	zero,17110 <_vfiprintf_r+0x398>
   17b46:	00054783          	lbu	a5,0(a0)
   17b4a:	bff9f993          	andi	s3,s3,-1025
   17b4e:	8352                	c.mv	t1,s4
   17b50:	0ef107a3          	sb	a5,239(sp)
   17b54:	0ef10c13          	addi	s8,sp,239
   17b58:	ba9d                	c.j	174ce <_vfiprintf_r+0x756>
   17b5a:	4672                	c.lwsp	a2,28(sp)
   17b5c:	5582                	c.lwsp	a1,32(sp)
   17b5e:	d67e                	c.swsp	t6,44(sp)
   17b60:	40cc0833          	sub	a6,s8,a2
   17b64:	8542                	c.mv	a0,a6
   17b66:	d43e                	c.swsp	a5,40(sp)
   17b68:	d272                	c.swsp	t3,36(sp)
   17b6a:	cc36                	c.swsp	a3,24(sp)
   17b6c:	ca42                	c.swsp	a6,20(sp)
   17b6e:	948fc0ef          	jal	ra,13cb6 <strncpy>
   17b72:	57a2                	c.lwsp	a5,40(sp)
   17b74:	5fb2                	c.lwsp	t6,44(sp)
   17b76:	ccccd537          	lui	a0,0xccccd
   17b7a:	ccd50513          	addi	a0,a0,-819 # cccccccd <__BSS_END__+0xcccb1271>
   17b7e:	01f78633          	add	a2,a5,t6
   17b82:	00f635b3          	sltu	a1,a2,a5
   17b86:	962e                	c.add	a2,a1
   17b88:	02a635b3          	mulhu	a1,a2,a0
   17b8c:	4742                	c.lwsp	a4,16(sp)
   17b8e:	ccccd337          	lui	t1,0xccccd
   17b92:	ccc30313          	addi	t1,t1,-820 # cccccccc <__BSS_END__+0xcccb1270>
   17b96:	00174e83          	lbu	t4,1(a4)
   17b9a:	4852                	c.lwsp	a6,20(sp)
   17b9c:	ccccd6b7          	lui	a3,0xccccd
   17ba0:	01d03eb3          	sltu	t4,zero,t4
   17ba4:	9776                	c.add	a4,t4
   17ba6:	c83a                	c.swsp	a4,16(sp)
   17ba8:	0025de93          	srli	t4,a1,0x2
   17bac:	99f1                	c.andi	a1,-4
   17bae:	95f6                	c.add	a1,t4
   17bb0:	8e0d                	c.sub	a2,a1
   17bb2:	40c78633          	sub	a2,a5,a2
   17bb6:	00c7b7b3          	sltu	a5,a5,a2
   17bba:	40ff87b3          	sub	a5,t6,a5
   17bbe:	02660333          	mul	t1,a2,t1
   17bc2:	ccd68713          	addi	a4,a3,-819 # cccccccd <__BSS_END__+0xcccb1271>
   17bc6:	ccc68893          	addi	a7,a3,-820
   17bca:	5e12                	c.lwsp	t3,36(sp)
   17bcc:	46e2                	c.lwsp	a3,24(sp)
   17bce:	fff80c13          	addi	s8,a6,-1
   17bd2:	02a787b3          	mul	a5,a5,a0
   17bd6:	02a635b3          	mulhu	a1,a2,a0
   17bda:	979a                	c.add	a5,t1
   17bdc:	02a60633          	mul	a2,a2,a0
   17be0:	97ae                	c.add	a5,a1
   17be2:	01f79313          	slli	t1,a5,0x1f
   17be6:	0017df93          	srli	t6,a5,0x1
   17bea:	4585                	c.li	a1,1
   17bec:	00165793          	srli	a5,a2,0x1
   17bf0:	00f367b3          	or	a5,t1,a5
   17bf4:	01f78633          	add	a2,a5,t6
   17bf8:	00f63333          	sltu	t1,a2,a5
   17bfc:	961a                	c.add	a2,t1
   17bfe:	02a63333          	mulhu	t1,a2,a0
   17c02:	00235e93          	srli	t4,t1,0x2
   17c06:	ffc37313          	andi	t1,t1,-4
   17c0a:	9376                	c.add	t1,t4
   17c0c:	40660633          	sub	a2,a2,t1
   17c10:	40c78633          	sub	a2,a5,a2
   17c14:	00c7b333          	sltu	t1,a5,a2
   17c18:	406f8333          	sub	t1,t6,t1
   17c1c:	02a63eb3          	mulhu	t4,a2,a0
   17c20:	02a30333          	mul	t1,t1,a0
   17c24:	02a60633          	mul	a2,a2,a0
   17c28:	01d30533          	add	a0,t1,t4
   17c2c:	057e                	c.slli	a0,0x1f
   17c2e:	8205                	c.srli	a2,0x1
   17c30:	8e49                	c.or	a2,a0
   17c32:	00261513          	slli	a0,a2,0x2
   17c36:	962a                	c.add	a2,a0
   17c38:	0606                	c.slli	a2,0x1
   17c3a:	40c78633          	sub	a2,a5,a2
   17c3e:	03060613          	addi	a2,a2,48
   17c42:	fec80fa3          	sb	a2,-1(a6)
   17c46:	ddcff06f          	jal	zero,17222 <_vfiprintf_r+0x4aa>
   17c4a:	4525                	c.li	a0,9
   17c4c:	e2656a63          	bltu	a0,t1,17280 <_vfiprintf_r+0x508>
   17c50:	bbe9                	c.j	17a2a <_vfiprintf_r+0xcb2>
   17c52:	03b14783          	lbu	a5,59(sp)
   17c56:	4301                	c.li	t1,0
   17c58:	0f010c13          	addi	s8,sp,240
   17c5c:	4a05                	c.li	s4,1
   17c5e:	cc079e63          	bne	a5,zero,1713a <_vfiprintf_r+0x3c2>
   17c62:	b9dd                	c.j	17958 <_vfiprintf_r+0xbe0>
   17c64:	8a3e                	c.mv	s4,a5
   17c66:	bdb5                	c.j	17ae2 <_vfiprintf_r+0xd6a>
   17c68:	00054783          	lbu	a5,0(a0)
   17c6c:	8352                	c.mv	t1,s4
   17c6e:	0ef10c13          	addi	s8,sp,239
   17c72:	0ef107a3          	sb	a5,239(sp)
   17c76:	8a26                	c.mv	s4,s1
   17c78:	b899                	c.j	174ce <_vfiprintf_r+0x756>
   17c7a:	c62e                	c.swsp	a1,12(sp)
   17c7c:	4301                	c.li	t1,0
   17c7e:	4781                	c.li	a5,0
   17c80:	0f010c13          	addi	s8,sp,240
   17c84:	f4eff06f          	jal	zero,173d2 <_vfiprintf_r+0x65a>
   17c88:	0ff7f793          	andi	a5,a5,255
   17c8c:	4601                	c.li	a2,0
   17c8e:	b165                	c.j	17936 <_vfiprintf_r+0xbbe>
   17c90:	41f7df93          	srai	t6,a5,0x1f
   17c94:	c632                	c.swsp	a2,12(sp)
   17c96:	877e                	c.mv	a4,t6
   17c98:	c60ff06f          	jal	zero,170f8 <_vfiprintf_r+0x380>
   17c9c:	87ba                	c.mv	a5,a4
   17c9e:	4f81                	c.li	t6,0
   17ca0:	d204c5e3          	blt	s1,zero,179ca <_vfiprintf_r+0xc52>
   17ca4:	c632                	c.swsp	a2,12(sp)
   17ca6:	f7f9f993          	andi	s3,s3,-129
   17caa:	c6071363          	bne	a4,zero,17110 <_vfiprintf_r+0x398>
   17cae:	e8eff06f          	jal	zero,1733c <_vfiprintf_r+0x5c4>
   17cb2:	47b2                	c.lwsp	a5,12(sp)
   17cb4:	4722                	c.lwsp	a4,8(sp)
   17cb6:	439c                	c.lw	a5,0(a5)
   17cb8:	00e79023          	sh	a4,0(a5)
   17cbc:	f78ff06f          	jal	zero,17434 <_vfiprintf_r+0x6bc>
   17cc0:	c632                	c.swsp	a2,12(sp)
   17cc2:	88ce                	c.mv	a7,s3
   17cc4:	4701                	c.li	a4,0
   17cc6:	fa8ff06f          	jal	zero,1746e <_vfiprintf_r+0x6f6>
   17cca:	8566                	c.mv	a0,s9
   17ccc:	0090                	c.addi4spn	a2,sp,64
   17cce:	85de                	c.mv	a1,s7
   17cd0:	ffcfb0ef          	jal	ra,134cc <__sprint_r>
   17cd4:	aa6ff06f          	jal	zero,16f7a <_vfiprintf_r+0x202>
   17cd8:	c63a                	c.swsp	a4,12(sp)
   17cda:	cf89                	c.beqz	a5,17cf4 <_vfiprintf_r+0xf7c>
   17cdc:	00148a13          	addi	s4,s1,1
   17ce0:	8326                	c.mv	t1,s1
   17ce2:	4481                	c.li	s1,0
   17ce4:	c56ff06f          	jal	zero,1713a <_vfiprintf_r+0x3c2>
   17ce8:	884e                	c.mv	a6,s3
   17cea:	b8c9                	c.j	175bc <_vfiprintf_r+0x844>
   17cec:	88ce                	c.mv	a7,s3
   17cee:	be79                	c.j	1788c <_vfiprintf_r+0xb14>
   17cf0:	884e                	c.mv	a6,s3
   17cf2:	b66d                	c.j	1789c <_vfiprintf_r+0xb24>
   17cf4:	8326                	c.mv	t1,s1
   17cf6:	8a26                	c.mv	s4,s1
   17cf8:	4481                	c.li	s1,0
   17cfa:	9d4ff06f          	jal	zero,16ece <_vfiprintf_r+0x156>
   17cfe:	47b2                	c.lwsp	a5,12(sp)
   17d00:	4384                	c.lw	s1,0(a5)
   17d02:	0791                	c.addi	a5,4
   17d04:	0004d363          	bge	s1,zero,17d0a <_vfiprintf_r+0xf92>
   17d08:	54fd                	c.li	s1,-1
   17d0a:	00194703          	lbu	a4,1(s2)
   17d0e:	c63e                	c.swsp	a5,12(sp)
   17d10:	892e                	c.mv	s2,a1
   17d12:	962ff06f          	jal	zero,16e74 <_vfiprintf_r+0xfc>
   17d16:	0ef10c13          	addi	s8,sp,239
   17d1a:	ea6ff06f          	jal	zero,173c0 <_vfiprintf_r+0x648>
   17d1e:	8a3e                	c.mv	s4,a5
   17d20:	faeff06f          	jal	zero,174ce <_vfiprintf_r+0x756>
   17d24:	4785                	c.li	a5,1
   17d26:	c62e                	c.swsp	a1,12(sp)
   17d28:	833e                	c.mv	t1,a5
   17d2a:	0ef10c13          	addi	s8,sp,239
   17d2e:	ea4ff06f          	jal	zero,173d2 <_vfiprintf_r+0x65a>

00017d32 <vfiprintf>:
   17d32:	872a                	c.mv	a4,a0
   17d34:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   17d38:	87ae                	c.mv	a5,a1
   17d3a:	86b2                	c.mv	a3,a2
   17d3c:	85ba                	c.mv	a1,a4
   17d3e:	863e                	c.mv	a2,a5
   17d40:	838ff06f          	jal	zero,16d78 <_vfiprintf_r>

00017d44 <__sbprintf>:
   17d44:	00c5d783          	lhu	a5,12(a1)
   17d48:	0645ae83          	lw	t4,100(a1)
   17d4c:	00e5de03          	lhu	t3,14(a1)
   17d50:	01c5a303          	lw	t1,28(a1)
   17d54:	0245a883          	lw	a7,36(a1)
   17d58:	b8010113          	addi	sp,sp,-1152
   17d5c:	07010813          	addi	a6,sp,112
   17d60:	40000713          	addi	a4,zero,1024
   17d64:	46812c23          	sw	s0,1144(sp)
   17d68:	9bf5                	c.andi	a5,-3
   17d6a:	842e                	c.mv	s0,a1
   17d6c:	002c                	c.addi4spn	a1,sp,8
   17d6e:	46912a23          	sw	s1,1140(sp)
   17d72:	47212823          	sw	s2,1136(sp)
   17d76:	46112e23          	sw	ra,1148(sp)
   17d7a:	d002                	c.swsp	zero,32(sp)
   17d7c:	00f11a23          	sh	a5,20(sp)
   17d80:	d6f6                	c.swsp	t4,108(sp)
   17d82:	01c11b23          	sh	t3,22(sp)
   17d86:	d21a                	c.swsp	t1,36(sp)
   17d88:	d646                	c.swsp	a7,44(sp)
   17d8a:	892a                	c.mv	s2,a0
   17d8c:	c442                	c.swsp	a6,8(sp)
   17d8e:	cc42                	c.swsp	a6,24(sp)
   17d90:	c83a                	c.swsp	a4,16(sp)
   17d92:	ce3a                	c.swsp	a4,28(sp)
   17d94:	fe5fe0ef          	jal	ra,16d78 <_vfiprintf_r>
   17d98:	84aa                	c.mv	s1,a0
   17d9a:	02055963          	bge	a0,zero,17dcc <__sbprintf+0x88>
   17d9e:	01415783          	lhu	a5,20(sp)
   17da2:	0407f793          	andi	a5,a5,64
   17da6:	c799                	c.beqz	a5,17db4 <__sbprintf+0x70>
   17da8:	00c45783          	lhu	a5,12(s0)
   17dac:	0407e793          	ori	a5,a5,64
   17db0:	00f41623          	sh	a5,12(s0)
   17db4:	47c12083          	lw	ra,1148(sp)
   17db8:	47812403          	lw	s0,1144(sp)
   17dbc:	47012903          	lw	s2,1136(sp)
   17dc0:	8526                	c.mv	a0,s1
   17dc2:	47412483          	lw	s1,1140(sp)
   17dc6:	48010113          	addi	sp,sp,1152
   17dca:	8082                	c.jr	ra
   17dcc:	002c                	c.addi4spn	a1,sp,8
   17dce:	854a                	c.mv	a0,s2
   17dd0:	96ffb0ef          	jal	ra,1373e <_fflush_r>
   17dd4:	d569                	c.beqz	a0,17d9e <__sbprintf+0x5a>
   17dd6:	54fd                	c.li	s1,-1
   17dd8:	b7d9                	c.j	17d9e <__sbprintf+0x5a>

00017dda <__errno>:
   17dda:	f141a503          	lw	a0,-236(gp) # 1b724 <_impure_ptr>
   17dde:	8082                	c.jr	ra

00017de0 <abort>:
   17de0:	1141                	c.addi	sp,-16
   17de2:	4519                	c.li	a0,6
   17de4:	c606                	c.swsp	ra,12(sp)
   17de6:	2a69                	c.jal	17f80 <raise>
   17de8:	4505                	c.li	a0,1
   17dea:	264d                	c.jal	1818c <_exit>

00017dec <_init_signal_r>:
   17dec:	11852783          	lw	a5,280(a0)
   17df0:	c399                	c.beqz	a5,17df6 <_init_signal_r+0xa>
   17df2:	4501                	c.li	a0,0
   17df4:	8082                	c.jr	ra
   17df6:	1141                	c.addi	sp,-16
   17df8:	08000593          	addi	a1,zero,128
   17dfc:	c422                	c.swsp	s0,8(sp)
   17dfe:	c606                	c.swsp	ra,12(sp)
   17e00:	842a                	c.mv	s0,a0
   17e02:	ddbf80ef          	jal	ra,10bdc <_malloc_r>
   17e06:	10a42c23          	sw	a0,280(s0)
   17e0a:	cd09                	c.beqz	a0,17e24 <_init_signal_r+0x38>
   17e0c:	08050793          	addi	a5,a0,128
   17e10:	00052023          	sw	zero,0(a0)
   17e14:	0511                	c.addi	a0,4
   17e16:	fef51de3          	bne	a0,a5,17e10 <_init_signal_r+0x24>
   17e1a:	4501                	c.li	a0,0
   17e1c:	40b2                	c.lwsp	ra,12(sp)
   17e1e:	4422                	c.lwsp	s0,8(sp)
   17e20:	0141                	c.addi	sp,16
   17e22:	8082                	c.jr	ra
   17e24:	557d                	c.li	a0,-1
   17e26:	bfdd                	c.j	17e1c <_init_signal_r+0x30>

00017e28 <_signal_r>:
   17e28:	1101                	c.addi	sp,-32
   17e2a:	ca26                	c.swsp	s1,20(sp)
   17e2c:	ce06                	c.swsp	ra,28(sp)
   17e2e:	47fd                	c.li	a5,31
   17e30:	84aa                	c.mv	s1,a0
   17e32:	02b7e063          	bltu	a5,a1,17e52 <_signal_r+0x2a>
   17e36:	11852783          	lw	a5,280(a0)
   17e3a:	cc22                	c.swsp	s0,24(sp)
   17e3c:	842e                	c.mv	s0,a1
   17e3e:	c38d                	c.beqz	a5,17e60 <_signal_r+0x38>
   17e40:	040a                	c.slli	s0,0x2
   17e42:	97a2                	c.add	a5,s0
   17e44:	40f2                	c.lwsp	ra,28(sp)
   17e46:	4462                	c.lwsp	s0,24(sp)
   17e48:	4388                	c.lw	a0,0(a5)
   17e4a:	c390                	c.sw	a2,0(a5)
   17e4c:	44d2                	c.lwsp	s1,20(sp)
   17e4e:	6105                	c.addi16sp	sp,32
   17e50:	8082                	c.jr	ra
   17e52:	47d9                	c.li	a5,22
   17e54:	c11c                	c.sw	a5,0(a0)
   17e56:	557d                	c.li	a0,-1
   17e58:	40f2                	c.lwsp	ra,28(sp)
   17e5a:	44d2                	c.lwsp	s1,20(sp)
   17e5c:	6105                	c.addi16sp	sp,32
   17e5e:	8082                	c.jr	ra
   17e60:	08000593          	addi	a1,zero,128
   17e64:	c632                	c.swsp	a2,12(sp)
   17e66:	d77f80ef          	jal	ra,10bdc <_malloc_r>
   17e6a:	10a4ac23          	sw	a0,280(s1)
   17e6e:	4632                	c.lwsp	a2,12(sp)
   17e70:	87aa                	c.mv	a5,a0
   17e72:	872a                	c.mv	a4,a0
   17e74:	08050693          	addi	a3,a0,128
   17e78:	c519                	c.beqz	a0,17e86 <_signal_r+0x5e>
   17e7a:	00072023          	sw	zero,0(a4)
   17e7e:	0711                	c.addi	a4,4
   17e80:	fed71de3          	bne	a4,a3,17e7a <_signal_r+0x52>
   17e84:	bf75                	c.j	17e40 <_signal_r+0x18>
   17e86:	4462                	c.lwsp	s0,24(sp)
   17e88:	557d                	c.li	a0,-1
   17e8a:	b7f9                	c.j	17e58 <_signal_r+0x30>

00017e8c <_raise_r>:
   17e8c:	1141                	c.addi	sp,-16
   17e8e:	c226                	c.swsp	s1,4(sp)
   17e90:	c606                	c.swsp	ra,12(sp)
   17e92:	47fd                	c.li	a5,31
   17e94:	84aa                	c.mv	s1,a0
   17e96:	04b7ed63          	bltu	a5,a1,17ef0 <_raise_r+0x64>
   17e9a:	11852783          	lw	a5,280(a0)
   17e9e:	c422                	c.swsp	s0,8(sp)
   17ea0:	842e                	c.mv	s0,a1
   17ea2:	c795                	c.beqz	a5,17ece <_raise_r+0x42>
   17ea4:	00259713          	slli	a4,a1,0x2
   17ea8:	97ba                	c.add	a5,a4
   17eaa:	4398                	c.lw	a4,0(a5)
   17eac:	c30d                	c.beqz	a4,17ece <_raise_r+0x42>
   17eae:	4505                	c.li	a0,1
   17eb0:	00a70963          	beq	a4,a0,17ec2 <_raise_r+0x36>
   17eb4:	56fd                	c.li	a3,-1
   17eb6:	02d70663          	beq	a4,a3,17ee2 <_raise_r+0x56>
   17eba:	0007a023          	sw	zero,0(a5)
   17ebe:	852e                	c.mv	a0,a1
   17ec0:	9702                	c.jalr	a4
   17ec2:	4422                	c.lwsp	s0,8(sp)
   17ec4:	4501                	c.li	a0,0
   17ec6:	40b2                	c.lwsp	ra,12(sp)
   17ec8:	4492                	c.lwsp	s1,4(sp)
   17eca:	0141                	c.addi	sp,16
   17ecc:	8082                	c.jr	ra
   17ece:	8526                	c.mv	a0,s1
   17ed0:	2479                	c.jal	1815e <_getpid_r>
   17ed2:	8622                	c.mv	a2,s0
   17ed4:	4422                	c.lwsp	s0,8(sp)
   17ed6:	40b2                	c.lwsp	ra,12(sp)
   17ed8:	85aa                	c.mv	a1,a0
   17eda:	8526                	c.mv	a0,s1
   17edc:	4492                	c.lwsp	s1,4(sp)
   17ede:	0141                	c.addi	sp,16
   17ee0:	a499                	c.j	18126 <_kill_r>
   17ee2:	4422                	c.lwsp	s0,8(sp)
   17ee4:	40b2                	c.lwsp	ra,12(sp)
   17ee6:	47d9                	c.li	a5,22
   17ee8:	c09c                	c.sw	a5,0(s1)
   17eea:	4492                	c.lwsp	s1,4(sp)
   17eec:	0141                	c.addi	sp,16
   17eee:	8082                	c.jr	ra
   17ef0:	47d9                	c.li	a5,22
   17ef2:	c11c                	c.sw	a5,0(a0)
   17ef4:	557d                	c.li	a0,-1
   17ef6:	bfc1                	c.j	17ec6 <_raise_r+0x3a>

00017ef8 <__sigtramp_r>:
   17ef8:	47fd                	c.li	a5,31
   17efa:	08b7e163          	bltu	a5,a1,17f7c <__sigtramp_r+0x84>
   17efe:	11852783          	lw	a5,280(a0)
   17f02:	1141                	c.addi	sp,-16
   17f04:	c422                	c.swsp	s0,8(sp)
   17f06:	c226                	c.swsp	s1,4(sp)
   17f08:	c606                	c.swsp	ra,12(sp)
   17f0a:	842e                	c.mv	s0,a1
   17f0c:	84aa                	c.mv	s1,a0
   17f0e:	c7a1                	c.beqz	a5,17f56 <__sigtramp_r+0x5e>
   17f10:	00241713          	slli	a4,s0,0x2
   17f14:	97ba                	c.add	a5,a4
   17f16:	4398                	c.lw	a4,0(a5)
   17f18:	c30d                	c.beqz	a4,17f3a <__sigtramp_r+0x42>
   17f1a:	56fd                	c.li	a3,-1
   17f1c:	02d70b63          	beq	a4,a3,17f52 <__sigtramp_r+0x5a>
   17f20:	4685                	c.li	a3,1
   17f22:	02d70263          	beq	a4,a3,17f46 <__sigtramp_r+0x4e>
   17f26:	8522                	c.mv	a0,s0
   17f28:	0007a023          	sw	zero,0(a5)
   17f2c:	9702                	c.jalr	a4
   17f2e:	4501                	c.li	a0,0
   17f30:	40b2                	c.lwsp	ra,12(sp)
   17f32:	4422                	c.lwsp	s0,8(sp)
   17f34:	4492                	c.lwsp	s1,4(sp)
   17f36:	0141                	c.addi	sp,16
   17f38:	8082                	c.jr	ra
   17f3a:	40b2                	c.lwsp	ra,12(sp)
   17f3c:	4422                	c.lwsp	s0,8(sp)
   17f3e:	4492                	c.lwsp	s1,4(sp)
   17f40:	4505                	c.li	a0,1
   17f42:	0141                	c.addi	sp,16
   17f44:	8082                	c.jr	ra
   17f46:	40b2                	c.lwsp	ra,12(sp)
   17f48:	4422                	c.lwsp	s0,8(sp)
   17f4a:	4492                	c.lwsp	s1,4(sp)
   17f4c:	450d                	c.li	a0,3
   17f4e:	0141                	c.addi	sp,16
   17f50:	8082                	c.jr	ra
   17f52:	4509                	c.li	a0,2
   17f54:	bff1                	c.j	17f30 <__sigtramp_r+0x38>
   17f56:	08000593          	addi	a1,zero,128
   17f5a:	c83f80ef          	jal	ra,10bdc <_malloc_r>
   17f5e:	10a4ac23          	sw	a0,280(s1)
   17f62:	87aa                	c.mv	a5,a0
   17f64:	c911                	c.beqz	a0,17f78 <__sigtramp_r+0x80>
   17f66:	872a                	c.mv	a4,a0
   17f68:	08050693          	addi	a3,a0,128
   17f6c:	00072023          	sw	zero,0(a4)
   17f70:	0711                	c.addi	a4,4
   17f72:	fed71de3          	bne	a4,a3,17f6c <__sigtramp_r+0x74>
   17f76:	bf69                	c.j	17f10 <__sigtramp_r+0x18>
   17f78:	557d                	c.li	a0,-1
   17f7a:	bf5d                	c.j	17f30 <__sigtramp_r+0x38>
   17f7c:	557d                	c.li	a0,-1
   17f7e:	8082                	c.jr	ra

00017f80 <raise>:
   17f80:	1141                	c.addi	sp,-16
   17f82:	c226                	c.swsp	s1,4(sp)
   17f84:	c606                	c.swsp	ra,12(sp)
   17f86:	47fd                	c.li	a5,31
   17f88:	f141a483          	lw	s1,-236(gp) # 1b724 <_impure_ptr>
   17f8c:	04a7ed63          	bltu	a5,a0,17fe6 <raise+0x66>
   17f90:	1184a783          	lw	a5,280(s1)
   17f94:	c422                	c.swsp	s0,8(sp)
   17f96:	842a                	c.mv	s0,a0
   17f98:	c78d                	c.beqz	a5,17fc2 <raise+0x42>
   17f9a:	00251713          	slli	a4,a0,0x2
   17f9e:	97ba                	c.add	a5,a4
   17fa0:	4398                	c.lw	a4,0(a5)
   17fa2:	c305                	c.beqz	a4,17fc2 <raise+0x42>
   17fa4:	4685                	c.li	a3,1
   17fa6:	00d70863          	beq	a4,a3,17fb6 <raise+0x36>
   17faa:	567d                	c.li	a2,-1
   17fac:	02c70563          	beq	a4,a2,17fd6 <raise+0x56>
   17fb0:	0007a023          	sw	zero,0(a5)
   17fb4:	9702                	c.jalr	a4
   17fb6:	4422                	c.lwsp	s0,8(sp)
   17fb8:	4501                	c.li	a0,0
   17fba:	40b2                	c.lwsp	ra,12(sp)
   17fbc:	4492                	c.lwsp	s1,4(sp)
   17fbe:	0141                	c.addi	sp,16
   17fc0:	8082                	c.jr	ra
   17fc2:	8526                	c.mv	a0,s1
   17fc4:	2a69                	c.jal	1815e <_getpid_r>
   17fc6:	8622                	c.mv	a2,s0
   17fc8:	4422                	c.lwsp	s0,8(sp)
   17fca:	40b2                	c.lwsp	ra,12(sp)
   17fcc:	85aa                	c.mv	a1,a0
   17fce:	8526                	c.mv	a0,s1
   17fd0:	4492                	c.lwsp	s1,4(sp)
   17fd2:	0141                	c.addi	sp,16
   17fd4:	aa89                	c.j	18126 <_kill_r>
   17fd6:	4422                	c.lwsp	s0,8(sp)
   17fd8:	40b2                	c.lwsp	ra,12(sp)
   17fda:	47d9                	c.li	a5,22
   17fdc:	c09c                	c.sw	a5,0(s1)
   17fde:	8536                	c.mv	a0,a3
   17fe0:	4492                	c.lwsp	s1,4(sp)
   17fe2:	0141                	c.addi	sp,16
   17fe4:	8082                	c.jr	ra
   17fe6:	47d9                	c.li	a5,22
   17fe8:	c09c                	c.sw	a5,0(s1)
   17fea:	557d                	c.li	a0,-1
   17fec:	b7f9                	c.j	17fba <raise+0x3a>

00017fee <signal>:
   17fee:	1141                	c.addi	sp,-16
   17ff0:	c04a                	c.swsp	s2,0(sp)
   17ff2:	c606                	c.swsp	ra,12(sp)
   17ff4:	47fd                	c.li	a5,31
   17ff6:	f141a903          	lw	s2,-236(gp) # 1b724 <_impure_ptr>
   17ffa:	02a7e463          	bltu	a5,a0,18022 <signal+0x34>
   17ffe:	c422                	c.swsp	s0,8(sp)
   18000:	842a                	c.mv	s0,a0
   18002:	11892503          	lw	a0,280(s2)
   18006:	c226                	c.swsp	s1,4(sp)
   18008:	84ae                	c.mv	s1,a1
   1800a:	c505                	c.beqz	a0,18032 <signal+0x44>
   1800c:	040a                	c.slli	s0,0x2
   1800e:	008507b3          	add	a5,a0,s0
   18012:	40b2                	c.lwsp	ra,12(sp)
   18014:	4422                	c.lwsp	s0,8(sp)
   18016:	4388                	c.lw	a0,0(a5)
   18018:	c384                	c.sw	s1,0(a5)
   1801a:	4902                	c.lwsp	s2,0(sp)
   1801c:	4492                	c.lwsp	s1,4(sp)
   1801e:	0141                	c.addi	sp,16
   18020:	8082                	c.jr	ra
   18022:	47d9                	c.li	a5,22
   18024:	00f92023          	sw	a5,0(s2)
   18028:	557d                	c.li	a0,-1
   1802a:	40b2                	c.lwsp	ra,12(sp)
   1802c:	4902                	c.lwsp	s2,0(sp)
   1802e:	0141                	c.addi	sp,16
   18030:	8082                	c.jr	ra
   18032:	08000593          	addi	a1,zero,128
   18036:	854a                	c.mv	a0,s2
   18038:	ba5f80ef          	jal	ra,10bdc <_malloc_r>
   1803c:	10a92c23          	sw	a0,280(s2)
   18040:	87aa                	c.mv	a5,a0
   18042:	08050713          	addi	a4,a0,128
   18046:	c519                	c.beqz	a0,18054 <signal+0x66>
   18048:	0007a023          	sw	zero,0(a5)
   1804c:	0791                	c.addi	a5,4
   1804e:	fef71de3          	bne	a4,a5,18048 <signal+0x5a>
   18052:	bf6d                	c.j	1800c <signal+0x1e>
   18054:	4422                	c.lwsp	s0,8(sp)
   18056:	4492                	c.lwsp	s1,4(sp)
   18058:	557d                	c.li	a0,-1
   1805a:	bfc1                	c.j	1802a <signal+0x3c>

0001805c <_init_signal>:
   1805c:	1141                	c.addi	sp,-16
   1805e:	c422                	c.swsp	s0,8(sp)
   18060:	f141a403          	lw	s0,-236(gp) # 1b724 <_impure_ptr>
   18064:	c606                	c.swsp	ra,12(sp)
   18066:	11842783          	lw	a5,280(s0)
   1806a:	c791                	c.beqz	a5,18076 <_init_signal+0x1a>
   1806c:	4501                	c.li	a0,0
   1806e:	40b2                	c.lwsp	ra,12(sp)
   18070:	4422                	c.lwsp	s0,8(sp)
   18072:	0141                	c.addi	sp,16
   18074:	8082                	c.jr	ra
   18076:	08000593          	addi	a1,zero,128
   1807a:	8522                	c.mv	a0,s0
   1807c:	b61f80ef          	jal	ra,10bdc <_malloc_r>
   18080:	10a42c23          	sw	a0,280(s0)
   18084:	c909                	c.beqz	a0,18096 <_init_signal+0x3a>
   18086:	08050793          	addi	a5,a0,128
   1808a:	00052023          	sw	zero,0(a0)
   1808e:	0511                	c.addi	a0,4
   18090:	fef51de3          	bne	a0,a5,1808a <_init_signal+0x2e>
   18094:	bfe1                	c.j	1806c <_init_signal+0x10>
   18096:	557d                	c.li	a0,-1
   18098:	bfd9                	c.j	1806e <_init_signal+0x12>

0001809a <__sigtramp>:
   1809a:	1141                	c.addi	sp,-16
   1809c:	c226                	c.swsp	s1,4(sp)
   1809e:	c606                	c.swsp	ra,12(sp)
   180a0:	47fd                	c.li	a5,31
   180a2:	f141a483          	lw	s1,-236(gp) # 1b724 <_impure_ptr>
   180a6:	06a7ee63          	bltu	a5,a0,18122 <__sigtramp+0x88>
   180aa:	1184a783          	lw	a5,280(s1)
   180ae:	c422                	c.swsp	s0,8(sp)
   180b0:	842a                	c.mv	s0,a0
   180b2:	c7a9                	c.beqz	a5,180fc <__sigtramp+0x62>
   180b4:	00241713          	slli	a4,s0,0x2
   180b8:	97ba                	c.add	a5,a4
   180ba:	4398                	c.lw	a4,0(a5)
   180bc:	c30d                	c.beqz	a4,180de <__sigtramp+0x44>
   180be:	56fd                	c.li	a3,-1
   180c0:	02d70b63          	beq	a4,a3,180f6 <__sigtramp+0x5c>
   180c4:	4685                	c.li	a3,1
   180c6:	02d70263          	beq	a4,a3,180ea <__sigtramp+0x50>
   180ca:	8522                	c.mv	a0,s0
   180cc:	0007a023          	sw	zero,0(a5)
   180d0:	9702                	c.jalr	a4
   180d2:	4422                	c.lwsp	s0,8(sp)
   180d4:	4501                	c.li	a0,0
   180d6:	40b2                	c.lwsp	ra,12(sp)
   180d8:	4492                	c.lwsp	s1,4(sp)
   180da:	0141                	c.addi	sp,16
   180dc:	8082                	c.jr	ra
   180de:	4422                	c.lwsp	s0,8(sp)
   180e0:	40b2                	c.lwsp	ra,12(sp)
   180e2:	4492                	c.lwsp	s1,4(sp)
   180e4:	4505                	c.li	a0,1
   180e6:	0141                	c.addi	sp,16
   180e8:	8082                	c.jr	ra
   180ea:	4422                	c.lwsp	s0,8(sp)
   180ec:	40b2                	c.lwsp	ra,12(sp)
   180ee:	4492                	c.lwsp	s1,4(sp)
   180f0:	450d                	c.li	a0,3
   180f2:	0141                	c.addi	sp,16
   180f4:	8082                	c.jr	ra
   180f6:	4422                	c.lwsp	s0,8(sp)
   180f8:	4509                	c.li	a0,2
   180fa:	bff1                	c.j	180d6 <__sigtramp+0x3c>
   180fc:	08000593          	addi	a1,zero,128
   18100:	8526                	c.mv	a0,s1
   18102:	adbf80ef          	jal	ra,10bdc <_malloc_r>
   18106:	10a4ac23          	sw	a0,280(s1)
   1810a:	87aa                	c.mv	a5,a0
   1810c:	c911                	c.beqz	a0,18120 <__sigtramp+0x86>
   1810e:	872a                	c.mv	a4,a0
   18110:	08050693          	addi	a3,a0,128
   18114:	00072023          	sw	zero,0(a4)
   18118:	0711                	c.addi	a4,4
   1811a:	fee69de3          	bne	a3,a4,18114 <__sigtramp+0x7a>
   1811e:	bf59                	c.j	180b4 <__sigtramp+0x1a>
   18120:	4422                	c.lwsp	s0,8(sp)
   18122:	557d                	c.li	a0,-1
   18124:	bf4d                	c.j	180d6 <__sigtramp+0x3c>

00018126 <_kill_r>:
   18126:	1141                	c.addi	sp,-16
   18128:	872e                	c.mv	a4,a1
   1812a:	c422                	c.swsp	s0,8(sp)
   1812c:	c226                	c.swsp	s1,4(sp)
   1812e:	85b2                	c.mv	a1,a2
   18130:	842a                	c.mv	s0,a0
   18132:	853a                	c.mv	a0,a4
   18134:	c606                	c.swsp	ra,12(sp)
   18136:	f201a223          	sw	zero,-220(gp) # 1b734 <errno>
   1813a:	28d9                	c.jal	18210 <_kill>
   1813c:	57fd                	c.li	a5,-1
   1813e:	00f50763          	beq	a0,a5,1814c <_kill_r+0x26>
   18142:	40b2                	c.lwsp	ra,12(sp)
   18144:	4422                	c.lwsp	s0,8(sp)
   18146:	4492                	c.lwsp	s1,4(sp)
   18148:	0141                	c.addi	sp,16
   1814a:	8082                	c.jr	ra
   1814c:	f241a783          	lw	a5,-220(gp) # 1b734 <errno>
   18150:	dbed                	c.beqz	a5,18142 <_kill_r+0x1c>
   18152:	40b2                	c.lwsp	ra,12(sp)
   18154:	c01c                	c.sw	a5,0(s0)
   18156:	4422                	c.lwsp	s0,8(sp)
   18158:	4492                	c.lwsp	s1,4(sp)
   1815a:	0141                	c.addi	sp,16
   1815c:	8082                	c.jr	ra

0001815e <_getpid_r>:
   1815e:	a069                	c.j	181e8 <_getpid>

00018160 <_close>:
   18160:	1141                	c.addi	sp,-16
   18162:	c606                	c.swsp	ra,12(sp)
   18164:	c422                	c.swsp	s0,8(sp)
   18166:	03900893          	addi	a7,zero,57
   1816a:	00000073          	ecall
   1816e:	842a                	c.mv	s0,a0
   18170:	00054763          	blt	a0,zero,1817e <_close+0x1e>
   18174:	40b2                	c.lwsp	ra,12(sp)
   18176:	8522                	c.mv	a0,s0
   18178:	4422                	c.lwsp	s0,8(sp)
   1817a:	0141                	c.addi	sp,16
   1817c:	8082                	c.jr	ra
   1817e:	40800433          	sub	s0,zero,s0
   18182:	c59ff0ef          	jal	ra,17dda <__errno>
   18186:	c100                	c.sw	s0,0(a0)
   18188:	547d                	c.li	s0,-1
   1818a:	b7ed                	c.j	18174 <_close+0x14>

0001818c <_exit>:
   1818c:	05d00893          	addi	a7,zero,93
   18190:	00000073          	ecall
   18194:	00054363          	blt	a0,zero,1819a <_exit+0xe>
   18198:	a001                	c.j	18198 <_exit+0xc>
   1819a:	1141                	c.addi	sp,-16
   1819c:	c422                	c.swsp	s0,8(sp)
   1819e:	842a                	c.mv	s0,a0
   181a0:	c606                	c.swsp	ra,12(sp)
   181a2:	40800433          	sub	s0,zero,s0
   181a6:	c35ff0ef          	jal	ra,17dda <__errno>
   181aa:	c100                	c.sw	s0,0(a0)
   181ac:	a001                	c.j	181ac <_exit+0x20>

000181ae <_fstat>:
   181ae:	7175                	c.addi16sp	sp,-144
   181b0:	c326                	c.swsp	s1,132(sp)
   181b2:	c706                	c.swsp	ra,140(sp)
   181b4:	84ae                	c.mv	s1,a1
   181b6:	c522                	c.swsp	s0,136(sp)
   181b8:	858a                	c.mv	a1,sp
   181ba:	05000893          	addi	a7,zero,80
   181be:	00000073          	ecall
   181c2:	842a                	c.mv	s0,a0
   181c4:	00054b63          	blt	a0,zero,181da <_fstat+0x2c>
   181c8:	8526                	c.mv	a0,s1
   181ca:	858a                	c.mv	a1,sp
   181cc:	2a05                	c.jal	182fc <_conv_stat>
   181ce:	40ba                	c.lwsp	ra,140(sp)
   181d0:	8522                	c.mv	a0,s0
   181d2:	442a                	c.lwsp	s0,136(sp)
   181d4:	449a                	c.lwsp	s1,132(sp)
   181d6:	6149                	c.addi16sp	sp,144
   181d8:	8082                	c.jr	ra
   181da:	40800433          	sub	s0,zero,s0
   181de:	bfdff0ef          	jal	ra,17dda <__errno>
   181e2:	c100                	c.sw	s0,0(a0)
   181e4:	547d                	c.li	s0,-1
   181e6:	b7cd                	c.j	181c8 <_fstat+0x1a>

000181e8 <_getpid>:
   181e8:	4505                	c.li	a0,1
   181ea:	8082                	c.jr	ra

000181ec <_isatty>:
   181ec:	7159                	c.addi16sp	sp,-112
   181ee:	002c                	c.addi4spn	a1,sp,8
   181f0:	d686                	c.swsp	ra,108(sp)
   181f2:	fbdff0ef          	jal	ra,181ae <_fstat>
   181f6:	57fd                	c.li	a5,-1
   181f8:	00f50863          	beq	a0,a5,18208 <_isatty+0x1c>
   181fc:	4532                	c.lwsp	a0,12(sp)
   181fe:	50b6                	c.lwsp	ra,108(sp)
   18200:	8135                	c.srli	a0,0xd
   18202:	8905                	c.andi	a0,1
   18204:	6165                	c.addi16sp	sp,112
   18206:	8082                	c.jr	ra
   18208:	50b6                	c.lwsp	ra,108(sp)
   1820a:	4501                	c.li	a0,0
   1820c:	6165                	c.addi16sp	sp,112
   1820e:	8082                	c.jr	ra

00018210 <_kill>:
   18210:	1141                	c.addi	sp,-16
   18212:	c606                	c.swsp	ra,12(sp)
   18214:	bc7ff0ef          	jal	ra,17dda <__errno>
   18218:	40b2                	c.lwsp	ra,12(sp)
   1821a:	47d9                	c.li	a5,22
   1821c:	c11c                	c.sw	a5,0(a0)
   1821e:	557d                	c.li	a0,-1
   18220:	0141                	c.addi	sp,16
   18222:	8082                	c.jr	ra

00018224 <_lseek>:
   18224:	1141                	c.addi	sp,-16
   18226:	c606                	c.swsp	ra,12(sp)
   18228:	c422                	c.swsp	s0,8(sp)
   1822a:	03e00893          	addi	a7,zero,62
   1822e:	00000073          	ecall
   18232:	842a                	c.mv	s0,a0
   18234:	00054763          	blt	a0,zero,18242 <_lseek+0x1e>
   18238:	40b2                	c.lwsp	ra,12(sp)
   1823a:	8522                	c.mv	a0,s0
   1823c:	4422                	c.lwsp	s0,8(sp)
   1823e:	0141                	c.addi	sp,16
   18240:	8082                	c.jr	ra
   18242:	40800433          	sub	s0,zero,s0
   18246:	b95ff0ef          	jal	ra,17dda <__errno>
   1824a:	c100                	c.sw	s0,0(a0)
   1824c:	547d                	c.li	s0,-1
   1824e:	b7ed                	c.j	18238 <_lseek+0x14>

00018250 <_read>:
   18250:	1141                	c.addi	sp,-16
   18252:	c606                	c.swsp	ra,12(sp)
   18254:	c422                	c.swsp	s0,8(sp)
   18256:	03f00893          	addi	a7,zero,63
   1825a:	00000073          	ecall
   1825e:	842a                	c.mv	s0,a0
   18260:	00054763          	blt	a0,zero,1826e <_read+0x1e>
   18264:	40b2                	c.lwsp	ra,12(sp)
   18266:	8522                	c.mv	a0,s0
   18268:	4422                	c.lwsp	s0,8(sp)
   1826a:	0141                	c.addi	sp,16
   1826c:	8082                	c.jr	ra
   1826e:	40800433          	sub	s0,zero,s0
   18272:	b69ff0ef          	jal	ra,17dda <__errno>
   18276:	c100                	c.sw	s0,0(a0)
   18278:	547d                	c.li	s0,-1
   1827a:	b7ed                	c.j	18264 <_read+0x14>

0001827c <_sbrk>:
   1827c:	f3c1a703          	lw	a4,-196(gp) # 1b74c <heap_end.0>
   18280:	1141                	c.addi	sp,-16
   18282:	c606                	c.swsp	ra,12(sp)
   18284:	87aa                	c.mv	a5,a0
   18286:	ef01                	c.bnez	a4,1829e <_sbrk+0x22>
   18288:	0d600893          	addi	a7,zero,214
   1828c:	4501                	c.li	a0,0
   1828e:	00000073          	ecall
   18292:	567d                	c.li	a2,-1
   18294:	872a                	c.mv	a4,a0
   18296:	02c50563          	beq	a0,a2,182c0 <_sbrk+0x44>
   1829a:	f2a1ae23          	sw	a0,-196(gp) # 1b74c <heap_end.0>
   1829e:	00e78533          	add	a0,a5,a4
   182a2:	0d600893          	addi	a7,zero,214
   182a6:	00000073          	ecall
   182aa:	f3c1a703          	lw	a4,-196(gp) # 1b74c <heap_end.0>
   182ae:	97ba                	c.add	a5,a4
   182b0:	00f51863          	bne	a0,a5,182c0 <_sbrk+0x44>
   182b4:	40b2                	c.lwsp	ra,12(sp)
   182b6:	f2a1ae23          	sw	a0,-196(gp) # 1b74c <heap_end.0>
   182ba:	853a                	c.mv	a0,a4
   182bc:	0141                	c.addi	sp,16
   182be:	8082                	c.jr	ra
   182c0:	b1bff0ef          	jal	ra,17dda <__errno>
   182c4:	40b2                	c.lwsp	ra,12(sp)
   182c6:	47b1                	c.li	a5,12
   182c8:	c11c                	c.sw	a5,0(a0)
   182ca:	557d                	c.li	a0,-1
   182cc:	0141                	c.addi	sp,16
   182ce:	8082                	c.jr	ra

000182d0 <_write>:
   182d0:	1141                	c.addi	sp,-16
   182d2:	c606                	c.swsp	ra,12(sp)
   182d4:	c422                	c.swsp	s0,8(sp)
   182d6:	04000893          	addi	a7,zero,64
   182da:	00000073          	ecall
   182de:	842a                	c.mv	s0,a0
   182e0:	00054763          	blt	a0,zero,182ee <_write+0x1e>
   182e4:	40b2                	c.lwsp	ra,12(sp)
   182e6:	8522                	c.mv	a0,s0
   182e8:	4422                	c.lwsp	s0,8(sp)
   182ea:	0141                	c.addi	sp,16
   182ec:	8082                	c.jr	ra
   182ee:	40800433          	sub	s0,zero,s0
   182f2:	ae9ff0ef          	jal	ra,17dda <__errno>
   182f6:	c100                	c.sw	s0,0(a0)
   182f8:	547d                	c.li	s0,-1
   182fa:	b7ed                	c.j	182e4 <_write+0x14>

000182fc <_conv_stat>:
   182fc:	1141                	c.addi	sp,-16
   182fe:	419c                	c.lw	a5,0(a1)
   18300:	0145a383          	lw	t2,20(a1)
   18304:	0185a283          	lw	t0,24(a1)
   18308:	01c5af83          	lw	t6,28(a1)
   1830c:	0205af03          	lw	t5,32(a1)
   18310:	0305ae83          	lw	t4,48(a1)
   18314:	0405ae03          	lw	t3,64(a1)
   18318:	0385a303          	lw	t1,56(a1)
   1831c:	0485a803          	lw	a6,72(a1)
   18320:	04c5a883          	lw	a7,76(a1)
   18324:	4db0                	c.lw	a2,88(a1)
   18326:	c622                	c.swsp	s0,12(sp)
   18328:	c426                	c.swsp	s1,8(sp)
   1832a:	4980                	c.lw	s0,16(a1)
   1832c:	4584                	c.lw	s1,8(a1)
   1832e:	4df4                	c.lw	a3,92(a1)
   18330:	55b8                	c.lw	a4,104(a1)
   18332:	00f51023          	sh	a5,0(a0)
   18336:	55fc                	c.lw	a5,108(a1)
   18338:	00951123          	sh	s1,2(a0)
   1833c:	c140                	c.sw	s0,4(a0)
   1833e:	00751423          	sh	t2,8(a0)
   18342:	00551523          	sh	t0,10(a0)
   18346:	01f51623          	sh	t6,12(a0)
   1834a:	01e51723          	sh	t5,14(a0)
   1834e:	01d52823          	sw	t4,16(a0)
   18352:	05c52623          	sw	t3,76(a0)
   18356:	04652423          	sw	t1,72(a0)
   1835a:	01052c23          	sw	a6,24(a0)
   1835e:	01152e23          	sw	a7,28(a0)
   18362:	d510                	c.sw	a2,40(a0)
   18364:	d554                	c.sw	a3,44(a0)
   18366:	4432                	c.lwsp	s0,12(sp)
   18368:	dd18                	c.sw	a4,56(a0)
   1836a:	dd5c                	c.sw	a5,60(a0)
   1836c:	44a2                	c.lwsp	s1,8(sp)
   1836e:	0141                	c.addi	sp,16
   18370:	8082                	c.jr	ra

00018372 <__eqtf2>:
   18372:	411c                	c.lw	a5,0(a0)
   18374:	00452e03          	lw	t3,4(a0)
   18378:	00852e83          	lw	t4,8(a0)
   1837c:	4554                	c.lw	a3,12(a0)
   1837e:	4198                	c.lw	a4,0(a1)
   18380:	0045af83          	lw	t6,4(a1)
   18384:	0085af03          	lw	t5,8(a1)
   18388:	00c5a883          	lw	a7,12(a1)
   1838c:	1141                	c.addi	sp,-16
   1838e:	00202673          	csrrs	a2,frm,zero
   18392:	6521                	c.lui	a0,0x8
   18394:	0106d613          	srli	a2,a3,0x10
   18398:	157d                	c.addi	a0,-1 # 7fff <exit-0x80b5>
   1839a:	01069313          	slli	t1,a3,0x10
   1839e:	01089593          	slli	a1,a7,0x10
   183a2:	01f6d813          	srli	a6,a3,0x1f
   183a6:	8e69                	c.and	a2,a0
   183a8:	0108d693          	srli	a3,a7,0x10
   183ac:	01035313          	srli	t1,t1,0x10
   183b0:	81c1                	c.srli	a1,0x10
   183b2:	8ee9                	c.and	a3,a0
   183b4:	01f8d893          	srli	a7,a7,0x1f
   183b8:	00a61c63          	bne	a2,a0,183d0 <__eqtf2+0x5e>
   183bc:	01c7e533          	or	a0,a5,t3
   183c0:	01d56533          	or	a0,a0,t4
   183c4:	00656533          	or	a0,a0,t1
   183c8:	e51d                	c.bnez	a0,183f6 <__eqtf2+0x84>
   183ca:	04c69e63          	bne	a3,a2,18426 <__eqtf2+0xb4>
   183ce:	a019                	c.j	183d4 <__eqtf2+0x62>
   183d0:	04a69d63          	bne	a3,a0,1842a <__eqtf2+0xb8>
   183d4:	01f76533          	or	a0,a4,t6
   183d8:	01e56533          	or	a0,a0,t5
   183dc:	8d4d                	c.or	a0,a1
   183de:	c531                	c.beqz	a0,1842a <__eqtf2+0xb8>
   183e0:	6521                	c.lui	a0,0x8
   183e2:	157d                	c.addi	a0,-1 # 7fff <exit-0x80b5>
   183e4:	02a61a63          	bne	a2,a0,18418 <__eqtf2+0xa6>
   183e8:	01c7e7b3          	or	a5,a5,t3
   183ec:	01d7e7b3          	or	a5,a5,t4
   183f0:	0067e7b3          	or	a5,a5,t1
   183f4:	cb99                	c.beqz	a5,1840a <__eqtf2+0x98>
   183f6:	0342                	c.slli	t1,0x10
   183f8:	41035313          	srai	t1,t1,0x10
   183fc:	02035363          	bge	t1,zero,18422 <__eqtf2+0xb0>
   18400:	67a1                	c.lui	a5,0x8
   18402:	17fd                	c.addi	a5,-1 # 7fff <exit-0x80b5>
   18404:	4505                	c.li	a0,1
   18406:	04f69863          	bne	a3,a5,18456 <__eqtf2+0xe4>
   1840a:	01f76733          	or	a4,a4,t6
   1840e:	01e76733          	or	a4,a4,t5
   18412:	8f4d                	c.or	a4,a1
   18414:	4505                	c.li	a0,1
   18416:	c321                	c.beqz	a4,18456 <__eqtf2+0xe4>
   18418:	05c2                	c.slli	a1,0x10
   1841a:	85c1                	c.srai	a1,0x10
   1841c:	4505                	c.li	a0,1
   1841e:	0205cc63          	blt	a1,zero,18456 <__eqtf2+0xe4>
   18422:	00186073          	csrrsi	zero,fflags,16
   18426:	4505                	c.li	a0,1
   18428:	a03d                	c.j	18456 <__eqtf2+0xe4>
   1842a:	4505                	c.li	a0,1
   1842c:	02c69563          	bne	a3,a2,18456 <__eqtf2+0xe4>
   18430:	02e79363          	bne	a5,a4,18456 <__eqtf2+0xe4>
   18434:	03fe1163          	bne	t3,t6,18456 <__eqtf2+0xe4>
   18438:	01ee9f63          	bne	t4,t5,18456 <__eqtf2+0xe4>
   1843c:	00b31d63          	bne	t1,a1,18456 <__eqtf2+0xe4>
   18440:	01180d63          	beq	a6,a7,1845a <__eqtf2+0xe8>
   18444:	ea89                	c.bnez	a3,18456 <__eqtf2+0xe4>
   18446:	01c7e533          	or	a0,a5,t3
   1844a:	01d56533          	or	a0,a0,t4
   1844e:	00656533          	or	a0,a0,t1
   18452:	00a03533          	sltu	a0,zero,a0
   18456:	0141                	c.addi	sp,16
   18458:	8082                	c.jr	ra
   1845a:	4501                	c.li	a0,0
   1845c:	bfed                	c.j	18456 <__eqtf2+0xe4>

0001845e <__getf2>:
   1845e:	00052883          	lw	a7,0(a0)
   18462:	00452303          	lw	t1,4(a0)
   18466:	00852e03          	lw	t3,8(a0)
   1846a:	455c                	c.lw	a5,12(a0)
   1846c:	0005ae83          	lw	t4,0(a1)
   18470:	0045af03          	lw	t5,4(a1)
   18474:	0085af83          	lw	t6,8(a1)
   18478:	45d4                	c.lw	a3,12(a1)
   1847a:	1141                	c.addi	sp,-16
   1847c:	00202773          	csrrs	a4,frm,zero
   18480:	6721                	c.lui	a4,0x8
   18482:	0107d613          	srli	a2,a5,0x10
   18486:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   18488:	01079813          	slli	a6,a5,0x10
   1848c:	01069293          	slli	t0,a3,0x10
   18490:	0106d513          	srli	a0,a3,0x10
   18494:	8e79                	c.and	a2,a4
   18496:	01085813          	srli	a6,a6,0x10
   1849a:	83fd                	c.srli	a5,0x1f
   1849c:	0102d293          	srli	t0,t0,0x10
   184a0:	8d79                	c.and	a0,a4
   184a2:	82fd                	c.srli	a3,0x1f
   184a4:	00e61963          	bne	a2,a4,184b6 <__getf2+0x58>
   184a8:	0068e733          	or	a4,a7,t1
   184ac:	01c76733          	or	a4,a4,t3
   184b0:	01076733          	or	a4,a4,a6
   184b4:	ef2d                	c.bnez	a4,1852e <__getf2+0xd0>
   184b6:	6721                	c.lui	a4,0x8
   184b8:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   184ba:	00e51963          	bne	a0,a4,184cc <__getf2+0x6e>
   184be:	01df6733          	or	a4,t5,t4
   184c2:	01f76733          	or	a4,a4,t6
   184c6:	00576733          	or	a4,a4,t0
   184ca:	e335                	c.bnez	a4,1852e <__getf2+0xd0>
   184cc:	4701                	c.li	a4,0
   184ce:	ea09                	c.bnez	a2,184e0 <__getf2+0x82>
   184d0:	0068e733          	or	a4,a7,t1
   184d4:	01c76733          	or	a4,a4,t3
   184d8:	01076733          	or	a4,a4,a6
   184dc:	00173713          	sltiu	a4,a4,1
   184e0:	e939                	c.bnez	a0,18536 <__getf2+0xd8>
   184e2:	01df65b3          	or	a1,t5,t4
   184e6:	01f5e5b3          	or	a1,a1,t6
   184ea:	0055e5b3          	or	a1,a1,t0
   184ee:	c711                	c.beqz	a4,184fa <__getf2+0x9c>
   184f0:	cda1                	c.beqz	a1,18548 <__getf2+0xea>
   184f2:	00169513          	slli	a0,a3,0x1
   184f6:	157d                	c.addi	a0,-1
   184f8:	a881                	c.j	18548 <__getf2+0xea>
   184fa:	ed9d                	c.bnez	a1,18538 <__getf2+0xda>
   184fc:	40f00533          	sub	a0,zero,a5
   18500:	a091                	c.j	18544 <__getf2+0xe6>
   18502:	fea648e3          	blt	a2,a0,184f2 <__getf2+0x94>
   18506:	ff02ebe3          	bltu	t0,a6,184fc <__getf2+0x9e>
   1850a:	00581f63          	bne	a6,t0,18528 <__getf2+0xca>
   1850e:	ffcfe7e3          	bltu	t6,t3,184fc <__getf2+0x9e>
   18512:	01cf9b63          	bne	t6,t3,18528 <__getf2+0xca>
   18516:	fe6f63e3          	bltu	t5,t1,184fc <__getf2+0x9e>
   1851a:	01e31763          	bne	t1,t5,18528 <__getf2+0xca>
   1851e:	fd1eefe3          	bltu	t4,a7,184fc <__getf2+0x9e>
   18522:	4501                	c.li	a0,0
   18524:	03d8f263          	bgeu	a7,t4,18548 <__getf2+0xea>
   18528:	00179513          	slli	a0,a5,0x1
   1852c:	b7e9                	c.j	184f6 <__getf2+0x98>
   1852e:	00186073          	csrrsi	zero,fflags,16
   18532:	5579                	c.li	a0,-2
   18534:	a811                	c.j	18548 <__getf2+0xea>
   18536:	ff55                	c.bnez	a4,184f2 <__getf2+0x94>
   18538:	fcf692e3          	bne	a3,a5,184fc <__getf2+0x9e>
   1853c:	fcc553e3          	bge	a0,a2,18502 <__getf2+0xa4>
   18540:	40d00533          	sub	a0,zero,a3
   18544:	00156513          	ori	a0,a0,1
   18548:	0141                	c.addi	sp,16
   1854a:	8082                	c.jr	ra

0001854c <__letf2>:
   1854c:	00052883          	lw	a7,0(a0)
   18550:	00452303          	lw	t1,4(a0)
   18554:	00852e03          	lw	t3,8(a0)
   18558:	455c                	c.lw	a5,12(a0)
   1855a:	0005ae83          	lw	t4,0(a1)
   1855e:	0045af03          	lw	t5,4(a1)
   18562:	0085af83          	lw	t6,8(a1)
   18566:	45d4                	c.lw	a3,12(a1)
   18568:	1141                	c.addi	sp,-16
   1856a:	00202773          	csrrs	a4,frm,zero
   1856e:	6721                	c.lui	a4,0x8
   18570:	0107d613          	srli	a2,a5,0x10
   18574:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   18576:	01079813          	slli	a6,a5,0x10
   1857a:	01069293          	slli	t0,a3,0x10
   1857e:	0106d513          	srli	a0,a3,0x10
   18582:	8e79                	c.and	a2,a4
   18584:	01085813          	srli	a6,a6,0x10
   18588:	83fd                	c.srli	a5,0x1f
   1858a:	0102d293          	srli	t0,t0,0x10
   1858e:	8d79                	c.and	a0,a4
   18590:	82fd                	c.srli	a3,0x1f
   18592:	00e61963          	bne	a2,a4,185a4 <__letf2+0x58>
   18596:	0068e733          	or	a4,a7,t1
   1859a:	01c76733          	or	a4,a4,t3
   1859e:	01076733          	or	a4,a4,a6
   185a2:	ef2d                	c.bnez	a4,1861c <__letf2+0xd0>
   185a4:	6721                	c.lui	a4,0x8
   185a6:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   185a8:	00e51963          	bne	a0,a4,185ba <__letf2+0x6e>
   185ac:	01df6733          	or	a4,t5,t4
   185b0:	01f76733          	or	a4,a4,t6
   185b4:	00576733          	or	a4,a4,t0
   185b8:	e335                	c.bnez	a4,1861c <__letf2+0xd0>
   185ba:	4701                	c.li	a4,0
   185bc:	ea09                	c.bnez	a2,185ce <__letf2+0x82>
   185be:	0068e733          	or	a4,a7,t1
   185c2:	01c76733          	or	a4,a4,t3
   185c6:	01076733          	or	a4,a4,a6
   185ca:	00173713          	sltiu	a4,a4,1
   185ce:	e939                	c.bnez	a0,18624 <__letf2+0xd8>
   185d0:	01df65b3          	or	a1,t5,t4
   185d4:	01f5e5b3          	or	a1,a1,t6
   185d8:	0055e5b3          	or	a1,a1,t0
   185dc:	c711                	c.beqz	a4,185e8 <__letf2+0x9c>
   185de:	cda1                	c.beqz	a1,18636 <__letf2+0xea>
   185e0:	00169513          	slli	a0,a3,0x1
   185e4:	157d                	c.addi	a0,-1
   185e6:	a881                	c.j	18636 <__letf2+0xea>
   185e8:	ed9d                	c.bnez	a1,18626 <__letf2+0xda>
   185ea:	40f00533          	sub	a0,zero,a5
   185ee:	a091                	c.j	18632 <__letf2+0xe6>
   185f0:	fea648e3          	blt	a2,a0,185e0 <__letf2+0x94>
   185f4:	ff02ebe3          	bltu	t0,a6,185ea <__letf2+0x9e>
   185f8:	00581f63          	bne	a6,t0,18616 <__letf2+0xca>
   185fc:	ffcfe7e3          	bltu	t6,t3,185ea <__letf2+0x9e>
   18600:	01cf9b63          	bne	t6,t3,18616 <__letf2+0xca>
   18604:	fe6f63e3          	bltu	t5,t1,185ea <__letf2+0x9e>
   18608:	01e31763          	bne	t1,t5,18616 <__letf2+0xca>
   1860c:	fd1eefe3          	bltu	t4,a7,185ea <__letf2+0x9e>
   18610:	4501                	c.li	a0,0
   18612:	03d8f263          	bgeu	a7,t4,18636 <__letf2+0xea>
   18616:	00179513          	slli	a0,a5,0x1
   1861a:	b7e9                	c.j	185e4 <__letf2+0x98>
   1861c:	00186073          	csrrsi	zero,fflags,16
   18620:	4509                	c.li	a0,2
   18622:	a811                	c.j	18636 <__letf2+0xea>
   18624:	ff55                	c.bnez	a4,185e0 <__letf2+0x94>
   18626:	fcf692e3          	bne	a3,a5,185ea <__letf2+0x9e>
   1862a:	fcc553e3          	bge	a0,a2,185f0 <__letf2+0xa4>
   1862e:	40d00533          	sub	a0,zero,a3
   18632:	00156513          	ori	a0,a0,1
   18636:	0141                	c.addi	sp,16
   18638:	8082                	c.jr	ra

0001863a <__multf3>:
   1863a:	7131                	c.addi16sp	sp,-192
   1863c:	d94a                	c.swsp	s2,176(sp)
   1863e:	d15a                	c.swsp	s6,160(sp)
   18640:	cf5e                	c.swsp	s7,156(sp)
   18642:	cd62                	c.swsp	s8,152(sp)
   18644:	c76e                	c.swsp	s11,140(sp)
   18646:	41dc                	c.lw	a5,4(a1)
   18648:	8daa                	c.mv	s11,a0
   1864a:	4594                	c.lw	a3,8(a1)
   1864c:	4188                	c.lw	a0,0(a1)
   1864e:	00c5a803          	lw	a6,12(a1)
   18652:	00062b83          	lw	s7,0(a2)
   18656:	00462b03          	lw	s6,4(a2)
   1865a:	00862c03          	lw	s8,8(a2)
   1865e:	00c62903          	lw	s2,12(a2)
   18662:	df06                	c.swsp	ra,188(sp)
   18664:	dd22                	c.swsp	s0,184(sp)
   18666:	db26                	c.swsp	s1,180(sp)
   18668:	d74e                	c.swsp	s3,172(sp)
   1866a:	d552                	c.swsp	s4,168(sp)
   1866c:	d356                	c.swsp	s5,164(sp)
   1866e:	cb66                	c.swsp	s9,148(sp)
   18670:	c96a                	c.swsp	s10,144(sp)
   18672:	002024f3          	csrrs	s1,frm,zero
   18676:	6721                	c.lui	a4,0x8
   18678:	01081413          	slli	s0,a6,0x10
   1867c:	8041                	c.srli	s0,0x10
   1867e:	01085a93          	srli	s5,a6,0x10
   18682:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   18684:	d0aa                	c.swsp	a0,96(sp)
   18686:	d2be                	c.swsp	a5,100(sp)
   18688:	d4b6                	c.swsp	a3,104(sp)
   1868a:	d6c2                	c.swsp	a6,108(sp)
   1868c:	d82a                	c.swsp	a0,48(sp)
   1868e:	da3e                	c.swsp	a5,52(sp)
   18690:	dc36                	c.swsp	a3,56(sp)
   18692:	de22                	c.swsp	s0,60(sp)
   18694:	00eafab3          	and	s5,s5,a4
   18698:	01f85a13          	srli	s4,a6,0x1f
   1869c:	020a8a63          	beq	s5,zero,186d0 <__multf3+0x96>
   186a0:	10ea8163          	beq	s5,a4,187a2 <__multf3+0x168>
   186a4:	67c1                	c.lui	a5,0x10
   186a6:	8c5d                	c.or	s0,a5
   186a8:	de22                	c.swsp	s0,60(sp)
   186aa:	181c                	c.addi4spn	a5,sp,48
   186ac:	1050                	c.addi4spn	a2,sp,36
   186ae:	47d8                	c.lw	a4,12(a5)
   186b0:	4794                	c.lw	a3,8(a5)
   186b2:	17f1                	c.addi	a5,-4 # fffc <exit-0xb8>
   186b4:	070e                	c.slli	a4,0x3
   186b6:	82f5                	c.srli	a3,0x1d
   186b8:	8f55                	c.or	a4,a3
   186ba:	cb98                	c.sw	a4,16(a5)
   186bc:	fef619e3          	bne	a2,a5,186ae <__multf3+0x74>
   186c0:	77f1                	c.lui	a5,0xffffc
   186c2:	050e                	c.slli	a0,0x3
   186c4:	0785                	c.addi	a5,1 # ffffc001 <__BSS_END__+0xfffe05a5>
   186c6:	d82a                	c.swsp	a0,48(sp)
   186c8:	9abe                	c.add	s5,a5
   186ca:	4981                	c.li	s3,0
   186cc:	4401                	c.li	s0,0
   186ce:	a0f5                	c.j	187ba <__multf3+0x180>
   186d0:	00a7e733          	or	a4,a5,a0
   186d4:	8f55                	c.or	a4,a3
   186d6:	8f41                	c.or	a4,s0
   186d8:	6e070863          	beq	a4,zero,18dc8 <__multf3+0x78e>
   186dc:	c421                	c.beqz	s0,18724 <__multf3+0xea>
   186de:	8522                	c.mv	a0,s0
   186e0:	000020ef          	jal	ra,1a6e0 <__clzsi2>
   186e4:	ff450613          	addi	a2,a0,-12
   186e8:	40565693          	srai	a3,a2,0x5
   186ec:	8a7d                	c.andi	a2,31
   186ee:	57f1                	c.li	a5,-4
   186f0:	ce29                	c.beqz	a2,1874a <__multf3+0x110>
   186f2:	02f687b3          	mul	a5,a3,a5
   186f6:	02000893          	addi	a7,zero,32
   186fa:	180c                	c.addi4spn	a1,sp,48
   186fc:	40c888b3          	sub	a7,a7,a2
   18700:	00c78713          	addi	a4,a5,12
   18704:	972e                	c.add	a4,a1
   18706:	40f007b3          	sub	a5,zero,a5
   1870a:	04e59f63          	bne	a1,a4,18768 <__multf3+0x12e>
   1870e:	5742                	c.lwsp	a4,48(sp)
   18710:	fff68793          	addi	a5,a3,-1
   18714:	068a                	c.slli	a3,0x2
   18716:	95b6                	c.add	a1,a3
   18718:	00c71733          	sll	a4,a4,a2
   1871c:	c198                	c.sw	a4,0(a1)
   1871e:	56fd                	c.li	a3,-1
   18720:	1810                	c.addi4spn	a2,sp,48
   18722:	a88d                	c.j	18794 <__multf3+0x15a>
   18724:	c699                	c.beqz	a3,18732 <__multf3+0xf8>
   18726:	8536                	c.mv	a0,a3
   18728:	7b9010ef          	jal	ra,1a6e0 <__clzsi2>
   1872c:	02050513          	addi	a0,a0,32
   18730:	bf55                	c.j	186e4 <__multf3+0xaa>
   18732:	c799                	c.beqz	a5,18740 <__multf3+0x106>
   18734:	853e                	c.mv	a0,a5
   18736:	7ab010ef          	jal	ra,1a6e0 <__clzsi2>
   1873a:	04050513          	addi	a0,a0,64
   1873e:	b75d                	c.j	186e4 <__multf3+0xaa>
   18740:	7a1010ef          	jal	ra,1a6e0 <__clzsi2>
   18744:	06050513          	addi	a0,a0,96
   18748:	bf71                	c.j	186e4 <__multf3+0xaa>
   1874a:	02f687b3          	mul	a5,a3,a5
   1874e:	1878                	c.addi4spn	a4,sp,60
   18750:	460d                	c.li	a2,3
   18752:	00f705b3          	add	a1,a4,a5
   18756:	418c                	c.lw	a1,0(a1)
   18758:	167d                	c.addi	a2,-1
   1875a:	1771                	c.addi	a4,-4
   1875c:	c34c                	c.sw	a1,4(a4)
   1875e:	fed65ae3          	bge	a2,a3,18752 <__multf3+0x118>
   18762:	fff68793          	addi	a5,a3,-1
   18766:	bf65                	c.j	1871e <__multf3+0xe4>
   18768:	00072803          	lw	a6,0(a4)
   1876c:	ffc72303          	lw	t1,-4(a4)
   18770:	00f70e33          	add	t3,a4,a5
   18774:	00c81833          	sll	a6,a6,a2
   18778:	01135333          	srl	t1,t1,a7
   1877c:	00686833          	or	a6,a6,t1
   18780:	010e2023          	sw	a6,0(t3)
   18784:	1771                	c.addi	a4,-4
   18786:	b751                	c.j	1870a <__multf3+0xd0>
   18788:	00279713          	slli	a4,a5,0x2
   1878c:	9732                	c.add	a4,a2
   1878e:	00072023          	sw	zero,0(a4)
   18792:	17fd                	c.addi	a5,-1
   18794:	fed79ae3          	bne	a5,a3,18788 <__multf3+0x14e>
   18798:	7af1                	c.lui	s5,0xffffc
   1879a:	0ac5                	c.addi	s5,17 # ffffc011 <__BSS_END__+0xfffe05b5>
   1879c:	40aa8ab3          	sub	s5,s5,a0
   187a0:	b72d                	c.j	186ca <__multf3+0x90>
   187a2:	8fc9                	c.or	a5,a0
   187a4:	8fd5                	c.or	a5,a3
   187a6:	8fc1                	c.or	a5,s0
   187a8:	62078363          	beq	a5,zero,18dce <__multf3+0x794>
   187ac:	0442                	c.slli	s0,0x10
   187ae:	8441                	c.srai	s0,0x10
   187b0:	fff44413          	xori	s0,s0,-1
   187b4:	807d                	c.srli	s0,0x1f
   187b6:	0412                	c.slli	s0,0x4
   187b8:	498d                	c.li	s3,3
   187ba:	01091513          	slli	a0,s2,0x10
   187be:	6721                	c.lui	a4,0x8
   187c0:	01095793          	srli	a5,s2,0x10
   187c4:	8141                	c.srli	a0,0x10
   187c6:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   187c8:	d6ca                	c.swsp	s2,108(sp)
   187ca:	d0de                	c.swsp	s7,96(sp)
   187cc:	d2da                	c.swsp	s6,100(sp)
   187ce:	d4e2                	c.swsp	s8,104(sp)
   187d0:	c0de                	c.swsp	s7,64(sp)
   187d2:	c2da                	c.swsp	s6,68(sp)
   187d4:	c4e2                	c.swsp	s8,72(sp)
   187d6:	c6aa                	c.swsp	a0,76(sp)
   187d8:	8ff9                	c.and	a5,a4
   187da:	01f95913          	srli	s2,s2,0x1f
   187de:	5e078a63          	beq	a5,zero,18dd2 <__multf3+0x798>
   187e2:	6ce78263          	beq	a5,a4,18ea6 <__multf3+0x86c>
   187e6:	6741                	c.lui	a4,0x10
   187e8:	8d59                	c.or	a0,a4
   187ea:	c6aa                	c.swsp	a0,76(sp)
   187ec:	0098                	c.addi4spn	a4,sp,64
   187ee:	184c                	c.addi4spn	a1,sp,52
   187f0:	4754                	c.lw	a3,12(a4)
   187f2:	4710                	c.lw	a2,8(a4)
   187f4:	1771                	c.addi	a4,-4 # fffc <exit-0xb8>
   187f6:	068e                	c.slli	a3,0x3
   187f8:	8275                	c.srli	a2,0x1d
   187fa:	8ed1                	c.or	a3,a2
   187fc:	cb14                	c.sw	a3,16(a4)
   187fe:	fee599e3          	bne	a1,a4,187f0 <__multf3+0x1b6>
   18802:	7771                	c.lui	a4,0xffffc
   18804:	0b8e                	c.slli	s7,0x3
   18806:	0705                	c.addi	a4,1 # ffffc001 <__BSS_END__+0xfffe05a5>
   18808:	c0de                	c.swsp	s7,64(sp)
   1880a:	97ba                	c.add	a5,a4
   1880c:	4701                	c.li	a4,0
   1880e:	97d6                	c.add	a5,s5
   18810:	cc3e                	c.swsp	a5,24(sp)
   18812:	0785                	c.addi	a5,1
   18814:	c63e                	c.swsp	a5,12(sp)
   18816:	00299793          	slli	a5,s3,0x2
   1881a:	8fd9                	c.or	a5,a4
   1881c:	46a9                	c.li	a3,10
   1881e:	6cf6cc63          	blt	a3,a5,18ef6 <__multf3+0x8bc>
   18822:	4609                	c.li	a2,2
   18824:	012a4833          	xor	a6,s4,s2
   18828:	4685                	c.li	a3,1
   1882a:	6af64163          	blt	a2,a5,18ecc <__multf3+0x892>
   1882e:	17fd                	c.addi	a5,-1
   18830:	6cf6fb63          	bgeu	a3,a5,18f06 <__multf3+0x8cc>
   18834:	5342                	c.lwsp	t1,48(sp)
   18836:	4f06                	c.lwsp	t5,64(sp)
   18838:	01035993          	srli	s3,t1,0x10
   1883c:	010f5793          	srli	a5,t5,0x10
   18840:	0342                	c.slli	t1,0x10
   18842:	0f42                	c.slli	t5,0x10
   18844:	01035313          	srli	t1,t1,0x10
   18848:	010f5f13          	srli	t5,t5,0x10
   1884c:	026f06b3          	mul	a3,t5,t1
   18850:	03e985b3          	mul	a1,s3,t5
   18854:	0106d713          	srli	a4,a3,0x10
   18858:	02678633          	mul	a2,a5,t1
   1885c:	962e                	c.add	a2,a1
   1885e:	9732                	c.add	a4,a2
   18860:	02f98c33          	mul	s8,s3,a5
   18864:	00b77463          	bgeu	a4,a1,1886c <__multf3+0x232>
   18868:	6641                	c.lui	a2,0x10
   1886a:	9c32                	c.add	s8,a2
   1886c:	4e96                	c.lwsp	t4,68(sp)
   1886e:	06c2                	c.slli	a3,0x10
   18870:	82c1                	c.srli	a3,0x10
   18872:	01075893          	srli	a7,a4,0x10
   18876:	0742                	c.slli	a4,0x10
   18878:	9736                	c.add	a4,a3
   1887a:	ce3a                	c.swsp	a4,28(sp)
   1887c:	d0ba                	c.swsp	a4,96(sp)
   1887e:	010ed713          	srli	a4,t4,0x10
   18882:	0ec2                	c.slli	t4,0x10
   18884:	010ede93          	srli	t4,t4,0x10
   18888:	026e86b3          	mul	a3,t4,t1
   1888c:	03d985b3          	mul	a1,s3,t4
   18890:	0106d293          	srli	t0,a3,0x10
   18894:	02670633          	mul	a2,a4,t1
   18898:	962e                	c.add	a2,a1
   1889a:	92b2                	c.add	t0,a2
   1889c:	02e98bb3          	mul	s7,s3,a4
   188a0:	00b2f463          	bgeu	t0,a1,188a8 <__multf3+0x26e>
   188a4:	6641                	c.lui	a2,0x10
   188a6:	9bb2                	c.add	s7,a2
   188a8:	5552                	c.lwsp	a0,52(sp)
   188aa:	06c2                	c.slli	a3,0x10
   188ac:	82c1                	c.srli	a3,0x10
   188ae:	01055913          	srli	s2,a0,0x10
   188b2:	0542                	c.slli	a0,0x10
   188b4:	8141                	c.srli	a0,0x10
   188b6:	0102df93          	srli	t6,t0,0x10
   188ba:	02c2                	c.slli	t0,0x10
   188bc:	92b6                	c.add	t0,a3
   188be:	03e905b3          	mul	a1,s2,t5
   188c2:	9896                	c.add	a7,t0
   188c4:	03e506b3          	mul	a3,a0,t5
   188c8:	02a78633          	mul	a2,a5,a0
   188cc:	0106da93          	srli	s5,a3,0x10
   188d0:	962e                	c.add	a2,a1
   188d2:	9ab2                	c.add	s5,a2
   188d4:	03278e33          	mul	t3,a5,s2
   188d8:	00baf463          	bgeu	s5,a1,188e0 <__multf3+0x2a6>
   188dc:	6641                	c.lui	a2,0x10
   188de:	9e32                	c.add	t3,a2
   188e0:	010ad613          	srli	a2,s5,0x10
   188e4:	9672                	c.add	a2,t3
   188e6:	ca32                	c.swsp	a2,20(sp)
   188e8:	06c2                	c.slli	a3,0x10
   188ea:	82c1                	c.srli	a3,0x10
   188ec:	0ac2                	c.slli	s5,0x10
   188ee:	02ae8633          	mul	a2,t4,a0
   188f2:	9ab6                	c.add	s5,a3
   188f4:	03d905b3          	mul	a1,s2,t4
   188f8:	01065693          	srli	a3,a2,0x10
   188fc:	02a703b3          	mul	t2,a4,a0
   18900:	93ae                	c.add	t2,a1
   18902:	969e                	c.add	a3,t2
   18904:	03270e33          	mul	t3,a4,s2
   18908:	00b6f463          	bgeu	a3,a1,18910 <__multf3+0x2d6>
   1890c:	65c1                	c.lui	a1,0x10
   1890e:	9e2e                	c.add	t3,a1
   18910:	0106d593          	srli	a1,a3,0x10
   18914:	95f2                	c.add	a1,t3
   18916:	0642                	c.slli	a2,0x10
   18918:	4e26                	c.lwsp	t3,72(sp)
   1891a:	8241                	c.srli	a2,0x10
   1891c:	06c2                	c.slli	a3,0x10
   1891e:	96b2                	c.add	a3,a2
   18920:	d236                	c.swsp	a3,36(sp)
   18922:	010e5693          	srli	a3,t3,0x10
   18926:	0e42                	c.slli	t3,0x10
   18928:	010e5e13          	srli	t3,t3,0x10
   1892c:	03c98a33          	mul	s4,s3,t3
   18930:	d02e                	c.swsp	a1,32(sp)
   18932:	02668633          	mul	a2,a3,t1
   18936:	026e05b3          	mul	a1,t3,t1
   1893a:	9652                	c.add	a2,s4
   1893c:	0105db13          	srli	s6,a1,0x10
   18940:	965a                	c.add	a2,s6
   18942:	02d983b3          	mul	t2,s3,a3
   18946:	01467463          	bgeu	a2,s4,1894e <__multf3+0x314>
   1894a:	6a41                	c.lui	s4,0x10
   1894c:	93d2                	c.add	t2,s4
   1894e:	05c2                	c.slli	a1,0x10
   18950:	01065a13          	srli	s4,a2,0x10
   18954:	81c1                	c.srli	a1,0x10
   18956:	0642                	c.slli	a2,0x10
   18958:	962e                	c.add	a2,a1
   1895a:	55e2                	c.lwsp	a1,56(sp)
   1895c:	93d2                	c.add	t2,s4
   1895e:	d41e                	c.swsp	t2,40(sp)
   18960:	0105d393          	srli	t2,a1,0x10
   18964:	05c2                	c.slli	a1,0x10
   18966:	81c1                	c.srli	a1,0x10
   18968:	03e58b33          	mul	s6,a1,t5
   1896c:	d632                	c.swsp	a2,44(sp)
   1896e:	03e38d33          	mul	s10,t2,t5
   18972:	010b5613          	srli	a2,s6,0x10
   18976:	02b78a33          	mul	s4,a5,a1
   1897a:	9a6a                	c.add	s4,s10
   1897c:	9a32                	c.add	s4,a2
   1897e:	02778cb3          	mul	s9,a5,t2
   18982:	01aa7463          	bgeu	s4,s10,1898a <__multf3+0x350>
   18986:	6d41                	c.lui	s10,0x10
   18988:	9cea                	c.add	s9,s10
   1898a:	98e2                	c.add	a7,s8
   1898c:	01588633          	add	a2,a7,s5
   18990:	0058b2b3          	sltu	t0,a7,t0
   18994:	c832                	c.swsp	a2,16(sp)
   18996:	d2b2                	c.swsp	a2,100(sp)
   18998:	4652                	c.lwsp	a2,20(sp)
   1899a:	9f96                	c.add	t6,t0
   1899c:	9fde                	c.add	t6,s7
   1899e:	00cf8ab3          	add	s5,t6,a2
   189a2:	4642                	c.lwsp	a2,16(sp)
   189a4:	0b42                	c.slli	s6,0x10
   189a6:	010a5d13          	srli	s10,s4,0x10
   189aa:	011638b3          	sltu	a7,a2,a7
   189ae:	5612                	c.lwsp	a2,36(sp)
   189b0:	98d6                	c.add	a7,s5
   189b2:	010b5b13          	srli	s6,s6,0x10
   189b6:	0a42                	c.slli	s4,0x10
   189b8:	9a5a                	c.add	s4,s6
   189ba:	01fabb33          	sltu	s6,s5,t6
   189be:	0158bab3          	sltu	s5,a7,s5
   189c2:	005fbfb3          	sltu	t6,t6,t0
   189c6:	00c882b3          	add	t0,a7,a2
   189ca:	5602                	c.lwsp	a2,32(sp)
   189cc:	015b6b33          	or	s6,s6,s5
   189d0:	9fda                	c.add	t6,s6
   189d2:	00cf8ab3          	add	s5,t6,a2
   189d6:	5632                	c.lwsp	a2,44(sp)
   189d8:	5b22                	c.lwsp	s6,40(sp)
   189da:	0112b8b3          	sltu	a7,t0,a7
   189de:	98d6                	c.add	a7,s5
   189e0:	9616                	c.add	a2,t0
   189e2:	9b46                	c.add	s6,a7
   189e4:	005632b3          	sltu	t0,a2,t0
   189e8:	92da                	c.add	t0,s6
   189ea:	01fabfb3          	sltu	t6,s5,t6
   189ee:	9d66                	c.add	s10,s9
   189f0:	0158bab3          	sltu	s5,a7,s5
   189f4:	011b38b3          	sltu	a7,s6,a7
   189f8:	0162bb33          	sltu	s6,t0,s6
   189fc:	9d16                	c.add	s10,t0
   189fe:	0168e8b3          	or	a7,a7,s6
   18a02:	015feab3          	or	s5,t6,s5
   18a06:	9ac6                	c.add	s5,a7
   18a08:	005d3fb3          	sltu	t6,s10,t0
   18a0c:	014608b3          	add	a7,a2,s4
   18a10:	42b6                	c.lwsp	t0,76(sp)
   18a12:	00c8b633          	sltu	a2,a7,a2
   18a16:	966a                	c.add	a2,s10
   18a18:	0102da13          	srli	s4,t0,0x10
   18a1c:	01a63d33          	sltu	s10,a2,s10
   18a20:	02c2                	c.slli	t0,0x10
   18a22:	0102d293          	srli	t0,t0,0x10
   18a26:	01afefb3          	or	t6,t6,s10
   18a2a:	ca46                	c.swsp	a7,20(sp)
   18a2c:	d4c6                	c.swsp	a7,104(sp)
   18a2e:	9fd6                	c.add	t6,s5
   18a30:	026288b3          	mul	a7,t0,t1
   18a34:	02598ab3          	mul	s5,s3,t0
   18a38:	0108db13          	srli	s6,a7,0x10
   18a3c:	026a0333          	mul	t1,s4,t1
   18a40:	9356                	c.add	t1,s5
   18a42:	935a                	c.add	t1,s6
   18a44:	034989b3          	mul	s3,s3,s4
   18a48:	01537463          	bgeu	t1,s5,18a50 <__multf3+0x416>
   18a4c:	6ac1                	c.lui	s5,0x10
   18a4e:	99d6                	c.add	s3,s5
   18a50:	01035a93          	srli	s5,t1,0x10
   18a54:	99d6                	c.add	s3,s5
   18a56:	5af2                	c.lwsp	s5,60(sp)
   18a58:	08c2                	c.slli	a7,0x10
   18a5a:	0342                	c.slli	t1,0x10
   18a5c:	d04e                	c.swsp	s3,32(sp)
   18a5e:	0108d893          	srli	a7,a7,0x10
   18a62:	010ad993          	srli	s3,s5,0x10
   18a66:	0ac2                	c.slli	s5,0x10
   18a68:	989a                	c.add	a7,t1
   18a6a:	010ada93          	srli	s5,s5,0x10
   18a6e:	03378333          	mul	t1,a5,s3
   18a72:	d246                	c.swsp	a7,36(sp)
   18a74:	035787b3          	mul	a5,a5,s5
   18a78:	03ea88b3          	mul	a7,s5,t5
   18a7c:	03e98f33          	mul	t5,s3,t5
   18a80:	0108db13          	srli	s6,a7,0x10
   18a84:	97fa                	c.add	a5,t5
   18a86:	97da                	c.add	a5,s6
   18a88:	01e7f463          	bgeu	a5,t5,18a90 <__multf3+0x456>
   18a8c:	6f41                	c.lui	t5,0x10
   18a8e:	937a                	c.add	t1,t5
   18a90:	08c2                	c.slli	a7,0x10
   18a92:	0107db13          	srli	s6,a5,0x10
   18a96:	0108d893          	srli	a7,a7,0x10
   18a9a:	07c2                	c.slli	a5,0x10
   18a9c:	03c90f33          	mul	t5,s2,t3
   18aa0:	9b1a                	c.add	s6,t1
   18aa2:	97c6                	c.add	a5,a7
   18aa4:	03c50333          	mul	t1,a0,t3
   18aa8:	02a688b3          	mul	a7,a3,a0
   18aac:	01035c13          	srli	s8,t1,0x10
   18ab0:	98fa                	c.add	a7,t5
   18ab2:	98e2                	c.add	a7,s8
   18ab4:	02d90bb3          	mul	s7,s2,a3
   18ab8:	01e8f463          	bgeu	a7,t5,18ac0 <__multf3+0x486>
   18abc:	6f41                	c.lui	t5,0x10
   18abe:	9bfa                	c.add	s7,t5
   18ac0:	0342                	c.slli	t1,0x10
   18ac2:	0108df13          	srli	t5,a7,0x10
   18ac6:	01035313          	srli	t1,t1,0x10
   18aca:	08c2                	c.slli	a7,0x10
   18acc:	9f5e                	c.add	t5,s7
   18ace:	989a                	c.add	a7,t1
   18ad0:	03d38c33          	mul	s8,t2,t4
   18ad4:	02be8333          	mul	t1,t4,a1
   18ad8:	02b70bb3          	mul	s7,a4,a1
   18adc:	01035d13          	srli	s10,t1,0x10
   18ae0:	9be2                	c.add	s7,s8
   18ae2:	9bea                	c.add	s7,s10
   18ae4:	02770cb3          	mul	s9,a4,t2
   18ae8:	018bf463          	bgeu	s7,s8,18af0 <__multf3+0x4b6>
   18aec:	6c41                	c.lui	s8,0x10
   18aee:	9ce2                	c.add	s9,s8
   18af0:	0342                	c.slli	t1,0x10
   18af2:	010bdc13          	srli	s8,s7,0x10
   18af6:	01035313          	srli	t1,t1,0x10
   18afa:	0bc2                	c.slli	s7,0x10
   18afc:	935e                	c.add	t1,s7
   18afe:	5b92                	c.lwsp	s7,36(sp)
   18b00:	9c66                	c.add	s8,s9
   18b02:	5c82                	c.lwsp	s9,32(sp)
   18b04:	9bb2                	c.add	s7,a2
   18b06:	00cbb633          	sltu	a2,s7,a2
   18b0a:	9cfe                	c.add	s9,t6
   18b0c:	9666                	c.add	a2,s9
   18b0e:	97de                	c.add	a5,s7
   18b10:	9b32                	c.add	s6,a2
   18b12:	0177bbb3          	sltu	s7,a5,s7
   18b16:	9bda                	c.add	s7,s6
   18b18:	98be                	c.add	a7,a5
   18b1a:	9f5e                	c.add	t5,s7
   18b1c:	00f8b7b3          	sltu	a5,a7,a5
   18b20:	97fa                	c.add	a5,t5
   18b22:	01fcbfb3          	sltu	t6,s9,t6
   18b26:	01963cb3          	sltu	s9,a2,s9
   18b2a:	00cb3633          	sltu	a2,s6,a2
   18b2e:	016bbb33          	sltu	s6,s7,s6
   18b32:	019fecb3          	or	s9,t6,s9
   18b36:	01666633          	or	a2,a2,s6
   18b3a:	017f3bb3          	sltu	s7,t5,s7
   18b3e:	01e7bf33          	sltu	t5,a5,t5
   18b42:	9c3e                	c.add	s8,a5
   18b44:	9666                	c.add	a2,s9
   18b46:	01ebebb3          	or	s7,s7,t5
   18b4a:	9bb2                	c.add	s7,a2
   18b4c:	00fc3f33          	sltu	t5,s8,a5
   18b50:	03c38fb3          	mul	t6,t2,t3
   18b54:	9346                	c.add	t1,a7
   18b56:	011338b3          	sltu	a7,t1,a7
   18b5a:	98e2                	c.add	a7,s8
   18b5c:	0188bc33          	sltu	s8,a7,s8
   18b60:	018f6f33          	or	t5,t5,s8
   18b64:	9f5e                	c.add	t5,s7
   18b66:	d69a                	c.swsp	t1,108(sp)
   18b68:	03c587b3          	mul	a5,a1,t3
   18b6c:	02b68633          	mul	a2,a3,a1
   18b70:	0107db93          	srli	s7,a5,0x10
   18b74:	967e                	c.add	a2,t6
   18b76:	965e                	c.add	a2,s7
   18b78:	02768b33          	mul	s6,a3,t2
   18b7c:	01f67463          	bgeu	a2,t6,18b84 <__multf3+0x54a>
   18b80:	6fc1                	c.lui	t6,0x10
   18b82:	9b7e                	c.add	s6,t6
   18b84:	07c2                	c.slli	a5,0x10
   18b86:	01065f93          	srli	t6,a2,0x10
   18b8a:	83c1                	c.srli	a5,0x10
   18b8c:	0642                	c.slli	a2,0x10
   18b8e:	9fda                	c.add	t6,s6
   18b90:	963e                	c.add	a2,a5
   18b92:	02590b33          	mul	s6,s2,t0
   18b96:	02a287b3          	mul	a5,t0,a0
   18b9a:	02aa0533          	mul	a0,s4,a0
   18b9e:	0107db93          	srli	s7,a5,0x10
   18ba2:	955a                	c.add	a0,s6
   18ba4:	955e                	c.add	a0,s7
   18ba6:	03490933          	mul	s2,s2,s4
   18baa:	01657463          	bgeu	a0,s6,18bb2 <__multf3+0x578>
   18bae:	6b41                	c.lui	s6,0x10
   18bb0:	995a                	c.add	s2,s6
   18bb2:	07c2                	c.slli	a5,0x10
   18bb4:	01055b13          	srli	s6,a0,0x10
   18bb8:	83c1                	c.srli	a5,0x10
   18bba:	0542                	c.slli	a0,0x10
   18bbc:	995a                	c.add	s2,s6
   18bbe:	953e                	c.add	a0,a5
   18bc0:	035e8b33          	mul	s6,t4,s5
   18bc4:	035707b3          	mul	a5,a4,s5
   18bc8:	03d98eb3          	mul	t4,s3,t4
   18bcc:	03370bb3          	mul	s7,a4,s3
   18bd0:	97f6                	c.add	a5,t4
   18bd2:	010b5713          	srli	a4,s6,0x10
   18bd6:	97ba                	c.add	a5,a4
   18bd8:	01d7f463          	bgeu	a5,t4,18be0 <__multf3+0x5a6>
   18bdc:	6741                	c.lui	a4,0x10
   18bde:	9bba                	c.add	s7,a4
   18be0:	0b42                	c.slli	s6,0x10
   18be2:	0107de93          	srli	t4,a5,0x10
   18be6:	010b5b13          	srli	s6,s6,0x10
   18bea:	07c2                	c.slli	a5,0x10
   18bec:	02b28733          	mul	a4,t0,a1
   18bf0:	97da                	c.add	a5,s6
   18bf2:	9ede                	c.add	t4,s7
   18bf4:	02538b33          	mul	s6,t2,t0
   18bf8:	01075b93          	srli	s7,a4,0x10
   18bfc:	02ba05b3          	mul	a1,s4,a1
   18c00:	95da                	c.add	a1,s6
   18c02:	95de                	c.add	a1,s7
   18c04:	034383b3          	mul	t2,t2,s4
   18c08:	0165f463          	bgeu	a1,s6,18c10 <__multf3+0x5d6>
   18c0c:	6b41                	c.lui	s6,0x10
   18c0e:	93da                	c.add	t2,s6
   18c10:	0742                	c.slli	a4,0x10
   18c12:	0105db13          	srli	s6,a1,0x10
   18c16:	8341                	c.srli	a4,0x10
   18c18:	05c2                	c.slli	a1,0x10
   18c1a:	93da                	c.add	t2,s6
   18c1c:	95ba                	c.add	a1,a4
   18c1e:	03368b33          	mul	s6,a3,s3
   18c22:	03ca8733          	mul	a4,s5,t3
   18c26:	035686b3          	mul	a3,a3,s5
   18c2a:	01075b93          	srli	s7,a4,0x10
   18c2e:	03c98e33          	mul	t3,s3,t3
   18c32:	96f2                	c.add	a3,t3
   18c34:	96de                	c.add	a3,s7
   18c36:	01c6f463          	bgeu	a3,t3,18c3e <__multf3+0x604>
   18c3a:	6e41                	c.lui	t3,0x10
   18c3c:	9b72                	c.add	s6,t3
   18c3e:	9646                	c.add	a2,a7
   18c40:	9ffa                	c.add	t6,t5
   18c42:	011638b3          	sltu	a7,a2,a7
   18c46:	98fe                	c.add	a7,t6
   18c48:	9532                	c.add	a0,a2
   18c4a:	9946                	c.add	s2,a7
   18c4c:	00c53633          	sltu	a2,a0,a2
   18c50:	964a                	c.add	a2,s2
   18c52:	97aa                	c.add	a5,a0
   18c54:	9eb2                	c.add	t4,a2
   18c56:	0742                	c.slli	a4,0x10
   18c58:	d8be                	c.swsp	a5,112(sp)
   18c5a:	00a7b7b3          	sltu	a5,a5,a0
   18c5e:	97f6                	c.add	a5,t4
   18c60:	0106de13          	srli	t3,a3,0x10
   18c64:	8341                	c.srli	a4,0x10
   18c66:	06c2                	c.slli	a3,0x10
   18c68:	95be                	c.add	a1,a5
   18c6a:	96ba                	c.add	a3,a4
   18c6c:	96ae                	c.add	a3,a1
   18c6e:	01efbf33          	sltu	t5,t6,t5
   18c72:	dab6                	c.swsp	a3,116(sp)
   18c74:	01f8bfb3          	sltu	t6,a7,t6
   18c78:	00b6b6b3          	sltu	a3,a3,a1
   18c7c:	011938b3          	sltu	a7,s2,a7
   18c80:	01263933          	sltu	s2,a2,s2
   18c84:	00ceb633          	sltu	a2,t4,a2
   18c88:	01d7beb3          	sltu	t4,a5,t4
   18c8c:	00f5b7b3          	sltu	a5,a1,a5
   18c90:	035285b3          	mul	a1,t0,s5
   18c94:	01ff6f33          	or	t5,t5,t6
   18c98:	0128e8b3          	or	a7,a7,s2
   18c9c:	9f46                	c.add	t5,a7
   18c9e:	01d66633          	or	a2,a2,t4
   18ca2:	967a                	c.add	a2,t5
   18ca4:	93b2                	c.add	t2,a2
   18ca6:	979e                	c.add	a5,t2
   18ca8:	9e5a                	c.add	t3,s6
   18caa:	9e3e                	c.add	t3,a5
   18cac:	025982b3          	mul	t0,s3,t0
   18cb0:	96f2                	c.add	a3,t3
   18cb2:	00c3b633          	sltu	a2,t2,a2
   18cb6:	0077b3b3          	sltu	t2,a5,t2
   18cba:	00fe37b3          	sltu	a5,t3,a5
   18cbe:	01c6be33          	sltu	t3,a3,t3
   18cc2:	01c7ee33          	or	t3,a5,t3
   18cc6:	0105d793          	srli	a5,a1,0x10
   18cca:	00766633          	or	a2,a2,t2
   18cce:	033a09b3          	mul	s3,s4,s3
   18cd2:	035a0a33          	mul	s4,s4,s5
   18cd6:	9a16                	c.add	s4,t0
   18cd8:	97d2                	c.add	a5,s4
   18cda:	0057f463          	bgeu	a5,t0,18ce2 <__multf3+0x6a8>
   18cde:	6741                	c.lui	a4,0x10
   18ce0:	99ba                	c.add	s3,a4
   18ce2:	0107d713          	srli	a4,a5,0x10
   18ce6:	9732                	c.add	a4,a2
   18ce8:	01059613          	slli	a2,a1,0x10
   18cec:	8241                	c.srli	a2,0x10
   18cee:	07c2                	c.slli	a5,0x10
   18cf0:	97b2                	c.add	a5,a2
   18cf2:	97b6                	c.add	a5,a3
   18cf4:	00d7b6b3          	sltu	a3,a5,a3
   18cf8:	9772                	c.add	a4,t3
   18cfa:	96ba                	c.add	a3,a4
   18cfc:	dcbe                	c.swsp	a5,120(sp)
   18cfe:	4742                	c.lwsp	a4,16(sp)
   18d00:	47f2                	c.lwsp	a5,28(sp)
   18d02:	96ce                	c.add	a3,s3
   18d04:	0336                	c.slli	t1,0xd
   18d06:	8fd9                	c.or	a5,a4
   18d08:	4752                	c.lwsp	a4,20(sp)
   18d0a:	deb6                	c.swsp	a3,124(sp)
   18d0c:	1890                	c.addi4spn	a2,sp,112
   18d0e:	8fd9                	c.or	a5,a4
   18d10:	00f36333          	or	t1,t1,a5
   18d14:	109c                	c.addi4spn	a5,sp,96
   18d16:	47d8                	c.lw	a4,12(a5)
   18d18:	4b94                	c.lw	a3,16(a5)
   18d1a:	834d                	c.srli	a4,0x13
   18d1c:	06b6                	c.slli	a3,0xd
   18d1e:	8f55                	c.or	a4,a3
   18d20:	c398                	c.sw	a4,0(a5)
   18d22:	0791                	c.addi	a5,4
   18d24:	fef619e3          	bne	a2,a5,18d16 <__multf3+0x6dc>
   18d28:	5706                	c.lwsp	a4,96(sp)
   18d2a:	56a6                	c.lwsp	a3,104(sp)
   18d2c:	00603333          	sltu	t1,zero,t1
   18d30:	00e36333          	or	t1,t1,a4
   18d34:	ccb6                	c.swsp	a3,88(sp)
   18d36:	5736                	c.lwsp	a4,108(sp)
   18d38:	5696                	c.lwsp	a3,100(sp)
   18d3a:	c89a                	c.swsp	t1,80(sp)
   18d3c:	ceba                	c.swsp	a4,92(sp)
   18d3e:	cab6                	c.swsp	a3,84(sp)
   18d40:	00b71793          	slli	a5,a4,0xb
   18d44:	2007d063          	bge	a5,zero,18f44 <__multf3+0x90a>
   18d48:	037e                	c.slli	t1,0x1f
   18d4a:	089c                	c.addi4spn	a5,sp,80
   18d4c:	08ec                	c.addi4spn	a1,sp,92
   18d4e:	4394                	c.lw	a3,0(a5)
   18d50:	43d0                	c.lw	a2,4(a5)
   18d52:	8285                	c.srli	a3,0x1
   18d54:	067e                	c.slli	a2,0x1f
   18d56:	8ed1                	c.or	a3,a2
   18d58:	c394                	c.sw	a3,0(a5)
   18d5a:	0791                	c.addi	a5,4
   18d5c:	fef599e3          	bne	a1,a5,18d4e <__multf3+0x714>
   18d60:	47c6                	c.lwsp	a5,80(sp)
   18d62:	01f35313          	srli	t1,t1,0x1f
   18d66:	8305                	c.srli	a4,0x1
   18d68:	0067e7b3          	or	a5,a5,t1
   18d6c:	ceba                	c.swsp	a4,92(sp)
   18d6e:	c8be                	c.swsp	a5,80(sp)
   18d70:	4732                	c.lwsp	a4,12(sp)
   18d72:	6791                	c.lui	a5,0x4
   18d74:	17fd                	c.addi	a5,-1 # 3fff <exit-0xc0b5>
   18d76:	97ba                	c.add	a5,a4
   18d78:	2af05163          	bge	zero,a5,1901a <__multf3+0x9e0>
   18d7c:	46c6                	c.lwsp	a3,80(sp)
   18d7e:	0076f713          	andi	a4,a3,7
   18d82:	1c070d63          	beq	a4,zero,18f5c <__multf3+0x922>
   18d86:	4589                	c.li	a1,2
   18d88:	4756                	c.lwsp	a4,84(sp)
   18d8a:	4676                	c.lwsp	a2,92(sp)
   18d8c:	00146413          	ori	s0,s0,1
   18d90:	1cb48463          	beq	s1,a1,18f58 <__multf3+0x91e>
   18d94:	458d                	c.li	a1,3
   18d96:	1ab48a63          	beq	s1,a1,18f4a <__multf3+0x910>
   18d9a:	1c049163          	bne	s1,zero,18f5c <__multf3+0x922>
   18d9e:	00f6f593          	andi	a1,a3,15
   18da2:	4511                	c.li	a0,4
   18da4:	1aa58c63          	beq	a1,a0,18f5c <__multf3+0x922>
   18da8:	96aa                	c.add	a3,a0
   18daa:	c8b6                	c.swsp	a3,80(sp)
   18dac:	0046b693          	sltiu	a3,a3,4
   18db0:	9736                	c.add	a4,a3
   18db2:	caba                	c.swsp	a4,84(sp)
   18db4:	00d73733          	sltu	a4,a4,a3
   18db8:	46e6                	c.lwsp	a3,88(sp)
   18dba:	9736                	c.add	a4,a3
   18dbc:	ccba                	c.swsp	a4,88(sp)
   18dbe:	00d73733          	sltu	a4,a4,a3
   18dc2:	9732                	c.add	a4,a2
   18dc4:	ceba                	c.swsp	a4,92(sp)
   18dc6:	aa59                	c.j	18f5c <__multf3+0x922>
   18dc8:	4a81                	c.li	s5,0
   18dca:	4985                	c.li	s3,1
   18dcc:	b201                	c.j	186cc <__multf3+0x92>
   18dce:	4989                	c.li	s3,2
   18dd0:	b8f5                	c.j	186cc <__multf3+0x92>
   18dd2:	017b67b3          	or	a5,s6,s7
   18dd6:	0187e7b3          	or	a5,a5,s8
   18dda:	8fc9                	c.or	a5,a0
   18ddc:	c7ed                	c.beqz	a5,18ec6 <__multf3+0x88c>
   18dde:	c139                	c.beqz	a0,18e24 <__multf3+0x7ea>
   18de0:	101010ef          	jal	ra,1a6e0 <__clzsi2>
   18de4:	ff450613          	addi	a2,a0,-12
   18de8:	40565693          	srai	a3,a2,0x5
   18dec:	8a7d                	c.andi	a2,31
   18dee:	57f1                	c.li	a5,-4
   18df0:	c225                	c.beqz	a2,18e50 <__multf3+0x816>
   18df2:	02f687b3          	mul	a5,a3,a5
   18df6:	02000893          	addi	a7,zero,32
   18dfa:	008c                	c.addi4spn	a1,sp,64
   18dfc:	40c888b3          	sub	a7,a7,a2
   18e00:	00c78713          	addi	a4,a5,12
   18e04:	972e                	c.add	a4,a1
   18e06:	40f007b3          	sub	a5,zero,a5
   18e0a:	06e59263          	bne	a1,a4,18e6e <__multf3+0x834>
   18e0e:	4706                	c.lwsp	a4,64(sp)
   18e10:	fff68793          	addi	a5,a3,-1
   18e14:	068a                	c.slli	a3,0x2
   18e16:	95b6                	c.add	a1,a3
   18e18:	00c71733          	sll	a4,a4,a2
   18e1c:	c198                	c.sw	a4,0(a1)
   18e1e:	56fd                	c.li	a3,-1
   18e20:	0090                	c.addi4spn	a2,sp,64
   18e22:	a8a5                	c.j	18e9a <__multf3+0x860>
   18e24:	000c0863          	beq	s8,zero,18e34 <__multf3+0x7fa>
   18e28:	8562                	c.mv	a0,s8
   18e2a:	0b7010ef          	jal	ra,1a6e0 <__clzsi2>
   18e2e:	02050513          	addi	a0,a0,32
   18e32:	bf4d                	c.j	18de4 <__multf3+0x7aa>
   18e34:	000b0863          	beq	s6,zero,18e44 <__multf3+0x80a>
   18e38:	855a                	c.mv	a0,s6
   18e3a:	0a7010ef          	jal	ra,1a6e0 <__clzsi2>
   18e3e:	04050513          	addi	a0,a0,64
   18e42:	b74d                	c.j	18de4 <__multf3+0x7aa>
   18e44:	855e                	c.mv	a0,s7
   18e46:	09b010ef          	jal	ra,1a6e0 <__clzsi2>
   18e4a:	06050513          	addi	a0,a0,96
   18e4e:	bf59                	c.j	18de4 <__multf3+0x7aa>
   18e50:	02f687b3          	mul	a5,a3,a5
   18e54:	00f8                	c.addi4spn	a4,sp,76
   18e56:	460d                	c.li	a2,3
   18e58:	00f705b3          	add	a1,a4,a5
   18e5c:	418c                	c.lw	a1,0(a1)
   18e5e:	167d                	c.addi	a2,-1 # ffff <exit-0xb5>
   18e60:	1771                	c.addi	a4,-4 # fffc <exit-0xb8>
   18e62:	c34c                	c.sw	a1,4(a4)
   18e64:	fed65ae3          	bge	a2,a3,18e58 <__multf3+0x81e>
   18e68:	fff68793          	addi	a5,a3,-1
   18e6c:	bf4d                	c.j	18e1e <__multf3+0x7e4>
   18e6e:	00072803          	lw	a6,0(a4)
   18e72:	ffc72303          	lw	t1,-4(a4)
   18e76:	00f70e33          	add	t3,a4,a5
   18e7a:	00c81833          	sll	a6,a6,a2
   18e7e:	01135333          	srl	t1,t1,a7
   18e82:	00686833          	or	a6,a6,t1
   18e86:	010e2023          	sw	a6,0(t3) # 10000 <exit-0xb4>
   18e8a:	1771                	c.addi	a4,-4
   18e8c:	bfbd                	c.j	18e0a <__multf3+0x7d0>
   18e8e:	00279713          	slli	a4,a5,0x2
   18e92:	9732                	c.add	a4,a2
   18e94:	00072023          	sw	zero,0(a4)
   18e98:	17fd                	c.addi	a5,-1
   18e9a:	fed79ae3          	bne	a5,a3,18e8e <__multf3+0x854>
   18e9e:	77f1                	c.lui	a5,0xffffc
   18ea0:	07c5                	c.addi	a5,17 # ffffc011 <__BSS_END__+0xfffe05b5>
   18ea2:	8f89                	c.sub	a5,a0
   18ea4:	b2a5                	c.j	1880c <__multf3+0x1d2>
   18ea6:	017b6b33          	or	s6,s6,s7
   18eaa:	018b6b33          	or	s6,s6,s8
   18eae:	00ab6b33          	or	s6,s6,a0
   18eb2:	4709                	c.li	a4,2
   18eb4:	940b0de3          	beq	s6,zero,1880e <__multf3+0x1d4>
   18eb8:	0542                	c.slli	a0,0x10
   18eba:	8541                	c.srai	a0,0x10
   18ebc:	470d                	c.li	a4,3
   18ebe:	940548e3          	blt	a0,zero,1880e <__multf3+0x1d4>
   18ec2:	4441                	c.li	s0,16
   18ec4:	b2a9                	c.j	1880e <__multf3+0x1d4>
   18ec6:	4781                	c.li	a5,0
   18ec8:	4705                	c.li	a4,1
   18eca:	b291                	c.j	1880e <__multf3+0x1d4>
   18ecc:	00f697b3          	sll	a5,a3,a5
   18ed0:	5307f693          	andi	a3,a5,1328
   18ed4:	e2a9                	c.bnez	a3,18f16 <__multf3+0x8dc>
   18ed6:	0887f693          	andi	a3,a5,136
   18eda:	e68d                	c.bnez	a3,18f04 <__multf3+0x8ca>
   18edc:	2407f793          	andi	a5,a5,576
   18ee0:	94078ae3          	beq	a5,zero,18834 <__multf3+0x1fa>
   18ee4:	4441                	c.li	s0,16
   18ee6:	67a1                	c.lui	a5,0x8
   18ee8:	cebe                	c.swsp	a5,92(sp)
   18eea:	cc82                	c.swsp	zero,88(sp)
   18eec:	ca82                	c.swsp	zero,84(sp)
   18eee:	c882                	c.swsp	zero,80(sp)
   18ef0:	17fd                	c.addi	a5,-1 # 7fff <exit-0x80b5>
   18ef2:	4801                	c.li	a6,0
   18ef4:	a05d                	c.j	18f9a <__multf3+0x960>
   18ef6:	46bd                	c.li	a3,15
   18ef8:	fed787e3          	beq	a5,a3,18ee6 <__multf3+0x8ac>
   18efc:	46ad                	c.li	a3,11
   18efe:	8852                	c.mv	a6,s4
   18f00:	00d79b63          	bne	a5,a3,18f16 <__multf3+0x8dc>
   18f04:	884a                	c.mv	a6,s2
   18f06:	4686                	c.lwsp	a3,64(sp)
   18f08:	47b6                	c.lwsp	a5,76(sp)
   18f0a:	c8b6                	c.swsp	a3,80(sp)
   18f0c:	4696                	c.lwsp	a3,68(sp)
   18f0e:	cab6                	c.swsp	a3,84(sp)
   18f10:	46a6                	c.lwsp	a3,72(sp)
   18f12:	ccb6                	c.swsp	a3,88(sp)
   18f14:	a809                	c.j	18f26 <__multf3+0x8ec>
   18f16:	5742                	c.lwsp	a4,48(sp)
   18f18:	57f2                	c.lwsp	a5,60(sp)
   18f1a:	c8ba                	c.swsp	a4,80(sp)
   18f1c:	5752                	c.lwsp	a4,52(sp)
   18f1e:	caba                	c.swsp	a4,84(sp)
   18f20:	5762                	c.lwsp	a4,56(sp)
   18f22:	ccba                	c.swsp	a4,88(sp)
   18f24:	874e                	c.mv	a4,s3
   18f26:	cebe                	c.swsp	a5,92(sp)
   18f28:	4789                	c.li	a5,2
   18f2a:	2ef70f63          	beq	a4,a5,19228 <__multf3+0xbee>
   18f2e:	478d                	c.li	a5,3
   18f30:	faf70be3          	beq	a4,a5,18ee6 <__multf3+0x8ac>
   18f34:	4785                	c.li	a5,1
   18f36:	e2f71de3          	bne	a4,a5,18d70 <__multf3+0x736>
   18f3a:	ce82                	c.swsp	zero,92(sp)
   18f3c:	cc82                	c.swsp	zero,88(sp)
   18f3e:	ca82                	c.swsp	zero,84(sp)
   18f40:	c882                	c.swsp	zero,80(sp)
   18f42:	aa5d                	c.j	190f8 <__multf3+0xabe>
   18f44:	47e2                	c.lwsp	a5,24(sp)
   18f46:	c63e                	c.swsp	a5,12(sp)
   18f48:	b525                	c.j	18d70 <__multf3+0x736>
   18f4a:	00081963          	bne	a6,zero,18f5c <__multf3+0x922>
   18f4e:	06a1                	c.addi	a3,8
   18f50:	c8b6                	c.swsp	a3,80(sp)
   18f52:	0086b693          	sltiu	a3,a3,8
   18f56:	bda9                	c.j	18db0 <__multf3+0x776>
   18f58:	fe081be3          	bne	a6,zero,18f4e <__multf3+0x914>
   18f5c:	4776                	c.lwsp	a4,92(sp)
   18f5e:	00b71693          	slli	a3,a4,0xb
   18f62:	0006da63          	bge	a3,zero,18f76 <__multf3+0x93c>
   18f66:	46b2                	c.lwsp	a3,12(sp)
   18f68:	fff007b7          	lui	a5,0xfff00
   18f6c:	17fd                	c.addi	a5,-1 # ffefffff <__BSS_END__+0xffee45a3>
   18f6e:	8f7d                	c.and	a4,a5
   18f70:	6791                	c.lui	a5,0x4
   18f72:	ceba                	c.swsp	a4,92(sp)
   18f74:	97b6                	c.add	a5,a3
   18f76:	0894                	c.addi4spn	a3,sp,80
   18f78:	08e8                	c.addi4spn	a0,sp,92
   18f7a:	4290                	c.lw	a2,0(a3)
   18f7c:	42cc                	c.lw	a1,4(a3)
   18f7e:	820d                	c.srli	a2,0x3
   18f80:	05f6                	c.slli	a1,0x1d
   18f82:	8e4d                	c.or	a2,a1
   18f84:	c290                	c.sw	a2,0(a3)
   18f86:	0691                	c.addi	a3,4
   18f88:	fed519e3          	bne	a0,a3,18f7a <__multf3+0x940>
   18f8c:	6621                	c.lui	a2,0x8
   18f8e:	ffe60693          	addi	a3,a2,-2 # 7ffe <exit-0x80b6>
   18f92:	04f6cb63          	blt	a3,a5,18fe8 <__multf3+0x9ae>
   18f96:	830d                	c.srli	a4,0x3
   18f98:	ceba                	c.swsp	a4,92(sp)
   18f9a:	4576                	c.lwsp	a0,92(sp)
   18f9c:	083e                	c.slli	a6,0xf
   18f9e:	00f86833          	or	a6,a6,a5
   18fa2:	06a11623          	sh	a0,108(sp)
   18fa6:	07011723          	sh	a6,110(sp)
   18faa:	45c6                	c.lwsp	a1,80(sp)
   18fac:	4656                	c.lwsp	a2,84(sp)
   18fae:	46e6                	c.lwsp	a3,88(sp)
   18fb0:	57b6                	c.lwsp	a5,108(sp)
   18fb2:	c019                	c.beqz	s0,18fb8 <__multf3+0x97e>
   18fb4:	00142073          	csrrs	zero,fflags,s0
   18fb8:	50fa                	c.lwsp	ra,188(sp)
   18fba:	546a                	c.lwsp	s0,184(sp)
   18fbc:	00bda023          	sw	a1,0(s11)
   18fc0:	00cda223          	sw	a2,4(s11)
   18fc4:	00dda423          	sw	a3,8(s11)
   18fc8:	00fda623          	sw	a5,12(s11)
   18fcc:	54da                	c.lwsp	s1,180(sp)
   18fce:	594a                	c.lwsp	s2,176(sp)
   18fd0:	59ba                	c.lwsp	s3,172(sp)
   18fd2:	5a2a                	c.lwsp	s4,168(sp)
   18fd4:	5a9a                	c.lwsp	s5,164(sp)
   18fd6:	5b0a                	c.lwsp	s6,160(sp)
   18fd8:	4bfa                	c.lwsp	s7,156(sp)
   18fda:	4c6a                	c.lwsp	s8,152(sp)
   18fdc:	4cda                	c.lwsp	s9,148(sp)
   18fde:	4d4a                	c.lwsp	s10,144(sp)
   18fe0:	856e                	c.mv	a0,s11
   18fe2:	4dba                	c.lwsp	s11,140(sp)
   18fe4:	6129                	c.addi16sp	sp,192
   18fe6:	8082                	c.jr	ra
   18fe8:	4789                	c.li	a5,2
   18fea:	02f48563          	beq	s1,a5,19014 <__multf3+0x9da>
   18fee:	478d                	c.li	a5,3
   18ff0:	00f48763          	beq	s1,a5,18ffe <__multf3+0x9c4>
   18ff4:	e499                	c.bnez	s1,19002 <__multf3+0x9c8>
   18ff6:	4701                	c.li	a4,0
   18ff8:	fff60793          	addi	a5,a2,-1
   18ffc:	a029                	c.j	19006 <__multf3+0x9cc>
   18ffe:	fe080ce3          	beq	a6,zero,18ff6 <__multf3+0x9bc>
   19002:	577d                	c.li	a4,-1
   19004:	87b6                	c.mv	a5,a3
   19006:	ceba                	c.swsp	a4,92(sp)
   19008:	ccba                	c.swsp	a4,88(sp)
   1900a:	caba                	c.swsp	a4,84(sp)
   1900c:	c8ba                	c.swsp	a4,80(sp)
   1900e:	00546413          	ori	s0,s0,5
   19012:	b761                	c.j	18f9a <__multf3+0x960>
   19014:	fe0811e3          	bne	a6,zero,18ff6 <__multf3+0x9bc>
   19018:	b7ed                	c.j	19002 <__multf3+0x9c8>
   1901a:	efc1                	c.bnez	a5,190b2 <__multf3+0xa78>
   1901c:	47c6                	c.lwsp	a5,80(sp)
   1901e:	4776                	c.lwsp	a4,92(sp)
   19020:	0077f693          	andi	a3,a5,7
   19024:	c6a1                	c.beqz	a3,1906c <__multf3+0xa32>
   19026:	4589                	c.li	a1,2
   19028:	46d6                	c.lwsp	a3,84(sp)
   1902a:	4666                	c.lwsp	a2,88(sp)
   1902c:	00146413          	ori	s0,s0,1
   19030:	02b48c63          	beq	s1,a1,19068 <__multf3+0xa2e>
   19034:	458d                	c.li	a1,3
   19036:	02b48363          	beq	s1,a1,1905c <__multf3+0xa22>
   1903a:	e88d                	c.bnez	s1,1906c <__multf3+0xa32>
   1903c:	00f7f593          	andi	a1,a5,15
   19040:	4511                	c.li	a0,4
   19042:	02a58563          	beq	a1,a0,1906c <__multf3+0xa32>
   19046:	97aa                	c.add	a5,a0
   19048:	0047b793          	sltiu	a5,a5,4
   1904c:	96be                	c.add	a3,a5
   1904e:	00f6b6b3          	sltu	a3,a3,a5
   19052:	9636                	c.add	a2,a3
   19054:	00d63633          	sltu	a2,a2,a3
   19058:	9732                	c.add	a4,a2
   1905a:	a809                	c.j	1906c <__multf3+0xa32>
   1905c:	00081863          	bne	a6,zero,1906c <__multf3+0xa32>
   19060:	07a1                	c.addi	a5,8 # 4008 <exit-0xc0ac>
   19062:	0087b793          	sltiu	a5,a5,8
   19066:	b7dd                	c.j	1904c <__multf3+0xa12>
   19068:	fe081ce3          	bne	a6,zero,19060 <__multf3+0xa26>
   1906c:	8351                	c.srli	a4,0x14
   1906e:	8b05                	c.andi	a4,1
   19070:	00174713          	xori	a4,a4,1
   19074:	4785                	c.li	a5,1
   19076:	0894                	c.addi4spn	a3,sp,80
   19078:	4057d613          	srai	a2,a5,0x5
   1907c:	01f7f593          	andi	a1,a5,31
   19080:	88b6                	c.mv	a7,a3
   19082:	4781                	c.li	a5,0
   19084:	4501                	c.li	a0,0
   19086:	06c51b63          	bne	a0,a2,190fc <__multf3+0xac2>
   1908a:	450d                	c.li	a0,3
   1908c:	8d11                	c.sub	a0,a2
   1908e:	00261313          	slli	t1,a2,0x2
   19092:	eda5                	c.bnez	a1,1910a <__multf3+0xad0>
   19094:	88b6                	c.mv	a7,a3
   19096:	00688e33          	add	t3,a7,t1
   1909a:	000e2e03          	lw	t3,0(t3)
   1909e:	0585                	c.addi	a1,1 # 10001 <exit-0xb3>
   190a0:	0891                	c.addi	a7,4
   190a2:	ffc8ae23          	sw	t3,-4(a7)
   190a6:	feb558e3          	bge	a0,a1,19096 <__multf3+0xa5c>
   190aa:	4591                	c.li	a1,4
   190ac:	40c58633          	sub	a2,a1,a2
   190b0:	a079                	c.j	1913e <__multf3+0xb04>
   190b2:	4705                	c.li	a4,1
   190b4:	40f707b3          	sub	a5,a4,a5
   190b8:	07400693          	addi	a3,zero,116
   190bc:	faf6dde3          	bge	a3,a5,19076 <__multf3+0xa3c>
   190c0:	4656                	c.lwsp	a2,84(sp)
   190c2:	47c6                	c.lwsp	a5,80(sp)
   190c4:	46f6                	c.lwsp	a3,92(sp)
   190c6:	8fd1                	c.or	a5,a2
   190c8:	4666                	c.lwsp	a2,88(sp)
   190ca:	8fd1                	c.or	a5,a2
   190cc:	8fd5                	c.or	a5,a3
   190ce:	c39d                	c.beqz	a5,190f4 <__multf3+0xaba>
   190d0:	ce82                	c.swsp	zero,92(sp)
   190d2:	cc82                	c.swsp	zero,88(sp)
   190d4:	ca82                	c.swsp	zero,84(sp)
   190d6:	c8ba                	c.swsp	a4,80(sp)
   190d8:	4789                	c.li	a5,2
   190da:	00146413          	ori	s0,s0,1
   190de:	14f48263          	beq	s1,a5,19222 <__multf3+0xbe8>
   190e2:	478d                	c.li	a5,3
   190e4:	12f48a63          	beq	s1,a5,19218 <__multf3+0xbde>
   190e8:	4795                	c.li	a5,5
   190ea:	12048a63          	beq	s1,zero,1921e <__multf3+0xbe4>
   190ee:	47c6                	c.lwsp	a5,80(sp)
   190f0:	838d                	c.srli	a5,0x3
   190f2:	c8be                	c.swsp	a5,80(sp)
   190f4:	00246413          	ori	s0,s0,2
   190f8:	4781                	c.li	a5,0
   190fa:	b545                	c.j	18f9a <__multf3+0x960>
   190fc:	0008a303          	lw	t1,0(a7)
   19100:	0505                	c.addi	a0,1
   19102:	0891                	c.addi	a7,4
   19104:	0067e7b3          	or	a5,a5,t1
   19108:	bfbd                	c.j	19086 <__multf3+0xa4c>
   1910a:	006688b3          	add	a7,a3,t1
   1910e:	0008ae03          	lw	t3,0(a7)
   19112:	02000e93          	addi	t4,zero,32
   19116:	40be8eb3          	sub	t4,t4,a1
   1911a:	01de1e33          	sll	t3,t3,t4
   1911e:	01c7e7b3          	or	a5,a5,t3
   19122:	40600333          	sub	t1,zero,t1
   19126:	4f01                	c.li	t5,0
   19128:	00af4d63          	blt	t5,a0,19142 <__multf3+0xb08>
   1912c:	4891                	c.li	a7,4
   1912e:	40c88633          	sub	a2,a7,a2
   19132:	48f6                	c.lwsp	a7,92(sp)
   19134:	050a                	c.slli	a0,0x2
   19136:	9536                	c.add	a0,a3
   19138:	00b8d5b3          	srl	a1,a7,a1
   1913c:	c10c                	c.sw	a1,0(a0)
   1913e:	4511                	c.li	a0,4
   19140:	a805                	c.j	19170 <__multf3+0xb36>
   19142:	0008ae03          	lw	t3,0(a7)
   19146:	0048af83          	lw	t6,4(a7)
   1914a:	006882b3          	add	t0,a7,t1
   1914e:	00be5e33          	srl	t3,t3,a1
   19152:	01df9fb3          	sll	t6,t6,t4
   19156:	01fe6e33          	or	t3,t3,t6
   1915a:	01c2a023          	sw	t3,0(t0)
   1915e:	0f05                	c.addi	t5,1 # 10001 <exit-0xb3>
   19160:	0891                	c.addi	a7,4
   19162:	b7d9                	c.j	19128 <__multf3+0xaee>
   19164:	00261593          	slli	a1,a2,0x2
   19168:	95b6                	c.add	a1,a3
   1916a:	0005a023          	sw	zero,0(a1)
   1916e:	0605                	c.addi	a2,1
   19170:	fea61ae3          	bne	a2,a0,19164 <__multf3+0xb2a>
   19174:	45c6                	c.lwsp	a1,80(sp)
   19176:	00f037b3          	sltu	a5,zero,a5
   1917a:	8fcd                	c.or	a5,a1
   1917c:	c8be                	c.swsp	a5,80(sp)
   1917e:	0077f593          	andi	a1,a5,7
   19182:	c9a9                	c.beqz	a1,191d4 <__multf3+0xb9a>
   19184:	4509                	c.li	a0,2
   19186:	45f6                	c.lwsp	a1,92(sp)
   19188:	00146413          	ori	s0,s0,1
   1918c:	04a48263          	beq	s1,a0,191d0 <__multf3+0xb96>
   19190:	450d                	c.li	a0,3
   19192:	02a48863          	beq	s1,a0,191c2 <__multf3+0xb88>
   19196:	ec9d                	c.bnez	s1,191d4 <__multf3+0xb9a>
   19198:	00f7f513          	andi	a0,a5,15
   1919c:	02c50c63          	beq	a0,a2,191d4 <__multf3+0xb9a>
   191a0:	0791                	c.addi	a5,4
   191a2:	c8be                	c.swsp	a5,80(sp)
   191a4:	0047b793          	sltiu	a5,a5,4
   191a8:	4656                	c.lwsp	a2,84(sp)
   191aa:	97b2                	c.add	a5,a2
   191ac:	cabe                	c.swsp	a5,84(sp)
   191ae:	00c7b7b3          	sltu	a5,a5,a2
   191b2:	4666                	c.lwsp	a2,88(sp)
   191b4:	97b2                	c.add	a5,a2
   191b6:	ccbe                	c.swsp	a5,88(sp)
   191b8:	00c7b7b3          	sltu	a5,a5,a2
   191bc:	97ae                	c.add	a5,a1
   191be:	cebe                	c.swsp	a5,92(sp)
   191c0:	a811                	c.j	191d4 <__multf3+0xb9a>
   191c2:	00081963          	bne	a6,zero,191d4 <__multf3+0xb9a>
   191c6:	07a1                	c.addi	a5,8
   191c8:	c8be                	c.swsp	a5,80(sp)
   191ca:	0087b793          	sltiu	a5,a5,8
   191ce:	bfe9                	c.j	191a8 <__multf3+0xb6e>
   191d0:	fe081be3          	bne	a6,zero,191c6 <__multf3+0xb8c>
   191d4:	4676                	c.lwsp	a2,92(sp)
   191d6:	00c61793          	slli	a5,a2,0xc
   191da:	0207d063          	bge	a5,zero,191fa <__multf3+0xbc0>
   191de:	ce82                	c.swsp	zero,92(sp)
   191e0:	cc82                	c.swsp	zero,88(sp)
   191e2:	ca82                	c.swsp	zero,84(sp)
   191e4:	c882                	c.swsp	zero,80(sp)
   191e6:	00146413          	ori	s0,s0,1
   191ea:	4785                	c.li	a5,1
   191ec:	da0707e3          	beq	a4,zero,18f9a <__multf3+0x960>
   191f0:	00147713          	andi	a4,s0,1
   191f4:	0706                	c.slli	a4,0x1
   191f6:	8c59                	c.or	s0,a4
   191f8:	b34d                	c.j	18f9a <__multf3+0x960>
   191fa:	00c68513          	addi	a0,a3,12
   191fe:	429c                	c.lw	a5,0(a3)
   19200:	42cc                	c.lw	a1,4(a3)
   19202:	838d                	c.srli	a5,0x3
   19204:	05f6                	c.slli	a1,0x1d
   19206:	8fcd                	c.or	a5,a1
   19208:	c29c                	c.sw	a5,0(a3)
   1920a:	0691                	c.addi	a3,4
   1920c:	fed519e3          	bne	a0,a3,191fe <__multf3+0xbc4>
   19210:	820d                	c.srli	a2,0x3
   19212:	ceb2                	c.swsp	a2,92(sp)
   19214:	4781                	c.li	a5,0
   19216:	bfd9                	c.j	191ec <__multf3+0xbb2>
   19218:	ec081be3          	bne	a6,zero,190ee <__multf3+0xab4>
   1921c:	47a5                	c.li	a5,9
   1921e:	c8be                	c.swsp	a5,80(sp)
   19220:	b5f9                	c.j	190ee <__multf3+0xab4>
   19222:	fe081de3          	bne	a6,zero,1921c <__multf3+0xbe2>
   19226:	b5e1                	c.j	190ee <__multf3+0xab4>
   19228:	67a1                	c.lui	a5,0x8
   1922a:	ce82                	c.swsp	zero,92(sp)
   1922c:	cc82                	c.swsp	zero,88(sp)
   1922e:	ca82                	c.swsp	zero,84(sp)
   19230:	c882                	c.swsp	zero,80(sp)
   19232:	17fd                	c.addi	a5,-1 # 7fff <exit-0x80b5>
   19234:	b39d                	c.j	18f9a <__multf3+0x960>

00019236 <__subtf3>:
   19236:	7159                	c.addi16sp	sp,-112
   19238:	d2a6                	c.swsp	s1,100(sp)
   1923a:	d0ca                	c.swsp	s2,96(sp)
   1923c:	84aa                	c.mv	s1,a0
   1923e:	d686                	c.swsp	ra,108(sp)
   19240:	d4a2                	c.swsp	s0,104(sp)
   19242:	cece                	c.swsp	s3,92(sp)
   19244:	ccd2                	c.swsp	s4,88(sp)
   19246:	cad6                	c.swsp	s5,84(sp)
   19248:	c8da                	c.swsp	s6,80(sp)
   1924a:	c6de                	c.swsp	s7,76(sp)
   1924c:	4194                	c.lw	a3,0(a1)
   1924e:	0045ae03          	lw	t3,4(a1)
   19252:	0085a883          	lw	a7,8(a1)
   19256:	00c5a903          	lw	s2,12(a1)
   1925a:	4218                	c.lw	a4,0(a2)
   1925c:	00462803          	lw	a6,4(a2)
   19260:	4608                	c.lw	a0,8(a2)
   19262:	00c62303          	lw	t1,12(a2)
   19266:	002029f3          	csrrs	s3,frm,zero
   1926a:	01091613          	slli	a2,s2,0x10
   1926e:	00191413          	slli	s0,s2,0x1
   19272:	8241                	c.srli	a2,0x10
   19274:	dc46                	c.swsp	a7,56(sp)
   19276:	de4a                	c.swsp	s2,60(sp)
   19278:	c446                	c.swsp	a7,8(sp)
   1927a:	d836                	c.swsp	a3,48(sp)
   1927c:	da72                	c.swsp	t3,52(sp)
   1927e:	c036                	c.swsp	a3,0(sp)
   19280:	c272                	c.swsp	t3,4(sp)
   19282:	c632                	c.swsp	a2,12(sp)
   19284:	8045                	c.srli	s0,0x11
   19286:	01f95913          	srli	s2,s2,0x1f
   1928a:	8e8a                	c.mv	t4,sp
   1928c:	ff410893          	addi	a7,sp,-12
   19290:	878a                	c.mv	a5,sp
   19292:	8f0a                	c.mv	t5,sp
   19294:	47d0                	c.lw	a2,12(a5)
   19296:	478c                	c.lw	a1,8(a5)
   19298:	17f1                	c.addi	a5,-4
   1929a:	060e                	c.slli	a2,0x3
   1929c:	81f5                	c.srli	a1,0x1d
   1929e:	8e4d                	c.or	a2,a1
   192a0:	cb90                	c.sw	a2,16(a5)
   192a2:	fef899e3          	bne	a7,a5,19294 <__subtf3+0x5e>
   192a6:	01031613          	slli	a2,t1,0x10
   192aa:	01010e13          	addi	t3,sp,16
   192ae:	068e                	c.slli	a3,0x3
   192b0:	da42                	c.swsp	a6,52(sp)
   192b2:	ca42                	c.swsp	a6,20(sp)
   192b4:	8241                	c.srli	a2,0x10
   192b6:	00131813          	slli	a6,t1,0x1
   192ba:	dc2a                	c.swsp	a0,56(sp)
   192bc:	de1a                	c.swsp	t1,60(sp)
   192be:	cc2a                	c.swsp	a0,24(sp)
   192c0:	c036                	c.swsp	a3,0(sp)
   192c2:	d83a                	c.swsp	a4,48(sp)
   192c4:	c83a                	c.swsp	a4,16(sp)
   192c6:	ce32                	c.swsp	a2,28(sp)
   192c8:	01185813          	srli	a6,a6,0x11
   192cc:	01f35313          	srli	t1,t1,0x1f
   192d0:	0048                	c.addi4spn	a0,sp,4
   192d2:	87f2                	c.mv	a5,t3
   192d4:	8ff2                	c.mv	t6,t3
   192d6:	47d0                	c.lw	a2,12(a5)
   192d8:	478c                	c.lw	a1,8(a5)
   192da:	17f1                	c.addi	a5,-4
   192dc:	060e                	c.slli	a2,0x3
   192de:	81f5                	c.srli	a1,0x1d
   192e0:	8e4d                	c.or	a2,a1
   192e2:	cb90                	c.sw	a2,16(a5)
   192e4:	fef519e3          	bne	a0,a5,192d6 <__subtf3+0xa0>
   192e8:	070e                	c.slli	a4,0x3
   192ea:	67a1                	c.lui	a5,0x8
   192ec:	c83a                	c.swsp	a4,16(sp)
   192ee:	17fd                	c.addi	a5,-1 # 7fff <exit-0x80b5>
   192f0:	00f81963          	bne	a6,a5,19302 <__subtf3+0xcc>
   192f4:	4662                	c.lwsp	a2,24(sp)
   192f6:	47d2                	c.lwsp	a5,20(sp)
   192f8:	8fd1                	c.or	a5,a2
   192fa:	4672                	c.lwsp	a2,28(sp)
   192fc:	8fd1                	c.or	a5,a2
   192fe:	8fd9                	c.or	a5,a4
   19300:	e399                	c.bnez	a5,19306 <__subtf3+0xd0>
   19302:	00134313          	xori	t1,t1,1
   19306:	410407b3          	sub	a5,s0,a6
   1930a:	67231463          	bne	t1,s2,19972 <__subtf3+0x73c>
   1930e:	1cf05963          	bge	zero,a5,194e0 <__subtf3+0x2aa>
   19312:	4312                	c.lwsp	t1,4(sp)
   19314:	4ea2                	c.lwsp	t4,8(sp)
   19316:	48b2                	c.lwsp	a7,12(sp)
   19318:	08081963          	bne	a6,zero,193aa <__subtf3+0x174>
   1931c:	4552                	c.lwsp	a0,20(sp)
   1931e:	45e2                	c.lwsp	a1,24(sp)
   19320:	4872                	c.lwsp	a6,28(sp)
   19322:	00b56633          	or	a2,a0,a1
   19326:	01066633          	or	a2,a2,a6
   1932a:	8e59                	c.or	a2,a4
   1932c:	ea05                	c.bnez	a2,1935c <__subtf3+0x126>
   1932e:	6721                	c.lui	a4,0x8
   19330:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   19332:	4401                	c.li	s0,0
   19334:	00e79e63          	bne	a5,a4,19350 <__subtf3+0x11a>
   19338:	01d36733          	or	a4,t1,t4
   1933c:	01176733          	or	a4,a4,a7
   19340:	8f55                	c.or	a4,a3
   19342:	c719                	c.beqz	a4,19350 <__subtf3+0x11a>
   19344:	0128d413          	srli	s0,a7,0x12
   19348:	8805                	c.andi	s0,1
   1934a:	00144413          	xori	s0,s0,1
   1934e:	0412                	c.slli	s0,0x4
   19350:	d036                	c.swsp	a3,32(sp)
   19352:	d21a                	c.swsp	t1,36(sp)
   19354:	d476                	c.swsp	t4,40(sp)
   19356:	d646                	c.swsp	a7,44(sp)
   19358:	4601                	c.li	a2,0
   1935a:	a985                	c.j	197ca <__subtf3+0x594>
   1935c:	fff78613          	addi	a2,a5,-1
   19360:	ea15                	c.bnez	a2,19394 <__subtf3+0x15e>
   19362:	00e68633          	add	a2,a3,a4
   19366:	932a                	c.add	t1,a0
   19368:	00d636b3          	sltu	a3,a2,a3
   1936c:	969a                	c.add	a3,t1
   1936e:	d236                	c.swsp	a3,36(sp)
   19370:	00a33533          	sltu	a0,t1,a0
   19374:	0066b6b3          	sltu	a3,a3,t1
   19378:	9eae                	c.add	t4,a1
   1937a:	8d55                	c.or	a0,a3
   1937c:	9576                	c.add	a0,t4
   1937e:	d42a                	c.swsp	a0,40(sp)
   19380:	00beb733          	sltu	a4,t4,a1
   19384:	01d53533          	sltu	a0,a0,t4
   19388:	8f49                	c.or	a4,a0
   1938a:	9846                	c.add	a6,a7
   1938c:	d032                	c.swsp	a2,32(sp)
   1938e:	9742                	c.add	a4,a6
   19390:	4785                	c.li	a5,1
   19392:	a289                	c.j	194d4 <__subtf3+0x29e>
   19394:	6721                	c.lui	a4,0x8
   19396:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   19398:	6ee795e3          	bne	a5,a4,1a282 <__subtf3+0x104c>
   1939c:	01d36733          	or	a4,t1,t4
   193a0:	01176733          	or	a4,a4,a7
   193a4:	8f55                	c.or	a4,a3
   193a6:	4401                	c.li	s0,0
   193a8:	bf69                	c.j	19342 <__subtf3+0x10c>
   193aa:	6721                	c.lui	a4,0x8
   193ac:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   193ae:	02e41663          	bne	s0,a4,193da <__subtf3+0x1a4>
   193b2:	01d367b3          	or	a5,t1,t4
   193b6:	0117e7b3          	or	a5,a5,a7
   193ba:	8fd5                	c.or	a5,a3
   193bc:	4701                	c.li	a4,0
   193be:	c799                	c.beqz	a5,193cc <__subtf3+0x196>
   193c0:	0128d713          	srli	a4,a7,0x12
   193c4:	8b05                	c.andi	a4,1
   193c6:	00174713          	xori	a4,a4,1
   193ca:	0712                	c.slli	a4,0x4
   193cc:	d036                	c.swsp	a3,32(sp)
   193ce:	d21a                	c.swsp	t1,36(sp)
   193d0:	d476                	c.swsp	t4,40(sp)
   193d2:	d646                	c.swsp	a7,44(sp)
   193d4:	87a2                	c.mv	a5,s0
   193d6:	843a                	c.mv	s0,a4
   193d8:	b741                	c.j	19358 <__subtf3+0x122>
   193da:	4772                	c.lwsp	a4,28(sp)
   193dc:	00080637          	lui	a2,0x80
   193e0:	8f51                	c.or	a4,a2
   193e2:	ce3a                	c.swsp	a4,28(sp)
   193e4:	07400713          	addi	a4,zero,116
   193e8:	6af741e3          	blt	a4,a5,1a28a <__subtf3+0x1054>
   193ec:	863e                	c.mv	a2,a5
   193ee:	40565793          	srai	a5,a2,0x5
   193f2:	01f67813          	andi	a6,a2,31
   193f6:	85f2                	c.mv	a1,t3
   193f8:	4601                	c.li	a2,0
   193fa:	4701                	c.li	a4,0
   193fc:	02f71663          	bne	a4,a5,19428 <__subtf3+0x1f2>
   19400:	470d                	c.li	a4,3
   19402:	40f703b3          	sub	t2,a4,a5
   19406:	00279593          	slli	a1,a5,0x2
   1940a:	02081463          	bne	a6,zero,19432 <__subtf3+0x1fc>
   1940e:	00be0733          	add	a4,t3,a1
   19412:	4318                	c.lw	a4,0(a4)
   19414:	0805                	c.addi	a6,1
   19416:	0e11                	c.addi	t3,4
   19418:	feee2e23          	sw	a4,-4(t3)
   1941c:	ff03d9e3          	bge	t2,a6,1940e <__subtf3+0x1d8>
   19420:	4711                	c.li	a4,4
   19422:	40f707b3          	sub	a5,a4,a5
   19426:	a83d                	c.j	19464 <__subtf3+0x22e>
   19428:	4188                	c.lw	a0,0(a1)
   1942a:	0705                	c.addi	a4,1
   1942c:	0591                	c.addi	a1,4
   1942e:	8e49                	c.or	a2,a0
   19430:	b7f1                	c.j	193fc <__subtf3+0x1c6>
   19432:	00be0733          	add	a4,t3,a1
   19436:	4308                	c.lw	a0,0(a4)
   19438:	02000a13          	addi	s4,zero,32
   1943c:	410a0a33          	sub	s4,s4,a6
   19440:	01451533          	sll	a0,a0,s4
   19444:	8e49                	c.or	a2,a0
   19446:	40b005b3          	sub	a1,zero,a1
   1944a:	4f01                	c.li	t5,0
   1944c:	007f4e63          	blt	t5,t2,19468 <__subtf3+0x232>
   19450:	45f2                	c.lwsp	a1,28(sp)
   19452:	4711                	c.li	a4,4
   19454:	40f707b3          	sub	a5,a4,a5
   19458:	00239713          	slli	a4,t2,0x2
   1945c:	9772                	c.add	a4,t3
   1945e:	0105d5b3          	srl	a1,a1,a6
   19462:	c30c                	c.sw	a1,0(a4)
   19464:	4591                	c.li	a1,4
   19466:	a03d                	c.j	19494 <__subtf3+0x25e>
   19468:	4308                	c.lw	a0,0(a4)
   1946a:	00472283          	lw	t0,4(a4)
   1946e:	00b70ab3          	add	s5,a4,a1
   19472:	01055533          	srl	a0,a0,a6
   19476:	014292b3          	sll	t0,t0,s4
   1947a:	00556533          	or	a0,a0,t0
   1947e:	00aaa023          	sw	a0,0(s5) # 10000 <exit-0xb4>
   19482:	0f05                	c.addi	t5,1
   19484:	0711                	c.addi	a4,4
   19486:	b7d9                	c.j	1944c <__subtf3+0x216>
   19488:	00279713          	slli	a4,a5,0x2
   1948c:	977e                	c.add	a4,t6
   1948e:	00072023          	sw	zero,0(a4)
   19492:	0785                	c.addi	a5,1
   19494:	feb79ae3          	bne	a5,a1,19488 <__subtf3+0x252>
   19498:	47c2                	c.lwsp	a5,16(sp)
   1949a:	00c03633          	sltu	a2,zero,a2
   1949e:	8e5d                	c.or	a2,a5
   194a0:	47d2                	c.lwsp	a5,20(sp)
   194a2:	9636                	c.add	a2,a3
   194a4:	4762                	c.lwsp	a4,24(sp)
   194a6:	933e                	c.add	t1,a5
   194a8:	00d636b3          	sltu	a3,a2,a3
   194ac:	969a                	c.add	a3,t1
   194ae:	d236                	c.swsp	a3,36(sp)
   194b0:	00f337b3          	sltu	a5,t1,a5
   194b4:	0066b6b3          	sltu	a3,a3,t1
   194b8:	9eba                	c.add	t4,a4
   194ba:	8fd5                	c.or	a5,a3
   194bc:	97f6                	c.add	a5,t4
   194be:	d43e                	c.swsp	a5,40(sp)
   194c0:	00eeb733          	sltu	a4,t4,a4
   194c4:	01d7b7b3          	sltu	a5,a5,t4
   194c8:	8f5d                	c.or	a4,a5
   194ca:	47f2                	c.lwsp	a5,28(sp)
   194cc:	d032                	c.swsp	a2,32(sp)
   194ce:	97c6                	c.add	a5,a7
   194d0:	973e                	c.add	a4,a5
   194d2:	87a2                	c.mv	a5,s0
   194d4:	00c71693          	slli	a3,a4,0xc
   194d8:	4206c363          	blt	a3,zero,198fe <__subtf3+0x6c8>
   194dc:	d63a                	c.swsp	a4,44(sp)
   194de:	a929                	c.j	198f8 <__subtf3+0x6c2>
   194e0:	4552                	c.lwsp	a0,20(sp)
   194e2:	48e2                	c.lwsp	a7,24(sp)
   194e4:	4e72                	c.lwsp	t3,28(sp)
   194e6:	1c078e63          	beq	a5,zero,196c2 <__subtf3+0x48c>
   194ea:	408807b3          	sub	a5,a6,s0
   194ee:	e841                	c.bnez	s0,1957e <__subtf3+0x348>
   194f0:	4312                	c.lwsp	t1,4(sp)
   194f2:	45a2                	c.lwsp	a1,8(sp)
   194f4:	4fb2                	c.lwsp	t6,12(sp)
   194f6:	00b36633          	or	a2,t1,a1
   194fa:	01f66633          	or	a2,a2,t6
   194fe:	8e55                	c.or	a2,a3
   19500:	e615                	c.bnez	a2,1952c <__subtf3+0x2f6>
   19502:	66a1                	c.lui	a3,0x8
   19504:	16fd                	c.addi	a3,-1 # 7fff <exit-0x80b5>
   19506:	00d79e63          	bne	a5,a3,19522 <__subtf3+0x2ec>
   1950a:	011566b3          	or	a3,a0,a7
   1950e:	01c6e6b3          	or	a3,a3,t3
   19512:	8ed9                	c.or	a3,a4
   19514:	c699                	c.beqz	a3,19522 <__subtf3+0x2ec>
   19516:	012e5413          	srli	s0,t3,0x12
   1951a:	8805                	c.andi	s0,1
   1951c:	00144413          	xori	s0,s0,1
   19520:	0412                	c.slli	s0,0x4
   19522:	d03a                	c.swsp	a4,32(sp)
   19524:	d22a                	c.swsp	a0,36(sp)
   19526:	d446                	c.swsp	a7,40(sp)
   19528:	d672                	c.swsp	t3,44(sp)
   1952a:	b53d                	c.j	19358 <__subtf3+0x122>
   1952c:	fff78a13          	addi	s4,a5,-1
   19530:	020a1c63          	bne	s4,zero,19568 <__subtf3+0x332>
   19534:	00e68633          	add	a2,a3,a4
   19538:	951a                	c.add	a0,t1
   1953a:	00d636b3          	sltu	a3,a2,a3
   1953e:	96aa                	c.add	a3,a0
   19540:	d236                	c.swsp	a3,36(sp)
   19542:	00653333          	sltu	t1,a0,t1
   19546:	00a6b6b3          	sltu	a3,a3,a0
   1954a:	98ae                	c.add	a7,a1
   1954c:	00d36333          	or	t1,t1,a3
   19550:	9346                	c.add	t1,a7
   19552:	d41a                	c.swsp	t1,40(sp)
   19554:	00b8b733          	sltu	a4,a7,a1
   19558:	01133333          	sltu	t1,t1,a7
   1955c:	00676733          	or	a4,a4,t1
   19560:	9ff2                	c.add	t6,t3
   19562:	d032                	c.swsp	a2,32(sp)
   19564:	977e                	c.add	a4,t6
   19566:	b52d                	c.j	19390 <__subtf3+0x15a>
   19568:	66a1                	c.lui	a3,0x8
   1956a:	16fd                	c.addi	a3,-1 # 7fff <exit-0x80b5>
   1956c:	52d795e3          	bne	a5,a3,1a296 <__subtf3+0x1060>
   19570:	011566b3          	or	a3,a0,a7
   19574:	01c6e6b3          	or	a3,a3,t3
   19578:	8ed9                	c.or	a3,a4
   1957a:	4401                	c.li	s0,0
   1957c:	bf61                	c.j	19514 <__subtf3+0x2de>
   1957e:	66a1                	c.lui	a3,0x8
   19580:	16fd                	c.addi	a3,-1 # 7fff <exit-0x80b5>
   19582:	02d81563          	bne	a6,a3,195ac <__subtf3+0x376>
   19586:	011567b3          	or	a5,a0,a7
   1958a:	01c7e7b3          	or	a5,a5,t3
   1958e:	8fd9                	c.or	a5,a4
   19590:	4401                	c.li	s0,0
   19592:	c799                	c.beqz	a5,195a0 <__subtf3+0x36a>
   19594:	012e5413          	srli	s0,t3,0x12
   19598:	8805                	c.andi	s0,1
   1959a:	00144413          	xori	s0,s0,1
   1959e:	0412                	c.slli	s0,0x4
   195a0:	d03a                	c.swsp	a4,32(sp)
   195a2:	d22a                	c.swsp	a0,36(sp)
   195a4:	d446                	c.swsp	a7,40(sp)
   195a6:	d672                	c.swsp	t3,44(sp)
   195a8:	87c2                	c.mv	a5,a6
   195aa:	b37d                	c.j	19358 <__subtf3+0x122>
   195ac:	46b2                	c.lwsp	a3,12(sp)
   195ae:	00080637          	lui	a2,0x80
   195b2:	8ed1                	c.or	a3,a2
   195b4:	c636                	c.swsp	a3,12(sp)
   195b6:	07400693          	addi	a3,zero,116
   195ba:	4ef6c2e3          	blt	a3,a5,1a29e <__subtf3+0x1068>
   195be:	8a3e                	c.mv	s4,a5
   195c0:	02000793          	addi	a5,zero,32
   195c4:	02fa47b3          	div	a5,s4,a5
   195c8:	85f6                	c.mv	a1,t4
   195ca:	4601                	c.li	a2,0
   195cc:	4681                	c.li	a3,0
   195ce:	02f6c863          	blt	a3,a5,195fe <__subtf3+0x3c8>
   195d2:	468d                	c.li	a3,3
   195d4:	01fa7393          	andi	t2,s4,31
   195d8:	40f682b3          	sub	t0,a3,a5
   195dc:	00279593          	slli	a1,a5,0x2
   195e0:	02039663          	bne	t2,zero,1960c <__subtf3+0x3d6>
   195e4:	00be86b3          	add	a3,t4,a1
   195e8:	4294                	c.lw	a3,0(a3)
   195ea:	0385                	c.addi	t2,1
   195ec:	0e91                	c.addi	t4,4
   195ee:	fedeae23          	sw	a3,-4(t4)
   195f2:	fe72d9e3          	bge	t0,t2,195e4 <__subtf3+0x3ae>
   195f6:	4691                	c.li	a3,4
   195f8:	40f687b3          	sub	a5,a3,a5
   195fc:	a889                	c.j	1964e <__subtf3+0x418>
   195fe:	0005a303          	lw	t1,0(a1)
   19602:	0685                	c.addi	a3,1
   19604:	0591                	c.addi	a1,4
   19606:	00666633          	or	a2,a2,t1
   1960a:	b7d1                	c.j	195ce <__subtf3+0x398>
   1960c:	02000413          	addi	s0,zero,32
   19610:	028a6a33          	rem	s4,s4,s0
   19614:	fff7c693          	xori	a3,a5,-1
   19618:	86fd                	c.srai	a3,0x1f
   1961a:	8efd                	c.and	a3,a5
   1961c:	068a                	c.slli	a3,0x2
   1961e:	96f6                	c.add	a3,t4
   19620:	4294                	c.lw	a3,0(a3)
   19622:	00be8333          	add	t1,t4,a1
   19626:	40b005b3          	sub	a1,zero,a1
   1962a:	41440433          	sub	s0,s0,s4
   1962e:	008696b3          	sll	a3,a3,s0
   19632:	8e55                	c.or	a2,a3
   19634:	4681                	c.li	a3,0
   19636:	0056ce63          	blt	a3,t0,19652 <__subtf3+0x41c>
   1963a:	45b2                	c.lwsp	a1,12(sp)
   1963c:	4691                	c.li	a3,4
   1963e:	40f687b3          	sub	a5,a3,a5
   19642:	00229693          	slli	a3,t0,0x2
   19646:	96f6                	c.add	a3,t4
   19648:	0075d5b3          	srl	a1,a1,t2
   1964c:	c28c                	c.sw	a1,0(a3)
   1964e:	458d                	c.li	a1,3
   19650:	a805                	c.j	19680 <__subtf3+0x44a>
   19652:	00032f83          	lw	t6,0(t1)
   19656:	00432a03          	lw	s4,4(t1)
   1965a:	00b30ab3          	add	s5,t1,a1
   1965e:	007fdfb3          	srl	t6,t6,t2
   19662:	008a1a33          	sll	s4,s4,s0
   19666:	014fefb3          	or	t6,t6,s4
   1966a:	01faa023          	sw	t6,0(s5)
   1966e:	0685                	c.addi	a3,1
   19670:	0311                	c.addi	t1,4
   19672:	b7d1                	c.j	19636 <__subtf3+0x400>
   19674:	00279693          	slli	a3,a5,0x2
   19678:	96fa                	c.add	a3,t5
   1967a:	0006a023          	sw	zero,0(a3)
   1967e:	0785                	c.addi	a5,1
   19680:	fef5dae3          	bge	a1,a5,19674 <__subtf3+0x43e>
   19684:	4782                	c.lwsp	a5,0(sp)
   19686:	00c03633          	sltu	a2,zero,a2
   1968a:	8e5d                	c.or	a2,a5
   1968c:	4692                	c.lwsp	a3,4(sp)
   1968e:	47a2                	c.lwsp	a5,8(sp)
   19690:	963a                	c.add	a2,a4
   19692:	9536                	c.add	a0,a3
   19694:	00e63733          	sltu	a4,a2,a4
   19698:	972a                	c.add	a4,a0
   1969a:	98be                	c.add	a7,a5
   1969c:	d23a                	c.swsp	a4,36(sp)
   1969e:	00d536b3          	sltu	a3,a0,a3
   196a2:	00a73733          	sltu	a4,a4,a0
   196a6:	8ed9                	c.or	a3,a4
   196a8:	00f8b733          	sltu	a4,a7,a5
   196ac:	47b2                	c.lwsp	a5,12(sp)
   196ae:	96c6                	c.add	a3,a7
   196b0:	d436                	c.swsp	a3,40(sp)
   196b2:	0116b6b3          	sltu	a3,a3,a7
   196b6:	97f2                	c.add	a5,t3
   196b8:	8f55                	c.or	a4,a3
   196ba:	973e                	c.add	a4,a5
   196bc:	d032                	c.swsp	a2,32(sp)
   196be:	87c2                	c.mv	a5,a6
   196c0:	bd11                	c.j	194d4 <__subtf3+0x29e>
   196c2:	6621                	c.lui	a2,0x8
   196c4:	00140793          	addi	a5,s0,1
   196c8:	1679                	c.addi	a2,-2 # 7ffe <exit-0x80b6>
   196ca:	8e7d                	c.and	a2,a5
   196cc:	4592                	c.lwsp	a1,4(sp)
   196ce:	4322                	c.lwsp	t1,8(sp)
   196d0:	4eb2                	c.lwsp	t4,12(sp)
   196d2:	1c061963          	bne	a2,zero,198a4 <__subtf3+0x66e>
   196d6:	0065e7b3          	or	a5,a1,t1
   196da:	01d7e7b3          	or	a5,a5,t4
   196de:	8fd5                	c.or	a5,a3
   196e0:	12041c63          	bne	s0,zero,19818 <__subtf3+0x5e2>
   196e4:	e7c9                	c.bnez	a5,1976e <__subtf3+0x538>
   196e6:	d03a                	c.swsp	a4,32(sp)
   196e8:	d22a                	c.swsp	a0,36(sp)
   196ea:	d446                	c.swsp	a7,40(sp)
   196ec:	d672                	c.swsp	t3,44(sp)
   196ee:	5592                	c.lwsp	a1,36(sp)
   196f0:	5622                	c.lwsp	a2,40(sp)
   196f2:	56b2                	c.lwsp	a3,44(sp)
   196f4:	00c5e7b3          	or	a5,a1,a2
   196f8:	8fd5                	c.or	a5,a3
   196fa:	8fd9                	c.or	a5,a4
   196fc:	28078ce3          	beq	a5,zero,1a194 <__subtf3+0xf5e>
   19700:	da2e                	c.swsp	a1,52(sp)
   19702:	d83a                	c.swsp	a4,48(sp)
   19704:	dc32                	c.swsp	a2,56(sp)
   19706:	de36                	c.swsp	a3,60(sp)
   19708:	181c                	c.addi4spn	a5,sp,48
   1970a:	104c                	c.addi4spn	a1,sp,36
   1970c:	47d4                	c.lw	a3,12(a5)
   1970e:	4790                	c.lw	a2,8(a5)
   19710:	17f1                	c.addi	a5,-4
   19712:	0686                	c.slli	a3,0x1
   19714:	827d                	c.srli	a2,0x1f
   19716:	8ed1                	c.or	a3,a2
   19718:	cb94                	c.sw	a3,16(a5)
   1971a:	fef599e3          	bne	a1,a5,1970c <__subtf3+0x4d6>
   1971e:	0706                	c.slli	a4,0x1
   19720:	00777793          	andi	a5,a4,7
   19724:	4401                	c.li	s0,0
   19726:	cf8d                	c.beqz	a5,19760 <__subtf3+0x52a>
   19728:	4789                	c.li	a5,2
   1972a:	56f2                	c.lwsp	a3,60(sp)
   1972c:	26f981e3          	beq	s3,a5,1a18e <__subtf3+0xf58>
   19730:	478d                	c.li	a5,3
   19732:	24f987e3          	beq	s3,a5,1a180 <__subtf3+0xf4a>
   19736:	02099463          	bne	s3,zero,1975e <__subtf3+0x528>
   1973a:	00f77793          	andi	a5,a4,15
   1973e:	4611                	c.li	a2,4
   19740:	00c78f63          	beq	a5,a2,1975e <__subtf3+0x528>
   19744:	9732                	c.add	a4,a2
   19746:	00473713          	sltiu	a4,a4,4
   1974a:	57d2                	c.lwsp	a5,52(sp)
   1974c:	97ba                	c.add	a5,a4
   1974e:	00e7b733          	sltu	a4,a5,a4
   19752:	57e2                	c.lwsp	a5,56(sp)
   19754:	97ba                	c.add	a5,a4
   19756:	00e7b7b3          	sltu	a5,a5,a4
   1975a:	97b6                	c.add	a5,a3
   1975c:	de3e                	c.swsp	a5,60(sp)
   1975e:	4405                	c.li	s0,1
   19760:	5672                	c.lwsp	a2,60(sp)
   19762:	4781                	c.li	a5,0
   19764:	8251                	c.srli	a2,0x14
   19766:	8a05                	c.andi	a2,1
   19768:	00164613          	xori	a2,a2,1
   1976c:	a8b9                	c.j	197ca <__subtf3+0x594>
   1976e:	011567b3          	or	a5,a0,a7
   19772:	01c7e7b3          	or	a5,a5,t3
   19776:	8fd9                	c.or	a5,a4
   19778:	e799                	c.bnez	a5,19786 <__subtf3+0x550>
   1977a:	d036                	c.swsp	a3,32(sp)
   1977c:	d22e                	c.swsp	a1,36(sp)
   1977e:	d41a                	c.swsp	t1,40(sp)
   19780:	d676                	c.swsp	t4,44(sp)
   19782:	8736                	c.mv	a4,a3
   19784:	b7ad                	c.j	196ee <__subtf3+0x4b8>
   19786:	9736                	c.add	a4,a3
   19788:	952e                	c.add	a0,a1
   1978a:	00d736b3          	sltu	a3,a4,a3
   1978e:	96aa                	c.add	a3,a0
   19790:	d236                	c.swsp	a3,36(sp)
   19792:	00b535b3          	sltu	a1,a0,a1
   19796:	00a6b6b3          	sltu	a3,a3,a0
   1979a:	989a                	c.add	a7,t1
   1979c:	8dd5                	c.or	a1,a3
   1979e:	95c6                	c.add	a1,a7
   197a0:	d42e                	c.swsp	a1,40(sp)
   197a2:	0068b333          	sltu	t1,a7,t1
   197a6:	0115b5b3          	sltu	a1,a1,a7
   197aa:	00b36333          	or	t1,t1,a1
   197ae:	9ef2                	c.add	t4,t3
   197b0:	9376                	c.add	t1,t4
   197b2:	d03a                	c.swsp	a4,32(sp)
   197b4:	00c31793          	slli	a5,t1,0xc
   197b8:	1a07dee3          	bge	a5,zero,1a174 <__subtf3+0xf3e>
   197bc:	fff807b7          	lui	a5,0xfff80
   197c0:	17fd                	c.addi	a5,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   197c2:	00f37333          	and	t1,t1,a5
   197c6:	d61a                	c.swsp	t1,44(sp)
   197c8:	4785                	c.li	a5,1
   197ca:	5702                	c.lwsp	a4,32(sp)
   197cc:	00777693          	andi	a3,a4,7
   197d0:	1c068fe3          	beq	a3,zero,1a1ae <__subtf3+0xf78>
   197d4:	4589                	c.li	a1,2
   197d6:	56b2                	c.lwsp	a3,44(sp)
   197d8:	00146413          	ori	s0,s0,1
   197dc:	1cb987e3          	beq	s3,a1,1a1aa <__subtf3+0xf74>
   197e0:	458d                	c.li	a1,3
   197e2:	1ab98ce3          	beq	s3,a1,1a19a <__subtf3+0xf64>
   197e6:	1c0994e3          	bne	s3,zero,1a1ae <__subtf3+0xf78>
   197ea:	00f77593          	andi	a1,a4,15
   197ee:	4511                	c.li	a0,4
   197f0:	1aa58fe3          	beq	a1,a0,1a1ae <__subtf3+0xf78>
   197f4:	972a                	c.add	a4,a0
   197f6:	d03a                	c.swsp	a4,32(sp)
   197f8:	00473713          	sltiu	a4,a4,4
   197fc:	5592                	c.lwsp	a1,36(sp)
   197fe:	972e                	c.add	a4,a1
   19800:	d23a                	c.swsp	a4,36(sp)
   19802:	00b73733          	sltu	a4,a4,a1
   19806:	55a2                	c.lwsp	a1,40(sp)
   19808:	972e                	c.add	a4,a1
   1980a:	d43a                	c.swsp	a4,40(sp)
   1980c:	00b73733          	sltu	a4,a4,a1
   19810:	9736                	c.add	a4,a3
   19812:	d63a                	c.swsp	a4,44(sp)
   19814:	19b0006f          	jal	zero,1a1ae <__subtf3+0xf78>
   19818:	6f21                	c.lui	t5,0x8
   1981a:	1f7d                	c.addi	t5,-1 # 7fff <exit-0x80b5>
   1981c:	03e41b63          	bne	s0,t5,19852 <__subtf3+0x61c>
   19820:	2a0787e3          	beq	a5,zero,1a2ce <__subtf3+0x1098>
   19824:	012ed413          	srli	s0,t4,0x12
   19828:	8805                	c.andi	s0,1
   1982a:	00144413          	xori	s0,s0,1
   1982e:	0412                	c.slli	s0,0x4
   19830:	05e81263          	bne	a6,t5,19874 <__subtf3+0x63e>
   19834:	01156833          	or	a6,a0,a7
   19838:	01c86833          	or	a6,a6,t3
   1983c:	00e86833          	or	a6,a6,a4
   19840:	00080c63          	beq	a6,zero,19858 <__subtf3+0x622>
   19844:	00de1813          	slli	a6,t3,0xd
   19848:	00084863          	blt	a6,zero,19858 <__subtf3+0x622>
   1984c:	4441                	c.li	s0,16
   1984e:	c791                	c.beqz	a5,1985a <__subtf3+0x624>
   19850:	a805                	c.j	19880 <__subtf3+0x64a>
   19852:	4401                	c.li	s0,0
   19854:	ffe800e3          	beq	a6,t5,19834 <__subtf3+0x5fe>
   19858:	ef91                	c.bnez	a5,19874 <__subtf3+0x63e>
   1985a:	86ba                	c.mv	a3,a4
   1985c:	85aa                	c.mv	a1,a0
   1985e:	8346                	c.mv	t1,a7
   19860:	8ef2                	c.mv	t4,t3
   19862:	d036                	c.swsp	a3,32(sp)
   19864:	d22e                	c.swsp	a1,36(sp)
   19866:	d41a                	c.swsp	t1,40(sp)
   19868:	d676                	c.swsp	t4,44(sp)
   1986a:	67a1                	c.lui	a5,0x8
   1986c:	17fd                	c.addi	a5,-1 # 7fff <exit-0x80b5>
   1986e:	bfb1                	c.j	197ca <__subtf3+0x594>
   19870:	4401                	c.li	s0,0
   19872:	b7c9                	c.j	19834 <__subtf3+0x5fe>
   19874:	01156533          	or	a0,a0,a7
   19878:	01c56533          	or	a0,a0,t3
   1987c:	8d59                	c.or	a0,a4
   1987e:	d175                	c.beqz	a0,19862 <__subtf3+0x62c>
   19880:	67a1                	c.lui	a5,0x8
   19882:	d63e                	c.swsp	a5,44(sp)
   19884:	d402                	c.swsp	zero,40(sp)
   19886:	d202                	c.swsp	zero,36(sp)
   19888:	d002                	c.swsp	zero,32(sp)
   1988a:	101c                	c.addi4spn	a5,sp,32
   1988c:	084c                	c.addi4spn	a1,sp,20
   1988e:	47d8                	c.lw	a4,12(a5)
   19890:	4794                	c.lw	a3,8(a5)
   19892:	17f1                	c.addi	a5,-4 # 7ffc <exit-0x80b8>
   19894:	070e                	c.slli	a4,0x3
   19896:	82f5                	c.srli	a3,0x1d
   19898:	8f55                	c.or	a4,a3
   1989a:	cb98                	c.sw	a4,16(a5)
   1989c:	fef599e3          	bne	a1,a5,1988e <__subtf3+0x658>
   198a0:	4901                	c.li	s2,0
   198a2:	b7e1                	c.j	1986a <__subtf3+0x634>
   198a4:	9736                	c.add	a4,a3
   198a6:	952e                	c.add	a0,a1
   198a8:	d03a                	c.swsp	a4,32(sp)
   198aa:	00d73733          	sltu	a4,a4,a3
   198ae:	972a                	c.add	a4,a0
   198b0:	d23a                	c.swsp	a4,36(sp)
   198b2:	00b535b3          	sltu	a1,a0,a1
   198b6:	00a73733          	sltu	a4,a4,a0
   198ba:	989a                	c.add	a7,t1
   198bc:	8dd9                	c.or	a1,a4
   198be:	95c6                	c.add	a1,a7
   198c0:	d42e                	c.swsp	a1,40(sp)
   198c2:	0068b333          	sltu	t1,a7,t1
   198c6:	0115b5b3          	sltu	a1,a1,a7
   198ca:	00b36333          	or	t1,t1,a1
   198ce:	9ef2                	c.add	t4,t3
   198d0:	9376                	c.add	t1,t4
   198d2:	d61a                	c.swsp	t1,44(sp)
   198d4:	1018                	c.addi4spn	a4,sp,32
   198d6:	106c                	c.addi4spn	a1,sp,44
   198d8:	4314                	c.lw	a3,0(a4)
   198da:	4350                	c.lw	a2,4(a4)
   198dc:	8285                	c.srli	a3,0x1
   198de:	067e                	c.slli	a2,0x1f
   198e0:	8ed1                	c.or	a3,a2
   198e2:	c314                	c.sw	a3,0(a4)
   198e4:	0711                	c.addi	a4,4
   198e6:	fee599e3          	bne	a1,a4,198d8 <__subtf3+0x6a2>
   198ea:	6721                	c.lui	a4,0x8
   198ec:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   198ee:	04e78563          	beq	a5,a4,19938 <__subtf3+0x702>
   198f2:	00135313          	srli	t1,t1,0x1
   198f6:	d61a                	c.swsp	t1,44(sp)
   198f8:	4601                	c.li	a2,0
   198fa:	4401                	c.li	s0,0
   198fc:	b5f9                	c.j	197ca <__subtf3+0x594>
   198fe:	fff806b7          	lui	a3,0xfff80
   19902:	16fd                	c.addi	a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   19904:	8f75                	c.and	a4,a3
   19906:	d63a                	c.swsp	a4,44(sp)
   19908:	0785                	c.addi	a5,1
   1990a:	067e                	c.slli	a2,0x1f
   1990c:	1014                	c.addi4spn	a3,sp,32
   1990e:	02c10813          	addi	a6,sp,44
   19912:	428c                	c.lw	a1,0(a3)
   19914:	42c8                	c.lw	a0,4(a3)
   19916:	8185                	c.srli	a1,0x1
   19918:	057e                	c.slli	a0,0x1f
   1991a:	8dc9                	c.or	a1,a0
   1991c:	c28c                	c.sw	a1,0(a3)
   1991e:	0691                	c.addi	a3,4
   19920:	ff0699e3          	bne	a3,a6,19912 <__subtf3+0x6dc>
   19924:	8305                	c.srli	a4,0x1
   19926:	d63a                	c.swsp	a4,44(sp)
   19928:	5702                	c.lwsp	a4,32(sp)
   1992a:	827d                	c.srli	a2,0x1f
   1992c:	8f51                	c.or	a4,a2
   1992e:	d03a                	c.swsp	a4,32(sp)
   19930:	6721                	c.lui	a4,0x8
   19932:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   19934:	fce792e3          	bne	a5,a4,198f8 <__subtf3+0x6c2>
   19938:	02098463          	beq	s3,zero,19960 <__subtf3+0x72a>
   1993c:	478d                	c.li	a5,3
   1993e:	00f99c63          	bne	s3,a5,19956 <__subtf3+0x720>
   19942:	00090f63          	beq	s2,zero,19960 <__subtf3+0x72a>
   19946:	57fd                	c.li	a5,-1
   19948:	d63e                	c.swsp	a5,44(sp)
   1994a:	d43e                	c.swsp	a5,40(sp)
   1994c:	d23e                	c.swsp	a5,36(sp)
   1994e:	d03e                	c.swsp	a5,32(sp)
   19950:	67a1                	c.lui	a5,0x8
   19952:	17f9                	c.addi	a5,-2 # 7ffe <exit-0x80b6>
   19954:	a821                	c.j	1996c <__subtf3+0x736>
   19956:	4789                	c.li	a5,2
   19958:	fef997e3          	bne	s3,a5,19946 <__subtf3+0x710>
   1995c:	fe0905e3          	beq	s2,zero,19946 <__subtf3+0x710>
   19960:	67a1                	c.lui	a5,0x8
   19962:	d602                	c.swsp	zero,44(sp)
   19964:	d402                	c.swsp	zero,40(sp)
   19966:	d202                	c.swsp	zero,36(sp)
   19968:	d002                	c.swsp	zero,32(sp)
   1996a:	17fd                	c.addi	a5,-1 # 7fff <exit-0x80b5>
   1996c:	4601                	c.li	a2,0
   1996e:	4415                	c.li	s0,5
   19970:	bda9                	c.j	197ca <__subtf3+0x594>
   19972:	20f05a63          	bge	zero,a5,19b86 <__subtf3+0x950>
   19976:	4592                	c.lwsp	a1,4(sp)
   19978:	48a2                	c.lwsp	a7,8(sp)
   1997a:	4332                	c.lwsp	t1,12(sp)
   1997c:	0a081363          	bne	a6,zero,19a22 <__subtf3+0x7ec>
   19980:	4852                	c.lwsp	a6,20(sp)
   19982:	42e2                	c.lwsp	t0,24(sp)
   19984:	4572                	c.lwsp	a0,28(sp)
   19986:	00586633          	or	a2,a6,t0
   1998a:	8e49                	c.or	a2,a0
   1998c:	8e59                	c.or	a2,a4
   1998e:	e61d                	c.bnez	a2,199bc <__subtf3+0x786>
   19990:	6721                	c.lui	a4,0x8
   19992:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   19994:	4401                	c.li	s0,0
   19996:	00e79e63          	bne	a5,a4,199b2 <__subtf3+0x77c>
   1999a:	0115e733          	or	a4,a1,a7
   1999e:	00676733          	or	a4,a4,t1
   199a2:	8f55                	c.or	a4,a3
   199a4:	c719                	c.beqz	a4,199b2 <__subtf3+0x77c>
   199a6:	01235413          	srli	s0,t1,0x12
   199aa:	8805                	c.andi	s0,1
   199ac:	00144413          	xori	s0,s0,1
   199b0:	0412                	c.slli	s0,0x4
   199b2:	d036                	c.swsp	a3,32(sp)
   199b4:	d22e                	c.swsp	a1,36(sp)
   199b6:	d446                	c.swsp	a7,40(sp)
   199b8:	d61a                	c.swsp	t1,44(sp)
   199ba:	ba79                	c.j	19358 <__subtf3+0x122>
   199bc:	fff78f13          	addi	t5,a5,-1
   199c0:	040f1663          	bne	t5,zero,19a0c <__subtf3+0x7d6>
   199c4:	40e68633          	sub	a2,a3,a4
   199c8:	41058eb3          	sub	t4,a1,a6
   199cc:	00c6b733          	sltu	a4,a3,a2
   199d0:	01d5b7b3          	sltu	a5,a1,t4
   199d4:	40ee8eb3          	sub	t4,t4,a4
   199d8:	4701                	c.li	a4,0
   199da:	00c6f663          	bgeu	a3,a2,199e6 <__subtf3+0x7b0>
   199de:	40b80833          	sub	a6,a6,a1
   199e2:	00183713          	sltiu	a4,a6,1
   199e6:	00f766b3          	or	a3,a4,a5
   199ea:	40588733          	sub	a4,a7,t0
   199ee:	00e8b5b3          	sltu	a1,a7,a4
   199f2:	8f15                	c.sub	a4,a3
   199f4:	c689                	c.beqz	a3,199fe <__subtf3+0x7c8>
   199f6:	411287b3          	sub	a5,t0,a7
   199fa:	0017bf13          	sltiu	t5,a5,1
   199fe:	40a30533          	sub	a0,t1,a0
   19a02:	00bf67b3          	or	a5,t5,a1
   19a06:	8d1d                	c.sub	a0,a5
   19a08:	4785                	c.li	a5,1
   19a0a:	aab9                	c.j	19b68 <__subtf3+0x932>
   19a0c:	6721                	c.lui	a4,0x8
   19a0e:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   19a10:	08e79de3          	bne	a5,a4,1a2aa <__subtf3+0x1074>
   19a14:	0115e733          	or	a4,a1,a7
   19a18:	00676733          	or	a4,a4,t1
   19a1c:	8f55                	c.or	a4,a3
   19a1e:	4401                	c.li	s0,0
   19a20:	b751                	c.j	199a4 <__subtf3+0x76e>
   19a22:	6721                	c.lui	a4,0x8
   19a24:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   19a26:	02e41463          	bne	s0,a4,19a4e <__subtf3+0x818>
   19a2a:	0115e7b3          	or	a5,a1,a7
   19a2e:	0067e7b3          	or	a5,a5,t1
   19a32:	8fd5                	c.or	a5,a3
   19a34:	4701                	c.li	a4,0
   19a36:	c799                	c.beqz	a5,19a44 <__subtf3+0x80e>
   19a38:	01235713          	srli	a4,t1,0x12
   19a3c:	8b05                	c.andi	a4,1
   19a3e:	00174713          	xori	a4,a4,1
   19a42:	0712                	c.slli	a4,0x4
   19a44:	d036                	c.swsp	a3,32(sp)
   19a46:	d22e                	c.swsp	a1,36(sp)
   19a48:	d446                	c.swsp	a7,40(sp)
   19a4a:	d61a                	c.swsp	t1,44(sp)
   19a4c:	b261                	c.j	193d4 <__subtf3+0x19e>
   19a4e:	4772                	c.lwsp	a4,28(sp)
   19a50:	00080637          	lui	a2,0x80
   19a54:	8f51                	c.or	a4,a2
   19a56:	ce3a                	c.swsp	a4,28(sp)
   19a58:	07400713          	addi	a4,zero,116
   19a5c:	04f74be3          	blt	a4,a5,1a2b2 <__subtf3+0x107c>
   19a60:	8f3e                	c.mv	t5,a5
   19a62:	405f5793          	srai	a5,t5,0x5
   19a66:	8572                	c.mv	a0,t3
   19a68:	01ff7f13          	andi	t5,t5,31
   19a6c:	4601                	c.li	a2,0
   19a6e:	4701                	c.li	a4,0
   19a70:	02f71663          	bne	a4,a5,19a9c <__subtf3+0x866>
   19a74:	470d                	c.li	a4,3
   19a76:	40f703b3          	sub	t2,a4,a5
   19a7a:	00279513          	slli	a0,a5,0x2
   19a7e:	020f1663          	bne	t5,zero,19aaa <__subtf3+0x874>
   19a82:	00ae0733          	add	a4,t3,a0
   19a86:	4318                	c.lw	a4,0(a4)
   19a88:	0f05                	c.addi	t5,1
   19a8a:	0e11                	c.addi	t3,4
   19a8c:	feee2e23          	sw	a4,-4(t3)
   19a90:	ffe3d9e3          	bge	t2,t5,19a82 <__subtf3+0x84c>
   19a94:	4711                	c.li	a4,4
   19a96:	40f707b3          	sub	a5,a4,a5
   19a9a:	a099                	c.j	19ae0 <__subtf3+0x8aa>
   19a9c:	00052803          	lw	a6,0(a0)
   19aa0:	0705                	c.addi	a4,1
   19aa2:	0511                	c.addi	a0,4
   19aa4:	01066633          	or	a2,a2,a6
   19aa8:	b7e1                	c.j	19a70 <__subtf3+0x83a>
   19aaa:	00ae0733          	add	a4,t3,a0
   19aae:	00072803          	lw	a6,0(a4)
   19ab2:	02000a13          	addi	s4,zero,32
   19ab6:	41ea0a33          	sub	s4,s4,t5
   19aba:	01481833          	sll	a6,a6,s4
   19abe:	01066633          	or	a2,a2,a6
   19ac2:	40a00533          	sub	a0,zero,a0
   19ac6:	4e81                	c.li	t4,0
   19ac8:	007ece63          	blt	t4,t2,19ae4 <__subtf3+0x8ae>
   19acc:	4572                	c.lwsp	a0,28(sp)
   19ace:	4711                	c.li	a4,4
   19ad0:	40f707b3          	sub	a5,a4,a5
   19ad4:	00239713          	slli	a4,t2,0x2
   19ad8:	9772                	c.add	a4,t3
   19ada:	01e55533          	srl	a0,a0,t5
   19ade:	c308                	c.sw	a0,0(a4)
   19ae0:	4511                	c.li	a0,4
   19ae2:	a805                	c.j	19b12 <__subtf3+0x8dc>
   19ae4:	00072803          	lw	a6,0(a4)
   19ae8:	00472283          	lw	t0,4(a4)
   19aec:	00a70ab3          	add	s5,a4,a0
   19af0:	01e85833          	srl	a6,a6,t5
   19af4:	014292b3          	sll	t0,t0,s4
   19af8:	00586833          	or	a6,a6,t0
   19afc:	010aa023          	sw	a6,0(s5)
   19b00:	0e85                	c.addi	t4,1
   19b02:	0711                	c.addi	a4,4
   19b04:	b7d1                	c.j	19ac8 <__subtf3+0x892>
   19b06:	00279713          	slli	a4,a5,0x2
   19b0a:	977e                	c.add	a4,t6
   19b0c:	00072023          	sw	zero,0(a4)
   19b10:	0785                	c.addi	a5,1
   19b12:	fea79ae3          	bne	a5,a0,19b06 <__subtf3+0x8d0>
   19b16:	47c2                	c.lwsp	a5,16(sp)
   19b18:	00c03633          	sltu	a2,zero,a2
   19b1c:	8e5d                	c.or	a2,a5
   19b1e:	4752                	c.lwsp	a4,20(sp)
   19b20:	40c68633          	sub	a2,a3,a2
   19b24:	00c6b7b3          	sltu	a5,a3,a2
   19b28:	40e58eb3          	sub	t4,a1,a4
   19b2c:	01d5b533          	sltu	a0,a1,t4
   19b30:	40fe8eb3          	sub	t4,t4,a5
   19b34:	4781                	c.li	a5,0
   19b36:	00c6f563          	bgeu	a3,a2,19b40 <__subtf3+0x90a>
   19b3a:	8f0d                	c.sub	a4,a1
   19b3c:	00173793          	sltiu	a5,a4,1
   19b40:	45e2                	c.lwsp	a1,24(sp)
   19b42:	8fc9                	c.or	a5,a0
   19b44:	4681                	c.li	a3,0
   19b46:	40b88733          	sub	a4,a7,a1
   19b4a:	00e8b833          	sltu	a6,a7,a4
   19b4e:	8f1d                	c.sub	a4,a5
   19b50:	c789                	c.beqz	a5,19b5a <__subtf3+0x924>
   19b52:	411585b3          	sub	a1,a1,a7
   19b56:	0015b693          	sltiu	a3,a1,1
   19b5a:	4572                	c.lwsp	a0,28(sp)
   19b5c:	0106e6b3          	or	a3,a3,a6
   19b60:	87a2                	c.mv	a5,s0
   19b62:	40a30533          	sub	a0,t1,a0
   19b66:	8d15                	c.sub	a0,a3
   19b68:	d43a                	c.swsp	a4,40(sp)
   19b6a:	d62a                	c.swsp	a0,44(sp)
   19b6c:	d276                	c.swsp	t4,36(sp)
   19b6e:	d032                	c.swsp	a2,32(sp)
   19b70:	00c51713          	slli	a4,a0,0xc
   19b74:	d80752e3          	bge	a4,zero,198f8 <__subtf3+0x6c2>
   19b78:	00080737          	lui	a4,0x80
   19b7c:	177d                	c.addi	a4,-1 # 7ffff <__BSS_END__+0x645a3>
   19b7e:	8d79                	c.and	a0,a4
   19b80:	d62a                	c.swsp	a0,44(sp)
   19b82:	843e                	c.mv	s0,a5
   19b84:	a981                	c.j	19fd4 <__subtf3+0xd9e>
   19b86:	48d2                	c.lwsp	a7,20(sp)
   19b88:	45e2                	c.lwsp	a1,24(sp)
   19b8a:	4e72                	c.lwsp	t3,28(sp)
   19b8c:	20078463          	beq	a5,zero,19d94 <__subtf3+0xb5e>
   19b90:	408807b3          	sub	a5,a6,s0
   19b94:	e055                	c.bnez	s0,19c38 <__subtf3+0xa02>
   19b96:	4f92                	c.lwsp	t6,4(sp)
   19b98:	43a2                	c.lwsp	t2,8(sp)
   19b9a:	4532                	c.lwsp	a0,12(sp)
   19b9c:	007fe633          	or	a2,t6,t2
   19ba0:	8e49                	c.or	a2,a0
   19ba2:	8e55                	c.or	a2,a3
   19ba4:	ea05                	c.bnez	a2,19bd4 <__subtf3+0x99e>
   19ba6:	66a1                	c.lui	a3,0x8
   19ba8:	16fd                	c.addi	a3,-1 # 7fff <exit-0x80b5>
   19baa:	00d79e63          	bne	a5,a3,19bc6 <__subtf3+0x990>
   19bae:	00b8e6b3          	or	a3,a7,a1
   19bb2:	01c6e6b3          	or	a3,a3,t3
   19bb6:	8ed9                	c.or	a3,a4
   19bb8:	c699                	c.beqz	a3,19bc6 <__subtf3+0x990>
   19bba:	012e5413          	srli	s0,t3,0x12
   19bbe:	8805                	c.andi	s0,1
   19bc0:	00144413          	xori	s0,s0,1
   19bc4:	0412                	c.slli	s0,0x4
   19bc6:	d03a                	c.swsp	a4,32(sp)
   19bc8:	d246                	c.swsp	a7,36(sp)
   19bca:	d42e                	c.swsp	a1,40(sp)
   19bcc:	d672                	c.swsp	t3,44(sp)
   19bce:	891a                	c.mv	s2,t1
   19bd0:	f88ff06f          	jal	zero,19358 <__subtf3+0x122>
   19bd4:	fff78293          	addi	t0,a5,-1
   19bd8:	04029563          	bne	t0,zero,19c22 <__subtf3+0x9ec>
   19bdc:	40d70633          	sub	a2,a4,a3
   19be0:	41f88eb3          	sub	t4,a7,t6
   19be4:	00c736b3          	sltu	a3,a4,a2
   19be8:	01d8b7b3          	sltu	a5,a7,t4
   19bec:	40de8eb3          	sub	t4,t4,a3
   19bf0:	4681                	c.li	a3,0
   19bf2:	00c77663          	bgeu	a4,a2,19bfe <__subtf3+0x9c8>
   19bf6:	411f8fb3          	sub	t6,t6,a7
   19bfa:	001fb693          	sltiu	a3,t6,1
   19bfe:	40758733          	sub	a4,a1,t2
   19c02:	8edd                	c.or	a3,a5
   19c04:	00e5b833          	sltu	a6,a1,a4
   19c08:	8f15                	c.sub	a4,a3
   19c0a:	c689                	c.beqz	a3,19c14 <__subtf3+0x9de>
   19c0c:	40b387b3          	sub	a5,t2,a1
   19c10:	0017b293          	sltiu	t0,a5,1
   19c14:	40ae0533          	sub	a0,t3,a0
   19c18:	0102e7b3          	or	a5,t0,a6
   19c1c:	8d1d                	c.sub	a0,a5
   19c1e:	891a                	c.mv	s2,t1
   19c20:	b3e5                	c.j	19a08 <__subtf3+0x7d2>
   19c22:	66a1                	c.lui	a3,0x8
   19c24:	16fd                	c.addi	a3,-1 # 7fff <exit-0x80b5>
   19c26:	68d79b63          	bne	a5,a3,1a2bc <__subtf3+0x1086>
   19c2a:	00b8e6b3          	or	a3,a7,a1
   19c2e:	01c6e6b3          	or	a3,a3,t3
   19c32:	8ed9                	c.or	a3,a4
   19c34:	4401                	c.li	s0,0
   19c36:	b749                	c.j	19bb8 <__subtf3+0x982>
   19c38:	66a1                	c.lui	a3,0x8
   19c3a:	16fd                	c.addi	a3,-1 # 7fff <exit-0x80b5>
   19c3c:	02d81563          	bne	a6,a3,19c66 <__subtf3+0xa30>
   19c40:	00b8e7b3          	or	a5,a7,a1
   19c44:	01c7e7b3          	or	a5,a5,t3
   19c48:	8fd9                	c.or	a5,a4
   19c4a:	4401                	c.li	s0,0
   19c4c:	c799                	c.beqz	a5,19c5a <__subtf3+0xa24>
   19c4e:	012e5413          	srli	s0,t3,0x12
   19c52:	8805                	c.andi	s0,1
   19c54:	00144413          	xori	s0,s0,1
   19c58:	0412                	c.slli	s0,0x4
   19c5a:	d03a                	c.swsp	a4,32(sp)
   19c5c:	d246                	c.swsp	a7,36(sp)
   19c5e:	d42e                	c.swsp	a1,40(sp)
   19c60:	d672                	c.swsp	t3,44(sp)
   19c62:	87c2                	c.mv	a5,a6
   19c64:	b7ad                	c.j	19bce <__subtf3+0x998>
   19c66:	46b2                	c.lwsp	a3,12(sp)
   19c68:	00080637          	lui	a2,0x80
   19c6c:	8ed1                	c.or	a3,a2
   19c6e:	c636                	c.swsp	a3,12(sp)
   19c70:	07400693          	addi	a3,zero,116
   19c74:	64f6c863          	blt	a3,a5,1a2c4 <__subtf3+0x108e>
   19c78:	82be                	c.mv	t0,a5
   19c7a:	02000793          	addi	a5,zero,32
   19c7e:	02f2c7b3          	div	a5,t0,a5
   19c82:	8576                	c.mv	a0,t4
   19c84:	4601                	c.li	a2,0
   19c86:	4681                	c.li	a3,0
   19c88:	02f6c863          	blt	a3,a5,19cb8 <__subtf3+0xa82>
   19c8c:	468d                	c.li	a3,3
   19c8e:	01f2f393          	andi	t2,t0,31
   19c92:	40f68433          	sub	s0,a3,a5
   19c96:	00279513          	slli	a0,a5,0x2
   19c9a:	02039663          	bne	t2,zero,19cc6 <__subtf3+0xa90>
   19c9e:	00ae86b3          	add	a3,t4,a0
   19ca2:	4294                	c.lw	a3,0(a3)
   19ca4:	0385                	c.addi	t2,1
   19ca6:	0e91                	c.addi	t4,4
   19ca8:	fedeae23          	sw	a3,-4(t4)
   19cac:	fe7459e3          	bge	s0,t2,19c9e <__subtf3+0xa68>
   19cb0:	4691                	c.li	a3,4
   19cb2:	40f687b3          	sub	a5,a3,a5
   19cb6:	a889                	c.j	19d08 <__subtf3+0xad2>
   19cb8:	00052f83          	lw	t6,0(a0)
   19cbc:	0685                	c.addi	a3,1
   19cbe:	0511                	c.addi	a0,4
   19cc0:	01f66633          	or	a2,a2,t6
   19cc4:	b7d1                	c.j	19c88 <__subtf3+0xa52>
   19cc6:	02000913          	addi	s2,zero,32
   19cca:	0322e2b3          	rem	t0,t0,s2
   19cce:	fff7c693          	xori	a3,a5,-1
   19cd2:	86fd                	c.srai	a3,0x1f
   19cd4:	8efd                	c.and	a3,a5
   19cd6:	068a                	c.slli	a3,0x2
   19cd8:	96f6                	c.add	a3,t4
   19cda:	4294                	c.lw	a3,0(a3)
   19cdc:	00ae8fb3          	add	t6,t4,a0
   19ce0:	40a00533          	sub	a0,zero,a0
   19ce4:	40590933          	sub	s2,s2,t0
   19ce8:	012696b3          	sll	a3,a3,s2
   19cec:	8e55                	c.or	a2,a3
   19cee:	4681                	c.li	a3,0
   19cf0:	0086ce63          	blt	a3,s0,19d0c <__subtf3+0xad6>
   19cf4:	4532                	c.lwsp	a0,12(sp)
   19cf6:	4691                	c.li	a3,4
   19cf8:	40f687b3          	sub	a5,a3,a5
   19cfc:	00241693          	slli	a3,s0,0x2
   19d00:	96f6                	c.add	a3,t4
   19d02:	00755533          	srl	a0,a0,t2
   19d06:	c288                	c.sw	a0,0(a3)
   19d08:	450d                	c.li	a0,3
   19d0a:	a805                	c.j	19d3a <__subtf3+0xb04>
   19d0c:	000fa283          	lw	t0,0(t6) # 10000 <exit-0xb4>
   19d10:	004faa03          	lw	s4,4(t6)
   19d14:	00af8ab3          	add	s5,t6,a0
   19d18:	0072d2b3          	srl	t0,t0,t2
   19d1c:	012a1a33          	sll	s4,s4,s2
   19d20:	0142e2b3          	or	t0,t0,s4
   19d24:	005aa023          	sw	t0,0(s5)
   19d28:	0685                	c.addi	a3,1
   19d2a:	0f91                	c.addi	t6,4
   19d2c:	b7d1                	c.j	19cf0 <__subtf3+0xaba>
   19d2e:	00279693          	slli	a3,a5,0x2
   19d32:	96fa                	c.add	a3,t5
   19d34:	0006a023          	sw	zero,0(a3)
   19d38:	0785                	c.addi	a5,1
   19d3a:	fef55ae3          	bge	a0,a5,19d2e <__subtf3+0xaf8>
   19d3e:	4782                	c.lwsp	a5,0(sp)
   19d40:	00c03633          	sltu	a2,zero,a2
   19d44:	8e5d                	c.or	a2,a5
   19d46:	4692                	c.lwsp	a3,4(sp)
   19d48:	40c70633          	sub	a2,a4,a2
   19d4c:	00c737b3          	sltu	a5,a4,a2
   19d50:	40d88eb3          	sub	t4,a7,a3
   19d54:	01d8b533          	sltu	a0,a7,t4
   19d58:	40fe8eb3          	sub	t4,t4,a5
   19d5c:	4781                	c.li	a5,0
   19d5e:	00c77663          	bgeu	a4,a2,19d6a <__subtf3+0xb34>
   19d62:	411686b3          	sub	a3,a3,a7
   19d66:	0016b793          	sltiu	a5,a3,1
   19d6a:	8fc9                	c.or	a5,a0
   19d6c:	4522                	c.lwsp	a0,8(sp)
   19d6e:	4681                	c.li	a3,0
   19d70:	40a58733          	sub	a4,a1,a0
   19d74:	00e5b8b3          	sltu	a7,a1,a4
   19d78:	8f1d                	c.sub	a4,a5
   19d7a:	c781                	c.beqz	a5,19d82 <__subtf3+0xb4c>
   19d7c:	8d0d                	c.sub	a0,a1
   19d7e:	00153693          	sltiu	a3,a0,1
   19d82:	4532                	c.lwsp	a0,12(sp)
   19d84:	0116e6b3          	or	a3,a3,a7
   19d88:	87c2                	c.mv	a5,a6
   19d8a:	40ae0533          	sub	a0,t3,a0
   19d8e:	8d15                	c.sub	a0,a3
   19d90:	891a                	c.mv	s2,t1
   19d92:	bbd9                	c.j	19b68 <__subtf3+0x932>
   19d94:	6521                	c.lui	a0,0x8
   19d96:	00140613          	addi	a2,s0,1
   19d9a:	1579                	c.addi	a0,-2 # 7ffe <exit-0x80b6>
   19d9c:	8e69                	c.and	a2,a0
   19d9e:	4f12                	c.lwsp	t5,4(sp)
   19da0:	4fa2                	c.lwsp	t6,8(sp)
   19da2:	42b2                	c.lwsp	t0,12(sp)
   19da4:	18061c63          	bne	a2,zero,19f3c <__subtf3+0xd06>
   19da8:	00b8e7b3          	or	a5,a7,a1
   19dac:	01ff6eb3          	or	t4,t5,t6
   19db0:	01c7e7b3          	or	a5,a5,t3
   19db4:	005eeeb3          	or	t4,t4,t0
   19db8:	8fd9                	c.or	a5,a4
   19dba:	00deeeb3          	or	t4,t4,a3
   19dbe:	ec79                	c.bnez	s0,19e9c <__subtf3+0xc66>
   19dc0:	000e9f63          	bne	t4,zero,19dde <__subtf3+0xba8>
   19dc4:	d03a                	c.swsp	a4,32(sp)
   19dc6:	d246                	c.swsp	a7,36(sp)
   19dc8:	d42e                	c.swsp	a1,40(sp)
   19dca:	d672                	c.swsp	t3,44(sp)
   19dcc:	891a                	c.mv	s2,t1
   19dce:	920790e3          	bne	a5,zero,196ee <__subtf3+0x4b8>
   19dd2:	ffe98913          	addi	s2,s3,-2
   19dd6:	00193913          	sltiu	s2,s2,1
   19dda:	4701                	c.li	a4,0
   19ddc:	ba09                	c.j	196ee <__subtf3+0x4b8>
   19dde:	e791                	c.bnez	a5,19dea <__subtf3+0xbb4>
   19de0:	d036                	c.swsp	a3,32(sp)
   19de2:	d27a                	c.swsp	t5,36(sp)
   19de4:	d47e                	c.swsp	t6,40(sp)
   19de6:	d616                	c.swsp	t0,44(sp)
   19de8:	ba69                	c.j	19782 <__subtf3+0x54c>
   19dea:	40e683b3          	sub	t2,a3,a4
   19dee:	411f0833          	sub	a6,t5,a7
   19df2:	0076ba33          	sltu	s4,a3,t2
   19df6:	010f3633          	sltu	a2,t5,a6
   19dfa:	41480a33          	sub	s4,a6,s4
   19dfe:	4781                	c.li	a5,0
   19e00:	0076f463          	bgeu	a3,t2,19e08 <__subtf3+0xbd2>
   19e04:	00183793          	sltiu	a5,a6,1
   19e08:	8fd1                	c.or	a5,a2
   19e0a:	40bf8533          	sub	a0,t6,a1
   19e0e:	00afbab3          	sltu	s5,t6,a0
   19e12:	40f50eb3          	sub	t4,a0,a5
   19e16:	4601                	c.li	a2,0
   19e18:	c399                	c.beqz	a5,19e1e <__subtf3+0xbe8>
   19e1a:	00153613          	sltiu	a2,a0,1
   19e1e:	01566633          	or	a2,a2,s5
   19e22:	41c287b3          	sub	a5,t0,t3
   19e26:	8f91                	c.sub	a5,a2
   19e28:	d63e                	c.swsp	a5,44(sp)
   19e2a:	d476                	c.swsp	t4,40(sp)
   19e2c:	d252                	c.swsp	s4,36(sp)
   19e2e:	d01e                	c.swsp	t2,32(sp)
   19e30:	00c79613          	slli	a2,a5,0xc
   19e34:	04065863          	bge	a2,zero,19e84 <__subtf3+0xc4e>
   19e38:	40d706b3          	sub	a3,a4,a3
   19e3c:	00d73633          	sltu	a2,a4,a3
   19e40:	41e88f33          	sub	t5,a7,t5
   19e44:	01e8b8b3          	sltu	a7,a7,t5
   19e48:	8736                	c.mv	a4,a3
   19e4a:	40cf0f33          	sub	t5,t5,a2
   19e4e:	4781                	c.li	a5,0
   19e50:	c219                	c.beqz	a2,19e56 <__subtf3+0xc20>
   19e52:	00183793          	sltiu	a5,a6,1
   19e56:	41f58fb3          	sub	t6,a1,t6
   19e5a:	0117e8b3          	or	a7,a5,a7
   19e5e:	01f5b5b3          	sltu	a1,a1,t6
   19e62:	411f8fb3          	sub	t6,t6,a7
   19e66:	00088463          	beq	a7,zero,19e6e <__subtf3+0xc38>
   19e6a:	00153413          	sltiu	s0,a0,1
   19e6e:	405e02b3          	sub	t0,t3,t0
   19e72:	8dc1                	c.or	a1,s0
   19e74:	40b282b3          	sub	t0,t0,a1
   19e78:	d616                	c.swsp	t0,44(sp)
   19e7a:	d47e                	c.swsp	t6,40(sp)
   19e7c:	d27a                	c.swsp	t5,36(sp)
   19e7e:	d036                	c.swsp	a3,32(sp)
   19e80:	891a                	c.mv	s2,t1
   19e82:	b0b5                	c.j	196ee <__subtf3+0x4b8>
   19e84:	0143e733          	or	a4,t2,s4
   19e88:	01d76733          	or	a4,a4,t4
   19e8c:	8f5d                	c.or	a4,a5
   19e8e:	2e071663          	bne	a4,zero,1a17a <__subtf3+0xf44>
   19e92:	ffe98913          	addi	s2,s3,-2
   19e96:	00193913          	sltiu	s2,s2,1
   19e9a:	b891                	c.j	196ee <__subtf3+0x4b8>
   19e9c:	6521                	c.lui	a0,0x8
   19e9e:	157d                	c.addi	a0,-1 # 7fff <exit-0x80b5>
   19ea0:	04a41563          	bne	s0,a0,19eea <__subtf3+0xcb4>
   19ea4:	420e8a63          	beq	t4,zero,1a2d8 <__subtf3+0x10a2>
   19ea8:	0122d413          	srli	s0,t0,0x12
   19eac:	8805                	c.andi	s0,1
   19eae:	00144413          	xori	s0,s0,1
   19eb2:	0412                	c.slli	s0,0x4
   19eb4:	06a81e63          	bne	a6,a0,19f30 <__subtf3+0xcfa>
   19eb8:	cf85                	c.beqz	a5,19ef0 <__subtf3+0xcba>
   19eba:	00de1513          	slli	a0,t3,0xd
   19ebe:	02054963          	blt	a0,zero,19ef0 <__subtf3+0xcba>
   19ec2:	4441                	c.li	s0,16
   19ec4:	060e8063          	beq	t4,zero,19f24 <__subtf3+0xcee>
   19ec8:	67a1                	c.lui	a5,0x8
   19eca:	d63e                	c.swsp	a5,44(sp)
   19ecc:	d402                	c.swsp	zero,40(sp)
   19ece:	d202                	c.swsp	zero,36(sp)
   19ed0:	d002                	c.swsp	zero,32(sp)
   19ed2:	101c                	c.addi4spn	a5,sp,32
   19ed4:	084c                	c.addi4spn	a1,sp,20
   19ed6:	47d8                	c.lw	a4,12(a5)
   19ed8:	4794                	c.lw	a3,8(a5)
   19eda:	17f1                	c.addi	a5,-4 # 7ffc <exit-0x80b8>
   19edc:	070e                	c.slli	a4,0x3
   19ede:	82f5                	c.srli	a3,0x1d
   19ee0:	8f55                	c.or	a4,a3
   19ee2:	cb98                	c.sw	a4,16(a5)
   19ee4:	fef599e3          	bne	a1,a5,19ed6 <__subtf3+0xca0>
   19ee8:	ba65                	c.j	198a0 <__subtf3+0x66a>
   19eea:	4401                	c.li	s0,0
   19eec:	fca806e3          	beq	a6,a0,19eb8 <__subtf3+0xc82>
   19ef0:	040e9063          	bne	t4,zero,19f30 <__subtf3+0xcfa>
   19ef4:	eb85                	c.bnez	a5,19f24 <__subtf3+0xcee>
   19ef6:	67a1                	c.lui	a5,0x8
   19ef8:	d63e                	c.swsp	a5,44(sp)
   19efa:	d402                	c.swsp	zero,40(sp)
   19efc:	d202                	c.swsp	zero,36(sp)
   19efe:	d002                	c.swsp	zero,32(sp)
   19f00:	101c                	c.addi4spn	a5,sp,32
   19f02:	084c                	c.addi4spn	a1,sp,20
   19f04:	47d8                	c.lw	a4,12(a5)
   19f06:	4794                	c.lw	a3,8(a5)
   19f08:	17f1                	c.addi	a5,-4 # 7ffc <exit-0x80b8>
   19f0a:	070e                	c.slli	a4,0x3
   19f0c:	82f5                	c.srli	a3,0x1d
   19f0e:	8f55                	c.or	a4,a3
   19f10:	cb98                	c.sw	a4,16(a5)
   19f12:	fef599e3          	bne	a1,a5,19f04 <__subtf3+0xcce>
   19f16:	67a1                	c.lui	a5,0x8
   19f18:	4901                	c.li	s2,0
   19f1a:	17fd                	c.addi	a5,-1 # 7fff <exit-0x80b5>
   19f1c:	4441                	c.li	s0,16
   19f1e:	b075                	c.j	197ca <__subtf3+0x594>
   19f20:	4401                	c.li	s0,0
   19f22:	bf59                	c.j	19eb8 <__subtf3+0xc82>
   19f24:	d03a                	c.swsp	a4,32(sp)
   19f26:	d246                	c.swsp	a7,36(sp)
   19f28:	d42e                	c.swsp	a1,40(sp)
   19f2a:	d672                	c.swsp	t3,44(sp)
   19f2c:	891a                	c.mv	s2,t1
   19f2e:	ba35                	c.j	1986a <__subtf3+0x634>
   19f30:	ffc1                	c.bnez	a5,19ec8 <__subtf3+0xc92>
   19f32:	d036                	c.swsp	a3,32(sp)
   19f34:	d27a                	c.swsp	t5,36(sp)
   19f36:	d47e                	c.swsp	t6,40(sp)
   19f38:	d616                	c.swsp	t0,44(sp)
   19f3a:	ba05                	c.j	1986a <__subtf3+0x634>
   19f3c:	40e68a33          	sub	s4,a3,a4
   19f40:	411f03b3          	sub	t2,t5,a7
   19f44:	0146bab3          	sltu	s5,a3,s4
   19f48:	007f3533          	sltu	a0,t5,t2
   19f4c:	41538ab3          	sub	s5,t2,s5
   19f50:	4601                	c.li	a2,0
   19f52:	0146f463          	bgeu	a3,s4,19f5a <__subtf3+0xd24>
   19f56:	0013b613          	sltiu	a2,t2,1
   19f5a:	40bf8833          	sub	a6,t6,a1
   19f5e:	8e49                	c.or	a2,a0
   19f60:	010fbbb3          	sltu	s7,t6,a6
   19f64:	40c80b33          	sub	s6,a6,a2
   19f68:	4e81                	c.li	t4,0
   19f6a:	c219                	c.beqz	a2,19f70 <__subtf3+0xd3a>
   19f6c:	00183e93          	sltiu	t4,a6,1
   19f70:	41c28533          	sub	a0,t0,t3
   19f74:	017eeeb3          	or	t4,t4,s7
   19f78:	41d50533          	sub	a0,a0,t4
   19f7c:	d62a                	c.swsp	a0,44(sp)
   19f7e:	d45a                	c.swsp	s6,40(sp)
   19f80:	d256                	c.swsp	s5,36(sp)
   19f82:	d052                	c.swsp	s4,32(sp)
   19f84:	00c51613          	slli	a2,a0,0xc
   19f88:	08065e63          	bge	a2,zero,1a024 <__subtf3+0xdee>
   19f8c:	40d706b3          	sub	a3,a4,a3
   19f90:	41e88f33          	sub	t5,a7,t5
   19f94:	00d73633          	sltu	a2,a4,a3
   19f98:	01e8b8b3          	sltu	a7,a7,t5
   19f9c:	40cf0f33          	sub	t5,t5,a2
   19fa0:	4601                	c.li	a2,0
   19fa2:	00d77463          	bgeu	a4,a3,19faa <__subtf3+0xd74>
   19fa6:	0013b613          	sltiu	a2,t2,1
   19faa:	41f58fb3          	sub	t6,a1,t6
   19fae:	011668b3          	or	a7,a2,a7
   19fb2:	01f5b5b3          	sltu	a1,a1,t6
   19fb6:	411f8fb3          	sub	t6,t6,a7
   19fba:	00088463          	beq	a7,zero,19fc2 <__subtf3+0xd8c>
   19fbe:	00183793          	sltiu	a5,a6,1
   19fc2:	405e0533          	sub	a0,t3,t0
   19fc6:	8ddd                	c.or	a1,a5
   19fc8:	8d0d                	c.sub	a0,a1
   19fca:	d62a                	c.swsp	a0,44(sp)
   19fcc:	d47e                	c.swsp	t6,40(sp)
   19fce:	d27a                	c.swsp	t5,36(sp)
   19fd0:	d036                	c.swsp	a3,32(sp)
   19fd2:	891a                	c.mv	s2,t1
   19fd4:	c125                	c.beqz	a0,1a034 <__subtf3+0xdfe>
   19fd6:	2729                	c.jal	1a6e0 <__clzsi2>
   19fd8:	ff450793          	addi	a5,a0,-12
   19fdc:	02000693          	addi	a3,zero,32
   19fe0:	01f7f813          	andi	a6,a5,31
   19fe4:	02d7c333          	div	t1,a5,a3
   19fe8:	5771                	c.li	a4,-4
   19fea:	06080663          	beq	a6,zero,1a056 <__subtf3+0xe20>
   19fee:	02d7e633          	rem	a2,a5,a3
   19ff2:	02e30733          	mul	a4,t1,a4
   19ff6:	40c685b3          	sub	a1,a3,a2
   19ffa:	00d10633          	add	a2,sp,a3
   19ffe:	00c70693          	addi	a3,a4,12
   1a002:	96b2                	c.add	a3,a2
   1a004:	40e00733          	sub	a4,zero,a4
   1a008:	06d61663          	bne	a2,a3,1a074 <__subtf3+0xe3e>
   1a00c:	5682                	c.lwsp	a3,32(sp)
   1a00e:	fff30713          	addi	a4,t1,-1
   1a012:	030a                	c.slli	t1,0x2
   1a014:	961a                	c.add	a2,t1
   1a016:	010696b3          	sll	a3,a3,a6
   1a01a:	c214                	c.sw	a3,0(a2)
   1a01c:	567d                	c.li	a2,-1
   1a01e:	02010893          	addi	a7,sp,32
   1a022:	a8b5                	c.j	1a09e <__subtf3+0xe68>
   1a024:	015a67b3          	or	a5,s4,s5
   1a028:	0167e7b3          	or	a5,a5,s6
   1a02c:	00a7e733          	or	a4,a5,a0
   1a030:	f355                	c.bnez	a4,19fd4 <__subtf3+0xd9e>
   1a032:	b585                	c.j	19e92 <__subtf3+0xc5c>
   1a034:	5522                	c.lwsp	a0,40(sp)
   1a036:	c509                	c.beqz	a0,1a040 <__subtf3+0xe0a>
   1a038:	2565                	c.jal	1a6e0 <__clzsi2>
   1a03a:	02050513          	addi	a0,a0,32
   1a03e:	bf69                	c.j	19fd8 <__subtf3+0xda2>
   1a040:	5512                	c.lwsp	a0,36(sp)
   1a042:	c509                	c.beqz	a0,1a04c <__subtf3+0xe16>
   1a044:	2d71                	c.jal	1a6e0 <__clzsi2>
   1a046:	04050513          	addi	a0,a0,64
   1a04a:	b779                	c.j	19fd8 <__subtf3+0xda2>
   1a04c:	5502                	c.lwsp	a0,32(sp)
   1a04e:	2d49                	c.jal	1a6e0 <__clzsi2>
   1a050:	06050513          	addi	a0,a0,96
   1a054:	b751                	c.j	19fd8 <__subtf3+0xda2>
   1a056:	02e30733          	mul	a4,t1,a4
   1a05a:	1074                	c.addi4spn	a3,sp,44
   1a05c:	460d                	c.li	a2,3
   1a05e:	00e685b3          	add	a1,a3,a4
   1a062:	418c                	c.lw	a1,0(a1)
   1a064:	167d                	c.addi	a2,-1 # 7ffff <__BSS_END__+0x645a3>
   1a066:	16f1                	c.addi	a3,-4
   1a068:	c2cc                	c.sw	a1,4(a3)
   1a06a:	fe665ae3          	bge	a2,t1,1a05e <__subtf3+0xe28>
   1a06e:	fff30713          	addi	a4,t1,-1
   1a072:	b76d                	c.j	1a01c <__subtf3+0xde6>
   1a074:	4288                	c.lw	a0,0(a3)
   1a076:	ffc6a883          	lw	a7,-4(a3)
   1a07a:	00e68e33          	add	t3,a3,a4
   1a07e:	01051533          	sll	a0,a0,a6
   1a082:	00b8d8b3          	srl	a7,a7,a1
   1a086:	01156533          	or	a0,a0,a7
   1a08a:	00ae2023          	sw	a0,0(t3)
   1a08e:	16f1                	c.addi	a3,-4
   1a090:	bfa5                	c.j	1a008 <__subtf3+0xdd2>
   1a092:	00271693          	slli	a3,a4,0x2
   1a096:	96c6                	c.add	a3,a7
   1a098:	0006a023          	sw	zero,0(a3)
   1a09c:	177d                	c.addi	a4,-1
   1a09e:	fec71ae3          	bne	a4,a2,1a092 <__subtf3+0xe5c>
   1a0a2:	0c87c063          	blt	a5,s0,1a162 <__subtf3+0xf2c>
   1a0a6:	8f81                	c.sub	a5,s0
   1a0a8:	0785                	c.addi	a5,1
   1a0aa:	4057d693          	srai	a3,a5,0x5
   1a0ae:	8546                	c.mv	a0,a7
   1a0b0:	8bfd                	c.andi	a5,31
   1a0b2:	85c6                	c.mv	a1,a7
   1a0b4:	4701                	c.li	a4,0
   1a0b6:	4601                	c.li	a2,0
   1a0b8:	02d61463          	bne	a2,a3,1a0e0 <__subtf3+0xeaa>
   1a0bc:	460d                	c.li	a2,3
   1a0be:	40d60eb3          	sub	t4,a2,a3
   1a0c2:	00269593          	slli	a1,a3,0x2
   1a0c6:	e785                	c.bnez	a5,1a0ee <__subtf3+0xeb8>
   1a0c8:	00b50633          	add	a2,a0,a1
   1a0cc:	4210                	c.lw	a2,0(a2)
   1a0ce:	0785                	c.addi	a5,1
   1a0d0:	c110                	c.sw	a2,0(a0)
   1a0d2:	0511                	c.addi	a0,4
   1a0d4:	fefedae3          	bge	t4,a5,1a0c8 <__subtf3+0xe92>
   1a0d8:	4791                	c.li	a5,4
   1a0da:	40d786b3          	sub	a3,a5,a3
   1a0de:	a089                	c.j	1a120 <__subtf3+0xeea>
   1a0e0:	0005a803          	lw	a6,0(a1)
   1a0e4:	0605                	c.addi	a2,1
   1a0e6:	0591                	c.addi	a1,4
   1a0e8:	01076733          	or	a4,a4,a6
   1a0ec:	b7f1                	c.j	1a0b8 <__subtf3+0xe82>
   1a0ee:	00b88633          	add	a2,a7,a1
   1a0f2:	4208                	c.lw	a0,0(a2)
   1a0f4:	02000813          	addi	a6,zero,32
   1a0f8:	40f80833          	sub	a6,a6,a5
   1a0fc:	01051533          	sll	a0,a0,a6
   1a100:	8f49                	c.or	a4,a0
   1a102:	40b005b3          	sub	a1,zero,a1
   1a106:	4301                	c.li	t1,0
   1a108:	01d34e63          	blt	t1,t4,1a124 <__subtf3+0xeee>
   1a10c:	55b2                	c.lwsp	a1,44(sp)
   1a10e:	4611                	c.li	a2,4
   1a110:	40d606b3          	sub	a3,a2,a3
   1a114:	002e9613          	slli	a2,t4,0x2
   1a118:	9646                	c.add	a2,a7
   1a11a:	00f5d7b3          	srl	a5,a1,a5
   1a11e:	c21c                	c.sw	a5,0(a2)
   1a120:	4611                	c.li	a2,4
   1a122:	a03d                	c.j	1a150 <__subtf3+0xf1a>
   1a124:	4208                	c.lw	a0,0(a2)
   1a126:	00462e03          	lw	t3,4(a2)
   1a12a:	00b60f33          	add	t5,a2,a1
   1a12e:	00f55533          	srl	a0,a0,a5
   1a132:	010e1e33          	sll	t3,t3,a6
   1a136:	01c56533          	or	a0,a0,t3
   1a13a:	00af2023          	sw	a0,0(t5)
   1a13e:	0305                	c.addi	t1,1
   1a140:	0611                	c.addi	a2,4
   1a142:	b7d9                	c.j	1a108 <__subtf3+0xed2>
   1a144:	00269793          	slli	a5,a3,0x2
   1a148:	97c6                	c.add	a5,a7
   1a14a:	0007a023          	sw	zero,0(a5)
   1a14e:	0685                	c.addi	a3,1
   1a150:	fec69ae3          	bne	a3,a2,1a144 <__subtf3+0xf0e>
   1a154:	5782                	c.lwsp	a5,32(sp)
   1a156:	00e03733          	sltu	a4,zero,a4
   1a15a:	8f5d                	c.or	a4,a5
   1a15c:	d03a                	c.swsp	a4,32(sp)
   1a15e:	d90ff06f          	jal	zero,196ee <__subtf3+0x4b8>
   1a162:	5732                	c.lwsp	a4,44(sp)
   1a164:	fff806b7          	lui	a3,0xfff80
   1a168:	16fd                	c.addi	a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   1a16a:	40f407b3          	sub	a5,s0,a5
   1a16e:	8f75                	c.and	a4,a3
   1a170:	b6cff06f          	jal	zero,194dc <__subtf3+0x2a6>
   1a174:	d61a                	c.swsp	t1,44(sp)
   1a176:	d78ff06f          	jal	zero,196ee <__subtf3+0x4b8>
   1a17a:	871e                	c.mv	a4,t2
   1a17c:	d72ff06f          	jal	zero,196ee <__subtf3+0x4b8>
   1a180:	dc091f63          	bne	s2,zero,1975e <__subtf3+0x528>
   1a184:	0721                	c.addi	a4,8
   1a186:	00873713          	sltiu	a4,a4,8
   1a18a:	dc0ff06f          	jal	zero,1974a <__subtf3+0x514>
   1a18e:	dc090863          	beq	s2,zero,1975e <__subtf3+0x528>
   1a192:	bfcd                	c.j	1a184 <__subtf3+0xf4e>
   1a194:	4781                	c.li	a5,0
   1a196:	f62ff06f          	jal	zero,198f8 <__subtf3+0x6c2>
   1a19a:	00091a63          	bne	s2,zero,1a1ae <__subtf3+0xf78>
   1a19e:	0721                	c.addi	a4,8
   1a1a0:	d03a                	c.swsp	a4,32(sp)
   1a1a2:	00873713          	sltiu	a4,a4,8
   1a1a6:	e56ff06f          	jal	zero,197fc <__subtf3+0x5c6>
   1a1aa:	fe091ae3          	bne	s2,zero,1a19e <__subtf3+0xf68>
   1a1ae:	c609                	c.beqz	a2,1a1b8 <__subtf3+0xf82>
   1a1b0:	00147713          	andi	a4,s0,1
   1a1b4:	0706                	c.slli	a4,0x1
   1a1b6:	8c59                	c.or	s0,a4
   1a1b8:	5732                	c.lwsp	a4,44(sp)
   1a1ba:	00c71693          	slli	a3,a4,0xc
   1a1be:	0006dc63          	bge	a3,zero,1a1d6 <__subtf3+0xfa0>
   1a1c2:	66a1                	c.lui	a3,0x8
   1a1c4:	0785                	c.addi	a5,1
   1a1c6:	16fd                	c.addi	a3,-1 # 7fff <exit-0x80b5>
   1a1c8:	08d78563          	beq	a5,a3,1a252 <__subtf3+0x101c>
   1a1cc:	fff806b7          	lui	a3,0xfff80
   1a1d0:	16fd                	c.addi	a3,-1 # fff7ffff <__BSS_END__+0xfff645a3>
   1a1d2:	8f75                	c.and	a4,a3
   1a1d4:	d63a                	c.swsp	a4,44(sp)
   1a1d6:	1018                	c.addi4spn	a4,sp,32
   1a1d8:	106c                	c.addi4spn	a1,sp,44
   1a1da:	4314                	c.lw	a3,0(a4)
   1a1dc:	4350                	c.lw	a2,4(a4)
   1a1de:	828d                	c.srli	a3,0x3
   1a1e0:	0676                	c.slli	a2,0x1d
   1a1e2:	8ed1                	c.or	a3,a2
   1a1e4:	c314                	c.sw	a3,0(a4)
   1a1e6:	0711                	c.addi	a4,4
   1a1e8:	fee599e3          	bne	a1,a4,1a1da <__subtf3+0xfa4>
   1a1ec:	5732                	c.lwsp	a4,44(sp)
   1a1ee:	6621                	c.lui	a2,0x8
   1a1f0:	fff60693          	addi	a3,a2,-1 # 7fff <exit-0x80b5>
   1a1f4:	830d                	c.srli	a4,0x3
   1a1f6:	00d79e63          	bne	a5,a3,1a212 <__subtf3+0xfdc>
   1a1fa:	5592                	c.lwsp	a1,36(sp)
   1a1fc:	5682                	c.lwsp	a3,32(sp)
   1a1fe:	8ecd                	c.or	a3,a1
   1a200:	55a2                	c.lwsp	a1,40(sp)
   1a202:	8ecd                	c.or	a3,a1
   1a204:	8f55                	c.or	a4,a3
   1a206:	c711                	c.beqz	a4,1a212 <__subtf3+0xfdc>
   1a208:	d402                	c.swsp	zero,40(sp)
   1a20a:	d202                	c.swsp	zero,36(sp)
   1a20c:	d002                	c.swsp	zero,32(sp)
   1a20e:	8732                	c.mv	a4,a2
   1a210:	4901                	c.li	s2,0
   1a212:	07c6                	c.slli	a5,0x11
   1a214:	83c5                	c.srli	a5,0x11
   1a216:	093e                	c.slli	s2,0xf
   1a218:	00f96933          	or	s2,s2,a5
   1a21c:	02e11e23          	sh	a4,60(sp)
   1a220:	03211f23          	sh	s2,62(sp)
   1a224:	5502                	c.lwsp	a0,32(sp)
   1a226:	5592                	c.lwsp	a1,36(sp)
   1a228:	5622                	c.lwsp	a2,40(sp)
   1a22a:	57f2                	c.lwsp	a5,60(sp)
   1a22c:	c019                	c.beqz	s0,1a232 <__subtf3+0xffc>
   1a22e:	00142073          	csrrs	zero,fflags,s0
   1a232:	50b6                	c.lwsp	ra,108(sp)
   1a234:	5426                	c.lwsp	s0,104(sp)
   1a236:	c088                	c.sw	a0,0(s1)
   1a238:	c0cc                	c.sw	a1,4(s1)
   1a23a:	c490                	c.sw	a2,8(s1)
   1a23c:	c4dc                	c.sw	a5,12(s1)
   1a23e:	5906                	c.lwsp	s2,96(sp)
   1a240:	49f6                	c.lwsp	s3,92(sp)
   1a242:	4a66                	c.lwsp	s4,88(sp)
   1a244:	4ad6                	c.lwsp	s5,84(sp)
   1a246:	4b46                	c.lwsp	s6,80(sp)
   1a248:	4bb6                	c.lwsp	s7,76(sp)
   1a24a:	8526                	c.mv	a0,s1
   1a24c:	5496                	c.lwsp	s1,100(sp)
   1a24e:	6165                	c.addi16sp	sp,112
   1a250:	8082                	c.jr	ra
   1a252:	4701                	c.li	a4,0
   1a254:	02098063          	beq	s3,zero,1a274 <__subtf3+0x103e>
   1a258:	468d                	c.li	a3,3
   1a25a:	00d99863          	bne	s3,a3,1a26a <__subtf3+0x1034>
   1a25e:	00090b63          	beq	s2,zero,1a274 <__subtf3+0x103e>
   1a262:	67a1                	c.lui	a5,0x8
   1a264:	577d                	c.li	a4,-1
   1a266:	17f9                	c.addi	a5,-2 # 7ffe <exit-0x80b6>
   1a268:	a031                	c.j	1a274 <__subtf3+0x103e>
   1a26a:	4689                	c.li	a3,2
   1a26c:	fed99be3          	bne	s3,a3,1a262 <__subtf3+0x102c>
   1a270:	fe0909e3          	beq	s2,zero,1a262 <__subtf3+0x102c>
   1a274:	d63a                	c.swsp	a4,44(sp)
   1a276:	d43a                	c.swsp	a4,40(sp)
   1a278:	d23a                	c.swsp	a4,36(sp)
   1a27a:	d03a                	c.swsp	a4,32(sp)
   1a27c:	00546413          	ori	s0,s0,5
   1a280:	bf99                	c.j	1a1d6 <__subtf3+0xfa0>
   1a282:	07400793          	addi	a5,zero,116
   1a286:	96c7d463          	bge	a5,a2,193ee <__subtf3+0x1b8>
   1a28a:	ce02                	c.swsp	zero,28(sp)
   1a28c:	cc02                	c.swsp	zero,24(sp)
   1a28e:	ca02                	c.swsp	zero,20(sp)
   1a290:	4605                	c.li	a2,1
   1a292:	a0eff06f          	jal	zero,194a0 <__subtf3+0x26a>
   1a296:	07400793          	addi	a5,zero,116
   1a29a:	b347d363          	bge	a5,s4,195c0 <__subtf3+0x38a>
   1a29e:	c602                	c.swsp	zero,12(sp)
   1a2a0:	c402                	c.swsp	zero,8(sp)
   1a2a2:	c202                	c.swsp	zero,4(sp)
   1a2a4:	4605                	c.li	a2,1
   1a2a6:	be6ff06f          	jal	zero,1968c <__subtf3+0x456>
   1a2aa:	07400793          	addi	a5,zero,116
   1a2ae:	fbe7da63          	bge	a5,t5,19a62 <__subtf3+0x82c>
   1a2b2:	ce02                	c.swsp	zero,28(sp)
   1a2b4:	cc02                	c.swsp	zero,24(sp)
   1a2b6:	ca02                	c.swsp	zero,20(sp)
   1a2b8:	4605                	c.li	a2,1
   1a2ba:	b095                	c.j	19b1e <__subtf3+0x8e8>
   1a2bc:	07400793          	addi	a5,zero,116
   1a2c0:	9a57dde3          	bge	a5,t0,19c7a <__subtf3+0xa44>
   1a2c4:	c602                	c.swsp	zero,12(sp)
   1a2c6:	c402                	c.swsp	zero,8(sp)
   1a2c8:	c202                	c.swsp	zero,4(sp)
   1a2ca:	4605                	c.li	a2,1
   1a2cc:	bcad                	c.j	19d46 <__subtf3+0xb10>
   1a2ce:	da880163          	beq	a6,s0,19870 <__subtf3+0x63a>
   1a2d2:	4401                	c.li	s0,0
   1a2d4:	d86ff06f          	jal	zero,1985a <__subtf3+0x624>
   1a2d8:	c48804e3          	beq	a6,s0,19f20 <__subtf3+0xcea>
   1a2dc:	4401                	c.li	s0,0
   1a2de:	b919                	c.j	19ef4 <__subtf3+0xcbe>

0001a2e0 <__unordtf2>:
   1a2e0:	4114                	c.lw	a3,0(a0)
   1a2e2:	00452f03          	lw	t5,4(a0)
   1a2e6:	00852e83          	lw	t4,8(a0)
   1a2ea:	4550                	c.lw	a2,12(a0)
   1a2ec:	419c                	c.lw	a5,0(a1)
   1a2ee:	0045ae03          	lw	t3,4(a1)
   1a2f2:	0085a303          	lw	t1,8(a1)
   1a2f6:	45d8                	c.lw	a4,12(a1)
   1a2f8:	1141                	c.addi	sp,-16
   1a2fa:	002025f3          	csrrs	a1,frm,zero
   1a2fe:	6521                	c.lui	a0,0x8
   1a300:	01061813          	slli	a6,a2,0x10
   1a304:	157d                	c.addi	a0,-1 # 7fff <exit-0x80b5>
   1a306:	8241                	c.srli	a2,0x10
   1a308:	01071593          	slli	a1,a4,0x10
   1a30c:	8e69                	c.and	a2,a0
   1a30e:	8341                	c.srli	a4,0x10
   1a310:	01085813          	srli	a6,a6,0x10
   1a314:	81c1                	c.srli	a1,0x10
   1a316:	8f69                	c.and	a4,a0
   1a318:	00a61963          	bne	a2,a0,1a32a <__unordtf2+0x4a>
   1a31c:	01e6e533          	or	a0,a3,t5
   1a320:	01d56533          	or	a0,a0,t4
   1a324:	01056533          	or	a0,a0,a6
   1a328:	e51d                	c.bnez	a0,1a356 <__unordtf2+0x76>
   1a32a:	68a1                	c.lui	a7,0x8
   1a32c:	18fd                	c.addi	a7,-1 # 7fff <exit-0x80b5>
   1a32e:	4501                	c.li	a0,0
   1a330:	05171c63          	bne	a4,a7,1a388 <__unordtf2+0xa8>
   1a334:	01c7e8b3          	or	a7,a5,t3
   1a338:	0068e8b3          	or	a7,a7,t1
   1a33c:	00b8e8b3          	or	a7,a7,a1
   1a340:	04088463          	beq	a7,zero,1a388 <__unordtf2+0xa8>
   1a344:	02e61a63          	bne	a2,a4,1a378 <__unordtf2+0x98>
   1a348:	01e6e6b3          	or	a3,a3,t5
   1a34c:	01d6e6b3          	or	a3,a3,t4
   1a350:	0106e6b3          	or	a3,a3,a6
   1a354:	ca99                	c.beqz	a3,1a36a <__unordtf2+0x8a>
   1a356:	0842                	c.slli	a6,0x10
   1a358:	41085813          	srai	a6,a6,0x10
   1a35c:	02085363          	bge	a6,zero,1a382 <__unordtf2+0xa2>
   1a360:	66a1                	c.lui	a3,0x8
   1a362:	16fd                	c.addi	a3,-1 # 7fff <exit-0x80b5>
   1a364:	4505                	c.li	a0,1
   1a366:	02d71163          	bne	a4,a3,1a388 <__unordtf2+0xa8>
   1a36a:	01c7e7b3          	or	a5,a5,t3
   1a36e:	0067e7b3          	or	a5,a5,t1
   1a372:	8fcd                	c.or	a5,a1
   1a374:	4505                	c.li	a0,1
   1a376:	cb89                	c.beqz	a5,1a388 <__unordtf2+0xa8>
   1a378:	05c2                	c.slli	a1,0x10
   1a37a:	85c1                	c.srai	a1,0x10
   1a37c:	4505                	c.li	a0,1
   1a37e:	0005c563          	blt	a1,zero,1a388 <__unordtf2+0xa8>
   1a382:	00186073          	csrrsi	zero,fflags,16
   1a386:	4505                	c.li	a0,1
   1a388:	0141                	c.addi	sp,16
   1a38a:	8082                	c.jr	ra

0001a38c <__fixtfsi>:
   1a38c:	4114                	c.lw	a3,0(a0)
   1a38e:	00452883          	lw	a7,4(a0)
   1a392:	451c                	c.lw	a5,8(a0)
   1a394:	4550                	c.lw	a2,12(a0)
   1a396:	1101                	c.addi	sp,-32
   1a398:	00202773          	csrrs	a4,frm,zero
   1a39c:	6591                	c.lui	a1,0x4
   1a39e:	00161813          	slli	a6,a2,0x1
   1a3a2:	01061713          	slli	a4,a2,0x10
   1a3a6:	c036                	c.swsp	a3,0(sp)
   1a3a8:	c246                	c.swsp	a7,4(sp)
   1a3aa:	c43e                	c.swsp	a5,8(sp)
   1a3ac:	c632                	c.swsp	a2,12(sp)
   1a3ae:	c836                	c.swsp	a3,16(sp)
   1a3b0:	ca46                	c.swsp	a7,20(sp)
   1a3b2:	cc3e                	c.swsp	a5,24(sp)
   1a3b4:	01185813          	srli	a6,a6,0x11
   1a3b8:	15f9                	c.addi	a1,-2 # 3ffe <exit-0xc0b6>
   1a3ba:	8341                	c.srli	a4,0x10
   1a3bc:	0105cc63          	blt	a1,a6,1a3d4 <__fixtfsi+0x48>
   1a3c0:	0c081463          	bne	a6,zero,1a488 <__fixtfsi+0xfc>
   1a3c4:	0116e6b3          	or	a3,a3,a7
   1a3c8:	8edd                	c.or	a3,a5
   1a3ca:	00e6e533          	or	a0,a3,a4
   1a3ce:	ed4d                	c.bnez	a0,1a488 <__fixtfsi+0xfc>
   1a3d0:	6105                	c.addi16sp	sp,32
   1a3d2:	8082                	c.jr	ra
   1a3d4:	6511                	c.lui	a0,0x4
   1a3d6:	827d                	c.srli	a2,0x1f
   1a3d8:	0575                	c.addi	a0,29 # 401d <exit-0xc097>
   1a3da:	85b2                	c.mv	a1,a2
   1a3dc:	03055663          	bge	a0,a6,1a408 <__fixtfsi+0x7c>
   1a3e0:	80000537          	lui	a0,0x80000
   1a3e4:	c64d                	c.beqz	a2,1a48e <__fixtfsi+0x102>
   1a3e6:	6611                	c.lui	a2,0x4
   1a3e8:	0679                	c.addi	a2,30 # 401e <exit-0xc096>
   1a3ea:	0ac81563          	bne	a6,a2,1a494 <__fixtfsi+0x108>
   1a3ee:	0117d613          	srli	a2,a5,0x11
   1a3f2:	073e                	c.slli	a4,0xf
   1a3f4:	8f51                	c.or	a4,a2
   1a3f6:	ef59                	c.bnez	a4,1a494 <__fixtfsi+0x108>
   1a3f8:	0116e6b3          	or	a3,a3,a7
   1a3fc:	07be                	c.slli	a5,0xf
   1a3fe:	8fd5                	c.or	a5,a3
   1a400:	dbe1                	c.beqz	a5,1a3d0 <__fixtfsi+0x44>
   1a402:	0015a073          	csrrs	zero,fflags,a1
   1a406:	b7e9                	c.j	1a3d0 <__fixtfsi+0x44>
   1a408:	66c1                	c.lui	a3,0x10
   1a40a:	8f55                	c.or	a4,a3
   1a40c:	6691                	c.lui	a3,0x4
   1a40e:	06f68693          	addi	a3,a3,111 # 406f <exit-0xc045>
   1a412:	410686b3          	sub	a3,a3,a6
   1a416:	0808                	c.addi4spn	a0,sp,16
   1a418:	4056d313          	srai	t1,a3,0x5
   1a41c:	ce3a                	c.swsp	a4,28(sp)
   1a41e:	8afd                	c.andi	a3,31
   1a420:	4801                	c.li	a6,0
   1a422:	4881                	c.li	a7,0
   1a424:	85aa                	c.mv	a1,a0
   1a426:	00052e03          	lw	t3,0(a0) # 80000000 <__BSS_END__+0x7ffe45a4>
   1a42a:	0885                	c.addi	a7,1
   1a42c:	0511                	c.addi	a0,4
   1a42e:	01c86833          	or	a6,a6,t3
   1a432:	ff131ae3          	bne	t1,a7,1a426 <__fixtfsi+0x9a>
   1a436:	00231893          	slli	a7,t1,0x2
   1a43a:	ee81                	c.bnez	a3,1a452 <__fixtfsi+0xc6>
   1a43c:	95c6                	c.add	a1,a7
   1a43e:	419c                	c.lw	a5,0(a1)
   1a440:	c83e                	c.swsp	a5,16(sp)
   1a442:	4542                	c.lwsp	a0,16(sp)
   1a444:	c219                	c.beqz	a2,1a44a <__fixtfsi+0xbe>
   1a446:	40a00533          	sub	a0,zero,a0
   1a44a:	4585                	c.li	a1,1
   1a44c:	fa081be3          	bne	a6,zero,1a402 <__fixtfsi+0x76>
   1a450:	b741                	c.j	1a3d0 <__fixtfsi+0x44>
   1a452:	98ae                	c.add	a7,a1
   1a454:	0008a883          	lw	a7,0(a7)
   1a458:	02000513          	addi	a0,zero,32
   1a45c:	8d15                	c.sub	a0,a3
   1a45e:	00a898b3          	sll	a7,a7,a0
   1a462:	4e09                	c.li	t3,2
   1a464:	01186833          	or	a6,a6,a7
   1a468:	4881                	c.li	a7,0
   1a46a:	01c31963          	bne	t1,t3,1a47c <__fixtfsi+0xf0>
   1a46e:	00d7d7b3          	srl	a5,a5,a3
   1a472:	00a71533          	sll	a0,a4,a0
   1a476:	8fc9                	c.or	a5,a0
   1a478:	c83e                	c.swsp	a5,16(sp)
   1a47a:	4885                	c.li	a7,1
   1a47c:	088a                	c.slli	a7,0x2
   1a47e:	95c6                	c.add	a1,a7
   1a480:	00d75733          	srl	a4,a4,a3
   1a484:	c198                	c.sw	a4,0(a1)
   1a486:	bf75                	c.j	1a442 <__fixtfsi+0xb6>
   1a488:	4585                	c.li	a1,1
   1a48a:	4501                	c.li	a0,0
   1a48c:	bf9d                	c.j	1a402 <__fixtfsi+0x76>
   1a48e:	45c1                	c.li	a1,16
   1a490:	157d                	c.addi	a0,-1
   1a492:	bf85                	c.j	1a402 <__fixtfsi+0x76>
   1a494:	45c1                	c.li	a1,16
   1a496:	b7b5                	c.j	1a402 <__fixtfsi+0x76>

0001a498 <__floatsitf>:
   1a498:	7179                	c.addi16sp	sp,-48
   1a49a:	d226                	c.swsp	s1,36(sp)
   1a49c:	d606                	c.swsp	ra,44(sp)
   1a49e:	d422                	c.swsp	s0,40(sp)
   1a4a0:	d04a                	c.swsp	s2,32(sp)
   1a4a2:	84aa                	c.mv	s1,a0
   1a4a4:	c9c5                	c.beqz	a1,1a554 <__floatsitf+0xbc>
   1a4a6:	41f5d793          	srai	a5,a1,0x1f
   1a4aa:	00b7c433          	xor	s0,a5,a1
   1a4ae:	8c1d                	c.sub	s0,a5
   1a4b0:	8522                	c.mv	a0,s0
   1a4b2:	01f5d913          	srli	s2,a1,0x1f
   1a4b6:	242d                	c.jal	1a6e0 <__clzsi2>
   1a4b8:	05150793          	addi	a5,a0,81
   1a4bc:	6591                	c.lui	a1,0x4
   1a4be:	05f9                	c.addi	a1,30 # 401e <exit-0xc096>
   1a4c0:	4057d713          	srai	a4,a5,0x5
   1a4c4:	c822                	c.swsp	s0,16(sp)
   1a4c6:	ca02                	c.swsp	zero,20(sp)
   1a4c8:	cc02                	c.swsp	zero,24(sp)
   1a4ca:	ce02                	c.swsp	zero,28(sp)
   1a4cc:	8bfd                	c.andi	a5,31
   1a4ce:	8d89                	c.sub	a1,a0
   1a4d0:	0810                	c.addi4spn	a2,sp,16
   1a4d2:	c395                	c.beqz	a5,1a4f6 <__floatsitf+0x5e>
   1a4d4:	4689                	c.li	a3,2
   1a4d6:	06d71d63          	bne	a4,a3,1a550 <__floatsitf+0xb8>
   1a4da:	02000693          	addi	a3,zero,32
   1a4de:	8e9d                	c.sub	a3,a5
   1a4e0:	00d456b3          	srl	a3,s0,a3
   1a4e4:	ce36                	c.swsp	a3,28(sp)
   1a4e6:	fff70693          	addi	a3,a4,-1
   1a4ea:	070a                	c.slli	a4,0x2
   1a4ec:	9732                	c.add	a4,a2
   1a4ee:	00f41433          	sll	s0,s0,a5
   1a4f2:	c300                	c.sw	s0,0(a4)
   1a4f4:	a829                	c.j	1a50e <__floatsitf+0x76>
   1a4f6:	478d                	c.li	a5,3
   1a4f8:	8f99                	c.sub	a5,a4
   1a4fa:	078a                	c.slli	a5,0x2
   1a4fc:	97b2                	c.add	a5,a2
   1a4fe:	439c                	c.lw	a5,0(a5)
   1a500:	ce3e                	c.swsp	a5,28(sp)
   1a502:	4789                	c.li	a5,2
   1a504:	86be                	c.mv	a3,a5
   1a506:	00f71463          	bne	a4,a5,1a50e <__floatsitf+0x76>
   1a50a:	cc22                	c.swsp	s0,24(sp)
   1a50c:	4685                	c.li	a3,1
   1a50e:	068a                	c.slli	a3,0x2
   1a510:	00062023          	sw	zero,0(a2)
   1a514:	00062223          	sw	zero,4(a2)
   1a518:	16f1                	c.addi	a3,-4
   1a51a:	4791                	c.li	a5,4
   1a51c:	00f6e363          	bltu	a3,a5,1a522 <__floatsitf+0x8a>
   1a520:	cc02                	c.swsp	zero,24(sp)
   1a522:	47f2                	c.lwsp	a5,28(sp)
   1a524:	4542                	c.lwsp	a0,16(sp)
   1a526:	4652                	c.lwsp	a2,20(sp)
   1a528:	00f11623          	sh	a5,12(sp)
   1a52c:	00f91793          	slli	a5,s2,0xf
   1a530:	8fcd                	c.or	a5,a1
   1a532:	00f11723          	sh	a5,14(sp)
   1a536:	46e2                	c.lwsp	a3,24(sp)
   1a538:	47b2                	c.lwsp	a5,12(sp)
   1a53a:	50b2                	c.lwsp	ra,44(sp)
   1a53c:	5422                	c.lwsp	s0,40(sp)
   1a53e:	c088                	c.sw	a0,0(s1)
   1a540:	c0d0                	c.sw	a2,4(s1)
   1a542:	c494                	c.sw	a3,8(s1)
   1a544:	c4dc                	c.sw	a5,12(s1)
   1a546:	5902                	c.lwsp	s2,32(sp)
   1a548:	8526                	c.mv	a0,s1
   1a54a:	5492                	c.lwsp	s1,36(sp)
   1a54c:	6145                	c.addi16sp	sp,48
   1a54e:	8082                	c.jr	ra
   1a550:	470d                	c.li	a4,3
   1a552:	bf51                	c.j	1a4e6 <__floatsitf+0x4e>
   1a554:	ce02                	c.swsp	zero,28(sp)
   1a556:	cc02                	c.swsp	zero,24(sp)
   1a558:	ca02                	c.swsp	zero,20(sp)
   1a55a:	c802                	c.swsp	zero,16(sp)
   1a55c:	4901                	c.li	s2,0
   1a55e:	b7d1                	c.j	1a522 <__floatsitf+0x8a>

0001a560 <__extenddftf2>:
   1a560:	715d                	c.addi16sp	sp,-80
   1a562:	a42a                	c.fsdsp	fa0,8(sp)
   1a564:	c4a2                	c.swsp	s0,72(sp)
   1a566:	c0ca                	c.swsp	s2,64(sp)
   1a568:	de4e                	c.swsp	s3,60(sp)
   1a56a:	4922                	c.lwsp	s2,8(sp)
   1a56c:	4432                	c.lwsp	s0,12(sp)
   1a56e:	c686                	c.swsp	ra,76(sp)
   1a570:	c2a6                	c.swsp	s1,68(sp)
   1a572:	89aa                	c.mv	s3,a0
   1a574:	002027f3          	csrrs	a5,frm,zero
   1a578:	01445493          	srli	s1,s0,0x14
   1a57c:	00c41793          	slli	a5,s0,0xc
   1a580:	7ff4f493          	andi	s1,s1,2047
   1a584:	83b1                	c.srli	a5,0xc
   1a586:	00148713          	addi	a4,s1,1
   1a58a:	d04a                	c.swsp	s2,32(sp)
   1a58c:	d23e                	c.swsp	a5,36(sp)
   1a58e:	d602                	c.swsp	zero,44(sp)
   1a590:	d402                	c.swsp	zero,40(sp)
   1a592:	7fe77713          	andi	a4,a4,2046
   1a596:	807d                	c.srli	s0,0x1f
   1a598:	cf39                	c.beqz	a4,1a5f6 <__extenddftf2+0x96>
   1a59a:	0047d693          	srli	a3,a5,0x4
   1a59e:	6711                	c.lui	a4,0x4
   1a5a0:	d636                	c.swsp	a3,44(sp)
   1a5a2:	07f2                	c.slli	a5,0x1c
   1a5a4:	00495693          	srli	a3,s2,0x4
   1a5a8:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc4b4>
   1a5ac:	8fd5                	c.or	a5,a3
   1a5ae:	0972                	c.slli	s2,0x1c
   1a5b0:	9726                	c.add	a4,s1
   1a5b2:	d43e                	c.swsp	a5,40(sp)
   1a5b4:	d24a                	c.swsp	s2,36(sp)
   1a5b6:	d002                	c.swsp	zero,32(sp)
   1a5b8:	4481                	c.li	s1,0
   1a5ba:	5532                	c.lwsp	a0,44(sp)
   1a5bc:	043e                	c.slli	s0,0xf
   1a5be:	8c59                	c.or	s0,a4
   1a5c0:	00a11e23          	sh	a0,28(sp)
   1a5c4:	00811f23          	sh	s0,30(sp)
   1a5c8:	5582                	c.lwsp	a1,32(sp)
   1a5ca:	5612                	c.lwsp	a2,36(sp)
   1a5cc:	56a2                	c.lwsp	a3,40(sp)
   1a5ce:	47f2                	c.lwsp	a5,28(sp)
   1a5d0:	c099                	c.beqz	s1,1a5d6 <__extenddftf2+0x76>
   1a5d2:	00186073          	csrrsi	zero,fflags,16
   1a5d6:	40b6                	c.lwsp	ra,76(sp)
   1a5d8:	4426                	c.lwsp	s0,72(sp)
   1a5da:	00b9a023          	sw	a1,0(s3)
   1a5de:	00c9a223          	sw	a2,4(s3)
   1a5e2:	00d9a423          	sw	a3,8(s3)
   1a5e6:	00f9a623          	sw	a5,12(s3)
   1a5ea:	4496                	c.lwsp	s1,68(sp)
   1a5ec:	4906                	c.lwsp	s2,64(sp)
   1a5ee:	854e                	c.mv	a0,s3
   1a5f0:	59f2                	c.lwsp	s3,60(sp)
   1a5f2:	6161                	c.addi16sp	sp,80
   1a5f4:	8082                	c.jr	ra
   1a5f6:	0127e533          	or	a0,a5,s2
   1a5fa:	e8dd                	c.bnez	s1,1a6b0 <__extenddftf2+0x150>
   1a5fc:	4701                	c.li	a4,0
   1a5fe:	dd55                	c.beqz	a0,1a5ba <__extenddftf2+0x5a>
   1a600:	c7ad                	c.beqz	a5,1a66a <__extenddftf2+0x10a>
   1a602:	853e                	c.mv	a0,a5
   1a604:	28f1                	c.jal	1a6e0 <__clzsi2>
   1a606:	03150713          	addi	a4,a0,49
   1a60a:	40575693          	srai	a3,a4,0x5
   1a60e:	8b7d                	c.andi	a4,31
   1a610:	57f1                	c.li	a5,-4
   1a612:	c325                	c.beqz	a4,1a672 <__extenddftf2+0x112>
   1a614:	02f687b3          	mul	a5,a3,a5
   1a618:	02000893          	addi	a7,zero,32
   1a61c:	100c                	c.addi4spn	a1,sp,32
   1a61e:	40e888b3          	sub	a7,a7,a4
   1a622:	00c78613          	addi	a2,a5,12
   1a626:	962e                	c.add	a2,a1
   1a628:	40f007b3          	sub	a5,zero,a5
   1a62c:	06c59263          	bne	a1,a2,1a690 <__extenddftf2+0x130>
   1a630:	fff68793          	addi	a5,a3,-1
   1a634:	068a                	c.slli	a3,0x2
   1a636:	95b6                	c.add	a1,a3
   1a638:	00e91733          	sll	a4,s2,a4
   1a63c:	c198                	c.sw	a4,0(a1)
   1a63e:	0785                	c.addi	a5,1
   1a640:	078a                	c.slli	a5,0x2
   1a642:	46a1                	c.li	a3,8
   1a644:	1018                	c.addi4spn	a4,sp,32
   1a646:	00d7e863          	bltu	a5,a3,1a656 <__extenddftf2+0xf6>
   1a64a:	00072023          	sw	zero,0(a4)
   1a64e:	00072223          	sw	zero,4(a4)
   1a652:	17e1                	c.addi	a5,-8
   1a654:	1038                	c.addi4spn	a4,sp,40
   1a656:	4691                	c.li	a3,4
   1a658:	00d7e463          	bltu	a5,a3,1a660 <__extenddftf2+0x100>
   1a65c:	00072023          	sw	zero,0(a4)
   1a660:	6711                	c.lui	a4,0x4
   1a662:	c0c70713          	addi	a4,a4,-1012 # 3c0c <exit-0xc4a8>
   1a666:	8f09                	c.sub	a4,a0
   1a668:	bf89                	c.j	1a5ba <__extenddftf2+0x5a>
   1a66a:	289d                	c.jal	1a6e0 <__clzsi2>
   1a66c:	02050513          	addi	a0,a0,32
   1a670:	bf59                	c.j	1a606 <__extenddftf2+0xa6>
   1a672:	02f687b3          	mul	a5,a3,a5
   1a676:	1078                	c.addi4spn	a4,sp,44
   1a678:	460d                	c.li	a2,3
   1a67a:	00f705b3          	add	a1,a4,a5
   1a67e:	418c                	c.lw	a1,0(a1)
   1a680:	167d                	c.addi	a2,-1
   1a682:	1771                	c.addi	a4,-4
   1a684:	c34c                	c.sw	a1,4(a4)
   1a686:	fed65ae3          	bge	a2,a3,1a67a <__extenddftf2+0x11a>
   1a68a:	fff68793          	addi	a5,a3,-1
   1a68e:	bf45                	c.j	1a63e <__extenddftf2+0xde>
   1a690:	00062803          	lw	a6,0(a2)
   1a694:	ffc62303          	lw	t1,-4(a2)
   1a698:	00f60e33          	add	t3,a2,a5
   1a69c:	00e81833          	sll	a6,a6,a4
   1a6a0:	01135333          	srl	t1,t1,a7
   1a6a4:	00686833          	or	a6,a6,t1
   1a6a8:	010e2023          	sw	a6,0(t3)
   1a6ac:	1671                	c.addi	a2,-4
   1a6ae:	bfbd                	c.j	1a62c <__extenddftf2+0xcc>
   1a6b0:	c50d                	c.beqz	a0,1a6da <__extenddftf2+0x17a>
   1a6b2:	01c79713          	slli	a4,a5,0x1c
   1a6b6:	00495693          	srli	a3,s2,0x4
   1a6ba:	8f55                	c.or	a4,a3
   1a6bc:	000804b7          	lui	s1,0x80
   1a6c0:	0097b4b3          	sltu	s1,a5,s1
   1a6c4:	d43a                	c.swsp	a4,40(sp)
   1a6c6:	8391                	c.srli	a5,0x4
   1a6c8:	6721                	c.lui	a4,0x8
   1a6ca:	0972                	c.slli	s2,0x1c
   1a6cc:	8fd9                	c.or	a5,a4
   1a6ce:	0492                	c.slli	s1,0x4
   1a6d0:	d24a                	c.swsp	s2,36(sp)
   1a6d2:	d002                	c.swsp	zero,32(sp)
   1a6d4:	d63e                	c.swsp	a5,44(sp)
   1a6d6:	177d                	c.addi	a4,-1 # 7fff <exit-0x80b5>
   1a6d8:	b5cd                	c.j	1a5ba <__extenddftf2+0x5a>
   1a6da:	4481                	c.li	s1,0
   1a6dc:	6721                	c.lui	a4,0x8
   1a6de:	bfe5                	c.j	1a6d6 <__extenddftf2+0x176>

0001a6e0 <__clzsi2>:
   1a6e0:	67c1                	c.lui	a5,0x10
   1a6e2:	02f57563          	bgeu	a0,a5,1a70c <__clzsi2+0x2c>
   1a6e6:	10053793          	sltiu	a5,a0,256
   1a6ea:	0017b793          	sltiu	a5,a5,1
   1a6ee:	078e                	c.slli	a5,0x3
   1a6f0:	676d                	c.lui	a4,0x1b
   1a6f2:	02000693          	addi	a3,zero,32
   1a6f6:	8e9d                	c.sub	a3,a5
   1a6f8:	00f55533          	srl	a0,a0,a5
   1a6fc:	e9870793          	addi	a5,a4,-360 # 1ae98 <__clz_tab>
   1a700:	97aa                	c.add	a5,a0
   1a702:	0007c503          	lbu	a0,0(a5) # 10000 <exit-0xb4>
   1a706:	40a68533          	sub	a0,a3,a0
   1a70a:	8082                	c.jr	ra
   1a70c:	01000737          	lui	a4,0x1000
   1a710:	47e1                	c.li	a5,24
   1a712:	fce57fe3          	bgeu	a0,a4,1a6f0 <__clzsi2+0x10>
   1a716:	47c1                	c.li	a5,16
   1a718:	bfe1                	c.j	1a6f0 <__clzsi2+0x10>
