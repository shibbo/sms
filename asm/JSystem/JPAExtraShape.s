.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__13JPAExtraShapeFPCUc
__ct__13JPAExtraShapeFPCUc:
/* 80080AE4 0007DA24  7C 08 02 A6 */	mflr r0
/* 80080AE8 0007DA28  3C A0 80 3B */	lis r5, __vt__12JPADataBlock@ha
/* 80080AEC 0007DA2C  90 01 00 04 */	stw r0, 4(r1)
/* 80080AF0 0007DA30  38 A5 CB F4 */	addi r5, r5, __vt__12JPADataBlock@l
/* 80080AF4 0007DA34  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80080AF8 0007DA38  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80080AFC 0007DA3C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80080B00 0007DA40  7C 9E 23 78 */	mr r30, r4
/* 80080B04 0007DA44  90 61 00 08 */	stw r3, 8(r1)
/* 80080B08 0007DA48  3C 60 80 3B */	lis r3, __vt__13JPAExtraShape@ha
/* 80080B0C 0007DA4C  38 03 CC E0 */	addi r0, r3, __vt__13JPAExtraShape@l
/* 80080B10 0007DA50  83 E1 00 08 */	lwz r31, 8(r1)
/* 80080B14 0007DA54  90 BF 00 00 */	stw r5, 0(r31)
/* 80080B18 0007DA58  90 1F 00 00 */	stw r0, 0(r31)
/* 80080B1C 0007DA5C  A8 64 00 14 */	lha r3, 0x14(r4)
/* 80080B20 0007DA60  4B FF 1E 95 */	bl JPAConvertFixToFloat__Fs
/* 80080B24 0007DA64  D0 3F 00 08 */	stfs f1, 8(r31)
/* 80080B28 0007DA68  A8 7E 00 16 */	lha r3, 0x16(r30)
/* 80080B2C 0007DA6C  4B FF 1E 89 */	bl JPAConvertFixToFloat__Fs
/* 80080B30 0007DA70  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 80080B34 0007DA74  A8 7E 00 18 */	lha r3, 0x18(r30)
/* 80080B38 0007DA78  4B FF 1E 7D */	bl JPAConvertFixToFloat__Fs
/* 80080B3C 0007DA7C  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 80080B40 0007DA80  A8 7E 00 1A */	lha r3, 0x1a(r30)
/* 80080B44 0007DA84  4B FF 1E 71 */	bl JPAConvertFixToFloat__Fs
/* 80080B48 0007DA88  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 80080B4C 0007DA8C  A8 7E 00 1C */	lha r3, 0x1c(r30)
/* 80080B50 0007DA90  4B FF 1E 65 */	bl JPAConvertFixToFloat__Fs
/* 80080B54 0007DA94  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 80080B58 0007DA98  88 1E 00 1E */	lbz r0, 0x1e(r30)
/* 80080B5C 0007DA9C  98 1F 00 78 */	stb r0, 0x78(r31)
/* 80080B60 0007DAA0  88 1E 00 1F */	lbz r0, 0x1f(r30)
/* 80080B64 0007DAA4  98 1F 00 79 */	stb r0, 0x79(r31)
/* 80080B68 0007DAA8  A8 7E 00 20 */	lha r3, 0x20(r30)
/* 80080B6C 0007DAAC  4B FF 1E 49 */	bl JPAConvertFixToFloat__Fs
/* 80080B70 0007DAB0  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 80080B74 0007DAB4  A8 7E 00 22 */	lha r3, 0x22(r30)
/* 80080B78 0007DAB8  4B FF 1E 3D */	bl JPAConvertFixToFloat__Fs
/* 80080B7C 0007DABC  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 80080B80 0007DAC0  A8 7E 00 24 */	lha r3, 0x24(r30)
/* 80080B84 0007DAC4  4B FF 1E 31 */	bl JPAConvertFixToFloat__Fs
/* 80080B88 0007DAC8  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 80080B8C 0007DACC  A8 7E 00 26 */	lha r3, 0x26(r30)
/* 80080B90 0007DAD0  4B FF 1E 25 */	bl JPAConvertFixToFloat__Fs
/* 80080B94 0007DAD4  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 80080B98 0007DAD8  C0 02 89 18 */	lfs f0, $$21509-_SDA2_BASE_(r2)
/* 80080B9C 0007DADC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80080BA0 0007DAE0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80080BA4 0007DAE4  41 82 00 18 */	beq lbl_80080BBC
/* 80080BA8 0007DAE8  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80080BAC 0007DAEC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80080BB0 0007DAF0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80080BB4 0007DAF4  EC 00 10 24 */	fdivs f0, f0, f2
/* 80080BB8 0007DAF8  48 00 00 08 */	b lbl_80080BC0
lbl_80080BBC:
/* 80080BBC 0007DAFC  C0 02 89 1C */	lfs f0, $$21510-_SDA2_BASE_(r2)
lbl_80080BC0:
/* 80080BC0 0007DB00  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80080BC4 0007DB04  80 61 00 08 */	lwz r3, 8(r1)
/* 80080BC8 0007DB08  C0 02 89 1C */	lfs f0, $$21510-_SDA2_BASE_(r2)
/* 80080BCC 0007DB0C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80080BD0 0007DB10  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80080BD4 0007DB14  41 82 00 18 */	beq lbl_80080BEC
/* 80080BD8 0007DB18  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 80080BDC 0007DB1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80080BE0 0007DB20  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80080BE4 0007DB24  EC 22 08 28 */	fsubs f1, f2, f1
/* 80080BE8 0007DB28  EC 01 00 24 */	fdivs f0, f1, f0
lbl_80080BEC:
/* 80080BEC 0007DB2C  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80080BF0 0007DB30  A8 7E 00 34 */	lha r3, 0x34(r30)
/* 80080BF4 0007DB34  4B FF 1D C1 */	bl JPAConvertFixToFloat__Fs
/* 80080BF8 0007DB38  83 E1 00 08 */	lwz r31, 8(r1)
/* 80080BFC 0007DB3C  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 80080C00 0007DB40  A8 7E 00 36 */	lha r3, 0x36(r30)
/* 80080C04 0007DB44  4B FF 1D B1 */	bl JPAConvertFixToFloat__Fs
/* 80080C08 0007DB48  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 80080C0C 0007DB4C  A8 7E 00 38 */	lha r3, 0x38(r30)
/* 80080C10 0007DB50  4B FF 1D A5 */	bl JPAConvertFixToFloat__Fs
/* 80080C14 0007DB54  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 80080C18 0007DB58  A8 7E 00 3A */	lha r3, 0x3a(r30)
/* 80080C1C 0007DB5C  4B FF 1D 99 */	bl JPAConvertFixToFloat__Fs
/* 80080C20 0007DB60  C0 02 89 20 */	lfs f0, $$21511-_SDA2_BASE_(r2)
/* 80080C24 0007DB64  EC 00 00 72 */	fmuls f0, f0, f1
/* 80080C28 0007DB68  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80080C2C 0007DB6C  A8 7E 00 3E */	lha r3, 0x3e(r30)
/* 80080C30 0007DB70  4B FF 1D 85 */	bl JPAConvertFixToFloat__Fs
/* 80080C34 0007DB74  C0 02 89 20 */	lfs f0, $$21511-_SDA2_BASE_(r2)
/* 80080C38 0007DB78  EC 00 00 72 */	fmuls f0, f0, f1
/* 80080C3C 0007DB7C  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80080C40 0007DB80  88 1E 00 40 */	lbz r0, 0x40(r30)
/* 80080C44 0007DB84  98 1F 00 7A */	stb r0, 0x7a(r31)
/* 80080C48 0007DB88  88 1E 00 41 */	lbz r0, 0x41(r30)
/* 80080C4C 0007DB8C  98 1F 00 7B */	stb r0, 0x7b(r31)
/* 80080C50 0007DB90  A8 1E 00 42 */	lha r0, 0x42(r30)
/* 80080C54 0007DB94  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 80080C58 0007DB98  A8 7E 00 44 */	lha r3, 0x44(r30)
/* 80080C5C 0007DB9C  4B FF 1D 59 */	bl JPAConvertFixToFloat__Fs
/* 80080C60 0007DBA0  C0 02 89 20 */	lfs f0, $$21511-_SDA2_BASE_(r2)
/* 80080C64 0007DBA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80080C68 0007DBA8  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80080C6C 0007DBAC  A8 7E 00 48 */	lha r3, 0x48(r30)
/* 80080C70 0007DBB0  4B FF 1D 45 */	bl JPAConvertFixToFloat__Fs
/* 80080C74 0007DBB4  C0 02 89 20 */	lfs f0, $$21511-_SDA2_BASE_(r2)
/* 80080C78 0007DBB8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80080C7C 0007DBBC  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80080C80 0007DBC0  88 1E 00 4A */	lbz r0, 0x4a(r30)
/* 80080C84 0007DBC4  98 1F 00 7C */	stb r0, 0x7c(r31)
/* 80080C88 0007DBC8  88 1E 00 4B */	lbz r0, 0x4b(r30)
/* 80080C8C 0007DBCC  98 1F 00 7D */	stb r0, 0x7d(r31)
/* 80080C90 0007DBD0  A8 1E 00 4C */	lha r0, 0x4c(r30)
/* 80080C94 0007DBD4  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 80080C98 0007DBD8  88 1E 00 4E */	lbz r0, 0x4e(r30)
/* 80080C9C 0007DBDC  98 1F 00 7E */	stb r0, 0x7e(r31)
/* 80080CA0 0007DBE0  C0 02 89 18 */	lfs f0, $$21509-_SDA2_BASE_(r2)
/* 80080CA4 0007DBE4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80080CA8 0007DBE8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80080CAC 0007DBEC  41 82 00 30 */	beq lbl_80080CDC
/* 80080CB0 0007DBF0  C0 42 89 1C */	lfs f2, $$21510-_SDA2_BASE_(r2)
/* 80080CB4 0007DBF4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80080CB8 0007DBF8  EC 02 00 28 */	fsubs f0, f2, f0
/* 80080CBC 0007DBFC  EC 00 08 24 */	fdivs f0, f0, f1
/* 80080CC0 0007DC00  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 80080CC4 0007DC04  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80080CC8 0007DC08  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80080CCC 0007DC0C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80080CD0 0007DC10  EC 01 00 24 */	fdivs f0, f1, f0
/* 80080CD4 0007DC14  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 80080CD8 0007DC18  48 00 00 10 */	b lbl_80080CE8
lbl_80080CDC:
/* 80080CDC 0007DC1C  C0 02 89 1C */	lfs f0, $$21510-_SDA2_BASE_(r2)
/* 80080CE0 0007DC20  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 80080CE4 0007DC24  D0 1F 00 50 */	stfs f0, 0x50(r31)
lbl_80080CE8:
/* 80080CE8 0007DC28  80 61 00 08 */	lwz r3, 8(r1)
/* 80080CEC 0007DC2C  C0 42 89 1C */	lfs f2, $$21510-_SDA2_BASE_(r2)
/* 80080CF0 0007DC30  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80080CF4 0007DC34  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 80080CF8 0007DC38  41 82 00 34 */	beq lbl_80080D2C
/* 80080CFC 0007DC3C  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 80080D00 0007DC40  EC 02 00 28 */	fsubs f0, f2, f0
/* 80080D04 0007DC44  EC 21 10 28 */	fsubs f1, f1, f2
/* 80080D08 0007DC48  EC 01 00 24 */	fdivs f0, f1, f0
/* 80080D0C 0007DC4C  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 80080D10 0007DC50  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 80080D14 0007DC54  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80080D18 0007DC58  EC 21 10 28 */	fsubs f1, f1, f2
/* 80080D1C 0007DC5C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80080D20 0007DC60  EC 01 00 24 */	fdivs f0, f1, f0
/* 80080D24 0007DC64  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 80080D28 0007DC68  48 00 00 0C */	b lbl_80080D34
lbl_80080D2C:
/* 80080D2C 0007DC6C  D0 43 00 5C */	stfs f2, 0x5c(r3)
/* 80080D30 0007DC70  D0 43 00 54 */	stfs f2, 0x54(r3)
lbl_80080D34:
/* 80080D34 0007DC74  A8 7E 00 5A */	lha r3, 0x5a(r30)
/* 80080D38 0007DC78  4B FF 1C 7D */	bl JPAConvertFixToFloat__Fs
/* 80080D3C 0007DC7C  83 E1 00 08 */	lwz r31, 8(r1)
/* 80080D40 0007DC80  D0 3F 00 60 */	stfs f1, 0x60(r31)
/* 80080D44 0007DC84  A8 7E 00 5C */	lha r3, 0x5c(r30)
/* 80080D48 0007DC88  4B FF 1C 6D */	bl JPAConvertFixToFloat__Fs
/* 80080D4C 0007DC8C  D0 3F 00 64 */	stfs f1, 0x64(r31)
/* 80080D50 0007DC90  A8 7E 00 5E */	lha r3, 0x5e(r30)
/* 80080D54 0007DC94  4B FF 1C 61 */	bl JPAConvertFixToFloat__Fs
/* 80080D58 0007DC98  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 80080D5C 0007DC9C  A8 7E 00 60 */	lha r3, 0x60(r30)
/* 80080D60 0007DCA0  4B FF 1C 55 */	bl JPAConvertFixToFloat__Fs
/* 80080D64 0007DCA4  D0 3F 00 6C */	stfs f1, 0x6c(r31)
/* 80080D68 0007DCA8  A8 7E 00 62 */	lha r3, 0x62(r30)
/* 80080D6C 0007DCAC  4B FF 1C 49 */	bl JPAConvertFixToFloat__Fs
/* 80080D70 0007DCB0  D0 3F 00 70 */	stfs f1, 0x70(r31)
/* 80080D74 0007DCB4  7F E3 FB 78 */	mr r3, r31
/* 80080D78 0007DCB8  88 1E 00 64 */	lbz r0, 0x64(r30)
/* 80080D7C 0007DCBC  98 1F 00 7F */	stb r0, 0x7f(r31)
/* 80080D80 0007DCC0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80080D84 0007DCC4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80080D88 0007DCC8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80080D8C 0007DCCC  38 21 00 18 */	addi r1, r1, 0x18
/* 80080D90 0007DCD0  7C 08 03 A6 */	mtlr r0
/* 80080D94 0007DCD4  4E 80 00 20 */	blr 

.global __dt__13JPAExtraShapeFv
__dt__13JPAExtraShapeFv:
/* 80080D98 0007DCD8  7C 08 02 A6 */	mflr r0
/* 80080D9C 0007DCDC  90 01 00 04 */	stw r0, 4(r1)
/* 80080DA0 0007DCE0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80080DA4 0007DCE4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80080DA8 0007DCE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80080DAC 0007DCEC  41 82 00 30 */	beq lbl_80080DDC
/* 80080DB0 0007DCF0  3C 60 80 3B */	lis r3, __vt__13JPAExtraShape@ha
/* 80080DB4 0007DCF4  38 03 CC E0 */	addi r0, r3, __vt__13JPAExtraShape@l
/* 80080DB8 0007DCF8  90 1F 00 00 */	stw r0, 0(r31)
/* 80080DBC 0007DCFC  41 82 00 10 */	beq lbl_80080DCC
/* 80080DC0 0007DD00  3C 60 80 3B */	lis r3, __vt__12JPADataBlock@ha
/* 80080DC4 0007DD04  38 03 CB F4 */	addi r0, r3, __vt__12JPADataBlock@l
/* 80080DC8 0007DD08  90 1F 00 00 */	stw r0, 0(r31)
lbl_80080DCC:
/* 80080DCC 0007DD0C  7C 80 07 35 */	extsh. r0, r4
/* 80080DD0 0007DD10  40 81 00 0C */	ble lbl_80080DDC
/* 80080DD4 0007DD14  7F E3 FB 78 */	mr r3, r31
/* 80080DD8 0007DD18  4B F8 BC D9 */	bl __dl__FPv
lbl_80080DDC:
/* 80080DDC 0007DD1C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80080DE0 0007DD20  7F E3 FB 78 */	mr r3, r31
/* 80080DE4 0007DD24  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80080DE8 0007DD28  38 21 00 18 */	addi r1, r1, 0x18
/* 80080DEC 0007DD2C  7C 08 03 A6 */	mtlr r0
/* 80080DF0 0007DD30  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__13JPAExtraShape
__vt__13JPAExtraShape:
	.incbin "baserom.dol", 0x3A9CE0, 0x10

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$21509:
	.incbin "baserom.dol", 0x3E4618, 0x4
$$21510:
	.incbin "baserom.dol", 0x3E461C, 0x4
$$21511:
	.incbin "baserom.dol", 0x3E4620, 0x8
