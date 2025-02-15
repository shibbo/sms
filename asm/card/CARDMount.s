.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global IsCard
IsCard:
/* 800A28FC 0009F83C  54 60 00 1F */	rlwinm. r0, r3, 0, 0, 0xf
/* 800A2900 0009F840  41 82 00 24 */	beq lbl_800A2924
/* 800A2904 0009F844  3C 03 80 00 */	addis r0, r3, 0x8000
/* 800A2908 0009F848  28 00 00 04 */	cmplwi r0, 4
/* 800A290C 0009F84C  40 82 00 10 */	bne lbl_800A291C
/* 800A2910 0009F850  A0 0D 82 C0 */	lhz r0, __CARDVendorID@sda21(r13)
/* 800A2914 0009F854  28 00 FF FF */	cmplwi r0, 0xffff
/* 800A2918 0009F858  40 82 00 0C */	bne lbl_800A2924
lbl_800A291C:
/* 800A291C 0009F85C  38 60 00 00 */	li r3, 0
/* 800A2920 0009F860  4E 80 00 20 */	blr 
lbl_800A2924:
/* 800A2924 0009F864  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 800A2928 0009F868  41 82 00 0C */	beq lbl_800A2934
/* 800A292C 0009F86C  38 60 00 00 */	li r3, 0
/* 800A2930 0009F870  4E 80 00 20 */	blr 
lbl_800A2934:
/* 800A2934 0009F874  54 65 06 3A */	rlwinm r5, r3, 0, 0x18, 0x1d
/* 800A2938 0009F878  2C 05 00 20 */	cmpwi r5, 0x20
/* 800A293C 0009F87C  41 82 00 48 */	beq lbl_800A2984
/* 800A2940 0009F880  40 80 00 28 */	bge lbl_800A2968
/* 800A2944 0009F884  2C 05 00 08 */	cmpwi r5, 8
/* 800A2948 0009F888  41 82 00 3C */	beq lbl_800A2984
/* 800A294C 0009F88C  40 80 00 10 */	bge lbl_800A295C
/* 800A2950 0009F890  2C 05 00 04 */	cmpwi r5, 4
/* 800A2954 0009F894  41 82 00 30 */	beq lbl_800A2984
/* 800A2958 0009F898  48 00 00 24 */	b lbl_800A297C
lbl_800A295C:
/* 800A295C 0009F89C  2C 05 00 10 */	cmpwi r5, 0x10
/* 800A2960 0009F8A0  41 82 00 24 */	beq lbl_800A2984
/* 800A2964 0009F8A4  48 00 00 18 */	b lbl_800A297C
lbl_800A2968:
/* 800A2968 0009F8A8  2C 05 00 80 */	cmpwi r5, 0x80
/* 800A296C 0009F8AC  41 82 00 18 */	beq lbl_800A2984
/* 800A2970 0009F8B0  40 80 00 0C */	bge lbl_800A297C
/* 800A2974 0009F8B4  2C 05 00 40 */	cmpwi r5, 0x40
/* 800A2978 0009F8B8  41 82 00 0C */	beq lbl_800A2984
lbl_800A297C:
/* 800A297C 0009F8BC  38 60 00 00 */	li r3, 0
/* 800A2980 0009F8C0  4E 80 00 20 */	blr 
lbl_800A2984:
/* 800A2984 0009F8C4  3C 80 80 3B */	lis r4, SectorSizeTable@ha
/* 800A2988 0009F8C8  54 63 BE FA */	rlwinm r3, r3, 0x17, 0x1b, 0x1d
/* 800A298C 0009F8CC  38 04 15 00 */	addi r0, r4, SectorSizeTable@l
/* 800A2990 0009F8D0  7C 60 1A 14 */	add r3, r0, r3
/* 800A2994 0009F8D4  80 63 00 00 */	lwz r3, 0(r3)
/* 800A2998 0009F8D8  2C 03 00 00 */	cmpwi r3, 0
/* 800A299C 0009F8DC  40 82 00 0C */	bne lbl_800A29A8
/* 800A29A0 0009F8E0  38 60 00 00 */	li r3, 0
/* 800A29A4 0009F8E4  4E 80 00 20 */	blr 
lbl_800A29A8:
/* 800A29A8 0009F8E8  54 A0 88 DC */	rlwinm r0, r5, 0x11, 3, 0xe
/* 800A29AC 0009F8EC  7C 00 1B 96 */	divwu r0, r0, r3
/* 800A29B0 0009F8F0  28 00 00 08 */	cmplwi r0, 8
/* 800A29B4 0009F8F4  40 80 00 0C */	bge lbl_800A29C0
/* 800A29B8 0009F8F8  38 60 00 00 */	li r3, 0
/* 800A29BC 0009F8FC  4E 80 00 20 */	blr 
lbl_800A29C0:
/* 800A29C0 0009F900  38 60 00 01 */	li r3, 1
/* 800A29C4 0009F904  4E 80 00 20 */	blr 

.global CARDProbeEx
CARDProbeEx:
/* 800A29C8 0009F908  7C 08 02 A6 */	mflr r0
/* 800A29CC 0009F90C  90 01 00 04 */	stw r0, 4(r1)
/* 800A29D0 0009F910  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A29D4 0009F914  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 800A29D8 0009F918  7C 7B 1B 79 */	or. r27, r3, r3
/* 800A29DC 0009F91C  3B 84 00 00 */	addi r28, r4, 0
/* 800A29E0 0009F920  3B E5 00 00 */	addi r31, r5, 0
/* 800A29E4 0009F924  41 80 00 0C */	blt lbl_800A29F0
/* 800A29E8 0009F928  2C 1B 00 02 */	cmpwi r27, 2
/* 800A29EC 0009F92C  41 80 00 0C */	blt lbl_800A29F8
lbl_800A29F0:
/* 800A29F0 0009F930  38 60 FF 80 */	li r3, -128
/* 800A29F4 0009F934  48 00 01 3C */	b lbl_800A2B30
lbl_800A29F8:
/* 800A29F8 0009F938  3C 60 80 00 */	lis r3, 0x800030E3@ha
/* 800A29FC 0009F93C  88 03 30 E3 */	lbz r0, 0x800030E3@l(r3)
/* 800A2A00 0009F940  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800A2A04 0009F944  41 82 00 0C */	beq lbl_800A2A10
/* 800A2A08 0009F948  38 60 FF FD */	li r3, -3
/* 800A2A0C 0009F94C  48 00 01 24 */	b lbl_800A2B30
lbl_800A2A10:
/* 800A2A10 0009F950  1C 9B 01 10 */	mulli r4, r27, 0x110
/* 800A2A14 0009F954  3C 60 80 3F */	lis r3, __CARDBlock@ha
/* 800A2A18 0009F958  38 03 BF 60 */	addi r0, r3, __CARDBlock@l
/* 800A2A1C 0009F95C  7F C0 22 14 */	add r30, r0, r4
/* 800A2A20 0009F960  4B FE D7 AD */	bl OSDisableInterrupts
/* 800A2A24 0009F964  3B A3 00 00 */	addi r29, r3, 0
/* 800A2A28 0009F968  38 7B 00 00 */	addi r3, r27, 0
/* 800A2A2C 0009F96C  48 01 23 C1 */	bl EXIProbeEx
/* 800A2A30 0009F970  2C 03 FF FF */	cmpwi r3, -1
/* 800A2A34 0009F974  40 82 00 0C */	bne lbl_800A2A40
/* 800A2A38 0009F978  3B C0 FF FD */	li r30, -3
/* 800A2A3C 0009F97C  48 00 00 E8 */	b lbl_800A2B24
lbl_800A2A40:
/* 800A2A40 0009F980  2C 03 00 00 */	cmpwi r3, 0
/* 800A2A44 0009F984  40 82 00 0C */	bne lbl_800A2A50
/* 800A2A48 0009F988  3B C0 FF FF */	li r30, -1
/* 800A2A4C 0009F98C  48 00 00 D8 */	b lbl_800A2B24
lbl_800A2A50:
/* 800A2A50 0009F990  80 1E 00 00 */	lwz r0, 0(r30)
/* 800A2A54 0009F994  2C 00 00 00 */	cmpwi r0, 0
/* 800A2A58 0009F998  41 82 00 40 */	beq lbl_800A2A98
/* 800A2A5C 0009F99C  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 800A2A60 0009F9A0  2C 00 00 01 */	cmpwi r0, 1
/* 800A2A64 0009F9A4  40 80 00 0C */	bge lbl_800A2A70
/* 800A2A68 0009F9A8  3B C0 FF FF */	li r30, -1
/* 800A2A6C 0009F9AC  48 00 00 B8 */	b lbl_800A2B24
lbl_800A2A70:
/* 800A2A70 0009F9B0  28 1C 00 00 */	cmplwi r28, 0
/* 800A2A74 0009F9B4  41 82 00 0C */	beq lbl_800A2A80
/* 800A2A78 0009F9B8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 800A2A7C 0009F9BC  90 1C 00 00 */	stw r0, 0(r28)
lbl_800A2A80:
/* 800A2A80 0009F9C0  28 1F 00 00 */	cmplwi r31, 0
/* 800A2A84 0009F9C4  41 82 00 0C */	beq lbl_800A2A90
/* 800A2A88 0009F9C8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 800A2A8C 0009F9CC  90 1F 00 00 */	stw r0, 0(r31)
lbl_800A2A90:
/* 800A2A90 0009F9D0  3B C0 00 00 */	li r30, 0
/* 800A2A94 0009F9D4  48 00 00 90 */	b lbl_800A2B24
lbl_800A2A98:
/* 800A2A98 0009F9D8  7F 63 DB 78 */	mr r3, r27
/* 800A2A9C 0009F9DC  48 01 2E 95 */	bl EXIGetState
/* 800A2AA0 0009F9E0  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 800A2AA4 0009F9E4  41 82 00 0C */	beq lbl_800A2AB0
/* 800A2AA8 0009F9E8  3B C0 FF FE */	li r30, -2
/* 800A2AAC 0009F9EC  48 00 00 78 */	b lbl_800A2B24
lbl_800A2AB0:
/* 800A2AB0 0009F9F0  38 7B 00 00 */	addi r3, r27, 0
/* 800A2AB4 0009F9F4  38 A1 00 14 */	addi r5, r1, 0x14
/* 800A2AB8 0009F9F8  38 80 00 00 */	li r4, 0
/* 800A2ABC 0009F9FC  48 01 2E B5 */	bl EXIGetID
/* 800A2AC0 0009FA00  2C 03 00 00 */	cmpwi r3, 0
/* 800A2AC4 0009FA04  40 82 00 0C */	bne lbl_800A2AD0
/* 800A2AC8 0009FA08  3B C0 FF FF */	li r30, -1
/* 800A2ACC 0009FA0C  48 00 00 58 */	b lbl_800A2B24
lbl_800A2AD0:
/* 800A2AD0 0009FA10  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800A2AD4 0009FA14  4B FF FE 29 */	bl IsCard
/* 800A2AD8 0009FA18  2C 03 00 00 */	cmpwi r3, 0
/* 800A2ADC 0009FA1C  41 82 00 44 */	beq lbl_800A2B20
/* 800A2AE0 0009FA20  28 1C 00 00 */	cmplwi r28, 0
/* 800A2AE4 0009FA24  41 82 00 10 */	beq lbl_800A2AF4
/* 800A2AE8 0009FA28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A2AEC 0009FA2C  54 00 06 3A */	rlwinm r0, r0, 0, 0x18, 0x1d
/* 800A2AF0 0009FA30  90 1C 00 00 */	stw r0, 0(r28)
lbl_800A2AF4:
/* 800A2AF4 0009FA34  28 1F 00 00 */	cmplwi r31, 0
/* 800A2AF8 0009FA38  41 82 00 20 */	beq lbl_800A2B18
/* 800A2AFC 0009FA3C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 800A2B00 0009FA40  3C 60 80 3B */	lis r3, SectorSizeTable@ha
/* 800A2B04 0009FA44  38 03 15 00 */	addi r0, r3, SectorSizeTable@l
/* 800A2B08 0009FA48  54 83 BE FA */	rlwinm r3, r4, 0x17, 0x1b, 0x1d
/* 800A2B0C 0009FA4C  7C 60 1A 14 */	add r3, r0, r3
/* 800A2B10 0009FA50  80 03 00 00 */	lwz r0, 0(r3)
/* 800A2B14 0009FA54  90 1F 00 00 */	stw r0, 0(r31)
lbl_800A2B18:
/* 800A2B18 0009FA58  3B C0 00 00 */	li r30, 0
/* 800A2B1C 0009FA5C  48 00 00 08 */	b lbl_800A2B24
lbl_800A2B20:
/* 800A2B20 0009FA60  3B C0 FF FE */	li r30, -2
lbl_800A2B24:
/* 800A2B24 0009FA64  7F A3 EB 78 */	mr r3, r29
/* 800A2B28 0009FA68  4B FE D6 CD */	bl OSRestoreInterrupts
/* 800A2B2C 0009FA6C  7F C3 F3 78 */	mr r3, r30
lbl_800A2B30:
/* 800A2B30 0009FA70  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 800A2B34 0009FA74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A2B38 0009FA78  38 21 00 30 */	addi r1, r1, 0x30
/* 800A2B3C 0009FA7C  7C 08 03 A6 */	mtlr r0
/* 800A2B40 0009FA80  4E 80 00 20 */	blr 

.global DoMount
DoMount:
/* 800A2B44 0009FA84  7C 08 02 A6 */	mflr r0
/* 800A2B48 0009FA88  90 01 00 04 */	stw r0, 4(r1)
/* 800A2B4C 0009FA8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A2B50 0009FA90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800A2B54 0009FA94  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800A2B58 0009FA98  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800A2B5C 0009FA9C  3B A3 00 00 */	addi r29, r3, 0
/* 800A2B60 0009FAA0  1C 9D 01 10 */	mulli r4, r29, 0x110
/* 800A2B64 0009FAA4  93 81 00 20 */	stw r28, 0x20(r1)
/* 800A2B68 0009FAA8  3C 60 80 3F */	lis r3, __CARDBlock@ha
/* 800A2B6C 0009FAAC  38 03 BF 60 */	addi r0, r3, __CARDBlock@l
/* 800A2B70 0009FAB0  7C 60 22 14 */	add r3, r0, r4
/* 800A2B74 0009FAB4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800A2B78 0009FAB8  3B E3 00 00 */	addi r31, r3, 0
/* 800A2B7C 0009FABC  2C 00 00 00 */	cmpwi r0, 0
/* 800A2B80 0009FAC0  40 82 02 AC */	bne lbl_800A2E2C
/* 800A2B84 0009FAC4  38 7D 00 00 */	addi r3, r29, 0
/* 800A2B88 0009FAC8  38 A1 00 18 */	addi r5, r1, 0x18
/* 800A2B8C 0009FACC  38 80 00 00 */	li r4, 0
/* 800A2B90 0009FAD0  48 01 2D E1 */	bl EXIGetID
/* 800A2B94 0009FAD4  2C 03 00 00 */	cmpwi r3, 0
/* 800A2B98 0009FAD8  40 82 00 0C */	bne lbl_800A2BA4
/* 800A2B9C 0009FADC  3B C0 FF FD */	li r30, -3
/* 800A2BA0 0009FAE0  48 00 00 20 */	b lbl_800A2BC0
lbl_800A2BA4:
/* 800A2BA4 0009FAE4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800A2BA8 0009FAE8  4B FF FD 55 */	bl IsCard
/* 800A2BAC 0009FAEC  2C 03 00 00 */	cmpwi r3, 0
/* 800A2BB0 0009FAF0  41 82 00 0C */	beq lbl_800A2BBC
/* 800A2BB4 0009FAF4  3B C0 00 00 */	li r30, 0
/* 800A2BB8 0009FAF8  48 00 00 08 */	b lbl_800A2BC0
lbl_800A2BBC:
/* 800A2BBC 0009FAFC  3B C0 FF FE */	li r30, -2
lbl_800A2BC0:
/* 800A2BC0 0009FB00  2C 1E 00 00 */	cmpwi r30, 0
/* 800A2BC4 0009FB04  41 80 03 44 */	blt lbl_800A2F08
/* 800A2BC8 0009FB08  80 01 00 18 */	lwz r0, 0x18(r1)
/* 800A2BCC 0009FB0C  3C 80 80 3B */	lis r4, SectorSizeTable@ha
/* 800A2BD0 0009FB10  38 84 15 00 */	addi r4, r4, SectorSizeTable@l
/* 800A2BD4 0009FB14  90 1F 01 08 */	stw r0, 0x108(r31)
/* 800A2BD8 0009FB18  3C 60 80 3B */	lis r3, LatencyTable@ha
/* 800A2BDC 0009FB1C  38 03 15 20 */	addi r0, r3, LatencyTable@l
/* 800A2BE0 0009FB20  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 800A2BE4 0009FB24  38 7D 00 00 */	addi r3, r29, 0
/* 800A2BE8 0009FB28  54 A5 06 3A */	rlwinm r5, r5, 0, 0x18, 0x1d
/* 800A2BEC 0009FB2C  B0 BF 00 08 */	sth r5, 8(r31)
/* 800A2BF0 0009FB30  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 800A2BF4 0009FB34  54 A5 BE FA */	rlwinm r5, r5, 0x17, 0x1b, 0x1d
/* 800A2BF8 0009FB38  7C 84 2A 14 */	add r4, r4, r5
/* 800A2BFC 0009FB3C  80 84 00 00 */	lwz r4, 0(r4)
/* 800A2C00 0009FB40  90 9F 00 0C */	stw r4, 0xc(r31)
/* 800A2C04 0009FB44  A0 BF 00 08 */	lhz r5, 8(r31)
/* 800A2C08 0009FB48  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 800A2C0C 0009FB4C  54 A5 A0 16 */	slwi r5, r5, 0x14
/* 800A2C10 0009FB50  7C A5 1E 70 */	srawi r5, r5, 3
/* 800A2C14 0009FB54  7C A5 01 94 */	addze r5, r5
/* 800A2C18 0009FB58  7C 85 23 D6 */	divw r4, r5, r4
/* 800A2C1C 0009FB5C  B0 9F 00 10 */	sth r4, 0x10(r31)
/* 800A2C20 0009FB60  80 81 00 18 */	lwz r4, 0x18(r1)
/* 800A2C24 0009FB64  54 84 D6 FA */	rlwinm r4, r4, 0x1a, 0x1b, 0x1d
/* 800A2C28 0009FB68  7C 80 22 14 */	add r4, r0, r4
/* 800A2C2C 0009FB6C  80 04 00 00 */	lwz r0, 0(r4)
/* 800A2C30 0009FB70  90 1F 00 14 */	stw r0, 0x14(r31)
/* 800A2C34 0009FB74  4B FF C5 1D */	bl __CARDClearStatus
/* 800A2C38 0009FB78  7C 7E 1B 79 */	or. r30, r3, r3
/* 800A2C3C 0009FB7C  41 80 02 CC */	blt lbl_800A2F08
/* 800A2C40 0009FB80  38 7D 00 00 */	addi r3, r29, 0
/* 800A2C44 0009FB84  38 81 00 14 */	addi r4, r1, 0x14
/* 800A2C48 0009FB88  4B FF C4 19 */	bl __CARDReadStatus
/* 800A2C4C 0009FB8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800A2C50 0009FB90  41 80 02 B8 */	blt lbl_800A2F08
/* 800A2C54 0009FB94  7F A3 EB 78 */	mr r3, r29
/* 800A2C58 0009FB98  48 01 21 15 */	bl EXIProbe
/* 800A2C5C 0009FB9C  2C 03 00 00 */	cmpwi r3, 0
/* 800A2C60 0009FBA0  40 82 00 0C */	bne lbl_800A2C6C
/* 800A2C64 0009FBA4  3B C0 FF FD */	li r30, -3
/* 800A2C68 0009FBA8  48 00 02 A0 */	b lbl_800A2F08
lbl_800A2C6C:
/* 800A2C6C 0009FBAC  88 01 00 14 */	lbz r0, 0x14(r1)
/* 800A2C70 0009FBB0  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800A2C74 0009FBB4  40 82 01 14 */	bne lbl_800A2D88
/* 800A2C78 0009FBB8  38 7D 00 00 */	addi r3, r29, 0
/* 800A2C7C 0009FBBC  38 9F 00 18 */	addi r4, r31, 0x18
/* 800A2C80 0009FBC0  4B FF D5 DD */	bl __CARDUnlock
/* 800A2C84 0009FBC4  7C 7E 1B 79 */	or. r30, r3, r3
/* 800A2C88 0009FBC8  41 80 02 80 */	blt lbl_800A2F08
/* 800A2C8C 0009FBCC  4B FE F4 2D */	bl __OSLockSramEx
/* 800A2C90 0009FBD0  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 800A2C94 0009FBD4  7C 83 02 14 */	add r4, r3, r0
/* 800A2C98 0009FBD8  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 800A2C9C 0009FBDC  38 BF 00 18 */	addi r5, r31, 0x18
/* 800A2CA0 0009FBE0  98 04 00 00 */	stb r0, 0(r4)
/* 800A2CA4 0009FBE4  39 05 00 02 */	addi r8, r5, 2
/* 800A2CA8 0009FBE8  39 25 00 03 */	addi r9, r5, 3
/* 800A2CAC 0009FBEC  88 FF 00 18 */	lbz r7, 0x18(r31)
/* 800A2CB0 0009FBF0  39 45 00 04 */	addi r10, r5, 4
/* 800A2CB4 0009FBF4  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 800A2CB8 0009FBF8  39 65 00 05 */	addi r11, r5, 5
/* 800A2CBC 0009FBFC  39 85 00 06 */	addi r12, r5, 6
/* 800A2CC0 0009FC00  98 04 00 01 */	stb r0, 1(r4)
/* 800A2CC4 0009FC04  3B 85 00 07 */	addi r28, r5, 7
/* 800A2CC8 0009FC08  38 A0 00 08 */	li r5, 8
/* 800A2CCC 0009FC0C  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 800A2CD0 0009FC10  88 C8 00 00 */	lbz r6, 0(r8)
/* 800A2CD4 0009FC14  7C 07 02 14 */	add r0, r7, r0
/* 800A2CD8 0009FC18  98 C4 00 02 */	stb r6, 2(r4)
/* 800A2CDC 0009FC1C  88 E8 00 00 */	lbz r7, 0(r8)
/* 800A2CE0 0009FC20  88 C9 00 00 */	lbz r6, 0(r9)
/* 800A2CE4 0009FC24  7C 00 3A 14 */	add r0, r0, r7
/* 800A2CE8 0009FC28  98 C4 00 03 */	stb r6, 3(r4)
/* 800A2CEC 0009FC2C  88 E9 00 00 */	lbz r7, 0(r9)
/* 800A2CF0 0009FC30  88 CA 00 00 */	lbz r6, 0(r10)
/* 800A2CF4 0009FC34  7C 00 3A 14 */	add r0, r0, r7
/* 800A2CF8 0009FC38  98 C4 00 04 */	stb r6, 4(r4)
/* 800A2CFC 0009FC3C  88 EA 00 00 */	lbz r7, 0(r10)
/* 800A2D00 0009FC40  88 CB 00 00 */	lbz r6, 0(r11)
/* 800A2D04 0009FC44  7C 00 3A 14 */	add r0, r0, r7
/* 800A2D08 0009FC48  98 C4 00 05 */	stb r6, 5(r4)
/* 800A2D0C 0009FC4C  88 EB 00 00 */	lbz r7, 0(r11)
/* 800A2D10 0009FC50  88 CC 00 00 */	lbz r6, 0(r12)
/* 800A2D14 0009FC54  7C 00 3A 14 */	add r0, r0, r7
/* 800A2D18 0009FC58  98 C4 00 06 */	stb r6, 6(r4)
/* 800A2D1C 0009FC5C  88 EC 00 00 */	lbz r7, 0(r12)
/* 800A2D20 0009FC60  88 DC 00 00 */	lbz r6, 0(r28)
/* 800A2D24 0009FC64  7C 00 3A 14 */	add r0, r0, r7
/* 800A2D28 0009FC68  98 C4 00 07 */	stb r6, 7(r4)
/* 800A2D2C 0009FC6C  88 DC 00 00 */	lbz r6, 0(r28)
/* 800A2D30 0009FC70  7C 00 32 14 */	add r0, r0, r6
/* 800A2D34 0009FC74  48 00 01 F0 */	b lbl_800A2F24
lbl_800A2D38:
/* 800A2D38 0009FC78  20 85 00 0C */	subfic r4, r5, 0xc
/* 800A2D3C 0009FC7C  2C 05 00 0C */	cmpwi r5, 0xc
/* 800A2D40 0009FC80  7C 89 03 A6 */	mtctr r4
/* 800A2D44 0009FC84  40 80 00 28 */	bge lbl_800A2D6C
lbl_800A2D48:
/* 800A2D48 0009FC88  38 E5 00 18 */	addi r7, r5, 0x18
/* 800A2D4C 0009FC8C  7C FF 3A 14 */	add r7, r31, r7
/* 800A2D50 0009FC90  88 87 00 00 */	lbz r4, 0(r7)
/* 800A2D54 0009FC94  38 A5 00 01 */	addi r5, r5, 1
/* 800A2D58 0009FC98  98 86 00 00 */	stb r4, 0(r6)
/* 800A2D5C 0009FC9C  38 C6 00 01 */	addi r6, r6, 1
/* 800A2D60 0009FCA0  88 87 00 00 */	lbz r4, 0(r7)
/* 800A2D64 0009FCA4  7C 00 22 14 */	add r0, r0, r4
/* 800A2D68 0009FCA8  42 00 FF E0 */	bdnz lbl_800A2D48
lbl_800A2D6C:
/* 800A2D6C 0009FCAC  7C 63 EA 14 */	add r3, r3, r29
/* 800A2D70 0009FCB0  7C 00 00 F8 */	nor r0, r0, r0
/* 800A2D74 0009FCB4  98 03 00 26 */	stb r0, 0x26(r3)
/* 800A2D78 0009FCB8  38 60 00 01 */	li r3, 1
/* 800A2D7C 0009FCBC  4B FE F6 C5 */	bl __OSUnlockSramEx
/* 800A2D80 0009FCC0  7F C3 F3 78 */	mr r3, r30
/* 800A2D84 0009FCC4  48 00 01 B0 */	b lbl_800A2F34
lbl_800A2D88:
/* 800A2D88 0009FCC8  38 00 00 01 */	li r0, 1
/* 800A2D8C 0009FCCC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800A2D90 0009FCD0  4B FE F3 29 */	bl __OSLockSramEx
/* 800A2D94 0009FCD4  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 800A2D98 0009FCD8  3B C3 00 00 */	addi r30, r3, 0
/* 800A2D9C 0009FCDC  7C BE 02 14 */	add r5, r30, r0
/* 800A2DA0 0009FCE0  88 85 00 00 */	lbz r4, 0(r5)
/* 800A2DA4 0009FCE4  38 C0 00 08 */	li r6, 8
/* 800A2DA8 0009FCE8  88 05 00 01 */	lbz r0, 1(r5)
/* 800A2DAC 0009FCEC  88 65 00 02 */	lbz r3, 2(r5)
/* 800A2DB0 0009FCF0  7F 84 02 14 */	add r28, r4, r0
/* 800A2DB4 0009FCF4  88 05 00 03 */	lbz r0, 3(r5)
/* 800A2DB8 0009FCF8  7F 9C 1A 14 */	add r28, r28, r3
/* 800A2DBC 0009FCFC  88 65 00 04 */	lbz r3, 4(r5)
/* 800A2DC0 0009FD00  7F 9C 02 14 */	add r28, r28, r0
/* 800A2DC4 0009FD04  88 05 00 05 */	lbz r0, 5(r5)
/* 800A2DC8 0009FD08  7F 9C 1A 14 */	add r28, r28, r3
/* 800A2DCC 0009FD0C  88 65 00 06 */	lbz r3, 6(r5)
/* 800A2DD0 0009FD10  7F 9C 02 14 */	add r28, r28, r0
/* 800A2DD4 0009FD14  88 05 00 07 */	lbz r0, 7(r5)
/* 800A2DD8 0009FD18  7F 9C 1A 14 */	add r28, r28, r3
/* 800A2DDC 0009FD1C  7F 9C 02 14 */	add r28, r28, r0
/* 800A2DE0 0009FD20  48 00 01 4C */	b lbl_800A2F2C
lbl_800A2DE4:
/* 800A2DE4 0009FD24  20 06 00 0C */	subfic r0, r6, 0xc
/* 800A2DE8 0009FD28  2C 06 00 0C */	cmpwi r6, 0xc
/* 800A2DEC 0009FD2C  7C 09 03 A6 */	mtctr r0
/* 800A2DF0 0009FD30  40 80 00 14 */	bge lbl_800A2E04
lbl_800A2DF4:
/* 800A2DF4 0009FD34  88 03 00 00 */	lbz r0, 0(r3)
/* 800A2DF8 0009FD38  38 63 00 01 */	addi r3, r3, 1
/* 800A2DFC 0009FD3C  7F 9C 02 14 */	add r28, r28, r0
/* 800A2E00 0009FD40  42 00 FF F4 */	bdnz lbl_800A2DF4
lbl_800A2E04:
/* 800A2E04 0009FD44  38 60 00 00 */	li r3, 0
/* 800A2E08 0009FD48  4B FE F6 39 */	bl __OSUnlockSramEx
/* 800A2E0C 0009FD4C  7C 7E EA 14 */	add r3, r30, r29
/* 800A2E10 0009FD50  7F 80 E0 F8 */	nor r0, r28, r28
/* 800A2E14 0009FD54  88 63 00 26 */	lbz r3, 0x26(r3)
/* 800A2E18 0009FD58  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800A2E1C 0009FD5C  7C 03 00 40 */	cmplw r3, r0
/* 800A2E20 0009FD60  41 82 00 0C */	beq lbl_800A2E2C
/* 800A2E24 0009FD64  3B C0 FF FB */	li r30, -5
/* 800A2E28 0009FD68  48 00 00 E0 */	b lbl_800A2F08
lbl_800A2E2C:
/* 800A2E2C 0009FD6C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 800A2E30 0009FD70  2C 00 00 01 */	cmpwi r0, 1
/* 800A2E34 0009FD74  40 82 00 88 */	bne lbl_800A2EBC
/* 800A2E38 0009FD78  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 800A2E3C 0009FD7C  3C 03 80 00 */	addis r0, r3, 0x8000
/* 800A2E40 0009FD80  28 00 00 04 */	cmplwi r0, 4
/* 800A2E44 0009FD84  40 82 00 34 */	bne lbl_800A2E78
/* 800A2E48 0009FD88  4B FE F2 71 */	bl __OSLockSramEx
/* 800A2E4C 0009FD8C  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 800A2E50 0009FD90  7F 83 02 2E */	lhzx r28, r3, r0
/* 800A2E54 0009FD94  38 60 00 00 */	li r3, 0
/* 800A2E58 0009FD98  4B FE F5 E9 */	bl __OSUnlockSramEx
/* 800A2E5C 0009FD9C  A0 0D 82 C0 */	lhz r0, __CARDVendorID@sda21(r13)
/* 800A2E60 0009FDA0  28 00 FF FF */	cmplwi r0, 0xffff
/* 800A2E64 0009FDA4  41 82 00 0C */	beq lbl_800A2E70
/* 800A2E68 0009FDA8  7C 1C 00 40 */	cmplw r28, r0
/* 800A2E6C 0009FDAC  41 82 00 0C */	beq lbl_800A2E78
lbl_800A2E70:
/* 800A2E70 0009FDB0  3B C0 FF FE */	li r30, -2
/* 800A2E74 0009FDB4  48 00 00 94 */	b lbl_800A2F08
lbl_800A2E78:
/* 800A2E78 0009FDB8  38 00 00 02 */	li r0, 2
/* 800A2E7C 0009FDBC  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800A2E80 0009FDC0  38 7D 00 00 */	addi r3, r29, 0
/* 800A2E84 0009FDC4  38 80 00 01 */	li r4, 1
/* 800A2E88 0009FDC8  4B FF C1 19 */	bl __CARDEnableInterrupt
/* 800A2E8C 0009FDCC  7C 7E 1B 79 */	or. r30, r3, r3
/* 800A2E90 0009FDD0  41 80 00 78 */	blt lbl_800A2F08
/* 800A2E94 0009FDD4  3C 60 80 0A */	lis r3, __CARDExiHandler@ha
/* 800A2E98 0009FDD8  38 83 ED 5C */	addi r4, r3, __CARDExiHandler@l
/* 800A2E9C 0009FDDC  38 7D 00 00 */	addi r3, r29, 0
/* 800A2EA0 0009FDE0  48 01 1C DD */	bl EXISetExiCallback
/* 800A2EA4 0009FDE4  7F A3 EB 78 */	mr r3, r29
/* 800A2EA8 0009FDE8  48 01 29 AD */	bl EXIUnlock
/* 800A2EAC 0009FDEC  3C 80 00 01 */	lis r4, 0x0000A000@ha
/* 800A2EB0 0009FDF0  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 800A2EB4 0009FDF4  38 84 A0 00 */	addi r4, r4, 0x0000A000@l
/* 800A2EB8 0009FDF8  4B FE B0 C5 */	bl DCInvalidateRange
lbl_800A2EBC:
/* 800A2EBC 0009FDFC  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 800A2EC0 0009FE00  3C 60 80 0A */	lis r3, __CARDMountCallback@ha
/* 800A2EC4 0009FE04  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 800A2EC8 0009FE08  38 E3 2F 54 */	addi r7, r3, __CARDMountCallback@l
/* 800A2ECC 0009FE0C  38 64 FF FE */	addi r3, r4, -2
/* 800A2ED0 0009FE10  7C 80 19 D6 */	mullw r4, r0, r3
/* 800A2ED4 0009FE14  80 BF 00 80 */	lwz r5, 0x80(r31)
/* 800A2ED8 0009FE18  54 60 68 24 */	slwi r0, r3, 0xd
/* 800A2EDC 0009FE1C  7C C5 02 14 */	add r6, r5, r0
/* 800A2EE0 0009FE20  38 7D 00 00 */	addi r3, r29, 0
/* 800A2EE4 0009FE24  38 A0 20 00 */	li r5, 0x2000
/* 800A2EE8 0009FE28  4B FF E3 3D */	bl __CARDRead
/* 800A2EEC 0009FE2C  7C 7C 1B 79 */	or. r28, r3, r3
/* 800A2EF0 0009FE30  40 80 00 10 */	bge lbl_800A2F00
/* 800A2EF4 0009FE34  38 7F 00 00 */	addi r3, r31, 0
/* 800A2EF8 0009FE38  38 9C 00 00 */	addi r4, r28, 0
/* 800A2EFC 0009FE3C  4B FF CD 51 */	bl __CARDPutControlBlock
lbl_800A2F00:
/* 800A2F00 0009FE40  7F 83 E3 78 */	mr r3, r28
/* 800A2F04 0009FE44  48 00 00 30 */	b lbl_800A2F34
lbl_800A2F08:
/* 800A2F08 0009FE48  7F A3 EB 78 */	mr r3, r29
/* 800A2F0C 0009FE4C  48 01 29 49 */	bl EXIUnlock
/* 800A2F10 0009FE50  38 7D 00 00 */	addi r3, r29, 0
/* 800A2F14 0009FE54  38 9E 00 00 */	addi r4, r30, 0
/* 800A2F18 0009FE58  48 00 03 2D */	bl DoUnmount
/* 800A2F1C 0009FE5C  7F C3 F3 78 */	mr r3, r30
/* 800A2F20 0009FE60  48 00 00 14 */	b lbl_800A2F34
lbl_800A2F24:
/* 800A2F24 0009FE64  38 C4 00 08 */	addi r6, r4, 8
/* 800A2F28 0009FE68  4B FF FE 10 */	b lbl_800A2D38
lbl_800A2F2C:
/* 800A2F2C 0009FE6C  38 65 00 08 */	addi r3, r5, 8
/* 800A2F30 0009FE70  4B FF FE B4 */	b lbl_800A2DE4
lbl_800A2F34:
/* 800A2F34 0009FE74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A2F38 0009FE78  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800A2F3C 0009FE7C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800A2F40 0009FE80  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800A2F44 0009FE84  83 81 00 20 */	lwz r28, 0x20(r1)
/* 800A2F48 0009FE88  38 21 00 30 */	addi r1, r1, 0x30
/* 800A2F4C 0009FE8C  7C 08 03 A6 */	mtlr r0
/* 800A2F50 0009FE90  4E 80 00 20 */	blr 

.global __CARDMountCallback
__CARDMountCallback:
/* 800A2F54 0009FE94  7C 08 02 A6 */	mflr r0
/* 800A2F58 0009FE98  90 01 00 04 */	stw r0, 4(r1)
/* 800A2F5C 0009FE9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A2F60 0009FEA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A2F64 0009FEA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A2F68 0009FEA8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A2F6C 0009FEAC  3B A4 00 00 */	addi r29, r4, 0
/* 800A2F70 0009FEB0  2C 1D FF FD */	cmpwi r29, -3
/* 800A2F74 0009FEB4  93 81 00 10 */	stw r28, 0x10(r1)
/* 800A2F78 0009FEB8  3B 83 00 00 */	addi r28, r3, 0
/* 800A2F7C 0009FEBC  1C BC 01 10 */	mulli r5, r28, 0x110
/* 800A2F80 0009FEC0  3C 60 80 3F */	lis r3, __CARDBlock@ha
/* 800A2F84 0009FEC4  38 03 BF 60 */	addi r0, r3, __CARDBlock@l
/* 800A2F88 0009FEC8  7F E0 2A 14 */	add r31, r0, r5
/* 800A2F8C 0009FECC  41 82 00 78 */	beq lbl_800A3004
/* 800A2F90 0009FED0  40 80 00 10 */	bge lbl_800A2FA0
/* 800A2F94 0009FED4  2C 1D FF FB */	cmpwi r29, -5
/* 800A2F98 0009FED8  41 82 00 6C */	beq lbl_800A3004
/* 800A2F9C 0009FEDC  48 00 00 74 */	b lbl_800A3010
lbl_800A2FA0:
/* 800A2FA0 0009FEE0  2C 1D 00 01 */	cmpwi r29, 1
/* 800A2FA4 0009FEE4  41 82 00 4C */	beq lbl_800A2FF0
/* 800A2FA8 0009FEE8  40 80 00 68 */	bge lbl_800A3010
/* 800A2FAC 0009FEEC  2C 1D 00 00 */	cmpwi r29, 0
/* 800A2FB0 0009FEF0  40 80 00 08 */	bge lbl_800A2FB8
/* 800A2FB4 0009FEF4  48 00 00 5C */	b lbl_800A3010
lbl_800A2FB8:
/* 800A2FB8 0009FEF8  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 800A2FBC 0009FEFC  38 03 00 01 */	addi r0, r3, 1
/* 800A2FC0 0009FF00  2C 00 00 07 */	cmpwi r0, 7
/* 800A2FC4 0009FF04  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800A2FC8 0009FF08  40 80 00 18 */	bge lbl_800A2FE0
/* 800A2FCC 0009FF0C  7F 83 E3 78 */	mr r3, r28
/* 800A2FD0 0009FF10  4B FF FB 75 */	bl DoMount
/* 800A2FD4 0009FF14  7C 7D 1B 79 */	or. r29, r3, r3
/* 800A2FD8 0009FF18  41 80 00 38 */	blt lbl_800A3010
/* 800A2FDC 0009FF1C  48 00 00 60 */	b lbl_800A303C
lbl_800A2FE0:
/* 800A2FE0 0009FF20  7F E3 FB 78 */	mr r3, r31
/* 800A2FE4 0009FF24  4B FF F2 A9 */	bl __CARDVerify
/* 800A2FE8 0009FF28  7C 7D 1B 78 */	mr r29, r3
/* 800A2FEC 0009FF2C  48 00 00 24 */	b lbl_800A3010
lbl_800A2FF0:
/* 800A2FF0 0009FF30  7F 83 E3 78 */	mr r3, r28
/* 800A2FF4 0009FF34  4B FF FB 51 */	bl DoMount
/* 800A2FF8 0009FF38  7C 7D 1B 79 */	or. r29, r3, r3
/* 800A2FFC 0009FF3C  41 80 00 14 */	blt lbl_800A3010
/* 800A3000 0009FF40  48 00 00 3C */	b lbl_800A303C
lbl_800A3004:
/* 800A3004 0009FF44  38 7C 00 00 */	addi r3, r28, 0
/* 800A3008 0009FF48  38 9D 00 00 */	addi r4, r29, 0
/* 800A300C 0009FF4C  48 00 02 39 */	bl DoUnmount
lbl_800A3010:
/* 800A3010 0009FF50  83 DF 00 D0 */	lwz r30, 0xd0(r31)
/* 800A3014 0009FF54  38 00 00 00 */	li r0, 0
/* 800A3018 0009FF58  38 7F 00 00 */	addi r3, r31, 0
/* 800A301C 0009FF5C  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 800A3020 0009FF60  7F A4 EB 78 */	mr r4, r29
/* 800A3024 0009FF64  4B FF CC 29 */	bl __CARDPutControlBlock
/* 800A3028 0009FF68  39 9E 00 00 */	addi r12, r30, 0
/* 800A302C 0009FF6C  7D 88 03 A6 */	mtlr r12
/* 800A3030 0009FF70  38 7C 00 00 */	addi r3, r28, 0
/* 800A3034 0009FF74  38 9D 00 00 */	addi r4, r29, 0
/* 800A3038 0009FF78  4E 80 00 21 */	blrl 
lbl_800A303C:
/* 800A303C 0009FF7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A3040 0009FF80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A3044 0009FF84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A3048 0009FF88  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A304C 0009FF8C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800A3050 0009FF90  38 21 00 20 */	addi r1, r1, 0x20
/* 800A3054 0009FF94  7C 08 03 A6 */	mtlr r0
/* 800A3058 0009FF98  4E 80 00 20 */	blr 

.global CARDMountAsync
CARDMountAsync:
/* 800A305C 0009FF9C  7C 08 02 A6 */	mflr r0
/* 800A3060 0009FFA0  90 01 00 04 */	stw r0, 4(r1)
/* 800A3064 0009FFA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A3068 0009FFA8  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 800A306C 0009FFAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 800A3070 0009FFB0  3B 44 00 00 */	addi r26, r4, 0
/* 800A3074 0009FFB4  3B 65 00 00 */	addi r27, r5, 0
/* 800A3078 0009FFB8  3B A6 00 00 */	addi r29, r6, 0
/* 800A307C 0009FFBC  41 80 00 0C */	blt lbl_800A3088
/* 800A3080 0009FFC0  2C 1E 00 02 */	cmpwi r30, 2
/* 800A3084 0009FFC4  41 80 00 0C */	blt lbl_800A3090
lbl_800A3088:
/* 800A3088 0009FFC8  38 60 FF 80 */	li r3, -128
/* 800A308C 0009FFCC  48 00 01 5C */	b lbl_800A31E8
lbl_800A3090:
/* 800A3090 0009FFD0  3C 60 80 00 */	lis r3, 0x800030E3@ha
/* 800A3094 0009FFD4  88 03 30 E3 */	lbz r0, 0x800030E3@l(r3)
/* 800A3098 0009FFD8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800A309C 0009FFDC  41 82 00 0C */	beq lbl_800A30A8
/* 800A30A0 0009FFE0  38 60 FF FD */	li r3, -3
/* 800A30A4 0009FFE4  48 00 01 44 */	b lbl_800A31E8
lbl_800A30A8:
/* 800A30A8 0009FFE8  1C 9E 01 10 */	mulli r4, r30, 0x110
/* 800A30AC 0009FFEC  3C 60 80 3F */	lis r3, __CARDBlock@ha
/* 800A30B0 0009FFF0  38 03 BF 60 */	addi r0, r3, __CARDBlock@l
/* 800A30B4 0009FFF4  7F E0 22 14 */	add r31, r0, r4
/* 800A30B8 0009FFF8  4B FE D1 15 */	bl OSDisableInterrupts
/* 800A30BC 0009FFFC  80 1F 00 04 */	lwz r0, 4(r31)
/* 800A30C0 000A0000  3B 83 00 00 */	addi r28, r3, 0
/* 800A30C4 000A0004  2C 00 FF FF */	cmpwi r0, -1
/* 800A30C8 000A0008  40 82 00 14 */	bne lbl_800A30DC
/* 800A30CC 000A000C  7F 83 E3 78 */	mr r3, r28
/* 800A30D0 000A0010  4B FE D1 25 */	bl OSRestoreInterrupts
/* 800A30D4 000A0014  38 60 FF FF */	li r3, -1
/* 800A30D8 000A0018  48 00 01 10 */	b lbl_800A31E8
lbl_800A30DC:
/* 800A30DC 000A001C  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A30E0 000A0020  2C 00 00 00 */	cmpwi r0, 0
/* 800A30E4 000A0024  40 82 00 24 */	bne lbl_800A3108
/* 800A30E8 000A0028  7F C3 F3 78 */	mr r3, r30
/* 800A30EC 000A002C  48 01 28 45 */	bl EXIGetState
/* 800A30F0 000A0030  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 800A30F4 000A0034  41 82 00 14 */	beq lbl_800A3108
/* 800A30F8 000A0038  7F 83 E3 78 */	mr r3, r28
/* 800A30FC 000A003C  4B FE D0 F9 */	bl OSRestoreInterrupts
/* 800A3100 000A0040  38 60 FF FE */	li r3, -2
/* 800A3104 000A0044  48 00 00 E4 */	b lbl_800A31E8
lbl_800A3108:
/* 800A3108 000A0048  38 00 FF FF */	li r0, -1
/* 800A310C 000A004C  90 1F 00 04 */	stw r0, 4(r31)
/* 800A3110 000A0050  28 1D 00 00 */	cmplwi r29, 0
/* 800A3114 000A0054  93 5F 00 80 */	stw r26, 0x80(r31)
/* 800A3118 000A0058  93 7F 00 C4 */	stw r27, 0xc4(r31)
/* 800A311C 000A005C  41 82 00 0C */	beq lbl_800A3128
/* 800A3120 000A0060  7F A0 EB 78 */	mr r0, r29
/* 800A3124 000A0064  48 00 00 0C */	b lbl_800A3130
lbl_800A3128:
/* 800A3128 000A0068  3C 60 80 0A */	lis r3, __CARDDefaultApiCallback@ha
/* 800A312C 000A006C  38 03 EC 4C */	addi r0, r3, __CARDDefaultApiCallback@l
lbl_800A3130:
/* 800A3130 000A0070  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 800A3134 000A0074  38 00 00 00 */	li r0, 0
/* 800A3138 000A0078  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 800A313C 000A007C  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A3140 000A0080  2C 00 00 00 */	cmpwi r0, 0
/* 800A3144 000A0084  40 82 00 34 */	bne lbl_800A3178
/* 800A3148 000A0088  3C 60 80 0A */	lis r3, __CARDExtHandler@ha
/* 800A314C 000A008C  38 83 EC 84 */	addi r4, r3, __CARDExtHandler@l
/* 800A3150 000A0090  38 7E 00 00 */	addi r3, r30, 0
/* 800A3154 000A0094  48 01 1D 4D */	bl EXIAttach
/* 800A3158 000A0098  2C 03 00 00 */	cmpwi r3, 0
/* 800A315C 000A009C  40 82 00 1C */	bne lbl_800A3178
/* 800A3160 000A00A0  38 00 FF FD */	li r0, -3
/* 800A3164 000A00A4  90 1F 00 04 */	stw r0, 4(r31)
/* 800A3168 000A00A8  7F 83 E3 78 */	mr r3, r28
/* 800A316C 000A00AC  4B FE D0 89 */	bl OSRestoreInterrupts
/* 800A3170 000A00B0  38 60 FF FD */	li r3, -3
/* 800A3174 000A00B4  48 00 00 74 */	b lbl_800A31E8
lbl_800A3178:
/* 800A3178 000A00B8  3B A0 00 00 */	li r29, 0
/* 800A317C 000A00BC  93 BF 00 24 */	stw r29, 0x24(r31)
/* 800A3180 000A00C0  38 00 00 01 */	li r0, 1
/* 800A3184 000A00C4  38 7E 00 00 */	addi r3, r30, 0
/* 800A3188 000A00C8  90 1F 00 00 */	stw r0, 0(r31)
/* 800A318C 000A00CC  38 80 00 00 */	li r4, 0
/* 800A3190 000A00D0  48 01 19 ED */	bl EXISetExiCallback
/* 800A3194 000A00D4  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 800A3198 000A00D8  4B FE 9F FD */	bl OSCancelAlarm
/* 800A319C 000A00DC  93 BF 00 84 */	stw r29, 0x84(r31)
/* 800A31A0 000A00E0  7F 83 E3 78 */	mr r3, r28
/* 800A31A4 000A00E4  93 BF 00 88 */	stw r29, 0x88(r31)
/* 800A31A8 000A00E8  4B FE D0 4D */	bl OSRestoreInterrupts
/* 800A31AC 000A00EC  3C 60 80 0A */	lis r3, __CARDMountCallback@ha
/* 800A31B0 000A00F0  38 03 2F 54 */	addi r0, r3, __CARDMountCallback@l
/* 800A31B4 000A00F4  3C 60 80 0A */	lis r3, __CARDUnlockedHandler@ha
/* 800A31B8 000A00F8  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 800A31BC 000A00FC  38 A3 EF 1C */	addi r5, r3, __CARDUnlockedHandler@l
/* 800A31C0 000A0100  38 7E 00 00 */	addi r3, r30, 0
/* 800A31C4 000A0104  38 80 00 00 */	li r4, 0
/* 800A31C8 000A0108  48 01 25 99 */	bl EXILock
/* 800A31CC 000A010C  2C 03 00 00 */	cmpwi r3, 0
/* 800A31D0 000A0110  40 82 00 0C */	bne lbl_800A31DC
/* 800A31D4 000A0114  38 60 00 00 */	li r3, 0
/* 800A31D8 000A0118  48 00 00 10 */	b lbl_800A31E8
lbl_800A31DC:
/* 800A31DC 000A011C  93 BF 00 DC */	stw r29, 0xdc(r31)
/* 800A31E0 000A0120  7F C3 F3 78 */	mr r3, r30
/* 800A31E4 000A0124  4B FF F9 61 */	bl DoMount
lbl_800A31E8:
/* 800A31E8 000A0128  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 800A31EC 000A012C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A31F0 000A0130  38 21 00 30 */	addi r1, r1, 0x30
/* 800A31F4 000A0134  7C 08 03 A6 */	mtlr r0
/* 800A31F8 000A0138  4E 80 00 20 */	blr 

.global CARDMount
CARDMount:
/* 800A31FC 000A013C  7C 08 02 A6 */	mflr r0
/* 800A3200 000A0140  3C C0 80 0A */	lis r6, __CARDSyncCallback@ha
/* 800A3204 000A0144  90 01 00 04 */	stw r0, 4(r1)
/* 800A3208 000A0148  38 C6 EC 50 */	addi r6, r6, __CARDSyncCallback@l
/* 800A320C 000A014C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A3210 000A0150  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A3214 000A0154  3B E3 00 00 */	addi r31, r3, 0
/* 800A3218 000A0158  4B FF FE 45 */	bl CARDMountAsync
/* 800A321C 000A015C  2C 03 00 00 */	cmpwi r3, 0
/* 800A3220 000A0160  40 80 00 08 */	bge lbl_800A3228
/* 800A3224 000A0164  48 00 00 0C */	b lbl_800A3230
lbl_800A3228:
/* 800A3228 000A0168  7F E3 FB 78 */	mr r3, r31
/* 800A322C 000A016C  4B FF CB D5 */	bl __CARDSync
lbl_800A3230:
/* 800A3230 000A0170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A3234 000A0174  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A3238 000A0178  38 21 00 20 */	addi r1, r1, 0x20
/* 800A323C 000A017C  7C 08 03 A6 */	mtlr r0
/* 800A3240 000A0180  4E 80 00 20 */	blr 

.global DoUnmount
DoUnmount:
/* 800A3244 000A0184  7C 08 02 A6 */	mflr r0
/* 800A3248 000A0188  90 01 00 04 */	stw r0, 4(r1)
/* 800A324C 000A018C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A3250 000A0190  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A3254 000A0194  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A3258 000A0198  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A325C 000A019C  3B A4 00 00 */	addi r29, r4, 0
/* 800A3260 000A01A0  93 81 00 10 */	stw r28, 0x10(r1)
/* 800A3264 000A01A4  3B 83 00 00 */	addi r28, r3, 0
/* 800A3268 000A01A8  1C BC 01 10 */	mulli r5, r28, 0x110
/* 800A326C 000A01AC  3C 60 80 3F */	lis r3, __CARDBlock@ha
/* 800A3270 000A01B0  38 03 BF 60 */	addi r0, r3, __CARDBlock@l
/* 800A3274 000A01B4  7F E0 2A 14 */	add r31, r0, r5
/* 800A3278 000A01B8  4B FE CF 55 */	bl OSDisableInterrupts
/* 800A327C 000A01BC  80 1F 00 00 */	lwz r0, 0(r31)
/* 800A3280 000A01C0  3B C3 00 00 */	addi r30, r3, 0
/* 800A3284 000A01C4  2C 00 00 00 */	cmpwi r0, 0
/* 800A3288 000A01C8  41 82 00 30 */	beq lbl_800A32B8
/* 800A328C 000A01CC  38 7C 00 00 */	addi r3, r28, 0
/* 800A3290 000A01D0  38 80 00 00 */	li r4, 0
/* 800A3294 000A01D4  48 01 18 E9 */	bl EXISetExiCallback
/* 800A3298 000A01D8  7F 83 E3 78 */	mr r3, r28
/* 800A329C 000A01DC  48 01 1D 11 */	bl EXIDetach
/* 800A32A0 000A01E0  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 800A32A4 000A01E4  4B FE 9E F1 */	bl OSCancelAlarm
/* 800A32A8 000A01E8  38 00 00 00 */	li r0, 0
/* 800A32AC 000A01EC  90 1F 00 00 */	stw r0, 0(r31)
/* 800A32B0 000A01F0  93 BF 00 04 */	stw r29, 4(r31)
/* 800A32B4 000A01F4  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_800A32B8:
/* 800A32B8 000A01F8  7F C3 F3 78 */	mr r3, r30
/* 800A32BC 000A01FC  4B FE CF 39 */	bl OSRestoreInterrupts
/* 800A32C0 000A0200  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A32C4 000A0204  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A32C8 000A0208  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A32CC 000A020C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A32D0 000A0210  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800A32D4 000A0214  38 21 00 20 */	addi r1, r1, 0x20
/* 800A32D8 000A0218  7C 08 03 A6 */	mtlr r0
/* 800A32DC 000A021C  4E 80 00 20 */	blr 

.global CARDUnmount
CARDUnmount:
/* 800A32E0 000A0220  7C 08 02 A6 */	mflr r0
/* 800A32E4 000A0224  90 01 00 04 */	stw r0, 4(r1)
/* 800A32E8 000A0228  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A32EC 000A022C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A32F0 000A0230  38 81 00 0C */	addi r4, r1, 0xc
/* 800A32F4 000A0234  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A32F8 000A0238  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800A32FC 000A023C  3B A3 00 00 */	addi r29, r3, 0
/* 800A3300 000A0240  4B FF C8 95 */	bl __CARDGetControlBlock
/* 800A3304 000A0244  2C 03 00 00 */	cmpwi r3, 0
/* 800A3308 000A0248  40 80 00 08 */	bge lbl_800A3310
/* 800A330C 000A024C  48 00 00 64 */	b lbl_800A3370
lbl_800A3310:
/* 800A3310 000A0250  1C 9D 01 10 */	mulli r4, r29, 0x110
/* 800A3314 000A0254  3C 60 80 3F */	lis r3, __CARDBlock@ha
/* 800A3318 000A0258  38 03 BF 60 */	addi r0, r3, __CARDBlock@l
/* 800A331C 000A025C  7F C0 22 14 */	add r30, r0, r4
/* 800A3320 000A0260  4B FE CE AD */	bl OSDisableInterrupts
/* 800A3324 000A0264  80 1E 00 00 */	lwz r0, 0(r30)
/* 800A3328 000A0268  3B E3 00 00 */	addi r31, r3, 0
/* 800A332C 000A026C  2C 00 00 00 */	cmpwi r0, 0
/* 800A3330 000A0270  41 82 00 34 */	beq lbl_800A3364
/* 800A3334 000A0274  38 7D 00 00 */	addi r3, r29, 0
/* 800A3338 000A0278  38 80 00 00 */	li r4, 0
/* 800A333C 000A027C  48 01 18 41 */	bl EXISetExiCallback
/* 800A3340 000A0280  7F A3 EB 78 */	mr r3, r29
/* 800A3344 000A0284  48 01 1C 69 */	bl EXIDetach
/* 800A3348 000A0288  38 7E 00 E0 */	addi r3, r30, 0xe0
/* 800A334C 000A028C  4B FE 9E 49 */	bl OSCancelAlarm
/* 800A3350 000A0290  38 60 00 00 */	li r3, 0
/* 800A3354 000A0294  90 7E 00 00 */	stw r3, 0(r30)
/* 800A3358 000A0298  38 00 FF FD */	li r0, -3
/* 800A335C 000A029C  90 1E 00 04 */	stw r0, 4(r30)
/* 800A3360 000A02A0  90 7E 00 24 */	stw r3, 0x24(r30)
lbl_800A3364:
/* 800A3364 000A02A4  7F E3 FB 78 */	mr r3, r31
/* 800A3368 000A02A8  4B FE CE 8D */	bl OSRestoreInterrupts
/* 800A336C 000A02AC  38 60 00 00 */	li r3, 0
lbl_800A3370:
/* 800A3370 000A02B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A3374 000A02B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A3378 000A02B8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800A337C 000A02BC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800A3380 000A02C0  38 21 00 20 */	addi r1, r1, 0x20
/* 800A3384 000A02C4  7C 08 03 A6 */	mtlr r0
/* 800A3388 000A02C8  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
SectorSizeTable:
	.incbin "baserom.dol", 0x3AE500, 0x20
LatencyTable:
	.incbin "baserom.dol", 0x3AE520, 0x20
