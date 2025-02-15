.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global JMANewSinTable__FUc
JMANewSinTable__FUc:
/* 80013AC8 00010A08  7C 08 02 A6 */	mflr r0
/* 80013ACC 00010A0C  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80013AD0 00010A10  90 01 00 04 */	stw r0, 4(r1)
/* 80013AD4 00010A14  20 85 00 10 */	subfic r4, r5, 0x10
/* 80013AD8 00010A18  38 00 00 01 */	li r0, 1
/* 80013ADC 00010A1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80013AE0 00010A20  28 05 00 00 */	cmplwi r5, 0
/* 80013AE4 00010A24  38 C0 00 00 */	li r6, 0
/* 80013AE8 00010A28  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 80013AEC 00010A2C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80013AF0 00010A30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80013AF4 00010A34  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80013AF8 00010A38  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80013AFC 00010A3C  90 8D 8D EC */	stw r4, jmaSinShift@sda21(r13)
/* 80013B00 00010A40  B0 0D 8D E8 */	sth r0, jmaSinTableSize@sda21(r13)
/* 80013B04 00010A44  40 81 00 AC */	ble lbl_80013BB0
/* 80013B08 00010A48  28 05 00 08 */	cmplwi r5, 8
/* 80013B0C 00010A4C  38 03 FF F8 */	addi r0, r3, -8
/* 80013B10 00010A50  40 81 00 7C */	ble lbl_80013B8C
/* 80013B14 00010A54  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80013B18 00010A58  48 00 00 68 */	b lbl_80013B80
lbl_80013B1C:
/* 80013B1C 00010A5C  A0 8D 8D E8 */	lhz r4, jmaSinTableSize@sda21(r13)
/* 80013B20 00010A60  38 C6 00 08 */	addi r6, r6, 8
/* 80013B24 00010A64  54 84 08 3C */	slwi r4, r4, 1
/* 80013B28 00010A68  B0 8D 8D E8 */	sth r4, jmaSinTableSize@sda21(r13)
/* 80013B2C 00010A6C  A0 8D 8D E8 */	lhz r4, jmaSinTableSize@sda21(r13)
/* 80013B30 00010A70  54 84 08 3C */	slwi r4, r4, 1
/* 80013B34 00010A74  B0 8D 8D E8 */	sth r4, jmaSinTableSize@sda21(r13)
/* 80013B38 00010A78  A0 8D 8D E8 */	lhz r4, jmaSinTableSize@sda21(r13)
/* 80013B3C 00010A7C  54 84 08 3C */	slwi r4, r4, 1
/* 80013B40 00010A80  B0 8D 8D E8 */	sth r4, jmaSinTableSize@sda21(r13)
/* 80013B44 00010A84  A0 8D 8D E8 */	lhz r4, jmaSinTableSize@sda21(r13)
/* 80013B48 00010A88  54 84 08 3C */	slwi r4, r4, 1
/* 80013B4C 00010A8C  B0 8D 8D E8 */	sth r4, jmaSinTableSize@sda21(r13)
/* 80013B50 00010A90  A0 8D 8D E8 */	lhz r4, jmaSinTableSize@sda21(r13)
/* 80013B54 00010A94  54 84 08 3C */	slwi r4, r4, 1
/* 80013B58 00010A98  B0 8D 8D E8 */	sth r4, jmaSinTableSize@sda21(r13)
/* 80013B5C 00010A9C  A0 8D 8D E8 */	lhz r4, jmaSinTableSize@sda21(r13)
/* 80013B60 00010AA0  54 84 08 3C */	slwi r4, r4, 1
/* 80013B64 00010AA4  B0 8D 8D E8 */	sth r4, jmaSinTableSize@sda21(r13)
/* 80013B68 00010AA8  A0 8D 8D E8 */	lhz r4, jmaSinTableSize@sda21(r13)
/* 80013B6C 00010AAC  54 84 08 3C */	slwi r4, r4, 1
/* 80013B70 00010AB0  B0 8D 8D E8 */	sth r4, jmaSinTableSize@sda21(r13)
/* 80013B74 00010AB4  A0 8D 8D E8 */	lhz r4, jmaSinTableSize@sda21(r13)
/* 80013B78 00010AB8  54 84 08 3C */	slwi r4, r4, 1
/* 80013B7C 00010ABC  B0 8D 8D E8 */	sth r4, jmaSinTableSize@sda21(r13)
lbl_80013B80:
/* 80013B80 00010AC0  54 C4 06 3E */	clrlwi r4, r6, 0x18
/* 80013B84 00010AC4  7C 04 00 40 */	cmplw r4, r0
/* 80013B88 00010AC8  41 80 FF 94 */	blt lbl_80013B1C
lbl_80013B8C:
/* 80013B8C 00010ACC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80013B90 00010AD0  48 00 00 14 */	b lbl_80013BA4
lbl_80013B94:
/* 80013B94 00010AD4  A0 6D 8D E8 */	lhz r3, jmaSinTableSize@sda21(r13)
/* 80013B98 00010AD8  38 C6 00 01 */	addi r6, r6, 1
/* 80013B9C 00010ADC  54 63 08 3C */	slwi r3, r3, 1
/* 80013BA0 00010AE0  B0 6D 8D E8 */	sth r3, jmaSinTableSize@sda21(r13)
lbl_80013BA4:
/* 80013BA4 00010AE4  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 80013BA8 00010AE8  7C 03 00 40 */	cmplw r3, r0
/* 80013BAC 00010AEC  41 80 FF E8 */	blt lbl_80013B94
lbl_80013BB0:
/* 80013BB0 00010AF0  A0 6D 8D E8 */	lhz r3, jmaSinTableSize@sda21(r13)
/* 80013BB4 00010AF4  7C 60 16 70 */	srawi r0, r3, 2
/* 80013BB8 00010AF8  7C 00 01 94 */	addze r0, r0
/* 80013BBC 00010AFC  7C 03 02 14 */	add r0, r3, r0
/* 80013BC0 00010B00  54 03 10 3A */	slwi r3, r0, 2
/* 80013BC4 00010B04  4B FF 8D ED */	bl __nwa__FUl
/* 80013BC8 00010B08  90 6D 8D F0 */	stw r3, jmaSinTable@sda21(r13)
/* 80013BCC 00010B0C  80 0D 8D F0 */	lwz r0, jmaSinTable@sda21(r13)
/* 80013BD0 00010B10  28 00 00 00 */	cmplwi r0, 0
/* 80013BD4 00010B14  40 82 00 0C */	bne lbl_80013BE0
/* 80013BD8 00010B18  38 60 00 00 */	li r3, 0
/* 80013BDC 00010B1C  48 00 00 88 */	b lbl_80013C64
lbl_80013BE0:
/* 80013BE0 00010B20  C3 C2 80 F0 */	lfs f30, $$2151@sda21(r2)
/* 80013BE4 00010B24  3B A0 00 00 */	li r29, 0
/* 80013BE8 00010B28  CB E2 80 F8 */	lfd f31, $$2153@sda21(r2)
/* 80013BEC 00010B2C  3F C0 43 30 */	lis r30, 0x4330
/* 80013BF0 00010B30  48 00 00 44 */	b lbl_80013C34
lbl_80013BF4:
/* 80013BF4 00010B34  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80013BF8 00010B38  57 BF 04 3E */	clrlwi r31, r29, 0x10
/* 80013BFC 00010B3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80013C00 00010B40  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80013C04 00010B44  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80013C08 00010B48  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80013C0C 00010B4C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80013C10 00010B50  EC 3E 00 24 */	fdivs f1, f30, f0
/* 80013C14 00010B54  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80013C18 00010B58  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80013C1C 00010B5C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80013C20 00010B60  48 07 34 E5 */	bl sinf
/* 80013C24 00010B64  80 6D 8D F0 */	lwz r3, jmaSinTable@sda21(r13)
/* 80013C28 00010B68  57 E0 10 3A */	slwi r0, r31, 2
/* 80013C2C 00010B6C  3B BD 00 01 */	addi r29, r29, 1
/* 80013C30 00010B70  7C 23 05 2E */	stfsx f1, r3, r0
lbl_80013C34:
/* 80013C34 00010B74  A0 8D 8D E8 */	lhz r4, jmaSinTableSize@sda21(r13)
/* 80013C38 00010B78  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 80013C3C 00010B7C  7C 85 16 70 */	srawi r5, r4, 2
/* 80013C40 00010B80  7C A5 01 94 */	addze r5, r5
/* 80013C44 00010B84  7C 04 2A 14 */	add r0, r4, r5
/* 80013C48 00010B88  7C 03 00 00 */	cmpw r3, r0
/* 80013C4C 00010B8C  41 80 FF A8 */	blt lbl_80013BF4
/* 80013C50 00010B90  80 8D 8D F0 */	lwz r4, jmaSinTable@sda21(r13)
/* 80013C54 00010B94  54 A0 10 3A */	slwi r0, r5, 2
/* 80013C58 00010B98  38 60 00 01 */	li r3, 1
/* 80013C5C 00010B9C  7C 04 02 14 */	add r0, r4, r0
/* 80013C60 00010BA0  90 0D 8D F4 */	stw r0, jmaCosTable@sda21(r13)
lbl_80013C64:
/* 80013C64 00010BA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80013C68 00010BA8  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 80013C6C 00010BAC  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80013C70 00010BB0  7C 08 03 A6 */	mtlr r0
/* 80013C74 00010BB4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80013C78 00010BB8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80013C7C 00010BBC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80013C80 00010BC0  38 21 00 40 */	addi r1, r1, 0x40
/* 80013C84 00010BC4  4E 80 00 20 */	blr 

.global JMAEulerToQuat__FsssP10Quaternion
JMAEulerToQuat__FsssP10Quaternion:
/* 80013C88 00010BC8  7C 60 07 34 */	extsh r0, r3
/* 80013C8C 00010BCC  81 0D 8D EC */	lwz r8, jmaSinShift@sda21(r13)
/* 80013C90 00010BD0  7C 00 0E 70 */	srawi r0, r0, 1
/* 80013C94 00010BD4  81 4D 8D F0 */	lwz r10, jmaSinTable@sda21(r13)
/* 80013C98 00010BD8  7C 00 01 94 */	addze r0, r0
/* 80013C9C 00010BDC  81 2D 8D F4 */	lwz r9, jmaCosTable@sda21(r13)
/* 80013CA0 00010BE0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80013CA4 00010BE4  7C 07 46 30 */	sraw r7, r0, r8
/* 80013CA8 00010BE8  7C 80 07 34 */	extsh r0, r4
/* 80013CAC 00010BEC  7C 00 0E 70 */	srawi r0, r0, 1
/* 80013CB0 00010BF0  7C 00 01 94 */	addze r0, r0
/* 80013CB4 00010BF4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80013CB8 00010BF8  7C 03 46 30 */	sraw r3, r0, r8
/* 80013CBC 00010BFC  7C A0 07 34 */	extsh r0, r5
/* 80013CC0 00010C00  7C 00 0E 70 */	srawi r0, r0, 1
/* 80013CC4 00010C04  54 63 10 3A */	slwi r3, r3, 2
/* 80013CC8 00010C08  7C 00 01 94 */	addze r0, r0
/* 80013CCC 00010C0C  7C 6A 1C 2E */	lfsx f3, r10, r3
/* 80013CD0 00010C10  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80013CD4 00010C14  7C E9 1C 2E */	lfsx f7, r9, r3
/* 80013CD8 00010C18  7C 00 46 30 */	sraw r0, r0, r8
/* 80013CDC 00010C1C  54 03 10 3A */	slwi r3, r0, 2
/* 80013CE0 00010C20  54 E0 10 3A */	slwi r0, r7, 2
/* 80013CE4 00010C24  7D 4A 1C 2E */	lfsx f10, r10, r3
/* 80013CE8 00010C28  7D 2A 04 2E */	lfsx f9, r10, r0
/* 80013CEC 00010C2C  EC 83 02 B2 */	fmuls f4, f3, f10
/* 80013CF0 00010C30  7D 09 1C 2E */	lfsx f8, r9, r3
/* 80013CF4 00010C34  7C C9 04 2E */	lfsx f6, r9, r0
/* 80013CF8 00010C38  EC 29 01 F2 */	fmuls f1, f9, f7
/* 80013CFC 00010C3C  ED 67 02 32 */	fmuls f11, f7, f8
/* 80013D00 00010C40  EC 49 01 32 */	fmuls f2, f9, f4
/* 80013D04 00010C44  EC 09 00 F2 */	fmuls f0, f9, f3
/* 80013D08 00010C48  EC 86 01 32 */	fmuls f4, f6, f4
/* 80013D0C 00010C4C  EC A6 12 FA */	fmadds f5, f6, f11, f2
/* 80013D10 00010C50  EC 4A 00 72 */	fmuls f2, f10, f1
/* 80013D14 00010C54  EC 66 00 F2 */	fmuls f3, f6, f3
/* 80013D18 00010C58  EC 89 22 F8 */	fmsubs f4, f9, f11, f4
/* 80013D1C 00010C5C  D0 A6 00 0C */	stfs f5, 0xc(r6)
/* 80013D20 00010C60  EC 26 01 F2 */	fmuls f1, f6, f7
/* 80013D24 00010C64  EC 08 00 32 */	fmuls f0, f8, f0
/* 80013D28 00010C68  EC 48 10 FA */	fmadds f2, f8, f3, f2
/* 80013D2C 00010C6C  D0 86 00 00 */	stfs f4, 0(r6)
/* 80013D30 00010C70  EC 0A 00 78 */	fmsubs f0, f10, f1, f0
/* 80013D34 00010C74  D0 46 00 04 */	stfs f2, 4(r6)
/* 80013D38 00010C78  D0 06 00 08 */	stfs f0, 8(r6)
/* 80013D3C 00010C7C  4E 80 00 20 */	blr 

.global JMAQuatLerp__FP10QuaternionP10QuaternionfP10Quaternion
JMAQuatLerp__FP10QuaternionP10QuaternionfP10Quaternion:
/* 80013D40 00010C80  C0 03 00 04 */	lfs f0, 4(r3)
/* 80013D44 00010C84  C0 A4 00 04 */	lfs f5, 4(r4)
/* 80013D48 00010C88  C1 03 00 00 */	lfs f8, 0(r3)
/* 80013D4C 00010C8C  EC 00 01 72 */	fmuls f0, f0, f5
/* 80013D50 00010C90  C0 84 00 00 */	lfs f4, 0(r4)
/* 80013D54 00010C94  C0 43 00 08 */	lfs f2, 8(r3)
/* 80013D58 00010C98  C0 C4 00 08 */	lfs f6, 8(r4)
/* 80013D5C 00010C9C  EC 08 01 3A */	fmadds f0, f8, f4, f0
/* 80013D60 00010CA0  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80013D64 00010CA4  C0 E4 00 0C */	lfs f7, 0xc(r4)
/* 80013D68 00010CA8  EC 42 01 BA */	fmadds f2, f2, f6, f0
/* 80013D6C 00010CAC  C8 02 81 00 */	lfd f0, $$2182@sda21(r2)
/* 80013D70 00010CB0  EC 43 11 FA */	fmadds f2, f3, f7, f2
/* 80013D74 00010CB4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80013D78 00010CB8  40 80 00 14 */	bge lbl_80013D8C
/* 80013D7C 00010CBC  FC 80 20 50 */	fneg f4, f4
/* 80013D80 00010CC0  FC A0 28 50 */	fneg f5, f5
/* 80013D84 00010CC4  FC C0 30 50 */	fneg f6, f6
/* 80013D88 00010CC8  FC E0 38 50 */	fneg f7, f7
lbl_80013D8C:
/* 80013D8C 00010CCC  C8 42 81 08 */	lfd f2, $$2183@sda21(r2)
/* 80013D90 00010CD0  FC 01 01 32 */	fmul f0, f1, f4
/* 80013D94 00010CD4  FD 22 08 28 */	fsub f9, f2, f1
/* 80013D98 00010CD8  FC 61 01 72 */	fmul f3, f1, f5
/* 80013D9C 00010CDC  FC 09 02 3A */	fmadd f0, f9, f8, f0
/* 80013DA0 00010CE0  FC 41 01 B2 */	fmul f2, f1, f6
/* 80013DA4 00010CE4  FC 80 00 18 */	frsp f4, f0
/* 80013DA8 00010CE8  FC 01 01 F2 */	fmul f0, f1, f7
/* 80013DAC 00010CEC  D0 85 00 00 */	stfs f4, 0(r5)
/* 80013DB0 00010CF0  C0 23 00 04 */	lfs f1, 4(r3)
/* 80013DB4 00010CF4  FC 29 18 7A */	fmadd f1, f9, f1, f3
/* 80013DB8 00010CF8  FC 20 08 18 */	frsp f1, f1
/* 80013DBC 00010CFC  D0 25 00 04 */	stfs f1, 4(r5)
/* 80013DC0 00010D00  C0 23 00 08 */	lfs f1, 8(r3)
/* 80013DC4 00010D04  FC 29 10 7A */	fmadd f1, f9, f1, f2
/* 80013DC8 00010D08  FC 20 08 18 */	frsp f1, f1
/* 80013DCC 00010D0C  D0 25 00 08 */	stfs f1, 8(r5)
/* 80013DD0 00010D10  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80013DD4 00010D14  FC 09 00 7A */	fmadd f0, f9, f1, f0
/* 80013DD8 00010D18  FC 00 00 18 */	frsp f0, f0
/* 80013DDC 00010D1C  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 80013DE0 00010D20  4E 80 00 20 */	blr 

.global JMAHermiteInterpolation__Ffffffff
JMAHermiteInterpolation__Ffffffff:
/* 80013DE4 00010D24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80013DE8 00010D28  EC 05 10 28 */	fsubs f0, f5, f2
/* 80013DEC 00010D2C  ED 61 10 28 */	fsubs f11, f1, f2
/* 80013DF0 00010D30  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80013DF4 00010D34  C1 22 81 10 */	lfs f9, $$2186@sda21(r2)
/* 80013DF8 00010D38  EC 4B 02 F2 */	fmuls f2, f11, f11
/* 80013DFC 00010D3C  C0 22 81 18 */	lfs f1, $$2188@sda21(r2)
/* 80013E00 00010D40  ED 09 00 24 */	fdivs f8, f9, f0
/* 80013E04 00010D44  C0 A2 81 14 */	lfs f5, $$2187@sda21(r2)
/* 80013E08 00010D48  C0 02 81 1C */	lfs f0, $$2189@sda21(r2)
/* 80013E0C 00010D4C  ED 88 00 B2 */	fmuls f12, f8, f2
/* 80013E10 00010D50  EC 4C 02 32 */	fmuls f2, f12, f8
/* 80013E14 00010D54  ED AB 00 B2 */	fmuls f13, f11, f2
/* 80013E18 00010D58  ED 41 00 B2 */	fmuls f10, f1, f2
/* 80013E1C 00010D5C  EF ED 02 32 */	fmuls f31, f13, f8
/* 80013E20 00010D60  EC 45 6B 3C */	fnmsubs f2, f5, f12, f13
/* 80013E24 00010D64  ED 0D 60 28 */	fsubs f8, f13, f12
/* 80013E28 00010D68  EC 25 57 F8 */	fmsubs f1, f5, f31, f10
/* 80013E2C 00010D6C  EC 00 57 FA */	fmadds f0, f0, f31, f10
/* 80013E30 00010D70  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80013E34 00010D74  EC 4B 10 2A */	fadds f2, f11, f2
/* 80013E38 00010D78  EC 29 08 2A */	fadds f1, f9, f1
/* 80013E3C 00010D7C  EC 06 00 32 */	fmuls f0, f6, f0
/* 80013E40 00010D80  38 21 00 30 */	addi r1, r1, 0x30
/* 80013E44 00010D84  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 80013E48 00010D88  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 80013E4C 00010D8C  EC 27 02 3A */	fmadds f1, f7, f8, f0
/* 80013E50 00010D90  4E 80 00 20 */	blr 

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2151:
	.incbin "baserom.dol", 0x3E3DF0, 0x8
$$2153:
	.incbin "baserom.dol", 0x3E3DF8, 0x8
$$2182:
  .4byte 0
  .4byte 0
$$2183:
	.incbin "baserom.dol", 0x3E3E08, 0x8
$$2186:
	.incbin "baserom.dol", 0x3E3E10, 0x4
$$2187:
	.incbin "baserom.dol", 0x3E3E14, 0x4
$$2188:
	.incbin "baserom.dol", 0x3E3E18, 0x4
$$2189:
	.incbin "baserom.dol", 0x3E3E1C, 0x4

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
jmaSinTableSize:
	.skip 0x4
.global jmaSinShift
jmaSinShift:
	.skip 0x4
.global jmaSinTable
jmaSinTable:
	.skip 0x4
.global jmaCosTable
jmaCosTable:
	.skip 0x4
