.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global SMS_IsInSameCameraCube__FRC3Vec
SMS_IsInSameCameraCube__FRC3Vec:
/* 8035F260 0035C1A0  7C 08 02 A6 */	mflr r0
/* 8035F264 0035C1A4  90 01 00 04 */	stw r0, 4(r1)
/* 8035F268 0035C1A8  94 21 FF 68 */	stwu r1, -0x98(r1)
/* 8035F26C 0035C1AC  BF 41 00 80 */	stmw r26, 0x80(r1)
/* 8035F270 0035C1B0  3B E0 00 00 */	li r31, 0
/* 8035F274 0035C1B4  7C 7D 1B 78 */	mr r29, r3
/* 8035F278 0035C1B8  7F FC FB 78 */	mr r28, r31
/* 8035F27C 0035C1BC  3B C0 00 00 */	li r30, 0
/* 8035F280 0035C1C0  80 8D 98 DC */	lwz r4, gpMarioPos-_SDA_BASE_(r13)
/* 8035F284 0035C1C4  C0 02 07 D0 */	lfs f0, $$21778-_SDA2_BASE_(r2)
/* 8035F288 0035C1C8  80 64 00 00 */	lwz r3, 0(r4)
/* 8035F28C 0035C1CC  80 04 00 04 */	lwz r0, 4(r4)
/* 8035F290 0035C1D0  83 6D A8 D8 */	lwz r27, gpCubeCamera-_SDA_BASE_(r13)
/* 8035F294 0035C1D4  90 61 00 74 */	stw r3, 0x74(r1)
/* 8035F298 0035C1D8  90 01 00 78 */	stw r0, 0x78(r1)
/* 8035F29C 0035C1DC  80 04 00 08 */	lwz r0, 8(r4)
/* 8035F2A0 0035C1E0  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8035F2A4 0035C1E4  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8035F2A8 0035C1E8  EC 01 00 2A */	fadds f0, f1, f0
/* 8035F2AC 0035C1EC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8035F2B0 0035C1F0  48 00 00 38 */	b lbl_8035F2E8
lbl_8035F2B4:
/* 8035F2B4 0035C1F4  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8035F2B8 0035C1F8  38 61 00 74 */	addi r3, r1, 0x74
/* 8035F2BC 0035C1FC  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8035F2C0 0035C200  7C 84 E0 2E */	lwzx r4, r4, r28
/* 8035F2C4 0035C204  38 C4 00 24 */	addi r6, r4, 0x24
/* 8035F2C8 0035C208  38 A4 00 18 */	addi r5, r4, 0x18
/* 8035F2CC 0035C20C  38 84 00 0C */	addi r4, r4, 0xc
/* 8035F2D0 0035C210  4B FF 8A 41 */	bl CLBIsPointInCube__FRC3VecRC3VecRC3VecRC3Vec
/* 8035F2D4 0035C214  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8035F2D8 0035C218  41 82 00 08 */	beq lbl_8035F2E0
/* 8035F2DC 0035C21C  48 00 00 1C */	b lbl_8035F2F8
lbl_8035F2E0:
/* 8035F2E0 0035C220  3B FF 00 01 */	addi r31, r31, 1
/* 8035F2E4 0035C224  3B 9C 00 04 */	addi r28, r28, 4
lbl_8035F2E8:
/* 8035F2E8 0035C228  88 1B 00 10 */	lbz r0, 0x10(r27)
/* 8035F2EC 0035C22C  7C 1F 00 40 */	cmplw r31, r0
/* 8035F2F0 0035C230  41 80 FF C4 */	blt lbl_8035F2B4
/* 8035F2F4 0035C234  3B E0 FF FF */	li r31, -1
lbl_8035F2F8:
/* 8035F2F8 0035C238  83 4D A8 D8 */	lwz r26, gpCubeCamera-_SDA_BASE_(r13)
/* 8035F2FC 0035C23C  3B 60 00 00 */	li r27, 0
/* 8035F300 0035C240  3B 80 00 00 */	li r28, 0
/* 8035F304 0035C244  48 00 00 38 */	b lbl_8035F33C
lbl_8035F308:
/* 8035F308 0035C248  80 9A 00 14 */	lwz r4, 0x14(r26)
/* 8035F30C 0035C24C  7F A3 EB 78 */	mr r3, r29
/* 8035F310 0035C250  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8035F314 0035C254  7C 84 E0 2E */	lwzx r4, r4, r28
/* 8035F318 0035C258  38 C4 00 24 */	addi r6, r4, 0x24
/* 8035F31C 0035C25C  38 A4 00 18 */	addi r5, r4, 0x18
/* 8035F320 0035C260  38 84 00 0C */	addi r4, r4, 0xc
/* 8035F324 0035C264  4B FF 89 ED */	bl CLBIsPointInCube__FRC3VecRC3VecRC3VecRC3Vec
/* 8035F328 0035C268  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8035F32C 0035C26C  41 82 00 08 */	beq lbl_8035F334
/* 8035F330 0035C270  48 00 00 1C */	b lbl_8035F34C
lbl_8035F334:
/* 8035F334 0035C274  3B 7B 00 01 */	addi r27, r27, 1
/* 8035F338 0035C278  3B 9C 00 04 */	addi r28, r28, 4
lbl_8035F33C:
/* 8035F33C 0035C27C  88 1A 00 10 */	lbz r0, 0x10(r26)
/* 8035F340 0035C280  7C 1B 00 40 */	cmplw r27, r0
/* 8035F344 0035C284  41 80 FF C4 */	blt lbl_8035F308
/* 8035F348 0035C288  3B 60 FF FF */	li r27, -1
lbl_8035F34C:
/* 8035F34C 0035C28C  7C 1F D8 00 */	cmpw r31, r27
/* 8035F350 0035C290  40 82 00 10 */	bne lbl_8035F360
/* 8035F354 0035C294  2C 1F FF FF */	cmpwi r31, -1
/* 8035F358 0035C298  41 82 00 08 */	beq lbl_8035F360
/* 8035F35C 0035C29C  3B C0 00 01 */	li r30, 1
lbl_8035F360:
/* 8035F360 0035C2A0  7F C3 F3 78 */	mr r3, r30
/* 8035F364 0035C2A4  BB 41 00 80 */	lmw r26, 0x80(r1)
/* 8035F368 0035C2A8  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8035F36C 0035C2AC  38 21 00 98 */	addi r1, r1, 0x98
/* 8035F370 0035C2B0  7C 08 03 A6 */	mtlr r0
/* 8035F374 0035C2B4  4E 80 00 20 */	blr 

.global SMS_IsInOtherFastCube__FRC3Vec
SMS_IsInOtherFastCube__FRC3Vec:
/* 8035F378 0035C2B8  7C 08 02 A6 */	mflr r0
/* 8035F37C 0035C2BC  90 01 00 04 */	stw r0, 4(r1)
/* 8035F380 0035C2C0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8035F384 0035C2C4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8035F388 0035C2C8  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8035F38C 0035C2CC  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8035F390 0035C2D0  3B A0 00 00 */	li r29, 0
/* 8035F394 0035C2D4  93 81 00 18 */	stw r28, 0x18(r1)
/* 8035F398 0035C2D8  3B 83 00 00 */	addi r28, r3, 0
/* 8035F39C 0035C2DC  38 60 00 01 */	li r3, 1
/* 8035F3A0 0035C2E0  80 8D 97 E8 */	lwz r4, gpMarDirector-_SDA_BASE_(r13)
/* 8035F3A4 0035C2E4  88 04 01 24 */	lbz r0, 0x124(r4)
/* 8035F3A8 0035C2E8  28 00 00 03 */	cmplwi r0, 3
/* 8035F3AC 0035C2EC  41 82 00 10 */	beq lbl_8035F3BC
/* 8035F3B0 0035C2F0  28 00 00 04 */	cmplwi r0, 4
/* 8035F3B4 0035C2F4  41 82 00 08 */	beq lbl_8035F3BC
/* 8035F3B8 0035C2F8  38 60 00 00 */	li r3, 0
lbl_8035F3BC:
/* 8035F3BC 0035C2FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8035F3C0 0035C300  40 82 00 BC */	bne lbl_8035F47C
/* 8035F3C4 0035C304  83 CD A8 F0 */	lwz r30, gpCubeFastA-_SDA_BASE_(r13)
/* 8035F3C8 0035C308  38 9C 00 00 */	addi r4, r28, 0
/* 8035F3CC 0035C30C  3B E0 00 00 */	li r31, 0
/* 8035F3D0 0035C310  38 7E 00 00 */	addi r3, r30, 0
/* 8035F3D4 0035C314  48 00 02 D5 */	bl getInCubeNo__16TCubeManagerBaseCFRC3Vec
/* 8035F3D8 0035C318  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8035F3DC 0035C31C  2C 00 FF FF */	cmpwi r0, -1
/* 8035F3E0 0035C320  41 82 00 18 */	beq lbl_8035F3F8
/* 8035F3E4 0035C324  2C 03 FF FF */	cmpwi r3, -1
/* 8035F3E8 0035C328  41 82 00 10 */	beq lbl_8035F3F8
/* 8035F3EC 0035C32C  7C 00 18 00 */	cmpw r0, r3
/* 8035F3F0 0035C330  41 82 00 08 */	beq lbl_8035F3F8
/* 8035F3F4 0035C334  3B E0 00 01 */	li r31, 1
lbl_8035F3F8:
/* 8035F3F8 0035C338  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8035F3FC 0035C33C  40 82 00 7C */	bne lbl_8035F478
/* 8035F400 0035C340  83 ED A8 F4 */	lwz r31, gpCubeFastB-_SDA_BASE_(r13)
/* 8035F404 0035C344  38 9C 00 00 */	addi r4, r28, 0
/* 8035F408 0035C348  3B C0 00 00 */	li r30, 0
/* 8035F40C 0035C34C  38 7F 00 00 */	addi r3, r31, 0
/* 8035F410 0035C350  48 00 02 99 */	bl getInCubeNo__16TCubeManagerBaseCFRC3Vec
/* 8035F414 0035C354  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8035F418 0035C358  2C 00 FF FF */	cmpwi r0, -1
/* 8035F41C 0035C35C  41 82 00 18 */	beq lbl_8035F434
/* 8035F420 0035C360  2C 03 FF FF */	cmpwi r3, -1
/* 8035F424 0035C364  41 82 00 10 */	beq lbl_8035F434
/* 8035F428 0035C368  7C 00 18 00 */	cmpw r0, r3
/* 8035F42C 0035C36C  41 82 00 08 */	beq lbl_8035F434
/* 8035F430 0035C370  3B C0 00 01 */	li r30, 1
lbl_8035F434:
/* 8035F434 0035C374  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8035F438 0035C378  40 82 00 40 */	bne lbl_8035F478
/* 8035F43C 0035C37C  83 ED A8 F8 */	lwz r31, gpCubeFastC-_SDA_BASE_(r13)
/* 8035F440 0035C380  38 9C 00 00 */	addi r4, r28, 0
/* 8035F444 0035C384  3B C0 00 00 */	li r30, 0
/* 8035F448 0035C388  38 7F 00 00 */	addi r3, r31, 0
/* 8035F44C 0035C38C  48 00 02 5D */	bl getInCubeNo__16TCubeManagerBaseCFRC3Vec
/* 8035F450 0035C390  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8035F454 0035C394  2C 00 FF FF */	cmpwi r0, -1
/* 8035F458 0035C398  41 82 00 18 */	beq lbl_8035F470
/* 8035F45C 0035C39C  2C 03 FF FF */	cmpwi r3, -1
/* 8035F460 0035C3A0  41 82 00 10 */	beq lbl_8035F470
/* 8035F464 0035C3A4  7C 00 18 00 */	cmpw r0, r3
/* 8035F468 0035C3A8  41 82 00 08 */	beq lbl_8035F470
/* 8035F46C 0035C3AC  3B C0 00 01 */	li r30, 1
lbl_8035F470:
/* 8035F470 0035C3B0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8035F474 0035C3B4  41 82 00 08 */	beq lbl_8035F47C
lbl_8035F478:
/* 8035F478 0035C3B8  3B A0 00 01 */	li r29, 1
lbl_8035F47C:
/* 8035F47C 0035C3BC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8035F480 0035C3C0  7F A3 EB 78 */	mr r3, r29
/* 8035F484 0035C3C4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8035F488 0035C3C8  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8035F48C 0035C3CC  7C 08 03 A6 */	mtlr r0
/* 8035F490 0035C3D0  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8035F494 0035C3D4  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8035F498 0035C3D8  38 21 00 28 */	addi r1, r1, 0x28
/* 8035F49C 0035C3DC  4E 80 00 20 */	blr 

.global isInAreaCube__16TCubeManagerAreaCFRC3Vec
isInAreaCube__16TCubeManagerAreaCFRC3Vec:
/* 8035F4A0 0035C3E0  7C 08 02 A6 */	mflr r0
/* 8035F4A4 0035C3E4  90 01 00 04 */	stw r0, 4(r1)
/* 8035F4A8 0035C3E8  94 21 FF 48 */	stwu r1, -0xb8(r1)
/* 8035F4AC 0035C3EC  BF 61 00 A4 */	stmw r27, 0xa4(r1)
/* 8035F4B0 0035C3F0  3B A0 00 00 */	li r29, 0
/* 8035F4B4 0035C3F4  3B 63 00 00 */	addi r27, r3, 0
/* 8035F4B8 0035C3F8  3B 84 00 00 */	addi r28, r4, 0
/* 8035F4BC 0035C3FC  3B DD 00 00 */	addi r30, r29, 0
/* 8035F4C0 0035C400  3B E0 00 00 */	li r31, 0
/* 8035F4C4 0035C404  48 00 00 38 */	b lbl_8035F4FC
lbl_8035F4C8:
/* 8035F4C8 0035C408  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8035F4CC 0035C40C  7F 83 E3 78 */	mr r3, r28
/* 8035F4D0 0035C410  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8035F4D4 0035C414  7C 84 F0 2E */	lwzx r4, r4, r30
/* 8035F4D8 0035C418  38 C4 00 24 */	addi r6, r4, 0x24
/* 8035F4DC 0035C41C  38 A4 00 18 */	addi r5, r4, 0x18
/* 8035F4E0 0035C420  38 84 00 0C */	addi r4, r4, 0xc
/* 8035F4E4 0035C424  4B FF 88 2D */	bl CLBIsPointInCube__FRC3VecRC3VecRC3VecRC3Vec
/* 8035F4E8 0035C428  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8035F4EC 0035C42C  41 82 00 08 */	beq lbl_8035F4F4
/* 8035F4F0 0035C430  48 00 00 1C */	b lbl_8035F50C
lbl_8035F4F4:
/* 8035F4F4 0035C434  3B BD 00 01 */	addi r29, r29, 1
/* 8035F4F8 0035C438  3B DE 00 04 */	addi r30, r30, 4
lbl_8035F4FC:
/* 8035F4FC 0035C43C  88 1B 00 10 */	lbz r0, 0x10(r27)
/* 8035F500 0035C440  7C 1D 00 40 */	cmplw r29, r0
/* 8035F504 0035C444  41 80 FF C4 */	blt lbl_8035F4C8
/* 8035F508 0035C448  3B A0 FF FF */	li r29, -1
lbl_8035F50C:
/* 8035F50C 0035C44C  80 BB 00 1C */	lwz r5, 0x1c(r27)
/* 8035F510 0035C450  7C 05 E8 00 */	cmpw r5, r29
/* 8035F514 0035C454  40 82 00 0C */	bne lbl_8035F520
/* 8035F518 0035C458  3B E0 00 01 */	li r31, 1
/* 8035F51C 0035C45C  48 00 00 B8 */	b lbl_8035F5D4
lbl_8035F520:
/* 8035F520 0035C460  80 6D 97 E8 */	lwz r3, gpMarDirector-_SDA_BASE_(r13)
/* 8035F524 0035C464  88 03 00 7C */	lbz r0, 0x7c(r3)
/* 8035F528 0035C468  28 00 00 07 */	cmplwi r0, 7
/* 8035F52C 0035C46C  40 82 00 A8 */	bne lbl_8035F5D4
/* 8035F530 0035C470  2C 05 FF FF */	cmpwi r5, -1
/* 8035F534 0035C474  41 82 00 A0 */	beq lbl_8035F5D4
/* 8035F538 0035C478  2C 1D FF FF */	cmpwi r29, -1
/* 8035F53C 0035C47C  41 82 00 98 */	beq lbl_8035F5D4
/* 8035F540 0035C480  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8035F544 0035C484  54 A3 10 3A */	slwi r3, r5, 2
/* 8035F548 0035C488  57 A0 10 3A */	slwi r0, r29, 2
/* 8035F54C 0035C48C  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 8035F550 0035C490  38 82 07 D4 */	addi r4, r2, $$21897-_SDA2_BASE_
/* 8035F554 0035C494  7C A6 1A 14 */	add r5, r6, r3
/* 8035F558 0035C498  7C 66 00 2E */	lwzx r3, r6, r0
/* 8035F55C 0035C49C  80 A5 00 00 */	lwz r5, 0(r5)
/* 8035F560 0035C4A0  83 C3 00 04 */	lwz r30, 4(r3)
/* 8035F564 0035C4A4  83 A5 00 04 */	lwz r29, 4(r5)
/* 8035F568 0035C4A8  7F A3 EB 78 */	mr r3, r29
/* 8035F56C 0035C4AC  4B D2 66 F1 */	bl strcmp
/* 8035F570 0035C4B0  2C 03 00 00 */	cmpwi r3, 0
/* 8035F574 0035C4B4  40 82 00 34 */	bne lbl_8035F5A8
/* 8035F578 0035C4B8  38 7E 00 00 */	addi r3, r30, 0
/* 8035F57C 0035C4BC  38 82 07 DC */	addi r4, r2, $$21898-_SDA2_BASE_
/* 8035F580 0035C4C0  4B D2 66 DD */	bl strcmp
/* 8035F584 0035C4C4  2C 03 00 00 */	cmpwi r3, 0
/* 8035F588 0035C4C8  41 82 00 18 */	beq lbl_8035F5A0
/* 8035F58C 0035C4CC  38 7E 00 00 */	addi r3, r30, 0
/* 8035F590 0035C4D0  38 82 07 E4 */	addi r4, r2, $$21899-_SDA2_BASE_
/* 8035F594 0035C4D4  4B D2 66 C9 */	bl strcmp
/* 8035F598 0035C4D8  2C 03 00 00 */	cmpwi r3, 0
/* 8035F59C 0035C4DC  40 82 00 38 */	bne lbl_8035F5D4
lbl_8035F5A0:
/* 8035F5A0 0035C4E0  3B E0 00 01 */	li r31, 1
/* 8035F5A4 0035C4E4  48 00 00 30 */	b lbl_8035F5D4
lbl_8035F5A8:
/* 8035F5A8 0035C4E8  38 7D 00 00 */	addi r3, r29, 0
/* 8035F5AC 0035C4EC  38 82 07 DC */	addi r4, r2, $$21898-_SDA2_BASE_
/* 8035F5B0 0035C4F0  4B D2 66 AD */	bl strcmp
/* 8035F5B4 0035C4F4  2C 03 00 00 */	cmpwi r3, 0
/* 8035F5B8 0035C4F8  40 82 00 1C */	bne lbl_8035F5D4
/* 8035F5BC 0035C4FC  38 7E 00 00 */	addi r3, r30, 0
/* 8035F5C0 0035C500  38 82 07 E4 */	addi r4, r2, $$21899-_SDA2_BASE_
/* 8035F5C4 0035C504  4B D2 66 99 */	bl strcmp
/* 8035F5C8 0035C508  2C 03 00 00 */	cmpwi r3, 0
/* 8035F5CC 0035C50C  40 82 00 08 */	bne lbl_8035F5D4
/* 8035F5D0 0035C510  3B E0 00 01 */	li r31, 1
lbl_8035F5D4:
/* 8035F5D4 0035C514  7F E3 FB 78 */	mr r3, r31
/* 8035F5D8 0035C518  BB 61 00 A4 */	lmw r27, 0xa4(r1)
/* 8035F5DC 0035C51C  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 8035F5E0 0035C520  38 21 00 B8 */	addi r1, r1, 0xb8
/* 8035F5E4 0035C524  7C 08 03 A6 */	mtlr r0
/* 8035F5E8 0035C528  4E 80 00 20 */	blr 

.global calcPointInCubeRatio__16TCubeManagerBaseCFRC3VeclPfPfPf
calcPointInCubeRatio__16TCubeManagerBaseCFRC3VeclPfPfPf:
/* 8035F5EC 0035C52C  7C 08 02 A6 */	mflr r0
/* 8035F5F0 0035C530  7D 09 43 78 */	mr r9, r8
/* 8035F5F4 0035C534  90 01 00 04 */	stw r0, 4(r1)
/* 8035F5F8 0035C538  39 07 00 00 */	addi r8, r7, 0
/* 8035F5FC 0035C53C  54 A0 10 3A */	slwi r0, r5, 2
/* 8035F600 0035C540  94 21 FF F8 */	stwu r1, -8(r1)
/* 8035F604 0035C544  38 E6 00 00 */	addi r7, r6, 0
/* 8035F608 0035C548  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8035F60C 0035C54C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8035F610 0035C550  7D 43 00 2E */	lwzx r10, r3, r0
/* 8035F614 0035C554  38 64 00 00 */	addi r3, r4, 0
/* 8035F618 0035C558  38 CA 00 24 */	addi r6, r10, 0x24
/* 8035F61C 0035C55C  38 AA 00 18 */	addi r5, r10, 0x18
/* 8035F620 0035C560  38 8A 00 0C */	addi r4, r10, 0xc
/* 8035F624 0035C564  4B FF 85 19 */	bl CLBCalcPointInCubeRatio__FRC3VecRC3VecRC3VecRC3VecPfPfPf
/* 8035F628 0035C568  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035F62C 0035C56C  38 21 00 08 */	addi r1, r1, 8
/* 8035F630 0035C570  7C 08 03 A6 */	mtlr r0
/* 8035F634 0035C574  4E 80 00 20 */	blr 

.global isInCube__16TCubeManagerBaseCFRC3Vecl
isInCube__16TCubeManagerBaseCFRC3Vecl:
/* 8035F638 0035C578  7C 08 02 A6 */	mflr r0
/* 8035F63C 0035C57C  2C 05 00 00 */	cmpwi r5, 0
/* 8035F640 0035C580  90 01 00 04 */	stw r0, 4(r1)
/* 8035F644 0035C584  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8035F648 0035C588  93 E1 00 34 */	stw r31, 0x34(r1)
/* 8035F64C 0035C58C  3B E0 00 00 */	li r31, 0
/* 8035F650 0035C590  41 80 00 40 */	blt lbl_8035F690
/* 8035F654 0035C594  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8035F658 0035C598  7C 05 00 00 */	cmpw r5, r0
/* 8035F65C 0035C59C  40 80 00 34 */	bge lbl_8035F690
/* 8035F660 0035C5A0  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8035F664 0035C5A4  38 64 00 00 */	addi r3, r4, 0
/* 8035F668 0035C5A8  54 A0 10 3A */	slwi r0, r5, 2
/* 8035F66C 0035C5AC  80 86 00 10 */	lwz r4, 0x10(r6)
/* 8035F670 0035C5B0  7C 84 00 2E */	lwzx r4, r4, r0
/* 8035F674 0035C5B4  38 C4 00 24 */	addi r6, r4, 0x24
/* 8035F678 0035C5B8  38 A4 00 18 */	addi r5, r4, 0x18
/* 8035F67C 0035C5BC  38 84 00 0C */	addi r4, r4, 0xc
/* 8035F680 0035C5C0  4B FF 86 91 */	bl CLBIsPointInCube__FRC3VecRC3VecRC3VecRC3Vec
/* 8035F684 0035C5C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8035F688 0035C5C8  41 82 00 08 */	beq lbl_8035F690
/* 8035F68C 0035C5CC  3B E0 00 01 */	li r31, 1
lbl_8035F690:
/* 8035F690 0035C5D0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8035F694 0035C5D4  7F E3 FB 78 */	mr r3, r31
/* 8035F698 0035C5D8  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8035F69C 0035C5DC  38 21 00 38 */	addi r1, r1, 0x38
/* 8035F6A0 0035C5E0  7C 08 03 A6 */	mtlr r0
/* 8035F6A4 0035C5E4  4E 80 00 20 */	blr 

.global getInCubeNo__16TCubeManagerBaseCFRC3Vec
getInCubeNo__16TCubeManagerBaseCFRC3Vec:
/* 8035F6A8 0035C5E8  7C 08 02 A6 */	mflr r0
/* 8035F6AC 0035C5EC  90 01 00 04 */	stw r0, 4(r1)
/* 8035F6B0 0035C5F0  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8035F6B4 0035C5F4  93 E1 00 34 */	stw r31, 0x34(r1)
/* 8035F6B8 0035C5F8  3B E0 00 00 */	li r31, 0
/* 8035F6BC 0035C5FC  93 C1 00 30 */	stw r30, 0x30(r1)
/* 8035F6C0 0035C600  3B C0 00 00 */	li r30, 0
/* 8035F6C4 0035C604  93 A1 00 2C */	stw r29, 0x2c(r1)
/* 8035F6C8 0035C608  3B A4 00 00 */	addi r29, r4, 0
/* 8035F6CC 0035C60C  93 81 00 28 */	stw r28, 0x28(r1)
/* 8035F6D0 0035C610  3B 83 00 00 */	addi r28, r3, 0
/* 8035F6D4 0035C614  48 00 00 3C */	b lbl_8035F710
lbl_8035F6D8:
/* 8035F6D8 0035C618  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 8035F6DC 0035C61C  7F A3 EB 78 */	mr r3, r29
/* 8035F6E0 0035C620  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8035F6E4 0035C624  7C 84 F8 2E */	lwzx r4, r4, r31
/* 8035F6E8 0035C628  38 C4 00 24 */	addi r6, r4, 0x24
/* 8035F6EC 0035C62C  38 A4 00 18 */	addi r5, r4, 0x18
/* 8035F6F0 0035C630  38 84 00 0C */	addi r4, r4, 0xc
/* 8035F6F4 0035C634  4B FF 86 1D */	bl CLBIsPointInCube__FRC3VecRC3VecRC3VecRC3Vec
/* 8035F6F8 0035C638  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8035F6FC 0035C63C  41 82 00 0C */	beq lbl_8035F708
/* 8035F700 0035C640  7F C3 F3 78 */	mr r3, r30
/* 8035F704 0035C644  48 00 00 1C */	b lbl_8035F720
lbl_8035F708:
/* 8035F708 0035C648  3B DE 00 01 */	addi r30, r30, 1
/* 8035F70C 0035C64C  3B FF 00 04 */	addi r31, r31, 4
lbl_8035F710:
/* 8035F710 0035C650  88 1C 00 10 */	lbz r0, 0x10(r28)
/* 8035F714 0035C654  7C 1E 00 40 */	cmplw r30, r0
/* 8035F718 0035C658  41 80 FF C0 */	blt lbl_8035F6D8
/* 8035F71C 0035C65C  38 60 FF FF */	li r3, -1
lbl_8035F720:
/* 8035F720 0035C660  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8035F724 0035C664  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8035F728 0035C668  83 C1 00 30 */	lwz r30, 0x30(r1)
/* 8035F72C 0035C66C  7C 08 03 A6 */	mtlr r0
/* 8035F730 0035C670  83 A1 00 2C */	lwz r29, 0x2c(r1)
/* 8035F734 0035C674  83 81 00 28 */	lwz r28, 0x28(r1)
/* 8035F738 0035C678  38 21 00 38 */	addi r1, r1, 0x38
/* 8035F73C 0035C67C  4E 80 00 20 */	blr 

.global getDataNo__16TCubeManagerBaseCFl
getDataNo__16TCubeManagerBaseCFl:
/* 8035F740 0035C680  2C 04 00 00 */	cmpwi r4, 0
/* 8035F744 0035C684  38 A0 FF FF */	li r5, -1
/* 8035F748 0035C688  41 80 00 24 */	blt lbl_8035F76C
/* 8035F74C 0035C68C  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8035F750 0035C690  7C 04 00 00 */	cmpw r4, r0
/* 8035F754 0035C694  40 80 00 18 */	bge lbl_8035F76C
/* 8035F758 0035C698  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8035F75C 0035C69C  54 80 10 3A */	slwi r0, r4, 2
/* 8035F760 0035C6A0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8035F764 0035C6A4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8035F768 0035C6A8  80 A3 00 34 */	lwz r5, 0x34(r3)
lbl_8035F76C:
/* 8035F76C 0035C6AC  7C A3 2B 78 */	mr r3, r5
/* 8035F770 0035C6B0  4E 80 00 20 */	blr 

.global perform__16TCubeManagerBaseFUlPQ26JDrama9TGraphics
perform__16TCubeManagerBaseFUlPQ26JDrama9TGraphics:
/* 8035F774 0035C6B4  4E 80 00 20 */	blr 

.global load__16TCubeManagerBaseFR20JSUMemoryInputStream
load__16TCubeManagerBaseFR20JSUMemoryInputStream:
/* 8035F778 0035C6B8  7C 08 02 A6 */	mflr r0
/* 8035F77C 0035C6BC  90 01 00 04 */	stw r0, 4(r1)
/* 8035F780 0035C6C0  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 8035F784 0035C6C4  93 E1 00 44 */	stw r31, 0x44(r1)
/* 8035F788 0035C6C8  93 C1 00 40 */	stw r30, 0x40(r1)
/* 8035F78C 0035C6CC  93 A1 00 3C */	stw r29, 0x3c(r1)
/* 8035F790 0035C6D0  7C 7D 1B 78 */	mr r29, r3
/* 8035F794 0035C6D4  4B CE 50 BD */	bl load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
/* 8035F798 0035C6D8  80 6D 8E E0 */	lwz r3, instance__Q26JDrama11TNameRefGen-_SDA_BASE_(r13)
/* 8035F79C 0035C6DC  83 FD 00 18 */	lwz r31, 0x18(r29)
/* 8035F7A0 0035C6E0  83 C3 00 04 */	lwz r30, 4(r3)
/* 8035F7A4 0035C6E4  7F E3 FB 78 */	mr r3, r31
/* 8035F7A8 0035C6E8  4B CE 4E E5 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 8035F7AC 0035C6EC  81 9E 00 00 */	lwz r12, 0(r30)
/* 8035F7B0 0035C6F0  38 83 00 00 */	addi r4, r3, 0
/* 8035F7B4 0035C6F4  38 7E 00 00 */	addi r3, r30, 0
/* 8035F7B8 0035C6F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8035F7BC 0035C6FC  7F E5 FB 78 */	mr r5, r31
/* 8035F7C0 0035C700  7D 88 03 A6 */	mtlr r12
/* 8035F7C4 0035C704  4E 80 00 21 */	blrl 
/* 8035F7C8 0035C708  28 03 00 00 */	cmplwi r3, 0
/* 8035F7CC 0035C70C  41 82 00 38 */	beq lbl_8035F804
/* 8035F7D0 0035C710  90 7D 00 14 */	stw r3, 0x14(r29)
/* 8035F7D4 0035C714  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8035F7D8 0035C718  38 83 00 0C */	addi r4, r3, 0xc
/* 8035F7DC 0035C71C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8035F7E0 0035C720  28 03 00 00 */	cmplwi r3, 0
/* 8035F7E4 0035C724  40 82 00 0C */	bne lbl_8035F7F0
/* 8035F7E8 0035C728  38 00 00 00 */	li r0, 0
/* 8035F7EC 0035C72C  48 00 00 14 */	b lbl_8035F800
lbl_8035F7F0:
/* 8035F7F0 0035C730  80 04 00 08 */	lwz r0, 8(r4)
/* 8035F7F4 0035C734  7C 03 00 50 */	subf r0, r3, r0
/* 8035F7F8 0035C738  7C 00 16 70 */	srawi r0, r0, 2
/* 8035F7FC 0035C73C  7C 00 01 94 */	addze r0, r0
lbl_8035F800:
/* 8035F800 0035C740  98 1D 00 10 */	stb r0, 0x10(r29)
lbl_8035F804:
/* 8035F804 0035C744  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8035F808 0035C748  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 8035F80C 0035C74C  83 C1 00 40 */	lwz r30, 0x40(r1)
/* 8035F810 0035C750  7C 08 03 A6 */	mtlr r0
/* 8035F814 0035C754  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 8035F818 0035C758  38 21 00 48 */	addi r1, r1, 0x48
/* 8035F81C 0035C75C  4E 80 00 20 */	blr 

.global __ct__16TCubeManagerBaseFPCcUc
__ct__16TCubeManagerBaseFPCcUc:
/* 8035F820 0035C760  7C 08 02 A6 */	mflr r0
/* 8035F824 0035C764  3C C0 80 3A */	lis r6, $$21490@ha
/* 8035F828 0035C768  90 01 00 04 */	stw r0, 4(r1)
/* 8035F82C 0035C76C  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 8035F830 0035C770  BF 41 00 30 */	stmw r26, 0x30(r1)
/* 8035F834 0035C774  7C BB 2B 78 */	mr r27, r5
/* 8035F838 0035C778  3B E6 6A 40 */	addi r31, r6, $$21490@l
/* 8035F83C 0035C77C  90 61 00 08 */	stw r3, 8(r1)
/* 8035F840 0035C780  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TNameRef@ha
/* 8035F844 0035C784  3B 83 A8 60 */	addi r28, r3, __vt__Q26JDrama8TNameRef@l
/* 8035F848 0035C788  83 A1 00 08 */	lwz r29, 8(r1)
/* 8035F84C 0035C78C  38 64 00 00 */	addi r3, r4, 0
/* 8035F850 0035C790  93 9D 00 00 */	stw r28, 0(r29)
/* 8035F854 0035C794  90 9D 00 04 */	stw r4, 4(r29)
/* 8035F858 0035C798  4B CE 4E 35 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 8035F85C 0035C79C  B0 7D 00 08 */	sth r3, 8(r29)
/* 8035F860 0035C7A0  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 8035F864 0035C7A4  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 8035F868 0035C7A8  90 1D 00 00 */	stw r0, 0(r29)
/* 8035F86C 0035C7AC  38 80 00 00 */	li r4, 0
/* 8035F870 0035C7B0  3C 60 80 3E */	lis r3, __vt__16TCubeManagerBase@ha
/* 8035F874 0035C7B4  B0 9D 00 0C */	sth r4, 0xc(r29)
/* 8035F878 0035C7B8  38 03 4C 38 */	addi r0, r3, __vt__16TCubeManagerBase@l
/* 8035F87C 0035C7BC  38 60 00 24 */	li r3, 0x24
/* 8035F880 0035C7C0  90 1D 00 00 */	stw r0, 0(r29)
/* 8035F884 0035C7C4  9B 7D 00 10 */	stb r27, 0x10(r29)
/* 8035F888 0035C7C8  90 9D 00 14 */	stw r4, 0x14(r29)
/* 8035F88C 0035C7CC  90 9D 00 18 */	stw r4, 0x18(r29)
/* 8035F890 0035C7D0  4B CA D0 21 */	bl __nw__FUl
/* 8035F894 0035C7D4  7C 7B 1B 79 */	or. r27, r3, r3
/* 8035F898 0035C7D8  41 82 00 38 */	beq lbl_8035F8D0
/* 8035F89C 0035C7DC  93 61 00 20 */	stw r27, 0x20(r1)
/* 8035F8A0 0035C7E0  38 7F 00 20 */	addi r3, r31, 0x20
/* 8035F8A4 0035C7E4  93 9B 00 00 */	stw r28, 0(r27)
/* 8035F8A8 0035C7E8  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8035F8AC 0035C7EC  90 7C 00 04 */	stw r3, 4(r28)
/* 8035F8B0 0035C7F0  4B CE 4D DD */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 8035F8B4 0035C7F4  B0 7C 00 08 */	sth r3, 8(r28)
/* 8035F8B8 0035C7F8  38 7C 00 0C */	addi r3, r28, 0xc
/* 8035F8BC 0035C7FC  38 81 00 18 */	addi r4, r1, 0x18
/* 8035F8C0 0035C800  4B CD A2 79 */	bl __ct__Q27JGadget20TVector_pointer_voidFRCQ27JGadget14TAllocator$$0Pv$$1
/* 8035F8C4 0035C804  3C 60 80 3B */	lis r3, __vt__54TNameRefPtrAryT$$016TCubeGeneralInfo$$4Q26JDrama8TNameRef$$1@ha
/* 8035F8C8 0035C808  38 03 3D 80 */	addi r0, r3, __vt__54TNameRefPtrAryT$$016TCubeGeneralInfo$$4Q26JDrama8TNameRef$$1@l
/* 8035F8CC 0035C80C  90 1C 00 00 */	stw r0, 0(r28)
lbl_8035F8D0:
/* 8035F8D0 0035C810  80 81 00 08 */	lwz r4, 8(r1)
/* 8035F8D4 0035C814  93 64 00 14 */	stw r27, 0x14(r4)
/* 8035F8D8 0035C818  80 64 00 14 */	lwz r3, 0x14(r4)
/* 8035F8DC 0035C81C  88 84 00 10 */	lbz r4, 0x10(r4)
/* 8035F8E0 0035C820  38 63 00 0C */	addi r3, r3, 0xc
/* 8035F8E4 0035C824  4B CD A7 8D */	bl reserve__Q27JGadget20TVector_pointer_voidFUl
/* 8035F8E8 0035C828  3C 80 80 3B */	lis r4, __vt__Q26JDrama8TNameRef@ha
/* 8035F8EC 0035C82C  3C 60 80 3E */	lis r3, __vt__16TCubeGeneralInfo@ha
/* 8035F8F0 0035C830  3B 84 A8 60 */	addi r28, r4, __vt__Q26JDrama8TNameRef@l
/* 8035F8F4 0035C834  3B BF 00 34 */	addi r29, r31, 0x34
/* 8035F8F8 0035C838  3B E3 4C C0 */	addi r31, r3, __vt__16TCubeGeneralInfo@l
/* 8035F8FC 0035C83C  3B 60 00 00 */	li r27, 0
/* 8035F900 0035C840  48 00 00 A8 */	b lbl_8035F9A8
lbl_8035F904:
/* 8035F904 0035C844  38 60 00 38 */	li r3, 0x38
/* 8035F908 0035C848  4B CA CF A9 */	bl __nw__FUl
/* 8035F90C 0035C84C  7C 7A 1B 79 */	or. r26, r3, r3
/* 8035F910 0035C850  41 82 00 78 */	beq lbl_8035F988
/* 8035F914 0035C854  93 41 00 1C */	stw r26, 0x1c(r1)
/* 8035F918 0035C858  7F A3 EB 78 */	mr r3, r29
/* 8035F91C 0035C85C  93 9A 00 00 */	stw r28, 0(r26)
/* 8035F920 0035C860  83 C1 00 1C */	lwz r30, 0x1c(r1)
/* 8035F924 0035C864  93 BE 00 04 */	stw r29, 4(r30)
/* 8035F928 0035C868  4B CE 4D 65 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 8035F92C 0035C86C  B0 7E 00 08 */	sth r3, 8(r30)
/* 8035F930 0035C870  38 7E 00 0C */	addi r3, r30, 0xc
/* 8035F934 0035C874  93 FE 00 00 */	stw r31, 0(r30)
/* 8035F938 0035C878  C0 22 07 EC */	lfs f1, $$22026-_SDA2_BASE_(r2)
/* 8035F93C 0035C87C  FC 40 08 90 */	fmr f2, f1
/* 8035F940 0035C880  FC 60 08 90 */	fmr f3, f1
/* 8035F944 0035C884  48 00 00 89 */	bl set$$0f$$1__Q29JGeometry8TVec3$$0f$$1Ffff
/* 8035F948 0035C888  C0 22 07 EC */	lfs f1, $$22026-_SDA2_BASE_(r2)
/* 8035F94C 0035C88C  38 7E 00 18 */	addi r3, r30, 0x18
/* 8035F950 0035C890  FC 40 08 90 */	fmr f2, f1
/* 8035F954 0035C894  FC 60 08 90 */	fmr f3, f1
/* 8035F958 0035C898  48 00 00 75 */	bl set$$0f$$1__Q29JGeometry8TVec3$$0f$$1Ffff
/* 8035F95C 0035C89C  C0 22 07 F0 */	lfs f1, $$22027-_SDA2_BASE_(r2)
/* 8035F960 0035C8A0  38 7E 00 24 */	addi r3, r30, 0x24
/* 8035F964 0035C8A4  FC 40 08 90 */	fmr f2, f1
/* 8035F968 0035C8A8  FC 60 08 90 */	fmr f3, f1
/* 8035F96C 0035C8AC  48 00 00 61 */	bl set$$0f$$1__Q29JGeometry8TVec3$$0f$$1Ffff
/* 8035F970 0035C8B0  38 00 00 80 */	li r0, 0x80
/* 8035F974 0035C8B4  B0 1E 00 30 */	sth r0, 0x30(r30)
/* 8035F978 0035C8B8  38 60 00 02 */	li r3, 2
/* 8035F97C 0035C8BC  38 00 00 00 */	li r0, 0
/* 8035F980 0035C8C0  B0 7E 00 32 */	sth r3, 0x32(r30)
/* 8035F984 0035C8C4  90 1E 00 34 */	stw r0, 0x34(r30)
lbl_8035F988:
/* 8035F988 0035C8C8  93 41 00 28 */	stw r26, 0x28(r1)
/* 8035F98C 0035C8CC  38 A1 00 28 */	addi r5, r1, 0x28
/* 8035F990 0035C8D0  80 61 00 08 */	lwz r3, 8(r1)
/* 8035F994 0035C8D4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8035F998 0035C8D8  38 63 00 0C */	addi r3, r3, 0xc
/* 8035F99C 0035C8DC  80 83 00 08 */	lwz r4, 8(r3)
/* 8035F9A0 0035C8E0  4B CD A6 59 */	bl insert__Q27JGadget20TVector_pointer_voidFPPvRCPv
/* 8035F9A4 0035C8E4  3B 7B 00 01 */	addi r27, r27, 1
lbl_8035F9A8:
/* 8035F9A8 0035C8E8  80 61 00 08 */	lwz r3, 8(r1)
/* 8035F9AC 0035C8EC  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8035F9B0 0035C8F0  7C 1B 00 00 */	cmpw r27, r0
/* 8035F9B4 0035C8F4  41 80 FF 50 */	blt lbl_8035F904
/* 8035F9B8 0035C8F8  BB 41 00 30 */	lmw r26, 0x30(r1)
/* 8035F9BC 0035C8FC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8035F9C0 0035C900  38 21 00 48 */	addi r1, r1, 0x48
/* 8035F9C4 0035C904  7C 08 03 A6 */	mtlr r0
/* 8035F9C8 0035C908  4E 80 00 20 */	blr 

set$$0f$$1__Q29JGeometry8TVec3$$0f$$1Ffff:
/* 8035F9CC 0035C90C  D0 23 00 00 */	stfs f1, 0(r3)
/* 8035F9D0 0035C910  D0 43 00 04 */	stfs f2, 4(r3)
/* 8035F9D4 0035C914  D0 63 00 08 */	stfs f3, 8(r3)
/* 8035F9D8 0035C918  4E 80 00 20 */	blr 

.global __ct__16TCubeManagerBaseFPCcPCc
__ct__16TCubeManagerBaseFPCcPCc:
/* 8035F9DC 0035C91C  7C 08 02 A6 */	mflr r0
/* 8035F9E0 0035C920  3C C0 80 3B */	lis r6, __vt__Q26JDrama8TNameRef@ha
/* 8035F9E4 0035C924  90 01 00 04 */	stw r0, 4(r1)
/* 8035F9E8 0035C928  38 06 A8 60 */	addi r0, r6, __vt__Q26JDrama8TNameRef@l
/* 8035F9EC 0035C92C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035F9F0 0035C930  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035F9F4 0035C934  7C BF 2B 78 */	mr r31, r5
/* 8035F9F8 0035C938  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035F9FC 0035C93C  3B C3 00 00 */	addi r30, r3, 0
/* 8035FA00 0035C940  90 03 00 00 */	stw r0, 0(r3)
/* 8035FA04 0035C944  90 83 00 04 */	stw r4, 4(r3)
/* 8035FA08 0035C948  7C 83 23 78 */	mr r3, r4
/* 8035FA0C 0035C94C  4B CE 4C 81 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 8035FA10 0035C950  B0 7E 00 08 */	sth r3, 8(r30)
/* 8035FA14 0035C954  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 8035FA18 0035C958  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 8035FA1C 0035C95C  90 1E 00 00 */	stw r0, 0(r30)
/* 8035FA20 0035C960  38 80 00 00 */	li r4, 0
/* 8035FA24 0035C964  3C 60 80 3E */	lis r3, __vt__16TCubeManagerBase@ha
/* 8035FA28 0035C968  B0 9E 00 0C */	sth r4, 0xc(r30)
/* 8035FA2C 0035C96C  38 03 4C 38 */	addi r0, r3, __vt__16TCubeManagerBase@l
/* 8035FA30 0035C970  38 7E 00 00 */	addi r3, r30, 0
/* 8035FA34 0035C974  90 1E 00 00 */	stw r0, 0(r30)
/* 8035FA38 0035C978  98 9E 00 10 */	stb r4, 0x10(r30)
/* 8035FA3C 0035C97C  90 9E 00 14 */	stw r4, 0x14(r30)
/* 8035FA40 0035C980  93 FE 00 18 */	stw r31, 0x18(r30)
/* 8035FA44 0035C984  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035FA48 0035C988  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035FA4C 0035C98C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035FA50 0035C990  38 21 00 20 */	addi r1, r1, 0x20
/* 8035FA54 0035C994  7C 08 03 A6 */	mtlr r0
/* 8035FA58 0035C998  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$21490:
	.incbin "baserom.dol", 0x3A3A40, 0xC
$$21526:
	.incbin "baserom.dol", 0x3A3A4C, 0x14
$$22024:
	.incbin "baserom.dol", 0x3A3A60, 0x14
$$22025:
	.incbin "baserom.dol", 0x3A3A74, 0x14

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__16TCubeManagerBase
__vt__16TCubeManagerBase:
	.incbin "baserom.dol", 0x3E1C38, 0x28

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$21778:
	.incbin "baserom.dol", 0x3EC4D0, 0x4
$$21897:
	.incbin "baserom.dol", 0x3EC4D4, 0x8
$$21898:
	.incbin "baserom.dol", 0x3EC4DC, 0x8
$$21899:
	.incbin "baserom.dol", 0x3EC4E4, 0x8
$$22026:
	.incbin "baserom.dol", 0x3EC4EC, 0x4
$$22027:
	.incbin "baserom.dol", 0x3EC4F0, 0x8

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global gpCubeCamera
gpCubeCamera:
	.skip 0x4
.global gpCubeMirror
gpCubeMirror:
	.skip 0x4
.global gpCubeWire
gpCubeWire:
	.skip 0x4
.global gpCubeStream
gpCubeStream:
	.skip 0x4
.global gpCubeShadow
gpCubeShadow:
	.skip 0x4
.global gpCubeArea
gpCubeArea:
	.skip 0x4
.global gpCubeFastA
gpCubeFastA:
	.skip 0x4
.global gpCubeFastB
gpCubeFastB:
	.skip 0x4
.global gpCubeFastC
gpCubeFastC:
	.skip 0x4
.global gpCubeSoundChange
gpCubeSoundChange:
	.skip 0x4
.global gpCubeSoundEffect
gpCubeSoundEffect:
	.skip 0x8
