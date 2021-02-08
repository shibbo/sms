.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __OSResetSWInterruptHandler
__OSResetSWInterruptHandler:
/* 80091A04 0008E944  7C 08 02 A6 */	mflr r0
/* 80091A08 0008E948  90 01 00 04 */	stw r0, 4(r1)
/* 80091A0C 0008E94C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80091A10 0008E950  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80091A14 0008E954  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80091A18 0008E958  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80091A1C 0008E95C  48 00 23 FD */	bl __OSGetSystemTime
/* 80091A20 0008E960  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 80091A24 0008E964  90 8D 93 6C */	stw r4, lbl_80409E2C-_SDA_BASE_(r13)
/* 80091A28 0008E968  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 80091A2C 0008E96C  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 80091A30 0008E970  38 84 DE 83 */	addi r4, r4, 0x431BDE83@l
/* 80091A34 0008E974  90 6D 93 68 */	stw r3, HoldDown-_SDA_BASE_(r13)
/* 80091A38 0008E978  54 00 F0 BE */	srwi r0, r0, 2
/* 80091A3C 0008E97C  7C 04 00 16 */	mulhwu r0, r4, r0
/* 80091A40 0008E980  54 00 8B FE */	srwi r0, r0, 0xf
/* 80091A44 0008E984  1C 00 00 64 */	mulli r0, r0, 0x64
/* 80091A48 0008E988  54 1D E8 FE */	srwi r29, r0, 3
/* 80091A4C 0008E98C  3B C0 00 00 */	li r30, 0
/* 80091A50 0008E990  3F E0 CC 00 */	lis r31, 0xcc00
lbl_80091A54:
/* 80091A54 0008E994  48 00 23 C5 */	bl __OSGetSystemTime
/* 80091A58 0008E998  80 CD 93 6C */	lwz r6, lbl_80409E2C-_SDA_BASE_(r13)
/* 80091A5C 0008E99C  6F C5 80 00 */	xoris r5, r30, 0x8000
/* 80091A60 0008E9A0  80 0D 93 68 */	lwz r0, HoldDown-_SDA_BASE_(r13)
/* 80091A64 0008E9A4  7C 86 20 10 */	subfc r4, r6, r4
/* 80091A68 0008E9A8  7C 00 19 10 */	subfe r0, r0, r3
/* 80091A6C 0008E9AC  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80091A70 0008E9B0  7C 1D 20 10 */	subfc r0, r29, r4
/* 80091A74 0008E9B4  7C A5 19 10 */	subfe r5, r5, r3
/* 80091A78 0008E9B8  7C A3 19 10 */	subfe r5, r3, r3
/* 80091A7C 0008E9BC  7C A5 00 D1 */	neg. r5, r5
/* 80091A80 0008E9C0  41 82 00 10 */	beq lbl_80091A90
/* 80091A84 0008E9C4  80 1F 30 00 */	lwz r0, 0x3000(r31)
/* 80091A88 0008E9C8  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80091A8C 0008E9CC  41 82 FF C8 */	beq lbl_80091A54
lbl_80091A90:
/* 80091A90 0008E9D0  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 80091A94 0008E9D4  80 03 30 00 */	lwz r0, 0xCC003000@l(r3)
/* 80091A98 0008E9D8  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80091A9C 0008E9DC  40 82 00 34 */	bne lbl_80091AD0
/* 80091AA0 0008E9E0  38 00 00 01 */	li r0, 1
/* 80091AA4 0008E9E4  90 0D 93 54 */	stw r0, Down-_SDA_BASE_(r13)
/* 80091AA8 0008E9E8  38 60 02 00 */	li r3, 0x200
/* 80091AAC 0008E9EC  90 0D 93 58 */	stw r0, LastState-_SDA_BASE_(r13)
/* 80091AB0 0008E9F0  4B FF EA E5 */	bl __OSMaskInterrupts
/* 80091AB4 0008E9F4  81 8D 93 50 */	lwz r12, ResetCallback-_SDA_BASE_(r13)
/* 80091AB8 0008E9F8  28 0C 00 00 */	cmplwi r12, 0
/* 80091ABC 0008E9FC  41 82 00 14 */	beq lbl_80091AD0
/* 80091AC0 0008EA00  38 00 00 00 */	li r0, 0
/* 80091AC4 0008EA04  7D 88 03 A6 */	mtlr r12
/* 80091AC8 0008EA08  90 0D 93 50 */	stw r0, ResetCallback-_SDA_BASE_(r13)
/* 80091ACC 0008EA0C  4E 80 00 21 */	blrl 
lbl_80091AD0:
/* 80091AD0 0008EA10  38 00 00 02 */	li r0, 2
/* 80091AD4 0008EA14  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 80091AD8 0008EA18  90 03 30 00 */	stw r0, 0xCC003000@l(r3)
/* 80091ADC 0008EA1C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80091AE0 0008EA20  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80091AE4 0008EA24  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80091AE8 0008EA28  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80091AEC 0008EA2C  38 21 00 28 */	addi r1, r1, 0x28
/* 80091AF0 0008EA30  7C 08 03 A6 */	mtlr r0
/* 80091AF4 0008EA34  4E 80 00 20 */	blr 

.global OSGetResetButtonState
OSGetResetButtonState:
/* 80091AF8 0008EA38  7C 08 02 A6 */	mflr r0
/* 80091AFC 0008EA3C  90 01 00 04 */	stw r0, 4(r1)
/* 80091B00 0008EA40  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80091B04 0008EA44  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80091B08 0008EA48  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80091B0C 0008EA4C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80091B10 0008EA50  4B FF E6 BD */	bl OSDisableInterrupts
/* 80091B14 0008EA54  7C 7E 1B 78 */	mr r30, r3
/* 80091B18 0008EA58  48 00 23 01 */	bl __OSGetSystemTime
/* 80091B1C 0008EA5C  3C A0 CC 00 */	lis r5, 0xCC003000@ha
/* 80091B20 0008EA60  80 05 30 00 */	lwz r0, 0xCC003000@l(r5)
/* 80091B24 0008EA64  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80091B28 0008EA68  40 82 00 DC */	bne lbl_80091C04
/* 80091B2C 0008EA6C  80 0D 93 54 */	lwz r0, Down-_SDA_BASE_(r13)
/* 80091B30 0008EA70  2C 00 00 00 */	cmpwi r0, 0
/* 80091B34 0008EA74  40 82 00 40 */	bne lbl_80091B74
/* 80091B38 0008EA78  80 0D 93 60 */	lwz r0, HoldUp-_SDA_BASE_(r13)
/* 80091B3C 0008EA7C  38 C0 00 00 */	li r6, 0
/* 80091B40 0008EA80  80 AD 93 64 */	lwz r5, lbl_80409E24-_SDA_BASE_(r13)
/* 80091B44 0008EA84  38 E0 00 01 */	li r7, 1
/* 80091B48 0008EA88  7C 00 32 78 */	xor r0, r0, r6
/* 80091B4C 0008EA8C  7C A5 32 78 */	xor r5, r5, r6
/* 80091B50 0008EA90  90 ED 93 54 */	stw r7, Down-_SDA_BASE_(r13)
/* 80091B54 0008EA94  7C A0 03 79 */	or. r0, r5, r0
/* 80091B58 0008EA98  41 82 00 08 */	beq lbl_80091B60
/* 80091B5C 0008EA9C  48 00 00 08 */	b lbl_80091B64
lbl_80091B60:
/* 80091B60 0008EAA0  7C C7 33 78 */	mr r7, r6
lbl_80091B64:
/* 80091B64 0008EAA4  90 8D 93 6C */	stw r4, lbl_80409E2C-_SDA_BASE_(r13)
/* 80091B68 0008EAA8  7C FD 3B 78 */	mr r29, r7
/* 80091B6C 0008EAAC  90 6D 93 68 */	stw r3, HoldDown-_SDA_BASE_(r13)
/* 80091B70 0008EAB0  48 00 01 48 */	b lbl_80091CB8
lbl_80091B74:
/* 80091B74 0008EAB4  80 0D 93 60 */	lwz r0, HoldUp-_SDA_BASE_(r13)
/* 80091B78 0008EAB8  39 20 00 00 */	li r9, 0
/* 80091B7C 0008EABC  80 AD 93 64 */	lwz r5, lbl_80409E24-_SDA_BASE_(r13)
/* 80091B80 0008EAC0  39 40 00 01 */	li r10, 1
/* 80091B84 0008EAC4  7C 00 4A 78 */	xor r0, r0, r9
/* 80091B88 0008EAC8  7C A5 4A 78 */	xor r5, r5, r9
/* 80091B8C 0008EACC  7C A0 03 79 */	or. r0, r5, r0
/* 80091B90 0008EAD0  40 82 00 58 */	bne lbl_80091BE8
/* 80091B94 0008EAD4  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 80091B98 0008EAD8  80 AD 93 6C */	lwz r5, lbl_80409E2C-_SDA_BASE_(r13)
/* 80091B9C 0008EADC  80 E6 00 F8 */	lwz r7, 0x800000F8@l(r6)
/* 80091BA0 0008EAE0  3C C0 43 1C */	lis r6, 0x431BDE83@ha
/* 80091BA4 0008EAE4  39 06 DE 83 */	addi r8, r6, 0x431BDE83@l
/* 80091BA8 0008EAE8  80 0D 93 68 */	lwz r0, HoldDown-_SDA_BASE_(r13)
/* 80091BAC 0008EAEC  54 E6 F0 BE */	srwi r6, r7, 2
/* 80091BB0 0008EAF0  7C C8 30 16 */	mulhwu r6, r8, r6
/* 80091BB4 0008EAF4  54 C6 8B FE */	srwi r6, r6, 0xf
/* 80091BB8 0008EAF8  1C C6 00 64 */	mulli r6, r6, 0x64
/* 80091BBC 0008EAFC  7C E5 20 10 */	subfc r7, r5, r4
/* 80091BC0 0008EB00  7C 00 19 10 */	subfe r0, r0, r3
/* 80091BC4 0008EB04  54 C8 E8 FE */	srwi r8, r6, 3
/* 80091BC8 0008EB08  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 80091BCC 0008EB0C  6D 26 80 00 */	xoris r6, r9, 0x8000
/* 80091BD0 0008EB10  7C 07 40 10 */	subfc r0, r7, r8
/* 80091BD4 0008EB14  7C A5 31 10 */	subfe r5, r5, r6
/* 80091BD8 0008EB18  7C A6 31 10 */	subfe r5, r6, r6
/* 80091BDC 0008EB1C  7C A5 00 D1 */	neg. r5, r5
/* 80091BE0 0008EB20  40 82 00 08 */	bne lbl_80091BE8
/* 80091BE4 0008EB24  7D 2A 4B 78 */	mr r10, r9
lbl_80091BE8:
/* 80091BE8 0008EB28  2C 0A 00 00 */	cmpwi r10, 0
/* 80091BEC 0008EB2C  41 82 00 0C */	beq lbl_80091BF8
/* 80091BF0 0008EB30  38 00 00 01 */	li r0, 1
/* 80091BF4 0008EB34  48 00 00 08 */	b lbl_80091BFC
lbl_80091BF8:
/* 80091BF8 0008EB38  38 00 00 00 */	li r0, 0
lbl_80091BFC:
/* 80091BFC 0008EB3C  7C 1D 03 78 */	mr r29, r0
/* 80091C00 0008EB40  48 00 00 B8 */	b lbl_80091CB8
lbl_80091C04:
/* 80091C04 0008EB44  80 0D 93 54 */	lwz r0, Down-_SDA_BASE_(r13)
/* 80091C08 0008EB48  2C 00 00 00 */	cmpwi r0, 0
/* 80091C0C 0008EB4C  41 82 00 34 */	beq lbl_80091C40
/* 80091C10 0008EB50  80 AD 93 58 */	lwz r5, LastState-_SDA_BASE_(r13)
/* 80091C14 0008EB54  38 00 00 00 */	li r0, 0
/* 80091C18 0008EB58  90 0D 93 54 */	stw r0, Down-_SDA_BASE_(r13)
/* 80091C1C 0008EB5C  2C 05 00 00 */	cmpwi r5, 0
/* 80091C20 0008EB60  3B A5 00 00 */	addi r29, r5, 0
/* 80091C24 0008EB64  41 82 00 10 */	beq lbl_80091C34
/* 80091C28 0008EB68  90 8D 93 64 */	stw r4, lbl_80409E24-_SDA_BASE_(r13)
/* 80091C2C 0008EB6C  90 6D 93 60 */	stw r3, HoldUp-_SDA_BASE_(r13)
/* 80091C30 0008EB70  48 00 00 88 */	b lbl_80091CB8
lbl_80091C34:
/* 80091C34 0008EB74  90 0D 93 64 */	stw r0, lbl_80409E24-_SDA_BASE_(r13)
/* 80091C38 0008EB78  90 0D 93 60 */	stw r0, HoldUp-_SDA_BASE_(r13)
/* 80091C3C 0008EB7C  48 00 00 7C */	b lbl_80091CB8
lbl_80091C40:
/* 80091C40 0008EB80  80 CD 93 60 */	lwz r6, HoldUp-_SDA_BASE_(r13)
/* 80091C44 0008EB84  39 00 00 00 */	li r8, 0
/* 80091C48 0008EB88  80 ED 93 64 */	lwz r7, lbl_80409E24-_SDA_BASE_(r13)
/* 80091C4C 0008EB8C  7C C0 42 78 */	xor r0, r6, r8
/* 80091C50 0008EB90  7C E5 42 78 */	xor r5, r7, r8
/* 80091C54 0008EB94  7C A0 03 79 */	or. r0, r5, r0
/* 80091C58 0008EB98  41 82 00 50 */	beq lbl_80091CA8
/* 80091C5C 0008EB9C  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 80091C60 0008EBA0  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 80091C64 0008EBA4  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 80091C68 0008EBA8  38 A5 4D D3 */	addi r5, r5, 0x10624DD3@l
/* 80091C6C 0008EBAC  54 00 F0 BE */	srwi r0, r0, 2
/* 80091C70 0008EBB0  7C 05 00 16 */	mulhwu r0, r5, r0
/* 80091C74 0008EBB4  54 00 D1 BE */	srwi r0, r0, 6
/* 80091C78 0008EBB8  1C 00 00 28 */	mulli r0, r0, 0x28
/* 80091C7C 0008EBBC  7C E7 20 10 */	subfc r7, r7, r4
/* 80091C80 0008EBC0  7C A6 19 10 */	subfe r5, r6, r3
/* 80091C84 0008EBC4  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 80091C88 0008EBC8  6D 05 80 00 */	xoris r5, r8, 0x8000
/* 80091C8C 0008EBCC  7C 00 38 10 */	subfc r0, r0, r7
/* 80091C90 0008EBD0  7C A5 31 10 */	subfe r5, r5, r6
/* 80091C94 0008EBD4  7C A6 31 10 */	subfe r5, r6, r6
/* 80091C98 0008EBD8  7C A5 00 D1 */	neg. r5, r5
/* 80091C9C 0008EBDC  41 82 00 0C */	beq lbl_80091CA8
/* 80091CA0 0008EBE0  3B A0 00 01 */	li r29, 1
/* 80091CA4 0008EBE4  48 00 00 14 */	b lbl_80091CB8
lbl_80091CA8:
/* 80091CA8 0008EBE8  38 00 00 00 */	li r0, 0
/* 80091CAC 0008EBEC  90 0D 93 64 */	stw r0, lbl_80409E24-_SDA_BASE_(r13)
/* 80091CB0 0008EBF0  3B A0 00 00 */	li r29, 0
/* 80091CB4 0008EBF4  90 0D 93 60 */	stw r0, HoldUp-_SDA_BASE_(r13)
lbl_80091CB8:
/* 80091CB8 0008EBF8  3C A0 80 00 */	lis r5, 0x800030E3@ha
/* 80091CBC 0008EBFC  93 AD 93 58 */	stw r29, LastState-_SDA_BASE_(r13)
/* 80091CC0 0008EC00  88 05 30 E3 */	lbz r0, 0x800030E3@l(r5)
/* 80091CC4 0008EC04  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 80091CC8 0008EC08  41 82 00 A0 */	beq lbl_80091D68
/* 80091CCC 0008EC0C  1D 40 00 3C */	mulli r10, r0, 0x3c
/* 80091CD0 0008EC10  80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 80091CD4 0008EC14  81 2D 92 EC */	lwz r9, lbl_80409DAC-_SDA_BASE_(r13)
/* 80091CD8 0008EC18  81 0D 92 E8 */	lwz r8, __OSStartTime-_SDA_BASE_(r13)
/* 80091CDC 0008EC1C  54 06 F0 BE */	srwi r6, r0, 2
/* 80091CE0 0008EC20  7D 40 FE 70 */	srawi r0, r10, 0x1f
/* 80091CE4 0008EC24  7C E0 31 D6 */	mullw r7, r0, r6
/* 80091CE8 0008EC28  7C 0A 30 16 */	mulhwu r0, r10, r6
/* 80091CEC 0008EC2C  7C AA 31 D6 */	mullw r5, r10, r6
/* 80091CF0 0008EC30  7D 29 28 14 */	addc r9, r9, r5
/* 80091CF4 0008EC34  3B E0 00 00 */	li r31, 0
/* 80091CF8 0008EC38  7C E7 02 14 */	add r7, r7, r0
/* 80091CFC 0008EC3C  7C 0A F9 D6 */	mullw r0, r10, r31
/* 80091D00 0008EC40  7C 07 02 14 */	add r0, r7, r0
/* 80091D04 0008EC44  7D 08 01 14 */	adde r8, r8, r0
/* 80091D08 0008EC48  6D 07 80 00 */	xoris r7, r8, 0x8000
/* 80091D0C 0008EC4C  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 80091D10 0008EC50  7C 04 48 10 */	subfc r0, r4, r9
/* 80091D14 0008EC54  7C A5 39 10 */	subfe r5, r5, r7
/* 80091D18 0008EC58  7C A7 39 10 */	subfe r5, r7, r7
/* 80091D1C 0008EC5C  7C A5 00 D1 */	neg. r5, r5
/* 80091D20 0008EC60  41 82 00 48 */	beq lbl_80091D68
/* 80091D24 0008EC64  7C 89 20 10 */	subfc r4, r9, r4
/* 80091D28 0008EC68  7C 68 19 10 */	subfe r3, r8, r3
/* 80091D2C 0008EC6C  38 A0 00 00 */	li r5, 0
/* 80091D30 0008EC70  4B FF 0F D5 */	bl __div2i
/* 80091D34 0008EC74  38 A0 00 00 */	li r5, 0
/* 80091D38 0008EC78  38 C0 00 02 */	li r6, 2
/* 80091D3C 0008EC7C  4B FF 0F C9 */	bl __div2i
/* 80091D40 0008EC80  38 00 00 01 */	li r0, 1
/* 80091D44 0008EC84  7C 84 00 38 */	and r4, r4, r0
/* 80091D48 0008EC88  7C 60 F8 38 */	and r0, r3, r31
/* 80091D4C 0008EC8C  7C 83 FA 78 */	xor r3, r4, r31
/* 80091D50 0008EC90  7C 00 FA 78 */	xor r0, r0, r31
/* 80091D54 0008EC94  7C 60 03 79 */	or. r0, r3, r0
/* 80091D58 0008EC98  40 82 00 0C */	bne lbl_80091D64
/* 80091D5C 0008EC9C  3B A0 00 01 */	li r29, 1
/* 80091D60 0008ECA0  48 00 00 08 */	b lbl_80091D68
lbl_80091D64:
/* 80091D64 0008ECA4  3B A0 00 00 */	li r29, 0
lbl_80091D68:
/* 80091D68 0008ECA8  7F C3 F3 78 */	mr r3, r30
/* 80091D6C 0008ECAC  4B FF E4 89 */	bl OSRestoreInterrupts
/* 80091D70 0008ECB0  7F A3 EB 78 */	mr r3, r29
/* 80091D74 0008ECB4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80091D78 0008ECB8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80091D7C 0008ECBC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80091D80 0008ECC0  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80091D84 0008ECC4  38 21 00 18 */	addi r1, r1, 0x18
/* 80091D88 0008ECC8  7C 08 03 A6 */	mtlr r0
/* 80091D8C 0008ECCC  4E 80 00 20 */	blr 

.global OSGetResetSwitchState
OSGetResetSwitchState:
/* 80091D90 0008ECD0  7C 08 02 A6 */	mflr r0
/* 80091D94 0008ECD4  90 01 00 04 */	stw r0, 4(r1)
/* 80091D98 0008ECD8  94 21 FF F8 */	stwu r1, -8(r1)
/* 80091D9C 0008ECDC  4B FF FD 5D */	bl OSGetResetButtonState
/* 80091DA0 0008ECE0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80091DA4 0008ECE4  38 21 00 08 */	addi r1, r1, 8
/* 80091DA8 0008ECE8  7C 08 03 A6 */	mtlr r0
/* 80091DAC 0008ECEC  4E 80 00 20 */	blr 

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
ResetCallback:
	.skip 0x4
Down:
	.skip 0x4
LastState:
	.skip 0x8
HoldUp:
	.skip 0x4
lbl_80409E24:
	.skip 0x4
HoldDown:
	.skip 0x4
lbl_80409E2C:
	.skip 0x4
