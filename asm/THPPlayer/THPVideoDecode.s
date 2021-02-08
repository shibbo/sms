.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global PopDecodedTextureSet
PopDecodedTextureSet:
/* 800BFD24 000BCC64  7C 08 02 A6 */	mflr r0
/* 800BFD28 000BCC68  3C 80 80 3F */	lis r4, DecodedTextureSetQueue@ha
/* 800BFD2C 000BCC6C  90 01 00 04 */	stw r0, 4(r1)
/* 800BFD30 000BCC70  38 A3 00 00 */	addi r5, r3, 0
/* 800BFD34 000BCC74  38 64 1C 18 */	addi r3, r4, DecodedTextureSetQueue@l
/* 800BFD38 000BCC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BFD3C 000BCC7C  38 81 00 0C */	addi r4, r1, 0xc
/* 800BFD40 000BCC80  4B FD 0E 39 */	bl OSReceiveMessage
/* 800BFD44 000BCC84  2C 03 00 01 */	cmpwi r3, 1
/* 800BFD48 000BCC88  40 82 00 0C */	bne lbl_800BFD54
/* 800BFD4C 000BCC8C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800BFD50 000BCC90  48 00 00 08 */	b lbl_800BFD58
lbl_800BFD54:
/* 800BFD54 000BCC94  38 60 00 00 */	li r3, 0
lbl_800BFD58:
/* 800BFD58 000BCC98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BFD5C 000BCC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 800BFD60 000BCCA0  7C 08 03 A6 */	mtlr r0
/* 800BFD64 000BCCA4  4E 80 00 20 */	blr 

.global PushFreeTextureSet
PushFreeTextureSet:
/* 800BFD68 000BCCA8  7C 08 02 A6 */	mflr r0
/* 800BFD6C 000BCCAC  3C A0 80 3F */	lis r5, FreeTextureSetQueue@ha
/* 800BFD70 000BCCB0  90 01 00 04 */	stw r0, 4(r1)
/* 800BFD74 000BCCB4  38 83 00 00 */	addi r4, r3, 0
/* 800BFD78 000BCCB8  38 65 1B F8 */	addi r3, r5, FreeTextureSetQueue@l
/* 800BFD7C 000BCCBC  94 21 FF F8 */	stwu r1, -8(r1)
/* 800BFD80 000BCCC0  38 A0 00 00 */	li r5, 0
/* 800BFD84 000BCCC4  4B FD 0D 2D */	bl OSSendMessage
/* 800BFD88 000BCCC8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800BFD8C 000BCCCC  38 21 00 08 */	addi r1, r1, 8
/* 800BFD90 000BCCD0  7C 08 03 A6 */	mtlr r0
/* 800BFD94 000BCCD4  4E 80 00 20 */	blr 

.global VideoDecode__FP13THPReadBuffer
VideoDecode__FP13THPReadBuffer:
/* 800BFD98 000BCCD8  7C 08 02 A6 */	mflr r0
/* 800BFD9C 000BCCDC  3C 80 80 3F */	lis r4, ActivePlayer@ha
/* 800BFDA0 000BCCE0  90 01 00 04 */	stw r0, 4(r1)
/* 800BFDA4 000BCCE4  38 A0 00 01 */	li r5, 1
/* 800BFDA8 000BCCE8  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800BFDAC 000BCCEC  BF 01 00 18 */	stmw r24, 0x18(r1)
/* 800BFDB0 000BCCF0  3B E4 E1 00 */	addi r31, r4, ActivePlayer@l
/* 800BFDB4 000BCCF4  3B 03 00 00 */	addi r24, r3, 0
/* 800BFDB8 000BCCF8  3C 60 80 3F */	lis r3, VideoDecodeThread@ha
/* 800BFDBC 000BCCFC  3B C3 08 E8 */	addi r30, r3, VideoDecodeThread@l
/* 800BFDC0 000BCD00  3B BF 00 6C */	addi r29, r31, 0x6c
/* 800BFDC4 000BCD04  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 800BFDC8 000BCD08  80 98 00 00 */	lwz r4, 0(r24)
/* 800BFDCC 000BCD0C  54 03 10 3A */	slwi r3, r0, 2
/* 800BFDD0 000BCD10  3B 23 00 08 */	addi r25, r3, 8
/* 800BFDD4 000BCD14  3B 44 00 08 */	addi r26, r4, 8
/* 800BFDD8 000BCD18  7F 24 CA 14 */	add r25, r4, r25
/* 800BFDDC 000BCD1C  38 7E 13 10 */	addi r3, r30, 0x1310
/* 800BFDE0 000BCD20  38 81 00 14 */	addi r4, r1, 0x14
/* 800BFDE4 000BCD24  4B FD 0D 95 */	bl OSReceiveMessage
/* 800BFDE8 000BCD28  83 81 00 14 */	lwz r28, 0x14(r1)
/* 800BFDEC 000BCD2C  3B 60 00 00 */	li r27, 0
/* 800BFDF0 000BCD30  48 00 00 9C */	b lbl_800BFE8C
lbl_800BFDF4:
/* 800BFDF4 000BCD34  7C 7F DA 14 */	add r3, r31, r27
/* 800BFDF8 000BCD38  88 03 00 70 */	lbz r0, 0x70(r3)
/* 800BFDFC 000BCD3C  2C 00 00 00 */	cmpwi r0, 0
/* 800BFE00 000BCD40  41 82 00 08 */	beq lbl_800BFE08
/* 800BFE04 000BCD44  48 00 00 78 */	b lbl_800BFE7C
lbl_800BFE08:
/* 800BFE08 000BCD48  80 9C 00 00 */	lwz r4, 0(r28)
/* 800BFE0C 000BCD4C  7F 23 CB 78 */	mr r3, r25
/* 800BFE10 000BCD50  80 BC 00 04 */	lwz r5, 4(r28)
/* 800BFE14 000BCD54  80 DC 00 08 */	lwz r6, 8(r28)
/* 800BFE18 000BCD58  80 FF 00 9C */	lwz r7, 0x9c(r31)
/* 800BFE1C 000BCD5C  4B FF 61 49 */	bl THPVideoDecode
/* 800BFE20 000BCD60  2C 03 00 00 */	cmpwi r3, 0
/* 800BFE24 000BCD64  90 7F 00 AC */	stw r3, 0xac(r31)
/* 800BFE28 000BCD68  41 82 00 28 */	beq lbl_800BFE50
/* 800BFE2C 000BCD6C  80 0D 97 44 */	lwz r0, First-_SDA_BASE_(r13)
/* 800BFE30 000BCD70  2C 00 00 00 */	cmpwi r0, 0
/* 800BFE34 000BCD74  41 82 00 14 */	beq lbl_800BFE48
/* 800BFE38 000BCD78  38 60 00 00 */	li r3, 0
/* 800BFE3C 000BCD7C  4B FF F3 B5 */	bl PrepareReady__Fi
/* 800BFE40 000BCD80  38 00 00 00 */	li r0, 0
/* 800BFE44 000BCD84  90 0D 97 44 */	stw r0, First-_SDA_BASE_(r13)
lbl_800BFE48:
/* 800BFE48 000BCD88  7F C3 F3 78 */	mr r3, r30
/* 800BFE4C 000BCD8C  4B FD 3C 45 */	bl OSSuspendThread
lbl_800BFE50:
/* 800BFE50 000BCD90  80 18 00 04 */	lwz r0, 4(r24)
/* 800BFE54 000BCD94  38 9C 00 00 */	addi r4, r28, 0
/* 800BFE58 000BCD98  38 7E 13 30 */	addi r3, r30, 0x1330
/* 800BFE5C 000BCD9C  90 1C 00 0C */	stw r0, 0xc(r28)
/* 800BFE60 000BCDA0  38 A0 00 01 */	li r5, 1
/* 800BFE64 000BCDA4  4B FD 0C 4D */	bl OSSendMessage
/* 800BFE68 000BCDA8  4B FD 03 65 */	bl OSDisableInterrupts
/* 800BFE6C 000BCDAC  80 9F 00 D8 */	lwz r4, 0xd8(r31)
/* 800BFE70 000BCDB0  38 04 00 01 */	addi r0, r4, 1
/* 800BFE74 000BCDB4  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 800BFE78 000BCDB8  4B FD 03 7D */	bl OSRestoreInterrupts
lbl_800BFE7C:
/* 800BFE7C 000BCDBC  80 1A 00 00 */	lwz r0, 0(r26)
/* 800BFE80 000BCDC0  3B 5A 00 04 */	addi r26, r26, 4
/* 800BFE84 000BCDC4  3B 7B 00 01 */	addi r27, r27, 1
/* 800BFE88 000BCDC8  7F 39 02 14 */	add r25, r25, r0
lbl_800BFE8C:
/* 800BFE8C 000BCDCC  80 1D 00 00 */	lwz r0, 0(r29)
/* 800BFE90 000BCDD0  7C 1B 00 40 */	cmplw r27, r0
/* 800BFE94 000BCDD4  41 80 FF 60 */	blt lbl_800BFDF4
/* 800BFE98 000BCDD8  80 0D 97 44 */	lwz r0, First-_SDA_BASE_(r13)
/* 800BFE9C 000BCDDC  2C 00 00 00 */	cmpwi r0, 0
/* 800BFEA0 000BCDE0  41 82 00 14 */	beq lbl_800BFEB4
/* 800BFEA4 000BCDE4  38 60 00 01 */	li r3, 1
/* 800BFEA8 000BCDE8  4B FF F3 49 */	bl PrepareReady__Fi
/* 800BFEAC 000BCDEC  38 00 00 00 */	li r0, 0
/* 800BFEB0 000BCDF0  90 0D 97 44 */	stw r0, First-_SDA_BASE_(r13)
lbl_800BFEB4:
/* 800BFEB4 000BCDF4  BB 01 00 18 */	lmw r24, 0x18(r1)
/* 800BFEB8 000BCDF8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800BFEBC 000BCDFC  38 21 00 38 */	addi r1, r1, 0x38
/* 800BFEC0 000BCE00  7C 08 03 A6 */	mtlr r0
/* 800BFEC4 000BCE04  4E 80 00 20 */	blr 

.global VideoDecoderForOnMemory__FPv
VideoDecoderForOnMemory__FPv:
/* 800BFEC8 000BCE08  7C 08 02 A6 */	mflr r0
/* 800BFECC 000BCE0C  3C 80 80 3F */	lis r4, ActivePlayer@ha
/* 800BFED0 000BCE10  90 01 00 04 */	stw r0, 4(r1)
/* 800BFED4 000BCE14  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800BFED8 000BCE18  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 800BFEDC 000BCE1C  3B E4 E1 00 */	addi r31, r4, ActivePlayer@l
/* 800BFEE0 000BCE20  3C 80 80 3F */	lis r4, VideoDecodeThread@ha
/* 800BFEE4 000BCE24  3B DF 00 D8 */	addi r30, r31, 0xd8
/* 800BFEE8 000BCE28  3B 64 08 E8 */	addi r27, r4, VideoDecodeThread@l
/* 800BFEEC 000BCE2C  3B 80 00 00 */	li r28, 0
/* 800BFEF0 000BCE30  83 BF 00 BC */	lwz r29, 0xbc(r31)
/* 800BFEF4 000BCE34  90 61 00 10 */	stw r3, 0x10(r1)
lbl_800BFEF8:
/* 800BFEF8 000BCE38  88 1F 00 A7 */	lbz r0, 0xa7(r31)
/* 800BFEFC 000BCE3C  28 00 00 00 */	cmplwi r0, 0
/* 800BFF00 000BCE40  41 82 00 84 */	beq lbl_800BFF84
/* 800BFF04 000BCE44  48 00 00 74 */	b lbl_800BFF78
lbl_800BFF08:
/* 800BFF08 000BCE48  4B FD 02 C5 */	bl OSDisableInterrupts
/* 800BFF0C 000BCE4C  80 9E 00 00 */	lwz r4, 0(r30)
/* 800BFF10 000BCE50  38 04 00 01 */	addi r0, r4, 1
/* 800BFF14 000BCE54  90 1E 00 00 */	stw r0, 0(r30)
/* 800BFF18 000BCE58  4B FD 02 DD */	bl OSRestoreInterrupts
/* 800BFF1C 000BCE5C  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800BFF20 000BCE60  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 800BFF24 000BCE64  7C 7C 02 14 */	add r3, r28, r0
/* 800BFF28 000BCE68  7C 03 23 96 */	divwu r0, r3, r4
/* 800BFF2C 000BCE6C  7C 00 21 D6 */	mullw r0, r0, r4
/* 800BFF30 000BCE70  7C 60 18 50 */	subf r3, r0, r3
/* 800BFF34 000BCE74  38 04 FF FF */	addi r0, r4, -1
/* 800BFF38 000BCE78  7C 03 00 40 */	cmplw r3, r0
/* 800BFF3C 000BCE7C  40 82 00 24 */	bne lbl_800BFF60
/* 800BFF40 000BCE80  88 1F 00 A6 */	lbz r0, 0xa6(r31)
/* 800BFF44 000BCE84  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800BFF48 000BCE88  41 82 00 3C */	beq lbl_800BFF84
/* 800BFF4C 000BCE8C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BFF50 000BCE90  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 800BFF54 000BCE94  83 A3 00 00 */	lwz r29, 0(r3)
/* 800BFF58 000BCE98  90 01 00 10 */	stw r0, 0x10(r1)
/* 800BFF5C 000BCE9C  48 00 00 18 */	b lbl_800BFF74
lbl_800BFF60:
/* 800BFF60 000BCEA0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BFF64 000BCEA4  80 83 00 00 */	lwz r4, 0(r3)
/* 800BFF68 000BCEA8  7C 03 EA 14 */	add r0, r3, r29
/* 800BFF6C 000BCEAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 800BFF70 000BCEB0  7C 9D 23 78 */	mr r29, r4
lbl_800BFF74:
/* 800BFF74 000BCEB4  3B 9C 00 01 */	addi r28, r28, 1
lbl_800BFF78:
/* 800BFF78 000BCEB8  80 1E 00 00 */	lwz r0, 0(r30)
/* 800BFF7C 000BCEBC  2C 00 00 00 */	cmpwi r0, 0
/* 800BFF80 000BCEC0  41 80 FF 88 */	blt lbl_800BFF08
lbl_800BFF84:
/* 800BFF84 000BCEC4  93 81 00 14 */	stw r28, 0x14(r1)
/* 800BFF88 000BCEC8  38 61 00 10 */	addi r3, r1, 0x10
/* 800BFF8C 000BCECC  4B FF FE 0D */	bl VideoDecode__FP13THPReadBuffer
/* 800BFF90 000BCED0  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800BFF94 000BCED4  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 800BFF98 000BCED8  7C 7C 02 14 */	add r3, r28, r0
/* 800BFF9C 000BCEDC  7C 03 23 96 */	divwu r0, r3, r4
/* 800BFFA0 000BCEE0  7C 00 21 D6 */	mullw r0, r0, r4
/* 800BFFA4 000BCEE4  7C 60 18 50 */	subf r3, r0, r3
/* 800BFFA8 000BCEE8  38 04 FF FF */	addi r0, r4, -1
/* 800BFFAC 000BCEEC  7C 03 00 40 */	cmplw r3, r0
/* 800BFFB0 000BCEF0  40 82 00 30 */	bne lbl_800BFFE0
/* 800BFFB4 000BCEF4  88 1F 00 A6 */	lbz r0, 0xa6(r31)
/* 800BFFB8 000BCEF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800BFFBC 000BCEFC  41 82 00 18 */	beq lbl_800BFFD4
/* 800BFFC0 000BCF00  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BFFC4 000BCF04  80 1F 00 B4 */	lwz r0, 0xb4(r31)
/* 800BFFC8 000BCF08  83 A3 00 00 */	lwz r29, 0(r3)
/* 800BFFCC 000BCF0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800BFFD0 000BCF10  48 00 00 24 */	b lbl_800BFFF4
lbl_800BFFD4:
/* 800BFFD4 000BCF14  7F 63 DB 78 */	mr r3, r27
/* 800BFFD8 000BCF18  4B FD 3A B9 */	bl OSSuspendThread
/* 800BFFDC 000BCF1C  48 00 00 18 */	b lbl_800BFFF4
lbl_800BFFE0:
/* 800BFFE0 000BCF20  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800BFFE4 000BCF24  80 83 00 00 */	lwz r4, 0(r3)
/* 800BFFE8 000BCF28  7C 03 EA 14 */	add r0, r3, r29
/* 800BFFEC 000BCF2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800BFFF0 000BCF30  7C 9D 23 78 */	mr r29, r4
lbl_800BFFF4:
/* 800BFFF4 000BCF34  3B 9C 00 01 */	addi r28, r28, 1
/* 800BFFF8 000BCF38  4B FF FF 00 */	b lbl_800BFEF8

.global VideoDecoder__FPv
VideoDecoder__FPv:
/* 800BFFFC 000BCF3C  7C 08 02 A6 */	mflr r0
/* 800C0000 000BCF40  3C 60 80 3F */	lis r3, ActivePlayer@ha
/* 800C0004 000BCF44  90 01 00 04 */	stw r0, 4(r1)
/* 800C0008 000BCF48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C000C 000BCF4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800C0010 000BCF50  3B E3 E1 00 */	addi r31, r3, ActivePlayer@l
/* 800C0014 000BCF54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800C0018 000BCF58  3B DF 00 D8 */	addi r30, r31, 0xd8
/* 800C001C 000BCF5C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800C0020 000BCF60  3B BF 00 A7 */	addi r29, r31, 0xa7
/* 800C0024 000BCF64  93 81 00 10 */	stw r28, 0x10(r1)
lbl_800C0028:
/* 800C0028 000BCF68  88 1D 00 00 */	lbz r0, 0(r29)
/* 800C002C 000BCF6C  28 00 00 00 */	cmplwi r0, 0
/* 800C0030 000BCF70  41 82 00 74 */	beq lbl_800C00A4
/* 800C0034 000BCF74  48 00 00 64 */	b lbl_800C0098
lbl_800C0038:
/* 800C0038 000BCF78  4B FF FA 59 */	bl PopReadedBuffer2
/* 800C003C 000BCF7C  7C 7C 1B 78 */	mr r28, r3
/* 800C0040 000BCF80  80 BF 00 50 */	lwz r5, 0x50(r31)
/* 800C0044 000BCF84  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 800C0048 000BCF88  80 9C 00 04 */	lwz r4, 4(r28)
/* 800C004C 000BCF8C  38 05 FF FF */	addi r0, r5, -1
/* 800C0050 000BCF90  7C 84 1A 14 */	add r4, r4, r3
/* 800C0054 000BCF94  7C 64 2B 96 */	divwu r3, r4, r5
/* 800C0058 000BCF98  7C 63 29 D6 */	mullw r3, r3, r5
/* 800C005C 000BCF9C  7C 63 20 50 */	subf r3, r3, r4
/* 800C0060 000BCFA0  7C 03 00 40 */	cmplw r3, r0
/* 800C0064 000BCFA4  40 82 00 18 */	bne lbl_800C007C
/* 800C0068 000BCFA8  88 1F 00 A6 */	lbz r0, 0xa6(r31)
/* 800C006C 000BCFAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800C0070 000BCFB0  40 82 00 0C */	bne lbl_800C007C
/* 800C0074 000BCFB4  7F 83 E3 78 */	mr r3, r28
/* 800C0078 000BCFB8  4B FF FD 21 */	bl VideoDecode__FP13THPReadBuffer
lbl_800C007C:
/* 800C007C 000BCFBC  7F 83 E3 78 */	mr r3, r28
/* 800C0080 000BCFC0  4B FF FA 45 */	bl PushFreeReadBuffer
/* 800C0084 000BCFC4  4B FD 01 49 */	bl OSDisableInterrupts
/* 800C0088 000BCFC8  80 9E 00 00 */	lwz r4, 0(r30)
/* 800C008C 000BCFCC  38 04 00 01 */	addi r0, r4, 1
/* 800C0090 000BCFD0  90 1E 00 00 */	stw r0, 0(r30)
/* 800C0094 000BCFD4  4B FD 01 61 */	bl OSRestoreInterrupts
lbl_800C0098:
/* 800C0098 000BCFD8  80 1E 00 00 */	lwz r0, 0(r30)
/* 800C009C 000BCFDC  2C 00 00 00 */	cmpwi r0, 0
/* 800C00A0 000BCFE0  41 80 FF 98 */	blt lbl_800C0038
lbl_800C00A4:
/* 800C00A4 000BCFE4  88 1D 00 00 */	lbz r0, 0(r29)
/* 800C00A8 000BCFE8  28 00 00 00 */	cmplwi r0, 0
/* 800C00AC 000BCFEC  41 82 00 10 */	beq lbl_800C00BC
/* 800C00B0 000BCFF0  4B FF F9 E1 */	bl PopReadedBuffer2
/* 800C00B4 000BCFF4  7C 7C 1B 78 */	mr r28, r3
/* 800C00B8 000BCFF8  48 00 00 0C */	b lbl_800C00C4
lbl_800C00BC:
/* 800C00BC 000BCFFC  4B FF FA 39 */	bl PopReadedBuffer
/* 800C00C0 000BD000  7C 7C 1B 78 */	mr r28, r3
lbl_800C00C4:
/* 800C00C4 000BD004  7F 83 E3 78 */	mr r3, r28
/* 800C00C8 000BD008  4B FF FC D1 */	bl VideoDecode__FP13THPReadBuffer
/* 800C00CC 000BD00C  7F 83 E3 78 */	mr r3, r28
/* 800C00D0 000BD010  4B FF F9 F5 */	bl PushFreeReadBuffer
/* 800C00D4 000BD014  4B FF FF 54 */	b lbl_800C0028

.global VideoDecodeThreadCancel
VideoDecodeThreadCancel:
/* 800C00D8 000BD018  7C 08 02 A6 */	mflr r0
/* 800C00DC 000BD01C  90 01 00 04 */	stw r0, 4(r1)
/* 800C00E0 000BD020  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C00E4 000BD024  80 0D 97 40 */	lwz r0, VideoDecodeThreadCreated-_SDA_BASE_(r13)
/* 800C00E8 000BD028  2C 00 00 00 */	cmpwi r0, 0
/* 800C00EC 000BD02C  41 82 00 18 */	beq lbl_800C0104
/* 800C00F0 000BD030  3C 60 80 3F */	lis r3, VideoDecodeThread@ha
/* 800C00F4 000BD034  38 63 08 E8 */	addi r3, r3, VideoDecodeThread@l
/* 800C00F8 000BD038  4B FD 33 75 */	bl OSCancelThread
/* 800C00FC 000BD03C  38 00 00 00 */	li r0, 0
/* 800C0100 000BD040  90 0D 97 40 */	stw r0, VideoDecodeThreadCreated-_SDA_BASE_(r13)
lbl_800C0104:
/* 800C0104 000BD044  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C0108 000BD048  38 21 00 08 */	addi r1, r1, 8
/* 800C010C 000BD04C  7C 08 03 A6 */	mtlr r0
/* 800C0110 000BD050  4E 80 00 20 */	blr 

.global VideoDecodeThreadStart
VideoDecodeThreadStart:
/* 800C0114 000BD054  7C 08 02 A6 */	mflr r0
/* 800C0118 000BD058  90 01 00 04 */	stw r0, 4(r1)
/* 800C011C 000BD05C  94 21 FF F8 */	stwu r1, -8(r1)
/* 800C0120 000BD060  80 0D 97 40 */	lwz r0, VideoDecodeThreadCreated-_SDA_BASE_(r13)
/* 800C0124 000BD064  2C 00 00 00 */	cmpwi r0, 0
/* 800C0128 000BD068  41 82 00 10 */	beq lbl_800C0138
/* 800C012C 000BD06C  3C 60 80 3F */	lis r3, VideoDecodeThread@ha
/* 800C0130 000BD070  38 63 08 E8 */	addi r3, r3, VideoDecodeThread@l
/* 800C0134 000BD074  4B FD 36 D5 */	bl OSResumeThread
lbl_800C0138:
/* 800C0138 000BD078  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800C013C 000BD07C  38 21 00 08 */	addi r1, r1, 8
/* 800C0140 000BD080  7C 08 03 A6 */	mtlr r0
/* 800C0144 000BD084  4E 80 00 20 */	blr 

.global CreateVideoDecodeThread
CreateVideoDecodeThread:
/* 800C0148 000BD088  7C 08 02 A6 */	mflr r0
/* 800C014C 000BD08C  7C 85 23 79 */	or. r5, r4, r4
/* 800C0150 000BD090  90 01 00 04 */	stw r0, 4(r1)
/* 800C0154 000BD094  3C 80 80 3F */	lis r4, VideoDecodeThread@ha
/* 800C0158 000BD098  39 03 00 00 */	addi r8, r3, 0
/* 800C015C 000BD09C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800C0160 000BD0A0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800C0164 000BD0A4  3B E4 08 E8 */	addi r31, r4, VideoDecodeThread@l
/* 800C0168 000BD0A8  41 82 00 30 */	beq lbl_800C0198
/* 800C016C 000BD0AC  3C 60 80 0C */	lis r3, VideoDecoderForOnMemory__FPv@ha
/* 800C0170 000BD0B0  38 83 FE C8 */	addi r4, r3, VideoDecoderForOnMemory__FPv@l
/* 800C0174 000BD0B4  38 7F 00 00 */	addi r3, r31, 0
/* 800C0178 000BD0B8  38 DF 13 10 */	addi r6, r31, 0x1310
/* 800C017C 000BD0BC  38 E0 10 00 */	li r7, 0x1000
/* 800C0180 000BD0C0  39 20 00 01 */	li r9, 1
/* 800C0184 000BD0C4  4B FD 30 E5 */	bl OSCreateThread
/* 800C0188 000BD0C8  2C 03 00 00 */	cmpwi r3, 0
/* 800C018C 000BD0CC  40 82 00 3C */	bne lbl_800C01C8
/* 800C0190 000BD0D0  38 60 00 00 */	li r3, 0
/* 800C0194 000BD0D4  48 00 00 64 */	b lbl_800C01F8
lbl_800C0198:
/* 800C0198 000BD0D8  3C 60 80 0C */	lis r3, VideoDecoder__FPv@ha
/* 800C019C 000BD0DC  38 83 FF FC */	addi r4, r3, VideoDecoder__FPv@l
/* 800C01A0 000BD0E0  38 7F 00 00 */	addi r3, r31, 0
/* 800C01A4 000BD0E4  38 DF 13 10 */	addi r6, r31, 0x1310
/* 800C01A8 000BD0E8  38 A0 00 00 */	li r5, 0
/* 800C01AC 000BD0EC  38 E0 10 00 */	li r7, 0x1000
/* 800C01B0 000BD0F0  39 20 00 01 */	li r9, 1
/* 800C01B4 000BD0F4  4B FD 30 B5 */	bl OSCreateThread
/* 800C01B8 000BD0F8  2C 03 00 00 */	cmpwi r3, 0
/* 800C01BC 000BD0FC  40 82 00 0C */	bne lbl_800C01C8
/* 800C01C0 000BD100  38 60 00 00 */	li r3, 0
/* 800C01C4 000BD104  48 00 00 34 */	b lbl_800C01F8
lbl_800C01C8:
/* 800C01C8 000BD108  38 7F 13 10 */	addi r3, r31, 0x1310
/* 800C01CC 000BD10C  38 9F 13 50 */	addi r4, r31, 0x1350
/* 800C01D0 000BD110  38 A0 00 03 */	li r5, 3
/* 800C01D4 000BD114  4B FD 08 7D */	bl OSInitMessageQueue
/* 800C01D8 000BD118  38 7F 13 30 */	addi r3, r31, 0x1330
/* 800C01DC 000BD11C  38 9F 13 5C */	addi r4, r31, 0x135c
/* 800C01E0 000BD120  38 A0 00 03 */	li r5, 3
/* 800C01E4 000BD124  4B FD 08 6D */	bl OSInitMessageQueue
/* 800C01E8 000BD128  38 00 00 01 */	li r0, 1
/* 800C01EC 000BD12C  90 0D 97 40 */	stw r0, VideoDecodeThreadCreated-_SDA_BASE_(r13)
/* 800C01F0 000BD130  38 60 00 01 */	li r3, 1
/* 800C01F4 000BD134  90 0D 97 44 */	stw r0, First-_SDA_BASE_(r13)
lbl_800C01F8:
/* 800C01F8 000BD138  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800C01FC 000BD13C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800C0200 000BD140  38 21 00 18 */	addi r1, r1, 0x18
/* 800C0204 000BD144  7C 08 03 A6 */	mtlr r0
/* 800C0208 000BD148  4E 80 00 20 */	blr 

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
VideoDecodeThread:
	.skip 0x310
VideoDecodeThreadStack:
	.skip 0x1000
FreeTextureSetQueue:
	.skip 0x20
DecodedTextureSetQueue:
	.skip 0x20
FreeTextureSetMessage:
	.skip 0xC
DecodedTextureSetMessage:
	.skip 0xC

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
VideoDecodeThreadCreated:
	.skip 0x4
First:
	.skip 0x4
