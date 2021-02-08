.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__13J3DDrawBufferFUl
__ct__13J3DDrawBufferFUl:
/* 80039130 00036070  7C 08 02 A6 */	mflr r0
/* 80039134 00036074  90 01 00 04 */	stw r0, 4(r1)
/* 80039138 00036078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003913C 0003607C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80039140 00036080  3B E4 00 00 */	addi r31, r4, 0
/* 80039144 00036084  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80039148 00036088  3B C3 00 00 */	addi r30, r3, 0
/* 8003914C 0003608C  54 83 10 3A */	slwi r3, r4, 2
/* 80039150 00036090  38 80 00 20 */	li r4, 0x20
/* 80039154 00036094  4B FD 38 A5 */	bl __nwa__FUli
/* 80039158 00036098  90 7E 00 00 */	stw r3, 0(r30)
/* 8003915C 0003609C  38 80 00 00 */	li r4, 0
/* 80039160 000360A0  3C 00 43 30 */	lis r0, 0x4330
/* 80039164 000360A4  93 FE 00 04 */	stw r31, 4(r30)
/* 80039168 000360A8  7F C3 F3 78 */	mr r3, r30
/* 8003916C 000360AC  90 9E 00 08 */	stw r4, 8(r30)
/* 80039170 000360B0  90 9E 00 0C */	stw r4, 0xc(r30)
/* 80039174 000360B4  C0 02 82 E8 */	lfs f0, $$2824-_SDA2_BASE_(r2)
/* 80039178 000360B8  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8003917C 000360BC  C0 02 82 EC */	lfs f0, $$2825-_SDA2_BASE_(r2)
/* 80039180 000360C0  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80039184 000360C4  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 80039188 000360C8  90 9E 00 20 */	stw r4, 0x20(r30)
/* 8003918C 000360CC  80 9E 00 04 */	lwz r4, 4(r30)
/* 80039190 000360D0  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 80039194 000360D4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80039198 000360D8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8003919C 000360DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 800391A0 000360E0  C8 22 82 F0 */	lfd f1, $$2827-_SDA2_BASE_(r2)
/* 800391A4 000360E4  EC 42 00 28 */	fsubs f2, f2, f0
/* 800391A8 000360E8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800391AC 000360EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 800391B0 000360F0  EC 02 00 24 */	fdivs f0, f2, f0
/* 800391B4 000360F4  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 800391B8 000360F8  48 00 00 21 */	bl frameInit__13J3DDrawBufferFv
/* 800391BC 000360FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800391C0 00036100  7F C3 F3 78 */	mr r3, r30
/* 800391C4 00036104  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800391C8 00036108  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800391CC 0003610C  7C 08 03 A6 */	mtlr r0
/* 800391D0 00036110  38 21 00 20 */	addi r1, r1, 0x20
/* 800391D4 00036114  4E 80 00 20 */	blr 

.global frameInit__13J3DDrawBufferFv
frameInit__13J3DDrawBufferFv:
/* 800391D8 00036118  38 80 00 00 */	li r4, 0
/* 800391DC 0003611C  38 C4 00 00 */	addi r6, r4, 0
/* 800391E0 00036120  38 E0 00 00 */	li r7, 0
/* 800391E4 00036124  48 00 00 14 */	b lbl_800391F8
lbl_800391E8:
/* 800391E8 00036128  80 A3 00 00 */	lwz r5, 0(r3)
/* 800391EC 0003612C  38 E7 00 01 */	addi r7, r7, 1
/* 800391F0 00036130  7C C5 21 2E */	stwx r6, r5, r4
/* 800391F4 00036134  38 84 00 04 */	addi r4, r4, 4
lbl_800391F8:
/* 800391F8 00036138  80 03 00 04 */	lwz r0, 4(r3)
/* 800391FC 0003613C  7C 07 00 40 */	cmplw r7, r0
/* 80039200 00036140  41 80 FF E8 */	blt lbl_800391E8
/* 80039204 00036144  38 00 00 00 */	li r0, 0
/* 80039208 00036148  90 03 00 20 */	stw r0, 0x20(r3)
/* 8003920C 0003614C  4E 80 00 20 */	blr 

.global entryMatSort__13J3DDrawBufferFP12J3DMatPacket
entryMatSort__13J3DDrawBufferFP12J3DMatPacket:
/* 80039210 00036150  7C 08 02 A6 */	mflr r0
/* 80039214 00036154  90 01 00 04 */	stw r0, 4(r1)
/* 80039218 00036158  38 00 00 00 */	li r0, 0
/* 8003921C 0003615C  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 80039220 00036160  93 E1 00 44 */	stw r31, 0x44(r1)
/* 80039224 00036164  3B E4 00 00 */	addi r31, r4, 0
/* 80039228 00036168  93 C1 00 40 */	stw r30, 0x40(r1)
/* 8003922C 0003616C  3B C3 00 00 */	addi r30, r3, 0
/* 80039230 00036170  93 A1 00 3C */	stw r29, 0x3c(r1)
/* 80039234 00036174  93 81 00 38 */	stw r28, 0x38(r1)
/* 80039238 00036178  90 04 00 04 */	stw r0, 4(r4)
/* 8003923C 0003617C  3C 80 80 40 */	lis r4, j3dSys@ha
/* 80039240 00036180  38 64 0E D8 */	addi r3, r4, j3dSys@l
/* 80039244 00036184  90 1F 00 08 */	stw r0, 8(r31)
/* 80039248 00036188  38 80 00 00 */	li r4, 0
/* 8003924C 0003618C  80 BF 00 34 */	lwz r5, 0x34(r31)
/* 80039250 00036190  90 05 00 04 */	stw r0, 4(r5)
/* 80039254 00036194  90 05 00 08 */	stw r0, 8(r5)
/* 80039258 00036198  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 8003925C 0003619C  83 A3 00 54 */	lwz r29, 0x54(r3)
/* 80039260 000361A0  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80039264 000361A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80039268 000361A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8003926C 000361AC  7D 88 03 A6 */	mtlr r12
/* 80039270 000361B0  4E 80 00 21 */	blrl 
/* 80039274 000361B4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80039278 000361B8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8003927C 000361BC  40 82 00 0C */	bne lbl_80039288
/* 80039280 000361C0  38 A0 00 00 */	li r5, 0
/* 80039284 000361C4  48 00 00 10 */	b lbl_80039294
lbl_80039288:
/* 80039288 000361C8  80 7D 00 04 */	lwz r3, 4(r29)
/* 8003928C 000361CC  54 00 28 34 */	slwi r0, r0, 5
/* 80039290 000361D0  7C A3 02 14 */	add r5, r3, r0
lbl_80039294:
/* 80039294 000361D4  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80039298 000361D8  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8003929C 000361DC  41 82 00 20 */	beq lbl_800392BC
/* 800392A0 000361E0  80 9E 00 00 */	lwz r4, 0(r30)
/* 800392A4 000361E4  38 60 00 01 */	li r3, 1
/* 800392A8 000361E8  80 04 00 00 */	lwz r0, 0(r4)
/* 800392AC 000361EC  90 1F 00 04 */	stw r0, 4(r31)
/* 800392B0 000361F0  80 9E 00 00 */	lwz r4, 0(r30)
/* 800392B4 000361F4  93 E4 00 00 */	stw r31, 0(r4)
/* 800392B8 000361F8  48 00 00 90 */	b lbl_80039348
lbl_800392BC:
/* 800392BC 000361FC  80 7E 00 04 */	lwz r3, 4(r30)
/* 800392C0 00036200  80 9E 00 00 */	lwz r4, 0(r30)
/* 800392C4 00036204  38 03 FF FF */	addi r0, r3, -1
/* 800392C8 00036208  7C A0 00 38 */	and r0, r5, r0
/* 800392CC 0003620C  54 1D 10 3A */	slwi r29, r0, 2
/* 800392D0 00036210  7C 04 E8 2E */	lwzx r0, r4, r29
/* 800392D4 00036214  28 00 00 00 */	cmplwi r0, 0
/* 800392D8 00036218  40 82 00 10 */	bne lbl_800392E8
/* 800392DC 0003621C  7F E4 E9 2E */	stwx r31, r4, r29
/* 800392E0 00036220  38 60 00 01 */	li r3, 1
/* 800392E4 00036224  48 00 00 64 */	b lbl_80039348
lbl_800392E8:
/* 800392E8 00036228  7C 1C 03 78 */	mr r28, r0
/* 800392EC 0003622C  48 00 00 3C */	b lbl_80039328
lbl_800392F0:
/* 800392F0 00036230  7F 83 E3 78 */	mr r3, r28
/* 800392F4 00036234  81 9C 00 00 */	lwz r12, 0(r28)
/* 800392F8 00036238  7F E4 FB 78 */	mr r4, r31
/* 800392FC 0003623C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80039300 00036240  7D 88 03 A6 */	mtlr r12
/* 80039304 00036244  4E 80 00 21 */	blrl 
/* 80039308 00036248  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003930C 0003624C  41 82 00 18 */	beq lbl_80039324
/* 80039310 00036250  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 80039314 00036254  7F 83 E3 78 */	mr r3, r28
/* 80039318 00036258  4B FF E4 6D */	bl addShapePacket__12J3DMatPacketFP14J3DShapePacket
/* 8003931C 0003625C  38 60 00 00 */	li r3, 0
/* 80039320 00036260  48 00 00 28 */	b lbl_80039348
lbl_80039324:
/* 80039324 00036264  83 9C 00 04 */	lwz r28, 4(r28)
lbl_80039328:
/* 80039328 00036268  28 1C 00 00 */	cmplwi r28, 0
/* 8003932C 0003626C  40 82 FF C4 */	bne lbl_800392F0
/* 80039330 00036270  80 9E 00 00 */	lwz r4, 0(r30)
/* 80039334 00036274  38 60 00 01 */	li r3, 1
/* 80039338 00036278  7C 04 E8 2E */	lwzx r0, r4, r29
/* 8003933C 0003627C  90 1F 00 04 */	stw r0, 4(r31)
/* 80039340 00036280  80 9E 00 00 */	lwz r4, 0(r30)
/* 80039344 00036284  7F E4 E9 2E */	stwx r31, r4, r29
lbl_80039348:
/* 80039348 00036288  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8003934C 0003628C  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 80039350 00036290  83 C1 00 40 */	lwz r30, 0x40(r1)
/* 80039354 00036294  7C 08 03 A6 */	mtlr r0
/* 80039358 00036298  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 8003935C 0003629C  83 81 00 38 */	lwz r28, 0x38(r1)
/* 80039360 000362A0  38 21 00 48 */	addi r1, r1, 0x48
/* 80039364 000362A4  4E 80 00 20 */	blr 

.global entryMatAnmSort__13J3DDrawBufferFP12J3DMatPacket
entryMatAnmSort__13J3DDrawBufferFP12J3DMatPacket:
/* 80039368 000362A8  7C 08 02 A6 */	mflr r0
/* 8003936C 000362AC  7C 68 1B 78 */	mr r8, r3
/* 80039370 000362B0  90 01 00 04 */	stw r0, 4(r1)
/* 80039374 000362B4  94 21 FF F8 */	stwu r1, -8(r1)
/* 80039378 000362B8  80 E4 00 44 */	lwz r7, 0x44(r4)
/* 8003937C 000362BC  80 63 00 04 */	lwz r3, 4(r3)
/* 80039380 000362C0  28 07 00 00 */	cmplwi r7, 0
/* 80039384 000362C4  38 03 FF FF */	addi r0, r3, -1
/* 80039388 000362C8  7C E3 00 38 */	and r3, r7, r0
/* 8003938C 000362CC  40 82 00 10 */	bne lbl_8003939C
/* 80039390 000362D0  7D 03 43 78 */	mr r3, r8
/* 80039394 000362D4  4B FF FE 7D */	bl entryMatSort__13J3DDrawBufferFP12J3DMatPacket
/* 80039398 000362D8  48 00 00 80 */	b lbl_80039418
lbl_8003939C:
/* 8003939C 000362DC  38 00 00 00 */	li r0, 0
/* 800393A0 000362E0  90 04 00 04 */	stw r0, 4(r4)
/* 800393A4 000362E4  54 66 10 3A */	slwi r6, r3, 2
/* 800393A8 000362E8  90 04 00 08 */	stw r0, 8(r4)
/* 800393AC 000362EC  80 64 00 34 */	lwz r3, 0x34(r4)
/* 800393B0 000362F0  90 03 00 04 */	stw r0, 4(r3)
/* 800393B4 000362F4  90 03 00 08 */	stw r0, 8(r3)
/* 800393B8 000362F8  80 08 00 00 */	lwz r0, 0(r8)
/* 800393BC 000362FC  7C 60 32 14 */	add r3, r0, r6
/* 800393C0 00036300  80 A3 00 00 */	lwz r5, 0(r3)
/* 800393C4 00036304  28 05 00 00 */	cmplwi r5, 0
/* 800393C8 00036308  40 82 00 10 */	bne lbl_800393D8
/* 800393CC 0003630C  90 83 00 00 */	stw r4, 0(r3)
/* 800393D0 00036310  38 60 00 01 */	li r3, 1
/* 800393D4 00036314  48 00 00 44 */	b lbl_80039418
lbl_800393D8:
/* 800393D8 00036318  7C A3 2B 78 */	mr r3, r5
/* 800393DC 0003631C  48 00 00 24 */	b lbl_80039400
lbl_800393E0:
/* 800393E0 00036320  80 03 00 44 */	lwz r0, 0x44(r3)
/* 800393E4 00036324  7C 00 38 40 */	cmplw r0, r7
/* 800393E8 00036328  40 82 00 14 */	bne lbl_800393FC
/* 800393EC 0003632C  80 84 00 34 */	lwz r4, 0x34(r4)
/* 800393F0 00036330  4B FF E3 95 */	bl addShapePacket__12J3DMatPacketFP14J3DShapePacket
/* 800393F4 00036334  38 60 00 00 */	li r3, 0
/* 800393F8 00036338  48 00 00 20 */	b lbl_80039418
lbl_800393FC:
/* 800393FC 0003633C  80 63 00 04 */	lwz r3, 4(r3)
lbl_80039400:
/* 80039400 00036340  28 03 00 00 */	cmplwi r3, 0
/* 80039404 00036344  40 82 FF DC */	bne lbl_800393E0
/* 80039408 00036348  90 A4 00 04 */	stw r5, 4(r4)
/* 8003940C 0003634C  38 60 00 01 */	li r3, 1
/* 80039410 00036350  80 A8 00 00 */	lwz r5, 0(r8)
/* 80039414 00036354  7C 85 31 2E */	stwx r4, r5, r6
lbl_80039418:
/* 80039418 00036358  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8003941C 0003635C  38 21 00 08 */	addi r1, r1, 8
/* 80039420 00036360  7C 08 03 A6 */	mtlr r0
/* 80039424 00036364  4E 80 00 20 */	blr 

.global entryZSort__13J3DDrawBufferFP12J3DMatPacket
entryZSort__13J3DDrawBufferFP12J3DMatPacket:
/* 80039428 00036368  7C 08 02 A6 */	mflr r0
/* 8003942C 0003636C  3C A0 80 40 */	lis r5, j3dSys@ha
/* 80039430 00036370  90 01 00 04 */	stw r0, 4(r1)
/* 80039434 00036374  38 00 00 00 */	li r0, 0
/* 80039438 00036378  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8003943C 0003637C  93 E1 00 34 */	stw r31, 0x34(r1)
/* 80039440 00036380  3B E4 00 00 */	addi r31, r4, 0
/* 80039444 00036384  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80039448 00036388  3B C3 00 00 */	addi r30, r3, 0
/* 8003944C 0003638C  38 65 0E D8 */	addi r3, r5, j3dSys@l
/* 80039450 00036390  90 04 00 04 */	stw r0, 4(r4)
/* 80039454 00036394  38 81 00 18 */	addi r4, r1, 0x18
/* 80039458 00036398  90 1F 00 08 */	stw r0, 8(r31)
/* 8003945C 0003639C  80 BF 00 34 */	lwz r5, 0x34(r31)
/* 80039460 000363A0  90 05 00 04 */	stw r0, 4(r5)
/* 80039464 000363A4  90 05 00 08 */	stw r0, 8(r5)
/* 80039468 000363A8  80 BE 00 1C */	lwz r5, 0x1c(r30)
/* 8003946C 000363AC  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80039470 000363B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80039474 000363B4  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 80039478 000363B8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8003947C 000363BC  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 80039480 000363C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80039484 000363C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80039488 000363C8  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8003948C 000363CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80039490 000363D0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80039494 000363D4  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80039498 000363D8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8003949C 000363DC  4B FE 26 15 */	bl J3DCalcZValue__FPA4_f3Vec
/* 800394A0 000363E0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 800394A4 000363E4  FC 40 08 50 */	fneg f2, f1
/* 800394A8 000363E8  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 800394AC 000363EC  EC 00 08 2A */	fadds f0, f0, f1
/* 800394B0 000363F0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800394B4 000363F4  40 80 00 30 */	bge lbl_800394E4
/* 800394B8 000363F8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 800394BC 000363FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 800394C0 00036400  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800394C4 00036404  40 81 00 14 */	ble lbl_800394D8
/* 800394C8 00036408  EC 22 08 24 */	fdivs f1, f2, f1
/* 800394CC 0003640C  48 04 96 F1 */	bl __cvt_fp2unsigned
/* 800394D0 00036410  7C 66 1B 78 */	mr r6, r3
/* 800394D4 00036414  48 00 00 14 */	b lbl_800394E8
lbl_800394D8:
/* 800394D8 00036418  80 7E 00 04 */	lwz r3, 4(r30)
/* 800394DC 0003641C  38 C3 FF FF */	addi r6, r3, -1
/* 800394E0 00036420  48 00 00 08 */	b lbl_800394E8
lbl_800394E4:
/* 800394E4 00036424  38 C0 00 00 */	li r6, 0
lbl_800394E8:
/* 800394E8 00036428  80 BE 00 04 */	lwz r5, 4(r30)
/* 800394EC 0003642C  38 60 00 01 */	li r3, 1
/* 800394F0 00036430  80 9E 00 00 */	lwz r4, 0(r30)
/* 800394F4 00036434  38 05 FF FF */	addi r0, r5, -1
/* 800394F8 00036438  7C 06 00 50 */	subf r0, r6, r0
/* 800394FC 0003643C  54 05 10 3A */	slwi r5, r0, 2
/* 80039500 00036440  7C 04 28 2E */	lwzx r0, r4, r5
/* 80039504 00036444  90 1F 00 04 */	stw r0, 4(r31)
/* 80039508 00036448  80 9E 00 00 */	lwz r4, 0(r30)
/* 8003950C 0003644C  7F E4 29 2E */	stwx r31, r4, r5
/* 80039510 00036450  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80039514 00036454  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80039518 00036458  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 8003951C 0003645C  38 21 00 38 */	addi r1, r1, 0x38
/* 80039520 00036460  7C 08 03 A6 */	mtlr r0
/* 80039524 00036464  4E 80 00 20 */	blr 

.global entryModelSort__13J3DDrawBufferFP12J3DMatPacket
entryModelSort__13J3DDrawBufferFP12J3DMatPacket:
/* 80039528 00036468  7C 08 02 A6 */	mflr r0
/* 8003952C 0003646C  90 01 00 04 */	stw r0, 4(r1)
/* 80039530 00036470  38 00 00 00 */	li r0, 0
/* 80039534 00036474  94 21 FF F8 */	stwu r1, -8(r1)
/* 80039538 00036478  90 04 00 04 */	stw r0, 4(r4)
/* 8003953C 0003647C  90 04 00 08 */	stw r0, 8(r4)
/* 80039540 00036480  80 A4 00 34 */	lwz r5, 0x34(r4)
/* 80039544 00036484  90 05 00 04 */	stw r0, 4(r5)
/* 80039548 00036488  90 05 00 08 */	stw r0, 8(r5)
/* 8003954C 0003648C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80039550 00036490  28 03 00 00 */	cmplwi r3, 0
/* 80039554 00036494  41 82 00 10 */	beq lbl_80039564
/* 80039558 00036498  4B FF DF 29 */	bl addChildPacket__9J3DPacketFP9J3DPacket
/* 8003955C 0003649C  38 60 00 01 */	li r3, 1
/* 80039560 000364A0  48 00 00 08 */	b lbl_80039568
lbl_80039564:
/* 80039564 000364A4  38 60 00 00 */	li r3, 0
lbl_80039568:
/* 80039568 000364A8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8003956C 000364AC  38 21 00 08 */	addi r1, r1, 8
/* 80039570 000364B0  7C 08 03 A6 */	mtlr r0
/* 80039574 000364B4  4E 80 00 20 */	blr 

.global entryInvalidSort__13J3DDrawBufferFP12J3DMatPacket
entryInvalidSort__13J3DDrawBufferFP12J3DMatPacket:
/* 80039578 000364B8  7C 08 02 A6 */	mflr r0
/* 8003957C 000364BC  90 01 00 04 */	stw r0, 4(r1)
/* 80039580 000364C0  38 00 00 00 */	li r0, 0
/* 80039584 000364C4  94 21 FF F8 */	stwu r1, -8(r1)
/* 80039588 000364C8  90 04 00 04 */	stw r0, 4(r4)
/* 8003958C 000364CC  90 04 00 08 */	stw r0, 8(r4)
/* 80039590 000364D0  80 A4 00 34 */	lwz r5, 0x34(r4)
/* 80039594 000364D4  90 05 00 04 */	stw r0, 4(r5)
/* 80039598 000364D8  90 05 00 08 */	stw r0, 8(r5)
/* 8003959C 000364DC  80 63 00 20 */	lwz r3, 0x20(r3)
/* 800395A0 000364E0  28 03 00 00 */	cmplwi r3, 0
/* 800395A4 000364E4  41 82 00 14 */	beq lbl_800395B8
/* 800395A8 000364E8  80 84 00 34 */	lwz r4, 0x34(r4)
/* 800395AC 000364EC  4B FF DE D5 */	bl addChildPacket__9J3DPacketFP9J3DPacket
/* 800395B0 000364F0  38 60 00 01 */	li r3, 1
/* 800395B4 000364F4  48 00 00 08 */	b lbl_800395BC
lbl_800395B8:
/* 800395B8 000364F8  38 60 00 00 */	li r3, 0
lbl_800395BC:
/* 800395BC 000364FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800395C0 00036500  38 21 00 08 */	addi r1, r1, 8
/* 800395C4 00036504  7C 08 03 A6 */	mtlr r0
/* 800395C8 00036508  4E 80 00 20 */	blr 

.global entryNonSort__13J3DDrawBufferFP12J3DMatPacket
entryNonSort__13J3DDrawBufferFP12J3DMatPacket:
/* 800395CC 0003650C  38 00 00 00 */	li r0, 0
/* 800395D0 00036510  90 04 00 04 */	stw r0, 4(r4)
/* 800395D4 00036514  90 04 00 08 */	stw r0, 8(r4)
/* 800395D8 00036518  80 A4 00 34 */	lwz r5, 0x34(r4)
/* 800395DC 0003651C  90 05 00 04 */	stw r0, 4(r5)
/* 800395E0 00036520  90 05 00 08 */	stw r0, 8(r5)
/* 800395E4 00036524  80 A3 00 00 */	lwz r5, 0(r3)
/* 800395E8 00036528  80 05 00 00 */	lwz r0, 0(r5)
/* 800395EC 0003652C  90 04 00 04 */	stw r0, 4(r4)
/* 800395F0 00036530  80 A3 00 00 */	lwz r5, 0(r3)
/* 800395F4 00036534  38 60 00 01 */	li r3, 1
/* 800395F8 00036538  90 85 00 00 */	stw r4, 0(r5)
/* 800395FC 0003653C  4E 80 00 20 */	blr 

.global entryImm__13J3DDrawBufferFP9J3DPacketUs
entryImm__13J3DDrawBufferFP9J3DPacketUs:
/* 80039600 00036540  80 C3 00 00 */	lwz r6, 0(r3)
/* 80039604 00036544  54 A7 13 BA */	rlwinm r7, r5, 2, 0xe, 0x1d
/* 80039608 00036548  7C 06 38 2E */	lwzx r0, r6, r7
/* 8003960C 0003654C  90 04 00 04 */	stw r0, 4(r4)
/* 80039610 00036550  80 A3 00 00 */	lwz r5, 0(r3)
/* 80039614 00036554  38 60 00 01 */	li r3, 1
/* 80039618 00036558  7C 85 39 2E */	stwx r4, r5, r7
/* 8003961C 0003655C  4E 80 00 20 */	blr 

.global draw__13J3DDrawBufferCFv
draw__13J3DDrawBufferCFv:
/* 80039620 00036560  7C 08 02 A6 */	mflr r0
/* 80039624 00036564  3C 80 80 3B */	lis r4, drawFuncTable__13J3DDrawBuffer@ha
/* 80039628 00036568  90 01 00 04 */	stw r0, 4(r1)
/* 8003962C 0003656C  38 04 9E 80 */	addi r0, r4, drawFuncTable__13J3DDrawBuffer@l
/* 80039630 00036570  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80039634 00036574  80 A3 00 08 */	lwz r5, 8(r3)
/* 80039638 00036578  39 81 00 0C */	addi r12, r1, 0xc
/* 8003963C 0003657C  1C 85 00 0C */	mulli r4, r5, 0xc
/* 80039640 00036580  7C A0 22 14 */	add r5, r0, r4
/* 80039644 00036584  80 85 00 00 */	lwz r4, 0(r5)
/* 80039648 00036588  80 05 00 04 */	lwz r0, 4(r5)
/* 8003964C 0003658C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80039650 00036590  90 01 00 10 */	stw r0, 0x10(r1)
/* 80039654 00036594  80 05 00 08 */	lwz r0, 8(r5)
/* 80039658 00036598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003965C 0003659C  48 04 94 C9 */	bl __ptmf_scall
/* 80039660 000365A0  60 00 00 00 */	nop 
/* 80039664 000365A4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80039668 000365A8  38 21 00 18 */	addi r1, r1, 0x18
/* 8003966C 000365AC  7C 08 03 A6 */	mtlr r0
/* 80039670 000365B0  4E 80 00 20 */	blr 

.global drawHead__13J3DDrawBufferCFv
drawHead__13J3DDrawBufferCFv:
/* 80039674 000365B4  7C 08 02 A6 */	mflr r0
/* 80039678 000365B8  90 01 00 04 */	stw r0, 4(r1)
/* 8003967C 000365BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80039680 000365C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80039684 000365C4  3B E0 00 00 */	li r31, 0
/* 80039688 000365C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003968C 000365CC  3B C0 00 00 */	li r30, 0
/* 80039690 000365D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80039694 000365D4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80039698 000365D8  3B 83 00 00 */	addi r28, r3, 0
/* 8003969C 000365DC  48 00 00 38 */	b lbl_800396D4
lbl_800396A0:
/* 800396A0 000365E0  80 7C 00 00 */	lwz r3, 0(r28)
/* 800396A4 000365E4  7F A3 F8 2E */	lwzx r29, r3, r31
/* 800396A8 000365E8  48 00 00 1C */	b lbl_800396C4
lbl_800396AC:
/* 800396AC 000365EC  7F A3 EB 78 */	mr r3, r29
/* 800396B0 000365F0  81 9D 00 00 */	lwz r12, 0(r29)
/* 800396B4 000365F4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800396B8 000365F8  7D 88 03 A6 */	mtlr r12
/* 800396BC 000365FC  4E 80 00 21 */	blrl 
/* 800396C0 00036600  83 BD 00 04 */	lwz r29, 4(r29)
lbl_800396C4:
/* 800396C4 00036604  28 1D 00 00 */	cmplwi r29, 0
/* 800396C8 00036608  40 82 FF E4 */	bne lbl_800396AC
/* 800396CC 0003660C  3B DE 00 01 */	addi r30, r30, 1
/* 800396D0 00036610  3B FF 00 04 */	addi r31, r31, 4
lbl_800396D4:
/* 800396D4 00036614  80 1C 00 04 */	lwz r0, 4(r28)
/* 800396D8 00036618  7C 1E 00 40 */	cmplw r30, r0
/* 800396DC 0003661C  41 80 FF C4 */	blt lbl_800396A0
/* 800396E0 00036620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800396E4 00036624  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800396E8 00036628  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800396EC 0003662C  7C 08 03 A6 */	mtlr r0
/* 800396F0 00036630  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800396F4 00036634  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800396F8 00036638  38 21 00 20 */	addi r1, r1, 0x20
/* 800396FC 0003663C  4E 80 00 20 */	blr 

.global drawTail__13J3DDrawBufferCFv
drawTail__13J3DDrawBufferCFv:
/* 80039700 00036640  7C 08 02 A6 */	mflr r0
/* 80039704 00036644  90 01 00 04 */	stw r0, 4(r1)
/* 80039708 00036648  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003970C 0003664C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80039710 00036650  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80039714 00036654  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80039718 00036658  93 81 00 10 */	stw r28, 0x10(r1)
/* 8003971C 0003665C  7C 7C 1B 78 */	mr r28, r3
/* 80039720 00036660  80 63 00 04 */	lwz r3, 4(r3)
/* 80039724 00036664  3B C3 FF FF */	addi r30, r3, -1
/* 80039728 00036668  57 DF 10 3A */	slwi r31, r30, 2
/* 8003972C 0003666C  48 00 00 38 */	b lbl_80039764
lbl_80039730:
/* 80039730 00036670  80 7C 00 00 */	lwz r3, 0(r28)
/* 80039734 00036674  7F A3 F8 2E */	lwzx r29, r3, r31
/* 80039738 00036678  48 00 00 1C */	b lbl_80039754
lbl_8003973C:
/* 8003973C 0003667C  7F A3 EB 78 */	mr r3, r29
/* 80039740 00036680  81 9D 00 00 */	lwz r12, 0(r29)
/* 80039744 00036684  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80039748 00036688  7D 88 03 A6 */	mtlr r12
/* 8003974C 0003668C  4E 80 00 21 */	blrl 
/* 80039750 00036690  83 BD 00 04 */	lwz r29, 4(r29)
lbl_80039754:
/* 80039754 00036694  28 1D 00 00 */	cmplwi r29, 0
/* 80039758 00036698  40 82 FF E4 */	bne lbl_8003973C
/* 8003975C 0003669C  3B DE FF FF */	addi r30, r30, -1
/* 80039760 000366A0  3B FF FF FC */	addi r31, r31, -4
lbl_80039764:
/* 80039764 000366A4  2C 1E 00 00 */	cmpwi r30, 0
/* 80039768 000366A8  40 80 FF C8 */	bge lbl_80039730
/* 8003976C 000366AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80039770 000366B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80039774 000366B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80039778 000366B8  7C 08 03 A6 */	mtlr r0
/* 8003977C 000366BC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80039780 000366C0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80039784 000366C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80039788 000366C8  4E 80 00 20 */	blr 

.global __sinit_J3DDrawBuffer_cpp
__sinit_J3DDrawBuffer_cpp:
/* 8003978C 000366CC  3C 60 80 3B */	lis r3, $$2814@ha
/* 80039790 000366D0  38 83 9D D8 */	addi r4, r3, $$2814@l
/* 80039794 000366D4  80 64 00 00 */	lwz r3, 0(r4)
/* 80039798 000366D8  80 04 00 04 */	lwz r0, 4(r4)
/* 8003979C 000366DC  90 64 00 48 */	stw r3, 0x48(r4)
/* 800397A0 000366E0  90 04 00 4C */	stw r0, 0x4c(r4)
/* 800397A4 000366E4  80 04 00 08 */	lwz r0, 8(r4)
/* 800397A8 000366E8  90 04 00 50 */	stw r0, 0x50(r4)
/* 800397AC 000366EC  80 64 00 0C */	lwz r3, 0xc(r4)
/* 800397B0 000366F0  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800397B4 000366F4  90 64 00 54 */	stw r3, 0x54(r4)
/* 800397B8 000366F8  90 04 00 58 */	stw r0, 0x58(r4)
/* 800397BC 000366FC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 800397C0 00036700  90 04 00 5C */	stw r0, 0x5c(r4)
/* 800397C4 00036704  80 64 00 18 */	lwz r3, 0x18(r4)
/* 800397C8 00036708  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 800397CC 0003670C  90 64 00 60 */	stw r3, 0x60(r4)
/* 800397D0 00036710  90 04 00 64 */	stw r0, 0x64(r4)
/* 800397D4 00036714  80 04 00 20 */	lwz r0, 0x20(r4)
/* 800397D8 00036718  90 04 00 68 */	stw r0, 0x68(r4)
/* 800397DC 0003671C  80 64 00 24 */	lwz r3, 0x24(r4)
/* 800397E0 00036720  80 04 00 28 */	lwz r0, 0x28(r4)
/* 800397E4 00036724  90 64 00 6C */	stw r3, 0x6c(r4)
/* 800397E8 00036728  90 04 00 70 */	stw r0, 0x70(r4)
/* 800397EC 0003672C  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 800397F0 00036730  90 04 00 74 */	stw r0, 0x74(r4)
/* 800397F4 00036734  80 64 00 30 */	lwz r3, 0x30(r4)
/* 800397F8 00036738  80 04 00 34 */	lwz r0, 0x34(r4)
/* 800397FC 0003673C  90 64 00 78 */	stw r3, 0x78(r4)
/* 80039800 00036740  90 04 00 7C */	stw r0, 0x7c(r4)
/* 80039804 00036744  80 04 00 38 */	lwz r0, 0x38(r4)
/* 80039808 00036748  90 04 00 80 */	stw r0, 0x80(r4)
/* 8003980C 0003674C  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 80039810 00036750  80 04 00 40 */	lwz r0, 0x40(r4)
/* 80039814 00036754  90 64 00 84 */	stw r3, 0x84(r4)
/* 80039818 00036758  90 04 00 88 */	stw r0, 0x88(r4)
/* 8003981C 0003675C  80 04 00 44 */	lwz r0, 0x44(r4)
/* 80039820 00036760  90 04 00 8C */	stw r0, 0x8c(r4)
/* 80039824 00036764  80 64 00 90 */	lwz r3, 0x90(r4)
/* 80039828 00036768  80 04 00 94 */	lwz r0, 0x94(r4)
/* 8003982C 0003676C  90 64 00 A8 */	stw r3, 0xa8(r4)
/* 80039830 00036770  90 04 00 AC */	stw r0, 0xac(r4)
/* 80039834 00036774  80 04 00 98 */	lwz r0, 0x98(r4)
/* 80039838 00036778  90 04 00 B0 */	stw r0, 0xb0(r4)
/* 8003983C 0003677C  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 80039840 00036780  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 80039844 00036784  90 64 00 B4 */	stw r3, 0xb4(r4)
/* 80039848 00036788  90 04 00 B8 */	stw r0, 0xb8(r4)
/* 8003984C 0003678C  80 04 00 A4 */	lwz r0, 0xa4(r4)
/* 80039850 00036790  90 04 00 BC */	stw r0, 0xbc(r4)
/* 80039854 00036794  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
	.incbin "baserom.dol", 0x36CBD4, 0x4

.section .data, "wa"  # 0x803A8380 - 0x803E6000
$$2814:
	.incbin "baserom.dol", 0x3A6DD8, 0xC
$$2815:
	.incbin "baserom.dol", 0x3A6DE4, 0xC
$$2816:
	.incbin "baserom.dol", 0x3A6DF0, 0xC
$$2817:
	.incbin "baserom.dol", 0x3A6DFC, 0xC
$$2818:
	.incbin "baserom.dol", 0x3A6E08, 0xC
$$2819:
	.incbin "baserom.dol", 0x3A6E14, 0xC
.global sortFuncTable__13J3DDrawBuffer
sortFuncTable__13J3DDrawBuffer:
	.incbin "baserom.dol", 0x3A6E20, 0x48
$$2820:
	.incbin "baserom.dol", 0x3A6E68, 0xC
$$2821:
	.incbin "baserom.dol", 0x3A6E74, 0xC
drawFuncTable__13J3DDrawBuffer:
	.incbin "baserom.dol", 0x3A6E80, 0x18

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2824:
	.incbin "baserom.dol", 0x3E3FE8, 0x4
$$2825:
	.incbin "baserom.dol", 0x3E3FEC, 0x4
$$2827:
	.incbin "baserom.dol", 0x3E3FF0, 0x8

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global entryNum__13J3DDrawBuffer
entryNum__13J3DDrawBuffer:
	.skip 0x8
