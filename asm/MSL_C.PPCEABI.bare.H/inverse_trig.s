.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global atanf
atanf:
/* 80086B4C 00083A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80086B50 00083A90  3C 60 80 37 */	lis r3, atan_coeff$96@ha
/* 80086B54 00083A94  38 83 19 C8 */	addi r4, r3, atan_coeff$96@l
/* 80086B58 00083A98  D0 21 00 08 */	stfs f1, 8(r1)
/* 80086B5C 00083A9C  38 C0 FF FF */	li r6, -1
/* 80086B60 00083AA0  C0 02 8A 10 */	lfs f0, $$2156-_SDA2_BASE_(r2)
/* 80086B64 00083AA4  38 E0 00 00 */	li r7, 0
/* 80086B68 00083AA8  80 61 00 08 */	lwz r3, 8(r1)
/* 80086B6C 00083AAC  54 60 00 7E */	clrlwi r0, r3, 1
/* 80086B70 00083AB0  90 01 00 08 */	stw r0, 8(r1)
/* 80086B74 00083AB4  54 68 00 00 */	rlwinm r8, r3, 0, 0, 0
/* 80086B78 00083AB8  C0 41 00 08 */	lfs f2, 8(r1)
/* 80086B7C 00083ABC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80086B80 00083AC0  4C 41 13 82 */	cror 2, 1, 2
/* 80086B84 00083AC4  40 82 00 18 */	bne lbl_80086B9C
/* 80086B88 00083AC8  C0 02 8A 14 */	lfs f0, $$2157-_SDA2_BASE_(r2)
/* 80086B8C 00083ACC  38 E0 00 01 */	li r7, 1
/* 80086B90 00083AD0  EC 00 10 24 */	fdivs f0, f0, f2
/* 80086B94 00083AD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80086B98 00083AD8  48 00 00 F4 */	b lbl_80086C8C
lbl_80086B9C:
/* 80086B9C 00083ADC  C0 02 8A 18 */	lfs f0, $$2158-_SDA2_BASE_(r2)
/* 80086BA0 00083AE0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80086BA4 00083AE4  40 80 00 E4 */	bge lbl_80086C88
/* 80086BA8 00083AE8  80 A1 00 08 */	lwz r5, 8(r1)
/* 80086BAC 00083AEC  3C 00 3F 80 */	lis r0, 0x3f80
/* 80086BB0 00083AF0  38 C0 00 00 */	li r6, 0
/* 80086BB4 00083AF4  54 A3 00 50 */	rlwinm r3, r5, 0, 1, 8
/* 80086BB8 00083AF8  7C 03 00 00 */	cmpw r3, r0
/* 80086BBC 00083AFC  41 82 00 54 */	beq lbl_80086C10
/* 80086BC0 00083B00  40 80 00 14 */	bge lbl_80086BD4
/* 80086BC4 00083B04  3C 00 3F 00 */	lis r0, 0x3f00
/* 80086BC8 00083B08  7C 03 00 00 */	cmpw r3, r0
/* 80086BCC 00083B0C  41 82 00 18 */	beq lbl_80086BE4
/* 80086BD0 00083B10  48 00 00 74 */	b lbl_80086C44
lbl_80086BD4:
/* 80086BD4 00083B14  3C 00 40 00 */	lis r0, 0x4000
/* 80086BD8 00083B18  7C 03 00 00 */	cmpw r3, r0
/* 80086BDC 00083B1C  41 82 00 64 */	beq lbl_80086C40
/* 80086BE0 00083B20  48 00 00 64 */	b lbl_80086C44
lbl_80086BE4:
/* 80086BE4 00083B24  3C 60 3F 09 */	lis r3, 0x3F08D5B9@ha
/* 80086BE8 00083B28  38 03 D5 B9 */	addi r0, r3, 0x3F08D5B9@l
/* 80086BEC 00083B2C  7C 05 00 00 */	cmpw r5, r0
/* 80086BF0 00083B30  41 80 00 08 */	blt lbl_80086BF8
/* 80086BF4 00083B34  38 C0 00 01 */	li r6, 1
lbl_80086BF8:
/* 80086BF8 00083B38  3C 60 3F 52 */	lis r3, 0x3F521801@ha
/* 80086BFC 00083B3C  38 03 18 01 */	addi r0, r3, 0x3F521801@l
/* 80086C00 00083B40  7C 05 00 00 */	cmpw r5, r0
/* 80086C04 00083B44  41 80 00 40 */	blt lbl_80086C44
/* 80086C08 00083B48  38 C6 00 01 */	addi r6, r6, 1
/* 80086C0C 00083B4C  48 00 00 38 */	b lbl_80086C44
lbl_80086C10:
/* 80086C10 00083B50  3C 60 3F 9C */	lis r3, 0x3F9BF7EC@ha
/* 80086C14 00083B54  38 03 F7 EC */	addi r0, r3, 0x3F9BF7EC@l
/* 80086C18 00083B58  7C 05 00 00 */	cmpw r5, r0
/* 80086C1C 00083B5C  38 C0 00 02 */	li r6, 2
/* 80086C20 00083B60  41 80 00 08 */	blt lbl_80086C28
/* 80086C24 00083B64  38 C0 00 03 */	li r6, 3
lbl_80086C28:
/* 80086C28 00083B68  3C 60 3F EF */	lis r3, 0x3FEF789E@ha
/* 80086C2C 00083B6C  38 03 78 9E */	addi r0, r3, 0x3FEF789E@l
/* 80086C30 00083B70  7C 05 00 00 */	cmpw r5, r0
/* 80086C34 00083B74  41 80 00 10 */	blt lbl_80086C44
/* 80086C38 00083B78  38 C6 00 01 */	addi r6, r6, 1
/* 80086C3C 00083B7C  48 00 00 08 */	b lbl_80086C44
lbl_80086C40:
/* 80086C40 00083B80  38 C0 00 04 */	li r6, 4
lbl_80086C44:
/* 80086C44 00083B84  54 C0 10 3A */	slwi r0, r6, 2
/* 80086C48 00083B88  C0 22 8A 14 */	lfs f1, $$2157-_SDA2_BASE_(r2)
/* 80086C4C 00083B8C  7C 64 02 14 */	add r3, r4, r0
/* 80086C50 00083B90  C0 63 00 9C */	lfs f3, 0x9c(r3)
/* 80086C54 00083B94  C0 83 00 84 */	lfs f4, 0x84(r3)
/* 80086C58 00083B98  EC 02 18 2A */	fadds f0, f2, f3
/* 80086C5C 00083B9C  EC 04 00 2A */	fadds f0, f4, f0
/* 80086C60 00083BA0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80086C64 00083BA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80086C68 00083BA8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80086C6C 00083BAC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80086C70 00083BB0  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80086C74 00083BB4  EC 22 20 7C */	fnmsubs f1, f2, f1, f4
/* 80086C78 00083BB8  EC 02 18 3C */	fnmsubs f0, f2, f0, f3
/* 80086C7C 00083BBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80086C80 00083BC0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80086C84 00083BC4  48 00 00 08 */	b lbl_80086C8C
lbl_80086C88:
/* 80086C88 00083BC8  D0 41 00 0C */	stfs f2, 0xc(r1)
lbl_80086C8C:
/* 80086C8C 00083BCC  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 80086C90 00083BD0  54 C0 10 3A */	slwi r0, r6, 2
/* 80086C94 00083BD4  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80086C98 00083BD8  7C 64 02 14 */	add r3, r4, r0
/* 80086C9C 00083BDC  EC C5 01 72 */	fmuls f6, f5, f5
/* 80086CA0 00083BE0  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80086CA4 00083BE4  2C 07 00 00 */	cmpwi r7, 0
/* 80086CA8 00083BE8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80086CAC 00083BEC  EC 66 08 BA */	fmadds f3, f6, f2, f1
/* 80086CB0 00083BF0  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80086CB4 00083BF4  EC 85 01 B2 */	fmuls f4, f5, f6
/* 80086CB8 00083BF8  C0 24 00 08 */	lfs f1, 8(r4)
/* 80086CBC 00083BFC  EC 66 00 FA */	fmadds f3, f6, f3, f0
/* 80086CC0 00083C00  C0 04 00 04 */	lfs f0, 4(r4)
/* 80086CC4 00083C04  EC 46 10 FA */	fmadds f2, f6, f3, f2
/* 80086CC8 00083C08  EC 26 08 BA */	fmadds f1, f6, f2, f1
/* 80086CCC 00083C0C  EC 06 00 7A */	fmadds f0, f6, f1, f0
/* 80086CD0 00083C10  EC 04 28 3A */	fmadds f0, f4, f0, f5
/* 80086CD4 00083C14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80086CD8 00083C18  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80086CDC 00083C1C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80086CE0 00083C20  EC 01 00 2A */	fadds f0, f1, f0
/* 80086CE4 00083C24  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80086CE8 00083C28  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80086CEC 00083C2C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80086CF0 00083C30  EC 01 00 2A */	fadds f0, f1, f0
/* 80086CF4 00083C34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80086CF8 00083C38  41 82 00 30 */	beq lbl_80086D28
/* 80086CFC 00083C3C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80086D00 00083C40  2C 08 00 00 */	cmpwi r8, 0
/* 80086D04 00083C44  C0 02 8A 1C */	lfs f0, $$2159-_SDA2_BASE_(r2)
/* 80086D08 00083C48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80086D0C 00083C4C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80086D10 00083C50  41 82 00 0C */	beq lbl_80086D1C
/* 80086D14 00083C54  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80086D18 00083C58  48 00 00 20 */	b lbl_80086D38
lbl_80086D1C:
/* 80086D1C 00083C5C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80086D20 00083C60  FC 20 00 50 */	fneg f1, f0
/* 80086D24 00083C64  48 00 00 14 */	b lbl_80086D38
lbl_80086D28:
/* 80086D28 00083C68  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80086D2C 00083C6C  7C 00 43 78 */	or r0, r0, r8
/* 80086D30 00083C70  90 01 00 0C */	stw r0, 0xc(r1)
/* 80086D34 00083C74  C0 21 00 0C */	lfs f1, 0xc(r1)
lbl_80086D38:
/* 80086D38 00083C78  38 21 00 10 */	addi r1, r1, 0x10
/* 80086D3C 00083C7C  4E 80 00 20 */	blr 

.global atan__Ff
atan__Ff:
/* 80086D40 00083C80  7C 08 02 A6 */	mflr r0
/* 80086D44 00083C84  90 01 00 04 */	stw r0, 4(r1)
/* 80086D48 00083C88  94 21 FF F8 */	stwu r1, -8(r1)
/* 80086D4C 00083C8C  4B FF FE 01 */	bl atanf
/* 80086D50 00083C90  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80086D54 00083C94  38 21 00 08 */	addi r1, r1, 8
/* 80086D58 00083C98  7C 08 03 A6 */	mtlr r0
/* 80086D5C 00083C9C  4E 80 00 20 */	blr 

.global _inv_sqrtf
_inv_sqrtf:
/* 80086D60 00083CA0  C0 02 8A 20 */	lfs f0, $$2168-_SDA2_BASE_(r2)
/* 80086D64 00083CA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80086D68 00083CA8  40 81 00 48 */	ble lbl_80086DB0
/* 80086D6C 00083CAC  FC 40 08 34 */	frsqrte f2, f1
/* 80086D70 00083CB0  C0 82 8A 24 */	lfs f4, $$2169-_SDA2_BASE_(r2)
/* 80086D74 00083CB4  C0 62 8A 28 */	lfs f3, $$2170-_SDA2_BASE_(r2)
/* 80086D78 00083CB8  FC 40 10 18 */	frsp f2, f2
/* 80086D7C 00083CBC  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80086D80 00083CC0  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80086D84 00083CC4  EC 01 18 3C */	fnmsubs f0, f1, f0, f3
/* 80086D88 00083CC8  EC 42 00 32 */	fmuls f2, f2, f0
/* 80086D8C 00083CCC  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80086D90 00083CD0  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80086D94 00083CD4  EC 01 18 3C */	fnmsubs f0, f1, f0, f3
/* 80086D98 00083CD8  EC 42 00 32 */	fmuls f2, f2, f0
/* 80086D9C 00083CDC  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80086DA0 00083CE0  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80086DA4 00083CE4  EC 01 18 3C */	fnmsubs f0, f1, f0, f3
/* 80086DA8 00083CE8  EC 22 00 32 */	fmuls f1, f2, f0
/* 80086DAC 00083CEC  4E 80 00 20 */	blr 
lbl_80086DB0:
/* 80086DB0 00083CF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80086DB4 00083CF4  41 82 00 10 */	beq lbl_80086DC4
/* 80086DB8 00083CF8  3C 60 80 3B */	lis r3, __float_nan@ha
/* 80086DBC 00083CFC  C0 23 EF 40 */	lfs f1, __float_nan@l(r3)
/* 80086DC0 00083D00  4E 80 00 20 */	blr 
lbl_80086DC4:
/* 80086DC4 00083D04  3C 60 80 3B */	lis r3, __float_huge@ha
/* 80086DC8 00083D08  C0 23 EF 44 */	lfs f1, __float_huge@l(r3)
/* 80086DCC 00083D0C  4E 80 00 20 */	blr 

.global acosf
acosf:
/* 80086DD0 00083D10  7C 08 02 A6 */	mflr r0
/* 80086DD4 00083D14  90 01 00 04 */	stw r0, 4(r1)
/* 80086DD8 00083D18  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80086DDC 00083D1C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80086DE0 00083D20  FF E0 08 90 */	fmr f31, f1
/* 80086DE4 00083D24  C0 02 8A 14 */	lfs f0, $$2157-_SDA2_BASE_(r2)
/* 80086DE8 00083D28  EC 3F 07 FC */	fnmsubs f1, f31, f31, f0
/* 80086DEC 00083D2C  4B FF FF 75 */	bl _inv_sqrtf
/* 80086DF0 00083D30  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80086DF4 00083D34  4B FF FF 4D */	bl atan__Ff
/* 80086DF8 00083D38  C0 02 8A 1C */	lfs f0, $$2159-_SDA2_BASE_(r2)
/* 80086DFC 00083D3C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80086E00 00083D40  EC 20 08 28 */	fsubs f1, f0, f1
/* 80086E04 00083D44  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80086E08 00083D48  7C 08 03 A6 */	mtlr r0
/* 80086E0C 00083D4C  38 21 00 18 */	addi r1, r1, 0x18
/* 80086E10 00083D50  4E 80 00 20 */	blr 

.global atan2f
atan2f:
/* 80086E14 00083D54  7C 08 02 A6 */	mflr r0
/* 80086E18 00083D58  90 01 00 04 */	stw r0, 4(r1)
/* 80086E1C 00083D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80086E20 00083D60  D0 21 00 08 */	stfs f1, 8(r1)
/* 80086E24 00083D64  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80086E28 00083D68  80 01 00 08 */	lwz r0, 8(r1)
/* 80086E2C 00083D6C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80086E30 00083D70  54 04 00 00 */	rlwinm r4, r0, 0, 0, 0
/* 80086E34 00083D74  54 60 00 00 */	rlwinm r0, r3, 0, 0, 0
/* 80086E38 00083D78  7C 00 20 00 */	cmpw r0, r4
/* 80086E3C 00083D7C  40 82 00 50 */	bne lbl_80086E8C
/* 80086E40 00083D80  2C 00 00 00 */	cmpwi r0, 0
/* 80086E44 00083D84  41 82 00 20 */	beq lbl_80086E64
/* 80086E48 00083D88  C0 21 00 08 */	lfs f1, 8(r1)
/* 80086E4C 00083D8C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80086E50 00083D90  EC 21 00 24 */	fdivs f1, f1, f0
/* 80086E54 00083D94  4B FF FC F9 */	bl atanf
/* 80086E58 00083D98  C0 02 8A 2C */	lfs f0, $$2188-_SDA2_BASE_(r2)
/* 80086E5C 00083D9C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80086E60 00083DA0  48 00 00 7C */	b lbl_80086EDC
lbl_80086E64:
/* 80086E64 00083DA4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80086E68 00083DA8  C0 02 8A 20 */	lfs f0, $$2168-_SDA2_BASE_(r2)
/* 80086E6C 00083DAC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80086E70 00083DB0  41 82 00 14 */	beq lbl_80086E84
/* 80086E74 00083DB4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80086E78 00083DB8  EC 20 08 24 */	fdivs f1, f0, f1
/* 80086E7C 00083DBC  4B FF FC D1 */	bl atanf
/* 80086E80 00083DC0  48 00 00 5C */	b lbl_80086EDC
lbl_80086E84:
/* 80086E84 00083DC4  C0 22 8A 1C */	lfs f1, $$2159-_SDA2_BASE_(r2)
/* 80086E88 00083DC8  48 00 00 54 */	b lbl_80086EDC
lbl_80086E8C:
/* 80086E8C 00083DCC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80086E90 00083DD0  C0 02 8A 20 */	lfs f0, $$2168-_SDA2_BASE_(r2)
/* 80086E94 00083DD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80086E98 00083DD8  40 80 00 1C */	bge lbl_80086EB4
/* 80086E9C 00083DDC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80086EA0 00083DE0  EC 20 08 24 */	fdivs f1, f0, f1
/* 80086EA4 00083DE4  4B FF FC A9 */	bl atanf
/* 80086EA8 00083DE8  C0 02 8A 2C */	lfs f0, $$2188-_SDA2_BASE_(r2)
/* 80086EAC 00083DEC  EC 20 08 2A */	fadds f1, f0, f1
/* 80086EB0 00083DF0  48 00 00 2C */	b lbl_80086EDC
lbl_80086EB4:
/* 80086EB4 00083DF4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80086EB8 00083DF8  41 82 00 14 */	beq lbl_80086ECC
/* 80086EBC 00083DFC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80086EC0 00083E00  EC 20 08 24 */	fdivs f1, f0, f1
/* 80086EC4 00083E04  4B FF FC 89 */	bl atanf
/* 80086EC8 00083E08  48 00 00 14 */	b lbl_80086EDC
lbl_80086ECC:
/* 80086ECC 00083E0C  3C 64 3F C9 */	addis r3, r4, 0x3fc9
/* 80086ED0 00083E10  38 03 0F DB */	addi r0, r3, 0xfdb
/* 80086ED4 00083E14  90 01 00 08 */	stw r0, 8(r1)
/* 80086ED8 00083E18  C0 21 00 08 */	lfs f1, 8(r1)
lbl_80086EDC:
/* 80086EDC 00083E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80086EE0 00083E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80086EE4 00083E24  7C 08 03 A6 */	mtlr r0
/* 80086EE8 00083E28  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
atan_coeff$96:
	.incbin "baserom.dol", 0x36E9C8, 0x1C
onep_one_over_xisqr_hi$97:
	.incbin "baserom.dol", 0x36E9E4, 0x18
onep_one_over_xisqr_lo$98:
	.incbin "baserom.dol", 0x36E9FC, 0x18
atan_xi_hi$99:
	.incbin "baserom.dol", 0x36EA14, 0x1C
atan_xi_lo$100:
	.incbin "baserom.dol", 0x36EA30, 0x1C
one_over_xi_hi$101:
	.incbin "baserom.dol", 0x36EA4C, 0x18
one_over_xi_lo$102:
	.incbin "baserom.dol", 0x36EA64, 0x1C

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2156:
	.incbin "baserom.dol", 0x3E4710, 0x4
$$2157:
	.incbin "baserom.dol", 0x3E4714, 0x4
$$2158:
	.incbin "baserom.dol", 0x3E4718, 0x4
$$2159:
	.incbin "baserom.dol", 0x3E471C, 0x4
$$2168:
	.incbin "baserom.dol", 0x3E4720, 0x4
$$2169:
	.incbin "baserom.dol", 0x3E4724, 0x4
$$2170:
	.incbin "baserom.dol", 0x3E4728, 0x4
$$2188:
	.incbin "baserom.dol", 0x3E472C, 0x4
