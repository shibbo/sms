.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global init__Q28JASystem11TOscillatorFv
init__Q28JASystem11TOscillatorFv:
/* 8005FEB4 0005CDF4  38 80 00 00 */	li r4, 0
/* 8005FEB8 0005CDF8  90 83 00 00 */	stw r4, 0(r3)
/* 8005FEBC 0005CDFC  38 00 00 01 */	li r0, 1
/* 8005FEC0 0005CE00  98 03 00 04 */	stb r0, 4(r3)
/* 8005FEC4 0005CE04  98 83 00 05 */	stb r4, 5(r3)
/* 8005FEC8 0005CE08  B0 83 00 06 */	sth r4, 6(r3)
/* 8005FECC 0005CE0C  C0 02 86 78 */	lfs f0, $$2204-_SDA2_BASE_(r2)
/* 8005FED0 0005CE10  D0 03 00 08 */	stfs f0, 8(r3)
/* 8005FED4 0005CE14  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8005FED8 0005CE18  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8005FEDC 0005CE1C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8005FEE0 0005CE20  B0 83 00 18 */	sth r4, 0x18(r3)
/* 8005FEE4 0005CE24  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8005FEE8 0005CE28  4E 80 00 20 */	blr 

.global initStart__Q28JASystem11TOscillatorFv
initStart__Q28JASystem11TOscillatorFv:
/* 8005FEEC 0005CE2C  38 00 00 02 */	li r0, 2
/* 8005FEF0 0005CE30  98 03 00 04 */	stb r0, 4(r3)
/* 8005FEF4 0005CE34  38 80 00 00 */	li r4, 0
/* 8005FEF8 0005CE38  B0 83 00 18 */	sth r4, 0x18(r3)
/* 8005FEFC 0005CE3C  80 A3 00 00 */	lwz r5, 0(r3)
/* 8005FF00 0005CE40  28 05 00 00 */	cmplwi r5, 0
/* 8005FF04 0005CE44  41 82 00 10 */	beq lbl_8005FF14
/* 8005FF08 0005CE48  80 05 00 08 */	lwz r0, 8(r5)
/* 8005FF0C 0005CE4C  28 00 00 00 */	cmplwi r0, 0
/* 8005FF10 0005CE50  40 82 00 10 */	bne lbl_8005FF20
lbl_8005FF14:
/* 8005FF14 0005CE54  C0 02 86 78 */	lfs f0, $$2204-_SDA2_BASE_(r2)
/* 8005FF18 0005CE58  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8005FF1C 0005CE5C  4E 80 00 20 */	blr 
lbl_8005FF20:
/* 8005FF20 0005CE60  B0 83 00 06 */	sth r4, 6(r3)
/* 8005FF24 0005CE64  C0 02 86 78 */	lfs f0, $$2204-_SDA2_BASE_(r2)
/* 8005FF28 0005CE68  D0 03 00 08 */	stfs f0, 8(r3)
/* 8005FF2C 0005CE6C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8005FF30 0005CE70  B0 83 00 18 */	sth r4, 0x18(r3)
/* 8005FF34 0005CE74  80 83 00 00 */	lwz r4, 0(r3)
/* 8005FF38 0005CE78  C0 23 00 08 */	lfs f1, 8(r3)
/* 8005FF3C 0005CE7C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8005FF40 0005CE80  EC 01 00 28 */	fsubs f0, f1, f0
/* 8005FF44 0005CE84  D0 03 00 08 */	stfs f0, 8(r3)
/* 8005FF48 0005CE88  4E 80 00 20 */	blr 

.global getOffset__Q28JASystem11TOscillatorFv
getOffset__Q28JASystem11TOscillatorFv:
/* 8005FF4C 0005CE8C  7C 08 02 A6 */	mflr r0
/* 8005FF50 0005CE90  90 01 00 04 */	stw r0, 4(r1)
/* 8005FF54 0005CE94  94 21 FF F8 */	stwu r1, -8(r1)
/* 8005FF58 0005CE98  80 83 00 00 */	lwz r4, 0(r3)
/* 8005FF5C 0005CE9C  28 04 00 00 */	cmplwi r4, 0
/* 8005FF60 0005CEA0  40 82 00 10 */	bne lbl_8005FF70
/* 8005FF64 0005CEA4  C0 22 86 7C */	lfs f1, $$2231-_SDA2_BASE_(r2)
/* 8005FF68 0005CEA8  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8005FF6C 0005CEAC  48 00 00 DC */	b lbl_80060048
lbl_8005FF70:
/* 8005FF70 0005CEB0  88 03 00 04 */	lbz r0, 4(r3)
/* 8005FF74 0005CEB4  2C 00 00 02 */	cmpwi r0, 2
/* 8005FF78 0005CEB8  41 82 00 48 */	beq lbl_8005FFC0
/* 8005FF7C 0005CEBC  40 80 00 14 */	bge lbl_8005FF90
/* 8005FF80 0005CEC0  2C 00 00 00 */	cmpwi r0, 0
/* 8005FF84 0005CEC4  41 82 00 18 */	beq lbl_8005FF9C
/* 8005FF88 0005CEC8  40 80 00 30 */	bge lbl_8005FFB8
/* 8005FF8C 0005CECC  48 00 00 34 */	b lbl_8005FFC0
lbl_8005FF90:
/* 8005FF90 0005CED0  2C 00 00 04 */	cmpwi r0, 4
/* 8005FF94 0005CED4  40 80 00 2C */	bge lbl_8005FFC0
/* 8005FF98 0005CED8  48 00 00 0C */	b lbl_8005FFA4
lbl_8005FF9C:
/* 8005FF9C 0005CEDC  C0 22 86 7C */	lfs f1, $$2231-_SDA2_BASE_(r2)
/* 8005FFA0 0005CEE0  48 00 00 A8 */	b lbl_80060048
lbl_8005FFA4:
/* 8005FFA4 0005CEE4  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8005FFA8 0005CEE8  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8005FFAC 0005CEEC  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8005FFB0 0005CEF0  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8005FFB4 0005CEF4  48 00 00 94 */	b lbl_80060048
lbl_8005FFB8:
/* 8005FFB8 0005CEF8  38 00 00 02 */	li r0, 2
/* 8005FFBC 0005CEFC  98 03 00 04 */	stb r0, 4(r3)
lbl_8005FFC0:
/* 8005FFC0 0005CF00  88 A3 00 04 */	lbz r5, 4(r3)
/* 8005FFC4 0005CF04  28 05 00 04 */	cmplwi r5, 4
/* 8005FFC8 0005CF08  40 82 00 10 */	bne lbl_8005FFD8
/* 8005FFCC 0005CF0C  80 83 00 00 */	lwz r4, 0(r3)
/* 8005FFD0 0005CF10  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8005FFD4 0005CF14  48 00 00 24 */	b lbl_8005FFF8
lbl_8005FFD8:
/* 8005FFD8 0005CF18  28 05 00 05 */	cmplwi r5, 5
/* 8005FFDC 0005CF1C  40 82 00 14 */	bne lbl_8005FFF0
/* 8005FFE0 0005CF20  3C 80 80 3B */	lis r4, FORCE_STOP_TABLE__Q28JASystem6Driver@ha
/* 8005FFE4 0005CF24  38 04 B7 98 */	addi r0, r4, FORCE_STOP_TABLE__Q28JASystem6Driver@l
/* 8005FFE8 0005CF28  7C 04 03 78 */	mr r4, r0
/* 8005FFEC 0005CF2C  48 00 00 0C */	b lbl_8005FFF8
lbl_8005FFF0:
/* 8005FFF0 0005CF30  80 83 00 00 */	lwz r4, 0(r3)
/* 8005FFF4 0005CF34  80 84 00 08 */	lwz r4, 8(r4)
lbl_8005FFF8:
/* 8005FFF8 0005CF38  28 04 00 00 */	cmplwi r4, 0
/* 8005FFFC 0005CF3C  40 82 00 18 */	bne lbl_80060014
/* 80060000 0005CF40  28 05 00 06 */	cmplwi r5, 6
/* 80060004 0005CF44  41 82 00 10 */	beq lbl_80060014
/* 80060008 0005CF48  C0 22 86 7C */	lfs f1, $$2231-_SDA2_BASE_(r2)
/* 8006000C 0005CF4C  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80060010 0005CF50  48 00 00 38 */	b lbl_80060048
lbl_80060014:
/* 80060014 0005CF54  28 05 00 05 */	cmplwi r5, 5
/* 80060018 0005CF58  40 82 00 18 */	bne lbl_80060030
/* 8006001C 0005CF5C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80060020 0005CF60  C0 02 86 7C */	lfs f0, $$2231-_SDA2_BASE_(r2)
/* 80060024 0005CF64  EC 01 00 28 */	fsubs f0, f1, f0
/* 80060028 0005CF68  D0 03 00 08 */	stfs f0, 8(r3)
/* 8006002C 0005CF6C  48 00 00 18 */	b lbl_80060044
lbl_80060030:
/* 80060030 0005CF70  80 A3 00 00 */	lwz r5, 0(r3)
/* 80060034 0005CF74  C0 23 00 08 */	lfs f1, 8(r3)
/* 80060038 0005CF78  C0 05 00 04 */	lfs f0, 4(r5)
/* 8006003C 0005CF7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80060040 0005CF80  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80060044:
/* 80060044 0005CF84  48 00 02 35 */	bl calc__Q28JASystem11TOscillatorFPs
lbl_80060048:
/* 80060048 0005CF88  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8006004C 0005CF8C  38 21 00 08 */	addi r1, r1, 8
/* 80060050 0005CF90  7C 08 03 A6 */	mtlr r0
/* 80060054 0005CF94  4E 80 00 20 */	blr 

.global getOffsetNoCount__Q28JASystem11TOscillatorFv
getOffsetNoCount__Q28JASystem11TOscillatorFv:
/* 80060058 0005CF98  80 03 00 00 */	lwz r0, 0(r3)
/* 8006005C 0005CF9C  28 00 00 00 */	cmplwi r0, 0
/* 80060060 0005CFA0  40 82 00 10 */	bne lbl_80060070
/* 80060064 0005CFA4  C0 22 86 7C */	lfs f1, $$2231-_SDA2_BASE_(r2)
/* 80060068 0005CFA8  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8006006C 0005CFAC  4E 80 00 20 */	blr 
lbl_80060070:
/* 80060070 0005CFB0  88 03 00 04 */	lbz r0, 4(r3)
/* 80060074 0005CFB4  2C 00 00 01 */	cmpwi r0, 1
/* 80060078 0005CFB8  41 82 00 1C */	beq lbl_80060094
/* 8006007C 0005CFBC  40 80 00 20 */	bge lbl_8006009C
/* 80060080 0005CFC0  2C 00 00 00 */	cmpwi r0, 0
/* 80060084 0005CFC4  40 80 00 08 */	bge lbl_8006008C
/* 80060088 0005CFC8  48 00 00 14 */	b lbl_8006009C
lbl_8006008C:
/* 8006008C 0005CFCC  C0 22 86 7C */	lfs f1, $$2231-_SDA2_BASE_(r2)
/* 80060090 0005CFD0  4E 80 00 20 */	blr 
lbl_80060094:
/* 80060094 0005CFD4  38 00 00 02 */	li r0, 2
/* 80060098 0005CFD8  98 03 00 04 */	stb r0, 4(r3)
lbl_8006009C:
/* 8006009C 0005CFDC  80 83 00 00 */	lwz r4, 0(r3)
/* 800600A0 0005CFE0  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 800600A4 0005CFE4  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 800600A8 0005CFE8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 800600AC 0005CFEC  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 800600B0 0005CFF0  4E 80 00 20 */	blr 

.global forceStop__Q28JASystem11TOscillatorFv
forceStop__Q28JASystem11TOscillatorFv:
/* 800600B4 0005CFF4  88 03 00 04 */	lbz r0, 4(r3)
/* 800600B8 0005CFF8  28 00 00 05 */	cmplwi r0, 5
/* 800600BC 0005CFFC  40 82 00 0C */	bne lbl_800600C8
/* 800600C0 0005D000  38 60 00 00 */	li r3, 0
/* 800600C4 0005D004  4E 80 00 20 */	blr 
lbl_800600C8:
/* 800600C8 0005D008  38 00 00 00 */	li r0, 0
/* 800600CC 0005D00C  B0 03 00 06 */	sth r0, 6(r3)
/* 800600D0 0005D010  38 00 00 05 */	li r0, 5
/* 800600D4 0005D014  C0 02 86 78 */	lfs f0, $$2204-_SDA2_BASE_(r2)
/* 800600D8 0005D018  D0 03 00 08 */	stfs f0, 8(r3)
/* 800600DC 0005D01C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800600E0 0005D020  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800600E4 0005D024  98 03 00 04 */	stb r0, 4(r3)
/* 800600E8 0005D028  38 60 00 01 */	li r3, 1
/* 800600EC 0005D02C  4E 80 00 20 */	blr 

.global release__Q28JASystem11TOscillatorFv
release__Q28JASystem11TOscillatorFv:
/* 800600F0 0005D030  7C 08 02 A6 */	mflr r0
/* 800600F4 0005D034  90 01 00 04 */	stw r0, 4(r1)
/* 800600F8 0005D038  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800600FC 0005D03C  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80060100 0005D040  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80060104 0005D044  7C 7F 1B 78 */	mr r31, r3
/* 80060108 0005D048  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8006010C 0005D04C  88 03 00 04 */	lbz r0, 4(r3)
/* 80060110 0005D050  28 00 00 05 */	cmplwi r0, 5
/* 80060114 0005D054  40 82 00 0C */	bne lbl_80060120
/* 80060118 0005D058  38 60 00 00 */	li r3, 0
/* 8006011C 0005D05C  48 00 01 40 */	b lbl_8006025C
lbl_80060120:
/* 80060120 0005D060  80 9F 00 00 */	lwz r4, 0(r31)
/* 80060124 0005D064  80 64 00 08 */	lwz r3, 8(r4)
/* 80060128 0005D068  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8006012C 0005D06C  7C 03 00 40 */	cmplw r3, r0
/* 80060130 0005D070  41 82 00 1C */	beq lbl_8006014C
/* 80060134 0005D074  38 00 00 00 */	li r0, 0
/* 80060138 0005D078  B0 1F 00 06 */	sth r0, 6(r31)
/* 8006013C 0005D07C  C0 02 86 78 */	lfs f0, $$2204-_SDA2_BASE_(r2)
/* 80060140 0005D080  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80060144 0005D084  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80060148 0005D088  D0 1F 00 10 */	stfs f0, 0x10(r31)
lbl_8006014C:
/* 8006014C 0005D08C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80060150 0005D090  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80060154 0005D094  28 00 00 00 */	cmplwi r0, 0
/* 80060158 0005D098  40 82 00 18 */	bne lbl_80060170
/* 8006015C 0005D09C  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 80060160 0005D0A0  28 00 00 00 */	cmplwi r0, 0
/* 80060164 0005D0A4  40 82 00 0C */	bne lbl_80060170
/* 80060168 0005D0A8  38 00 00 10 */	li r0, 0x10
/* 8006016C 0005D0AC  B0 1F 00 18 */	sth r0, 0x18(r31)
lbl_80060170:
/* 80060170 0005D0B0  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 80060174 0005D0B4  28 00 00 00 */	cmplwi r0, 0
/* 80060178 0005D0B8  41 82 00 D8 */	beq lbl_80060250
/* 8006017C 0005D0BC  38 00 00 06 */	li r0, 6
/* 80060180 0005D0C0  98 1F 00 04 */	stb r0, 4(r31)
/* 80060184 0005D0C4  3F C0 43 30 */	lis r30, 0x4330
/* 80060188 0005D0C8  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 8006018C 0005D0CC  54 00 97 BE */	rlwinm r0, r0, 0x12, 0x1e, 0x1f
/* 80060190 0005D0D0  98 1F 00 05 */	stb r0, 5(r31)
/* 80060194 0005D0D4  C0 2D 81 F0 */	lfs f1, gDacRate__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060198 0005D0D8  C0 02 86 80 */	lfs f0, $$2260-_SDA2_BASE_(r2)
/* 8006019C 0005D0DC  A0 1F 00 18 */	lhz r0, 0x18(r31)
/* 800601A0 0005D0E0  EC 21 00 24 */	fdivs f1, f1, f0
/* 800601A4 0005D0E4  C0 02 86 84 */	lfs f0, $$2261-_SDA2_BASE_(r2)
/* 800601A8 0005D0E8  54 00 04 BE */	clrlwi r0, r0, 0x12
/* 800601AC 0005D0EC  C8 42 86 88 */	lfd f2, $$2263-_SDA2_BASE_(r2)
/* 800601B0 0005D0F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800601B4 0005D0F4  EC 01 00 24 */	fdivs f0, f1, f0
/* 800601B8 0005D0F8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800601BC 0005D0FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800601C0 0005D100  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800601C4 0005D104  EF E1 10 28 */	fsubs f31, f1, f2
/* 800601C8 0005D108  EF FF 00 32 */	fmuls f31, f31, f0
/* 800601CC 0005D10C  4B FF E8 65 */	bl getUpdateInterval__Q28JASystem6DriverFv
/* 800601D0 0005D110  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800601D4 0005D114  C8 22 86 90 */	lfd f1, $$2265-_SDA2_BASE_(r2)
/* 800601D8 0005D118  90 01 00 14 */	stw r0, 0x14(r1)
/* 800601DC 0005D11C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800601E0 0005D120  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800601E4 0005D124  EC 00 08 28 */	fsubs f0, f0, f1
/* 800601E8 0005D128  EF FF 00 24 */	fdivs f31, f31, f0
/* 800601EC 0005D12C  D3 FF 00 08 */	stfs f31, 8(r31)
/* 800601F0 0005D130  C0 3F 00 08 */	lfs f1, 8(r31)
/* 800601F4 0005D134  C0 02 86 7C */	lfs f0, $$2231-_SDA2_BASE_(r2)
/* 800601F8 0005D138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800601FC 0005D13C  40 80 00 08 */	bge lbl_80060204
/* 80060200 0005D140  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80060204:
/* 80060204 0005D144  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80060208 0005D148  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8006020C 0005D14C  C0 02 86 78 */	lfs f0, $$2204-_SDA2_BASE_(r2)
/* 80060210 0005D150  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 80060214 0005D154  88 1F 00 05 */	lbz r0, 5(r31)
/* 80060218 0005D158  28 00 00 00 */	cmplwi r0, 0
/* 8006021C 0005D15C  40 82 00 20 */	bne lbl_8006023C
/* 80060220 0005D160  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80060224 0005D164  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80060228 0005D168  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8006022C 0005D16C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80060230 0005D170  EC 01 00 24 */	fdivs f0, f1, f0
/* 80060234 0005D174  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80060238 0005D178  48 00 00 20 */	b lbl_80060258
lbl_8006023C:
/* 8006023C 0005D17C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80060240 0005D180  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80060244 0005D184  EC 01 00 28 */	fsubs f0, f1, f0
/* 80060248 0005D188  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 8006024C 0005D18C  48 00 00 0C */	b lbl_80060258
lbl_80060250:
/* 80060250 0005D190  38 00 00 04 */	li r0, 4
/* 80060254 0005D194  98 1F 00 04 */	stb r0, 4(r31)
lbl_80060258:
/* 80060258 0005D198  38 60 00 01 */	li r3, 1
lbl_8006025C:
/* 8006025C 0005D19C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80060260 0005D1A0  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80060264 0005D1A4  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80060268 0005D1A8  7C 08 03 A6 */	mtlr r0
/* 8006026C 0005D1AC  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80060270 0005D1B0  38 21 00 30 */	addi r1, r1, 0x30
/* 80060274 0005D1B4  4E 80 00 20 */	blr 

.global calc__Q28JASystem11TOscillatorFPs
calc__Q28JASystem11TOscillatorFPs:
/* 80060278 0005D1B8  7C 08 02 A6 */	mflr r0
/* 8006027C 0005D1BC  3C A0 80 37 */	lis r5, relTableSampleCell__Q28JASystem6Driver@ha
/* 80060280 0005D1C0  90 01 00 04 */	stw r0, 4(r1)
/* 80060284 0005D1C4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80060288 0005D1C8  DB E1 00 78 */	stfd f31, 0x78(r1)
/* 8006028C 0005D1CC  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80060290 0005D1D0  DB A1 00 68 */	stfd f29, 0x68(r1)
/* 80060294 0005D1D4  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 80060298 0005D1D8  DB 61 00 58 */	stfd f27, 0x58(r1)
/* 8006029C 0005D1DC  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 800602A0 0005D1E0  DB 21 00 48 */	stfd f25, 0x48(r1)
/* 800602A4 0005D1E4  BF 41 00 30 */	stmw r26, 0x30(r1)
/* 800602A8 0005D1E8  3B E5 12 88 */	addi r31, r5, relTableSampleCell__Q28JASystem6Driver@l
/* 800602AC 0005D1EC  7C 7D 1B 78 */	mr r29, r3
/* 800602B0 0005D1F0  7C 9E 23 78 */	mr r30, r4
/* 800602B4 0005D1F4  3F 80 43 30 */	lis r28, 0x4330
/* 800602B8 0005D1F8  CB 82 86 90 */	lfd f28, $$2265-_SDA2_BASE_(r2)
/* 800602BC 0005D1FC  CB A2 86 88 */	lfd f29, $$2263-_SDA2_BASE_(r2)
/* 800602C0 0005D200  C3 C2 86 80 */	lfs f30, $$2260-_SDA2_BASE_(r2)
/* 800602C4 0005D204  C3 E2 86 84 */	lfs f31, $$2261-_SDA2_BASE_(r2)
/* 800602C8 0005D208  C3 42 86 98 */	lfs f26, $$2332-_SDA2_BASE_(r2)
/* 800602CC 0005D20C  C3 62 86 78 */	lfs f27, $$2204-_SDA2_BASE_(r2)
/* 800602D0 0005D210  48 00 01 70 */	b lbl_80060440
lbl_800602D4:
/* 800602D4 0005D214  A0 1D 00 06 */	lhz r0, 6(r29)
/* 800602D8 0005D218  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 800602DC 0005D21C  1C 60 00 03 */	mulli r3, r0, 3
/* 800602E0 0005D220  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 800602E4 0005D224  88 1D 00 04 */	lbz r0, 4(r29)
/* 800602E8 0005D228  28 00 00 06 */	cmplwi r0, 6
/* 800602EC 0005D22C  40 82 00 10 */	bne lbl_800602FC
/* 800602F0 0005D230  38 00 00 00 */	li r0, 0
/* 800602F4 0005D234  98 1D 00 04 */	stb r0, 4(r29)
/* 800602F8 0005D238  48 00 01 58 */	b lbl_80060450
lbl_800602FC:
/* 800602FC 0005D23C  54 60 08 3C */	slwi r0, r3, 1
/* 80060300 0005D240  7C 7E 02 14 */	add r3, r30, r0
/* 80060304 0005D244  A8 83 00 00 */	lha r4, 0(r3)
/* 80060308 0005D248  AB 63 00 02 */	lha r27, 2(r3)
/* 8006030C 0005D24C  2C 04 00 0D */	cmpwi r4, 0xd
/* 80060310 0005D250  AB 43 00 04 */	lha r26, 4(r3)
/* 80060314 0005D254  40 82 00 0C */	bne lbl_80060320
/* 80060318 0005D258  B3 5D 00 06 */	sth r26, 6(r29)
/* 8006031C 0005D25C  48 00 01 24 */	b lbl_80060440
lbl_80060320:
/* 80060320 0005D260  2C 04 00 0F */	cmpwi r4, 0xf
/* 80060324 0005D264  40 82 00 10 */	bne lbl_80060334
/* 80060328 0005D268  38 00 00 00 */	li r0, 0
/* 8006032C 0005D26C  98 1D 00 04 */	stb r0, 4(r29)
/* 80060330 0005D270  48 00 01 20 */	b lbl_80060450
lbl_80060334:
/* 80060334 0005D274  2C 04 00 0E */	cmpwi r4, 0xe
/* 80060338 0005D278  40 82 00 24 */	bne lbl_8006035C
/* 8006033C 0005D27C  38 00 00 03 */	li r0, 3
/* 80060340 0005D280  98 1D 00 04 */	stb r0, 4(r29)
/* 80060344 0005D284  80 7D 00 00 */	lwz r3, 0(r29)
/* 80060348 0005D288  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 8006034C 0005D28C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80060350 0005D290  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80060354 0005D294  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80060358 0005D298  48 00 02 90 */	b lbl_800605E8
lbl_8006035C:
/* 8006035C 0005D29C  7F 60 07 35 */	extsh. r0, r27
/* 80060360 0005D2A0  98 9D 00 05 */	stb r4, 5(r29)
/* 80060364 0005D2A4  40 82 00 30 */	bne lbl_80060394
/* 80060368 0005D2A8  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 8006036C 0005D2AC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80060370 0005D2B0  93 81 00 28 */	stw r28, 0x28(r1)
/* 80060374 0005D2B4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80060378 0005D2B8  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8006037C 0005D2BC  EC 00 D0 24 */	fdivs f0, f0, f26
/* 80060380 0005D2C0  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80060384 0005D2C4  A0 7D 00 06 */	lhz r3, 6(r29)
/* 80060388 0005D2C8  38 03 00 01 */	addi r0, r3, 1
/* 8006038C 0005D2CC  B0 1D 00 06 */	sth r0, 6(r29)
/* 80060390 0005D2D0  48 00 00 B0 */	b lbl_80060440
lbl_80060394:
/* 80060394 0005D2D4  C3 2D 81 F0 */	lfs f25, gDacRate__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80060398 0005D2D8  4B FF E6 99 */	bl getUpdateInterval__Q28JASystem6DriverFv
/* 8006039C 0005D2DC  EC 19 F0 24 */	fdivs f0, f25, f30
/* 800603A0 0005D2E0  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 800603A4 0005D2E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800603A8 0005D2E8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800603AC 0005D2EC  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 800603B0 0005D2F0  EC 00 F8 24 */	fdivs f0, f0, f31
/* 800603B4 0005D2F4  93 81 00 20 */	stw r28, 0x20(r1)
/* 800603B8 0005D2F8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 800603BC 0005D2FC  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 800603C0 0005D300  93 81 00 28 */	stw r28, 0x28(r1)
/* 800603C4 0005D304  EC 21 E8 28 */	fsubs f1, f1, f29
/* 800603C8 0005D308  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 800603CC 0005D30C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800603D0 0005D310  EC 42 E0 28 */	fsubs f2, f2, f28
/* 800603D4 0005D314  EC 01 00 32 */	fmuls f0, f1, f0
/* 800603D8 0005D318  93 81 00 18 */	stw r28, 0x18(r1)
/* 800603DC 0005D31C  EC 20 10 24 */	fdivs f1, f0, f2
/* 800603E0 0005D320  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800603E4 0005D324  EC 00 E8 28 */	fsubs f0, f0, f29
/* 800603E8 0005D328  D0 3D 00 08 */	stfs f1, 8(r29)
/* 800603EC 0005D32C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 800603F0 0005D330  EC 00 D0 24 */	fdivs f0, f0, f26
/* 800603F4 0005D334  D0 3D 00 1C */	stfs f1, 0x1c(r29)
/* 800603F8 0005D338  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 800603FC 0005D33C  88 1D 00 05 */	lbz r0, 5(r29)
/* 80060400 0005D340  28 00 00 00 */	cmplwi r0, 0
/* 80060404 0005D344  40 82 00 20 */	bne lbl_80060424
/* 80060408 0005D348  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 8006040C 0005D34C  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80060410 0005D350  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80060414 0005D354  EC 22 08 28 */	fsubs f1, f2, f1
/* 80060418 0005D358  EC 01 00 24 */	fdivs f0, f1, f0
/* 8006041C 0005D35C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80060420 0005D360  48 00 00 14 */	b lbl_80060434
lbl_80060424:
/* 80060424 0005D364  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80060428 0005D368  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8006042C 0005D36C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80060430 0005D370  D0 1D 00 14 */	stfs f0, 0x14(r29)
lbl_80060434:
/* 80060434 0005D374  A0 7D 00 06 */	lhz r3, 6(r29)
/* 80060438 0005D378  38 03 00 01 */	addi r0, r3, 1
/* 8006043C 0005D37C  B0 1D 00 06 */	sth r0, 6(r29)
lbl_80060440:
/* 80060440 0005D380  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80060444 0005D384  FC 00 D8 40 */	fcmpo cr0, f0, f27
/* 80060448 0005D388  4C 40 13 82 */	cror 2, 0, 2
/* 8006044C 0005D38C  41 82 FE 88 */	beq lbl_800602D4
lbl_80060450:
/* 80060450 0005D390  80 7D 00 00 */	lwz r3, 0(r29)
/* 80060454 0005D394  C0 22 86 78 */	lfs f1, $$2204-_SDA2_BASE_(r2)
/* 80060458 0005D398  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8006045C 0005D39C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80060460 0005D3A0  40 82 00 0C */	bne lbl_8006046C
/* 80060464 0005D3A4  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80060468 0005D3A8  48 00 01 80 */	b lbl_800605E8
lbl_8006046C:
/* 8006046C 0005D3AC  C8 02 86 A0 */	lfd f0, $$2333-_SDA2_BASE_(r2)
/* 80060470 0005D3B0  C0 5D 00 1C */	lfs f2, 0x1c(r29)
/* 80060474 0005D3B4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 80060478 0005D3B8  40 82 00 14 */	bne lbl_8006048C
/* 8006047C 0005D3BC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 80060480 0005D3C0  FC 40 00 90 */	fmr f2, f0
/* 80060484 0005D3C4  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80060488 0005D3C8  48 00 01 50 */	b lbl_800605D8
lbl_8006048C:
/* 8006048C 0005D3CC  88 7D 00 05 */	lbz r3, 5(r29)
/* 80060490 0005D3D0  28 03 00 00 */	cmplwi r3, 0
/* 80060494 0005D3D4  41 82 00 10 */	beq lbl_800604A4
/* 80060498 0005D3D8  C3 9D 00 14 */	lfs f28, 0x14(r29)
/* 8006049C 0005D3DC  FC 01 E0 00 */	fcmpu cr0, f1, f28
/* 800604A0 0005D3E0  40 82 00 20 */	bne lbl_800604C0
lbl_800604A4:
/* 800604A4 0005D3E4  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 800604A8 0005D3E8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 800604AC 0005D3EC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 800604B0 0005D3F0  EC 02 00 7C */	fnmsubs f0, f2, f1, f0
/* 800604B4 0005D3F4  FC 40 00 90 */	fmr f2, f0
/* 800604B8 0005D3F8  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 800604BC 0005D3FC  48 00 01 1C */	b lbl_800605D8
lbl_800604C0:
/* 800604C0 0005D400  38 03 FF FF */	addi r0, r3, -1
/* 800604C4 0005D404  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800604C8 0005D408  28 00 00 02 */	cmplwi r0, 2
/* 800604CC 0005D40C  41 81 00 F8 */	bgt lbl_800605C4
/* 800604D0 0005D410  2C 03 00 02 */	cmpwi r3, 2
/* 800604D4 0005D414  3B 40 00 00 */	li r26, 0
/* 800604D8 0005D418  41 82 00 2C */	beq lbl_80060504
/* 800604DC 0005D41C  40 80 00 10 */	bge lbl_800604EC
/* 800604E0 0005D420  2C 03 00 01 */	cmpwi r3, 1
/* 800604E4 0005D424  40 80 00 18 */	bge lbl_800604FC
/* 800604E8 0005D428  48 00 00 20 */	b lbl_80060508
lbl_800604EC:
/* 800604EC 0005D42C  2C 03 00 04 */	cmpwi r3, 4
/* 800604F0 0005D430  40 80 00 18 */	bge lbl_80060508
/* 800604F4 0005D434  7F FA FB 78 */	mr r26, r31
/* 800604F8 0005D438  48 00 00 10 */	b lbl_80060508
lbl_800604FC:
/* 800604FC 0005D43C  3B 5F 00 88 */	addi r26, r31, 0x88
/* 80060500 0005D440  48 00 00 08 */	b lbl_80060508
lbl_80060504:
/* 80060504 0005D444  3B 5F 00 44 */	addi r26, r31, 0x44
lbl_80060508:
/* 80060508 0005D448  C0 02 86 78 */	lfs f0, $$2204-_SDA2_BASE_(r2)
/* 8006050C 0005D44C  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 80060510 0005D450  40 80 00 20 */	bge lbl_80060530
/* 80060514 0005D454  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80060518 0005D458  C0 22 86 7C */	lfs f1, $$2231-_SDA2_BASE_(r2)
/* 8006051C 0005D45C  EC 00 10 24 */	fdivs f0, f0, f2
/* 80060520 0005D460  C0 42 86 A8 */	lfs f2, $$2334-_SDA2_BASE_(r2)
/* 80060524 0005D464  EC 01 00 28 */	fsubs f0, f1, f0
/* 80060528 0005D468  EF 22 00 32 */	fmuls f25, f2, f0
/* 8006052C 0005D46C  48 00 00 14 */	b lbl_80060540
lbl_80060530:
/* 80060530 0005D470  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80060534 0005D474  C0 22 86 A8 */	lfs f1, $$2334-_SDA2_BASE_(r2)
/* 80060538 0005D478  EC 00 10 24 */	fdivs f0, f0, f2
/* 8006053C 0005D47C  EF 21 00 32 */	fmuls f25, f1, f0
lbl_80060540:
/* 80060540 0005D480  FC 20 C8 90 */	fmr f1, f25
/* 80060544 0005D484  48 02 26 79 */	bl __cvt_fp2unsigned
/* 80060548 0005D488  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8006054C 0005D48C  3C 00 43 30 */	lis r0, 0x4330
/* 80060550 0005D490  C8 22 86 90 */	lfd f1, $$2265-_SDA2_BASE_(r2)
/* 80060554 0005D494  28 03 00 10 */	cmplwi r3, 0x10
/* 80060558 0005D498  90 01 00 18 */	stw r0, 0x18(r1)
/* 8006055C 0005D49C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80060560 0005D4A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80060564 0005D4A4  EC 99 00 28 */	fsubs f4, f25, f0
/* 80060568 0005D4A8  41 80 00 0C */	blt lbl_80060574
/* 8006056C 0005D4AC  38 60 00 0F */	li r3, 0xf
/* 80060570 0005D4B0  C0 82 86 7C */	lfs f4, $$2231-_SDA2_BASE_(r2)
lbl_80060574:
/* 80060574 0005D4B4  54 60 10 3A */	slwi r0, r3, 2
/* 80060578 0005D4B8  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 8006057C 0005D4BC  7C 7A 02 14 */	add r3, r26, r0
/* 80060580 0005D4C0  C0 02 86 78 */	lfs f0, $$2204-_SDA2_BASE_(r2)
/* 80060584 0005D4C4  7C 5A 04 2E */	lfsx f2, r26, r0
/* 80060588 0005D4C8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8006058C 0005D4CC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80060590 0005D4D0  EC 01 10 28 */	fsubs f0, f1, f2
/* 80060594 0005D4D4  EC 04 10 3A */	fmadds f0, f4, f0, f2
/* 80060598 0005D4D8  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8006059C 0005D4DC  FC 20 02 10 */	fabs f1, f0
/* 800605A0 0005D4E0  40 80 00 10 */	bge lbl_800605B0
/* 800605A4 0005D4E4  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 800605A8 0005D4E8  EC 40 08 2A */	fadds f2, f0, f1
/* 800605AC 0005D4EC  48 00 00 10 */	b lbl_800605BC
lbl_800605B0:
/* 800605B0 0005D4F0  EC 03 08 28 */	fsubs f0, f3, f1
/* 800605B4 0005D4F4  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800605B8 0005D4F8  EC 41 00 28 */	fsubs f2, f1, f0
lbl_800605BC:
/* 800605BC 0005D4FC  D0 5D 00 0C */	stfs f2, 0xc(r29)
/* 800605C0 0005D500  48 00 00 18 */	b lbl_800605D8
lbl_800605C4:
/* 800605C4 0005D504  C0 3D 00 08 */	lfs f1, 8(r29)
/* 800605C8 0005D508  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 800605CC 0005D50C  EC 1C 00 7C */	fnmsubs f0, f28, f1, f0
/* 800605D0 0005D510  FC 40 00 90 */	fmr f2, f0
/* 800605D4 0005D514  D0 1D 00 0C */	stfs f0, 0xc(r29)
lbl_800605D8:
/* 800605D8 0005D518  80 7D 00 00 */	lwz r3, 0(r29)
/* 800605DC 0005D51C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 800605E0 0005D520  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 800605E4 0005D524  EC 22 00 7A */	fmadds f1, f2, f1, f0
lbl_800605E8:
/* 800605E8 0005D528  BB 41 00 30 */	lmw r26, 0x30(r1)
/* 800605EC 0005D52C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800605F0 0005D530  CB E1 00 78 */	lfd f31, 0x78(r1)
/* 800605F4 0005D534  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 800605F8 0005D538  7C 08 03 A6 */	mtlr r0
/* 800605FC 0005D53C  CB A1 00 68 */	lfd f29, 0x68(r1)
/* 80060600 0005D540  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 80060604 0005D544  CB 61 00 58 */	lfd f27, 0x58(r1)
/* 80060608 0005D548  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 8006060C 0005D54C  CB 21 00 48 */	lfd f25, 0x48(r1)
/* 80060610 0005D550  38 21 00 80 */	addi r1, r1, 0x80
/* 80060614 0005D554  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
relTableSampleCell__Q28JASystem6Driver:
	.incbin "baserom.dol", 0x36E288, 0x44
relTableSqRoot__Q28JASystem6Driver:
	.incbin "baserom.dol", 0x36E2CC, 0x44
relTableSquare__Q28JASystem6Driver:
	.incbin "baserom.dol", 0x36E310, 0x48

.section .data, "wa"  # 0x803A8380 - 0x803E6000
FORCE_STOP_TABLE__Q28JASystem6Driver:
	.incbin "baserom.dol", 0x3A8798, 0x10

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2204:
	.incbin "baserom.dol", 0x3E4378, 0x4
$$2231:
	.incbin "baserom.dol", 0x3E437C, 0x4
$$2260:
	.incbin "baserom.dol", 0x3E4380, 0x4
$$2261:
	.incbin "baserom.dol", 0x3E4384, 0x4
$$2263:
	.incbin "baserom.dol", 0x3E4388, 0x8
$$2265:
	.incbin "baserom.dol", 0x3E4390, 0x8
$$2332:
	.incbin "baserom.dol", 0x3E4398, 0x8
$$2333:
	.incbin "baserom.dol", 0x3E43A0, 0x8
$$2334:
	.incbin "baserom.dol", 0x3E43A8, 0x8
