.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global create__12JKRSolidHeapFUlP7JKRHeapb
create__12JKRSolidHeapFUlP7JKRHeapb:
/* 8000D3D8 0000A318  7C 08 02 A6 */	mflr r0
/* 8000D3DC 0000A31C  90 01 00 04 */	stw r0, 4(r1)
/* 8000D3E0 0000A320  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8000D3E4 0000A324  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8000D3E8 0000A328  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8000D3EC 0000A32C  3B C5 00 00 */	addi r30, r5, 0
/* 8000D3F0 0000A330  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8000D3F4 0000A334  7C 9D 23 79 */	or. r29, r4, r4
/* 8000D3F8 0000A338  40 82 00 08 */	bne lbl_8000D400
/* 8000D3FC 0000A33C  83 AD 8D 70 */	lwz r29, sRootHeap__7JKRHeap-_SDA_BASE_(r13)
lbl_8000D400:
/* 8000D400 0000A340  54 7F 00 36 */	rlwinm r31, r3, 0, 0, 0x1b
/* 8000D404 0000A344  38 7F 00 00 */	addi r3, r31, 0
/* 8000D408 0000A348  38 BD 00 00 */	addi r5, r29, 0
/* 8000D40C 0000A34C  38 80 00 10 */	li r4, 0x10
/* 8000D410 0000A350  4B FF F0 3D */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 8000D414 0000A354  28 03 00 00 */	cmplwi r3, 0
/* 8000D418 0000A358  38 83 00 80 */	addi r4, r3, 0x80
/* 8000D41C 0000A35C  40 82 00 0C */	bne lbl_8000D428
/* 8000D420 0000A360  38 60 00 00 */	li r3, 0
/* 8000D424 0000A364  48 00 00 18 */	b lbl_8000D43C
lbl_8000D428:
/* 8000D428 0000A368  41 82 00 14 */	beq lbl_8000D43C
/* 8000D42C 0000A36C  38 DD 00 00 */	addi r6, r29, 0
/* 8000D430 0000A370  38 FE 00 00 */	addi r7, r30, 0
/* 8000D434 0000A374  38 BF FF 80 */	addi r5, r31, -128
/* 8000D438 0000A378  48 00 00 21 */	bl __ct__12JKRSolidHeapFPvUlP7JKRHeapb
lbl_8000D43C:
/* 8000D43C 0000A37C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8000D440 0000A380  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8000D444 0000A384  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8000D448 0000A388  7C 08 03 A6 */	mtlr r0
/* 8000D44C 0000A38C  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8000D450 0000A390  38 21 00 28 */	addi r1, r1, 0x28
/* 8000D454 0000A394  4E 80 00 20 */	blr 

.global __ct__12JKRSolidHeapFPvUlP7JKRHeapb
__ct__12JKRSolidHeapFPvUlP7JKRHeapb:
/* 8000D458 0000A398  7C 08 02 A6 */	mflr r0
/* 8000D45C 0000A39C  90 01 00 04 */	stw r0, 4(r1)
/* 8000D460 0000A3A0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8000D464 0000A3A4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8000D468 0000A3A8  7C 7F 1B 78 */	mr r31, r3
/* 8000D46C 0000A3AC  4B FF EC A5 */	bl __ct__7JKRHeapFPvUlP7JKRHeapb
/* 8000D470 0000A3B0  3C 60 80 3B */	lis r3, __vt__12JKRSolidHeap@ha
/* 8000D474 0000A3B4  38 03 86 90 */	addi r0, r3, __vt__12JKRSolidHeap@l
/* 8000D478 0000A3B8  90 1F 00 00 */	stw r0, 0(r31)
/* 8000D47C 0000A3BC  38 00 00 00 */	li r0, 0
/* 8000D480 0000A3C0  38 7F 00 00 */	addi r3, r31, 0
/* 8000D484 0000A3C4  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8000D488 0000A3C8  90 9F 00 68 */	stw r4, 0x68(r31)
/* 8000D48C 0000A3CC  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8000D490 0000A3D0  90 9F 00 6C */	stw r4, 0x6c(r31)
/* 8000D494 0000A3D4  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 8000D498 0000A3D8  90 9F 00 70 */	stw r4, 0x70(r31)
/* 8000D49C 0000A3DC  90 1F 00 74 */	stw r0, 0x74(r31)
/* 8000D4A0 0000A3E0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8000D4A4 0000A3E4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8000D4A8 0000A3E8  38 21 00 28 */	addi r1, r1, 0x28
/* 8000D4AC 0000A3EC  7C 08 03 A6 */	mtlr r0
/* 8000D4B0 0000A3F0  4E 80 00 20 */	blr 

.global __dt__12JKRSolidHeapFv
__dt__12JKRSolidHeapFv:
/* 8000D4B4 0000A3F4  7C 08 02 A6 */	mflr r0
/* 8000D4B8 0000A3F8  90 01 00 04 */	stw r0, 4(r1)
/* 8000D4BC 0000A3FC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8000D4C0 0000A400  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8000D4C4 0000A404  3B E4 00 00 */	addi r31, r4, 0
/* 8000D4C8 0000A408  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8000D4CC 0000A40C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8000D4D0 0000A410  41 82 00 34 */	beq lbl_8000D504
/* 8000D4D4 0000A414  3C 60 80 3B */	lis r3, __vt__12JKRSolidHeap@ha
/* 8000D4D8 0000A418  38 03 86 90 */	addi r0, r3, __vt__12JKRSolidHeap@l
/* 8000D4DC 0000A41C  90 1E 00 00 */	stw r0, 0(r30)
/* 8000D4E0 0000A420  7F C3 F3 78 */	mr r3, r30
/* 8000D4E4 0000A424  4B FF F2 BD */	bl dispose__7JKRHeapFv
/* 8000D4E8 0000A428  38 7E 00 00 */	addi r3, r30, 0
/* 8000D4EC 0000A42C  38 80 00 00 */	li r4, 0
/* 8000D4F0 0000A430  4B FF ED 41 */	bl __dt__7JKRHeapFv
/* 8000D4F4 0000A434  7F E0 07 35 */	extsh. r0, r31
/* 8000D4F8 0000A438  40 81 00 0C */	ble lbl_8000D504
/* 8000D4FC 0000A43C  7F C3 F3 78 */	mr r3, r30
/* 8000D500 0000A440  4B FF F5 B1 */	bl __dl__FPv
lbl_8000D504:
/* 8000D504 0000A444  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8000D508 0000A448  7F C3 F3 78 */	mr r3, r30
/* 8000D50C 0000A44C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8000D510 0000A450  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8000D514 0000A454  7C 08 03 A6 */	mtlr r0
/* 8000D518 0000A458  38 21 00 18 */	addi r1, r1, 0x18
/* 8000D51C 0000A45C  4E 80 00 20 */	blr 

.global alloc__12JKRSolidHeapFUli
alloc__12JKRSolidHeapFUli:
/* 8000D520 0000A460  7C 08 02 A6 */	mflr r0
/* 8000D524 0000A464  90 01 00 04 */	stw r0, 4(r1)
/* 8000D528 0000A468  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8000D52C 0000A46C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8000D530 0000A470  3B E5 00 00 */	addi r31, r5, 0
/* 8000D534 0000A474  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8000D538 0000A478  3B C4 00 00 */	addi r30, r4, 0
/* 8000D53C 0000A47C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8000D540 0000A480  3B A3 00 00 */	addi r29, r3, 0
/* 8000D544 0000A484  38 7D 00 18 */	addi r3, r29, 0x18
/* 8000D548 0000A488  48 08 3A E9 */	bl OSLockMutex
/* 8000D54C 0000A48C  28 1E 00 04 */	cmplwi r30, 4
/* 8000D550 0000A490  40 80 00 08 */	bge lbl_8000D558
/* 8000D554 0000A494  3B C0 00 04 */	li r30, 4
lbl_8000D558:
/* 8000D558 0000A498  2C 1F 00 00 */	cmpwi r31, 0
/* 8000D55C 0000A49C  41 80 00 2C */	blt lbl_8000D588
/* 8000D560 0000A4A0  2C 1F 00 04 */	cmpwi r31, 4
/* 8000D564 0000A4A4  40 80 00 0C */	bge lbl_8000D570
/* 8000D568 0000A4A8  38 A0 00 04 */	li r5, 4
/* 8000D56C 0000A4AC  48 00 00 08 */	b lbl_8000D574
lbl_8000D570:
/* 8000D570 0000A4B0  7F E5 FB 78 */	mr r5, r31
lbl_8000D574:
/* 8000D574 0000A4B4  38 7D 00 00 */	addi r3, r29, 0
/* 8000D578 0000A4B8  38 9E 00 00 */	addi r4, r30, 0
/* 8000D57C 0000A4BC  48 00 00 55 */	bl allocFromHead__12JKRSolidHeapFUli
/* 8000D580 0000A4C0  7C 7F 1B 78 */	mr r31, r3
/* 8000D584 0000A4C4  48 00 00 24 */	b lbl_8000D5A8
lbl_8000D588:
/* 8000D588 0000A4C8  7C BF 00 D0 */	neg r5, r31
/* 8000D58C 0000A4CC  2C 05 00 04 */	cmpwi r5, 4
/* 8000D590 0000A4D0  40 80 00 08 */	bge lbl_8000D598
/* 8000D594 0000A4D4  38 A0 00 04 */	li r5, 4
lbl_8000D598:
/* 8000D598 0000A4D8  38 7D 00 00 */	addi r3, r29, 0
/* 8000D59C 0000A4DC  38 9E 00 00 */	addi r4, r30, 0
/* 8000D5A0 0000A4E0  48 00 01 15 */	bl allocFromTail__12JKRSolidHeapFUli
/* 8000D5A4 0000A4E4  7C 7F 1B 78 */	mr r31, r3
lbl_8000D5A8:
/* 8000D5A8 0000A4E8  38 7D 00 18 */	addi r3, r29, 0x18
/* 8000D5AC 0000A4EC  48 08 3B 61 */	bl OSUnlockMutex
/* 8000D5B0 0000A4F0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8000D5B4 0000A4F4  7F E3 FB 78 */	mr r3, r31
/* 8000D5B8 0000A4F8  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8000D5BC 0000A4FC  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8000D5C0 0000A500  7C 08 03 A6 */	mtlr r0
/* 8000D5C4 0000A504  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8000D5C8 0000A508  38 21 00 28 */	addi r1, r1, 0x28
/* 8000D5CC 0000A50C  4E 80 00 20 */	blr 

.global allocFromHead__12JKRSolidHeapFUli
allocFromHead__12JKRSolidHeapFUli:
/* 8000D5D0 0000A510  7C 08 02 A6 */	mflr r0
/* 8000D5D4 0000A514  90 01 00 04 */	stw r0, 4(r1)
/* 8000D5D8 0000A518  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8000D5DC 0000A51C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8000D5E0 0000A520  3B E5 00 00 */	addi r31, r5, 0
/* 8000D5E4 0000A524  38 BF FF FF */	addi r5, r31, -1
/* 8000D5E8 0000A528  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8000D5EC 0000A52C  7C 7E 1B 78 */	mr r30, r3
/* 8000D5F0 0000A530  7C 9F 22 14 */	add r4, r31, r4
/* 8000D5F4 0000A534  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8000D5F8 0000A538  7C A5 28 F8 */	nor r5, r5, r5
/* 8000D5FC 0000A53C  3B A0 00 00 */	li r29, 0
/* 8000D600 0000A540  93 81 00 18 */	stw r28, 0x18(r1)
/* 8000D604 0000A544  80 C3 00 6C */	lwz r6, 0x6c(r3)
/* 8000D608 0000A548  80 03 00 68 */	lwz r0, 0x68(r3)
/* 8000D60C 0000A54C  7C 7F 32 14 */	add r3, r31, r6
/* 8000D610 0000A550  38 63 FF FF */	addi r3, r3, -1
/* 8000D614 0000A554  7C A7 18 38 */	and r7, r5, r3
/* 8000D618 0000A558  38 64 FF FF */	addi r3, r4, -1
/* 8000D61C 0000A55C  7C BC 18 38 */	and r28, r5, r3
/* 8000D620 0000A560  7C 66 38 50 */	subf r3, r6, r7
/* 8000D624 0000A564  7C 7C 1A 14 */	add r3, r28, r3
/* 8000D628 0000A568  7C 03 00 40 */	cmplw r3, r0
/* 8000D62C 0000A56C  38 A7 00 00 */	addi r5, r7, 0
/* 8000D630 0000A570  38 83 00 00 */	addi r4, r3, 0
/* 8000D634 0000A574  41 81 00 20 */	bgt lbl_8000D654
/* 8000D638 0000A578  7C 06 22 14 */	add r0, r6, r4
/* 8000D63C 0000A57C  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 8000D640 0000A580  7C BD 2B 78 */	mr r29, r5
/* 8000D644 0000A584  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 8000D648 0000A588  7C 04 00 50 */	subf r0, r4, r0
/* 8000D64C 0000A58C  90 1E 00 68 */	stw r0, 0x68(r30)
/* 8000D650 0000A590  48 00 00 40 */	b lbl_8000D690
lbl_8000D654:
/* 8000D654 0000A594  3C 60 80 37 */	lis r3, $$2288@ha
/* 8000D658 0000A598  4C C6 31 82 */	crclr 6
/* 8000D65C 0000A59C  38 63 05 50 */	addi r3, r3, $$2288@l
/* 8000D660 0000A5A0  48 03 2C 21 */	bl JUTWarningConsole_f
/* 8000D664 0000A5A4  88 1E 00 64 */	lbz r0, 0x64(r30)
/* 8000D668 0000A5A8  28 00 00 01 */	cmplwi r0, 1
/* 8000D66C 0000A5AC  40 82 00 24 */	bne lbl_8000D690
/* 8000D670 0000A5B0  81 8D 8D 74 */	lwz r12, mErrorHandler__7JKRHeap-_SDA_BASE_(r13)
/* 8000D674 0000A5B4  28 0C 00 00 */	cmplwi r12, 0
/* 8000D678 0000A5B8  41 82 00 18 */	beq lbl_8000D690
/* 8000D67C 0000A5BC  7D 88 03 A6 */	mtlr r12
/* 8000D680 0000A5C0  38 7E 00 00 */	addi r3, r30, 0
/* 8000D684 0000A5C4  38 9C 00 00 */	addi r4, r28, 0
/* 8000D688 0000A5C8  38 BF 00 00 */	addi r5, r31, 0
/* 8000D68C 0000A5CC  4E 80 00 21 */	blrl 
lbl_8000D690:
/* 8000D690 0000A5D0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8000D694 0000A5D4  7F A3 EB 78 */	mr r3, r29
/* 8000D698 0000A5D8  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8000D69C 0000A5DC  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8000D6A0 0000A5E0  7C 08 03 A6 */	mtlr r0
/* 8000D6A4 0000A5E4  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8000D6A8 0000A5E8  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8000D6AC 0000A5EC  38 21 00 28 */	addi r1, r1, 0x28
/* 8000D6B0 0000A5F0  4E 80 00 20 */	blr 

.global allocFromTail__12JKRSolidHeapFUli
allocFromTail__12JKRSolidHeapFUli:
/* 8000D6B4 0000A5F4  7C 08 02 A6 */	mflr r0
/* 8000D6B8 0000A5F8  90 01 00 04 */	stw r0, 4(r1)
/* 8000D6BC 0000A5FC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8000D6C0 0000A600  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8000D6C4 0000A604  3B E3 00 00 */	addi r31, r3, 0
/* 8000D6C8 0000A608  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8000D6CC 0000A60C  3B C0 00 00 */	li r30, 0
/* 8000D6D0 0000A610  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8000D6D4 0000A614  3B A5 00 00 */	addi r29, r5, 0
/* 8000D6D8 0000A618  38 BD FF FF */	addi r5, r29, -1
/* 8000D6DC 0000A61C  93 81 00 18 */	stw r28, 0x18(r1)
/* 8000D6E0 0000A620  80 C3 00 70 */	lwz r6, 0x70(r3)
/* 8000D6E4 0000A624  7C 7D 22 14 */	add r3, r29, r4
/* 8000D6E8 0000A628  7C A4 28 F8 */	nor r4, r5, r5
/* 8000D6EC 0000A62C  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 8000D6F0 0000A630  38 63 FF FF */	addi r3, r3, -1
/* 8000D6F4 0000A634  7C 9C 18 38 */	and r28, r4, r3
/* 8000D6F8 0000A638  7C 7C 30 50 */	subf r3, r28, r6
/* 8000D6FC 0000A63C  7C 83 18 38 */	and r3, r4, r3
/* 8000D700 0000A640  7C 83 30 50 */	subf r4, r3, r6
/* 8000D704 0000A644  7C 04 00 40 */	cmplw r4, r0
/* 8000D708 0000A648  41 81 00 20 */	bgt lbl_8000D728
/* 8000D70C 0000A64C  7C 04 30 50 */	subf r0, r4, r6
/* 8000D710 0000A650  90 1F 00 70 */	stw r0, 0x70(r31)
/* 8000D714 0000A654  7C 7E 1B 78 */	mr r30, r3
/* 8000D718 0000A658  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 8000D71C 0000A65C  7C 04 00 50 */	subf r0, r4, r0
/* 8000D720 0000A660  90 1F 00 68 */	stw r0, 0x68(r31)
/* 8000D724 0000A664  48 00 00 40 */	b lbl_8000D764
lbl_8000D728:
/* 8000D728 0000A668  3C 60 80 37 */	lis r3, $$2303@ha
/* 8000D72C 0000A66C  4C C6 31 82 */	crclr 6
/* 8000D730 0000A670  38 63 05 84 */	addi r3, r3, $$2303@l
/* 8000D734 0000A674  48 03 2B 4D */	bl JUTWarningConsole_f
/* 8000D738 0000A678  88 1F 00 64 */	lbz r0, 0x64(r31)
/* 8000D73C 0000A67C  28 00 00 01 */	cmplwi r0, 1
/* 8000D740 0000A680  40 82 00 24 */	bne lbl_8000D764
/* 8000D744 0000A684  81 8D 8D 74 */	lwz r12, mErrorHandler__7JKRHeap-_SDA_BASE_(r13)
/* 8000D748 0000A688  28 0C 00 00 */	cmplwi r12, 0
/* 8000D74C 0000A68C  41 82 00 18 */	beq lbl_8000D764
/* 8000D750 0000A690  7D 88 03 A6 */	mtlr r12
/* 8000D754 0000A694  38 7F 00 00 */	addi r3, r31, 0
/* 8000D758 0000A698  38 9C 00 00 */	addi r4, r28, 0
/* 8000D75C 0000A69C  38 BD 00 00 */	addi r5, r29, 0
/* 8000D760 0000A6A0  4E 80 00 21 */	blrl 
lbl_8000D764:
/* 8000D764 0000A6A4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8000D768 0000A6A8  7F C3 F3 78 */	mr r3, r30
/* 8000D76C 0000A6AC  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8000D770 0000A6B0  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8000D774 0000A6B4  7C 08 03 A6 */	mtlr r0
/* 8000D778 0000A6B8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8000D77C 0000A6BC  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8000D780 0000A6C0  38 21 00 28 */	addi r1, r1, 0x28
/* 8000D784 0000A6C4  4E 80 00 20 */	blr 

.global free__12JKRSolidHeapFPv
free__12JKRSolidHeapFPv:
/* 8000D788 0000A6C8  7C 08 02 A6 */	mflr r0
/* 8000D78C 0000A6CC  3C 60 80 37 */	lis r3, $$2305@ha
/* 8000D790 0000A6D0  90 01 00 04 */	stw r0, 4(r1)
/* 8000D794 0000A6D4  4C C6 31 82 */	crclr 6
/* 8000D798 0000A6D8  38 63 05 B8 */	addi r3, r3, $$2305@l
/* 8000D79C 0000A6DC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8000D7A0 0000A6E0  48 03 2A E1 */	bl JUTWarningConsole_f
/* 8000D7A4 0000A6E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8000D7A8 0000A6E8  38 21 00 08 */	addi r1, r1, 8
/* 8000D7AC 0000A6EC  7C 08 03 A6 */	mtlr r0
/* 8000D7B0 0000A6F0  4E 80 00 20 */	blr 

.global freeAll__12JKRSolidHeapFv
freeAll__12JKRSolidHeapFv:
/* 8000D7B4 0000A6F4  7C 08 02 A6 */	mflr r0
/* 8000D7B8 0000A6F8  90 01 00 04 */	stw r0, 4(r1)
/* 8000D7BC 0000A6FC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8000D7C0 0000A700  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8000D7C4 0000A704  3B E3 00 00 */	addi r31, r3, 0
/* 8000D7C8 0000A708  38 7F 00 18 */	addi r3, r31, 0x18
/* 8000D7CC 0000A70C  48 08 38 65 */	bl OSLockMutex
/* 8000D7D0 0000A710  7F E3 FB 78 */	mr r3, r31
/* 8000D7D4 0000A714  4B FF ED 49 */	bl freeAll__7JKRHeapFv
/* 8000D7D8 0000A718  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 8000D7DC 0000A71C  38 00 00 00 */	li r0, 0
/* 8000D7E0 0000A720  38 7F 00 18 */	addi r3, r31, 0x18
/* 8000D7E4 0000A724  90 9F 00 68 */	stw r4, 0x68(r31)
/* 8000D7E8 0000A728  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8000D7EC 0000A72C  90 9F 00 6C */	stw r4, 0x6c(r31)
/* 8000D7F0 0000A730  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 8000D7F4 0000A734  90 9F 00 70 */	stw r4, 0x70(r31)
/* 8000D7F8 0000A738  90 1F 00 74 */	stw r0, 0x74(r31)
/* 8000D7FC 0000A73C  48 08 39 11 */	bl OSUnlockMutex
/* 8000D800 0000A740  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8000D804 0000A744  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8000D808 0000A748  38 21 00 18 */	addi r1, r1, 0x18
/* 8000D80C 0000A74C  7C 08 03 A6 */	mtlr r0
/* 8000D810 0000A750  4E 80 00 20 */	blr 

.global freeTail__12JKRSolidHeapFv
freeTail__12JKRSolidHeapFv:
/* 8000D814 0000A754  7C 08 02 A6 */	mflr r0
/* 8000D818 0000A758  90 01 00 04 */	stw r0, 4(r1)
/* 8000D81C 0000A75C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8000D820 0000A760  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8000D824 0000A764  3B E3 00 00 */	addi r31, r3, 0
/* 8000D828 0000A768  38 7F 00 18 */	addi r3, r31, 0x18
/* 8000D82C 0000A76C  48 08 38 05 */	bl OSLockMutex
/* 8000D830 0000A770  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 8000D834 0000A774  80 BF 00 34 */	lwz r5, 0x34(r31)
/* 8000D838 0000A778  7C 04 28 40 */	cmplw r4, r5
/* 8000D83C 0000A77C  41 82 00 0C */	beq lbl_8000D848
/* 8000D840 0000A780  7F E3 FB 78 */	mr r3, r31
/* 8000D844 0000A784  4B FF EF 3D */	bl dispose__7JKRHeapFPvPv
lbl_8000D848:
/* 8000D848 0000A788  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 8000D84C 0000A78C  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8000D850 0000A790  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 8000D854 0000A794  7C 03 00 50 */	subf r0, r3, r0
/* 8000D858 0000A798  7C 04 02 14 */	add r0, r4, r0
/* 8000D85C 0000A79C  90 1F 00 68 */	stw r0, 0x68(r31)
/* 8000D860 0000A7A0  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8000D864 0000A7A4  90 1F 00 70 */	stw r0, 0x70(r31)
/* 8000D868 0000A7A8  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8000D86C 0000A7AC  48 00 00 10 */	b lbl_8000D87C
lbl_8000D870:
/* 8000D870 0000A7B0  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8000D874 0000A7B4  90 03 00 0C */	stw r0, 0xc(r3)
/* 8000D878 0000A7B8  80 63 00 10 */	lwz r3, 0x10(r3)
lbl_8000D87C:
/* 8000D87C 0000A7BC  28 03 00 00 */	cmplwi r3, 0
/* 8000D880 0000A7C0  40 82 FF F0 */	bne lbl_8000D870
/* 8000D884 0000A7C4  38 7F 00 18 */	addi r3, r31, 0x18
/* 8000D888 0000A7C8  48 08 38 85 */	bl OSUnlockMutex
/* 8000D88C 0000A7CC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8000D890 0000A7D0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8000D894 0000A7D4  38 21 00 18 */	addi r1, r1, 0x18
/* 8000D898 0000A7D8  7C 08 03 A6 */	mtlr r0
/* 8000D89C 0000A7DC  4E 80 00 20 */	blr 

.global resize__12JKRSolidHeapFPvUl
resize__12JKRSolidHeapFPvUl:
/* 8000D8A0 0000A7E0  7C 08 02 A6 */	mflr r0
/* 8000D8A4 0000A7E4  3C 60 80 37 */	lis r3, $$2322@ha
/* 8000D8A8 0000A7E8  90 01 00 04 */	stw r0, 4(r1)
/* 8000D8AC 0000A7EC  4C C6 31 82 */	crclr 6
/* 8000D8B0 0000A7F0  38 63 05 E0 */	addi r3, r3, $$2322@l
/* 8000D8B4 0000A7F4  94 21 FF F8 */	stwu r1, -8(r1)
/* 8000D8B8 0000A7F8  48 03 29 C9 */	bl JUTWarningConsole_f
/* 8000D8BC 0000A7FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8000D8C0 0000A800  38 60 FF FF */	li r3, -1
/* 8000D8C4 0000A804  38 21 00 08 */	addi r1, r1, 8
/* 8000D8C8 0000A808  7C 08 03 A6 */	mtlr r0
/* 8000D8CC 0000A80C  4E 80 00 20 */	blr 

.global getSize__12JKRSolidHeapFPv
getSize__12JKRSolidHeapFPv:
/* 8000D8D0 0000A810  7C 08 02 A6 */	mflr r0
/* 8000D8D4 0000A814  3C 60 80 37 */	lis r3, $$2324@ha
/* 8000D8D8 0000A818  90 01 00 04 */	stw r0, 4(r1)
/* 8000D8DC 0000A81C  4C C6 31 82 */	crclr 6
/* 8000D8E0 0000A820  38 63 06 10 */	addi r3, r3, $$2324@l
/* 8000D8E4 0000A824  94 21 FF F8 */	stwu r1, -8(r1)
/* 8000D8E8 0000A828  48 03 29 99 */	bl JUTWarningConsole_f
/* 8000D8EC 0000A82C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8000D8F0 0000A830  38 60 FF FF */	li r3, -1
/* 8000D8F4 0000A834  38 21 00 08 */	addi r1, r1, 8
/* 8000D8F8 0000A838  7C 08 03 A6 */	mtlr r0
/* 8000D8FC 0000A83C  4E 80 00 20 */	blr 

.global check__12JKRSolidHeapFv
check__12JKRSolidHeapFv:
/* 8000D900 0000A840  7C 08 02 A6 */	mflr r0
/* 8000D904 0000A844  90 01 00 04 */	stw r0, 4(r1)
/* 8000D908 0000A848  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8000D90C 0000A84C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8000D910 0000A850  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8000D914 0000A854  3B C3 00 00 */	addi r30, r3, 0
/* 8000D918 0000A858  38 7E 00 18 */	addi r3, r30, 0x18
/* 8000D91C 0000A85C  48 08 37 15 */	bl OSLockMutex
/* 8000D920 0000A860  80 BE 00 30 */	lwz r5, 0x30(r30)
/* 8000D924 0000A864  3B E0 00 01 */	li r31, 1
/* 8000D928 0000A868  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 8000D92C 0000A86C  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 8000D930 0000A870  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 8000D934 0000A874  7C A5 20 50 */	subf r5, r5, r4
/* 8000D938 0000A878  80 DE 00 68 */	lwz r6, 0x68(r30)
/* 8000D93C 0000A87C  7C 03 00 50 */	subf r0, r3, r0
/* 8000D940 0000A880  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 8000D944 0000A884  7C 05 02 14 */	add r0, r5, r0
/* 8000D948 0000A888  7C 06 02 14 */	add r0, r6, r0
/* 8000D94C 0000A88C  7C 00 20 40 */	cmplw r0, r4
/* 8000D950 0000A890  7C 05 03 78 */	mr r5, r0
/* 8000D954 0000A894  41 82 00 18 */	beq lbl_8000D96C
/* 8000D958 0000A898  3C 60 80 37 */	lis r3, $$2357@ha
/* 8000D95C 0000A89C  4C C6 31 82 */	crclr 6
/* 8000D960 0000A8A0  38 63 06 40 */	addi r3, r3, $$2357@l
/* 8000D964 0000A8A4  3B E0 00 00 */	li r31, 0
/* 8000D968 0000A8A8  48 03 29 19 */	bl JUTWarningConsole_f
lbl_8000D96C:
/* 8000D96C 0000A8AC  38 7E 00 18 */	addi r3, r30, 0x18
/* 8000D970 0000A8B0  48 08 37 9D */	bl OSUnlockMutex
/* 8000D974 0000A8B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8000D978 0000A8B8  7F E3 FB 78 */	mr r3, r31
/* 8000D97C 0000A8BC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8000D980 0000A8C0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8000D984 0000A8C4  7C 08 03 A6 */	mtlr r0
/* 8000D988 0000A8C8  38 21 00 18 */	addi r1, r1, 0x18
/* 8000D98C 0000A8CC  4E 80 00 20 */	blr 

.global dump__12JKRSolidHeapFv
dump__12JKRSolidHeapFv:
/* 8000D990 0000A8D0  7C 08 02 A6 */	mflr r0
/* 8000D994 0000A8D4  3C 80 80 37 */	lis r4, $$2288@ha
/* 8000D998 0000A8D8  90 01 00 04 */	stw r0, 4(r1)
/* 8000D99C 0000A8DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000D9A0 0000A8E0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8000D9A4 0000A8E4  3B E3 00 00 */	addi r31, r3, 0
/* 8000D9A8 0000A8E8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8000D9AC 0000A8EC  3B C4 05 50 */	addi r30, r4, $$2288@l
/* 8000D9B0 0000A8F0  38 7E 01 24 */	addi r3, r30, 0x124
/* 8000D9B4 0000A8F4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8000D9B8 0000A8F8  93 81 00 20 */	stw r28, 0x20(r1)
/* 8000D9BC 0000A8FC  48 03 28 99 */	bl JUTReportConsole
/* 8000D9C0 0000A900  7F E3 FB 78 */	mr r3, r31
/* 8000D9C4 0000A904  81 9F 00 00 */	lwz r12, 0(r31)
/* 8000D9C8 0000A908  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8000D9CC 0000A90C  7D 88 03 A6 */	mtlr r12
/* 8000D9D0 0000A910  4E 80 00 21 */	blrl 
/* 8000D9D4 0000A914  3B A3 00 00 */	addi r29, r3, 0
/* 8000D9D8 0000A918  38 7F 00 18 */	addi r3, r31, 0x18
/* 8000D9DC 0000A91C  48 08 36 55 */	bl OSLockMutex
/* 8000D9E0 0000A920  80 DF 00 30 */	lwz r6, 0x30(r31)
/* 8000D9E4 0000A924  38 7E 01 38 */	addi r3, r30, 0x138
/* 8000D9E8 0000A928  80 BF 00 6C */	lwz r5, 0x6c(r31)
/* 8000D9EC 0000A92C  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 8000D9F0 0000A930  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8000D9F4 0000A934  7C A6 28 50 */	subf r5, r6, r5
/* 8000D9F8 0000A938  80 DF 00 68 */	lwz r6, 0x68(r31)
/* 8000D9FC 0000A93C  7C 04 00 50 */	subf r0, r4, r0
/* 8000DA00 0000A940  7F 85 02 14 */	add r28, r5, r0
/* 8000DA04 0000A944  7F 86 E2 14 */	add r28, r6, r28
/* 8000DA08 0000A948  48 03 28 4D */	bl JUTReportConsole
/* 8000DA0C 0000A94C  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 8000DA10 0000A950  38 7E 01 50 */	addi r3, r30, 0x150
/* 8000DA14 0000A954  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 8000DA18 0000A958  4C C6 31 82 */	crclr 6
/* 8000DA1C 0000A95C  7C A4 00 50 */	subf r5, r4, r0
/* 8000DA20 0000A960  48 03 27 71 */	bl JUTReportConsole_f
/* 8000DA24 0000A964  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 8000DA28 0000A968  38 7E 01 64 */	addi r3, r30, 0x164
/* 8000DA2C 0000A96C  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8000DA30 0000A970  4C C6 31 82 */	crclr 6
/* 8000DA34 0000A974  7C A4 00 50 */	subf r5, r4, r0
/* 8000DA38 0000A978  48 03 27 59 */	bl JUTReportConsole_f
/* 8000DA3C 0000A97C  80 BF 00 38 */	lwz r5, 0x38(r31)
/* 8000DA40 0000A980  3C 00 43 30 */	lis r0, 0x4330
/* 8000DA44 0000A984  93 81 00 1C */	stw r28, 0x1c(r1)
/* 8000DA48 0000A988  7F 84 E3 78 */	mr r4, r28
/* 8000DA4C 0000A98C  C8 42 80 48 */	lfd f2, $$2371-_SDA2_BASE_(r2)
/* 8000DA50 0000A990  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8000DA54 0000A994  38 7E 01 78 */	addi r3, r30, 0x178
/* 8000DA58 0000A998  C0 62 80 40 */	lfs f3, $$2369-_SDA2_BASE_(r2)
/* 8000DA5C 0000A99C  4C C6 32 42 */	crset 6
/* 8000DA60 0000A9A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8000DA64 0000A9A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8000DA68 0000A9A8  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 8000DA6C 0000A9AC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8000DA70 0000A9B0  EC 21 10 28 */	fsubs f1, f1, f2
/* 8000DA74 0000A9B4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8000DA78 0000A9B8  EC 01 00 24 */	fdivs f0, f1, f0
/* 8000DA7C 0000A9BC  EC 23 00 32 */	fmuls f1, f3, f0
/* 8000DA80 0000A9C0  48 03 27 11 */	bl JUTReportConsole_f
/* 8000DA84 0000A9C4  38 7F 00 18 */	addi r3, r31, 0x18
/* 8000DA88 0000A9C8  48 08 36 85 */	bl OSUnlockMutex
/* 8000DA8C 0000A9CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000DA90 0000A9D0  7F A3 EB 78 */	mr r3, r29
/* 8000DA94 0000A9D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8000DA98 0000A9D8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8000DA9C 0000A9DC  7C 08 03 A6 */	mtlr r0
/* 8000DAA0 0000A9E0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8000DAA4 0000A9E4  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8000DAA8 0000A9E8  38 21 00 30 */	addi r1, r1, 0x30
/* 8000DAAC 0000A9EC  4E 80 00 20 */	blr 

.global state_register__12JKRSolidHeapCFPQ27JKRHeap6TStateUl
state_register__12JKRSolidHeapCFPQ27JKRHeap6TStateUl:
/* 8000DAB0 0000A9F0  7C 08 02 A6 */	mflr r0
/* 8000DAB4 0000A9F4  90 01 00 04 */	stw r0, 4(r1)
/* 8000DAB8 0000A9F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8000DABC 0000A9FC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8000DAC0 0000AA00  3B E4 00 00 */	addi r31, r4, 0
/* 8000DAC4 0000AA04  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8000DAC8 0000AA08  3B C3 00 00 */	addi r30, r3, 0
/* 8000DACC 0000AA0C  90 A4 00 0C */	stw r5, 0xc(r4)
/* 8000DAD0 0000AA10  81 9E 00 00 */	lwz r12, 0(r30)
/* 8000DAD4 0000AA14  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8000DAD8 0000AA18  7D 88 03 A6 */	mtlr r12
/* 8000DADC 0000AA1C  4E 80 00 21 */	blrl 
/* 8000DAE0 0000AA20  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 8000DAE4 0000AA24  7C 03 00 50 */	subf r0, r3, r0
/* 8000DAE8 0000AA28  90 1F 00 04 */	stw r0, 4(r31)
/* 8000DAEC 0000AA2C  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 8000DAF0 0000AA30  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 8000DAF4 0000AA34  1C 00 00 03 */	mulli r0, r0, 3
/* 8000DAF8 0000AA38  7C 63 02 14 */	add r3, r3, r0
/* 8000DAFC 0000AA3C  90 7F 00 08 */	stw r3, 8(r31)
/* 8000DB00 0000AA40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8000DB04 0000AA44  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8000DB08 0000AA48  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8000DB0C 0000AA4C  38 21 00 30 */	addi r1, r1, 0x30
/* 8000DB10 0000AA50  7C 08 03 A6 */	mtlr r0
/* 8000DB14 0000AA54  4E 80 00 20 */	blr 

.global getTotalFreeSize__12JKRSolidHeapFv
getTotalFreeSize__12JKRSolidHeapFv:
/* 8000DB18 0000AA58  7C 08 02 A6 */	mflr r0
/* 8000DB1C 0000AA5C  90 01 00 04 */	stw r0, 4(r1)
/* 8000DB20 0000AA60  94 21 FF F8 */	stwu r1, -8(r1)
/* 8000DB24 0000AA64  81 83 00 00 */	lwz r12, 0(r3)
/* 8000DB28 0000AA68  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8000DB2C 0000AA6C  7D 88 03 A6 */	mtlr r12
/* 8000DB30 0000AA70  4E 80 00 21 */	blrl 
/* 8000DB34 0000AA74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8000DB38 0000AA78  38 21 00 08 */	addi r1, r1, 8
/* 8000DB3C 0000AA7C  7C 08 03 A6 */	mtlr r0
/* 8000DB40 0000AA80  4E 80 00 20 */	blr 

.global getFreeSize__12JKRSolidHeapFv
getFreeSize__12JKRSolidHeapFv:
/* 8000DB44 0000AA84  80 63 00 68 */	lwz r3, 0x68(r3)
/* 8000DB48 0000AA88  4E 80 00 20 */	blr 

.global state_compare__12JKRSolidHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState
state_compare__12JKRSolidHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState:
/* 8000DB4C 0000AA8C  80 C4 00 08 */	lwz r6, 8(r4)
/* 8000DB50 0000AA90  38 60 00 01 */	li r3, 1
/* 8000DB54 0000AA94  80 05 00 08 */	lwz r0, 8(r5)
/* 8000DB58 0000AA98  7C 06 00 40 */	cmplw r6, r0
/* 8000DB5C 0000AA9C  41 82 00 08 */	beq lbl_8000DB64
/* 8000DB60 0000AAA0  38 60 00 00 */	li r3, 0
lbl_8000DB64:
/* 8000DB64 0000AAA4  80 84 00 04 */	lwz r4, 4(r4)
/* 8000DB68 0000AAA8  80 05 00 04 */	lwz r0, 4(r5)
/* 8000DB6C 0000AAAC  7C 04 00 40 */	cmplw r4, r0
/* 8000DB70 0000AAB0  4D 82 00 20 */	beqlr 
/* 8000DB74 0000AAB4  38 60 00 00 */	li r3, 0
/* 8000DB78 0000AAB8  4E 80 00 20 */	blr 

.global getHeapType__12JKRSolidHeapFv
getHeapType__12JKRSolidHeapFv:
/* 8000DB7C 0000AABC  3C 60 53 4C */	lis r3, 0x534C4944@ha
/* 8000DB80 0000AAC0  38 63 49 44 */	addi r3, r3, 0x534C4944@l
/* 8000DB84 0000AAC4  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$2288:
	.incbin "baserom.dol", 0x36D550, 0x34
$$2303:
	.incbin "baserom.dol", 0x36D584, 0x34
$$2305:
	.incbin "baserom.dol", 0x36D5B8, 0x28
$$2322:
	.incbin "baserom.dol", 0x36D5E0, 0x30
$$2324:
	.incbin "baserom.dol", 0x36D610, 0x30
$$2357:
	.incbin "baserom.dol", 0x36D640, 0x34
$$2364:
	.incbin "baserom.dol", 0x36D674, 0x14
$$2365:
	.incbin "baserom.dol", 0x36D688, 0x18
$$2366:
	.incbin "baserom.dol", 0x36D6A0, 0x14
$$2367:
	.incbin "baserom.dol", 0x36D6B4, 0x14
$$2368:
	.incbin "baserom.dol", 0x36D6C8, 0x20

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__12JKRSolidHeap
__vt__12JKRSolidHeap:
	.incbin "baserom.dol", 0x3A5690, 0x50

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2369:
	.incbin "baserom.dol", 0x3E3D40, 0x8
$$2371:
	.incbin "baserom.dol", 0x3E3D48, 0x8
