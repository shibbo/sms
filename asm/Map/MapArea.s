.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global polygonIsInGrid__17TMapCollisionDataFffffP12TBGCheckData
polygonIsInGrid__17TMapCollisionDataFffffP12TBGCheckData:
/* 801DCA60 001D99A0  7C 08 02 A6 */	mflr r0
/* 801DCA64 001D99A4  90 01 00 04 */	stw r0, 4(r1)
/* 801DCA68 001D99A8  94 21 FD 40 */	stwu r1, -0x2c0(r1)
/* 801DCA6C 001D99AC  DB E1 02 B8 */	stfd f31, 0x2b8(r1)
/* 801DCA70 001D99B0  FF E0 20 90 */	fmr f31, f4
/* 801DCA74 001D99B4  DB C1 02 B0 */	stfd f30, 0x2b0(r1)
/* 801DCA78 001D99B8  FF C0 18 90 */	fmr f30, f3
/* 801DCA7C 001D99BC  DB A1 02 A8 */	stfd f29, 0x2a8(r1)
/* 801DCA80 001D99C0  FF A0 10 90 */	fmr f29, f2
/* 801DCA84 001D99C4  DB 81 02 A0 */	stfd f28, 0x2a0(r1)
/* 801DCA88 001D99C8  FF 80 08 90 */	fmr f28, f1
/* 801DCA8C 001D99CC  DB 61 02 98 */	stfd f27, 0x298(r1)
/* 801DCA90 001D99D0  DB 41 02 90 */	stfd f26, 0x290(r1)
/* 801DCA94 001D99D4  93 E1 02 8C */	stw r31, 0x28c(r1)
/* 801DCA98 001D99D8  7C 9F 23 78 */	mr r31, r4
/* 801DCA9C 001D99DC  93 C1 02 88 */	stw r30, 0x288(r1)
/* 801DCAA0 001D99E0  93 A1 02 84 */	stw r29, 0x284(r1)
/* 801DCAA4 001D99E4  93 81 02 80 */	stw r28, 0x280(r1)
/* 801DCAA8 001D99E8  C0 02 CD 88 */	lfs f0, $$22050@sda21(r2)
/* 801DCAAC 001D99EC  C0 A4 00 38 */	lfs f5, 0x38(r4)
/* 801DCAB0 001D99F0  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 801DCAB4 001D99F4  40 80 00 0C */	bge lbl_801DCAC0
/* 801DCAB8 001D99F8  38 60 00 01 */	li r3, 1
/* 801DCABC 001D99FC  48 00 05 A4 */	b lbl_801DD060
lbl_801DCAC0:
/* 801DCAC0 001D9A00  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 801DCAC4 001D9A04  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 801DCAC8 001D9A08  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 801DCACC 001D9A0C  4C 40 13 82 */	cror 2, 0, 2
/* 801DCAD0 001D9A10  40 82 00 30 */	bne lbl_801DCB00
/* 801DCAD4 001D9A14  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 801DCAD8 001D9A18  4C 40 13 82 */	cror 2, 0, 2
/* 801DCADC 001D9A1C  40 82 00 24 */	bne lbl_801DCB00
/* 801DCAE0 001D9A20  FC 1D 18 40 */	fcmpo cr0, f29, f3
/* 801DCAE4 001D9A24  4C 40 13 82 */	cror 2, 0, 2
/* 801DCAE8 001D9A28  40 82 00 18 */	bne lbl_801DCB00
/* 801DCAEC 001D9A2C  FC 03 F8 40 */	fcmpo cr0, f3, f31
/* 801DCAF0 001D9A30  4C 40 13 82 */	cror 2, 0, 2
/* 801DCAF4 001D9A34  40 82 00 0C */	bne lbl_801DCB00
/* 801DCAF8 001D9A38  38 00 00 01 */	li r0, 1
/* 801DCAFC 001D9A3C  48 00 00 08 */	b lbl_801DCB04
lbl_801DCB00:
/* 801DCB00 001D9A40  38 00 00 00 */	li r0, 0
lbl_801DCB04:
/* 801DCB04 001D9A44  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801DCB08 001D9A48  40 82 00 9C */	bne lbl_801DCBA4
/* 801DCB0C 001D9A4C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 801DCB10 001D9A50  C0 9F 00 24 */	lfs f4, 0x24(r31)
/* 801DCB14 001D9A54  FC 1C 08 40 */	fcmpo cr0, f28, f1
/* 801DCB18 001D9A58  4C 40 13 82 */	cror 2, 0, 2
/* 801DCB1C 001D9A5C  40 82 00 30 */	bne lbl_801DCB4C
/* 801DCB20 001D9A60  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 801DCB24 001D9A64  4C 40 13 82 */	cror 2, 0, 2
/* 801DCB28 001D9A68  40 82 00 24 */	bne lbl_801DCB4C
/* 801DCB2C 001D9A6C  FC 1D 20 40 */	fcmpo cr0, f29, f4
/* 801DCB30 001D9A70  4C 40 13 82 */	cror 2, 0, 2
/* 801DCB34 001D9A74  40 82 00 18 */	bne lbl_801DCB4C
/* 801DCB38 001D9A78  FC 04 F8 40 */	fcmpo cr0, f4, f31
/* 801DCB3C 001D9A7C  4C 40 13 82 */	cror 2, 0, 2
/* 801DCB40 001D9A80  40 82 00 0C */	bne lbl_801DCB4C
/* 801DCB44 001D9A84  38 00 00 01 */	li r0, 1
/* 801DCB48 001D9A88  48 00 00 08 */	b lbl_801DCB50
lbl_801DCB4C:
/* 801DCB4C 001D9A8C  38 00 00 00 */	li r0, 0
lbl_801DCB50:
/* 801DCB50 001D9A90  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801DCB54 001D9A94  40 82 00 50 */	bne lbl_801DCBA4
/* 801DCB58 001D9A98  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 801DCB5C 001D9A9C  C0 BF 00 30 */	lfs f5, 0x30(r31)
/* 801DCB60 001D9AA0  FC 1C 10 40 */	fcmpo cr0, f28, f2
/* 801DCB64 001D9AA4  4C 40 13 82 */	cror 2, 0, 2
/* 801DCB68 001D9AA8  40 82 00 30 */	bne lbl_801DCB98
/* 801DCB6C 001D9AAC  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 801DCB70 001D9AB0  4C 40 13 82 */	cror 2, 0, 2
/* 801DCB74 001D9AB4  40 82 00 24 */	bne lbl_801DCB98
/* 801DCB78 001D9AB8  FC 1D 28 40 */	fcmpo cr0, f29, f5
/* 801DCB7C 001D9ABC  4C 40 13 82 */	cror 2, 0, 2
/* 801DCB80 001D9AC0  40 82 00 18 */	bne lbl_801DCB98
/* 801DCB84 001D9AC4  FC 05 F8 40 */	fcmpo cr0, f5, f31
/* 801DCB88 001D9AC8  4C 40 13 82 */	cror 2, 0, 2
/* 801DCB8C 001D9ACC  40 82 00 0C */	bne lbl_801DCB98
/* 801DCB90 001D9AD0  38 00 00 01 */	li r0, 1
/* 801DCB94 001D9AD4  48 00 00 08 */	b lbl_801DCB9C
lbl_801DCB98:
/* 801DCB98 001D9AD8  38 00 00 00 */	li r0, 0
lbl_801DCB9C:
/* 801DCB9C 001D9ADC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801DCBA0 001D9AE0  41 82 00 0C */	beq lbl_801DCBAC
lbl_801DCBA4:
/* 801DCBA4 001D9AE4  38 60 00 01 */	li r3, 1
/* 801DCBA8 001D9AE8  48 00 04 B8 */	b lbl_801DD060
lbl_801DCBAC:
/* 801DCBAC 001D9AEC  ED 03 E8 28 */	fsubs f8, f3, f29
/* 801DCBB0 001D9AF0  C1 82 CD 88 */	lfs f12, $$22050@sda21(r2)
/* 801DCBB4 001D9AF4  EC E1 00 28 */	fsubs f7, f1, f0
/* 801DCBB8 001D9AF8  EC C0 E0 28 */	fsubs f6, f0, f28
/* 801DCBBC 001D9AFC  EF 64 18 28 */	fsubs f27, f4, f3
/* 801DCBC0 001D9B00  EF 48 01 F2 */	fmuls f26, f8, f7
/* 801DCBC4 001D9B04  EC C6 06 F2 */	fmuls f6, f6, f27
/* 801DCBC8 001D9B08  ED 1A 30 28 */	fsubs f8, f26, f6
/* 801DCBCC 001D9B0C  FC 08 60 40 */	fcmpo cr0, f8, f12
/* 801DCBD0 001D9B10  40 80 00 0C */	bge lbl_801DCBDC
/* 801DCBD4 001D9B14  38 00 00 00 */	li r0, 0
/* 801DCBD8 001D9B18  48 00 00 58 */	b lbl_801DCC30
lbl_801DCBDC:
/* 801DCBDC 001D9B1C  ED 21 E0 28 */	fsubs f9, f1, f28
/* 801DCBE0 001D9B20  ED 05 20 28 */	fsubs f8, f5, f4
/* 801DCBE4 001D9B24  ED 64 E8 28 */	fsubs f11, f4, f29
/* 801DCBE8 001D9B28  ED 42 08 28 */	fsubs f10, f2, f1
/* 801DCBEC 001D9B2C  ED 09 02 32 */	fmuls f8, f9, f8
/* 801DCBF0 001D9B30  ED 0B 42 B8 */	fmsubs f8, f11, f10, f8
/* 801DCBF4 001D9B34  FC 08 60 40 */	fcmpo cr0, f8, f12
/* 801DCBF8 001D9B38  40 80 00 0C */	bge lbl_801DCC04
/* 801DCBFC 001D9B3C  38 00 00 00 */	li r0, 0
/* 801DCC00 001D9B40  48 00 00 30 */	b lbl_801DCC30
lbl_801DCC04:
/* 801DCC04 001D9B44  ED 22 E0 28 */	fsubs f9, f2, f28
/* 801DCC08 001D9B48  ED 03 28 28 */	fsubs f8, f3, f5
/* 801DCC0C 001D9B4C  ED 65 E8 28 */	fsubs f11, f5, f29
/* 801DCC10 001D9B50  ED 40 10 28 */	fsubs f10, f0, f2
/* 801DCC14 001D9B54  ED 09 02 32 */	fmuls f8, f9, f8
/* 801DCC18 001D9B58  ED 0B 42 B8 */	fmsubs f8, f11, f10, f8
/* 801DCC1C 001D9B5C  FC 08 60 40 */	fcmpo cr0, f8, f12
/* 801DCC20 001D9B60  40 80 00 0C */	bge lbl_801DCC2C
/* 801DCC24 001D9B64  38 00 00 00 */	li r0, 0
/* 801DCC28 001D9B68  48 00 00 08 */	b lbl_801DCC30
lbl_801DCC2C:
/* 801DCC2C 001D9B6C  38 00 00 01 */	li r0, 1
lbl_801DCC30:
/* 801DCC30 001D9B70  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801DCC34 001D9B74  40 82 01 70 */	bne lbl_801DCDA4
/* 801DCC38 001D9B78  ED 00 F0 28 */	fsubs f8, f0, f30
/* 801DCC3C 001D9B7C  C1 A2 CD 88 */	lfs f13, $$22050@sda21(r2)
/* 801DCC40 001D9B80  ED 08 06 F2 */	fmuls f8, f8, f27
/* 801DCC44 001D9B84  ED 3A 40 28 */	fsubs f9, f26, f8
/* 801DCC48 001D9B88  FC 09 68 40 */	fcmpo cr0, f9, f13
/* 801DCC4C 001D9B8C  40 80 00 0C */	bge lbl_801DCC58
/* 801DCC50 001D9B90  38 00 00 00 */	li r0, 0
/* 801DCC54 001D9B94  48 00 00 58 */	b lbl_801DCCAC
lbl_801DCC58:
/* 801DCC58 001D9B98  ED 41 F0 28 */	fsubs f10, f1, f30
/* 801DCC5C 001D9B9C  ED 25 20 28 */	fsubs f9, f5, f4
/* 801DCC60 001D9BA0  ED 84 E8 28 */	fsubs f12, f4, f29
/* 801DCC64 001D9BA4  ED 62 08 28 */	fsubs f11, f2, f1
/* 801DCC68 001D9BA8  ED 2A 02 72 */	fmuls f9, f10, f9
/* 801DCC6C 001D9BAC  ED 2C 4A F8 */	fmsubs f9, f12, f11, f9
/* 801DCC70 001D9BB0  FC 09 68 40 */	fcmpo cr0, f9, f13
/* 801DCC74 001D9BB4  40 80 00 0C */	bge lbl_801DCC80
/* 801DCC78 001D9BB8  38 00 00 00 */	li r0, 0
/* 801DCC7C 001D9BBC  48 00 00 30 */	b lbl_801DCCAC
lbl_801DCC80:
/* 801DCC80 001D9BC0  ED 42 F0 28 */	fsubs f10, f2, f30
/* 801DCC84 001D9BC4  ED 23 28 28 */	fsubs f9, f3, f5
/* 801DCC88 001D9BC8  ED 85 E8 28 */	fsubs f12, f5, f29
/* 801DCC8C 001D9BCC  ED 60 10 28 */	fsubs f11, f0, f2
/* 801DCC90 001D9BD0  ED 2A 02 72 */	fmuls f9, f10, f9
/* 801DCC94 001D9BD4  ED 2C 4A F8 */	fmsubs f9, f12, f11, f9
/* 801DCC98 001D9BD8  FC 09 68 40 */	fcmpo cr0, f9, f13
/* 801DCC9C 001D9BDC  40 80 00 0C */	bge lbl_801DCCA8
/* 801DCCA0 001D9BE0  38 00 00 00 */	li r0, 0
/* 801DCCA4 001D9BE4  48 00 00 08 */	b lbl_801DCCAC
lbl_801DCCA8:
/* 801DCCA8 001D9BE8  38 00 00 01 */	li r0, 1
lbl_801DCCAC:
/* 801DCCAC 001D9BEC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801DCCB0 001D9BF0  40 82 00 F4 */	bne lbl_801DCDA4
/* 801DCCB4 001D9BF4  ED 23 F8 28 */	fsubs f9, f3, f31
/* 801DCCB8 001D9BF8  C1 62 CD 88 */	lfs f11, $$22050@sda21(r2)
/* 801DCCBC 001D9BFC  ED 89 01 F2 */	fmuls f12, f9, f7
/* 801DCCC0 001D9C00  EC CC 30 28 */	fsubs f6, f12, f6
/* 801DCCC4 001D9C04  FC 06 58 40 */	fcmpo cr0, f6, f11
/* 801DCCC8 001D9C08  40 80 00 0C */	bge lbl_801DCCD4
/* 801DCCCC 001D9C0C  38 00 00 00 */	li r0, 0
/* 801DCCD0 001D9C10  48 00 00 58 */	b lbl_801DCD28
lbl_801DCCD4:
/* 801DCCD4 001D9C14  EC E1 E0 28 */	fsubs f7, f1, f28
/* 801DCCD8 001D9C18  EC C5 20 28 */	fsubs f6, f5, f4
/* 801DCCDC 001D9C1C  ED 44 F8 28 */	fsubs f10, f4, f31
/* 801DCCE0 001D9C20  ED 22 08 28 */	fsubs f9, f2, f1
/* 801DCCE4 001D9C24  EC C7 01 B2 */	fmuls f6, f7, f6
/* 801DCCE8 001D9C28  EC CA 32 78 */	fmsubs f6, f10, f9, f6
/* 801DCCEC 001D9C2C  FC 06 58 40 */	fcmpo cr0, f6, f11
/* 801DCCF0 001D9C30  40 80 00 0C */	bge lbl_801DCCFC
/* 801DCCF4 001D9C34  38 00 00 00 */	li r0, 0
/* 801DCCF8 001D9C38  48 00 00 30 */	b lbl_801DCD28
lbl_801DCCFC:
/* 801DCCFC 001D9C3C  EC E2 E0 28 */	fsubs f7, f2, f28
/* 801DCD00 001D9C40  EC C3 28 28 */	fsubs f6, f3, f5
/* 801DCD04 001D9C44  ED 45 F8 28 */	fsubs f10, f5, f31
/* 801DCD08 001D9C48  ED 20 10 28 */	fsubs f9, f0, f2
/* 801DCD0C 001D9C4C  EC C7 01 B2 */	fmuls f6, f7, f6
/* 801DCD10 001D9C50  EC CA 32 78 */	fmsubs f6, f10, f9, f6
/* 801DCD14 001D9C54  FC 06 58 40 */	fcmpo cr0, f6, f11
/* 801DCD18 001D9C58  40 80 00 0C */	bge lbl_801DCD24
/* 801DCD1C 001D9C5C  38 00 00 00 */	li r0, 0
/* 801DCD20 001D9C60  48 00 00 08 */	b lbl_801DCD28
lbl_801DCD24:
/* 801DCD24 001D9C64  38 00 00 01 */	li r0, 1
lbl_801DCD28:
/* 801DCD28 001D9C68  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801DCD2C 001D9C6C  40 82 00 78 */	bne lbl_801DCDA4
/* 801DCD30 001D9C70  EC CC 40 28 */	fsubs f6, f12, f8
/* 801DCD34 001D9C74  C1 22 CD 88 */	lfs f9, $$22050@sda21(r2)
/* 801DCD38 001D9C78  FC 06 48 40 */	fcmpo cr0, f6, f9
/* 801DCD3C 001D9C7C  40 80 00 0C */	bge lbl_801DCD48
/* 801DCD40 001D9C80  38 00 00 00 */	li r0, 0
/* 801DCD44 001D9C84  48 00 00 58 */	b lbl_801DCD9C
lbl_801DCD48:
/* 801DCD48 001D9C88  EC E1 F0 28 */	fsubs f7, f1, f30
/* 801DCD4C 001D9C8C  EC C5 20 28 */	fsubs f6, f5, f4
/* 801DCD50 001D9C90  ED 04 F8 28 */	fsubs f8, f4, f31
/* 801DCD54 001D9C94  EC 82 08 28 */	fsubs f4, f2, f1
/* 801DCD58 001D9C98  EC 27 01 B2 */	fmuls f1, f7, f6
/* 801DCD5C 001D9C9C  EC 28 09 38 */	fmsubs f1, f8, f4, f1
/* 801DCD60 001D9CA0  FC 01 48 40 */	fcmpo cr0, f1, f9
/* 801DCD64 001D9CA4  40 80 00 0C */	bge lbl_801DCD70
/* 801DCD68 001D9CA8  38 00 00 00 */	li r0, 0
/* 801DCD6C 001D9CAC  48 00 00 30 */	b lbl_801DCD9C
lbl_801DCD70:
/* 801DCD70 001D9CB0  EC 82 F0 28 */	fsubs f4, f2, f30
/* 801DCD74 001D9CB4  EC 23 28 28 */	fsubs f1, f3, f5
/* 801DCD78 001D9CB8  EC 65 F8 28 */	fsubs f3, f5, f31
/* 801DCD7C 001D9CBC  EC 40 10 28 */	fsubs f2, f0, f2
/* 801DCD80 001D9CC0  EC 04 00 72 */	fmuls f0, f4, f1
/* 801DCD84 001D9CC4  EC 03 00 B8 */	fmsubs f0, f3, f2, f0
/* 801DCD88 001D9CC8  FC 00 48 40 */	fcmpo cr0, f0, f9
/* 801DCD8C 001D9CCC  40 80 00 0C */	bge lbl_801DCD98
/* 801DCD90 001D9CD0  38 00 00 00 */	li r0, 0
/* 801DCD94 001D9CD4  48 00 00 08 */	b lbl_801DCD9C
lbl_801DCD98:
/* 801DCD98 001D9CD8  38 00 00 01 */	li r0, 1
lbl_801DCD9C:
/* 801DCD9C 001D9CDC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801DCDA0 001D9CE0  41 82 00 0C */	beq lbl_801DCDAC
lbl_801DCDA4:
/* 801DCDA4 001D9CE4  38 60 00 01 */	li r3, 1
/* 801DCDA8 001D9CE8  48 00 02 B8 */	b lbl_801DD060
lbl_801DCDAC:
/* 801DCDAC 001D9CEC  3B DF 00 1C */	addi r30, r31, 0x1c
/* 801DCDB0 001D9CF0  FC 20 E0 90 */	fmr f1, f28
/* 801DCDB4 001D9CF4  3B BF 00 10 */	addi r29, r31, 0x10
/* 801DCDB8 001D9CF8  FC 40 E8 90 */	fmr f2, f29
/* 801DCDBC 001D9CFC  FC 60 F0 90 */	fmr f3, f30
/* 801DCDC0 001D9D00  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 801DCDC4 001D9D04  FC 80 E8 90 */	fmr f4, f29
/* 801DCDC8 001D9D08  C0 DF 00 18 */	lfs f6, 0x18(r31)
/* 801DCDCC 001D9D0C  C0 FF 00 1C */	lfs f7, 0x1c(r31)
/* 801DCDD0 001D9D10  C1 1F 00 24 */	lfs f8, 0x24(r31)
/* 801DCDD4 001D9D14  48 00 02 C5 */	bl checkLinesCollision__Fffffffff
/* 801DCDD8 001D9D18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DCDDC 001D9D1C  40 82 00 60 */	bne lbl_801DCE3C
/* 801DCDE0 001D9D20  3B 9F 00 28 */	addi r28, r31, 0x28
/* 801DCDE4 001D9D24  FC 20 E0 90 */	fmr f1, f28
/* 801DCDE8 001D9D28  FC 40 E8 90 */	fmr f2, f29
/* 801DCDEC 001D9D2C  C0 BE 00 00 */	lfs f5, 0(r30)
/* 801DCDF0 001D9D30  FC 60 F0 90 */	fmr f3, f30
/* 801DCDF4 001D9D34  C0 DE 00 08 */	lfs f6, 8(r30)
/* 801DCDF8 001D9D38  FC 80 E8 90 */	fmr f4, f29
/* 801DCDFC 001D9D3C  C0 FF 00 28 */	lfs f7, 0x28(r31)
/* 801DCE00 001D9D40  C1 1F 00 30 */	lfs f8, 0x30(r31)
/* 801DCE04 001D9D44  48 00 02 95 */	bl checkLinesCollision__Fffffffff
/* 801DCE08 001D9D48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DCE0C 001D9D4C  40 82 00 30 */	bne lbl_801DCE3C
/* 801DCE10 001D9D50  FC 20 E0 90 */	fmr f1, f28
/* 801DCE14 001D9D54  C0 BC 00 00 */	lfs f5, 0(r28)
/* 801DCE18 001D9D58  FC 40 E8 90 */	fmr f2, f29
/* 801DCE1C 001D9D5C  C0 DC 00 08 */	lfs f6, 8(r28)
/* 801DCE20 001D9D60  FC 60 F0 90 */	fmr f3, f30
/* 801DCE24 001D9D64  FC 80 E8 90 */	fmr f4, f29
/* 801DCE28 001D9D68  C0 FD 00 00 */	lfs f7, 0(r29)
/* 801DCE2C 001D9D6C  C1 1D 00 08 */	lfs f8, 8(r29)
/* 801DCE30 001D9D70  48 00 02 69 */	bl checkLinesCollision__Fffffffff
/* 801DCE34 001D9D74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DCE38 001D9D78  41 82 00 0C */	beq lbl_801DCE44
lbl_801DCE3C:
/* 801DCE3C 001D9D7C  38 00 00 01 */	li r0, 1
/* 801DCE40 001D9D80  48 00 00 08 */	b lbl_801DCE48
lbl_801DCE44:
/* 801DCE44 001D9D84  38 00 00 00 */	li r0, 0
lbl_801DCE48:
/* 801DCE48 001D9D88  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801DCE4C 001D9D8C  41 82 00 0C */	beq lbl_801DCE58
/* 801DCE50 001D9D90  38 60 00 01 */	li r3, 1
/* 801DCE54 001D9D94  48 00 02 0C */	b lbl_801DD060
lbl_801DCE58:
/* 801DCE58 001D9D98  3B 9F 00 1C */	addi r28, r31, 0x1c
/* 801DCE5C 001D9D9C  FC 20 E0 90 */	fmr f1, f28
/* 801DCE60 001D9DA0  3B BF 00 10 */	addi r29, r31, 0x10
/* 801DCE64 001D9DA4  FC 40 F8 90 */	fmr f2, f31
/* 801DCE68 001D9DA8  FC 60 F0 90 */	fmr f3, f30
/* 801DCE6C 001D9DAC  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 801DCE70 001D9DB0  FC 80 F8 90 */	fmr f4, f31
/* 801DCE74 001D9DB4  C0 DF 00 18 */	lfs f6, 0x18(r31)
/* 801DCE78 001D9DB8  C0 FF 00 1C */	lfs f7, 0x1c(r31)
/* 801DCE7C 001D9DBC  C1 1F 00 24 */	lfs f8, 0x24(r31)
/* 801DCE80 001D9DC0  48 00 02 19 */	bl checkLinesCollision__Fffffffff
/* 801DCE84 001D9DC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DCE88 001D9DC8  40 82 00 60 */	bne lbl_801DCEE8
/* 801DCE8C 001D9DCC  3B DF 00 28 */	addi r30, r31, 0x28
/* 801DCE90 001D9DD0  FC 20 E0 90 */	fmr f1, f28
/* 801DCE94 001D9DD4  FC 40 F8 90 */	fmr f2, f31
/* 801DCE98 001D9DD8  C0 BC 00 00 */	lfs f5, 0(r28)
/* 801DCE9C 001D9DDC  FC 60 F0 90 */	fmr f3, f30
/* 801DCEA0 001D9DE0  C0 DC 00 08 */	lfs f6, 8(r28)
/* 801DCEA4 001D9DE4  FC 80 F8 90 */	fmr f4, f31
/* 801DCEA8 001D9DE8  C0 FF 00 28 */	lfs f7, 0x28(r31)
/* 801DCEAC 001D9DEC  C1 1F 00 30 */	lfs f8, 0x30(r31)
/* 801DCEB0 001D9DF0  48 00 01 E9 */	bl checkLinesCollision__Fffffffff
/* 801DCEB4 001D9DF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DCEB8 001D9DF8  40 82 00 30 */	bne lbl_801DCEE8
/* 801DCEBC 001D9DFC  FC 20 E0 90 */	fmr f1, f28
/* 801DCEC0 001D9E00  C0 BE 00 00 */	lfs f5, 0(r30)
/* 801DCEC4 001D9E04  FC 40 F8 90 */	fmr f2, f31
/* 801DCEC8 001D9E08  C0 DE 00 08 */	lfs f6, 8(r30)
/* 801DCECC 001D9E0C  FC 60 F0 90 */	fmr f3, f30
/* 801DCED0 001D9E10  FC 80 F8 90 */	fmr f4, f31
/* 801DCED4 001D9E14  C0 FD 00 00 */	lfs f7, 0(r29)
/* 801DCED8 001D9E18  C1 1D 00 08 */	lfs f8, 8(r29)
/* 801DCEDC 001D9E1C  48 00 01 BD */	bl checkLinesCollision__Fffffffff
/* 801DCEE0 001D9E20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DCEE4 001D9E24  41 82 00 0C */	beq lbl_801DCEF0
lbl_801DCEE8:
/* 801DCEE8 001D9E28  38 00 00 01 */	li r0, 1
/* 801DCEEC 001D9E2C  48 00 00 08 */	b lbl_801DCEF4
lbl_801DCEF0:
/* 801DCEF0 001D9E30  38 00 00 00 */	li r0, 0
lbl_801DCEF4:
/* 801DCEF4 001D9E34  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801DCEF8 001D9E38  41 82 00 0C */	beq lbl_801DCF04
/* 801DCEFC 001D9E3C  38 60 00 01 */	li r3, 1
/* 801DCF00 001D9E40  48 00 01 60 */	b lbl_801DD060
lbl_801DCF04:
/* 801DCF04 001D9E44  3B 9F 00 1C */	addi r28, r31, 0x1c
/* 801DCF08 001D9E48  FC 20 E0 90 */	fmr f1, f28
/* 801DCF0C 001D9E4C  3B BF 00 10 */	addi r29, r31, 0x10
/* 801DCF10 001D9E50  FC 40 E8 90 */	fmr f2, f29
/* 801DCF14 001D9E54  FC 60 E0 90 */	fmr f3, f28
/* 801DCF18 001D9E58  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 801DCF1C 001D9E5C  FC 80 F8 90 */	fmr f4, f31
/* 801DCF20 001D9E60  C0 DF 00 18 */	lfs f6, 0x18(r31)
/* 801DCF24 001D9E64  C0 FF 00 1C */	lfs f7, 0x1c(r31)
/* 801DCF28 001D9E68  C1 1F 00 24 */	lfs f8, 0x24(r31)
/* 801DCF2C 001D9E6C  48 00 01 6D */	bl checkLinesCollision__Fffffffff
/* 801DCF30 001D9E70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DCF34 001D9E74  40 82 00 60 */	bne lbl_801DCF94
/* 801DCF38 001D9E78  3B DF 00 28 */	addi r30, r31, 0x28
/* 801DCF3C 001D9E7C  FC 20 E0 90 */	fmr f1, f28
/* 801DCF40 001D9E80  FC 40 E8 90 */	fmr f2, f29
/* 801DCF44 001D9E84  C0 BC 00 00 */	lfs f5, 0(r28)
/* 801DCF48 001D9E88  FC 60 E0 90 */	fmr f3, f28
/* 801DCF4C 001D9E8C  C0 DC 00 08 */	lfs f6, 8(r28)
/* 801DCF50 001D9E90  FC 80 F8 90 */	fmr f4, f31
/* 801DCF54 001D9E94  C0 FF 00 28 */	lfs f7, 0x28(r31)
/* 801DCF58 001D9E98  C1 1F 00 30 */	lfs f8, 0x30(r31)
/* 801DCF5C 001D9E9C  48 00 01 3D */	bl checkLinesCollision__Fffffffff
/* 801DCF60 001D9EA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DCF64 001D9EA4  40 82 00 30 */	bne lbl_801DCF94
/* 801DCF68 001D9EA8  FC 20 E0 90 */	fmr f1, f28
/* 801DCF6C 001D9EAC  C0 BE 00 00 */	lfs f5, 0(r30)
/* 801DCF70 001D9EB0  FC 40 E8 90 */	fmr f2, f29
/* 801DCF74 001D9EB4  C0 DE 00 08 */	lfs f6, 8(r30)
/* 801DCF78 001D9EB8  FC 60 E0 90 */	fmr f3, f28
/* 801DCF7C 001D9EBC  FC 80 F8 90 */	fmr f4, f31
/* 801DCF80 001D9EC0  C0 FD 00 00 */	lfs f7, 0(r29)
/* 801DCF84 001D9EC4  C1 1D 00 08 */	lfs f8, 8(r29)
/* 801DCF88 001D9EC8  48 00 01 11 */	bl checkLinesCollision__Fffffffff
/* 801DCF8C 001D9ECC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DCF90 001D9ED0  41 82 00 0C */	beq lbl_801DCF9C
lbl_801DCF94:
/* 801DCF94 001D9ED4  38 00 00 01 */	li r0, 1
/* 801DCF98 001D9ED8  48 00 00 08 */	b lbl_801DCFA0
lbl_801DCF9C:
/* 801DCF9C 001D9EDC  38 00 00 00 */	li r0, 0
lbl_801DCFA0:
/* 801DCFA0 001D9EE0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801DCFA4 001D9EE4  41 82 00 0C */	beq lbl_801DCFB0
/* 801DCFA8 001D9EE8  38 60 00 01 */	li r3, 1
/* 801DCFAC 001D9EEC  48 00 00 B4 */	b lbl_801DD060
lbl_801DCFB0:
/* 801DCFB0 001D9EF0  3B 9F 00 1C */	addi r28, r31, 0x1c
/* 801DCFB4 001D9EF4  FC 20 F0 90 */	fmr f1, f30
/* 801DCFB8 001D9EF8  3B BF 00 10 */	addi r29, r31, 0x10
/* 801DCFBC 001D9EFC  FC 40 E8 90 */	fmr f2, f29
/* 801DCFC0 001D9F00  FC 60 F0 90 */	fmr f3, f30
/* 801DCFC4 001D9F04  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 801DCFC8 001D9F08  FC 80 F8 90 */	fmr f4, f31
/* 801DCFCC 001D9F0C  C0 DF 00 18 */	lfs f6, 0x18(r31)
/* 801DCFD0 001D9F10  C0 FF 00 1C */	lfs f7, 0x1c(r31)
/* 801DCFD4 001D9F14  C1 1F 00 24 */	lfs f8, 0x24(r31)
/* 801DCFD8 001D9F18  48 00 00 C1 */	bl checkLinesCollision__Fffffffff
/* 801DCFDC 001D9F1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DCFE0 001D9F20  40 82 00 60 */	bne lbl_801DD040
/* 801DCFE4 001D9F24  3B DF 00 28 */	addi r30, r31, 0x28
/* 801DCFE8 001D9F28  FC 20 F0 90 */	fmr f1, f30
/* 801DCFEC 001D9F2C  FC 40 E8 90 */	fmr f2, f29
/* 801DCFF0 001D9F30  C0 BC 00 00 */	lfs f5, 0(r28)
/* 801DCFF4 001D9F34  FC 60 F0 90 */	fmr f3, f30
/* 801DCFF8 001D9F38  C0 DC 00 08 */	lfs f6, 8(r28)
/* 801DCFFC 001D9F3C  FC 80 F8 90 */	fmr f4, f31
/* 801DD000 001D9F40  C0 FF 00 28 */	lfs f7, 0x28(r31)
/* 801DD004 001D9F44  C1 1F 00 30 */	lfs f8, 0x30(r31)
/* 801DD008 001D9F48  48 00 00 91 */	bl checkLinesCollision__Fffffffff
/* 801DD00C 001D9F4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DD010 001D9F50  40 82 00 30 */	bne lbl_801DD040
/* 801DD014 001D9F54  FC 20 F0 90 */	fmr f1, f30
/* 801DD018 001D9F58  C0 BE 00 00 */	lfs f5, 0(r30)
/* 801DD01C 001D9F5C  FC 40 E8 90 */	fmr f2, f29
/* 801DD020 001D9F60  C0 DE 00 08 */	lfs f6, 8(r30)
/* 801DD024 001D9F64  FC 60 F0 90 */	fmr f3, f30
/* 801DD028 001D9F68  FC 80 F8 90 */	fmr f4, f31
/* 801DD02C 001D9F6C  C0 FD 00 00 */	lfs f7, 0(r29)
/* 801DD030 001D9F70  C1 1D 00 08 */	lfs f8, 8(r29)
/* 801DD034 001D9F74  48 00 00 65 */	bl checkLinesCollision__Fffffffff
/* 801DD038 001D9F78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DD03C 001D9F7C  41 82 00 0C */	beq lbl_801DD048
lbl_801DD040:
/* 801DD040 001D9F80  38 00 00 01 */	li r0, 1
/* 801DD044 001D9F84  48 00 00 08 */	b lbl_801DD04C
lbl_801DD048:
/* 801DD048 001D9F88  38 00 00 00 */	li r0, 0
lbl_801DD04C:
/* 801DD04C 001D9F8C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801DD050 001D9F90  41 82 00 0C */	beq lbl_801DD05C
/* 801DD054 001D9F94  38 60 00 01 */	li r3, 1
/* 801DD058 001D9F98  48 00 00 08 */	b lbl_801DD060
lbl_801DD05C:
/* 801DD05C 001D9F9C  38 60 00 00 */	li r3, 0
lbl_801DD060:
/* 801DD060 001D9FA0  80 01 02 C4 */	lwz r0, 0x2c4(r1)
/* 801DD064 001D9FA4  CB E1 02 B8 */	lfd f31, 0x2b8(r1)
/* 801DD068 001D9FA8  CB C1 02 B0 */	lfd f30, 0x2b0(r1)
/* 801DD06C 001D9FAC  7C 08 03 A6 */	mtlr r0
/* 801DD070 001D9FB0  CB A1 02 A8 */	lfd f29, 0x2a8(r1)
/* 801DD074 001D9FB4  CB 81 02 A0 */	lfd f28, 0x2a0(r1)
/* 801DD078 001D9FB8  CB 61 02 98 */	lfd f27, 0x298(r1)
/* 801DD07C 001D9FBC  CB 41 02 90 */	lfd f26, 0x290(r1)
/* 801DD080 001D9FC0  83 E1 02 8C */	lwz r31, 0x28c(r1)
/* 801DD084 001D9FC4  83 C1 02 88 */	lwz r30, 0x288(r1)
/* 801DD088 001D9FC8  83 A1 02 84 */	lwz r29, 0x284(r1)
/* 801DD08C 001D9FCC  83 81 02 80 */	lwz r28, 0x280(r1)
/* 801DD090 001D9FD0  38 21 02 C0 */	addi r1, r1, 0x2c0
/* 801DD094 001D9FD4  4E 80 00 20 */	blr 

.global checkLinesCollision__Fffffffff
checkLinesCollision__Fffffffff:
/* 801DD098 001D9FD8  ED A3 08 28 */	fsubs f13, f3, f1
/* 801DD09C 001D9FDC  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 801DD0A0 001D9FE0  ED 46 20 28 */	fsubs f10, f6, f4
/* 801DD0A4 001D9FE4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801DD0A8 001D9FE8  ED 28 20 28 */	fsubs f9, f8, f4
/* 801DD0AC 001D9FEC  ED 6D 02 B2 */	fmuls f11, f13, f10
/* 801DD0B0 001D9FF0  C0 02 CD 88 */	lfs f0, $$22050@sda21(r2)
/* 801DD0B4 001D9FF4  EF E4 10 28 */	fsubs f31, f4, f2
/* 801DD0B8 001D9FF8  ED 85 18 28 */	fsubs f12, f5, f3
/* 801DD0BC 001D9FFC  ED 47 18 28 */	fsubs f10, f7, f3
/* 801DD0C0 001DA000  ED 2D 02 72 */	fmuls f9, f13, f9
/* 801DD0C4 001DA004  ED 7F 5B 38 */	fmsubs f11, f31, f12, f11
/* 801DD0C8 001DA008  ED 3F 4A B8 */	fmsubs f9, f31, f10, f9
/* 801DD0CC 001DA00C  FC 0B 00 40 */	fcmpo cr0, f11, f0
/* 801DD0D0 001DA010  4C 41 13 82 */	cror 2, 1, 2
/* 801DD0D4 001DA014  40 82 00 10 */	bne lbl_801DD0E4
/* 801DD0D8 001DA018  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 801DD0DC 001DA01C  4C 41 13 82 */	cror 2, 1, 2
/* 801DD0E0 001DA020  41 82 00 18 */	beq lbl_801DD0F8
lbl_801DD0E4:
/* 801DD0E4 001DA024  C0 02 CD 88 */	lfs f0, $$22050@sda21(r2)
/* 801DD0E8 001DA028  FC 0B 00 40 */	fcmpo cr0, f11, f0
/* 801DD0EC 001DA02C  40 80 00 14 */	bge lbl_801DD100
/* 801DD0F0 001DA030  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 801DD0F4 001DA034  40 80 00 0C */	bge lbl_801DD100
lbl_801DD0F8:
/* 801DD0F8 001DA038  38 60 00 00 */	li r3, 0
/* 801DD0FC 001DA03C  48 00 00 68 */	b lbl_801DD164
lbl_801DD100:
/* 801DD100 001DA040  ED 27 28 28 */	fsubs f9, f7, f5
/* 801DD104 001DA044  C0 02 CD 88 */	lfs f0, $$22050@sda21(r2)
/* 801DD108 001DA048  EC A2 40 28 */	fsubs f5, f2, f8
/* 801DD10C 001DA04C  EC 44 40 28 */	fsubs f2, f4, f8
/* 801DD110 001DA050  ED 08 30 28 */	fsubs f8, f8, f6
/* 801DD114 001DA054  EC C1 38 28 */	fsubs f6, f1, f7
/* 801DD118 001DA058  EC 89 01 72 */	fmuls f4, f9, f5
/* 801DD11C 001DA05C  EC 63 38 28 */	fsubs f3, f3, f7
/* 801DD120 001DA060  EC 29 00 B2 */	fmuls f1, f9, f2
/* 801DD124 001DA064  EC 48 21 B8 */	fmsubs f2, f8, f6, f4
/* 801DD128 001DA068  EC 28 08 F8 */	fmsubs f1, f8, f3, f1
/* 801DD12C 001DA06C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801DD130 001DA070  4C 41 13 82 */	cror 2, 1, 2
/* 801DD134 001DA074  40 82 00 10 */	bne lbl_801DD144
/* 801DD138 001DA078  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DD13C 001DA07C  4C 41 13 82 */	cror 2, 1, 2
/* 801DD140 001DA080  41 82 00 18 */	beq lbl_801DD158
lbl_801DD144:
/* 801DD144 001DA084  C0 02 CD 88 */	lfs f0, $$22050@sda21(r2)
/* 801DD148 001DA088  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801DD14C 001DA08C  40 80 00 14 */	bge lbl_801DD160
/* 801DD150 001DA090  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DD154 001DA094  40 80 00 0C */	bge lbl_801DD160
lbl_801DD158:
/* 801DD158 001DA098  38 60 00 00 */	li r3, 0
/* 801DD15C 001DA09C  48 00 00 08 */	b lbl_801DD164
lbl_801DD160:
/* 801DD160 001DA0A0  38 60 00 01 */	li r3, 1
lbl_801DD164:
/* 801DD164 001DA0A4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801DD168 001DA0A8  38 21 00 38 */	addi r1, r1, 0x38
/* 801DD16C 001DA0AC  4E 80 00 20 */	blr 

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$22050:
  .4byte 0
  .4byte 0
