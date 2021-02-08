.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __dt__23TNerveAnimalGraphWanderFv
__dt__23TNerveAnimalGraphWanderFv:
/* 80367AF0 00364A30  7C 08 02 A6 */	mflr r0
/* 80367AF4 00364A34  90 01 00 04 */	stw r0, 4(r1)
/* 80367AF8 00364A38  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80367AFC 00364A3C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80367B00 00364A40  7C 7F 1B 79 */	or. r31, r3, r3
/* 80367B04 00364A44  41 82 00 30 */	beq lbl_80367B34
/* 80367B08 00364A48  3C 60 80 3E */	lis r3, __vt__23TNerveAnimalGraphWander@ha
/* 80367B0C 00364A4C  38 03 59 10 */	addi r0, r3, __vt__23TNerveAnimalGraphWander@l
/* 80367B10 00364A50  90 1F 00 00 */	stw r0, 0(r31)
/* 80367B14 00364A54  41 82 00 10 */	beq lbl_80367B24
/* 80367B18 00364A58  3C 60 80 3C */	lis r3, __vt__24TNerveBase$$010TLiveActor$$1@ha
/* 80367B1C 00364A5C  38 03 92 60 */	addi r0, r3, __vt__24TNerveBase$$010TLiveActor$$1@l
/* 80367B20 00364A60  90 1F 00 00 */	stw r0, 0(r31)
lbl_80367B24:
/* 80367B24 00364A64  7C 80 07 35 */	extsh. r0, r4
/* 80367B28 00364A68  40 81 00 0C */	ble lbl_80367B34
/* 80367B2C 00364A6C  7F E3 FB 78 */	mr r3, r31
/* 80367B30 00364A70  4B CA 4F 81 */	bl __dl__FPv
lbl_80367B34:
/* 80367B34 00364A74  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80367B38 00364A78  7F E3 FB 78 */	mr r3, r31
/* 80367B3C 00364A7C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80367B40 00364A80  38 21 00 18 */	addi r1, r1, 0x18
/* 80367B44 00364A84  7C 08 03 A6 */	mtlr r0
/* 80367B48 00364A88  4E 80 00 20 */	blr 

.global execute__23TNerveAnimalGraphWanderCFP24TSpineBase$$010TLiveActor$$1
execute__23TNerveAnimalGraphWanderCFP24TSpineBase$$010TLiveActor$$1:
/* 80367B4C 00364A8C  7C 08 02 A6 */	mflr r0
/* 80367B50 00364A90  90 01 00 04 */	stw r0, 4(r1)
/* 80367B54 00364A94  94 21 FF 18 */	stwu r1, -0xe8(r1)
/* 80367B58 00364A98  BF 61 00 D4 */	stmw r27, 0xd4(r1)
/* 80367B5C 00364A9C  83 E4 00 00 */	lwz r31, 0(r4)
/* 80367B60 00364AA0  80 BF 00 70 */	lwz r5, 0x70(r31)
/* 80367B64 00364AA4  83 DF 00 74 */	lwz r30, 0x74(r31)
/* 80367B68 00364AA8  80 65 00 5C */	lwz r3, 0x5c(r5)
/* 80367B6C 00364AAC  80 E3 00 18 */	lwz r7, 0x18(r3)
/* 80367B70 00364AB0  2C 07 00 00 */	cmpwi r7, 0
/* 80367B74 00364AB4  41 82 00 6C */	beq lbl_80367BE0
/* 80367B78 00364AB8  A8 DF 00 7C */	lha r6, 0x7c(r31)
/* 80367B7C 00364ABC  7C 06 38 00 */	cmpw r6, r7
/* 80367B80 00364AC0  41 80 00 60 */	blt lbl_80367BE0
/* 80367B84 00364AC4  7C 06 3B D6 */	divw r0, r6, r7
/* 80367B88 00364AC8  80 65 00 18 */	lwz r3, 0x18(r5)
/* 80367B8C 00364ACC  7C 00 39 D6 */	mullw r0, r0, r7
/* 80367B90 00364AD0  7C 00 30 50 */	subf r0, r0, r6
/* 80367B94 00364AD4  54 00 10 3A */	slwi r0, r0, 2
/* 80367B98 00364AD8  7F 63 00 2E */	lwzx r27, r3, r0
/* 80367B9C 00364ADC  38 80 00 00 */	li r4, 0
/* 80367BA0 00364AE0  80 7B 00 74 */	lwz r3, 0x74(r27)
/* 80367BA4 00364AE4  4B D6 C6 11 */	bl getCurAnmIdx__6MActorCFi
/* 80367BA8 00364AE8  38 83 00 00 */	addi r4, r3, 0
/* 80367BAC 00364AEC  38 7E 00 00 */	addi r3, r30, 0
/* 80367BB0 00364AF0  4B D6 C5 71 */	bl setBckFromIndex__6MActorFi
/* 80367BB4 00364AF4  38 7E 00 00 */	addi r3, r30, 0
/* 80367BB8 00364AF8  38 80 00 00 */	li r4, 0
/* 80367BBC 00364AFC  4B D6 C6 69 */	bl getFrameCtrl__6MActorFi
/* 80367BC0 00364B00  80 1B 00 74 */	lwz r0, 0x74(r27)
/* 80367BC4 00364B04  3B 83 00 00 */	addi r28, r3, 0
/* 80367BC8 00364B08  38 80 00 00 */	li r4, 0
/* 80367BCC 00364B0C  7C 03 03 78 */	mr r3, r0
/* 80367BD0 00364B10  4B D6 C6 55 */	bl getFrameCtrl__6MActorFi
/* 80367BD4 00364B14  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80367BD8 00364B18  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 80367BDC 00364B1C  48 00 01 98 */	b lbl_80367D74
lbl_80367BE0:
/* 80367BE0 00364B20  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 80367BE4 00364B24  3C 03 FF 80 */	addis r0, r3, 0xff80
/* 80367BE8 00364B28  28 00 00 01 */	cmplwi r0, 1
/* 80367BEC 00364B2C  40 82 01 88 */	bne lbl_80367D74
/* 80367BF0 00364B30  80 04 00 20 */	lwz r0, 0x20(r4)
/* 80367BF4 00364B34  2C 00 00 00 */	cmpwi r0, 0
/* 80367BF8 00364B38  40 82 00 84 */	bne lbl_80367C7C
/* 80367BFC 00364B3C  38 60 01 F4 */	li r3, 0x1f4
/* 80367C00 00364B40  4B D7 2C F1 */	bl CLBPalFrame$$0i$$1__Fi
/* 80367C04 00364B44  3B A3 00 00 */	addi r29, r3, 0
/* 80367C08 00364B48  38 60 00 96 */	li r3, 0x96
/* 80367C0C 00364B4C  4B D7 2C E5 */	bl CLBPalFrame$$0i$$1__Fi
/* 80367C10 00364B50  83 7F 01 50 */	lwz r27, 0x150(r31)
/* 80367C14 00364B54  38 00 00 00 */	li r0, 0
/* 80367C18 00364B58  3B 83 00 00 */	addi r28, r3, 0
/* 80367C1C 00364B5C  90 1B 00 00 */	stw r0, 0(r27)
/* 80367C20 00364B60  4B D1 DE A5 */	bl rand
/* 80367C24 00364B64  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80367C28 00364B68  C8 62 0A 28 */	lfd f3, $$22162-_SDA2_BASE_(r2)
/* 80367C2C 00364B6C  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80367C30 00364B70  7C 1C E8 50 */	subf r0, r28, r29
/* 80367C34 00364B74  3C 60 43 30 */	lis r3, 0x4330
/* 80367C38 00364B78  C0 22 0A 18 */	lfs f1, $$22158-_SDA2_BASE_(r2)
/* 80367C3C 00364B7C  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 80367C40 00364B80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80367C44 00364B84  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80367C48 00364B88  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 80367C4C 00364B8C  90 61 00 C0 */	stw r3, 0xc0(r1)
/* 80367C50 00364B90  EC 40 18 28 */	fsubs f2, f0, f3
/* 80367C54 00364B94  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80367C58 00364B98  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80367C5C 00364B9C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80367C60 00364BA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80367C64 00364BA4  FC 00 00 1E */	fctiwz f0, f0
/* 80367C68 00364BA8  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 80367C6C 00364BAC  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 80367C70 00364BB0  7C 7C 02 14 */	add r3, r28, r0
/* 80367C74 00364BB4  38 03 00 01 */	addi r0, r3, 1
/* 80367C78 00364BB8  90 1B 00 04 */	stw r0, 4(r27)
lbl_80367C7C:
/* 80367C7C 00364BBC  80 9F 01 50 */	lwz r4, 0x150(r31)
/* 80367C80 00364BC0  80 64 00 00 */	lwz r3, 0(r4)
/* 80367C84 00364BC4  38 03 00 01 */	addi r0, r3, 1
/* 80367C88 00364BC8  90 04 00 00 */	stw r0, 0(r4)
/* 80367C8C 00364BCC  80 04 00 00 */	lwz r0, 0(r4)
/* 80367C90 00364BD0  80 64 00 04 */	lwz r3, 4(r4)
/* 80367C94 00364BD4  7C 00 18 00 */	cmpw r0, r3
/* 80367C98 00364BD8  41 80 00 08 */	blt lbl_80367CA0
/* 80367C9C 00364BDC  90 64 00 00 */	stw r3, 0(r4)
lbl_80367CA0:
/* 80367CA0 00364BE0  38 7E 00 00 */	addi r3, r30, 0
/* 80367CA4 00364BE4  38 80 00 00 */	li r4, 0
/* 80367CA8 00364BE8  38 A0 00 00 */	li r5, 0
/* 80367CAC 00364BEC  4B D6 D5 01 */	bl curAnmEndsNext__6MActorFiPc
/* 80367CB0 00364BF0  3B 83 00 00 */	addi r28, r3, 0
/* 80367CB4 00364BF4  38 7E 00 00 */	addi r3, r30, 0
/* 80367CB8 00364BF8  38 80 00 00 */	li r4, 0
/* 80367CBC 00364BFC  4B D6 C4 F9 */	bl getCurAnmIdx__6MActorCFi
/* 80367CC0 00364C00  2C 03 00 01 */	cmpwi r3, 1
/* 80367CC4 00364C04  41 82 00 08 */	beq lbl_80367CCC
/* 80367CC8 00364C08  48 00 00 AC */	b lbl_80367D74
lbl_80367CCC:
/* 80367CCC 00364C0C  2C 1C 00 00 */	cmpwi r28, 0
/* 80367CD0 00364C10  41 82 00 A4 */	beq lbl_80367D74
/* 80367CD4 00364C14  38 7E 00 00 */	addi r3, r30, 0
/* 80367CD8 00364C18  38 80 00 00 */	li r4, 0
/* 80367CDC 00364C1C  4B D6 C4 15 */	bl checkCurBckFromIndex__6MActorFi
/* 80367CE0 00364C20  2C 03 00 00 */	cmpwi r3, 0
/* 80367CE4 00364C24  40 82 00 10 */	bne lbl_80367CF4
/* 80367CE8 00364C28  38 7E 00 00 */	addi r3, r30, 0
/* 80367CEC 00364C2C  38 80 00 00 */	li r4, 0
/* 80367CF0 00364C30  4B D6 C4 31 */	bl setBckFromIndex__6MActorFi
lbl_80367CF4:
/* 80367CF4 00364C34  38 60 01 F4 */	li r3, 0x1f4
/* 80367CF8 00364C38  4B D7 2B F9 */	bl CLBPalFrame$$0i$$1__Fi
/* 80367CFC 00364C3C  3B 83 00 00 */	addi r28, r3, 0
/* 80367D00 00364C40  38 60 00 96 */	li r3, 0x96
/* 80367D04 00364C44  4B D7 2B ED */	bl CLBPalFrame$$0i$$1__Fi
/* 80367D08 00364C48  83 7F 01 50 */	lwz r27, 0x150(r31)
/* 80367D0C 00364C4C  38 00 00 00 */	li r0, 0
/* 80367D10 00364C50  3B A3 00 00 */	addi r29, r3, 0
/* 80367D14 00364C54  90 1B 00 00 */	stw r0, 0(r27)
/* 80367D18 00364C58  4B D1 DD AD */	bl rand
/* 80367D1C 00364C5C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80367D20 00364C60  C8 62 0A 28 */	lfd f3, $$22162-_SDA2_BASE_(r2)
/* 80367D24 00364C64  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80367D28 00364C68  7C 1D E0 50 */	subf r0, r29, r28
/* 80367D2C 00364C6C  3C 60 43 30 */	lis r3, 0x4330
/* 80367D30 00364C70  C0 22 0A 18 */	lfs f1, $$22158-_SDA2_BASE_(r2)
/* 80367D34 00364C74  90 61 00 B8 */	stw r3, 0xb8(r1)
/* 80367D38 00364C78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80367D3C 00364C7C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80367D40 00364C80  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 80367D44 00364C84  90 61 00 C0 */	stw r3, 0xc0(r1)
/* 80367D48 00364C88  EC 40 18 28 */	fsubs f2, f0, f3
/* 80367D4C 00364C8C  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80367D50 00364C90  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80367D54 00364C94  EC 00 18 28 */	fsubs f0, f0, f3
/* 80367D58 00364C98  EC 00 00 72 */	fmuls f0, f0, f1
/* 80367D5C 00364C9C  FC 00 00 1E */	fctiwz f0, f0
/* 80367D60 00364CA0  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80367D64 00364CA4  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80367D68 00364CA8  7C 7D 02 14 */	add r3, r29, r0
/* 80367D6C 00364CAC  38 03 00 01 */	addi r0, r3, 1
/* 80367D70 00364CB0  90 1B 00 04 */	stw r0, 4(r27)
lbl_80367D74:
/* 80367D74 00364CB4  38 7F 00 00 */	addi r3, r31, 0
/* 80367D78 00364CB8  38 80 00 01 */	li r4, 1
/* 80367D7C 00364CBC  4B FF DE F1 */	bl execWalk__11TAnimalBaseFb
/* 80367D80 00364CC0  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 80367D84 00364CC4  2C 00 00 00 */	cmpwi r0, 0
/* 80367D88 00364CC8  41 82 00 D0 */	beq lbl_80367E58
/* 80367D8C 00364CCC  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 80367D90 00364CD0  28 03 00 00 */	cmplwi r3, 0
/* 80367D94 00364CD4  41 82 00 0C */	beq lbl_80367DA0
/* 80367D98 00364CD8  38 83 00 10 */	addi r4, r3, 0x10
/* 80367D9C 00364CDC  48 00 00 08 */	b lbl_80367DA4
lbl_80367DA0:
/* 80367DA0 00364CE0  38 9F 00 F8 */	addi r4, r31, 0xf8
lbl_80367DA4:
/* 80367DA4 00364CE4  80 64 00 00 */	lwz r3, 0(r4)
/* 80367DA8 00364CE8  80 04 00 04 */	lwz r0, 4(r4)
/* 80367DAC 00364CEC  90 61 00 94 */	stw r3, 0x94(r1)
/* 80367DB0 00364CF0  90 01 00 98 */	stw r0, 0x98(r1)
/* 80367DB4 00364CF4  80 04 00 08 */	lwz r0, 8(r4)
/* 80367DB8 00364CF8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80367DBC 00364CFC  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80367DC0 00364D00  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80367DC4 00364D04  EC 01 00 28 */	fsubs f0, f1, f0
/* 80367DC8 00364D08  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80367DCC 00364D0C  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 80367DD0 00364D10  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80367DD4 00364D14  EC 01 00 28 */	fsubs f0, f1, f0
/* 80367DD8 00364D18  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80367DDC 00364D1C  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 80367DE0 00364D20  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80367DE4 00364D24  EC 01 00 28 */	fsubs f0, f1, f0
/* 80367DE8 00364D28  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80367DEC 00364D2C  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80367DF0 00364D30  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80367DF4 00364D34  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 80367DF8 00364D38  EC 21 00 72 */	fmuls f1, f1, f1
/* 80367DFC 00364D3C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80367E00 00364D40  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80367E04 00364D44  EC 01 00 2A */	fadds f0, f1, f0
/* 80367E08 00364D48  EC 22 00 2A */	fadds f1, f2, f0
/* 80367E0C 00364D4C  4B D6 8A A5 */	bl sqrt__Q29JGeometry8TUtil$$0f$$1Ff
/* 80367E10 00364D50  C0 02 0A 1C */	lfs f0, $$22159-_SDA2_BASE_(r2)
/* 80367E14 00364D54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80367E18 00364D58  40 80 02 54 */	bge lbl_8036806C
/* 80367E1C 00364D5C  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 80367E20 00364D60  2C 00 00 00 */	cmpwi r0, 0
/* 80367E24 00364D64  41 82 02 48 */	beq lbl_8036806C
/* 80367E28 00364D68  38 61 00 84 */	addi r3, r1, 0x84
/* 80367E2C 00364D6C  38 9F 01 14 */	addi r4, r31, 0x114
/* 80367E30 00364D70  4B E0 9D A9 */	bl pop__23TSolidStack$$09TPathNode$$1Fv
/* 80367E34 00364D74  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80367E38 00364D78  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 80367E3C 00364D7C  80 61 00 88 */	lwz r3, 0x88(r1)
/* 80367E40 00364D80  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80367E44 00364D84  90 7F 00 F8 */	stw r3, 0xf8(r31)
/* 80367E48 00364D88  90 1F 00 FC */	stw r0, 0xfc(r31)
/* 80367E4C 00364D8C  80 01 00 90 */	lwz r0, 0x90(r1)
/* 80367E50 00364D90  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80367E54 00364D94  48 00 02 18 */	b lbl_8036806C
lbl_80367E58:
/* 80367E58 00364D98  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80367E5C 00364D9C  28 03 00 00 */	cmplwi r3, 0
/* 80367E60 00364DA0  41 82 00 0C */	beq lbl_80367E6C
/* 80367E64 00364DA4  38 83 00 10 */	addi r4, r3, 0x10
/* 80367E68 00364DA8  48 00 00 08 */	b lbl_80367E70
lbl_80367E6C:
/* 80367E6C 00364DAC  38 9F 01 08 */	addi r4, r31, 0x108
lbl_80367E70:
/* 80367E70 00364DB0  80 64 00 00 */	lwz r3, 0(r4)
/* 80367E74 00364DB4  80 04 00 04 */	lwz r0, 4(r4)
/* 80367E78 00364DB8  90 61 00 78 */	stw r3, 0x78(r1)
/* 80367E7C 00364DBC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80367E80 00364DC0  80 04 00 08 */	lwz r0, 8(r4)
/* 80367E84 00364DC4  90 01 00 80 */	stw r0, 0x80(r1)
/* 80367E88 00364DC8  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80367E8C 00364DCC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80367E90 00364DD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80367E94 00364DD4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80367E98 00364DD8  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 80367E9C 00364DDC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80367EA0 00364DE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80367EA4 00364DE4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80367EA8 00364DE8  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80367EAC 00364DEC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80367EB0 00364DF0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80367EB4 00364DF4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80367EB8 00364DF8  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80367EBC 00364DFC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80367EC0 00364E00  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 80367EC4 00364E04  EC 21 00 72 */	fmuls f1, f1, f1
/* 80367EC8 00364E08  EC 00 00 32 */	fmuls f0, f0, f0
/* 80367ECC 00364E0C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80367ED0 00364E10  EC 01 00 2A */	fadds f0, f1, f0
/* 80367ED4 00364E14  EC 22 00 2A */	fadds f1, f2, f0
/* 80367ED8 00364E18  4B D6 89 D9 */	bl sqrt__Q29JGeometry8TUtil$$0f$$1Ff
/* 80367EDC 00364E1C  C0 02 0A 20 */	lfs f0, $$22160-_SDA2_BASE_(r2)
/* 80367EE0 00364E20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80367EE4 00364E24  40 80 01 88 */	bge lbl_8036806C
/* 80367EE8 00364E28  7F E3 FB 78 */	mr r3, r31
/* 80367EEC 00364E2C  4B EE 73 F1 */	bl goToRandomNextGraphNode__11TSpineEnemyFv
/* 80367EF0 00364E30  7F E3 FB 78 */	mr r3, r31
/* 80367EF4 00364E34  4B FF E3 DD */	bl resetRandomCurPathNode__11TAnimalBaseFv
/* 80367EF8 00364E38  80 9F 00 F4 */	lwz r4, 0xf4(r31)
/* 80367EFC 00364E3C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80367F00 00364E40  28 04 00 00 */	cmplwi r4, 0
/* 80367F04 00364E44  41 82 00 0C */	beq lbl_80367F10
/* 80367F08 00364E48  38 64 00 10 */	addi r3, r4, 0x10
/* 80367F0C 00364E4C  48 00 00 08 */	b lbl_80367F14
lbl_80367F10:
/* 80367F10 00364E50  38 63 00 04 */	addi r3, r3, 4
lbl_80367F14:
/* 80367F14 00364E54  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80367F18 00364E58  C0 03 00 04 */	lfs f0, 4(r3)
/* 80367F1C 00364E5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80367F20 00364E60  4C 40 13 82 */	cror 2, 0, 2
/* 80367F24 00364E64  40 82 00 A8 */	bne lbl_80367FCC
/* 80367F28 00364E68  38 7E 00 00 */	addi r3, r30, 0
/* 80367F2C 00364E6C  38 80 00 01 */	li r4, 1
/* 80367F30 00364E70  4B D6 C1 C1 */	bl checkCurBckFromIndex__6MActorFi
/* 80367F34 00364E74  2C 03 00 00 */	cmpwi r3, 0
/* 80367F38 00364E78  40 82 00 10 */	bne lbl_80367F48
/* 80367F3C 00364E7C  38 7E 00 00 */	addi r3, r30, 0
/* 80367F40 00364E80  38 80 00 01 */	li r4, 1
/* 80367F44 00364E84  4B D6 C1 DD */	bl setBckFromIndex__6MActorFi
lbl_80367F48:
/* 80367F48 00364E88  38 60 00 B4 */	li r3, 0xb4
/* 80367F4C 00364E8C  4B D7 29 A5 */	bl CLBPalFrame$$0i$$1__Fi
/* 80367F50 00364E90  3B C3 00 00 */	addi r30, r3, 0
/* 80367F54 00364E94  38 60 00 3C */	li r3, 0x3c
/* 80367F58 00364E98  4B D7 29 99 */	bl CLBPalFrame$$0i$$1__Fi
/* 80367F5C 00364E9C  83 7F 01 50 */	lwz r27, 0x150(r31)
/* 80367F60 00364EA0  38 00 00 00 */	li r0, 0
/* 80367F64 00364EA4  3B A3 00 00 */	addi r29, r3, 0
/* 80367F68 00364EA8  90 1B 00 00 */	stw r0, 0(r27)
/* 80367F6C 00364EAC  4B D1 DB 59 */	bl rand
/* 80367F70 00364EB0  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80367F74 00364EB4  C8 62 0A 28 */	lfd f3, $$22162-_SDA2_BASE_(r2)
/* 80367F78 00364EB8  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80367F7C 00364EBC  7C 1D F0 50 */	subf r0, r29, r30
/* 80367F80 00364EC0  3C 60 43 30 */	lis r3, 0x4330
/* 80367F84 00364EC4  C0 22 0A 18 */	lfs f1, $$22158-_SDA2_BASE_(r2)
/* 80367F88 00364EC8  90 61 00 B8 */	stw r3, 0xb8(r1)
/* 80367F8C 00364ECC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80367F90 00364ED0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80367F94 00364ED4  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 80367F98 00364ED8  90 61 00 C0 */	stw r3, 0xc0(r1)
/* 80367F9C 00364EDC  EC 40 18 28 */	fsubs f2, f0, f3
/* 80367FA0 00364EE0  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80367FA4 00364EE4  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80367FA8 00364EE8  EC 00 18 28 */	fsubs f0, f0, f3
/* 80367FAC 00364EEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80367FB0 00364EF0  FC 00 00 1E */	fctiwz f0, f0
/* 80367FB4 00364EF4  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 80367FB8 00364EF8  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80367FBC 00364EFC  7C 7D 02 14 */	add r3, r29, r0
/* 80367FC0 00364F00  38 03 00 01 */	addi r0, r3, 1
/* 80367FC4 00364F04  90 1B 00 04 */	stw r0, 4(r27)
/* 80367FC8 00364F08  48 00 00 A4 */	b lbl_8036806C
lbl_80367FCC:
/* 80367FCC 00364F0C  38 7E 00 00 */	addi r3, r30, 0
/* 80367FD0 00364F10  38 80 00 00 */	li r4, 0
/* 80367FD4 00364F14  4B D6 C1 1D */	bl checkCurBckFromIndex__6MActorFi
/* 80367FD8 00364F18  2C 03 00 00 */	cmpwi r3, 0
/* 80367FDC 00364F1C  40 82 00 10 */	bne lbl_80367FEC
/* 80367FE0 00364F20  38 7E 00 00 */	addi r3, r30, 0
/* 80367FE4 00364F24  38 80 00 00 */	li r4, 0
/* 80367FE8 00364F28  4B D6 C1 39 */	bl setBckFromIndex__6MActorFi
lbl_80367FEC:
/* 80367FEC 00364F2C  38 60 01 F4 */	li r3, 0x1f4
/* 80367FF0 00364F30  4B D7 29 01 */	bl CLBPalFrame$$0i$$1__Fi
/* 80367FF4 00364F34  3B A3 00 00 */	addi r29, r3, 0
/* 80367FF8 00364F38  38 60 00 96 */	li r3, 0x96
/* 80367FFC 00364F3C  4B D7 28 F5 */	bl CLBPalFrame$$0i$$1__Fi
/* 80368000 00364F40  83 7F 01 50 */	lwz r27, 0x150(r31)
/* 80368004 00364F44  38 00 00 00 */	li r0, 0
/* 80368008 00364F48  3B C3 00 00 */	addi r30, r3, 0
/* 8036800C 00364F4C  90 1B 00 00 */	stw r0, 0(r27)
/* 80368010 00364F50  4B D1 DA B5 */	bl rand
/* 80368014 00364F54  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80368018 00364F58  C8 62 0A 28 */	lfd f3, $$22162-_SDA2_BASE_(r2)
/* 8036801C 00364F5C  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80368020 00364F60  7C 1E E8 50 */	subf r0, r30, r29
/* 80368024 00364F64  3C 60 43 30 */	lis r3, 0x4330
/* 80368028 00364F68  C0 22 0A 18 */	lfs f1, $$22158-_SDA2_BASE_(r2)
/* 8036802C 00364F6C  90 61 00 B8 */	stw r3, 0xb8(r1)
/* 80368030 00364F70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80368034 00364F74  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80368038 00364F78  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 8036803C 00364F7C  90 61 00 C0 */	stw r3, 0xc0(r1)
/* 80368040 00364F80  EC 40 18 28 */	fsubs f2, f0, f3
/* 80368044 00364F84  C8 01 00 C0 */	lfd f0, 0xc0(r1)
/* 80368048 00364F88  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8036804C 00364F8C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80368050 00364F90  EC 00 00 72 */	fmuls f0, f0, f1
/* 80368054 00364F94  FC 00 00 1E */	fctiwz f0, f0
/* 80368058 00364F98  D8 01 00 C8 */	stfd f0, 0xc8(r1)
/* 8036805C 00364F9C  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80368060 00364FA0  7C 7E 02 14 */	add r3, r30, r0
/* 80368064 00364FA4  38 03 00 01 */	addi r0, r3, 1
/* 80368068 00364FA8  90 1B 00 04 */	stw r0, 4(r27)
lbl_8036806C:
/* 8036806C 00364FAC  BB 61 00 D4 */	lmw r27, 0xd4(r1)
/* 80368070 00364FB0  38 60 00 00 */	li r3, 0
/* 80368074 00364FB4  80 01 00 EC */	lwz r0, 0xec(r1)
/* 80368078 00364FB8  38 21 00 E8 */	addi r1, r1, 0xe8
/* 8036807C 00364FBC  7C 08 03 A6 */	mtlr r0
/* 80368080 00364FC0  4E 80 00 20 */	blr 

.global theNerve__23TNerveAnimalGraphWanderFv
theNerve__23TNerveAnimalGraphWanderFv:
/* 80368084 00364FC4  7C 08 02 A6 */	mflr r0
/* 80368088 00364FC8  90 01 00 04 */	stw r0, 4(r1)
/* 8036808C 00364FCC  94 21 FF F8 */	stwu r1, -8(r1)
/* 80368090 00364FD0  88 0D A9 18 */	lbz r0, init$2002-_SDA_BASE_(r13)
/* 80368094 00364FD4  7C 00 07 75 */	extsb. r0, r0
/* 80368098 00364FD8  40 82 00 3C */	bne lbl_803680D4
/* 8036809C 00364FDC  3C 60 80 3C */	lis r3, __vt__24TNerveBase$$010TLiveActor$$1@ha
/* 803680A0 00364FE0  38 03 92 60 */	addi r0, r3, __vt__24TNerveBase$$010TLiveActor$$1@l
/* 803680A4 00364FE4  3C 60 80 3E */	lis r3, __vt__23TNerveAnimalGraphWander@ha
/* 803680A8 00364FE8  90 0D A9 1C */	stw r0, instance$2000-_SDA_BASE_(r13)
/* 803680AC 00364FEC  38 03 59 10 */	addi r0, r3, __vt__23TNerveAnimalGraphWander@l
/* 803680B0 00364FF0  3C 80 80 36 */	lis r4, __dt__23TNerveAnimalGraphWanderFv@ha
/* 803680B4 00364FF4  90 0D A9 1C */	stw r0, instance$2000-_SDA_BASE_(r13)
/* 803680B8 00364FF8  3C 60 80 40 */	lis r3, $$22001@ha
/* 803680BC 00364FFC  38 A3 09 50 */	addi r5, r3, $$22001@l
/* 803680C0 00365000  38 84 7A F0 */	addi r4, r4, __dt__23TNerveAnimalGraphWanderFv@l
/* 803680C4 00365004  38 6D A9 1C */	addi r3, r13, instance$2000-_SDA_BASE_
/* 803680C8 00365008  4B D1 A6 61 */	bl __register_global_object
/* 803680CC 0036500C  38 00 00 01 */	li r0, 1
/* 803680D0 00365010  98 0D A9 18 */	stb r0, init$2002-_SDA_BASE_(r13)
lbl_803680D4:
/* 803680D4 00365014  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803680D8 00365018  38 6D A9 1C */	addi r3, r13, instance$2000-_SDA_BASE_
/* 803680DC 0036501C  38 21 00 08 */	addi r1, r1, 8
/* 803680E0 00365020  7C 08 03 A6 */	mtlr r0
/* 803680E4 00365024  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__23TNerveAnimalGraphWander
__vt__23TNerveAnimalGraphWander:
	.incbin "baserom.dol", 0x3E2910, 0x10

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$22158:
	.incbin "baserom.dol", 0x3EC718, 0x4
$$22159:
	.incbin "baserom.dol", 0x3EC71C, 0x4
$$22160:
	.incbin "baserom.dol", 0x3EC720, 0x8
$$22162:
	.incbin "baserom.dol", 0x3EC728, 0x8

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
$$22001:
	.skip 0x10

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
init$2002:
	.skip 0x4
instance$2000:
	.skip 0x4
