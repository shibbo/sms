.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__17JPAEmitterManagerFP18JPAResourceManagerlllP7JKRHeap
__ct__17JPAEmitterManagerFP18JPAResourceManagerlllP7JKRHeap:
/* 8006F3E8 0006C328  7C 08 02 A6 */	mflr r0
/* 8006F3EC 0006C32C  90 01 00 04 */	stw r0, 4(r1)
/* 8006F3F0 0006C330  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8006F3F4 0006C334  BF 21 00 54 */	stmw r25, 0x54(r1)
/* 8006F3F8 0006C338  3B 64 00 00 */	addi r27, r4, 0
/* 8006F3FC 0006C33C  3B E5 00 00 */	addi r31, r5, 0
/* 8006F400 0006C340  3B C6 00 00 */	addi r30, r6, 0
/* 8006F404 0006C344  3B A7 00 00 */	addi r29, r7, 0
/* 8006F408 0006C348  3B 88 00 00 */	addi r28, r8, 0
/* 8006F40C 0006C34C  90 61 00 08 */	stw r3, 8(r1)
/* 8006F410 0006C350  83 41 00 08 */	lwz r26, 8(r1)
/* 8006F414 0006C354  38 7A 00 00 */	addi r3, r26, 0
/* 8006F418 0006C358  4B F9 F8 1D */	bl initiate__10JSUPtrListFv
/* 8006F41C 0006C35C  38 7A 00 14 */	addi r3, r26, 0x14
/* 8006F420 0006C360  4B F9 F8 15 */	bl initiate__10JSUPtrListFv
/* 8006F424 0006C364  38 7A 00 28 */	addi r3, r26, 0x28
/* 8006F428 0006C368  4B F9 F8 0D */	bl initiate__10JSUPtrListFv
/* 8006F42C 0006C36C  C0 02 87 F8 */	lfs f0, $$21786-_SDA2_BASE_(r2)
/* 8006F430 0006C370  3C 80 80 07 */	lis r4, __ct__25JSUList$$014JPABaseEmitter$$1Fv@ha
/* 8006F434 0006C374  3C 60 80 07 */	lis r3, __dt__25JSUList$$014JPABaseEmitter$$1Fv@ha
/* 8006F438 0006C378  D0 1A 00 3C */	stfs f0, 0x3c(r26)
/* 8006F43C 0006C37C  38 A3 F6 F0 */	addi r5, r3, __dt__25JSUList$$014JPABaseEmitter$$1Fv@l
/* 8006F440 0006C380  38 84 F6 C0 */	addi r4, r4, __ct__25JSUList$$014JPABaseEmitter$$1Fv@l
/* 8006F444 0006C384  C0 02 87 FC */	lfs f0, $$21787-_SDA2_BASE_(r2)
/* 8006F448 0006C388  38 7A 00 44 */	addi r3, r26, 0x44
/* 8006F44C 0006C38C  38 C0 00 0C */	li r6, 0xc
/* 8006F450 0006C390  D0 1A 00 40 */	stfs f0, 0x40(r26)
/* 8006F454 0006C394  38 E0 00 08 */	li r7, 8
/* 8006F458 0006C398  48 01 33 DD */	bl __construct_array
/* 8006F45C 0006C39C  28 1C 00 00 */	cmplwi r28, 0
/* 8006F460 0006C3A0  40 82 00 08 */	bne lbl_8006F468
/* 8006F464 0006C3A4  83 8D 8D 6C */	lwz r28, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
lbl_8006F468:
/* 8006F468 0006C3A8  1C 7F 00 DC */	mulli r3, r31, 0xdc
/* 8006F46C 0006C3AC  38 03 00 1F */	addi r0, r3, 0x1f
/* 8006F470 0006C3B0  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8006F474 0006C3B4  38 63 00 80 */	addi r3, r3, 0x80
/* 8006F478 0006C3B8  38 9C 00 00 */	addi r4, r28, 0
/* 8006F47C 0006C3BC  38 A0 00 00 */	li r5, 0
/* 8006F480 0006C3C0  4B F9 DF 59 */	bl create__12JKRSolidHeapFUlP7JKRHeapb
/* 8006F484 0006C3C4  80 81 00 08 */	lwz r4, 8(r1)
/* 8006F488 0006C3C8  90 64 00 0C */	stw r3, 0xc(r4)
/* 8006F48C 0006C3CC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8006F490 0006C3D0  28 00 00 00 */	cmplwi r0, 0
/* 8006F494 0006C3D4  41 82 00 60 */	beq lbl_8006F4F4
/* 8006F498 0006C3D8  3B 40 00 00 */	li r26, 0
/* 8006F49C 0006C3DC  48 00 00 50 */	b lbl_8006F4EC
lbl_8006F4A0:
/* 8006F4A0 0006C3E0  80 81 00 08 */	lwz r4, 8(r1)
/* 8006F4A4 0006C3E4  38 60 00 DC */	li r3, 0xdc
/* 8006F4A8 0006C3E8  38 A0 00 00 */	li r5, 0
/* 8006F4AC 0006C3EC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8006F4B0 0006C3F0  4B F9 D4 95 */	bl __nw__FUlP7JKRHeapi
/* 8006F4B4 0006C3F4  7C 64 1B 79 */	or. r4, r3, r3
/* 8006F4B8 0006C3F8  41 82 00 10 */	beq lbl_8006F4C8
/* 8006F4BC 0006C3FC  7C 83 23 78 */	mr r3, r4
/* 8006F4C0 0006C400  48 00 3E 8D */	bl __ct__11JPAParticleFv
/* 8006F4C4 0006C404  7C 64 1B 78 */	mr r4, r3
lbl_8006F4C8:
/* 8006F4C8 0006C408  80 61 00 08 */	lwz r3, 8(r1)
/* 8006F4CC 0006C40C  7C 99 23 78 */	mr r25, r4
/* 8006F4D0 0006C410  4B F9 F8 35 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 8006F4D4 0006C414  7F 23 CB 78 */	mr r3, r25
/* 8006F4D8 0006C418  81 99 00 58 */	lwz r12, 0x58(r25)
/* 8006F4DC 0006C41C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8006F4E0 0006C420  7D 88 03 A6 */	mtlr r12
/* 8006F4E4 0006C424  4E 80 00 21 */	blrl 
/* 8006F4E8 0006C428  3B 5A 00 01 */	addi r26, r26, 1
lbl_8006F4EC:
/* 8006F4EC 0006C42C  7C 1A F8 00 */	cmpw r26, r31
/* 8006F4F0 0006C430  41 80 FF B0 */	blt lbl_8006F4A0
lbl_8006F4F4:
/* 8006F4F4 0006C434  1C 7E 02 20 */	mulli r3, r30, 0x220
/* 8006F4F8 0006C438  38 03 00 1F */	addi r0, r3, 0x1f
/* 8006F4FC 0006C43C  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8006F500 0006C440  38 63 00 80 */	addi r3, r3, 0x80
/* 8006F504 0006C444  38 9C 00 00 */	addi r4, r28, 0
/* 8006F508 0006C448  38 A0 00 00 */	li r5, 0
/* 8006F50C 0006C44C  4B F9 DE CD */	bl create__12JKRSolidHeapFUlP7JKRHeapb
/* 8006F510 0006C450  80 81 00 08 */	lwz r4, 8(r1)
/* 8006F514 0006C454  90 64 00 20 */	stw r3, 0x20(r4)
/* 8006F518 0006C458  80 04 00 20 */	lwz r0, 0x20(r4)
/* 8006F51C 0006C45C  28 00 00 00 */	cmplwi r0, 0
/* 8006F520 0006C460  41 82 00 48 */	beq lbl_8006F568
/* 8006F524 0006C464  3B 20 00 00 */	li r25, 0
/* 8006F528 0006C468  48 00 00 38 */	b lbl_8006F560
lbl_8006F52C:
/* 8006F52C 0006C46C  80 81 00 08 */	lwz r4, 8(r1)
/* 8006F530 0006C470  38 60 02 20 */	li r3, 0x220
/* 8006F534 0006C474  38 A0 00 00 */	li r5, 0
/* 8006F538 0006C478  80 84 00 20 */	lwz r4, 0x20(r4)
/* 8006F53C 0006C47C  4B F9 D4 09 */	bl __nw__FUlP7JKRHeapi
/* 8006F540 0006C480  28 03 00 00 */	cmplwi r3, 0
/* 8006F544 0006C484  41 82 00 08 */	beq lbl_8006F54C
/* 8006F548 0006C488  4B FF D0 35 */	bl __ct__14JPABaseEmitterFv
lbl_8006F54C:
/* 8006F54C 0006C48C  80 A1 00 08 */	lwz r5, 8(r1)
/* 8006F550 0006C490  38 83 00 00 */	addi r4, r3, 0
/* 8006F554 0006C494  38 65 00 14 */	addi r3, r5, 0x14
/* 8006F558 0006C498  4B F9 F7 AD */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 8006F55C 0006C49C  3B 39 00 01 */	addi r25, r25, 1
lbl_8006F560:
/* 8006F560 0006C4A0  7C 19 F0 00 */	cmpw r25, r30
/* 8006F564 0006C4A4  41 80 FF C8 */	blt lbl_8006F52C
lbl_8006F568:
/* 8006F568 0006C4A8  1C 7D 00 90 */	mulli r3, r29, 0x90
/* 8006F56C 0006C4AC  38 03 00 1F */	addi r0, r3, 0x1f
/* 8006F570 0006C4B0  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 8006F574 0006C4B4  38 63 00 80 */	addi r3, r3, 0x80
/* 8006F578 0006C4B8  38 9C 00 00 */	addi r4, r28, 0
/* 8006F57C 0006C4BC  38 A0 00 00 */	li r5, 0
/* 8006F580 0006C4C0  4B F9 DE 59 */	bl create__12JKRSolidHeapFUlP7JKRHeapb
/* 8006F584 0006C4C4  80 81 00 08 */	lwz r4, 8(r1)
/* 8006F588 0006C4C8  90 64 00 34 */	stw r3, 0x34(r4)
/* 8006F58C 0006C4CC  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8006F590 0006C4D0  28 00 00 00 */	cmplwi r0, 0
/* 8006F594 0006C4D4  41 82 00 48 */	beq lbl_8006F5DC
/* 8006F598 0006C4D8  3B 20 00 00 */	li r25, 0
/* 8006F59C 0006C4DC  48 00 00 38 */	b lbl_8006F5D4
lbl_8006F5A0:
/* 8006F5A0 0006C4E0  80 81 00 08 */	lwz r4, 8(r1)
/* 8006F5A4 0006C4E4  38 60 00 90 */	li r3, 0x90
/* 8006F5A8 0006C4E8  38 A0 00 00 */	li r5, 0
/* 8006F5AC 0006C4EC  80 84 00 34 */	lwz r4, 0x34(r4)
/* 8006F5B0 0006C4F0  4B F9 D3 95 */	bl __nw__FUlP7JKRHeapi
/* 8006F5B4 0006C4F4  28 03 00 00 */	cmplwi r3, 0
/* 8006F5B8 0006C4F8  41 82 00 08 */	beq lbl_8006F5C0
/* 8006F5BC 0006C4FC  48 00 07 C1 */	bl __ct__12JPABaseFieldFv
lbl_8006F5C0:
/* 8006F5C0 0006C500  80 A1 00 08 */	lwz r5, 8(r1)
/* 8006F5C4 0006C504  38 83 00 00 */	addi r4, r3, 0
/* 8006F5C8 0006C508  38 65 00 28 */	addi r3, r5, 0x28
/* 8006F5CC 0006C50C  4B F9 F7 39 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 8006F5D0 0006C510  3B 39 00 01 */	addi r25, r25, 1
lbl_8006F5D4:
/* 8006F5D4 0006C514  7C 19 E8 00 */	cmpw r25, r29
/* 8006F5D8 0006C518  41 80 FF C8 */	blt lbl_8006F5A0
lbl_8006F5DC:
/* 8006F5DC 0006C51C  80 61 00 08 */	lwz r3, 8(r1)
/* 8006F5E0 0006C520  38 00 00 02 */	li r0, 2
/* 8006F5E4 0006C524  39 80 00 00 */	li r12, 0
/* 8006F5E8 0006C528  7C 09 03 A6 */	mtctr r0
/* 8006F5EC 0006C52C  93 E3 00 10 */	stw r31, 0x10(r3)
/* 8006F5F0 0006C530  93 C3 00 24 */	stw r30, 0x24(r3)
/* 8006F5F4 0006C534  93 A3 00 38 */	stw r29, 0x38(r3)
/* 8006F5F8 0006C538  93 63 00 A4 */	stw r27, 0xa4(r3)
/* 8006F5FC 0006C53C  91 83 00 A8 */	stw r12, 0xa8(r3)
/* 8006F600 0006C540  91 83 00 AC */	stw r12, 0xac(r3)
/* 8006F604 0006C544  91 83 00 B0 */	stw r12, 0xb0(r3)
/* 8006F608 0006C548  91 83 00 B4 */	stw r12, 0xb4(r3)
/* 8006F60C 0006C54C  91 83 00 B8 */	stw r12, 0xb8(r3)
/* 8006F610 0006C550  91 83 00 BC */	stw r12, 0xbc(r3)
/* 8006F614 0006C554  91 83 00 C0 */	stw r12, 0xc0(r3)
/* 8006F618 0006C558  91 83 00 C4 */	stw r12, 0xc4(r3)
lbl_8006F61C:
/* 8006F61C 0006C55C  80 61 00 08 */	lwz r3, 8(r1)
/* 8006F620 0006C560  39 4C 00 C8 */	addi r10, r12, 0xc8
/* 8006F624 0006C564  39 60 00 00 */	li r11, 0
/* 8006F628 0006C568  7D 63 51 2E */	stwx r11, r3, r10
/* 8006F62C 0006C56C  39 2C 00 CC */	addi r9, r12, 0xcc
/* 8006F630 0006C570  39 0C 00 D0 */	addi r8, r12, 0xd0
/* 8006F634 0006C574  7D 63 49 2E */	stwx r11, r3, r9
/* 8006F638 0006C578  38 EC 00 D4 */	addi r7, r12, 0xd4
/* 8006F63C 0006C57C  38 CC 00 D8 */	addi r6, r12, 0xd8
/* 8006F640 0006C580  7D 63 41 2E */	stwx r11, r3, r8
/* 8006F644 0006C584  38 AC 00 DC */	addi r5, r12, 0xdc
/* 8006F648 0006C588  38 8C 00 E0 */	addi r4, r12, 0xe0
/* 8006F64C 0006C58C  7D 63 39 2E */	stwx r11, r3, r7
/* 8006F650 0006C590  38 0C 00 E4 */	addi r0, r12, 0xe4
/* 8006F654 0006C594  39 4C 00 E8 */	addi r10, r12, 0xe8
/* 8006F658 0006C598  7D 63 31 2E */	stwx r11, r3, r6
/* 8006F65C 0006C59C  39 2C 00 EC */	addi r9, r12, 0xec
/* 8006F660 0006C5A0  39 0C 00 F0 */	addi r8, r12, 0xf0
/* 8006F664 0006C5A4  7D 63 29 2E */	stwx r11, r3, r5
/* 8006F668 0006C5A8  38 EC 00 F4 */	addi r7, r12, 0xf4
/* 8006F66C 0006C5AC  38 CC 00 F8 */	addi r6, r12, 0xf8
/* 8006F670 0006C5B0  7D 63 21 2E */	stwx r11, r3, r4
/* 8006F674 0006C5B4  38 AC 00 FC */	addi r5, r12, 0xfc
/* 8006F678 0006C5B8  38 8C 01 00 */	addi r4, r12, 0x100
/* 8006F67C 0006C5BC  7D 63 01 2E */	stwx r11, r3, r0
/* 8006F680 0006C5C0  38 0C 01 04 */	addi r0, r12, 0x104
/* 8006F684 0006C5C4  39 8C 00 40 */	addi r12, r12, 0x40
/* 8006F688 0006C5C8  7D 63 51 2E */	stwx r11, r3, r10
/* 8006F68C 0006C5CC  7D 63 49 2E */	stwx r11, r3, r9
/* 8006F690 0006C5D0  7D 63 41 2E */	stwx r11, r3, r8
/* 8006F694 0006C5D4  7D 63 39 2E */	stwx r11, r3, r7
/* 8006F698 0006C5D8  7D 63 31 2E */	stwx r11, r3, r6
/* 8006F69C 0006C5DC  7D 63 29 2E */	stwx r11, r3, r5
/* 8006F6A0 0006C5E0  7D 63 21 2E */	stwx r11, r3, r4
/* 8006F6A4 0006C5E4  7D 63 01 2E */	stwx r11, r3, r0
/* 8006F6A8 0006C5E8  42 00 FF 74 */	bdnz lbl_8006F61C
/* 8006F6AC 0006C5EC  BB 21 00 54 */	lmw r25, 0x54(r1)
/* 8006F6B0 0006C5F0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8006F6B4 0006C5F4  38 21 00 70 */	addi r1, r1, 0x70
/* 8006F6B8 0006C5F8  7C 08 03 A6 */	mtlr r0
/* 8006F6BC 0006C5FC  4E 80 00 20 */	blr 

.global __ct__25JSUList$$014JPABaseEmitter$$1Fv
__ct__25JSUList$$014JPABaseEmitter$$1Fv:
/* 8006F6C0 0006C600  7C 08 02 A6 */	mflr r0
/* 8006F6C4 0006C604  90 01 00 04 */	stw r0, 4(r1)
/* 8006F6C8 0006C608  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8006F6CC 0006C60C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8006F6D0 0006C610  7C 7F 1B 78 */	mr r31, r3
/* 8006F6D4 0006C614  4B F9 F5 61 */	bl initiate__10JSUPtrListFv
/* 8006F6D8 0006C618  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8006F6DC 0006C61C  7F E3 FB 78 */	mr r3, r31
/* 8006F6E0 0006C620  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8006F6E4 0006C624  38 21 00 18 */	addi r1, r1, 0x18
/* 8006F6E8 0006C628  7C 08 03 A6 */	mtlr r0
/* 8006F6EC 0006C62C  4E 80 00 20 */	blr 

.global __dt__25JSUList$$014JPABaseEmitter$$1Fv
__dt__25JSUList$$014JPABaseEmitter$$1Fv:
/* 8006F6F0 0006C630  7C 08 02 A6 */	mflr r0
/* 8006F6F4 0006C634  90 01 00 04 */	stw r0, 4(r1)
/* 8006F6F8 0006C638  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8006F6FC 0006C63C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8006F700 0006C640  3B E4 00 00 */	addi r31, r4, 0
/* 8006F704 0006C644  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8006F708 0006C648  7C 7E 1B 79 */	or. r30, r3, r3
/* 8006F70C 0006C64C  41 82 00 20 */	beq lbl_8006F72C
/* 8006F710 0006C650  38 7E 00 00 */	addi r3, r30, 0
/* 8006F714 0006C654  38 80 00 00 */	li r4, 0
/* 8006F718 0006C658  4B F9 F4 B5 */	bl __dt__10JSUPtrListFv
/* 8006F71C 0006C65C  7F E0 07 35 */	extsh. r0, r31
/* 8006F720 0006C660  40 81 00 0C */	ble lbl_8006F72C
/* 8006F724 0006C664  7F C3 F3 78 */	mr r3, r30
/* 8006F728 0006C668  4B F9 D3 89 */	bl __dl__FPv
lbl_8006F72C:
/* 8006F72C 0006C66C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8006F730 0006C670  7F C3 F3 78 */	mr r3, r30
/* 8006F734 0006C674  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8006F738 0006C678  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8006F73C 0006C67C  7C 08 03 A6 */	mtlr r0
/* 8006F740 0006C680  38 21 00 18 */	addi r1, r1, 0x18
/* 8006F744 0006C684  4E 80 00 20 */	blr 

.global calcBase__17JPAEmitterManagerFUc
calcBase__17JPAEmitterManagerFUc:
/* 8006F748 0006C688  7C 08 02 A6 */	mflr r0
/* 8006F74C 0006C68C  90 01 00 04 */	stw r0, 4(r1)
/* 8006F750 0006C690  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8006F754 0006C694  1C 80 00 0C */	mulli r4, r0, 0xc
/* 8006F758 0006C698  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8006F75C 0006C69C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8006F760 0006C6A0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8006F764 0006C6A4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8006F768 0006C6A8  3B A3 00 00 */	addi r29, r3, 0
/* 8006F76C 0006C6AC  7C 7D 22 14 */	add r3, r29, r4
/* 8006F770 0006C6B0  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8006F774 0006C6B4  28 00 00 00 */	cmplwi r0, 0
/* 8006F778 0006C6B8  41 82 00 90 */	beq lbl_8006F808
/* 8006F77C 0006C6BC  38 04 00 44 */	addi r0, r4, 0x44
/* 8006F780 0006C6C0  7C 7D 00 2E */	lwzx r3, r29, r0
/* 8006F784 0006C6C4  48 00 00 58 */	b lbl_8006F7DC
lbl_8006F788:
/* 8006F788 0006C6C8  83 C3 00 00 */	lwz r30, 0(r3)
/* 8006F78C 0006C6CC  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 8006F790 0006C6D0  7F C3 F3 78 */	mr r3, r30
/* 8006F794 0006C6D4  4B FF F4 A5 */	bl checkStartFrame__14JPABaseEmitterFv
/* 8006F798 0006C6D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8006F79C 0006C6DC  41 82 00 3C */	beq lbl_8006F7D8
/* 8006F7A0 0006C6E0  7F C3 F3 78 */	mr r3, r30
/* 8006F7A4 0006C6E4  4B FF F4 F1 */	bl checkMaxFrame__14JPABaseEmitterFv
/* 8006F7A8 0006C6E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8006F7AC 0006C6EC  41 82 00 24 */	beq lbl_8006F7D0
/* 8006F7B0 0006C6F0  80 7E 00 FC */	lwz r3, 0xfc(r30)
/* 8006F7B4 0006C6F4  80 1E 01 08 */	lwz r0, 0x108(r30)
/* 8006F7B8 0006C6F8  7C 03 02 15 */	add. r0, r3, r0
/* 8006F7BC 0006C6FC  40 82 00 14 */	bne lbl_8006F7D0
/* 8006F7C0 0006C700  38 7D 00 00 */	addi r3, r29, 0
/* 8006F7C4 0006C704  38 9E 00 00 */	addi r4, r30, 0
/* 8006F7C8 0006C708  48 00 04 E9 */	bl deleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
/* 8006F7CC 0006C70C  48 00 00 0C */	b lbl_8006F7D8
lbl_8006F7D0:
/* 8006F7D0 0006C710  7F C3 F3 78 */	mr r3, r30
/* 8006F7D4 0006C714  4B FF FA 05 */	bl calc__14JPABaseEmitterFv
lbl_8006F7D8:
/* 8006F7D8 0006C718  7F E3 FB 78 */	mr r3, r31
lbl_8006F7DC:
/* 8006F7DC 0006C71C  28 03 00 00 */	cmplwi r3, 0
/* 8006F7E0 0006C720  40 82 FF A8 */	bne lbl_8006F788
/* 8006F7E4 0006C724  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 8006F7E8 0006C728  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8006F7EC 0006C72C  EC 01 00 2A */	fadds f0, f1, f0
/* 8006F7F0 0006C730  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 8006F7F4 0006C734  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 8006F7F8 0006C738  C0 02 87 F8 */	lfs f0, $$21786-_SDA2_BASE_(r2)
/* 8006F7FC 0006C73C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8006F800 0006C740  40 80 00 08 */	bge lbl_8006F808
/* 8006F804 0006C744  D0 1D 00 3C */	stfs f0, 0x3c(r29)
lbl_8006F808:
/* 8006F808 0006C748  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8006F80C 0006C74C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8006F810 0006C750  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8006F814 0006C754  7C 08 03 A6 */	mtlr r0
/* 8006F818 0006C758  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8006F81C 0006C75C  38 21 00 40 */	addi r1, r1, 0x40
/* 8006F820 0006C760  4E 80 00 20 */	blr 

.global calc__17JPAEmitterManagerFv
calc__17JPAEmitterManagerFv:
/* 8006F824 0006C764  7C 08 02 A6 */	mflr r0
/* 8006F828 0006C768  90 01 00 04 */	stw r0, 4(r1)
/* 8006F82C 0006C76C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8006F830 0006C770  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8006F834 0006C774  3B E0 00 00 */	li r31, 0
/* 8006F838 0006C778  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8006F83C 0006C77C  3B C3 00 00 */	addi r30, r3, 0
lbl_8006F840:
/* 8006F840 0006C780  38 7E 00 00 */	addi r3, r30, 0
/* 8006F844 0006C784  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 8006F848 0006C788  4B FF FF 01 */	bl calcBase__17JPAEmitterManagerFUc
/* 8006F84C 0006C78C  3B FF 00 01 */	addi r31, r31, 1
/* 8006F850 0006C790  2C 1F 00 08 */	cmpwi r31, 8
/* 8006F854 0006C794  41 80 FF EC */	blt lbl_8006F840
/* 8006F858 0006C798  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8006F85C 0006C79C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8006F860 0006C7A0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8006F864 0006C7A4  7C 08 03 A6 */	mtlr r0
/* 8006F868 0006C7A8  38 21 00 18 */	addi r1, r1, 0x18
/* 8006F86C 0006C7AC  4E 80 00 20 */	blr 

.global draw__17JPAEmitterManagerFP11JPADrawInfo
draw__17JPAEmitterManagerFP11JPADrawInfo:
/* 8006F870 0006C7B0  7C 08 02 A6 */	mflr r0
/* 8006F874 0006C7B4  90 01 00 04 */	stw r0, 4(r1)
/* 8006F878 0006C7B8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8006F87C 0006C7BC  DB E1 00 68 */	stfd f31, 0x68(r1)
/* 8006F880 0006C7C0  93 E1 00 64 */	stw r31, 0x64(r1)
/* 8006F884 0006C7C4  93 C1 00 60 */	stw r30, 0x60(r1)
/* 8006F888 0006C7C8  3B C0 00 00 */	li r30, 0
/* 8006F88C 0006C7CC  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 8006F890 0006C7D0  3B A4 00 00 */	addi r29, r4, 0
/* 8006F894 0006C7D4  93 81 00 58 */	stw r28, 0x58(r1)
/* 8006F898 0006C7D8  3B 83 00 00 */	addi r28, r3, 0
lbl_8006F89C:
/* 8006F89C 0006C7DC  C3 FD 00 04 */	lfs f31, 4(r29)
/* 8006F8A0 0006C7E0  4B FF CC D1 */	bl JPAGetEmitterInfoPtr__Fv
/* 8006F8A4 0006C7E4  D3 E3 01 5C */	stfs f31, 0x15c(r3)
/* 8006F8A8 0006C7E8  C3 FD 00 08 */	lfs f31, 8(r29)
/* 8006F8AC 0006C7EC  4B FF CC C5 */	bl JPAGetEmitterInfoPtr__Fv
/* 8006F8B0 0006C7F0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8006F8B4 0006C7F4  D3 E3 01 60 */	stfs f31, 0x160(r3)
/* 8006F8B8 0006C7F8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8006F8BC 0006C7FC  7C 7C 02 14 */	add r3, r28, r0
/* 8006F8C0 0006C800  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8006F8C4 0006C804  28 00 00 00 */	cmplwi r0, 0
/* 8006F8C8 0006C808  41 82 00 48 */	beq lbl_8006F910
/* 8006F8CC 0006C80C  83 E3 00 44 */	lwz r31, 0x44(r3)
/* 8006F8D0 0006C810  48 00 00 38 */	b lbl_8006F908
lbl_8006F8D4:
/* 8006F8D4 0006C814  80 7F 00 00 */	lwz r3, 0(r31)
/* 8006F8D8 0006C818  80 03 01 1C */	lwz r0, 0x11c(r3)
/* 8006F8DC 0006C81C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8006F8E0 0006C820  41 82 00 0C */	beq lbl_8006F8EC
/* 8006F8E4 0006C824  38 00 00 01 */	li r0, 1
/* 8006F8E8 0006C828  48 00 00 08 */	b lbl_8006F8F0
lbl_8006F8EC:
/* 8006F8EC 0006C82C  38 00 00 00 */	li r0, 0
lbl_8006F8F0:
/* 8006F8F0 0006C830  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8006F8F4 0006C834  40 82 00 10 */	bne lbl_8006F904
/* 8006F8F8 0006C838  80 9D 00 00 */	lwz r4, 0(r29)
/* 8006F8FC 0006C83C  38 63 00 30 */	addi r3, r3, 0x30
/* 8006F900 0006C840  48 00 46 31 */	bl draw__7JPADrawFPA4_f
lbl_8006F904:
/* 8006F904 0006C844  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_8006F908:
/* 8006F908 0006C848  28 1F 00 00 */	cmplwi r31, 0
/* 8006F90C 0006C84C  40 82 FF C8 */	bne lbl_8006F8D4
lbl_8006F910:
/* 8006F910 0006C850  3B DE 00 01 */	addi r30, r30, 1
/* 8006F914 0006C854  2C 1E 00 08 */	cmpwi r30, 8
/* 8006F918 0006C858  41 80 FF 84 */	blt lbl_8006F89C
/* 8006F91C 0006C85C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8006F920 0006C860  CB E1 00 68 */	lfd f31, 0x68(r1)
/* 8006F924 0006C864  83 E1 00 64 */	lwz r31, 0x64(r1)
/* 8006F928 0006C868  7C 08 03 A6 */	mtlr r0
/* 8006F92C 0006C86C  83 C1 00 60 */	lwz r30, 0x60(r1)
/* 8006F930 0006C870  83 A1 00 5C */	lwz r29, 0x5c(r1)
/* 8006F934 0006C874  83 81 00 58 */	lwz r28, 0x58(r1)
/* 8006F938 0006C878  38 21 00 70 */	addi r1, r1, 0x70
/* 8006F93C 0006C87C  4E 80 00 20 */	blr 

.global draw__17JPAEmitterManagerFP11JPADrawInfoUc
draw__17JPAEmitterManagerFP11JPADrawInfoUc:
/* 8006F940 0006C880  7C 08 02 A6 */	mflr r0
/* 8006F944 0006C884  90 01 00 04 */	stw r0, 4(r1)
/* 8006F948 0006C888  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8006F94C 0006C88C  DB E1 00 68 */	stfd f31, 0x68(r1)
/* 8006F950 0006C890  93 E1 00 64 */	stw r31, 0x64(r1)
/* 8006F954 0006C894  54 BF 06 3E */	clrlwi r31, r5, 0x18
/* 8006F958 0006C898  28 1F 00 08 */	cmplwi r31, 8
/* 8006F95C 0006C89C  93 C1 00 60 */	stw r30, 0x60(r1)
/* 8006F960 0006C8A0  3B C4 00 00 */	addi r30, r4, 0
/* 8006F964 0006C8A4  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 8006F968 0006C8A8  3B A3 00 00 */	addi r29, r3, 0
/* 8006F96C 0006C8AC  40 80 00 78 */	bge lbl_8006F9E4
/* 8006F970 0006C8B0  C3 FE 00 04 */	lfs f31, 4(r30)
/* 8006F974 0006C8B4  4B FF CB FD */	bl JPAGetEmitterInfoPtr__Fv
/* 8006F978 0006C8B8  D3 E3 01 5C */	stfs f31, 0x15c(r3)
/* 8006F97C 0006C8BC  C3 FE 00 08 */	lfs f31, 8(r30)
/* 8006F980 0006C8C0  4B FF CB F1 */	bl JPAGetEmitterInfoPtr__Fv
/* 8006F984 0006C8C4  1C 9F 00 0C */	mulli r4, r31, 0xc
/* 8006F988 0006C8C8  D3 E3 01 60 */	stfs f31, 0x160(r3)
/* 8006F98C 0006C8CC  7C 7D 22 14 */	add r3, r29, r4
/* 8006F990 0006C8D0  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 8006F994 0006C8D4  28 00 00 00 */	cmplwi r0, 0
/* 8006F998 0006C8D8  41 82 00 4C */	beq lbl_8006F9E4
/* 8006F99C 0006C8DC  38 04 00 44 */	addi r0, r4, 0x44
/* 8006F9A0 0006C8E0  7F FD 00 2E */	lwzx r31, r29, r0
/* 8006F9A4 0006C8E4  48 00 00 38 */	b lbl_8006F9DC
lbl_8006F9A8:
/* 8006F9A8 0006C8E8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8006F9AC 0006C8EC  80 03 01 1C */	lwz r0, 0x11c(r3)
/* 8006F9B0 0006C8F0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8006F9B4 0006C8F4  41 82 00 0C */	beq lbl_8006F9C0
/* 8006F9B8 0006C8F8  38 00 00 01 */	li r0, 1
/* 8006F9BC 0006C8FC  48 00 00 08 */	b lbl_8006F9C4
lbl_8006F9C0:
/* 8006F9C0 0006C900  38 00 00 00 */	li r0, 0
lbl_8006F9C4:
/* 8006F9C4 0006C904  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8006F9C8 0006C908  40 82 00 10 */	bne lbl_8006F9D8
/* 8006F9CC 0006C90C  80 9E 00 00 */	lwz r4, 0(r30)
/* 8006F9D0 0006C910  38 63 00 30 */	addi r3, r3, 0x30
/* 8006F9D4 0006C914  48 00 45 5D */	bl draw__7JPADrawFPA4_f
lbl_8006F9D8:
/* 8006F9D8 0006C918  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_8006F9DC:
/* 8006F9DC 0006C91C  28 1F 00 00 */	cmplwi r31, 0
/* 8006F9E0 0006C920  40 82 FF C8 */	bne lbl_8006F9A8
lbl_8006F9E4:
/* 8006F9E4 0006C924  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8006F9E8 0006C928  CB E1 00 68 */	lfd f31, 0x68(r1)
/* 8006F9EC 0006C92C  83 E1 00 64 */	lwz r31, 0x64(r1)
/* 8006F9F0 0006C930  7C 08 03 A6 */	mtlr r0
/* 8006F9F4 0006C934  83 C1 00 60 */	lwz r30, 0x60(r1)
/* 8006F9F8 0006C938  83 A1 00 5C */	lwz r29, 0x5c(r1)
/* 8006F9FC 0006C93C  38 21 00 70 */	addi r1, r1, 0x70
/* 8006FA00 0006C940  4E 80 00 20 */	blr 

.global createEmitterBase__17JPAEmitterManagerFlUcUcP34JPACallBackBase$$0P14JPABaseEmitter$$1P54JPACallBackBase2$$0P14JPABaseEmitter$$4P15JPABaseParticle$$1
createEmitterBase__17JPAEmitterManagerFlUcUcP34JPACallBackBase$$0P14JPABaseEmitter$$1P54JPACallBackBase2$$0P14JPABaseEmitter$$4P15JPABaseParticle$$1:
/* 8006FA04 0006C944  7C 08 02 A6 */	mflr r0
/* 8006FA08 0006C948  90 01 00 04 */	stw r0, 4(r1)
/* 8006FA0C 0006C94C  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8006FA10 0006C950  28 00 00 08 */	cmplwi r0, 8
/* 8006FA14 0006C954  94 21 FF 38 */	stwu r1, -0xc8(r1)
/* 8006FA18 0006C958  BE A1 00 9C */	stmw r21, 0x9c(r1)
/* 8006FA1C 0006C95C  3B 85 00 00 */	addi r28, r5, 0
/* 8006FA20 0006C960  3B 23 00 00 */	addi r25, r3, 0
/* 8006FA24 0006C964  3B 47 00 00 */	addi r26, r7, 0
/* 8006FA28 0006C968  3B 68 00 00 */	addi r27, r8, 0
/* 8006FA2C 0006C96C  41 80 00 0C */	blt lbl_8006FA38
/* 8006FA30 0006C970  38 60 00 00 */	li r3, 0
/* 8006FA34 0006C974  48 00 01 68 */	b lbl_8006FB9C
lbl_8006FA38:
/* 8006FA38 0006C978  54 C0 15 BA */	rlwinm r0, r6, 2, 0x16, 0x1d
/* 8006FA3C 0006C97C  7F D9 02 14 */	add r30, r25, r0
/* 8006FA40 0006C980  84 7E 00 A4 */	lwzu r3, 0xa4(r30)
/* 8006FA44 0006C984  28 03 00 00 */	cmplwi r3, 0
/* 8006FA48 0006C988  41 82 01 50 */	beq lbl_8006FB98
/* 8006FA4C 0006C98C  80 63 00 04 */	lwz r3, 4(r3)
/* 8006FA50 0006C990  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8006FA54 0006C994  48 01 14 CD */	bl getByUserIndex__18JPAEmitterResourceFUs
/* 8006FA58 0006C998  28 03 00 00 */	cmplwi r3, 0
/* 8006FA5C 0006C99C  40 82 00 0C */	bne lbl_8006FA68
/* 8006FA60 0006C9A0  38 60 00 00 */	li r3, 0
/* 8006FA64 0006C9A4  48 00 01 38 */	b lbl_8006FB9C
lbl_8006FA68:
/* 8006FA68 0006C9A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8006FA6C 0006C9AC  3B E0 00 00 */	li r31, 0
/* 8006FA70 0006C9B0  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 8006FA74 0006C9B4  83 A3 00 00 */	lwz r29, 0(r3)
/* 8006FA78 0006C9B8  28 00 00 00 */	cmplwi r0, 0
/* 8006FA7C 0006C9BC  82 FD 00 00 */	lwz r23, 0(r29)
/* 8006FA80 0006C9C0  41 82 00 4C */	beq lbl_8006FACC
/* 8006FA84 0006C9C4  80 99 00 14 */	lwz r4, 0x14(r25)
/* 8006FA88 0006C9C8  38 79 00 14 */	addi r3, r25, 0x14
/* 8006FA8C 0006C9CC  83 E4 00 00 */	lwz r31, 0(r4)
/* 8006FA90 0006C9D0  7F E4 FB 78 */	mr r4, r31
/* 8006FA94 0006C9D4  4B F9 F5 09 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8006FA98 0006C9D8  28 1F 00 00 */	cmplwi r31, 0
/* 8006FA9C 0006C9DC  41 82 00 0C */	beq lbl_8006FAA8
/* 8006FAA0 0006C9E0  7F E3 FB 78 */	mr r3, r31
/* 8006FAA4 0006C9E4  4B FF CA D9 */	bl __ct__14JPABaseEmitterFv
lbl_8006FAA8:
/* 8006FAA8 0006C9E8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8006FAAC 0006C9EC  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8006FAB0 0006C9F0  38 63 00 44 */	addi r3, r3, 0x44
/* 8006FAB4 0006C9F4  38 9F 00 00 */	addi r4, r31, 0
/* 8006FAB8 0006C9F8  7C 79 1A 14 */	add r3, r25, r3
/* 8006FABC 0006C9FC  4B F9 F1 8D */	bl append__10JSUPtrListFP10JSUPtrLink
/* 8006FAC0 0006CA00  38 7F 00 00 */	addi r3, r31, 0
/* 8006FAC4 0006CA04  38 97 00 00 */	addi r4, r23, 0
/* 8006FAC8 0006CA08  4B FF D7 55 */	bl loadBaseEmitterBlock__14JPABaseEmitterFP12JPADataBlock
lbl_8006FACC:
/* 8006FACC 0006CA0C  28 1F 00 00 */	cmplwi r31, 0
/* 8006FAD0 0006CA10  41 82 00 C0 */	beq lbl_8006FB90
/* 8006FAD4 0006CA14  9B 9F 01 73 */	stb r28, 0x173(r31)
/* 8006FAD8 0006CA18  38 60 00 FF */	li r3, 0xff
/* 8006FADC 0006CA1C  38 19 00 28 */	addi r0, r25, 0x28
/* 8006FAE0 0006CA20  93 3F 01 0C */	stw r25, 0x10c(r31)
/* 8006FAE4 0006CA24  3A FF 00 20 */	addi r23, r31, 0x20
/* 8006FAE8 0006CA28  3B 80 00 00 */	li r28, 0
/* 8006FAEC 0006CA2C  98 7F 01 80 */	stb r3, 0x180(r31)
/* 8006FAF0 0006CA30  3B 20 00 00 */	li r25, 0
/* 8006FAF4 0006CA34  98 7F 01 81 */	stb r3, 0x181(r31)
/* 8006FAF8 0006CA38  98 7F 01 82 */	stb r3, 0x182(r31)
/* 8006FAFC 0006CA3C  98 7F 01 84 */	stb r3, 0x184(r31)
/* 8006FB00 0006CA40  98 7F 01 85 */	stb r3, 0x185(r31)
/* 8006FB04 0006CA44  98 7F 01 86 */	stb r3, 0x186(r31)
/* 8006FB08 0006CA48  98 7F 01 83 */	stb r3, 0x183(r31)
/* 8006FB0C 0006CA4C  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8006FB10 0006CA50  8A DD 00 20 */	lbz r22, 0x20(r29)
/* 8006FB14 0006CA54  83 1D 00 18 */	lwz r24, 0x18(r29)
/* 8006FB18 0006CA58  48 00 00 34 */	b lbl_8006FB4C
lbl_8006FB1C:
/* 8006FB1C 0006CA5C  7C B8 C8 2E */	lwzx r5, r24, r25
/* 8006FB20 0006CA60  7E E3 BB 78 */	mr r3, r23
/* 8006FB24 0006CA64  80 85 00 04 */	lwz r4, 4(r5)
/* 8006FB28 0006CA68  7C B5 2B 78 */	mr r21, r5
/* 8006FB2C 0006CA6C  88 84 00 0C */	lbz r4, 0xc(r4)
/* 8006FB30 0006CA70  48 00 22 B1 */	bl setField__15JPAFieldManagerFUc
/* 8006FB34 0006CA74  28 03 00 00 */	cmplwi r3, 0
/* 8006FB38 0006CA78  41 82 00 0C */	beq lbl_8006FB44
/* 8006FB3C 0006CA7C  7E A4 AB 78 */	mr r4, r21
/* 8006FB40 0006CA80  48 00 06 4D */	bl loadFieldBlock__12JPABaseFieldFP12JPADataBlock
lbl_8006FB44:
/* 8006FB44 0006CA84  3B 9C 00 01 */	addi r28, r28, 1
/* 8006FB48 0006CA88  3B 39 00 04 */	addi r25, r25, 4
lbl_8006FB4C:
/* 8006FB4C 0006CA8C  7C 1C B0 00 */	cmpw r28, r22
/* 8006FB50 0006CA90  41 80 FF CC */	blt lbl_8006FB1C
/* 8006FB54 0006CA94  93 BF 01 18 */	stw r29, 0x118(r31)
/* 8006FB58 0006CA98  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8006FB5C 0006CA9C  28 00 00 00 */	cmplwi r0, 0
/* 8006FB60 0006CAA0  41 82 00 0C */	beq lbl_8006FB6C
/* 8006FB64 0006CAA4  38 00 00 01 */	li r0, 1
/* 8006FB68 0006CAA8  98 1F 01 72 */	stb r0, 0x172(r31)
lbl_8006FB6C:
/* 8006FB6C 0006CAAC  7F E3 FB 78 */	mr r3, r31
/* 8006FB70 0006CAB0  4B FF ED 65 */	bl calcCurrentRateTimerStep__14JPABaseEmitterFv
/* 8006FB74 0006CAB4  80 9E 00 00 */	lwz r4, 0(r30)
/* 8006FB78 0006CAB8  38 7F 00 30 */	addi r3, r31, 0x30
/* 8006FB7C 0006CABC  80 A4 00 08 */	lwz r5, 8(r4)
/* 8006FB80 0006CAC0  7F E4 FB 78 */	mr r4, r31
/* 8006FB84 0006CAC4  48 00 40 49 */	bl initialize__7JPADrawFP14JPABaseEmitterP18JPATextureResource
/* 8006FB88 0006CAC8  93 5F 01 10 */	stw r26, 0x110(r31)
/* 8006FB8C 0006CACC  93 7F 01 14 */	stw r27, 0x114(r31)
lbl_8006FB90:
/* 8006FB90 0006CAD0  7F E3 FB 78 */	mr r3, r31
/* 8006FB94 0006CAD4  48 00 00 08 */	b lbl_8006FB9C
lbl_8006FB98:
/* 8006FB98 0006CAD8  38 60 00 00 */	li r3, 0
lbl_8006FB9C:
/* 8006FB9C 0006CADC  BA A1 00 9C */	lmw r21, 0x9c(r1)
/* 8006FBA0 0006CAE0  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 8006FBA4 0006CAE4  38 21 00 C8 */	addi r1, r1, 0xc8
/* 8006FBA8 0006CAE8  7C 08 03 A6 */	mtlr r0
/* 8006FBAC 0006CAEC  4E 80 00 20 */	blr 

.global createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3$$0f$$1lUcUcP34JPACallBackBase$$0P14JPABaseEmitter$$1P54JPACallBackBase2$$0P14JPABaseEmitter$$4P15JPABaseParticle$$1
createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3$$0f$$1lUcUcP34JPACallBackBase$$0P14JPABaseEmitter$$1P54JPACallBackBase2$$0P14JPABaseEmitter$$4P15JPABaseParticle$$1:
/* 8006FBB0 0006CAF0  7C 08 02 A6 */	mflr r0
/* 8006FBB4 0006CAF4  90 01 00 04 */	stw r0, 4(r1)
/* 8006FBB8 0006CAF8  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8006FBBC 0006CAFC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8006FBC0 0006CB00  3B E4 00 00 */	addi r31, r4, 0
/* 8006FBC4 0006CB04  38 85 00 00 */	addi r4, r5, 0
/* 8006FBC8 0006CB08  38 A6 00 00 */	addi r5, r6, 0
/* 8006FBCC 0006CB0C  38 C7 00 00 */	addi r6, r7, 0
/* 8006FBD0 0006CB10  38 E8 00 00 */	addi r7, r8, 0
/* 8006FBD4 0006CB14  39 09 00 00 */	addi r8, r9, 0
/* 8006FBD8 0006CB18  4B FF FE 2D */	bl createEmitterBase__17JPAEmitterManagerFlUcUcP34JPACallBackBase$$0P14JPABaseEmitter$$1P54JPACallBackBase2$$0P14JPABaseEmitter$$4P15JPABaseParticle$$1
/* 8006FBDC 0006CB1C  28 03 00 00 */	cmplwi r3, 0
/* 8006FBE0 0006CB20  41 82 00 20 */	beq lbl_8006FC00
/* 8006FBE4 0006CB24  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8006FBE8 0006CB28  D0 03 01 60 */	stfs f0, 0x160(r3)
/* 8006FBEC 0006CB2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8006FBF0 0006CB30  D0 03 01 64 */	stfs f0, 0x164(r3)
/* 8006FBF4 0006CB34  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8006FBF8 0006CB38  D0 03 01 68 */	stfs f0, 0x168(r3)
/* 8006FBFC 0006CB3C  48 00 00 08 */	b lbl_8006FC04
lbl_8006FC00:
/* 8006FC00 0006CB40  38 60 00 00 */	li r3, 0
lbl_8006FC04:
/* 8006FC04 0006CB44  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8006FC08 0006CB48  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8006FC0C 0006CB4C  38 21 00 28 */	addi r1, r1, 0x28
/* 8006FC10 0006CB50  7C 08 03 A6 */	mtlr r0
/* 8006FC14 0006CB54  4E 80 00 20 */	blr 

.global createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3$$0f$$1lP34JPACallBackBase$$0P14JPABaseEmitter$$1P54JPACallBackBase2$$0P14JPABaseEmitter$$4P15JPABaseParticle$$1
createEmitter__17JPAEmitterManagerFRCQ29JGeometry8TVec3$$0f$$1lP34JPACallBackBase$$0P14JPABaseEmitter$$1P54JPACallBackBase2$$0P14JPABaseEmitter$$4P15JPABaseParticle$$1:
/* 8006FC18 0006CB58  7C 08 02 A6 */	mflr r0
/* 8006FC1C 0006CB5C  39 07 00 00 */	addi r8, r7, 0
/* 8006FC20 0006CB60  90 01 00 04 */	stw r0, 4(r1)
/* 8006FC24 0006CB64  38 E6 00 00 */	addi r7, r6, 0
/* 8006FC28 0006CB68  38 C0 00 00 */	li r6, 0
/* 8006FC2C 0006CB6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8006FC30 0006CB70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8006FC34 0006CB74  3B E4 00 00 */	addi r31, r4, 0
/* 8006FC38 0006CB78  38 85 00 00 */	addi r4, r5, 0
/* 8006FC3C 0006CB7C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8006FC40 0006CB80  3B C3 00 00 */	addi r30, r3, 0
/* 8006FC44 0006CB84  38 A0 00 00 */	li r5, 0
/* 8006FC48 0006CB88  4B FF FD BD */	bl createEmitterBase__17JPAEmitterManagerFlUcUcP34JPACallBackBase$$0P14JPABaseEmitter$$1P54JPACallBackBase2$$0P14JPABaseEmitter$$4P15JPABaseParticle$$1
/* 8006FC4C 0006CB8C  28 03 00 00 */	cmplwi r3, 0
/* 8006FC50 0006CB90  41 82 00 24 */	beq lbl_8006FC74
/* 8006FC54 0006CB94  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8006FC58 0006CB98  7C 64 1B 78 */	mr r4, r3
/* 8006FC5C 0006CB9C  D0 03 01 60 */	stfs f0, 0x160(r3)
/* 8006FC60 0006CBA0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8006FC64 0006CBA4  D0 03 01 64 */	stfs f0, 0x164(r3)
/* 8006FC68 0006CBA8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8006FC6C 0006CBAC  D0 03 01 68 */	stfs f0, 0x168(r3)
/* 8006FC70 0006CBB0  48 00 00 08 */	b lbl_8006FC78
lbl_8006FC74:
/* 8006FC74 0006CBB4  38 80 00 00 */	li r4, 0
lbl_8006FC78:
/* 8006FC78 0006CBB8  28 04 00 00 */	cmplwi r4, 0
/* 8006FC7C 0006CBBC  41 82 00 18 */	beq lbl_8006FC94
/* 8006FC80 0006CBC0  38 00 00 01 */	li r0, 1
/* 8006FC84 0006CBC4  90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 8006FC88 0006CBC8  38 60 00 01 */	li r3, 1
/* 8006FC8C 0006CBCC  90 9E 00 C8 */	stw r4, 0xc8(r30)
/* 8006FC90 0006CBD0  48 00 00 08 */	b lbl_8006FC98
lbl_8006FC94:
/* 8006FC94 0006CBD4  38 60 00 00 */	li r3, 0
lbl_8006FC98:
/* 8006FC98 0006CBD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8006FC9C 0006CBDC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8006FCA0 0006CBE0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8006FCA4 0006CBE4  7C 08 03 A6 */	mtlr r0
/* 8006FCA8 0006CBE8  38 21 00 30 */	addi r1, r1, 0x30
/* 8006FCAC 0006CBEC  4E 80 00 20 */	blr 

.global deleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
deleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter:
/* 8006FCB0 0006CBF0  7C 08 02 A6 */	mflr r0
/* 8006FCB4 0006CBF4  90 01 00 04 */	stw r0, 4(r1)
/* 8006FCB8 0006CBF8  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8006FCBC 0006CBFC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8006FCC0 0006CC00  3B E4 00 00 */	addi r31, r4, 0
/* 8006FCC4 0006CC04  38 1F 00 20 */	addi r0, r31, 0x20
/* 8006FCC8 0006CC08  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8006FCCC 0006CC0C  3B C3 00 00 */	addi r30, r3, 0
/* 8006FCD0 0006CC10  7C 03 03 78 */	mr r3, r0
/* 8006FCD4 0006CC14  48 00 1F 35 */	bl deleteAllField__15JPAFieldManagerFv
/* 8006FCD8 0006CC18  88 1F 01 73 */	lbz r0, 0x173(r31)
/* 8006FCDC 0006CC1C  38 9F 00 00 */	addi r4, r31, 0
/* 8006FCE0 0006CC20  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8006FCE4 0006CC24  38 63 00 44 */	addi r3, r3, 0x44
/* 8006FCE8 0006CC28  7C 7E 1A 14 */	add r3, r30, r3
/* 8006FCEC 0006CC2C  4B F9 F2 B1 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8006FCF0 0006CC30  38 9F 00 00 */	addi r4, r31, 0
/* 8006FCF4 0006CC34  38 7E 00 14 */	addi r3, r30, 0x14
/* 8006FCF8 0006CC38  4B F9 F0 0D */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 8006FCFC 0006CC3C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8006FD00 0006CC40  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8006FD04 0006CC44  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8006FD08 0006CC48  7C 08 03 A6 */	mtlr r0
/* 8006FD0C 0006CC4C  38 21 00 28 */	addi r1, r1, 0x28
/* 8006FD10 0006CC50  4E 80 00 20 */	blr 

.global forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter
forceDeleteEmitter__17JPAEmitterManagerFP14JPABaseEmitter:
/* 8006FD14 0006CC54  7C 08 02 A6 */	mflr r0
/* 8006FD18 0006CC58  90 01 00 04 */	stw r0, 4(r1)
/* 8006FD1C 0006CC5C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8006FD20 0006CC60  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8006FD24 0006CC64  3B E4 00 00 */	addi r31, r4, 0
/* 8006FD28 0006CC68  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8006FD2C 0006CC6C  3B C3 00 00 */	addi r30, r3, 0
/* 8006FD30 0006CC70  38 7F 00 00 */	addi r3, r31, 0
/* 8006FD34 0006CC74  4B FF C9 81 */	bl deleteAllParticle__14JPABaseEmitterFv
/* 8006FD38 0006CC78  38 7F 00 20 */	addi r3, r31, 0x20
/* 8006FD3C 0006CC7C  48 00 1E CD */	bl deleteAllField__15JPAFieldManagerFv
/* 8006FD40 0006CC80  88 1F 01 73 */	lbz r0, 0x173(r31)
/* 8006FD44 0006CC84  38 9F 00 00 */	addi r4, r31, 0
/* 8006FD48 0006CC88  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8006FD4C 0006CC8C  38 63 00 44 */	addi r3, r3, 0x44
/* 8006FD50 0006CC90  7C 7E 1A 14 */	add r3, r30, r3
/* 8006FD54 0006CC94  4B F9 F2 49 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8006FD58 0006CC98  38 9F 00 00 */	addi r4, r31, 0
/* 8006FD5C 0006CC9C  38 7E 00 14 */	addi r3, r30, 0x14
/* 8006FD60 0006CCA0  4B F9 EF A5 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 8006FD64 0006CCA4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8006FD68 0006CCA8  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8006FD6C 0006CCAC  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8006FD70 0006CCB0  7C 08 03 A6 */	mtlr r0
/* 8006FD74 0006CCB4  38 21 00 28 */	addi r1, r1, 0x28
/* 8006FD78 0006CCB8  4E 80 00 20 */	blr 

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
.global $$21786
$$21786:
	.incbin "baserom.dol", 0x3E44F8, 0x4
.global $$21787
$$21787:
	.incbin "baserom.dol", 0x3E44FC, 0x4