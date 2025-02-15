.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global J3DCalcZValue__FPA4_f3Vec
J3DCalcZValue__FPA4_f3Vec:
/* 8001BAB0 000189F0  C0 63 00 20 */	lfs f3, 0x20(r3)
/* 8001BAB4 000189F4  C0 44 00 00 */	lfs f2, 0(r4)
/* 8001BAB8 000189F8  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 8001BABC 000189FC  C0 04 00 04 */	lfs f0, 4(r4)
/* 8001BAC0 00018A00  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8001BAC4 00018A04  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 8001BAC8 00018A08  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001BACC 00018A0C  C0 24 00 08 */	lfs f1, 8(r4)
/* 8001BAD0 00018A10  C0 83 00 2C */	lfs f4, 0x2c(r3)
/* 8001BAD4 00018A14  EC 23 00 72 */	fmuls f1, f3, f1
/* 8001BAD8 00018A18  EC 02 00 2A */	fadds f0, f2, f0
/* 8001BADC 00018A1C  EC 01 00 2A */	fadds f0, f1, f0
/* 8001BAE0 00018A20  EC 24 00 2A */	fadds f1, f4, f0
/* 8001BAE4 00018A24  4E 80 00 20 */	blr 

.global J3DPSCalcInverseTranspose__FPA4_fPA3_f
J3DPSCalcInverseTranspose__FPA4_fPA3_f:
/* 8001BAE8 00018A28  E0 03 80 00 */	psq_l f0, 0(r3), 1, qr0
/* 8001BAEC 00018A2C  E0 23 00 04 */	psq_l f1, 4(r3), 0, qr0
/* 8001BAF0 00018A30  E0 43 80 10 */	psq_l f2, 16(r3), 1, qr0
/* 8001BAF4 00018A34  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 8001BAF8 00018A38  E0 63 00 14 */	psq_l f3, 20(r3), 0, qr0
/* 8001BAFC 00018A3C  E0 83 80 20 */	psq_l f4, 32(r3), 1, qr0
/* 8001BB00 00018A40  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 8001BB04 00018A44  E0 A3 00 24 */	psq_l f5, 36(r3), 0, qr0
/* 8001BB08 00018A48  11 63 01 B2 */	ps_mul f11, f3, f6
/* 8001BB0C 00018A4C  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 8001BB10 00018A50  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 8001BB14 00018A54  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 8001BB18 00018A58  11 81 02 32 */	ps_mul f12, f1, f8
/* 8001BB1C 00018A5C  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 8001BB20 00018A60  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 8001BB24 00018A64  11 43 01 32 */	ps_mul f10, f3, f4
/* 8001BB28 00018A68  11 20 01 72 */	ps_mul f9, f0, f5
/* 8001BB2C 00018A6C  11 01 00 B2 */	ps_mul f8, f1, f2
/* 8001BB30 00018A70  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 8001BB34 00018A74  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 8001BB38 00018A78  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 8001BB3C 00018A7C  10 E0 03 72 */	ps_mul f7, f0, f13
/* 8001BB40 00018A80  10 21 08 28 */	ps_sub f1, f1, f1
/* 8001BB44 00018A84  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 8001BB48 00018A88  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 8001BB4C 00018A8C  10 07 08 40 */	ps_cmpo0 cr0, f7, f1
/* 8001BB50 00018A90  40 82 00 0C */	bne lbl_8001BB5C
/* 8001BB54 00018A94  38 60 00 00 */	li r3, 0
/* 8001BB58 00018A98  4E 80 00 20 */	blr 
lbl_8001BB5C:
/* 8001BB5C 00018A9C  EC 00 38 30 */	fres f0, f7
/* 8001BB60 00018AA0  10 C0 00 2A */	ps_add f6, f0, f0
/* 8001BB64 00018AA4  10 A0 00 32 */	ps_mul f5, f0, f0
/* 8001BB68 00018AA8  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 8001BB6C 00018AAC  10 C0 00 2A */	ps_add f6, f0, f0
/* 8001BB70 00018AB0  10 A0 00 32 */	ps_mul f5, f0, f0
/* 8001BB74 00018AB4  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 8001BB78 00018AB8  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 8001BB7C 00018ABC  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 8001BB80 00018AC0  F1 A4 00 00 */	psq_st f13, 0(r4), 0, qr0
/* 8001BB84 00018AC4  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 8001BB88 00018AC8  F1 84 00 0C */	psq_st f12, 12(r4), 0, qr0
/* 8001BB8C 00018ACC  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 8001BB90 00018AD0  F1 64 00 18 */	psq_st f11, 24(r4), 0, qr0
/* 8001BB94 00018AD4  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 8001BB98 00018AD8  F1 44 80 08 */	psq_st f10, 8(r4), 1, qr0
/* 8001BB9C 00018ADC  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 8001BBA0 00018AE0  F1 24 80 14 */	psq_st f9, 20(r4), 1, qr0
/* 8001BBA4 00018AE4  38 60 00 01 */	li r3, 1
/* 8001BBA8 00018AE8  F1 04 80 20 */	psq_st f8, 32(r4), 1, qr0
/* 8001BBAC 00018AEC  4E 80 00 20 */	blr 

.global J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f:
/* 8001BBB0 00018AF0  A0 A3 00 0C */	lhz r5, 0xc(r3)
/* 8001BBB4 00018AF4  80 ED 8D EC */	lwz r7, jmaSinShift@sda21(r13)
/* 8001BBB8 00018AF8  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8001BBBC 00018AFC  7C A6 3E 30 */	sraw r6, r5, r7
/* 8001BBC0 00018B00  81 0D 8D F0 */	lwz r8, jmaSinTable@sda21(r13)
/* 8001BBC4 00018B04  7C 05 3E 30 */	sraw r5, r0, r7
/* 8001BBC8 00018B08  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8001BBCC 00018B0C  54 A5 10 3A */	slwi r5, r5, 2
/* 8001BBD0 00018B10  81 2D 8D F4 */	lwz r9, jmaCosTable@sda21(r13)
/* 8001BBD4 00018B14  7C 00 3E 30 */	sraw r0, r0, r7
/* 8001BBD8 00018B18  7C A8 2C 2E */	lfsx f5, r8, r5
/* 8001BBDC 00018B1C  54 07 10 3A */	slwi r7, r0, 2
/* 8001BBE0 00018B20  7C C9 2C 2E */	lfsx f6, r9, r5
/* 8001BBE4 00018B24  54 C0 10 3A */	slwi r0, r6, 2
/* 8001BBE8 00018B28  7D 09 3C 2E */	lfsx f8, r9, r7
/* 8001BBEC 00018B2C  7C 68 04 2E */	lfsx f3, r8, r0
/* 8001BBF0 00018B30  FC 40 28 50 */	fneg f2, f5
/* 8001BBF4 00018B34  7C 89 04 2E */	lfsx f4, r9, r0
/* 8001BBF8 00018B38  EC 08 01 B2 */	fmuls f0, f8, f6
/* 8001BBFC 00018B3C  7C E8 3C 2E */	lfsx f7, r8, r7
/* 8001BC00 00018B40  EC 26 00 F2 */	fmuls f1, f6, f3
/* 8001BC04 00018B44  D0 44 00 20 */	stfs f2, 0x20(r4)
/* 8001BC08 00018B48  EC 47 01 B2 */	fmuls f2, f7, f6
/* 8001BC0C 00018B4C  ED 24 01 F2 */	fmuls f9, f4, f7
/* 8001BC10 00018B50  ED 43 02 32 */	fmuls f10, f3, f8
/* 8001BC14 00018B54  D0 04 00 00 */	stfs f0, 0(r4)
/* 8001BC18 00018B58  EC 06 01 32 */	fmuls f0, f6, f4
/* 8001BC1C 00018B5C  EC C3 01 F2 */	fmuls f6, f3, f7
/* 8001BC20 00018B60  EC 84 02 32 */	fmuls f4, f4, f8
/* 8001BC24 00018B64  D0 44 00 10 */	stfs f2, 0x10(r4)
/* 8001BC28 00018B68  EC 6A 49 78 */	fmsubs f3, f10, f5, f9
/* 8001BC2C 00018B6C  EC 49 51 78 */	fmsubs f2, f9, f5, f10
/* 8001BC30 00018B70  D0 24 00 24 */	stfs f1, 0x24(r4)
/* 8001BC34 00018B74  EC 24 31 7A */	fmadds f1, f4, f5, f6
/* 8001BC38 00018B78  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 8001BC3C 00018B7C  EC 06 21 7A */	fmadds f0, f6, f5, f4
/* 8001BC40 00018B80  D0 64 00 04 */	stfs f3, 4(r4)
/* 8001BC44 00018B84  D0 44 00 18 */	stfs f2, 0x18(r4)
/* 8001BC48 00018B88  D0 24 00 08 */	stfs f1, 8(r4)
/* 8001BC4C 00018B8C  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 8001BC50 00018B90  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8001BC54 00018B94  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 8001BC58 00018B98  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8001BC5C 00018B9C  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8001BC60 00018BA0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8001BC64 00018BA4  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 8001BC68 00018BA8  4E 80 00 20 */	blr 

.global J3DGetTranslateRotateMtx__FsssfffPA4_f
J3DGetTranslateRotateMtx__FsssfffPA4_f:
/* 8001BC6C 00018BAC  80 ED 8D EC */	lwz r7, jmaSinShift@sda21(r13)
/* 8001BC70 00018BB0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8001BC74 00018BB4  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8001BC78 00018BB8  80 8D 8D F0 */	lwz r4, jmaSinTable@sda21(r13)
/* 8001BC7C 00018BBC  7C 63 3E 30 */	sraw r3, r3, r7
/* 8001BC80 00018BC0  7C 00 3E 30 */	sraw r0, r0, r7
/* 8001BC84 00018BC4  81 2D 8D F4 */	lwz r9, jmaCosTable@sda21(r13)
/* 8001BC88 00018BC8  54 08 10 3A */	slwi r8, r0, 2
/* 8001BC8C 00018BCC  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8001BC90 00018BD0  7D 04 44 2E */	lfsx f8, r4, r8
/* 8001BC94 00018BD4  7C 00 3E 30 */	sraw r0, r0, r7
/* 8001BC98 00018BD8  7D 29 44 2E */	lfsx f9, r9, r8
/* 8001BC9C 00018BDC  54 05 10 3A */	slwi r5, r0, 2
/* 8001BCA0 00018BE0  FC A0 40 50 */	fneg f5, f8
/* 8001BCA4 00018BE4  54 60 10 3A */	slwi r0, r3, 2
/* 8001BCA8 00018BE8  7D 69 2C 2E */	lfsx f11, r9, r5
/* 8001BCAC 00018BEC  7C C4 04 2E */	lfsx f6, r4, r0
/* 8001BCB0 00018BF0  7C E9 04 2E */	lfsx f7, r9, r0
/* 8001BCB4 00018BF4  7D 44 2C 2E */	lfsx f10, r4, r5
/* 8001BCB8 00018BF8  EC 0B 02 72 */	fmuls f0, f11, f9
/* 8001BCBC 00018BFC  EC 89 01 B2 */	fmuls f4, f9, f6
/* 8001BCC0 00018C00  D0 A6 00 20 */	stfs f5, 0x20(r6)
/* 8001BCC4 00018C04  EC AA 02 72 */	fmuls f5, f10, f9
/* 8001BCC8 00018C08  ED 87 02 B2 */	fmuls f12, f7, f10
/* 8001BCCC 00018C0C  ED A6 02 F2 */	fmuls f13, f6, f11
/* 8001BCD0 00018C10  D0 06 00 00 */	stfs f0, 0(r6)
/* 8001BCD4 00018C14  EC 09 01 F2 */	fmuls f0, f9, f7
/* 8001BCD8 00018C18  ED 26 02 B2 */	fmuls f9, f6, f10
/* 8001BCDC 00018C1C  EC E7 02 F2 */	fmuls f7, f7, f11
/* 8001BCE0 00018C20  D0 A6 00 10 */	stfs f5, 0x10(r6)
/* 8001BCE4 00018C24  EC CD 62 38 */	fmsubs f6, f13, f8, f12
/* 8001BCE8 00018C28  EC AC 6A 38 */	fmsubs f5, f12, f8, f13
/* 8001BCEC 00018C2C  D0 86 00 24 */	stfs f4, 0x24(r6)
/* 8001BCF0 00018C30  EC 87 4A 3A */	fmadds f4, f7, f8, f9
/* 8001BCF4 00018C34  D0 06 00 28 */	stfs f0, 0x28(r6)
/* 8001BCF8 00018C38  EC 09 3A 3A */	fmadds f0, f9, f8, f7
/* 8001BCFC 00018C3C  D0 C6 00 04 */	stfs f6, 4(r6)
/* 8001BD00 00018C40  D0 A6 00 18 */	stfs f5, 0x18(r6)
/* 8001BD04 00018C44  D0 86 00 08 */	stfs f4, 8(r6)
/* 8001BD08 00018C48  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 8001BD0C 00018C4C  D0 26 00 0C */	stfs f1, 0xc(r6)
/* 8001BD10 00018C50  D0 46 00 1C */	stfs f2, 0x1c(r6)
/* 8001BD14 00018C54  D0 66 00 2C */	stfs f3, 0x2c(r6)
/* 8001BD18 00018C58  4E 80 00 20 */	blr 

.global J3DGetTextureMtx__FRC17J3DTextureSRTInfo3VecPA4_f
J3DGetTextureMtx__FRC17J3DTextureSRTInfo3VecPA4_f:
/* 8001BD1C 00018C5C  A0 E3 00 08 */	lhz r7, 8(r3)
/* 8001BD20 00018C60  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001BD24 00018C64  80 CD 8D F4 */	lwz r6, jmaCosTable@sda21(r13)
/* 8001BD28 00018C68  7C E0 06 30 */	sraw r0, r7, r0
/* 8001BD2C 00018C6C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8001BD30 00018C70  54 00 10 3A */	slwi r0, r0, 2
/* 8001BD34 00018C74  80 ED 8D F0 */	lwz r7, jmaSinTable@sda21(r13)
/* 8001BD38 00018C78  7C A6 04 2E */	lfsx f5, r6, r0
/* 8001BD3C 00018C7C  7C 87 04 2E */	lfsx f4, r7, r0
/* 8001BD40 00018C80  EC 00 01 72 */	fmuls f0, f0, f5
/* 8001BD44 00018C84  D0 05 00 00 */	stfs f0, 0(r5)
/* 8001BD48 00018C88  C0 03 00 00 */	lfs f0, 0(r3)
/* 8001BD4C 00018C8C  FC 00 00 50 */	fneg f0, f0
/* 8001BD50 00018C90  EC 00 01 32 */	fmuls f0, f0, f4
/* 8001BD54 00018C94  D0 05 00 04 */	stfs f0, 4(r5)
/* 8001BD58 00018C98  C0 03 00 00 */	lfs f0, 0(r3)
/* 8001BD5C 00018C9C  C0 24 00 04 */	lfs f1, 4(r4)
/* 8001BD60 00018CA0  FC 40 00 50 */	fneg f2, f0
/* 8001BD64 00018CA4  C0 C4 00 00 */	lfs f6, 0(r4)
/* 8001BD68 00018CA8  EC 00 01 32 */	fmuls f0, f0, f4
/* 8001BD6C 00018CAC  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 8001BD70 00018CB0  EC 42 01 72 */	fmuls f2, f2, f5
/* 8001BD74 00018CB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001BD78 00018CB8  EC 06 00 BA */	fmadds f0, f6, f2, f0
/* 8001BD7C 00018CBC  EC 06 00 2A */	fadds f0, f6, f0
/* 8001BD80 00018CC0  EC 03 00 2A */	fadds f0, f3, f0
/* 8001BD84 00018CC4  D0 05 00 08 */	stfs f0, 8(r5)
/* 8001BD88 00018CC8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001BD8C 00018CCC  EC 00 01 32 */	fmuls f0, f0, f4
/* 8001BD90 00018CD0  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 8001BD94 00018CD4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001BD98 00018CD8  EC 00 01 72 */	fmuls f0, f0, f5
/* 8001BD9C 00018CDC  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 8001BDA0 00018CE0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001BDA4 00018CE4  C0 C4 00 04 */	lfs f6, 4(r4)
/* 8001BDA8 00018CE8  FC 20 00 50 */	fneg f1, f0
/* 8001BDAC 00018CEC  C0 44 00 00 */	lfs f2, 0(r4)
/* 8001BDB0 00018CF0  EC 00 01 72 */	fmuls f0, f0, f5
/* 8001BDB4 00018CF4  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8001BDB8 00018CF8  EC 21 01 32 */	fmuls f1, f1, f4
/* 8001BDBC 00018CFC  EC 06 00 32 */	fmuls f0, f6, f0
/* 8001BDC0 00018D00  EC 02 00 78 */	fmsubs f0, f2, f1, f0
/* 8001BDC4 00018D04  EC 06 00 2A */	fadds f0, f6, f0
/* 8001BDC8 00018D08  EC 03 00 2A */	fadds f0, f3, f0
/* 8001BDCC 00018D0C  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 8001BDD0 00018D10  C0 02 81 A8 */	lfs f0, $$2871@sda21(r2)
/* 8001BDD4 00018D14  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 8001BDD8 00018D18  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 8001BDDC 00018D1C  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 8001BDE0 00018D20  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8001BDE4 00018D24  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 8001BDE8 00018D28  C0 02 81 AC */	lfs f0, $$2872@sda21(r2)
/* 8001BDEC 00018D2C  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 8001BDF0 00018D30  4E 80 00 20 */	blr 

.global J3DGetTextureMtxOld__FRC17J3DTextureSRTInfo3VecPA4_f
J3DGetTextureMtxOld__FRC17J3DTextureSRTInfo3VecPA4_f:
/* 8001BDF4 00018D34  A0 E3 00 08 */	lhz r7, 8(r3)
/* 8001BDF8 00018D38  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001BDFC 00018D3C  80 CD 8D F4 */	lwz r6, jmaCosTable@sda21(r13)
/* 8001BE00 00018D40  7C E0 06 30 */	sraw r0, r7, r0
/* 8001BE04 00018D44  C0 03 00 00 */	lfs f0, 0(r3)
/* 8001BE08 00018D48  54 00 10 3A */	slwi r0, r0, 2
/* 8001BE0C 00018D4C  80 ED 8D F0 */	lwz r7, jmaSinTable@sda21(r13)
/* 8001BE10 00018D50  7C A6 04 2E */	lfsx f5, r6, r0
/* 8001BE14 00018D54  7C 87 04 2E */	lfsx f4, r7, r0
/* 8001BE18 00018D58  EC 00 01 72 */	fmuls f0, f0, f5
/* 8001BE1C 00018D5C  D0 05 00 00 */	stfs f0, 0(r5)
/* 8001BE20 00018D60  C0 03 00 00 */	lfs f0, 0(r3)
/* 8001BE24 00018D64  FC 00 00 50 */	fneg f0, f0
/* 8001BE28 00018D68  EC 00 01 32 */	fmuls f0, f0, f4
/* 8001BE2C 00018D6C  D0 05 00 04 */	stfs f0, 4(r5)
/* 8001BE30 00018D70  C0 03 00 00 */	lfs f0, 0(r3)
/* 8001BE34 00018D74  C0 24 00 04 */	lfs f1, 4(r4)
/* 8001BE38 00018D78  FC 40 00 50 */	fneg f2, f0
/* 8001BE3C 00018D7C  C0 C4 00 00 */	lfs f6, 0(r4)
/* 8001BE40 00018D80  EC 00 01 32 */	fmuls f0, f0, f4
/* 8001BE44 00018D84  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 8001BE48 00018D88  EC 42 01 72 */	fmuls f2, f2, f5
/* 8001BE4C 00018D8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001BE50 00018D90  EC 06 00 BA */	fmadds f0, f6, f2, f0
/* 8001BE54 00018D94  EC 06 00 2A */	fadds f0, f6, f0
/* 8001BE58 00018D98  EC 03 00 2A */	fadds f0, f3, f0
/* 8001BE5C 00018D9C  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 8001BE60 00018DA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001BE64 00018DA4  EC 00 01 32 */	fmuls f0, f0, f4
/* 8001BE68 00018DA8  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 8001BE6C 00018DAC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001BE70 00018DB0  EC 00 01 72 */	fmuls f0, f0, f5
/* 8001BE74 00018DB4  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 8001BE78 00018DB8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001BE7C 00018DBC  C0 C4 00 04 */	lfs f6, 4(r4)
/* 8001BE80 00018DC0  FC 20 00 50 */	fneg f1, f0
/* 8001BE84 00018DC4  C0 44 00 00 */	lfs f2, 0(r4)
/* 8001BE88 00018DC8  EC 00 01 72 */	fmuls f0, f0, f5
/* 8001BE8C 00018DCC  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8001BE90 00018DD0  EC 21 01 32 */	fmuls f1, f1, f4
/* 8001BE94 00018DD4  EC 06 00 32 */	fmuls f0, f6, f0
/* 8001BE98 00018DD8  EC 02 00 78 */	fmsubs f0, f2, f1, f0
/* 8001BE9C 00018DDC  EC 06 00 2A */	fadds f0, f6, f0
/* 8001BEA0 00018DE0  EC 03 00 2A */	fadds f0, f3, f0
/* 8001BEA4 00018DE4  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8001BEA8 00018DE8  C0 02 81 A8 */	lfs f0, $$2871@sda21(r2)
/* 8001BEAC 00018DEC  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 8001BEB0 00018DF0  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 8001BEB4 00018DF4  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 8001BEB8 00018DF8  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 8001BEBC 00018DFC  D0 05 00 08 */	stfs f0, 8(r5)
/* 8001BEC0 00018E00  C0 02 81 AC */	lfs f0, $$2872@sda21(r2)
/* 8001BEC4 00018E04  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 8001BEC8 00018E08  4E 80 00 20 */	blr 

.global J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f:
/* 8001BECC 00018E0C  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8001BED0 00018E10  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001BED4 00018E14  80 CD 8D F4 */	lwz r6, jmaCosTable@sda21(r13)
/* 8001BED8 00018E18  7C A0 06 30 */	sraw r0, r5, r0
/* 8001BEDC 00018E1C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8001BEE0 00018E20  54 00 10 3A */	slwi r0, r0, 2
/* 8001BEE4 00018E24  7C 06 04 2E */	lfsx f0, r6, r0
/* 8001BEE8 00018E28  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001BEEC 00018E2C  D0 04 00 00 */	stfs f0, 0(r4)
/* 8001BEF0 00018E30  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8001BEF4 00018E34  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001BEF8 00018E38  80 CD 8D F0 */	lwz r6, jmaSinTable@sda21(r13)
/* 8001BEFC 00018E3C  7C A0 06 30 */	sraw r0, r5, r0
/* 8001BF00 00018E40  C0 23 00 04 */	lfs f1, 4(r3)
/* 8001BF04 00018E44  54 00 10 3A */	slwi r0, r0, 2
/* 8001BF08 00018E48  7C 06 04 2E */	lfsx f0, r6, r0
/* 8001BF0C 00018E4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001BF10 00018E50  D0 04 00 04 */	stfs f0, 4(r4)
/* 8001BF14 00018E54  C0 82 81 B0 */	lfs f4, $$2912@sda21(r2)
/* 8001BF18 00018E58  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8001BF1C 00018E5C  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8001BF20 00018E60  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001BF24 00018E64  EC 20 20 28 */	fsubs f1, f0, f4
/* 8001BF28 00018E68  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001BF2C 00018E6C  7C A0 06 30 */	sraw r0, r5, r0
/* 8001BF30 00018E70  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8001BF34 00018E74  80 CD 8D F0 */	lwz r6, jmaSinTable@sda21(r13)
/* 8001BF38 00018E78  54 00 10 3A */	slwi r0, r0, 2
/* 8001BF3C 00018E7C  80 AD 8D F4 */	lwz r5, jmaCosTable@sda21(r13)
/* 8001BF40 00018E80  EC 01 00 2A */	fadds f0, f1, f0
/* 8001BF44 00018E84  7C 66 04 2E */	lfsx f3, r6, r0
/* 8001BF48 00018E88  EC 42 20 28 */	fsubs f2, f2, f4
/* 8001BF4C 00018E8C  7C 25 04 2E */	lfsx f1, r5, r0
/* 8001BF50 00018E90  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8001BF54 00018E94  EC 02 00 78 */	fmsubs f0, f2, f1, f0
/* 8001BF58 00018E98  EC 04 00 2A */	fadds f0, f4, f0
/* 8001BF5C 00018E9C  D0 04 00 08 */	stfs f0, 8(r4)
/* 8001BF60 00018EA0  C0 62 81 A8 */	lfs f3, $$2871@sda21(r2)
/* 8001BF64 00018EA4  D0 64 00 0C */	stfs f3, 0xc(r4)
/* 8001BF68 00018EA8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8001BF6C 00018EAC  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8001BF70 00018EB0  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001BF74 00018EB4  FC 20 00 50 */	fneg f1, f0
/* 8001BF78 00018EB8  80 CD 8D F0 */	lwz r6, jmaSinTable@sda21(r13)
/* 8001BF7C 00018EBC  7C A0 06 30 */	sraw r0, r5, r0
/* 8001BF80 00018EC0  54 00 10 3A */	slwi r0, r0, 2
/* 8001BF84 00018EC4  7C 06 04 2E */	lfsx f0, r6, r0
/* 8001BF88 00018EC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001BF8C 00018ECC  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 8001BF90 00018ED0  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8001BF94 00018ED4  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001BF98 00018ED8  80 CD 8D F4 */	lwz r6, jmaCosTable@sda21(r13)
/* 8001BF9C 00018EDC  7C A0 06 30 */	sraw r0, r5, r0
/* 8001BFA0 00018EE0  C0 23 00 04 */	lfs f1, 4(r3)
/* 8001BFA4 00018EE4  54 00 10 3A */	slwi r0, r0, 2
/* 8001BFA8 00018EE8  7C 06 04 2E */	lfsx f0, r6, r0
/* 8001BFAC 00018EEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001BFB0 00018EF0  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 8001BFB4 00018EF4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8001BFB8 00018EF8  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8001BFBC 00018EFC  EC 20 20 28 */	fsubs f1, f0, f4
/* 8001BFC0 00018F00  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001BFC4 00018F04  EC 42 20 28 */	fsubs f2, f2, f4
/* 8001BFC8 00018F08  A0 63 00 08 */	lhz r3, 8(r3)
/* 8001BFCC 00018F0C  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001BFD0 00018F10  7C 60 06 30 */	sraw r0, r3, r0
/* 8001BFD4 00018F14  80 AD 8D F4 */	lwz r5, jmaCosTable@sda21(r13)
/* 8001BFD8 00018F18  54 00 10 3A */	slwi r0, r0, 2
/* 8001BFDC 00018F1C  80 6D 8D F0 */	lwz r3, jmaSinTable@sda21(r13)
/* 8001BFE0 00018F20  EC 01 00 2A */	fadds f0, f1, f0
/* 8001BFE4 00018F24  7C A5 04 2E */	lfsx f5, r5, r0
/* 8001BFE8 00018F28  FC 40 10 50 */	fneg f2, f2
/* 8001BFEC 00018F2C  7C 23 04 2E */	lfsx f1, r3, r0
/* 8001BFF0 00018F30  EC 00 01 72 */	fmuls f0, f0, f5
/* 8001BFF4 00018F34  EC 02 00 78 */	fmsubs f0, f2, f1, f0
/* 8001BFF8 00018F38  EC 04 00 2A */	fadds f0, f4, f0
/* 8001BFFC 00018F3C  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 8001C000 00018F40  D0 64 00 1C */	stfs f3, 0x1c(r4)
/* 8001C004 00018F44  D0 64 00 20 */	stfs f3, 0x20(r4)
/* 8001C008 00018F48  D0 64 00 24 */	stfs f3, 0x24(r4)
/* 8001C00C 00018F4C  C0 02 81 AC */	lfs f0, $$2872@sda21(r2)
/* 8001C010 00018F50  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 8001C014 00018F54  D0 64 00 2C */	stfs f3, 0x2c(r4)
/* 8001C018 00018F58  4E 80 00 20 */	blr 

.global J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f:
/* 8001C01C 00018F5C  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8001C020 00018F60  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001C024 00018F64  80 CD 8D F4 */	lwz r6, jmaCosTable@sda21(r13)
/* 8001C028 00018F68  7C A0 06 30 */	sraw r0, r5, r0
/* 8001C02C 00018F6C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8001C030 00018F70  54 00 10 3A */	slwi r0, r0, 2
/* 8001C034 00018F74  7C 06 04 2E */	lfsx f0, r6, r0
/* 8001C038 00018F78  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001C03C 00018F7C  D0 04 00 00 */	stfs f0, 0(r4)
/* 8001C040 00018F80  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8001C044 00018F84  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001C048 00018F88  80 CD 8D F0 */	lwz r6, jmaSinTable@sda21(r13)
/* 8001C04C 00018F8C  7C A0 06 30 */	sraw r0, r5, r0
/* 8001C050 00018F90  C0 23 00 04 */	lfs f1, 4(r3)
/* 8001C054 00018F94  54 00 10 3A */	slwi r0, r0, 2
/* 8001C058 00018F98  7C 06 04 2E */	lfsx f0, r6, r0
/* 8001C05C 00018F9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001C060 00018FA0  D0 04 00 04 */	stfs f0, 4(r4)
/* 8001C064 00018FA4  C0 82 81 A8 */	lfs f4, $$2871@sda21(r2)
/* 8001C068 00018FA8  D0 84 00 08 */	stfs f4, 8(r4)
/* 8001C06C 00018FAC  C0 62 81 B0 */	lfs f3, $$2912@sda21(r2)
/* 8001C070 00018FB0  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8001C074 00018FB4  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8001C078 00018FB8  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001C07C 00018FBC  EC 20 18 28 */	fsubs f1, f0, f3
/* 8001C080 00018FC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001C084 00018FC4  7C A0 06 30 */	sraw r0, r5, r0
/* 8001C088 00018FC8  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8001C08C 00018FCC  80 CD 8D F0 */	lwz r6, jmaSinTable@sda21(r13)
/* 8001C090 00018FD0  54 00 10 3A */	slwi r0, r0, 2
/* 8001C094 00018FD4  80 AD 8D F4 */	lwz r5, jmaCosTable@sda21(r13)
/* 8001C098 00018FD8  EC 01 00 2A */	fadds f0, f1, f0
/* 8001C09C 00018FDC  7C A6 04 2E */	lfsx f5, r6, r0
/* 8001C0A0 00018FE0  EC 42 18 28 */	fsubs f2, f2, f3
/* 8001C0A4 00018FE4  7C 25 04 2E */	lfsx f1, r5, r0
/* 8001C0A8 00018FE8  EC 00 01 72 */	fmuls f0, f0, f5
/* 8001C0AC 00018FEC  EC 02 00 78 */	fmsubs f0, f2, f1, f0
/* 8001C0B0 00018FF0  EC 03 00 2A */	fadds f0, f3, f0
/* 8001C0B4 00018FF4  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 8001C0B8 00018FF8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8001C0BC 00018FFC  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8001C0C0 00019000  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001C0C4 00019004  FC 20 00 50 */	fneg f1, f0
/* 8001C0C8 00019008  80 CD 8D F0 */	lwz r6, jmaSinTable@sda21(r13)
/* 8001C0CC 0001900C  7C A0 06 30 */	sraw r0, r5, r0
/* 8001C0D0 00019010  54 00 10 3A */	slwi r0, r0, 2
/* 8001C0D4 00019014  7C 06 04 2E */	lfsx f0, r6, r0
/* 8001C0D8 00019018  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001C0DC 0001901C  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 8001C0E0 00019020  A0 A3 00 08 */	lhz r5, 8(r3)
/* 8001C0E4 00019024  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001C0E8 00019028  80 CD 8D F4 */	lwz r6, jmaCosTable@sda21(r13)
/* 8001C0EC 0001902C  7C A0 06 30 */	sraw r0, r5, r0
/* 8001C0F0 00019030  C0 23 00 04 */	lfs f1, 4(r3)
/* 8001C0F4 00019034  54 00 10 3A */	slwi r0, r0, 2
/* 8001C0F8 00019038  7C 06 04 2E */	lfsx f0, r6, r0
/* 8001C0FC 0001903C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001C100 00019040  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 8001C104 00019044  D0 84 00 18 */	stfs f4, 0x18(r4)
/* 8001C108 00019048  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8001C10C 0001904C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8001C110 00019050  EC 20 18 28 */	fsubs f1, f0, f3
/* 8001C114 00019054  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001C118 00019058  EC 42 18 28 */	fsubs f2, f2, f3
/* 8001C11C 0001905C  A0 63 00 08 */	lhz r3, 8(r3)
/* 8001C120 00019060  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 8001C124 00019064  7C 60 06 30 */	sraw r0, r3, r0
/* 8001C128 00019068  80 AD 8D F4 */	lwz r5, jmaCosTable@sda21(r13)
/* 8001C12C 0001906C  54 00 10 3A */	slwi r0, r0, 2
/* 8001C130 00019070  80 6D 8D F0 */	lwz r3, jmaSinTable@sda21(r13)
/* 8001C134 00019074  EC 01 00 2A */	fadds f0, f1, f0
/* 8001C138 00019078  7C A5 04 2E */	lfsx f5, r5, r0
/* 8001C13C 0001907C  FC 40 10 50 */	fneg f2, f2
/* 8001C140 00019080  7C 23 04 2E */	lfsx f1, r3, r0
/* 8001C144 00019084  EC 00 01 72 */	fmuls f0, f0, f5
/* 8001C148 00019088  EC 02 00 78 */	fmsubs f0, f2, f1, f0
/* 8001C14C 0001908C  EC 03 00 2A */	fadds f0, f3, f0
/* 8001C150 00019090  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8001C154 00019094  D0 84 00 20 */	stfs f4, 0x20(r4)
/* 8001C158 00019098  D0 84 00 24 */	stfs f4, 0x24(r4)
/* 8001C15C 0001909C  C0 02 81 AC */	lfs f0, $$2872@sda21(r2)
/* 8001C160 000190A0  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 8001C164 000190A4  D0 84 00 2C */	stfs f4, 0x2c(r4)
/* 8001C168 000190A8  4E 80 00 20 */	blr 

.global J3DScaleNrmMtx33__FPA3_fRC3Vec
J3DScaleNrmMtx33__FPA3_fRC3Vec:
/* 8001C16C 000190AC  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8001C170 000190B0  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 8001C174 000190B4  C0 23 00 08 */	lfs f1, 8(r3)
/* 8001C178 000190B8  C0 E4 00 08 */	lfs f7, 8(r4)
/* 8001C17C 000190BC  10 00 01 B2 */	ps_mul f0, f0, f6
/* 8001C180 000190C0  E0 43 00 0C */	psq_l f2, 12(r3), 0, qr0
/* 8001C184 000190C4  EC 21 01 F2 */	fmuls f1, f1, f7
/* 8001C188 000190C8  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 8001C18C 000190CC  10 42 01 B2 */	ps_mul f2, f2, f6
/* 8001C190 000190D0  E0 83 00 18 */	psq_l f4, 24(r3), 0, qr0
/* 8001C194 000190D4  EC 63 01 F2 */	fmuls f3, f3, f7
/* 8001C198 000190D8  C0 A3 00 20 */	lfs f5, 0x20(r3)
/* 8001C19C 000190DC  10 84 01 B2 */	ps_mul f4, f4, f6
/* 8001C1A0 000190E0  F0 03 00 00 */	psq_st f0, 0(r3), 0, qr0
/* 8001C1A4 000190E4  EC A5 01 F2 */	fmuls f5, f5, f7
/* 8001C1A8 000190E8  D0 23 00 08 */	stfs f1, 8(r3)
/* 8001C1AC 000190EC  F0 43 00 0C */	psq_st f2, 12(r3), 0, qr0
/* 8001C1B0 000190F0  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 8001C1B4 000190F4  F0 83 00 18 */	psq_st f4, 24(r3), 0, qr0
/* 8001C1B8 000190F8  D0 A3 00 20 */	stfs f5, 0x20(r3)
/* 8001C1BC 000190FC  4E 80 00 20 */	blr 

.global J3DMtxProjConcat__FPA4_fPA4_fPA4_f
J3DMtxProjConcat__FPA4_fPA4_fPA4_f:
/* 8001C1C0 00019100  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 8001C1C4 00019104  E0 63 00 08 */	psq_l f3, 8(r3), 0, qr0
/* 8001C1C8 00019108  10 C2 14 20 */	ps_merge00 f6, f2, f2
/* 8001C1CC 0001910C  10 E2 14 E0 */	ps_merge11 f7, f2, f2
/* 8001C1D0 00019110  11 03 1C 20 */	ps_merge00 f8, f3, f3
/* 8001C1D4 00019114  11 23 1C E0 */	ps_merge11 f9, f3, f3
/* 8001C1D8 00019118  E1 44 00 00 */	psq_l f10, 0(r4), 0, qr0
/* 8001C1DC 0001911C  E1 64 00 10 */	psq_l f11, 16(r4), 0, qr0
/* 8001C1E0 00019120  E1 84 00 20 */	psq_l f12, 32(r4), 0, qr0
/* 8001C1E4 00019124  E1 A4 00 30 */	psq_l f13, 48(r4), 0, qr0
/* 8001C1E8 00019128  10 06 02 B2 */	ps_mul f0, f6, f10
/* 8001C1EC 0001912C  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 8001C1F0 00019130  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 8001C1F4 00019134  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 8001C1F8 00019138  F0 05 00 00 */	psq_st f0, 0(r5), 0, qr0
/* 8001C1FC 0001913C  E1 44 00 08 */	psq_l f10, 8(r4), 0, qr0
/* 8001C200 00019140  E1 64 00 18 */	psq_l f11, 24(r4), 0, qr0
/* 8001C204 00019144  E1 84 00 28 */	psq_l f12, 40(r4), 0, qr0
/* 8001C208 00019148  E1 A4 00 38 */	psq_l f13, 56(r4), 0, qr0
/* 8001C20C 0001914C  10 06 02 B2 */	ps_mul f0, f6, f10
/* 8001C210 00019150  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 8001C214 00019154  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 8001C218 00019158  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 8001C21C 0001915C  F0 05 00 08 */	psq_st f0, 8(r5), 0, qr0
/* 8001C220 00019160  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8001C224 00019164  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8001C228 00019168  10 C2 14 20 */	ps_merge00 f6, f2, f2
/* 8001C22C 0001916C  10 E2 14 E0 */	ps_merge11 f7, f2, f2
/* 8001C230 00019170  11 03 1C 20 */	ps_merge00 f8, f3, f3
/* 8001C234 00019174  11 23 1C E0 */	ps_merge11 f9, f3, f3
/* 8001C238 00019178  E1 44 00 00 */	psq_l f10, 0(r4), 0, qr0
/* 8001C23C 0001917C  E1 64 00 10 */	psq_l f11, 16(r4), 0, qr0
/* 8001C240 00019180  E1 84 00 20 */	psq_l f12, 32(r4), 0, qr0
/* 8001C244 00019184  E1 A4 00 30 */	psq_l f13, 48(r4), 0, qr0
/* 8001C248 00019188  10 06 02 B2 */	ps_mul f0, f6, f10
/* 8001C24C 0001918C  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 8001C250 00019190  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 8001C254 00019194  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 8001C258 00019198  F0 05 00 10 */	psq_st f0, 16(r5), 0, qr0
/* 8001C25C 0001919C  E1 44 00 08 */	psq_l f10, 8(r4), 0, qr0
/* 8001C260 000191A0  E1 64 00 18 */	psq_l f11, 24(r4), 0, qr0
/* 8001C264 000191A4  E1 84 00 28 */	psq_l f12, 40(r4), 0, qr0
/* 8001C268 000191A8  E1 A4 00 38 */	psq_l f13, 56(r4), 0, qr0
/* 8001C26C 000191AC  10 06 02 B2 */	ps_mul f0, f6, f10
/* 8001C270 000191B0  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 8001C274 000191B4  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 8001C278 000191B8  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 8001C27C 000191BC  F0 05 00 18 */	psq_st f0, 24(r5), 0, qr0
/* 8001C280 000191C0  E0 43 00 20 */	psq_l f2, 32(r3), 0, qr0
/* 8001C284 000191C4  E0 63 00 28 */	psq_l f3, 40(r3), 0, qr0
/* 8001C288 000191C8  10 C2 14 20 */	ps_merge00 f6, f2, f2
/* 8001C28C 000191CC  10 E2 14 E0 */	ps_merge11 f7, f2, f2
/* 8001C290 000191D0  11 03 1C 20 */	ps_merge00 f8, f3, f3
/* 8001C294 000191D4  11 23 1C E0 */	ps_merge11 f9, f3, f3
/* 8001C298 000191D8  E1 44 00 00 */	psq_l f10, 0(r4), 0, qr0
/* 8001C29C 000191DC  E1 64 00 10 */	psq_l f11, 16(r4), 0, qr0
/* 8001C2A0 000191E0  E1 84 00 20 */	psq_l f12, 32(r4), 0, qr0
/* 8001C2A4 000191E4  E1 A4 00 30 */	psq_l f13, 48(r4), 0, qr0
/* 8001C2A8 000191E8  10 06 02 B2 */	ps_mul f0, f6, f10
/* 8001C2AC 000191EC  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 8001C2B0 000191F0  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 8001C2B4 000191F4  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 8001C2B8 000191F8  F0 05 00 20 */	psq_st f0, 32(r5), 0, qr0
/* 8001C2BC 000191FC  E1 44 00 08 */	psq_l f10, 8(r4), 0, qr0
/* 8001C2C0 00019200  E1 64 00 18 */	psq_l f11, 24(r4), 0, qr0
/* 8001C2C4 00019204  E1 84 00 28 */	psq_l f12, 40(r4), 0, qr0
/* 8001C2C8 00019208  E1 A4 00 38 */	psq_l f13, 56(r4), 0, qr0
/* 8001C2CC 0001920C  10 06 02 B2 */	ps_mul f0, f6, f10
/* 8001C2D0 00019210  10 07 02 FA */	ps_madd f0, f7, f11, f0
/* 8001C2D4 00019214  10 08 03 3A */	ps_madd f0, f8, f12, f0
/* 8001C2D8 00019218  10 09 03 7A */	ps_madd f0, f9, f13, f0
/* 8001C2DC 0001921C  F0 05 00 28 */	psq_st f0, 40(r5), 0, qr0
/* 8001C2E0 00019220  4E 80 00 20 */	blr 

.global J3DPSMtx33Copy__FPA3_fPA3_f
J3DPSMtx33Copy__FPA3_fPA3_f:
/* 8001C2E4 00019224  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8001C2E8 00019228  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8001C2EC 0001922C  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8001C2F0 00019230  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8001C2F4 00019234  C0 83 00 20 */	lfs f4, 0x20(r3)
/* 8001C2F8 00019238  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 8001C2FC 0001923C  F0 24 00 08 */	psq_st f1, 8(r4), 0, qr0
/* 8001C300 00019240  F0 44 00 10 */	psq_st f2, 16(r4), 0, qr0
/* 8001C304 00019244  F0 64 00 18 */	psq_st f3, 24(r4), 0, qr0
/* 8001C308 00019248  D0 84 00 20 */	stfs f4, 0x20(r4)
/* 8001C30C 0001924C  4E 80 00 20 */	blr 

.global J3DPSMtx33CopyFrom34__FPA4_fPA3_f
J3DPSMtx33CopyFrom34__FPA4_fPA3_f:
/* 8001C310 00019250  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8001C314 00019254  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 8001C318 00019258  C0 23 00 08 */	lfs f1, 8(r3)
/* 8001C31C 0001925C  D0 24 00 08 */	stfs f1, 8(r4)
/* 8001C320 00019260  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8001C324 00019264  F0 44 00 0C */	psq_st f2, 12(r4), 0, qr0
/* 8001C328 00019268  C0 63 00 18 */	lfs f3, 0x18(r3)
/* 8001C32C 0001926C  D0 64 00 14 */	stfs f3, 0x14(r4)
/* 8001C330 00019270  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8001C334 00019274  F0 84 00 18 */	psq_st f4, 24(r4), 0, qr0
/* 8001C338 00019278  C0 A3 00 28 */	lfs f5, 0x28(r3)
/* 8001C33C 0001927C  D0 A4 00 20 */	stfs f5, 0x20(r4)
/* 8001C340 00019280  4E 80 00 20 */	blr 

.global J3DPSMtxArrayCopy__FPA4_fPA4_fUl
J3DPSMtxArrayCopy__FPA4_fPA4_fUl:
/* 8001C344 00019284  38 63 FF F8 */	addi r3, r3, -8
/* 8001C348 00019288  38 84 FF F8 */	addi r4, r4, -8
/* 8001C34C 0001928C  7C A9 03 A6 */	mtctr r5
lbl_8001C350:
/* 8001C350 00019290  E0 03 00 08 */	psq_l f0, 8(r3), 0, qr0
/* 8001C354 00019294  F0 04 00 08 */	psq_st f0, 8(r4), 0, qr0
/* 8001C358 00019298  E0 23 00 10 */	psq_l f1, 16(r3), 0, qr0
/* 8001C35C 0001929C  F0 24 00 10 */	psq_st f1, 16(r4), 0, qr0
/* 8001C360 000192A0  E0 43 00 18 */	psq_l f2, 24(r3), 0, qr0
/* 8001C364 000192A4  F0 44 00 18 */	psq_st f2, 24(r4), 0, qr0
/* 8001C368 000192A8  E0 63 00 20 */	psq_l f3, 32(r3), 0, qr0
/* 8001C36C 000192AC  F0 64 00 20 */	psq_st f3, 32(r4), 0, qr0
/* 8001C370 000192B0  E0 83 00 28 */	psq_l f4, 40(r3), 0, qr0
/* 8001C374 000192B4  F0 84 00 28 */	psq_st f4, 40(r4), 0, qr0
/* 8001C378 000192B8  E4 A3 00 30 */	psq_lu f5, 48(r3), 0, qr0
/* 8001C37C 000192BC  F4 A4 00 30 */	psq_stu f5, 48(r4), 0, qr0
/* 8001C380 000192C0  42 00 FF D0 */	bdnz lbl_8001C350
/* 8001C384 000192C4  4E 80 00 20 */	blr 

.global J3DMTXConcatArrayIndexedSrc__FPA4_CfPA3_A4_CfPCUsPA3_A4_fUl
J3DMTXConcatArrayIndexedSrc__FPA4_CfPA3_A4_CfPCUsPA3_A4_fUl:
/* 8001C388 000192C8  39 0D 80 18 */	addi r8, r13, Unit01@sda21
/* 8001C38C 000192CC  A0 05 00 00 */	lhz r0, 0(r5)
/* 8001C390 000192D0  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8001C394 000192D4  7C E9 03 A6 */	mtctr r7
/* 8001C398 000192D8  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8001C39C 000192DC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8001C3A0 000192E0  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8001C3A4 000192E4  10 C4 00 0C */	psq_lx f6, r4, r0, 0, qr0
/* 8001C3A8 000192E8  7C E4 02 14 */	add r7, r4, r0
/* 8001C3AC 000192EC  11 26 00 18 */	ps_muls0 f9, f6, f0
/* 8001C3B0 000192F0  E0 E7 00 10 */	psq_l f7, 16(r7), 0, qr0
/* 8001C3B4 000192F4  11 46 00 98 */	ps_muls0 f10, f6, f2
/* 8001C3B8 000192F8  11 66 01 18 */	ps_muls0 f11, f6, f4
/* 8001C3BC 000192FC  E1 07 00 20 */	psq_l f8, 32(r7), 0, qr0
/* 8001C3C0 00019300  11 27 48 1E */	ps_madds1 f9, f7, f0, f9
/* 8001C3C4 00019304  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8001C3C8 00019308  11 47 50 9E */	ps_madds1 f10, f7, f2, f10
/* 8001C3CC 0001930C  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8001C3D0 00019310  11 67 59 1E */	ps_madds1 f11, f7, f4, f11
/* 8001C3D4 00019314  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8001C3D8 00019318  11 28 48 5C */	ps_madds0 f9, f8, f1, f9
/* 8001C3DC 0001931C  E0 C7 00 08 */	psq_l f6, 8(r7), 0, qr0
/* 8001C3E0 00019320  11 48 50 DC */	ps_madds0 f10, f8, f3, f10
/* 8001C3E4 00019324  11 68 59 5C */	ps_madds0 f11, f8, f5, f11
/* 8001C3E8 00019328  E0 E7 00 18 */	psq_l f7, 24(r7), 0, qr0
/* 8001C3EC 0001932C  F1 26 00 00 */	psq_st f9, 0(r6), 0, qr0
/* 8001C3F0 00019330  11 06 00 18 */	ps_muls0 f8, f6, f0
/* 8001C3F4 00019334  11 26 00 98 */	ps_muls0 f9, f6, f2
/* 8001C3F8 00019338  11 86 01 18 */	ps_muls0 f12, f6, f4
/* 8001C3FC 0001933C  E0 C7 00 28 */	psq_l f6, 40(r7), 0, qr0
/* 8001C400 00019340  F1 46 00 10 */	psq_st f10, 16(r6), 0, qr0
/* 8001C404 00019344  11 07 40 1E */	ps_madds1 f8, f7, f0, f8
/* 8001C408 00019348  11 27 48 9E */	ps_madds1 f9, f7, f2, f9
/* 8001C40C 0001934C  11 87 61 1E */	ps_madds1 f12, f7, f4, f12
/* 8001C410 00019350  E1 A8 00 00 */	psq_l f13, 0(r8), 0, qr0
/* 8001C414 00019354  F1 66 00 20 */	psq_st f11, 32(r6), 0, qr0
/* 8001C418 00019358  48 00 00 04 */	b lbl_8001C41C
lbl_8001C41C:
/* 8001C41C 0001935C  48 00 00 04 */	b lbl_8001C420
lbl_8001C420:
/* 8001C420 00019360  11 06 40 5C */	ps_madds0 f8, f6, f1, f8
/* 8001C424 00019364  11 26 48 DC */	ps_madds0 f9, f6, f3, f9
/* 8001C428 00019368  11 86 61 5C */	ps_madds0 f12, f6, f5, f12
/* 8001C42C 0001936C  11 0D 40 7A */	ps_madd f8, f13, f1, f8
/* 8001C430 00019370  11 2D 48 FA */	ps_madd f9, f13, f3, f9
/* 8001C434 00019374  11 8D 61 7A */	ps_madd f12, f13, f5, f12
/* 8001C438 00019378  F1 06 00 08 */	psq_st f8, 8(r6), 0, qr0
/* 8001C43C 0001937C  F1 26 00 18 */	psq_st f9, 24(r6), 0, qr0
/* 8001C440 00019380  F1 86 00 28 */	psq_st f12, 40(r6), 0, qr0
/* 8001C444 00019384  42 40 00 78 */	bdz lbl_8001C4BC
/* 8001C448 00019388  A4 05 00 02 */	lhzu r0, 2(r5)
/* 8001C44C 0001938C  38 C6 00 30 */	addi r6, r6, 0x30
/* 8001C450 00019390  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8001C454 00019394  10 C4 00 0C */	psq_lx f6, r4, r0, 0, qr0
/* 8001C458 00019398  7C E4 02 14 */	add r7, r4, r0
/* 8001C45C 0001939C  11 26 00 18 */	ps_muls0 f9, f6, f0
/* 8001C460 000193A0  E0 E7 00 10 */	psq_l f7, 16(r7), 0, qr0
/* 8001C464 000193A4  11 46 00 98 */	ps_muls0 f10, f6, f2
/* 8001C468 000193A8  11 66 01 18 */	ps_muls0 f11, f6, f4
/* 8001C46C 000193AC  E1 07 00 20 */	psq_l f8, 32(r7), 0, qr0
/* 8001C470 000193B0  11 27 48 1E */	ps_madds1 f9, f7, f0, f9
/* 8001C474 000193B4  11 47 50 9E */	ps_madds1 f10, f7, f2, f10
/* 8001C478 000193B8  11 67 59 1E */	ps_madds1 f11, f7, f4, f11
/* 8001C47C 000193BC  E0 C7 00 08 */	psq_l f6, 8(r7), 0, qr0
/* 8001C480 000193C0  11 28 48 5C */	ps_madds0 f9, f8, f1, f9
/* 8001C484 000193C4  11 48 50 DC */	ps_madds0 f10, f8, f3, f10
/* 8001C488 000193C8  11 68 59 5C */	ps_madds0 f11, f8, f5, f11
/* 8001C48C 000193CC  E0 E7 00 18 */	psq_l f7, 24(r7), 0, qr0
/* 8001C490 000193D0  F1 26 00 00 */	psq_st f9, 0(r6), 0, qr0
/* 8001C494 000193D4  11 06 00 18 */	ps_muls0 f8, f6, f0
/* 8001C498 000193D8  11 26 00 98 */	ps_muls0 f9, f6, f2
/* 8001C49C 000193DC  11 86 01 18 */	ps_muls0 f12, f6, f4
/* 8001C4A0 000193E0  E0 C7 00 28 */	psq_l f6, 40(r7), 0, qr0
/* 8001C4A4 000193E4  F1 46 00 10 */	psq_st f10, 16(r6), 0, qr0
/* 8001C4A8 000193E8  11 07 40 1E */	ps_madds1 f8, f7, f0, f8
/* 8001C4AC 000193EC  11 27 48 9E */	ps_madds1 f9, f7, f2, f9
/* 8001C4B0 000193F0  11 87 61 1E */	ps_madds1 f12, f7, f4, f12
/* 8001C4B4 000193F4  F1 66 00 20 */	psq_st f11, 32(r6), 0, qr0
/* 8001C4B8 000193F8  4B FF FF 68 */	b lbl_8001C420
lbl_8001C4BC:
/* 8001C4BC 000193FC  4E 80 00 20 */	blr 

.global J3DPSMtxArrayConcat__FPA4_fPA4_fPA4_fUl
J3DPSMtxArrayConcat__FPA4_fPA4_fPA4_fUl:
/* 8001C4C0 00019400  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001C4C4 00019404  D9 C1 00 08 */	stfd f14, 8(r1)
/* 8001C4C8 00019408  3C E0 80 41 */	lis r7, Unit01@ha
/* 8001C4CC 0001940C  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 8001C4D0 00019410  38 E7 8A D8 */	addi r7, r7, Unit01@l
/* 8001C4D4 00019414  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8001C4D8 00019418  38 84 FF F8 */	addi r4, r4, -8
/* 8001C4DC 0001941C  38 A5 FF F8 */	addi r5, r5, -8
/* 8001C4E0 00019420  7C C9 03 A6 */	mtctr r6
lbl_8001C4E4:
/* 8001C4E4 00019424  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8001C4E8 00019428  E0 C4 00 08 */	psq_l f6, 8(r4), 0, qr0
/* 8001C4EC 0001942C  E0 E4 00 10 */	psq_l f7, 16(r4), 0, qr0
/* 8001C4F0 00019430  E1 04 00 18 */	psq_l f8, 24(r4), 0, qr0
/* 8001C4F4 00019434  11 86 00 18 */	ps_muls0 f12, f6, f0
/* 8001C4F8 00019438  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8001C4FC 0001943C  11 A7 00 18 */	ps_muls0 f13, f7, f0
/* 8001C500 00019440  E3 E7 00 00 */	psq_l f31, 0(r7), 0, qr0
/* 8001C504 00019444  11 C6 00 98 */	ps_muls0 f14, f6, f2
/* 8001C508 00019448  E1 24 00 20 */	psq_l f9, 32(r4), 0, qr0
/* 8001C50C 0001944C  11 E7 00 98 */	ps_muls0 f15, f7, f2
/* 8001C510 00019450  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8001C514 00019454  11 88 60 1E */	ps_madds1 f12, f8, f0, f12
/* 8001C518 00019458  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8001C51C 0001945C  11 C8 70 9E */	ps_madds1 f14, f8, f2, f14
/* 8001C520 00019460  E1 44 00 28 */	psq_l f10, 40(r4), 0, qr0
/* 8001C524 00019464  11 A9 68 1E */	ps_madds1 f13, f9, f0, f13
/* 8001C528 00019468  E5 64 00 30 */	psq_lu f11, 48(r4), 0, qr0
/* 8001C52C 0001946C  11 E9 78 9E */	ps_madds1 f15, f9, f2, f15
/* 8001C530 00019470  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8001C534 00019474  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8001C538 00019478  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 8001C53C 0001947C  11 AB 68 5C */	ps_madds0 f13, f11, f1, f13
/* 8001C540 00019480  11 CA 70 DC */	ps_madds0 f14, f10, f3, f14
/* 8001C544 00019484  11 EB 78 DC */	ps_madds0 f15, f11, f3, f15
/* 8001C548 00019488  F1 85 00 08 */	psq_st f12, 8(r5), 0, qr0
/* 8001C54C 0001948C  10 46 01 18 */	ps_muls0 f2, f6, f4
/* 8001C550 00019490  11 BF 68 5E */	ps_madds1 f13, f31, f1, f13
/* 8001C554 00019494  10 07 01 18 */	ps_muls0 f0, f7, f4
/* 8001C558 00019498  F1 C5 00 18 */	psq_st f14, 24(r5), 0, qr0
/* 8001C55C 0001949C  11 FF 78 DE */	ps_madds1 f15, f31, f3, f15
/* 8001C560 000194A0  F1 A5 00 10 */	psq_st f13, 16(r5), 0, qr0
/* 8001C564 000194A4  10 48 11 1E */	ps_madds1 f2, f8, f4, f2
/* 8001C568 000194A8  10 09 01 1E */	ps_madds1 f0, f9, f4, f0
/* 8001C56C 000194AC  10 4A 11 5C */	ps_madds0 f2, f10, f5, f2
/* 8001C570 000194B0  F1 E5 00 20 */	psq_st f15, 32(r5), 0, qr0
/* 8001C574 000194B4  10 0B 01 5C */	ps_madds0 f0, f11, f5, f0
/* 8001C578 000194B8  F0 45 00 28 */	psq_st f2, 40(r5), 0, qr0
/* 8001C57C 000194BC  10 1F 01 5E */	ps_madds1 f0, f31, f5, f0
/* 8001C580 000194C0  F4 05 00 30 */	psq_stu f0, 48(r5), 0, qr0
/* 8001C584 000194C4  42 00 FF 60 */	bdnz lbl_8001C4E4
/* 8001C588 000194C8  C9 C1 00 08 */	lfd f14, 8(r1)
/* 8001C58C 000194CC  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 8001C590 000194D0  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8001C594 000194D4  38 21 00 40 */	addi r1, r1, 0x40
/* 8001C598 000194D8  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global j3dDefaultTransformInfo
j3dDefaultTransformInfo:
	.incbin "baserom.dol", 0x3A5DB0, 0x20
.global j3dDefaultMtx
j3dDefaultMtx:
	.incbin "baserom.dol", 0x3A5DD0, 0x30
.global PSMulUnit01
PSMulUnit01:
	.incbin "baserom.dol", 0x3A5E00, 0x8

.section .sdata, "wa"  # 0x80408AC0 - 0x804097C0
Unit01:
	.incbin "baserom.dol", 0x3E3018, 0x8

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2871:
  .4byte 0
$$2872:
	.incbin "baserom.dol", 0x3E3EAC, 0x4
$$2912:
	.incbin "baserom.dol", 0x3E3EB0, 0x8
