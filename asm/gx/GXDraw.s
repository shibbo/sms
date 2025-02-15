.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global GXDrawSphere
GXDrawSphere:
/* 800ACB88 000A9AC8  7C 08 02 A6 */	mflr r0
/* 800ACB8C 000A9ACC  90 01 00 04 */	stw r0, 4(r1)
/* 800ACB90 000A9AD0  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 800ACB94 000A9AD4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 800ACB98 000A9AD8  DB E1 00 C8 */	stfd f31, 0xc8(r1)
/* 800ACB9C 000A9ADC  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 800ACBA0 000A9AE0  DB A1 00 B8 */	stfd f29, 0xb8(r1)
/* 800ACBA4 000A9AE4  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 800ACBA8 000A9AE8  DB 61 00 A8 */	stfd f27, 0xa8(r1)
/* 800ACBAC 000A9AEC  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 800ACBB0 000A9AF0  DB 21 00 98 */	stfd f25, 0x98(r1)
/* 800ACBB4 000A9AF4  DB 01 00 90 */	stfd f24, 0x90(r1)
/* 800ACBB8 000A9AF8  DA E1 00 88 */	stfd f23, 0x88(r1)
/* 800ACBBC 000A9AFC  DA C1 00 80 */	stfd f22, 0x80(r1)
/* 800ACBC0 000A9B00  DA A1 00 78 */	stfd f21, 0x78(r1)
/* 800ACBC4 000A9B04  DA 81 00 70 */	stfd f20, 0x70(r1)
/* 800ACBC8 000A9B08  DA 61 00 68 */	stfd f19, 0x68(r1)
/* 800ACBCC 000A9B0C  BE A1 00 3C */	stmw r21, 0x3c(r1)
/* 800ACBD0 000A9B10  7C 76 1B 78 */	mr r22, r3
/* 800ACBD4 000A9B14  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800ACBD8 000A9B18  90 61 00 34 */	stw r3, 0x34(r1)
/* 800ACBDC 000A9B1C  3C 60 43 30 */	lis r3, 0x4330
/* 800ACBE0 000A9B20  7C 95 23 78 */	mr r21, r4
/* 800ACBE4 000A9B24  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800ACBE8 000A9B28  3C 80 80 3F */	lis r4, vcd@ha
/* 800ACBEC 000A9B2C  3B 44 C7 18 */	addi r26, r4, vcd@l
/* 800ACBF0 000A9B30  90 61 00 30 */	stw r3, 0x30(r1)
/* 800ACBF4 000A9B34  38 81 00 10 */	addi r4, r1, 0x10
/* 800ACBF8 000A9B38  90 61 00 28 */	stw r3, 0x28(r1)
/* 800ACBFC 000A9B3C  38 60 00 0D */	li r3, 0xd
/* 800ACC00 000A9B40  C8 41 00 30 */	lfd f2, 0x30(r1)
/* 800ACC04 000A9B44  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800ACC08 000A9B48  C8 62 8B A0 */	lfd f3, $$2364@sda21(r2)
/* 800ACC0C 000A9B4C  C0 82 8B 90 */	lfs f4, $$2358@sda21(r2)
/* 800ACC10 000A9B50  EC 42 18 28 */	fsubs f2, f2, f3
/* 800ACC14 000A9B54  C0 22 8B A8 */	lfs f1, $$2405@sda21(r2)
/* 800ACC18 000A9B58  EC 00 18 28 */	fsubs f0, f0, f3
/* 800ACC1C 000A9B5C  EF 24 10 24 */	fdivs f25, f4, f2
/* 800ACC20 000A9B60  EF 01 00 24 */	fdivs f24, f1, f0
/* 800ACC24 000A9B64  4B FF A5 21 */	bl GXGetVtxDesc
/* 800ACC28 000A9B68  7F 43 D3 78 */	mr r3, r26
/* 800ACC2C 000A9B6C  4B FF A6 CD */	bl GXGetVtxDescv
/* 800ACC30 000A9B70  38 60 00 03 */	li r3, 3
/* 800ACC34 000A9B74  38 9A 00 D8 */	addi r4, r26, 0xd8
/* 800ACC38 000A9B78  4B FF B1 39 */	bl GXGetVtxAttrFmtv
/* 800ACC3C 000A9B7C  4B FF A7 2D */	bl GXClearVtxDesc
/* 800ACC40 000A9B80  38 60 00 09 */	li r3, 9
/* 800ACC44 000A9B84  38 80 00 01 */	li r4, 1
/* 800ACC48 000A9B88  4B FF 9C A1 */	bl GXSetVtxDesc
/* 800ACC4C 000A9B8C  38 60 00 0A */	li r3, 0xa
/* 800ACC50 000A9B90  38 80 00 01 */	li r4, 1
/* 800ACC54 000A9B94  4B FF 9C 95 */	bl GXSetVtxDesc
/* 800ACC58 000A9B98  38 60 00 03 */	li r3, 3
/* 800ACC5C 000A9B9C  38 80 00 09 */	li r4, 9
/* 800ACC60 000A9BA0  38 A0 00 01 */	li r5, 1
/* 800ACC64 000A9BA4  38 C0 00 04 */	li r6, 4
/* 800ACC68 000A9BA8  38 E0 00 00 */	li r7, 0
/* 800ACC6C 000A9BAC  4B FF A7 49 */	bl GXSetVtxAttrFmt
/* 800ACC70 000A9BB0  38 60 00 03 */	li r3, 3
/* 800ACC74 000A9BB4  38 80 00 0A */	li r4, 0xa
/* 800ACC78 000A9BB8  38 A0 00 00 */	li r5, 0
/* 800ACC7C 000A9BBC  38 C0 00 04 */	li r6, 4
/* 800ACC80 000A9BC0  38 E0 00 00 */	li r7, 0
/* 800ACC84 000A9BC4  4B FF A7 31 */	bl GXSetVtxAttrFmt
/* 800ACC88 000A9BC8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800ACC8C 000A9BCC  2C 00 00 00 */	cmpwi r0, 0
/* 800ACC90 000A9BD0  41 82 00 28 */	beq lbl_800ACCB8
/* 800ACC94 000A9BD4  38 60 00 0D */	li r3, 0xd
/* 800ACC98 000A9BD8  38 80 00 01 */	li r4, 1
/* 800ACC9C 000A9BDC  4B FF 9C 4D */	bl GXSetVtxDesc
/* 800ACCA0 000A9BE0  38 60 00 03 */	li r3, 3
/* 800ACCA4 000A9BE4  38 80 00 0D */	li r4, 0xd
/* 800ACCA8 000A9BE8  38 A0 00 01 */	li r5, 1
/* 800ACCAC 000A9BEC  38 C0 00 04 */	li r6, 4
/* 800ACCB0 000A9BF0  38 E0 00 00 */	li r7, 0
/* 800ACCB4 000A9BF4  4B FF A7 01 */	bl GXSetVtxAttrFmt
lbl_800ACCB8:
/* 800ACCB8 000A9BF8  56 B7 06 3E */	clrlwi r23, r21, 0x18
/* 800ACCBC 000A9BFC  CB 42 8B 98 */	lfd f26, $$2362@sda21(r2)
/* 800ACCC0 000A9C00  38 17 00 01 */	addi r0, r23, 1
/* 800ACCC4 000A9C04  C3 82 8B 8C */	lfs f28, $$2357@sda21(r2)
/* 800ACCC8 000A9C08  CB C2 8B A0 */	lfd f30, $$2364@sda21(r2)
/* 800ACCCC 000A9C0C  54 19 08 3C */	slwi r25, r0, 1
/* 800ACCD0 000A9C10  56 D8 06 3E */	clrlwi r24, r22, 0x18
/* 800ACCD4 000A9C14  3A C0 00 00 */	li r22, 0
/* 800ACCD8 000A9C18  3F A0 43 30 */	lis r29, 0x4330
/* 800ACCDC 000A9C1C  3F C0 CC 01 */	lis r30, 0xcc01
/* 800ACCE0 000A9C20  48 00 01 C0 */	b lbl_800ACEA0
lbl_800ACCE4:
/* 800ACCE4 000A9C24  6E DB 80 00 */	xoris r27, r22, 0x8000
/* 800ACCE8 000A9C28  93 61 00 2C */	stw r27, 0x2c(r1)
/* 800ACCEC 000A9C2C  93 A1 00 28 */	stw r29, 0x28(r1)
/* 800ACCF0 000A9C30  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800ACCF4 000A9C34  EC 00 D0 28 */	fsubs f0, f0, f26
/* 800ACCF8 000A9C38  EE 80 06 72 */	fmuls f20, f0, f25
/* 800ACCFC 000A9C3C  FC 20 A0 90 */	fmr f1, f20
/* 800ACD00 000A9C40  EF 74 C8 2A */	fadds f27, f20, f25
/* 800ACD04 000A9C44  4B FD A4 01 */	bl sinf
/* 800ACD08 000A9C48  EE FC 00 72 */	fmuls f23, f28, f1
/* 800ACD0C 000A9C4C  FC 20 D8 90 */	fmr f1, f27
/* 800ACD10 000A9C50  4B FD A3 F5 */	bl sinf
/* 800ACD14 000A9C54  EE DC 00 72 */	fmuls f22, f28, f1
/* 800ACD18 000A9C58  FC 20 A0 90 */	fmr f1, f20
/* 800ACD1C 000A9C5C  4B FD A2 55 */	bl cosf
/* 800ACD20 000A9C60  EE BC 00 72 */	fmuls f21, f28, f1
/* 800ACD24 000A9C64  FC 20 D8 90 */	fmr f1, f27
/* 800ACD28 000A9C68  4B FD A2 49 */	bl cosf
/* 800ACD2C 000A9C6C  EE 9C 00 72 */	fmuls f20, f28, f1
/* 800ACD30 000A9C70  57 25 04 3E */	clrlwi r5, r25, 0x10
/* 800ACD34 000A9C74  38 60 00 98 */	li r3, 0x98
/* 800ACD38 000A9C78  38 80 00 03 */	li r4, 3
/* 800ACD3C 000A9C7C  4B FF BB 6D */	bl GXBegin
/* 800ACD40 000A9C80  EF B4 E0 24 */	fdivs f29, f20, f28
/* 800ACD44 000A9C84  38 16 00 01 */	addi r0, r22, 1
/* 800ACD48 000A9C88  6C 1F 80 00 */	xoris r31, r0, 0x8000
/* 800ACD4C 000A9C8C  3A A0 00 00 */	li r21, 0
/* 800ACD50 000A9C90  EF F5 E0 24 */	fdivs f31, f21, f28
/* 800ACD54 000A9C94  48 00 01 40 */	b lbl_800ACE94
lbl_800ACD58:
/* 800ACD58 000A9C98  6E BC 80 00 */	xoris r28, r21, 0x8000
/* 800ACD5C 000A9C9C  93 81 00 2C */	stw r28, 0x2c(r1)
/* 800ACD60 000A9CA0  93 A1 00 28 */	stw r29, 0x28(r1)
/* 800ACD64 000A9CA4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 800ACD68 000A9CA8  EC 00 D0 28 */	fsubs f0, f0, f26
/* 800ACD6C 000A9CAC  EE 60 06 32 */	fmuls f19, f0, f24
/* 800ACD70 000A9CB0  FC 20 98 90 */	fmr f1, f19
/* 800ACD74 000A9CB4  4B FD A1 FD */	bl cosf
/* 800ACD78 000A9CB8  FF 60 08 90 */	fmr f27, f1
/* 800ACD7C 000A9CBC  FC 20 98 90 */	fmr f1, f19
/* 800ACD80 000A9CC0  4B FD A3 85 */	bl sinf
/* 800ACD84 000A9CC4  EC 1B 05 B2 */	fmuls f0, f27, f22
/* 800ACD88 000A9CC8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800ACD8C 000A9CCC  EC 61 05 B2 */	fmuls f3, f1, f22
/* 800ACD90 000A9CD0  2C 00 00 00 */	cmpwi r0, 0
/* 800ACD94 000A9CD4  EC 40 E0 24 */	fdivs f2, f0, f28
/* 800ACD98 000A9CD8  D0 1E 80 00 */	stfs f0, -0x8000(r30)
/* 800ACD9C 000A9CDC  D0 7E 80 00 */	stfs f3, -0x8000(r30)
/* 800ACDA0 000A9CE0  D2 9E 80 00 */	stfs f20, -0x8000(r30)
/* 800ACDA4 000A9CE4  EC 03 E0 24 */	fdivs f0, f3, f28
/* 800ACDA8 000A9CE8  D0 5E 80 00 */	stfs f2, -0x8000(r30)
/* 800ACDAC 000A9CEC  D0 1E 80 00 */	stfs f0, -0x8000(r30)
/* 800ACDB0 000A9CF0  D3 BE 80 00 */	stfs f29, -0x8000(r30)
/* 800ACDB4 000A9CF4  41 82 00 54 */	beq lbl_800ACE08
/* 800ACDB8 000A9CF8  93 81 00 2C */	stw r28, 0x2c(r1)
/* 800ACDBC 000A9CFC  92 E1 00 34 */	stw r23, 0x34(r1)
/* 800ACDC0 000A9D00  93 A1 00 28 */	stw r29, 0x28(r1)
/* 800ACDC4 000A9D04  93 A1 00 30 */	stw r29, 0x30(r1)
/* 800ACDC8 000A9D08  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 800ACDCC 000A9D0C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800ACDD0 000A9D10  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 800ACDD4 000A9D14  EC 42 D0 28 */	fsubs f2, f2, f26
/* 800ACDD8 000A9D18  93 01 00 1C */	stw r24, 0x1c(r1)
/* 800ACDDC 000A9D1C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 800ACDE0 000A9D20  93 A1 00 20 */	stw r29, 0x20(r1)
/* 800ACDE4 000A9D24  93 A1 00 18 */	stw r29, 0x18(r1)
/* 800ACDE8 000A9D28  EC 62 00 24 */	fdivs f3, f2, f0
/* 800ACDEC 000A9D2C  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 800ACDF0 000A9D30  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800ACDF4 000A9D34  EC 42 D0 28 */	fsubs f2, f2, f26
/* 800ACDF8 000A9D38  D0 7E 80 00 */	stfs f3, -0x8000(r30)
/* 800ACDFC 000A9D3C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 800ACE00 000A9D40  EC 02 00 24 */	fdivs f0, f2, f0
/* 800ACE04 000A9D44  D0 1E 80 00 */	stfs f0, -0x8000(r30)
lbl_800ACE08:
/* 800ACE08 000A9D48  EC 1B 05 F2 */	fmuls f0, f27, f23
/* 800ACE0C 000A9D4C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800ACE10 000A9D50  EC 41 05 F2 */	fmuls f2, f1, f23
/* 800ACE14 000A9D54  2C 00 00 00 */	cmpwi r0, 0
/* 800ACE18 000A9D58  EC 20 E0 24 */	fdivs f1, f0, f28
/* 800ACE1C 000A9D5C  D0 1E 80 00 */	stfs f0, -0x8000(r30)
/* 800ACE20 000A9D60  D0 5E 80 00 */	stfs f2, -0x8000(r30)
/* 800ACE24 000A9D64  D2 BE 80 00 */	stfs f21, -0x8000(r30)
/* 800ACE28 000A9D68  EC 02 E0 24 */	fdivs f0, f2, f28
/* 800ACE2C 000A9D6C  D0 3E 80 00 */	stfs f1, -0x8000(r30)
/* 800ACE30 000A9D70  D0 1E 80 00 */	stfs f0, -0x8000(r30)
/* 800ACE34 000A9D74  D3 FE 80 00 */	stfs f31, -0x8000(r30)
/* 800ACE38 000A9D78  41 82 00 58 */	beq lbl_800ACE90
/* 800ACE3C 000A9D7C  6E A0 80 00 */	xoris r0, r21, 0x8000
/* 800ACE40 000A9D80  92 E1 00 24 */	stw r23, 0x24(r1)
/* 800ACE44 000A9D84  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800ACE48 000A9D88  93 A1 00 18 */	stw r29, 0x18(r1)
/* 800ACE4C 000A9D8C  93 A1 00 20 */	stw r29, 0x20(r1)
/* 800ACE50 000A9D90  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 800ACE54 000A9D94  93 61 00 2C */	stw r27, 0x2c(r1)
/* 800ACE58 000A9D98  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 800ACE5C 000A9D9C  EC 21 D0 28 */	fsubs f1, f1, f26
/* 800ACE60 000A9DA0  93 01 00 34 */	stw r24, 0x34(r1)
/* 800ACE64 000A9DA4  EC 00 F0 28 */	fsubs f0, f0, f30
/* 800ACE68 000A9DA8  93 A1 00 28 */	stw r29, 0x28(r1)
/* 800ACE6C 000A9DAC  93 A1 00 30 */	stw r29, 0x30(r1)
/* 800ACE70 000A9DB0  EC 41 00 24 */	fdivs f2, f1, f0
/* 800ACE74 000A9DB4  C8 21 00 28 */	lfd f1, 0x28(r1)
/* 800ACE78 000A9DB8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 800ACE7C 000A9DBC  EC 21 D0 28 */	fsubs f1, f1, f26
/* 800ACE80 000A9DC0  D0 5E 80 00 */	stfs f2, -0x8000(r30)
/* 800ACE84 000A9DC4  EC 00 F0 28 */	fsubs f0, f0, f30
/* 800ACE88 000A9DC8  EC 01 00 24 */	fdivs f0, f1, f0
/* 800ACE8C 000A9DCC  D0 1E 80 00 */	stfs f0, -0x8000(r30)
lbl_800ACE90:
/* 800ACE90 000A9DD0  3A B5 00 01 */	addi r21, r21, 1
lbl_800ACE94:
/* 800ACE94 000A9DD4  7C 15 B8 00 */	cmpw r21, r23
/* 800ACE98 000A9DD8  40 81 FE C0 */	ble lbl_800ACD58
/* 800ACE9C 000A9DDC  3A D6 00 01 */	addi r22, r22, 1
lbl_800ACEA0:
/* 800ACEA0 000A9DE0  7C 16 C0 00 */	cmpw r22, r24
/* 800ACEA4 000A9DE4  41 80 FE 40 */	blt lbl_800ACCE4
/* 800ACEA8 000A9DE8  7F 43 D3 78 */	mr r3, r26
/* 800ACEAC 000A9DEC  4B FF 9D 9D */	bl GXSetVtxDescv
/* 800ACEB0 000A9DF0  38 60 00 03 */	li r3, 3
/* 800ACEB4 000A9DF4  38 9A 00 D8 */	addi r4, r26, 0xd8
/* 800ACEB8 000A9DF8  4B FF A8 59 */	bl GXSetVtxAttrFmtv
/* 800ACEBC 000A9DFC  BA A1 00 3C */	lmw r21, 0x3c(r1)
/* 800ACEC0 000A9E00  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 800ACEC4 000A9E04  CB E1 00 C8 */	lfd f31, 0xc8(r1)
/* 800ACEC8 000A9E08  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 800ACECC 000A9E0C  CB A1 00 B8 */	lfd f29, 0xb8(r1)
/* 800ACED0 000A9E10  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 800ACED4 000A9E14  CB 61 00 A8 */	lfd f27, 0xa8(r1)
/* 800ACED8 000A9E18  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 800ACEDC 000A9E1C  CB 21 00 98 */	lfd f25, 0x98(r1)
/* 800ACEE0 000A9E20  CB 01 00 90 */	lfd f24, 0x90(r1)
/* 800ACEE4 000A9E24  CA E1 00 88 */	lfd f23, 0x88(r1)
/* 800ACEE8 000A9E28  CA C1 00 80 */	lfd f22, 0x80(r1)
/* 800ACEEC 000A9E2C  CA A1 00 78 */	lfd f21, 0x78(r1)
/* 800ACEF0 000A9E30  CA 81 00 70 */	lfd f20, 0x70(r1)
/* 800ACEF4 000A9E34  CA 61 00 68 */	lfd f19, 0x68(r1)
/* 800ACEF8 000A9E38  38 21 00 D0 */	addi r1, r1, 0xd0
/* 800ACEFC 000A9E3C  7C 08 03 A6 */	mtlr r0
/* 800ACF00 000A9E40  4E 80 00 20 */	blr 

.global GXDrawCubeFace
GXDrawCubeFace:
/* 800ACF04 000A9E44  94 21 FF A8 */	stwu r1, -0x58(r1)
/* 800ACF08 000A9E48  ED 22 28 2A */	fadds f9, f2, f5
/* 800ACF0C 000A9E4C  EC 01 20 2A */	fadds f0, f1, f4
/* 800ACF10 000A9E50  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800ACF14 000A9E54  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 800ACF18 000A9E58  ED 43 30 2A */	fadds f10, f3, f6
/* 800ACF1C 000A9E5C  DB C1 00 48 */	stfd f30, 0x48(r1)
/* 800ACF20 000A9E60  C1 61 00 60 */	lfs f11, 0x60(r1)
/* 800ACF24 000A9E64  EF C7 00 2A */	fadds f30, f7, f0
/* 800ACF28 000A9E68  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 800ACF2C 000A9E6C  ED A8 48 2A */	fadds f13, f8, f9
/* 800ACF30 000A9E70  2C 03 00 00 */	cmpwi r3, 0
/* 800ACF34 000A9E74  DB 81 00 38 */	stfd f28, 0x38(r1)
/* 800ACF38 000A9E78  ED 8B 50 2A */	fadds f12, f11, f10
/* 800ACF3C 000A9E7C  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 800ACF40 000A9E80  C3 E2 8B AC */	lfs f31, $$2493@sda21(r2)
/* 800ACF44 000A9E84  EF DF 07 B2 */	fmuls f30, f31, f30
/* 800ACF48 000A9E88  ED BF 03 72 */	fmuls f13, f31, f13
/* 800ACF4C 000A9E8C  ED 9F 03 32 */	fmuls f12, f31, f12
/* 800ACF50 000A9E90  D3 C5 80 00 */	stfs f30, 0xCC008000@l(r5)
/* 800ACF54 000A9E94  D1 A5 80 00 */	stfs f13, -0x8000(r5)
/* 800ACF58 000A9E98  D1 85 80 00 */	stfs f12, -0x8000(r5)
/* 800ACF5C 000A9E9C  D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 800ACF60 000A9EA0  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 800ACF64 000A9EA4  D0 65 80 00 */	stfs f3, -0x8000(r5)
/* 800ACF68 000A9EA8  41 82 00 1C */	beq lbl_800ACF84
/* 800ACF6C 000A9EAC  D0 85 80 00 */	stfs f4, -0x8000(r5)
/* 800ACF70 000A9EB0  D0 A5 80 00 */	stfs f5, -0x8000(r5)
/* 800ACF74 000A9EB4  D0 C5 80 00 */	stfs f6, -0x8000(r5)
/* 800ACF78 000A9EB8  D0 E5 80 00 */	stfs f7, -0x8000(r5)
/* 800ACF7C 000A9EBC  D1 05 80 00 */	stfs f8, -0x8000(r5)
/* 800ACF80 000A9EC0  D1 65 80 00 */	stfs f11, -0x8000(r5)
lbl_800ACF84:
/* 800ACF84 000A9EC4  2C 04 00 00 */	cmpwi r4, 0
/* 800ACF88 000A9EC8  41 82 00 14 */	beq lbl_800ACF9C
/* 800ACF8C 000A9ECC  38 00 00 01 */	li r0, 1
/* 800ACF90 000A9ED0  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800ACF94 000A9ED4  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800ACF98 000A9ED8  98 05 80 00 */	stb r0, -0x8000(r5)
lbl_800ACF9C:
/* 800ACF9C 000A9EDC  EF A1 20 28 */	fsubs f29, f1, f4
/* 800ACFA0 000A9EE0  C3 E2 8B AC */	lfs f31, $$2493@sda21(r2)
/* 800ACFA4 000A9EE4  EF 82 28 28 */	fsubs f28, f2, f5
/* 800ACFA8 000A9EE8  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800ACFAC 000A9EEC  EF 63 30 28 */	fsubs f27, f3, f6
/* 800ACFB0 000A9EF0  EF C7 E8 2A */	fadds f30, f7, f29
/* 800ACFB4 000A9EF4  2C 03 00 00 */	cmpwi r3, 0
/* 800ACFB8 000A9EF8  ED A8 E0 2A */	fadds f13, f8, f28
/* 800ACFBC 000A9EFC  ED 8B D8 2A */	fadds f12, f11, f27
/* 800ACFC0 000A9F00  EF DF 07 B2 */	fmuls f30, f31, f30
/* 800ACFC4 000A9F04  ED BF 03 72 */	fmuls f13, f31, f13
/* 800ACFC8 000A9F08  ED 9F 03 32 */	fmuls f12, f31, f12
/* 800ACFCC 000A9F0C  D3 C5 80 00 */	stfs f30, 0xCC008000@l(r5)
/* 800ACFD0 000A9F10  D1 A5 80 00 */	stfs f13, -0x8000(r5)
/* 800ACFD4 000A9F14  D1 85 80 00 */	stfs f12, -0x8000(r5)
/* 800ACFD8 000A9F18  D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 800ACFDC 000A9F1C  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 800ACFE0 000A9F20  D0 65 80 00 */	stfs f3, -0x8000(r5)
/* 800ACFE4 000A9F24  41 82 00 1C */	beq lbl_800AD000
/* 800ACFE8 000A9F28  D0 85 80 00 */	stfs f4, -0x8000(r5)
/* 800ACFEC 000A9F2C  D0 A5 80 00 */	stfs f5, -0x8000(r5)
/* 800ACFF0 000A9F30  D0 C5 80 00 */	stfs f6, -0x8000(r5)
/* 800ACFF4 000A9F34  D0 E5 80 00 */	stfs f7, -0x8000(r5)
/* 800ACFF8 000A9F38  D1 05 80 00 */	stfs f8, -0x8000(r5)
/* 800ACFFC 000A9F3C  D1 65 80 00 */	stfs f11, -0x8000(r5)
lbl_800AD000:
/* 800AD000 000A9F40  2C 04 00 00 */	cmpwi r4, 0
/* 800AD004 000A9F44  41 82 00 18 */	beq lbl_800AD01C
/* 800AD008 000A9F48  38 00 00 00 */	li r0, 0
/* 800AD00C 000A9F4C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800AD010 000A9F50  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800AD014 000A9F54  38 00 00 01 */	li r0, 1
/* 800AD018 000A9F58  98 05 80 00 */	stb r0, -0x8000(r5)
lbl_800AD01C:
/* 800AD01C 000A9F5C  EF FD 38 28 */	fsubs f31, f29, f7
/* 800AD020 000A9F60  C3 C2 8B AC */	lfs f30, $$2493@sda21(r2)
/* 800AD024 000A9F64  ED BC 40 28 */	fsubs f13, f28, f8
/* 800AD028 000A9F68  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800AD02C 000A9F6C  ED 9B 58 28 */	fsubs f12, f27, f11
/* 800AD030 000A9F70  EF FE 07 F2 */	fmuls f31, f30, f31
/* 800AD034 000A9F74  2C 03 00 00 */	cmpwi r3, 0
/* 800AD038 000A9F78  ED BE 03 72 */	fmuls f13, f30, f13
/* 800AD03C 000A9F7C  ED 9E 03 32 */	fmuls f12, f30, f12
/* 800AD040 000A9F80  D3 E5 80 00 */	stfs f31, 0xCC008000@l(r5)
/* 800AD044 000A9F84  D1 A5 80 00 */	stfs f13, -0x8000(r5)
/* 800AD048 000A9F88  D1 85 80 00 */	stfs f12, -0x8000(r5)
/* 800AD04C 000A9F8C  D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 800AD050 000A9F90  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 800AD054 000A9F94  D0 65 80 00 */	stfs f3, -0x8000(r5)
/* 800AD058 000A9F98  41 82 00 1C */	beq lbl_800AD074
/* 800AD05C 000A9F9C  D0 85 80 00 */	stfs f4, -0x8000(r5)
/* 800AD060 000A9FA0  D0 A5 80 00 */	stfs f5, -0x8000(r5)
/* 800AD064 000A9FA4  D0 C5 80 00 */	stfs f6, -0x8000(r5)
/* 800AD068 000A9FA8  D0 E5 80 00 */	stfs f7, -0x8000(r5)
/* 800AD06C 000A9FAC  D1 05 80 00 */	stfs f8, -0x8000(r5)
/* 800AD070 000A9FB0  D1 65 80 00 */	stfs f11, -0x8000(r5)
lbl_800AD074:
/* 800AD074 000A9FB4  2C 04 00 00 */	cmpwi r4, 0
/* 800AD078 000A9FB8  41 82 00 14 */	beq lbl_800AD08C
/* 800AD07C 000A9FBC  38 00 00 00 */	li r0, 0
/* 800AD080 000A9FC0  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800AD084 000A9FC4  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800AD088 000A9FC8  98 05 80 00 */	stb r0, -0x8000(r5)
lbl_800AD08C:
/* 800AD08C 000A9FCC  ED 80 38 28 */	fsubs f12, f0, f7
/* 800AD090 000A9FD0  C1 A2 8B AC */	lfs f13, $$2493@sda21(r2)
/* 800AD094 000A9FD4  ED 29 40 28 */	fsubs f9, f9, f8
/* 800AD098 000A9FD8  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800AD09C 000A9FDC  EC 0A 58 28 */	fsubs f0, f10, f11
/* 800AD0A0 000A9FE0  ED 4D 03 32 */	fmuls f10, f13, f12
/* 800AD0A4 000A9FE4  2C 03 00 00 */	cmpwi r3, 0
/* 800AD0A8 000A9FE8  ED 2D 02 72 */	fmuls f9, f13, f9
/* 800AD0AC 000A9FEC  EC 0D 00 32 */	fmuls f0, f13, f0
/* 800AD0B0 000A9FF0  D1 45 80 00 */	stfs f10, 0xCC008000@l(r5)
/* 800AD0B4 000A9FF4  D1 25 80 00 */	stfs f9, -0x8000(r5)
/* 800AD0B8 000A9FF8  D0 05 80 00 */	stfs f0, -0x8000(r5)
/* 800AD0BC 000A9FFC  D0 25 80 00 */	stfs f1, -0x8000(r5)
/* 800AD0C0 000AA000  D0 45 80 00 */	stfs f2, -0x8000(r5)
/* 800AD0C4 000AA004  D0 65 80 00 */	stfs f3, -0x8000(r5)
/* 800AD0C8 000AA008  41 82 00 1C */	beq lbl_800AD0E4
/* 800AD0CC 000AA00C  D0 85 80 00 */	stfs f4, -0x8000(r5)
/* 800AD0D0 000AA010  D0 A5 80 00 */	stfs f5, -0x8000(r5)
/* 800AD0D4 000AA014  D0 C5 80 00 */	stfs f6, -0x8000(r5)
/* 800AD0D8 000AA018  D0 E5 80 00 */	stfs f7, -0x8000(r5)
/* 800AD0DC 000AA01C  D1 05 80 00 */	stfs f8, -0x8000(r5)
/* 800AD0E0 000AA020  D1 65 80 00 */	stfs f11, -0x8000(r5)
lbl_800AD0E4:
/* 800AD0E4 000AA024  2C 04 00 00 */	cmpwi r4, 0
/* 800AD0E8 000AA028  41 82 00 18 */	beq lbl_800AD100
/* 800AD0EC 000AA02C  38 00 00 01 */	li r0, 1
/* 800AD0F0 000AA030  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 800AD0F4 000AA034  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 800AD0F8 000AA038  38 00 00 00 */	li r0, 0
/* 800AD0FC 000AA03C  98 03 80 00 */	stb r0, -0x8000(r3)
lbl_800AD100:
/* 800AD100 000AA040  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 800AD104 000AA044  CB C1 00 48 */	lfd f30, 0x48(r1)
/* 800AD108 000AA048  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 800AD10C 000AA04C  CB 81 00 38 */	lfd f28, 0x38(r1)
/* 800AD110 000AA050  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 800AD114 000AA054  38 21 00 58 */	addi r1, r1, 0x58
/* 800AD118 000AA058  4E 80 00 20 */	blr 

.global GXDrawCube
GXDrawCube:
/* 800AD11C 000AA05C  7C 08 02 A6 */	mflr r0
/* 800AD120 000AA060  3C 60 80 3F */	lis r3, vcd@ha
/* 800AD124 000AA064  90 01 00 04 */	stw r0, 4(r1)
/* 800AD128 000AA068  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800AD12C 000AA06C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800AD130 000AA070  3B E3 C7 18 */	addi r31, r3, vcd@l
/* 800AD134 000AA074  38 81 00 14 */	addi r4, r1, 0x14
/* 800AD138 000AA078  38 60 00 19 */	li r3, 0x19
/* 800AD13C 000AA07C  4B FF A0 09 */	bl GXGetVtxDesc
/* 800AD140 000AA080  38 60 00 0D */	li r3, 0xd
/* 800AD144 000AA084  38 81 00 10 */	addi r4, r1, 0x10
/* 800AD148 000AA088  4B FF 9F FD */	bl GXGetVtxDesc
/* 800AD14C 000AA08C  7F E3 FB 78 */	mr r3, r31
/* 800AD150 000AA090  4B FF A1 A9 */	bl GXGetVtxDescv
/* 800AD154 000AA094  38 60 00 03 */	li r3, 3
/* 800AD158 000AA098  38 9F 00 D8 */	addi r4, r31, 0xd8
/* 800AD15C 000AA09C  4B FF AC 15 */	bl GXGetVtxAttrFmtv
/* 800AD160 000AA0A0  4B FF A2 09 */	bl GXClearVtxDesc
/* 800AD164 000AA0A4  38 60 00 09 */	li r3, 9
/* 800AD168 000AA0A8  38 80 00 01 */	li r4, 1
/* 800AD16C 000AA0AC  4B FF 97 7D */	bl GXSetVtxDesc
/* 800AD170 000AA0B0  38 60 00 0A */	li r3, 0xa
/* 800AD174 000AA0B4  38 80 00 01 */	li r4, 1
/* 800AD178 000AA0B8  4B FF 97 71 */	bl GXSetVtxDesc
/* 800AD17C 000AA0BC  38 60 00 03 */	li r3, 3
/* 800AD180 000AA0C0  38 80 00 09 */	li r4, 9
/* 800AD184 000AA0C4  38 A0 00 01 */	li r5, 1
/* 800AD188 000AA0C8  38 C0 00 04 */	li r6, 4
/* 800AD18C 000AA0CC  38 E0 00 00 */	li r7, 0
/* 800AD190 000AA0D0  4B FF A2 25 */	bl GXSetVtxAttrFmt
/* 800AD194 000AA0D4  38 60 00 03 */	li r3, 3
/* 800AD198 000AA0D8  38 80 00 0A */	li r4, 0xa
/* 800AD19C 000AA0DC  38 A0 00 00 */	li r5, 0
/* 800AD1A0 000AA0E0  38 C0 00 04 */	li r6, 4
/* 800AD1A4 000AA0E4  38 E0 00 00 */	li r7, 0
/* 800AD1A8 000AA0E8  4B FF A2 0D */	bl GXSetVtxAttrFmt
/* 800AD1AC 000AA0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AD1B0 000AA0F0  2C 00 00 00 */	cmpwi r0, 0
/* 800AD1B4 000AA0F4  41 82 00 28 */	beq lbl_800AD1DC
/* 800AD1B8 000AA0F8  38 60 00 19 */	li r3, 0x19
/* 800AD1BC 000AA0FC  38 80 00 01 */	li r4, 1
/* 800AD1C0 000AA100  4B FF 97 29 */	bl GXSetVtxDesc
/* 800AD1C4 000AA104  38 60 00 03 */	li r3, 3
/* 800AD1C8 000AA108  38 80 00 19 */	li r4, 0x19
/* 800AD1CC 000AA10C  38 A0 00 01 */	li r5, 1
/* 800AD1D0 000AA110  38 C0 00 04 */	li r6, 4
/* 800AD1D4 000AA114  38 E0 00 00 */	li r7, 0
/* 800AD1D8 000AA118  4B FF A1 DD */	bl GXSetVtxAttrFmt
lbl_800AD1DC:
/* 800AD1DC 000AA11C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800AD1E0 000AA120  2C 00 00 00 */	cmpwi r0, 0
/* 800AD1E4 000AA124  41 82 00 28 */	beq lbl_800AD20C
/* 800AD1E8 000AA128  38 60 00 0D */	li r3, 0xd
/* 800AD1EC 000AA12C  38 80 00 01 */	li r4, 1
/* 800AD1F0 000AA130  4B FF 96 F9 */	bl GXSetVtxDesc
/* 800AD1F4 000AA134  38 60 00 03 */	li r3, 3
/* 800AD1F8 000AA138  38 80 00 0D */	li r4, 0xd
/* 800AD1FC 000AA13C  38 A0 00 01 */	li r5, 1
/* 800AD200 000AA140  38 C0 00 01 */	li r6, 1
/* 800AD204 000AA144  38 E0 00 00 */	li r7, 0
/* 800AD208 000AA148  4B FF A1 AD */	bl GXSetVtxAttrFmt
lbl_800AD20C:
/* 800AD20C 000AA14C  38 60 00 80 */	li r3, 0x80
/* 800AD210 000AA150  38 80 00 03 */	li r4, 3
/* 800AD214 000AA154  38 A0 00 18 */	li r5, 0x18
/* 800AD218 000AA158  4B FF B6 91 */	bl GXBegin
/* 800AD21C 000AA15C  C0 42 8B 88 */	lfs f2, $$2133@sda21(r2)
/* 800AD220 000AA160  D0 41 00 08 */	stfs f2, 8(r1)
/* 800AD224 000AA164  FC 60 10 90 */	fmr f3, f2
/* 800AD228 000AA168  FC 80 10 90 */	fmr f4, f2
/* 800AD22C 000AA16C  C0 22 8B 94 */	lfs f1, $$2360@sda21(r2)
/* 800AD230 000AA170  FC A0 10 90 */	fmr f5, f2
/* 800AD234 000AA174  FC E0 10 90 */	fmr f7, f2
/* 800AD238 000AA178  FC C0 08 90 */	fmr f6, f1
/* 800AD23C 000AA17C  C1 02 8B 8C */	lfs f8, $$2357@sda21(r2)
/* 800AD240 000AA180  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800AD244 000AA184  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800AD248 000AA188  4B FF FC BD */	bl GXDrawCubeFace
/* 800AD24C 000AA18C  C0 02 8B 94 */	lfs f0, $$2360@sda21(r2)
/* 800AD250 000AA190  D0 01 00 08 */	stfs f0, 8(r1)
/* 800AD254 000AA194  C0 42 8B 88 */	lfs f2, $$2133@sda21(r2)
/* 800AD258 000AA198  C0 22 8B 8C */	lfs f1, $$2357@sda21(r2)
/* 800AD25C 000AA19C  FC 60 10 90 */	fmr f3, f2
/* 800AD260 000AA1A0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800AD264 000AA1A4  FC 80 10 90 */	fmr f4, f2
/* 800AD268 000AA1A8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800AD26C 000AA1AC  FC A0 08 90 */	fmr f5, f1
/* 800AD270 000AA1B0  FC C0 10 90 */	fmr f6, f2
/* 800AD274 000AA1B4  FC E0 10 90 */	fmr f7, f2
/* 800AD278 000AA1B8  FD 00 10 90 */	fmr f8, f2
/* 800AD27C 000AA1BC  4B FF FC 89 */	bl GXDrawCubeFace
/* 800AD280 000AA1C0  C0 02 8B 8C */	lfs f0, $$2357@sda21(r2)
/* 800AD284 000AA1C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 800AD288 000AA1C8  C0 22 8B 88 */	lfs f1, $$2133@sda21(r2)
/* 800AD28C 000AA1CC  C0 42 8B 94 */	lfs f2, $$2360@sda21(r2)
/* 800AD290 000AA1D0  FC 60 08 90 */	fmr f3, f1
/* 800AD294 000AA1D4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800AD298 000AA1D8  FC 80 10 90 */	fmr f4, f2
/* 800AD29C 000AA1DC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800AD2A0 000AA1E0  FC A0 08 90 */	fmr f5, f1
/* 800AD2A4 000AA1E4  FC C0 08 90 */	fmr f6, f1
/* 800AD2A8 000AA1E8  FC E0 08 90 */	fmr f7, f1
/* 800AD2AC 000AA1EC  FD 00 08 90 */	fmr f8, f1
/* 800AD2B0 000AA1F0  4B FF FC 55 */	bl GXDrawCubeFace
/* 800AD2B4 000AA1F4  C0 22 8B 88 */	lfs f1, $$2133@sda21(r2)
/* 800AD2B8 000AA1F8  D0 21 00 08 */	stfs f1, 8(r1)
/* 800AD2BC 000AA1FC  FC 60 08 90 */	fmr f3, f1
/* 800AD2C0 000AA200  FC 80 08 90 */	fmr f4, f1
/* 800AD2C4 000AA204  C0 42 8B 8C */	lfs f2, $$2357@sda21(r2)
/* 800AD2C8 000AA208  FC A0 08 90 */	fmr f5, f1
/* 800AD2CC 000AA20C  FD 00 08 90 */	fmr f8, f1
/* 800AD2D0 000AA210  FC C0 10 90 */	fmr f6, f2
/* 800AD2D4 000AA214  C0 E2 8B 94 */	lfs f7, $$2360@sda21(r2)
/* 800AD2D8 000AA218  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800AD2DC 000AA21C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800AD2E0 000AA220  4B FF FC 25 */	bl GXDrawCubeFace
/* 800AD2E4 000AA224  C0 22 8B 88 */	lfs f1, $$2133@sda21(r2)
/* 800AD2E8 000AA228  D0 21 00 08 */	stfs f1, 8(r1)
/* 800AD2EC 000AA22C  FC 40 08 90 */	fmr f2, f1
/* 800AD2F0 000AA230  FC 80 08 90 */	fmr f4, f1
/* 800AD2F4 000AA234  C0 62 8B 94 */	lfs f3, $$2360@sda21(r2)
/* 800AD2F8 000AA238  FC C0 08 90 */	fmr f6, f1
/* 800AD2FC 000AA23C  FD 00 08 90 */	fmr f8, f1
/* 800AD300 000AA240  FC A0 18 90 */	fmr f5, f3
/* 800AD304 000AA244  C0 E2 8B 8C */	lfs f7, $$2357@sda21(r2)
/* 800AD308 000AA248  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800AD30C 000AA24C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800AD310 000AA250  4B FF FB F5 */	bl GXDrawCubeFace
/* 800AD314 000AA254  C0 22 8B 88 */	lfs f1, $$2133@sda21(r2)
/* 800AD318 000AA258  D0 21 00 08 */	stfs f1, 8(r1)
/* 800AD31C 000AA25C  FC 40 08 90 */	fmr f2, f1
/* 800AD320 000AA260  FC A0 08 90 */	fmr f5, f1
/* 800AD324 000AA264  C0 62 8B 8C */	lfs f3, $$2357@sda21(r2)
/* 800AD328 000AA268  FC C0 08 90 */	fmr f6, f1
/* 800AD32C 000AA26C  FC E0 08 90 */	fmr f7, f1
/* 800AD330 000AA270  FC 80 18 90 */	fmr f4, f3
/* 800AD334 000AA274  C1 02 8B 94 */	lfs f8, $$2360@sda21(r2)
/* 800AD338 000AA278  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800AD33C 000AA27C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800AD340 000AA280  4B FF FB C5 */	bl GXDrawCubeFace
/* 800AD344 000AA284  7F E3 FB 78 */	mr r3, r31
/* 800AD348 000AA288  4B FF 99 01 */	bl GXSetVtxDescv
/* 800AD34C 000AA28C  38 60 00 03 */	li r3, 3
/* 800AD350 000AA290  38 9F 00 D8 */	addi r4, r31, 0xd8
/* 800AD354 000AA294  4B FF A3 BD */	bl GXSetVtxAttrFmtv
/* 800AD358 000AA298  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800AD35C 000AA29C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800AD360 000AA2A0  38 21 00 20 */	addi r1, r1, 0x20
/* 800AD364 000AA2A4  7C 08 03 A6 */	mtlr r0
/* 800AD368 000AA2A8  4E 80 00 20 */	blr 

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2133:
  .4byte 0
$$2357:
	.incbin "baserom.dol", 0x3E488C, 0x4
$$2358:
	.incbin "baserom.dol", 0x3E4890, 0x4
$$2360:
	.incbin "baserom.dol", 0x3E4894, 0x4
$$2362:
	.incbin "baserom.dol", 0x3E4898, 0x8
$$2364:
	.incbin "baserom.dol", 0x3E48A0, 0x8
$$2405:
	.incbin "baserom.dol", 0x3E48A8, 0x4
$$2493:
	.incbin "baserom.dol", 0x3E48AC, 0x4

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
vcd:
	.skip 0xD8
vat:
	.skip 0x1B0
