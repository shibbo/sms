.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global stateMachineUpper__6TMarioFv
stateMachineUpper__6TMarioFv:
/* 80141854 0013E794  7C 08 02 A6 */	mflr r0
/* 80141858 0013E798  90 01 00 04 */	stw r0, 4(r1)
/* 8014185C 0013E79C  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 80141860 0013E7A0  93 E1 00 74 */	stw r31, 0x74(r1)
/* 80141864 0013E7A4  7C 7F 1B 78 */	mr r31, r3
/* 80141868 0013E7A8  93 C1 00 70 */	stw r30, 0x70(r1)
/* 8014186C 0013E7AC  80 03 03 80 */	lwz r0, 0x380(r3)
/* 80141870 0013E7B0  2C 00 00 03 */	cmpwi r0, 3
/* 80141874 0013E7B4  41 82 02 28 */	beq lbl_80141A9C
/* 80141878 0013E7B8  40 80 00 1C */	bge lbl_80141894
/* 8014187C 0013E7BC  2C 00 00 01 */	cmpwi r0, 1
/* 80141880 0013E7C0  41 82 01 2C */	beq lbl_801419AC
/* 80141884 0013E7C4  40 80 01 8C */	bge lbl_80141A10
/* 80141888 0013E7C8  2C 00 00 00 */	cmpwi r0, 0
/* 8014188C 0013E7CC  40 80 00 18 */	bge lbl_801418A4
/* 80141890 0013E7D0  48 00 02 0C */	b lbl_80141A9C
lbl_80141894:
/* 80141894 0013E7D4  2C 00 00 05 */	cmpwi r0, 5
/* 80141898 0013E7D8  41 82 02 04 */	beq lbl_80141A9C
/* 8014189C 0013E7DC  40 80 02 00 */	bge lbl_80141A9C
/* 801418A0 0013E7E0  48 00 01 C8 */	b lbl_80141A68
lbl_801418A4:
/* 801418A4 0013E7E4  7F E3 FB 78 */	mr r3, r31
/* 801418A8 0013E7E8  48 00 02 25 */	bl checkPumpEnable__6TMarioFv
/* 801418AC 0013E7EC  2C 03 00 00 */	cmpwi r3, 0
/* 801418B0 0013E7F0  40 82 00 1C */	bne lbl_801418CC
/* 801418B4 0013E7F4  80 7F 03 A8 */	lwz r3, 0x3a8(r31)
/* 801418B8 0013E7F8  38 00 00 05 */	li r0, 5
/* 801418BC 0013E7FC  C0 02 9F 08 */	lfs f0, $$22245@sda21(r2)
/* 801418C0 0013E800  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801418C4 0013E804  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801418C8 0013E808  90 1F 03 80 */	stw r0, 0x380(r31)
lbl_801418CC:
/* 801418CC 0013E80C  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 801418D0 0013E810  C0 22 9F 08 */	lfs f1, $$22245@sda21(r2)
/* 801418D4 0013E814  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 801418D8 0013E818  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801418DC 0013E81C  40 82 00 14 */	bne lbl_801418F0
/* 801418E0 0013E820  38 00 00 01 */	li r0, 1
/* 801418E4 0013E824  90 1F 03 80 */	stw r0, 0x380(r31)
/* 801418E8 0013E828  A0 1F 30 84 */	lhz r0, 0x3084(r31)
/* 801418EC 0013E82C  B0 1F 03 7E */	sth r0, 0x37e(r31)
lbl_801418F0:
/* 801418F0 0013E830  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 801418F4 0013E834  54 00 03 9F */	rlwinm. r0, r0, 0, 0xe, 0xf
/* 801418F8 0013E838  41 82 00 0C */	beq lbl_80141904
/* 801418FC 0013E83C  38 00 00 01 */	li r0, 1
/* 80141900 0013E840  48 00 00 08 */	b lbl_80141908
lbl_80141904:
/* 80141904 0013E844  38 00 00 00 */	li r0, 0
lbl_80141908:
/* 80141908 0013E848  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8014190C 0013E84C  40 82 01 A8 */	bne lbl_80141AB4
/* 80141910 0013E850  83 DF 03 E4 */	lwz r30, 0x3e4(r31)
/* 80141914 0013E854  28 1E 00 00 */	cmplwi r30, 0
/* 80141918 0013E858  41 82 01 9C */	beq lbl_80141AB4
/* 8014191C 0013E85C  80 1E 1C 80 */	lwz r0, 0x1c80(r30)
/* 80141920 0013E860  2C 00 00 00 */	cmpwi r0, 0
/* 80141924 0013E864  40 82 00 0C */	bne lbl_80141930
/* 80141928 0013E868  38 00 00 00 */	li r0, 0
/* 8014192C 0013E86C  48 00 00 6C */	b lbl_80141998
lbl_80141930:
/* 80141930 0013E870  7F C3 F3 78 */	mr r3, r30
/* 80141934 0013E874  48 00 73 99 */	bl getCurrentNozzle__9TWaterGunCFv
/* 80141938 0013E878  81 83 03 64 */	lwz r12, 0x364(r3)
/* 8014193C 0013E87C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80141940 0013E880  7D 88 03 A6 */	mtlr r12
/* 80141944 0013E884  4E 80 00 21 */	blrl 
/* 80141948 0013E888  2C 03 00 01 */	cmpwi r3, 1
/* 8014194C 0013E88C  40 82 00 28 */	bne lbl_80141974
/* 80141950 0013E890  7F C3 F3 78 */	mr r3, r30
/* 80141954 0013E894  48 00 73 79 */	bl getCurrentNozzle__9TWaterGunCFv
/* 80141958 0013E898  88 03 03 85 */	lbz r0, 0x385(r3)
/* 8014195C 0013E89C  2C 00 00 01 */	cmpwi r0, 1
/* 80141960 0013E8A0  40 82 00 0C */	bne lbl_8014196C
/* 80141964 0013E8A4  38 00 00 01 */	li r0, 1
/* 80141968 0013E8A8  48 00 00 30 */	b lbl_80141998
lbl_8014196C:
/* 8014196C 0013E8AC  38 00 00 00 */	li r0, 0
/* 80141970 0013E8B0  48 00 00 28 */	b lbl_80141998
lbl_80141974:
/* 80141974 0013E8B4  7F C3 F3 78 */	mr r3, r30
/* 80141978 0013E8B8  48 00 73 55 */	bl getCurrentNozzle__9TWaterGunCFv
/* 8014197C 0013E8BC  C0 23 03 78 */	lfs f1, 0x378(r3)
/* 80141980 0013E8C0  C0 02 9F 08 */	lfs f0, $$22245@sda21(r2)
/* 80141984 0013E8C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80141988 0013E8C8  40 81 00 0C */	ble lbl_80141994
/* 8014198C 0013E8CC  38 00 00 01 */	li r0, 1
/* 80141990 0013E8D0  48 00 00 08 */	b lbl_80141998
lbl_80141994:
/* 80141994 0013E8D4  38 00 00 00 */	li r0, 0
lbl_80141998:
/* 80141998 0013E8D8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8014199C 0013E8DC  41 82 01 18 */	beq lbl_80141AB4
/* 801419A0 0013E8E0  7F E3 FB 78 */	mr r3, r31
/* 801419A4 0013E8E4  48 00 22 A9 */	bl emitSweatSometimes__6TMarioFv
/* 801419A8 0013E8E8  48 00 01 0C */	b lbl_80141AB4
lbl_801419AC:
/* 801419AC 0013E8EC  7F E3 FB 78 */	mr r3, r31
/* 801419B0 0013E8F0  48 00 01 1D */	bl checkPumpEnable__6TMarioFv
/* 801419B4 0013E8F4  2C 03 00 00 */	cmpwi r3, 0
/* 801419B8 0013E8F8  40 82 00 1C */	bne lbl_801419D4
/* 801419BC 0013E8FC  80 7F 03 A8 */	lwz r3, 0x3a8(r31)
/* 801419C0 0013E900  38 00 00 05 */	li r0, 5
/* 801419C4 0013E904  C0 02 9F 08 */	lfs f0, $$22245@sda21(r2)
/* 801419C8 0013E908  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801419CC 0013E90C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801419D0 0013E910  90 1F 03 80 */	stw r0, 0x380(r31)
lbl_801419D4:
/* 801419D4 0013E914  A0 7F 03 7E */	lhz r3, 0x37e(r31)
/* 801419D8 0013E918  28 03 00 00 */	cmplwi r3, 0
/* 801419DC 0013E91C  41 82 00 10 */	beq lbl_801419EC
/* 801419E0 0013E920  38 03 FF FF */	addi r0, r3, -1
/* 801419E4 0013E924  B0 1F 03 7E */	sth r0, 0x37e(r31)
/* 801419E8 0013E928  48 00 00 1C */	b lbl_80141A04
lbl_801419EC:
/* 801419EC 0013E92C  80 7F 03 A8 */	lwz r3, 0x3a8(r31)
/* 801419F0 0013E930  38 00 00 05 */	li r0, 5
/* 801419F4 0013E934  C0 02 9F 08 */	lfs f0, $$22245@sda21(r2)
/* 801419F8 0013E938  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801419FC 0013E93C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80141A00 0013E940  90 1F 03 80 */	stw r0, 0x380(r31)
lbl_80141A04:
/* 80141A04 0013E944  7F E3 FB 78 */	mr r3, r31
/* 80141A08 0013E948  48 00 02 91 */	bl checkPumping__6TMarioFv
/* 80141A0C 0013E94C  48 00 00 A8 */	b lbl_80141AB4
lbl_80141A10:
/* 80141A10 0013E950  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80141A14 0013E954  3C 03 80 00 */	addis r0, r3, 0x8000
/* 80141A18 0013E958  28 00 03 87 */	cmplwi r0, 0x387
/* 80141A1C 0013E95C  40 82 00 0C */	bne lbl_80141A28
/* 80141A20 0013E960  38 00 00 05 */	li r0, 5
/* 80141A24 0013E964  90 1F 03 80 */	stw r0, 0x380(r31)
lbl_80141A28:
/* 80141A28 0013E968  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80141A2C 0013E96C  28 00 00 00 */	cmplwi r0, 0
/* 80141A30 0013E970  40 82 00 0C */	bne lbl_80141A3C
/* 80141A34 0013E974  38 00 00 05 */	li r0, 5
/* 80141A38 0013E978  90 1F 03 80 */	stw r0, 0x380(r31)
lbl_80141A3C:
/* 80141A3C 0013E97C  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80141A40 0013E980  3C 03 FC 00 */	addis r0, r3, 0xfc00
/* 80141A44 0013E984  28 00 04 40 */	cmplwi r0, 0x440
/* 80141A48 0013E988  40 82 00 6C */	bne lbl_80141AB4
/* 80141A4C 0013E98C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80141A50 0013E990  C0 02 9F 0C */	lfs f0, $$22246@sda21(r2)
/* 80141A54 0013E994  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80141A58 0013E998  40 81 00 5C */	ble lbl_80141AB4
/* 80141A5C 0013E99C  7F E3 FB 78 */	mr r3, r31
/* 80141A60 0013E9A0  48 00 21 ED */	bl emitSweatSometimes__6TMarioFv
/* 80141A64 0013E9A4  48 00 00 50 */	b lbl_80141AB4
lbl_80141A68:
/* 80141A68 0013E9A8  80 7F 03 A8 */	lwz r3, 0x3a8(r31)
/* 80141A6C 0013E9AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80141A70 0013E9B0  88 03 00 19 */	lbz r0, 0x19(r3)
/* 80141A74 0013E9B4  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80141A78 0013E9B8  41 82 00 0C */	beq lbl_80141A84
/* 80141A7C 0013E9BC  38 00 00 01 */	li r0, 1
/* 80141A80 0013E9C0  48 00 00 08 */	b lbl_80141A88
lbl_80141A84:
/* 80141A84 0013E9C4  38 00 00 00 */	li r0, 0
lbl_80141A88:
/* 80141A88 0013E9C8  2C 00 00 00 */	cmpwi r0, 0
/* 80141A8C 0013E9CC  41 82 00 28 */	beq lbl_80141AB4
/* 80141A90 0013E9D0  38 00 00 05 */	li r0, 5
/* 80141A94 0013E9D4  90 1F 03 80 */	stw r0, 0x380(r31)
/* 80141A98 0013E9D8  48 00 00 1C */	b lbl_80141AB4
lbl_80141A9C:
/* 80141A9C 0013E9DC  7F E3 FB 78 */	mr r3, r31
/* 80141AA0 0013E9E0  48 00 00 2D */	bl checkPumpEnable__6TMarioFv
/* 80141AA4 0013E9E4  2C 03 00 00 */	cmpwi r3, 0
/* 80141AA8 0013E9E8  41 82 00 0C */	beq lbl_80141AB4
/* 80141AAC 0013E9EC  7F E3 FB 78 */	mr r3, r31
/* 80141AB0 0013E9F0  48 00 01 E9 */	bl checkPumping__6TMarioFv
lbl_80141AB4:
/* 80141AB4 0013E9F4  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80141AB8 0013E9F8  83 E1 00 74 */	lwz r31, 0x74(r1)
/* 80141ABC 0013E9FC  83 C1 00 70 */	lwz r30, 0x70(r1)
/* 80141AC0 0013EA00  7C 08 03 A6 */	mtlr r0
/* 80141AC4 0013EA04  38 21 00 78 */	addi r1, r1, 0x78
/* 80141AC8 0013EA08  4E 80 00 20 */	blr 

.global checkPumpEnable__6TMarioFv
checkPumpEnable__6TMarioFv:
/* 80141ACC 0013EA0C  7C 08 02 A6 */	mflr r0
/* 80141AD0 0013EA10  90 01 00 04 */	stw r0, 4(r1)
/* 80141AD4 0013EA14  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80141AD8 0013EA18  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80141ADC 0013EA1C  7C 7F 1B 78 */	mr r31, r3
/* 80141AE0 0013EA20  80 03 03 E4 */	lwz r0, 0x3e4(r3)
/* 80141AE4 0013EA24  28 00 00 00 */	cmplwi r0, 0
/* 80141AE8 0013EA28  41 82 01 88 */	beq lbl_80141C70
/* 80141AEC 0013EA2C  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 80141AF0 0013EA30  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80141AF4 0013EA34  41 82 00 0C */	beq lbl_80141B00
/* 80141AF8 0013EA38  38 00 00 01 */	li r0, 1
/* 80141AFC 0013EA3C  48 00 00 08 */	b lbl_80141B04
lbl_80141B00:
/* 80141B00 0013EA40  38 00 00 00 */	li r0, 0
lbl_80141B04:
/* 80141B04 0013EA44  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80141B08 0013EA48  41 82 01 68 */	beq lbl_80141C70
/* 80141B0C 0013EA4C  A0 9F 00 FA */	lhz r4, 0xfa(r31)
/* 80141B10 0013EA50  3C 60 80 3B */	lis r3, gMarioAnimeData@ha
/* 80141B14 0013EA54  38 03 5B 50 */	addi r0, r3, gMarioAnimeData@l
/* 80141B18 0013EA58  54 83 18 38 */	slwi r3, r4, 3
/* 80141B1C 0013EA5C  7C 60 1A 14 */	add r3, r0, r3
/* 80141B20 0013EA60  4B FE 67 B9 */	bl isPumpOK__15TMarioAnimeDataCFv
/* 80141B24 0013EA64  2C 03 00 00 */	cmpwi r3, 0
/* 80141B28 0013EA68  41 82 01 48 */	beq lbl_80141C70
/* 80141B2C 0013EA6C  7F E3 FB 78 */	mr r3, r31
/* 80141B30 0013EA70  4B FF 31 89 */	bl onYoshi__6TMarioCFv
/* 80141B34 0013EA74  2C 03 00 00 */	cmpwi r3, 0
/* 80141B38 0013EA78  40 82 01 38 */	bne lbl_80141C70
/* 80141B3C 0013EA7C  C0 7F 03 68 */	lfs f3, 0x368(r31)
/* 80141B40 0013EA80  C0 02 9F 08 */	lfs f0, $$22245@sda21(r2)
/* 80141B44 0013EA84  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80141B48 0013EA88  40 81 00 0C */	ble lbl_80141B54
/* 80141B4C 0013EA8C  38 00 00 01 */	li r0, 1
/* 80141B50 0013EA90  48 00 00 08 */	b lbl_80141B58
lbl_80141B54:
/* 80141B54 0013EA94  38 00 00 00 */	li r0, 0
lbl_80141B58:
/* 80141B58 0013EA98  2C 00 00 00 */	cmpwi r0, 0
/* 80141B5C 0013EA9C  41 82 00 34 */	beq lbl_80141B90
/* 80141B60 0013EAA0  A8 7F 24 28 */	lha r3, 0x2428(r31)
/* 80141B64 0013EAA4  3C 00 43 30 */	lis r0, 0x4330
/* 80141B68 0013EAA8  C8 42 9F 10 */	lfd f2, $$22314@sda21(r2)
/* 80141B6C 0013EAAC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80141B70 0013EAB0  C0 1F 24 C8 */	lfs f0, 0x24c8(r31)
/* 80141B74 0013EAB4  90 61 00 44 */	stw r3, 0x44(r1)
/* 80141B78 0013EAB8  90 01 00 40 */	stw r0, 0x40(r1)
/* 80141B7C 0013EABC  C8 21 00 40 */	lfd f1, 0x40(r1)
/* 80141B80 0013EAC0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80141B84 0013EAC4  EC 23 08 24 */	fdivs f1, f3, f1
/* 80141B88 0013EAC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80141B8C 0013EACC  41 81 00 E4 */	bgt lbl_80141C70
lbl_80141B90:
/* 80141B90 0013EAD0  80 1F 03 80 */	lwz r0, 0x380(r31)
/* 80141B94 0013EAD4  28 00 00 04 */	cmplwi r0, 4
/* 80141B98 0013EAD8  41 82 00 D8 */	beq lbl_80141C70
/* 80141B9C 0013EADC  28 00 00 03 */	cmplwi r0, 3
/* 80141BA0 0013EAE0  41 82 00 D0 */	beq lbl_80141C70
/* 80141BA4 0013EAE4  28 00 00 02 */	cmplwi r0, 2
/* 80141BA8 0013EAE8  41 82 00 C8 */	beq lbl_80141C70
/* 80141BAC 0013EAEC  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 80141BB0 0013EAF0  28 00 08 8D */	cmplwi r0, 0x88d
/* 80141BB4 0013EAF4  40 82 00 18 */	bne lbl_80141BCC
/* 80141BB8 0013EAF8  80 7F 03 E4 */	lwz r3, 0x3e4(r31)
/* 80141BBC 0013EAFC  48 00 71 11 */	bl getCurrentNozzle__9TWaterGunCFv
/* 80141BC0 0013EB00  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80141BC4 0013EB04  28 00 00 01 */	cmplwi r0, 1
/* 80141BC8 0013EB08  41 82 00 A8 */	beq lbl_80141C70
lbl_80141BCC:
/* 80141BCC 0013EB0C  80 7F 03 E4 */	lwz r3, 0x3e4(r31)
/* 80141BD0 0013EB10  48 00 70 FD */	bl getCurrentNozzle__9TWaterGunCFv
/* 80141BD4 0013EB14  81 83 03 64 */	lwz r12, 0x364(r3)
/* 80141BD8 0013EB18  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80141BDC 0013EB1C  7D 88 03 A6 */	mtlr r12
/* 80141BE0 0013EB20  4E 80 00 21 */	blrl 
/* 80141BE4 0013EB24  2C 03 00 01 */	cmpwi r3, 1
/* 80141BE8 0013EB28  40 82 00 18 */	bne lbl_80141C00
/* 80141BEC 0013EB2C  80 7F 03 E4 */	lwz r3, 0x3e4(r31)
/* 80141BF0 0013EB30  48 00 70 DD */	bl getCurrentNozzle__9TWaterGunCFv
/* 80141BF4 0013EB34  88 03 03 85 */	lbz r0, 0x385(r3)
/* 80141BF8 0013EB38  2C 00 00 02 */	cmpwi r0, 2
/* 80141BFC 0013EB3C  41 82 00 74 */	beq lbl_80141C70
lbl_80141C00:
/* 80141C00 0013EB40  80 7F 03 E4 */	lwz r3, 0x3e4(r31)
/* 80141C04 0013EB44  C0 02 9F 08 */	lfs f0, $$22245@sda21(r2)
/* 80141C08 0013EB48  C0 23 1D 00 */	lfs f1, 0x1d00(r3)
/* 80141C0C 0013EB4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80141C10 0013EB50  40 80 00 0C */	bge lbl_80141C1C
/* 80141C14 0013EB54  38 00 00 01 */	li r0, 1
/* 80141C18 0013EB58  48 00 00 08 */	b lbl_80141C20
lbl_80141C1C:
/* 80141C1C 0013EB5C  38 00 00 00 */	li r0, 0
lbl_80141C20:
/* 80141C20 0013EB60  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80141C24 0013EB64  40 82 00 4C */	bne lbl_80141C70
/* 80141C28 0013EB68  C0 02 9F 08 */	lfs f0, $$22245@sda21(r2)
/* 80141C2C 0013EB6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80141C30 0013EB70  40 81 00 0C */	ble lbl_80141C3C
/* 80141C34 0013EB74  38 00 00 01 */	li r0, 1
/* 80141C38 0013EB78  48 00 00 08 */	b lbl_80141C40
lbl_80141C3C:
/* 80141C3C 0013EB7C  38 00 00 00 */	li r0, 0
lbl_80141C40:
/* 80141C40 0013EB80  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80141C44 0013EB84  40 82 00 2C */	bne lbl_80141C70
/* 80141C48 0013EB88  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 80141C4C 0013EB8C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80141C50 0013EB90  41 82 00 0C */	beq lbl_80141C5C
/* 80141C54 0013EB94  38 00 00 01 */	li r0, 1
/* 80141C58 0013EB98  48 00 00 08 */	b lbl_80141C60
lbl_80141C5C:
/* 80141C5C 0013EB9C  38 00 00 00 */	li r0, 0
lbl_80141C60:
/* 80141C60 0013EBA0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80141C64 0013EBA4  40 82 00 0C */	bne lbl_80141C70
/* 80141C68 0013EBA8  38 60 00 01 */	li r3, 1
/* 80141C6C 0013EBAC  48 00 00 18 */	b lbl_80141C84
lbl_80141C70:
/* 80141C70 0013EBB0  38 00 00 05 */	li r0, 5
/* 80141C74 0013EBB4  90 1F 03 80 */	stw r0, 0x380(r31)
/* 80141C78 0013EBB8  38 00 00 00 */	li r0, 0
/* 80141C7C 0013EBBC  38 60 00 00 */	li r3, 0
/* 80141C80 0013EBC0  B0 1F 03 7E */	sth r0, 0x37e(r31)
lbl_80141C84:
/* 80141C84 0013EBC4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80141C88 0013EBC8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80141C8C 0013EBCC  38 21 00 50 */	addi r1, r1, 0x50
/* 80141C90 0013EBD0  7C 08 03 A6 */	mtlr r0
/* 80141C94 0013EBD4  4E 80 00 20 */	blr 

.global checkPumping__6TMarioFv
checkPumping__6TMarioFv:
/* 80141C98 0013EBD8  7C 08 02 A6 */	mflr r0
/* 80141C9C 0013EBDC  90 01 00 04 */	stw r0, 4(r1)
/* 80141CA0 0013EBE0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80141CA4 0013EBE4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80141CA8 0013EBE8  7C 7F 1B 78 */	mr r31, r3
/* 80141CAC 0013EBEC  80 63 01 08 */	lwz r3, 0x108(r3)
/* 80141CB0 0013EBF0  C0 02 9F 08 */	lfs f0, $$22245@sda21(r2)
/* 80141CB4 0013EBF4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80141CB8 0013EBF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80141CBC 0013EBFC  40 81 00 20 */	ble lbl_80141CDC
/* 80141CC0 0013EC00  80 1F 03 80 */	lwz r0, 0x380(r31)
/* 80141CC4 0013EC04  28 00 00 00 */	cmplwi r0, 0
/* 80141CC8 0013EC08  41 82 00 14 */	beq lbl_80141CDC
/* 80141CCC 0013EC0C  38 00 00 00 */	li r0, 0
/* 80141CD0 0013EC10  90 1F 03 80 */	stw r0, 0x380(r31)
/* 80141CD4 0013EC14  B0 1F 03 7E */	sth r0, 0x37e(r31)
/* 80141CD8 0013EC18  48 00 00 C4 */	b lbl_80141D9C
lbl_80141CDC:
/* 80141CDC 0013EC1C  80 0D 98 B8 */	lwz r0, gpMarioOriginal@sda21(r13)
/* 80141CE0 0013EC20  7C 00 F8 40 */	cmplw r0, r31
/* 80141CE4 0013EC24  40 82 00 3C */	bne lbl_80141D20
/* 80141CE8 0013EC28  80 6D A8 B0 */	lwz r3, gpCamera@sda21(r13)
/* 80141CEC 0013EC2C  80 83 00 50 */	lwz r4, 0x50(r3)
/* 80141CF0 0013EC30  48 22 17 11 */	bl isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
/* 80141CF4 0013EC34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80141CF8 0013EC38  41 82 00 28 */	beq lbl_80141D20
/* 80141CFC 0013EC3C  7F E3 FB 78 */	mr r3, r31
/* 80141D00 0013EC40  4B FF FD CD */	bl checkPumpEnable__6TMarioFv
/* 80141D04 0013EC44  2C 03 00 00 */	cmpwi r3, 0
/* 80141D08 0013EC48  41 82 00 18 */	beq lbl_80141D20
/* 80141D0C 0013EC4C  38 00 00 01 */	li r0, 1
/* 80141D10 0013EC50  90 1F 03 80 */	stw r0, 0x380(r31)
/* 80141D14 0013EC54  38 00 00 00 */	li r0, 0
/* 80141D18 0013EC58  B0 1F 03 7E */	sth r0, 0x37e(r31)
/* 80141D1C 0013EC5C  48 00 00 80 */	b lbl_80141D9C
lbl_80141D20:
/* 80141D20 0013EC60  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80141D24 0013EC64  3C 03 FF 80 */	addis r0, r3, 0xff80
/* 80141D28 0013EC68  28 00 04 47 */	cmplwi r0, 0x447
/* 80141D2C 0013EC6C  40 82 00 18 */	bne lbl_80141D44
/* 80141D30 0013EC70  38 00 00 01 */	li r0, 1
/* 80141D34 0013EC74  90 1F 03 80 */	stw r0, 0x380(r31)
/* 80141D38 0013EC78  38 00 00 00 */	li r0, 0
/* 80141D3C 0013EC7C  B0 1F 03 7E */	sth r0, 0x37e(r31)
/* 80141D40 0013EC80  48 00 00 5C */	b lbl_80141D9C
lbl_80141D44:
/* 80141D44 0013EC84  3C 03 F4 00 */	addis r0, r3, 0xf400
/* 80141D48 0013EC88  28 00 82 20 */	cmplwi r0, 0x8220
/* 80141D4C 0013EC8C  40 82 00 24 */	bne lbl_80141D70
/* 80141D50 0013EC90  80 1F 03 80 */	lwz r0, 0x380(r31)
/* 80141D54 0013EC94  28 00 00 05 */	cmplwi r0, 5
/* 80141D58 0013EC98  40 82 00 18 */	bne lbl_80141D70
/* 80141D5C 0013EC9C  38 00 00 01 */	li r0, 1
/* 80141D60 0013ECA0  90 1F 03 80 */	stw r0, 0x380(r31)
/* 80141D64 0013ECA4  38 00 00 00 */	li r0, 0
/* 80141D68 0013ECA8  B0 1F 03 7E */	sth r0, 0x37e(r31)
/* 80141D6C 0013ECAC  48 00 00 30 */	b lbl_80141D9C
lbl_80141D70:
/* 80141D70 0013ECB0  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 80141D74 0013ECB4  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80141D78 0013ECB8  41 82 00 0C */	beq lbl_80141D84
/* 80141D7C 0013ECBC  38 00 00 01 */	li r0, 1
/* 80141D80 0013ECC0  48 00 00 08 */	b lbl_80141D88
lbl_80141D84:
/* 80141D84 0013ECC4  38 00 00 00 */	li r0, 0
lbl_80141D88:
/* 80141D88 0013ECC8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80141D8C 0013ECCC  41 82 00 10 */	beq lbl_80141D9C
/* 80141D90 0013ECD0  38 00 00 00 */	li r0, 0
/* 80141D94 0013ECD4  90 1F 03 80 */	stw r0, 0x380(r31)
/* 80141D98 0013ECD8  B0 1F 03 7E */	sth r0, 0x37e(r31)
lbl_80141D9C:
/* 80141D9C 0013ECDC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80141DA0 0013ECE0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80141DA4 0013ECE4  38 21 00 18 */	addi r1, r1, 0x18
/* 80141DA8 0013ECE8  7C 08 03 A6 */	mtlr r0
/* 80141DAC 0013ECEC  4E 80 00 20 */	blr 

.global __sinit_MarioUpper_cpp
__sinit_MarioUpper_cpp:
/* 80141DB0 0013ECF0  7C 08 02 A6 */	mflr r0
/* 80141DB4 0013ECF4  3C 60 80 3F */	lis r3, $$22152@ha
/* 80141DB8 0013ECF8  90 01 00 04 */	stw r0, 4(r1)
/* 80141DBC 0013ECFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80141DC0 0013ED00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80141DC4 0013ED04  3B E3 35 A8 */	addi r31, r3, $$22152@l
/* 80141DC8 0013ED08  88 0D 97 CC */	lbz r0, __init__smList__15JALList$$05MSBgm$$1@sda21(r13)
/* 80141DCC 0013ED0C  7C 00 07 75 */	extsb. r0, r0
/* 80141DD0 0013ED10  40 82 00 28 */	bne lbl_80141DF8
/* 80141DD4 0013ED14  38 6D 97 A8 */	addi r3, r13, smList__15JALList$$05MSBgm$$1@sda21
/* 80141DD8 0013ED18  4B EC CE 5D */	bl initiate__10JSUPtrListFv
/* 80141DDC 0013ED1C  3C 60 80 0E */	lis r3, __dt__15JSUList$$05MSBgm$$1Fv@ha
/* 80141DE0 0013ED20  38 83 6A 44 */	addi r4, r3, __dt__15JSUList$$05MSBgm$$1Fv@l
/* 80141DE4 0013ED24  38 6D 97 A8 */	addi r3, r13, smList__15JALList$$05MSBgm$$1@sda21
/* 80141DE8 0013ED28  38 BF 00 00 */	addi r5, r31, 0
/* 80141DEC 0013ED2C  4B F4 09 3D */	bl __register_global_object
/* 80141DF0 0013ED30  38 00 00 01 */	li r0, 1
/* 80141DF4 0013ED34  98 0D 97 CC */	stb r0, __init__smList__15JALList$$05MSBgm$$1@sda21(r13)
lbl_80141DF8:
/* 80141DF8 0013ED38  88 0D 97 CD */	lbz r0, __init__smList__24JALList$$013MSSetSoundGrp$$1@sda21(r13)
/* 80141DFC 0013ED3C  7C 00 07 75 */	extsb. r0, r0
/* 80141E00 0013ED40  40 82 00 28 */	bne lbl_80141E28
/* 80141E04 0013ED44  38 6D 97 B4 */	addi r3, r13, smList__24JALList$$013MSSetSoundGrp$$1@sda21
/* 80141E08 0013ED48  4B EC CE 2D */	bl initiate__10JSUPtrListFv
/* 80141E0C 0013ED4C  3C 60 80 0E */	lis r3, __dt__24JSUList$$013MSSetSoundGrp$$1Fv@ha
/* 80141E10 0013ED50  38 83 69 EC */	addi r4, r3, __dt__24JSUList$$013MSSetSoundGrp$$1Fv@l
/* 80141E14 0013ED54  38 6D 97 B4 */	addi r3, r13, smList__24JALList$$013MSSetSoundGrp$$1@sda21
/* 80141E18 0013ED58  38 BF 00 0C */	addi r5, r31, 0xc
/* 80141E1C 0013ED5C  4B F4 09 0D */	bl __register_global_object
/* 80141E20 0013ED60  38 00 00 01 */	li r0, 1
/* 80141E24 0013ED64  98 0D 97 CD */	stb r0, __init__smList__24JALList$$013MSSetSoundGrp$$1@sda21(r13)
lbl_80141E28:
/* 80141E28 0013ED68  88 0D 97 CE */	lbz r0, __init__smList__21JALList$$010MSSetSound$$1@sda21(r13)
/* 80141E2C 0013ED6C  7C 00 07 75 */	extsb. r0, r0
/* 80141E30 0013ED70  40 82 00 28 */	bne lbl_80141E58
/* 80141E34 0013ED74  38 6D 97 C0 */	addi r3, r13, smList__21JALList$$010MSSetSound$$1@sda21
/* 80141E38 0013ED78  4B EC CD FD */	bl initiate__10JSUPtrListFv
/* 80141E3C 0013ED7C  3C 60 80 0E */	lis r3, __dt__21JSUList$$010MSSetSound$$1Fv@ha
/* 80141E40 0013ED80  38 83 69 94 */	addi r4, r3, __dt__21JSUList$$010MSSetSound$$1Fv@l
/* 80141E44 0013ED84  38 6D 97 C0 */	addi r3, r13, smList__21JALList$$010MSSetSound$$1@sda21
/* 80141E48 0013ED88  38 BF 00 18 */	addi r5, r31, 0x18
/* 80141E4C 0013ED8C  4B F4 08 DD */	bl __register_global_object
/* 80141E50 0013ED90  38 00 00 01 */	li r0, 1
/* 80141E54 0013ED94  98 0D 97 CE */	stb r0, __init__smList__21JALList$$010MSSetSound$$1@sda21(r13)
lbl_80141E58:
/* 80141E58 0013ED98  88 0D 8F 8C */	lbz r0, __init__smList__26JALList$$015JALSeModEffDGrp$$1@sda21(r13)
/* 80141E5C 0013ED9C  7C 00 07 75 */	extsb. r0, r0
/* 80141E60 0013EDA0  40 82 00 28 */	bne lbl_80141E88
/* 80141E64 0013EDA4  38 6D 8E FC */	addi r3, r13, smList__26JALList$$015JALSeModEffDGrp$$1@sda21
/* 80141E68 0013EDA8  4B EC CD CD */	bl initiate__10JSUPtrListFv
/* 80141E6C 0013EDAC  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModEffDGrp$$1Fv@ha
/* 80141E70 0013EDB0  38 83 A8 0C */	addi r4, r3, __dt__26JSUList$$015JALSeModEffDGrp$$1Fv@l
/* 80141E74 0013EDB4  38 6D 8E FC */	addi r3, r13, smList__26JALList$$015JALSeModEffDGrp$$1@sda21
/* 80141E78 0013EDB8  38 BF 00 24 */	addi r5, r31, 0x24
/* 80141E7C 0013EDBC  4B F4 08 AD */	bl __register_global_object
/* 80141E80 0013EDC0  38 00 00 01 */	li r0, 1
/* 80141E84 0013EDC4  98 0D 8F 8C */	stb r0, __init__smList__26JALList$$015JALSeModEffDGrp$$1@sda21(r13)
lbl_80141E88:
/* 80141E88 0013EDC8  88 0D 8F 8D */	lbz r0, __init__smList__26JALList$$015JALSeModPitDGrp$$1@sda21(r13)
/* 80141E8C 0013EDCC  7C 00 07 75 */	extsb. r0, r0
/* 80141E90 0013EDD0  40 82 00 28 */	bne lbl_80141EB8
/* 80141E94 0013EDD4  38 6D 8F 08 */	addi r3, r13, smList__26JALList$$015JALSeModPitDGrp$$1@sda21
/* 80141E98 0013EDD8  4B EC CD 9D */	bl initiate__10JSUPtrListFv
/* 80141E9C 0013EDDC  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModPitDGrp$$1Fv@ha
/* 80141EA0 0013EDE0  38 83 A7 B4 */	addi r4, r3, __dt__26JSUList$$015JALSeModPitDGrp$$1Fv@l
/* 80141EA4 0013EDE4  38 6D 8F 08 */	addi r3, r13, smList__26JALList$$015JALSeModPitDGrp$$1@sda21
/* 80141EA8 0013EDE8  38 BF 00 30 */	addi r5, r31, 0x30
/* 80141EAC 0013EDEC  4B F4 08 7D */	bl __register_global_object
/* 80141EB0 0013EDF0  38 00 00 01 */	li r0, 1
/* 80141EB4 0013EDF4  98 0D 8F 8D */	stb r0, __init__smList__26JALList$$015JALSeModPitDGrp$$1@sda21(r13)
lbl_80141EB8:
/* 80141EB8 0013EDF8  88 0D 8F 8E */	lbz r0, __init__smList__26JALList$$015JALSeModVolDGrp$$1@sda21(r13)
/* 80141EBC 0013EDFC  7C 00 07 75 */	extsb. r0, r0
/* 80141EC0 0013EE00  40 82 00 28 */	bne lbl_80141EE8
/* 80141EC4 0013EE04  38 6D 8F 14 */	addi r3, r13, smList__26JALList$$015JALSeModVolDGrp$$1@sda21
/* 80141EC8 0013EE08  4B EC CD 6D */	bl initiate__10JSUPtrListFv
/* 80141ECC 0013EE0C  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModVolDGrp$$1Fv@ha
/* 80141ED0 0013EE10  38 83 A7 5C */	addi r4, r3, __dt__26JSUList$$015JALSeModVolDGrp$$1Fv@l
/* 80141ED4 0013EE14  38 6D 8F 14 */	addi r3, r13, smList__26JALList$$015JALSeModVolDGrp$$1@sda21
/* 80141ED8 0013EE18  38 BF 00 3C */	addi r5, r31, 0x3c
/* 80141EDC 0013EE1C  4B F4 08 4D */	bl __register_global_object
/* 80141EE0 0013EE20  38 00 00 01 */	li r0, 1
/* 80141EE4 0013EE24  98 0D 8F 8E */	stb r0, __init__smList__26JALList$$015JALSeModVolDGrp$$1@sda21(r13)
lbl_80141EE8:
/* 80141EE8 0013EE28  88 0D 8F 8F */	lbz r0, __init__smList__26JALList$$015JALSeModEffFGrp$$1@sda21(r13)
/* 80141EEC 0013EE2C  7C 00 07 75 */	extsb. r0, r0
/* 80141EF0 0013EE30  40 82 00 28 */	bne lbl_80141F18
/* 80141EF4 0013EE34  38 6D 8F 20 */	addi r3, r13, smList__26JALList$$015JALSeModEffFGrp$$1@sda21
/* 80141EF8 0013EE38  4B EC CD 3D */	bl initiate__10JSUPtrListFv
/* 80141EFC 0013EE3C  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModEffFGrp$$1Fv@ha
/* 80141F00 0013EE40  38 83 A7 04 */	addi r4, r3, __dt__26JSUList$$015JALSeModEffFGrp$$1Fv@l
/* 80141F04 0013EE44  38 6D 8F 20 */	addi r3, r13, smList__26JALList$$015JALSeModEffFGrp$$1@sda21
/* 80141F08 0013EE48  38 BF 00 48 */	addi r5, r31, 0x48
/* 80141F0C 0013EE4C  4B F4 08 1D */	bl __register_global_object
/* 80141F10 0013EE50  38 00 00 01 */	li r0, 1
/* 80141F14 0013EE54  98 0D 8F 8F */	stb r0, __init__smList__26JALList$$015JALSeModEffFGrp$$1@sda21(r13)
lbl_80141F18:
/* 80141F18 0013EE58  88 0D 8F 90 */	lbz r0, __init__smList__26JALList$$015JALSeModPitFGrp$$1@sda21(r13)
/* 80141F1C 0013EE5C  7C 00 07 75 */	extsb. r0, r0
/* 80141F20 0013EE60  40 82 00 28 */	bne lbl_80141F48
/* 80141F24 0013EE64  38 6D 8F 2C */	addi r3, r13, smList__26JALList$$015JALSeModPitFGrp$$1@sda21
/* 80141F28 0013EE68  4B EC CD 0D */	bl initiate__10JSUPtrListFv
/* 80141F2C 0013EE6C  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModPitFGrp$$1Fv@ha
/* 80141F30 0013EE70  38 83 A6 AC */	addi r4, r3, __dt__26JSUList$$015JALSeModPitFGrp$$1Fv@l
/* 80141F34 0013EE74  38 6D 8F 2C */	addi r3, r13, smList__26JALList$$015JALSeModPitFGrp$$1@sda21
/* 80141F38 0013EE78  38 BF 00 54 */	addi r5, r31, 0x54
/* 80141F3C 0013EE7C  4B F4 07 ED */	bl __register_global_object
/* 80141F40 0013EE80  38 00 00 01 */	li r0, 1
/* 80141F44 0013EE84  98 0D 8F 90 */	stb r0, __init__smList__26JALList$$015JALSeModPitFGrp$$1@sda21(r13)
lbl_80141F48:
/* 80141F48 0013EE88  88 0D 8F 91 */	lbz r0, __init__smList__26JALList$$015JALSeModVolFGrp$$1@sda21(r13)
/* 80141F4C 0013EE8C  7C 00 07 75 */	extsb. r0, r0
/* 80141F50 0013EE90  40 82 00 28 */	bne lbl_80141F78
/* 80141F54 0013EE94  38 6D 8F 38 */	addi r3, r13, smList__26JALList$$015JALSeModVolFGrp$$1@sda21
/* 80141F58 0013EE98  4B EC CC DD */	bl initiate__10JSUPtrListFv
/* 80141F5C 0013EE9C  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModVolFGrp$$1Fv@ha
/* 80141F60 0013EEA0  38 83 A6 54 */	addi r4, r3, __dt__26JSUList$$015JALSeModVolFGrp$$1Fv@l
/* 80141F64 0013EEA4  38 6D 8F 38 */	addi r3, r13, smList__26JALList$$015JALSeModVolFGrp$$1@sda21
/* 80141F68 0013EEA8  38 BF 00 60 */	addi r5, r31, 0x60
/* 80141F6C 0013EEAC  4B F4 07 BD */	bl __register_global_object
/* 80141F70 0013EEB0  38 00 00 01 */	li r0, 1
/* 80141F74 0013EEB4  98 0D 8F 91 */	stb r0, __init__smList__26JALList$$015JALSeModVolFGrp$$1@sda21(r13)
lbl_80141F78:
/* 80141F78 0013EEB8  88 0D 8F 92 */	lbz r0, __init__smList__26JALList$$015JALSeModEffDist$$1@sda21(r13)
/* 80141F7C 0013EEBC  7C 00 07 75 */	extsb. r0, r0
/* 80141F80 0013EEC0  40 82 00 28 */	bne lbl_80141FA8
/* 80141F84 0013EEC4  38 6D 8F 44 */	addi r3, r13, smList__26JALList$$015JALSeModEffDist$$1@sda21
/* 80141F88 0013EEC8  4B EC CC AD */	bl initiate__10JSUPtrListFv
/* 80141F8C 0013EECC  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModEffDist$$1Fv@ha
/* 80141F90 0013EED0  38 83 A5 FC */	addi r4, r3, __dt__26JSUList$$015JALSeModEffDist$$1Fv@l
/* 80141F94 0013EED4  38 6D 8F 44 */	addi r3, r13, smList__26JALList$$015JALSeModEffDist$$1@sda21
/* 80141F98 0013EED8  38 BF 00 6C */	addi r5, r31, 0x6c
/* 80141F9C 0013EEDC  4B F4 07 8D */	bl __register_global_object
/* 80141FA0 0013EEE0  38 00 00 01 */	li r0, 1
/* 80141FA4 0013EEE4  98 0D 8F 92 */	stb r0, __init__smList__26JALList$$015JALSeModEffDist$$1@sda21(r13)
lbl_80141FA8:
/* 80141FA8 0013EEE8  88 0D 8F 93 */	lbz r0, __init__smList__26JALList$$015JALSeModPitDist$$1@sda21(r13)
/* 80141FAC 0013EEEC  7C 00 07 75 */	extsb. r0, r0
/* 80141FB0 0013EEF0  40 82 00 28 */	bne lbl_80141FD8
/* 80141FB4 0013EEF4  38 6D 8F 50 */	addi r3, r13, smList__26JALList$$015JALSeModPitDist$$1@sda21
/* 80141FB8 0013EEF8  4B EC CC 7D */	bl initiate__10JSUPtrListFv
/* 80141FBC 0013EEFC  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModPitDist$$1Fv@ha
/* 80141FC0 0013EF00  38 83 A5 A4 */	addi r4, r3, __dt__26JSUList$$015JALSeModPitDist$$1Fv@l
/* 80141FC4 0013EF04  38 6D 8F 50 */	addi r3, r13, smList__26JALList$$015JALSeModPitDist$$1@sda21
/* 80141FC8 0013EF08  38 BF 00 78 */	addi r5, r31, 0x78
/* 80141FCC 0013EF0C  4B F4 07 5D */	bl __register_global_object
/* 80141FD0 0013EF10  38 00 00 01 */	li r0, 1
/* 80141FD4 0013EF14  98 0D 8F 93 */	stb r0, __init__smList__26JALList$$015JALSeModPitDist$$1@sda21(r13)
lbl_80141FD8:
/* 80141FD8 0013EF18  88 0D 8F 94 */	lbz r0, __init__smList__26JALList$$015JALSeModVolDist$$1@sda21(r13)
/* 80141FDC 0013EF1C  7C 00 07 75 */	extsb. r0, r0
/* 80141FE0 0013EF20  40 82 00 28 */	bne lbl_80142008
/* 80141FE4 0013EF24  38 6D 8F 5C */	addi r3, r13, smList__26JALList$$015JALSeModVolDist$$1@sda21
/* 80141FE8 0013EF28  4B EC CC 4D */	bl initiate__10JSUPtrListFv
/* 80141FEC 0013EF2C  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModVolDist$$1Fv@ha
/* 80141FF0 0013EF30  38 83 A5 4C */	addi r4, r3, __dt__26JSUList$$015JALSeModVolDist$$1Fv@l
/* 80141FF4 0013EF34  38 6D 8F 5C */	addi r3, r13, smList__26JALList$$015JALSeModVolDist$$1@sda21
/* 80141FF8 0013EF38  38 BF 00 84 */	addi r5, r31, 0x84
/* 80141FFC 0013EF3C  4B F4 07 2D */	bl __register_global_object
/* 80142000 0013EF40  38 00 00 01 */	li r0, 1
/* 80142004 0013EF44  98 0D 8F 94 */	stb r0, __init__smList__26JALList$$015JALSeModVolDist$$1@sda21(r13)
lbl_80142008:
/* 80142008 0013EF48  88 0D 8F 95 */	lbz r0, __init__smList__26JALList$$015JALSeModEffFunk$$1@sda21(r13)
/* 8014200C 0013EF4C  7C 00 07 75 */	extsb. r0, r0
/* 80142010 0013EF50  40 82 00 28 */	bne lbl_80142038
/* 80142014 0013EF54  38 6D 8F 68 */	addi r3, r13, smList__26JALList$$015JALSeModEffFunk$$1@sda21
/* 80142018 0013EF58  4B EC CC 1D */	bl initiate__10JSUPtrListFv
/* 8014201C 0013EF5C  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModEffFunk$$1Fv@ha
/* 80142020 0013EF60  38 83 A4 F4 */	addi r4, r3, __dt__26JSUList$$015JALSeModEffFunk$$1Fv@l
/* 80142024 0013EF64  38 6D 8F 68 */	addi r3, r13, smList__26JALList$$015JALSeModEffFunk$$1@sda21
/* 80142028 0013EF68  38 BF 00 90 */	addi r5, r31, 0x90
/* 8014202C 0013EF6C  4B F4 06 FD */	bl __register_global_object
/* 80142030 0013EF70  38 00 00 01 */	li r0, 1
/* 80142034 0013EF74  98 0D 8F 95 */	stb r0, __init__smList__26JALList$$015JALSeModEffFunk$$1@sda21(r13)
lbl_80142038:
/* 80142038 0013EF78  88 0D 8F 96 */	lbz r0, __init__smList__26JALList$$015JALSeModPitFunk$$1@sda21(r13)
/* 8014203C 0013EF7C  7C 00 07 75 */	extsb. r0, r0
/* 80142040 0013EF80  40 82 00 28 */	bne lbl_80142068
/* 80142044 0013EF84  38 6D 8F 74 */	addi r3, r13, smList__26JALList$$015JALSeModPitFunk$$1@sda21
/* 80142048 0013EF88  4B EC CB ED */	bl initiate__10JSUPtrListFv
/* 8014204C 0013EF8C  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModPitFunk$$1Fv@ha
/* 80142050 0013EF90  38 83 A4 9C */	addi r4, r3, __dt__26JSUList$$015JALSeModPitFunk$$1Fv@l
/* 80142054 0013EF94  38 6D 8F 74 */	addi r3, r13, smList__26JALList$$015JALSeModPitFunk$$1@sda21
/* 80142058 0013EF98  38 BF 00 9C */	addi r5, r31, 0x9c
/* 8014205C 0013EF9C  4B F4 06 CD */	bl __register_global_object
/* 80142060 0013EFA0  38 00 00 01 */	li r0, 1
/* 80142064 0013EFA4  98 0D 8F 96 */	stb r0, __init__smList__26JALList$$015JALSeModPitFunk$$1@sda21(r13)
lbl_80142068:
/* 80142068 0013EFA8  88 0D 8F 97 */	lbz r0, __init__smList__26JALList$$015JALSeModVolFunk$$1@sda21(r13)
/* 8014206C 0013EFAC  7C 00 07 75 */	extsb. r0, r0
/* 80142070 0013EFB0  40 82 00 28 */	bne lbl_80142098
/* 80142074 0013EFB4  38 6D 8F 80 */	addi r3, r13, smList__26JALList$$015JALSeModVolFunk$$1@sda21
/* 80142078 0013EFB8  4B EC CB BD */	bl initiate__10JSUPtrListFv
/* 8014207C 0013EFBC  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModVolFunk$$1Fv@ha
/* 80142080 0013EFC0  38 83 A4 44 */	addi r4, r3, __dt__26JSUList$$015JALSeModVolFunk$$1Fv@l
/* 80142084 0013EFC4  38 6D 8F 80 */	addi r3, r13, smList__26JALList$$015JALSeModVolFunk$$1@sda21
/* 80142088 0013EFC8  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 8014208C 0013EFCC  4B F4 06 9D */	bl __register_global_object
/* 80142090 0013EFD0  38 00 00 01 */	li r0, 1
/* 80142094 0013EFD4  98 0D 8F 97 */	stb r0, __init__smList__26JALList$$015JALSeModVolFunk$$1@sda21(r13)
lbl_80142098:
/* 80142098 0013EFD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014209C 0013EFDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801420A0 0013EFE0  38 21 00 10 */	addi r1, r1, 0x10
/* 801420A4 0013EFE4  7C 08 03 A6 */	mtlr r0
/* 801420A8 0013EFE8  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
  .4byte __sinit_MarioUpper_cpp

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$22245:
  .4byte 0
$$22246:
	.incbin "baserom.dol", 0x3E5C0C, 0x4
$$22314:
	.incbin "baserom.dol", 0x3E5C10, 0x8

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
$$22152:
	.skip 0xC
$$22153:
	.skip 0xC
$$22154:
	.skip 0xC
$$22155:
	.skip 0xC
$$22156:
	.skip 0xC
$$22157:
	.skip 0xC
$$22158:
	.skip 0xC
$$22159:
	.skip 0xC
$$22160:
	.skip 0xC
$$22161:
	.skip 0xC
$$22162:
	.skip 0xC
$$22163:
	.skip 0xC
$$22164:
	.skip 0xC
$$22165:
	.skip 0xC
$$22166:
	.skip 0x10
