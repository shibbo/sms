.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global createBasicBank__Q28JASystem9BNKParserFPv
createBasicBank__Q28JASystem9BNKParserFPv:
/* 80059B3C 00056A7C  7C 08 02 A6 */	mflr r0
/* 80059B40 00056A80  90 01 00 04 */	stw r0, 4(r1)
/* 80059B44 00056A84  94 21 FE F8 */	stwu r1, -0x108(r1)
/* 80059B48 00056A88  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 80059B4C 00056A8C  DB C1 00 F8 */	stfd f30, 0xf8(r1)
/* 80059B50 00056A90  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 80059B54 00056A94  DB 81 00 E8 */	stfd f28, 0xe8(r1)
/* 80059B58 00056A98  BD C1 00 A0 */	stmw r14, 0xa0(r1)
/* 80059B5C 00056A9C  7C 6E 1B 78 */	mr r14, r3
/* 80059B60 00056AA0  4B FF E7 AD */	bl getCurrentHeap__Q28JASystem5TBankFv
/* 80059B64 00056AA4  7C 77 1B 78 */	mr r23, r3
/* 80059B68 00056AA8  81 97 00 00 */	lwz r12, 0(r23)
/* 80059B6C 00056AAC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80059B70 00056AB0  7D 88 03 A6 */	mtlr r12
/* 80059B74 00056AB4  4E 80 00 21 */	blrl 
/* 80059B78 00056AB8  90 61 00 8C */	stw r3, 0x8c(r1)
/* 80059B7C 00056ABC  3B AE 00 00 */	addi r29, r14, 0
/* 80059B80 00056AC0  38 97 00 00 */	addi r4, r23, 0
/* 80059B84 00056AC4  38 60 00 10 */	li r3, 0x10
/* 80059B88 00056AC8  38 A0 00 00 */	li r5, 0
/* 80059B8C 00056ACC  4B FB 2D B9 */	bl __nw__FUlP7JKRHeapi
/* 80059B90 00056AD0  7C 6E 1B 79 */	or. r14, r3, r3
/* 80059B94 00056AD4  41 82 00 10 */	beq lbl_80059BA4
/* 80059B98 00056AD8  7D C3 73 78 */	mr r3, r14
/* 80059B9C 00056ADC  4B FF EF D9 */	bl __ct__Q28JASystem10TBasicBankFv
/* 80059BA0 00056AE0  7C 6E 1B 78 */	mr r14, r3
lbl_80059BA4:
/* 80059BA4 00056AE4  28 0E 00 00 */	cmplwi r14, 0
/* 80059BA8 00056AE8  40 82 00 0C */	bne lbl_80059BB4
/* 80059BAC 00056AEC  38 60 00 00 */	li r3, 0
/* 80059BB0 00056AF0  48 00 06 98 */	b lbl_8005A248
lbl_80059BB4:
/* 80059BB4 00056AF4  38 6E 00 00 */	addi r3, r14, 0
/* 80059BB8 00056AF8  38 80 01 00 */	li r4, 0x100
/* 80059BBC 00056AFC  4B FF F0 A5 */	bl setInstCount__Q28JASystem10TBasicBankFUl
/* 80059BC0 00056B00  38 00 00 00 */	li r0, 0
/* 80059BC4 00056B04  C3 82 85 D8 */	lfs f28, $$2531-_SDA2_BASE_(r2)
/* 80059BC8 00056B08  3C 80 80 3B */	lis r4, __vt__Q28JASystem11TInstEffect@ha
/* 80059BCC 00056B0C  C3 A2 85 DC */	lfs f29, $$2532-_SDA2_BASE_(r2)
/* 80059BD0 00056B10  3C 60 80 3B */	lis r3, __vt__Q28JASystem10TInstSense@ha
/* 80059BD4 00056B14  90 01 00 94 */	stw r0, 0x94(r1)
/* 80059BD8 00056B18  3C A0 80 3B */	lis r5, __vt__Q28JASystem9TInstRand@ha
/* 80059BDC 00056B1C  3A 24 AE 80 */	addi r17, r4, __vt__Q28JASystem11TInstEffect@l
/* 80059BE0 00056B20  3A 03 AE B8 */	addi r16, r3, __vt__Q28JASystem10TInstSense@l
/* 80059BE4 00056B24  39 E5 AE A8 */	addi r15, r5, __vt__Q28JASystem9TInstRand@l
/* 80059BE8 00056B28  3A 40 00 00 */	li r18, 0
lbl_80059BEC:
/* 80059BEC 00056B2C  80 61 00 94 */	lwz r3, 0x94(r1)
/* 80059BF0 00056B30  38 03 00 24 */	addi r0, r3, 0x24
/* 80059BF4 00056B34  7C 9D 00 2E */	lwzx r4, r29, r0
/* 80059BF8 00056B38  7F A3 EB 78 */	mr r3, r29
/* 80059BFC 00056B3C  48 00 09 09 */	bl JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TInst$$1__FPCvUl
/* 80059C00 00056B40  7C 7A 1B 79 */	or. r26, r3, r3
/* 80059C04 00056B44  41 82 03 A8 */	beq lbl_80059FAC
/* 80059C08 00056B48  38 97 00 00 */	addi r4, r23, 0
/* 80059C0C 00056B4C  38 60 00 24 */	li r3, 0x24
/* 80059C10 00056B50  38 A0 00 00 */	li r5, 0
/* 80059C14 00056B54  4B FB 2D 31 */	bl __nw__FUlP7JKRHeapi
/* 80059C18 00056B58  7C 65 1B 79 */	or. r5, r3, r3
/* 80059C1C 00056B5C  41 82 00 10 */	beq lbl_80059C2C
/* 80059C20 00056B60  7C A3 2B 78 */	mr r3, r5
/* 80059C24 00056B64  4B FF F0 E1 */	bl __ct__Q28JASystem10TBasicInstFv
/* 80059C28 00056B68  7C 65 1B 78 */	mr r5, r3
lbl_80059C2C:
/* 80059C2C 00056B6C  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80059C30 00056B70  3A 65 00 00 */	addi r19, r5, 0
/* 80059C34 00056B74  38 73 00 00 */	addi r3, r19, 0
/* 80059C38 00056B78  D0 05 00 04 */	stfs f0, 4(r5)
/* 80059C3C 00056B7C  38 80 00 02 */	li r4, 2
/* 80059C40 00056B80  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80059C44 00056B84  D0 05 00 08 */	stfs f0, 8(r5)
/* 80059C48 00056B88  4B FF F4 E5 */	bl setOscCount__Q28JASystem10TBasicInstFUl
/* 80059C4C 00056B8C  3B 80 00 00 */	li r28, 0
/* 80059C50 00056B90  3B 60 00 00 */	li r27, 0
/* 80059C54 00056B94  3B C0 00 00 */	li r30, 0
lbl_80059C58:
/* 80059C58 00056B98  38 1E 00 10 */	addi r0, r30, 0x10
/* 80059C5C 00056B9C  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80059C60 00056BA0  7F A3 EB 78 */	mr r3, r29
/* 80059C64 00056BA4  48 00 08 89 */	bl JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser4TOsc$$1__FPCvUl
/* 80059C68 00056BA8  7C 78 1B 79 */	or. r24, r3, r3
/* 80059C6C 00056BAC  3A B8 00 00 */	addi r21, r24, 0
/* 80059C70 00056BB0  41 82 01 1C */	beq lbl_80059D8C
/* 80059C74 00056BB4  38 6E 00 00 */	addi r3, r14, 0
/* 80059C78 00056BB8  38 9D 00 00 */	addi r4, r29, 0
/* 80059C7C 00056BBC  38 B5 00 00 */	addi r5, r21, 0
/* 80059C80 00056BC0  48 00 06 55 */	bl findOscPtr__Q28JASystem9BNKParserFPQ28JASystem10TBasicBankPQ38JASystem9BNKParser7THeaderPQ38JASystem9BNKParser4TOsc
/* 80059C84 00056BC4  7C 79 1B 79 */	or. r25, r3, r3
/* 80059C88 00056BC8  40 82 00 F0 */	bne lbl_80059D78
/* 80059C8C 00056BCC  38 97 00 00 */	addi r4, r23, 0
/* 80059C90 00056BD0  38 60 00 18 */	li r3, 0x18
/* 80059C94 00056BD4  38 A0 00 00 */	li r5, 0
/* 80059C98 00056BD8  4B FB 2C AD */	bl __nw__FUlP7JKRHeapi
/* 80059C9C 00056BDC  88 18 00 00 */	lbz r0, 0(r24)
/* 80059CA0 00056BE0  7C 79 1B 78 */	mr r25, r3
/* 80059CA4 00056BE4  98 03 00 00 */	stb r0, 0(r3)
/* 80059CA8 00056BE8  7F A3 EB 78 */	mr r3, r29
/* 80059CAC 00056BEC  C0 18 00 04 */	lfs f0, 4(r24)
/* 80059CB0 00056BF0  D0 19 00 04 */	stfs f0, 4(r25)
/* 80059CB4 00056BF4  80 95 00 08 */	lwz r4, 8(r21)
/* 80059CB8 00056BF8  48 00 08 1D */	bl JSUConvertOffsetToPtr$$0s$$1__FPCvUl
/* 80059CBC 00056BFC  7C 76 1B 79 */	or. r22, r3, r3
/* 80059CC0 00056C00  41 82 00 44 */	beq lbl_80059D04
/* 80059CC4 00056C04  7E C3 B3 78 */	mr r3, r22
/* 80059CC8 00056C08  48 00 07 69 */	bl getOscTableEndPtr__Q28JASystem9BNKParserFPs
/* 80059CCC 00056C0C  7C 16 18 50 */	subf r0, r22, r3
/* 80059CD0 00056C10  7C 00 0E 70 */	srawi r0, r0, 1
/* 80059CD4 00056C14  7C 00 01 94 */	addze r0, r0
/* 80059CD8 00056C18  54 14 08 3C */	slwi r20, r0, 1
/* 80059CDC 00056C1C  38 74 00 00 */	addi r3, r20, 0
/* 80059CE0 00056C20  38 97 00 00 */	addi r4, r23, 0
/* 80059CE4 00056C24  38 A0 00 00 */	li r5, 0
/* 80059CE8 00056C28  4B FB 2D 5D */	bl __nwa__FUlP7JKRHeapi
/* 80059CEC 00056C2C  90 79 00 08 */	stw r3, 8(r25)
/* 80059CF0 00056C30  38 76 00 00 */	addi r3, r22, 0
/* 80059CF4 00056C34  38 B4 00 00 */	addi r5, r20, 0
/* 80059CF8 00056C38  80 99 00 08 */	lwz r4, 8(r25)
/* 80059CFC 00056C3C  48 00 72 45 */	bl bcopy__Q28JASystem4CalcFPCvPvUl
/* 80059D00 00056C40  48 00 00 0C */	b lbl_80059D0C
lbl_80059D04:
/* 80059D04 00056C44  38 00 00 00 */	li r0, 0
/* 80059D08 00056C48  90 19 00 08 */	stw r0, 8(r25)
lbl_80059D0C:
/* 80059D0C 00056C4C  7F A3 EB 78 */	mr r3, r29
/* 80059D10 00056C50  80 95 00 0C */	lwz r4, 0xc(r21)
/* 80059D14 00056C54  48 00 07 C1 */	bl JSUConvertOffsetToPtr$$0s$$1__FPCvUl
/* 80059D18 00056C58  7C 76 1B 79 */	or. r22, r3, r3
/* 80059D1C 00056C5C  41 82 00 44 */	beq lbl_80059D60
/* 80059D20 00056C60  7E C3 B3 78 */	mr r3, r22
/* 80059D24 00056C64  48 00 07 0D */	bl getOscTableEndPtr__Q28JASystem9BNKParserFPs
/* 80059D28 00056C68  7C 16 18 50 */	subf r0, r22, r3
/* 80059D2C 00056C6C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80059D30 00056C70  7C 00 01 94 */	addze r0, r0
/* 80059D34 00056C74  54 15 08 3C */	slwi r21, r0, 1
/* 80059D38 00056C78  38 75 00 00 */	addi r3, r21, 0
/* 80059D3C 00056C7C  38 97 00 00 */	addi r4, r23, 0
/* 80059D40 00056C80  38 A0 00 00 */	li r5, 0
/* 80059D44 00056C84  4B FB 2D 01 */	bl __nwa__FUlP7JKRHeapi
/* 80059D48 00056C88  90 79 00 0C */	stw r3, 0xc(r25)
/* 80059D4C 00056C8C  38 76 00 00 */	addi r3, r22, 0
/* 80059D50 00056C90  38 B5 00 00 */	addi r5, r21, 0
/* 80059D54 00056C94  80 99 00 0C */	lwz r4, 0xc(r25)
/* 80059D58 00056C98  48 00 71 E9 */	bl bcopy__Q28JASystem4CalcFPCvPvUl
/* 80059D5C 00056C9C  48 00 00 0C */	b lbl_80059D68
lbl_80059D60:
/* 80059D60 00056CA0  38 00 00 00 */	li r0, 0
/* 80059D64 00056CA4  90 19 00 0C */	stw r0, 0xc(r25)
lbl_80059D68:
/* 80059D68 00056CA8  C0 18 00 10 */	lfs f0, 0x10(r24)
/* 80059D6C 00056CAC  D0 19 00 10 */	stfs f0, 0x10(r25)
/* 80059D70 00056CB0  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 80059D74 00056CB4  D0 19 00 14 */	stfs f0, 0x14(r25)
lbl_80059D78:
/* 80059D78 00056CB8  38 73 00 00 */	addi r3, r19, 0
/* 80059D7C 00056CBC  38 9C 00 00 */	addi r4, r28, 0
/* 80059D80 00056CC0  38 B9 00 00 */	addi r5, r25, 0
/* 80059D84 00056CC4  4B FF F4 21 */	bl setOsc__Q28JASystem10TBasicInstFiPQ38JASystem11TOscillator4Osc_
/* 80059D88 00056CC8  3B 9C 00 01 */	addi r28, r28, 1
lbl_80059D8C:
/* 80059D8C 00056CCC  3B 7B 00 01 */	addi r27, r27, 1
/* 80059D90 00056CD0  2C 1B 00 02 */	cmpwi r27, 2
/* 80059D94 00056CD4  3B DE 00 04 */	addi r30, r30, 4
/* 80059D98 00056CD8  41 80 FE C0 */	blt lbl_80059C58
/* 80059D9C 00056CDC  38 73 00 00 */	addi r3, r19, 0
/* 80059DA0 00056CE0  38 80 00 04 */	li r4, 4
/* 80059DA4 00056CE4  4B FF F3 01 */	bl setEffectCount__Q28JASystem10TBasicInstFUl
/* 80059DA8 00056CE8  3A A0 00 00 */	li r21, 0
/* 80059DAC 00056CEC  3A 80 00 00 */	li r20, 0
lbl_80059DB0:
/* 80059DB0 00056CF0  38 14 00 18 */	addi r0, r20, 0x18
/* 80059DB4 00056CF4  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80059DB8 00056CF8  7F A3 EB 78 */	mr r3, r29
/* 80059DBC 00056CFC  48 00 07 01 */	bl JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TRand$$1__FPCvUl
/* 80059DC0 00056D00  7C 76 1B 79 */	or. r22, r3, r3
/* 80059DC4 00056D04  41 82 00 60 */	beq lbl_80059E24
/* 80059DC8 00056D08  38 97 00 00 */	addi r4, r23, 0
/* 80059DCC 00056D0C  38 60 00 10 */	li r3, 0x10
/* 80059DD0 00056D10  38 A0 00 00 */	li r5, 0
/* 80059DD4 00056D14  4B FB 2B 71 */	bl __nw__FUlP7JKRHeapi
/* 80059DD8 00056D18  7C 78 1B 79 */	or. r24, r3, r3
/* 80059DDC 00056D1C  41 82 00 1C */	beq lbl_80059DF8
/* 80059DE0 00056D20  92 38 00 00 */	stw r17, 0(r24)
/* 80059DE4 00056D24  38 00 00 00 */	li r0, 0
/* 80059DE8 00056D28  98 18 00 04 */	stb r0, 4(r24)
/* 80059DEC 00056D2C  91 F8 00 00 */	stw r15, 0(r24)
/* 80059DF0 00056D30  D3 98 00 08 */	stfs f28, 8(r24)
/* 80059DF4 00056D34  D3 B8 00 0C */	stfs f29, 0xc(r24)
lbl_80059DF8:
/* 80059DF8 00056D38  88 96 00 00 */	lbz r4, 0(r22)
/* 80059DFC 00056D3C  7F 03 C3 78 */	mr r3, r24
/* 80059E00 00056D40  48 00 0B 39 */	bl setTarget__Q28JASystem11TInstEffectFi
/* 80059E04 00056D44  C0 16 00 04 */	lfs f0, 4(r22)
/* 80059E08 00056D48  38 73 00 00 */	addi r3, r19, 0
/* 80059E0C 00056D4C  38 95 00 00 */	addi r4, r21, 0
/* 80059E10 00056D50  D0 18 00 08 */	stfs f0, 8(r24)
/* 80059E14 00056D54  7F 05 C3 78 */	mr r5, r24
/* 80059E18 00056D58  C0 16 00 08 */	lfs f0, 8(r22)
/* 80059E1C 00056D5C  D0 18 00 0C */	stfs f0, 0xc(r24)
/* 80059E20 00056D60  4B FF F2 FD */	bl setEffect__Q28JASystem10TBasicInstFiPQ28JASystem11TInstEffect
lbl_80059E24:
/* 80059E24 00056D64  3A B5 00 01 */	addi r21, r21, 1
/* 80059E28 00056D68  2C 15 00 02 */	cmpwi r21, 2
/* 80059E2C 00056D6C  3A 94 00 04 */	addi r20, r20, 4
/* 80059E30 00056D70  41 80 FF 80 */	blt lbl_80059DB0
/* 80059E34 00056D74  3A A0 00 00 */	li r21, 0
/* 80059E38 00056D78  3B 20 00 00 */	li r25, 0
lbl_80059E3C:
/* 80059E3C 00056D7C  38 19 00 20 */	addi r0, r25, 0x20
/* 80059E40 00056D80  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80059E44 00056D84  7F A3 EB 78 */	mr r3, r29
/* 80059E48 00056D88  48 00 06 5D */	bl JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser6TSense$$1__FPCvUl
/* 80059E4C 00056D8C  7C 78 1B 79 */	or. r24, r3, r3
/* 80059E50 00056D90  41 82 00 74 */	beq lbl_80059EC4
/* 80059E54 00056D94  38 97 00 00 */	addi r4, r23, 0
/* 80059E58 00056D98  38 60 00 14 */	li r3, 0x14
/* 80059E5C 00056D9C  38 A0 00 00 */	li r5, 0
/* 80059E60 00056DA0  4B FB 2A E5 */	bl __nw__FUlP7JKRHeapi
/* 80059E64 00056DA4  28 03 00 00 */	cmplwi r3, 0
/* 80059E68 00056DA8  41 82 00 28 */	beq lbl_80059E90
/* 80059E6C 00056DAC  92 23 00 00 */	stw r17, 0(r3)
/* 80059E70 00056DB0  38 80 00 00 */	li r4, 0
/* 80059E74 00056DB4  38 00 00 3C */	li r0, 0x3c
/* 80059E78 00056DB8  98 83 00 04 */	stb r4, 4(r3)
/* 80059E7C 00056DBC  92 03 00 00 */	stw r16, 0(r3)
/* 80059E80 00056DC0  98 83 00 08 */	stb r4, 8(r3)
/* 80059E84 00056DC4  98 03 00 09 */	stb r0, 9(r3)
/* 80059E88 00056DC8  D3 83 00 0C */	stfs f28, 0xc(r3)
/* 80059E8C 00056DCC  D3 83 00 10 */	stfs f28, 0x10(r3)
lbl_80059E90:
/* 80059E90 00056DD0  7C 76 1B 78 */	mr r22, r3
/* 80059E94 00056DD4  88 98 00 00 */	lbz r4, 0(r24)
/* 80059E98 00056DD8  48 00 0A A1 */	bl setTarget__Q28JASystem11TInstEffectFi
/* 80059E9C 00056DDC  88 98 00 01 */	lbz r4, 1(r24)
/* 80059EA0 00056DE0  7E C3 B3 78 */	mr r3, r22
/* 80059EA4 00056DE4  88 B8 00 02 */	lbz r5, 2(r24)
/* 80059EA8 00056DE8  C0 38 00 04 */	lfs f1, 4(r24)
/* 80059EAC 00056DEC  C0 58 00 08 */	lfs f2, 8(r24)
/* 80059EB0 00056DF0  48 00 0C 55 */	bl setParams__Q28JASystem10TInstSenseFiiff
/* 80059EB4 00056DF4  38 73 00 00 */	addi r3, r19, 0
/* 80059EB8 00056DF8  38 B6 00 00 */	addi r5, r22, 0
/* 80059EBC 00056DFC  38 95 00 02 */	addi r4, r21, 2
/* 80059EC0 00056E00  4B FF F2 5D */	bl setEffect__Q28JASystem10TBasicInstFiPQ28JASystem11TInstEffect
lbl_80059EC4:
/* 80059EC4 00056E04  3A B5 00 01 */	addi r21, r21, 1
/* 80059EC8 00056E08  2C 15 00 02 */	cmpwi r21, 2
/* 80059ECC 00056E0C  3B 39 00 04 */	addi r25, r25, 4
/* 80059ED0 00056E10  41 80 FF 6C */	blt lbl_80059E3C
/* 80059ED4 00056E14  7E 63 9B 78 */	mr r3, r19
/* 80059ED8 00056E18  80 9A 00 28 */	lwz r4, 0x28(r26)
/* 80059EDC 00056E1C  4B FF F1 29 */	bl setKeyRegionCount__Q28JASystem10TBasicInstFUl
/* 80059EE0 00056E20  3A A0 00 00 */	li r21, 0
/* 80059EE4 00056E24  3A 80 00 00 */	li r20, 0
/* 80059EE8 00056E28  48 00 00 A8 */	b lbl_80059F90
lbl_80059EEC:
/* 80059EEC 00056E2C  38 73 00 00 */	addi r3, r19, 0
/* 80059EF0 00056E30  38 95 00 00 */	addi r4, r21, 0
/* 80059EF4 00056E34  4B FF F2 C1 */	bl getKeyRegion__Q28JASystem10TBasicInstFi
/* 80059EF8 00056E38  38 14 00 2C */	addi r0, r20, 0x2c
/* 80059EFC 00056E3C  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80059F00 00056E40  3B 03 00 00 */	addi r24, r3, 0
/* 80059F04 00056E44  38 7D 00 00 */	addi r3, r29, 0
/* 80059F08 00056E48  48 00 05 85 */	bl JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser7TKeymap$$1__FPCvUl
/* 80059F0C 00056E4C  7C 7B 1B 78 */	mr r27, r3
/* 80059F10 00056E50  88 03 00 00 */	lbz r0, 0(r3)
/* 80059F14 00056E54  7F 03 C3 78 */	mr r3, r24
/* 80059F18 00056E58  90 18 00 00 */	stw r0, 0(r24)
/* 80059F1C 00056E5C  80 9B 00 04 */	lwz r4, 4(r27)
/* 80059F20 00056E60  4B FF F3 0D */	bl setVeloRegionCount__Q38JASystem10TBasicInst7TKeymapFUl
/* 80059F24 00056E64  3B C0 00 00 */	li r30, 0
/* 80059F28 00056E68  3B 80 00 00 */	li r28, 0
/* 80059F2C 00056E6C  48 00 00 50 */	b lbl_80059F7C
lbl_80059F30:
/* 80059F30 00056E70  38 78 00 00 */	addi r3, r24, 0
/* 80059F34 00056E74  38 9E 00 00 */	addi r4, r30, 0
/* 80059F38 00056E78  4B FF F3 4D */	bl getVeloRegion__Q38JASystem10TBasicInst7TKeymapFi
/* 80059F3C 00056E7C  38 1C 00 08 */	addi r0, r28, 8
/* 80059F40 00056E80  7C 9B 00 2E */	lwzx r4, r27, r0
/* 80059F44 00056E84  3B E3 00 00 */	addi r31, r3, 0
/* 80059F48 00056E88  38 7D 00 00 */	addi r3, r29, 0
/* 80059F4C 00056E8C  48 00 05 29 */	bl JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TVmap$$1__FPCvUl
/* 80059F50 00056E90  88 03 00 00 */	lbz r0, 0(r3)
/* 80059F54 00056E94  3B DE 00 01 */	addi r30, r30, 1
/* 80059F58 00056E98  3B 9C 00 04 */	addi r28, r28, 4
/* 80059F5C 00056E9C  90 1F 00 00 */	stw r0, 0(r31)
/* 80059F60 00056EA0  80 03 00 04 */	lwz r0, 4(r3)
/* 80059F64 00056EA4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80059F68 00056EA8  90 1F 00 04 */	stw r0, 4(r31)
/* 80059F6C 00056EAC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80059F70 00056EB0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80059F74 00056EB4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80059F78 00056EB8  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80059F7C:
/* 80059F7C 00056EBC  80 1B 00 04 */	lwz r0, 4(r27)
/* 80059F80 00056EC0  7C 1E 00 40 */	cmplw r30, r0
/* 80059F84 00056EC4  41 80 FF AC */	blt lbl_80059F30
/* 80059F88 00056EC8  3A B5 00 01 */	addi r21, r21, 1
/* 80059F8C 00056ECC  3A 94 00 04 */	addi r20, r20, 4
lbl_80059F90:
/* 80059F90 00056ED0  80 1A 00 28 */	lwz r0, 0x28(r26)
/* 80059F94 00056ED4  7C 15 00 40 */	cmplw r21, r0
/* 80059F98 00056ED8  41 80 FF 54 */	blt lbl_80059EEC
/* 80059F9C 00056EDC  38 6E 00 00 */	addi r3, r14, 0
/* 80059FA0 00056EE0  38 92 00 00 */	addi r4, r18, 0
/* 80059FA4 00056EE4  38 B3 00 00 */	addi r5, r19, 0
/* 80059FA8 00056EE8  4B FF ED 1D */	bl setInst__Q28JASystem10TBasicBankFiPQ28JASystem5TInst
lbl_80059FAC:
/* 80059FAC 00056EEC  80 61 00 94 */	lwz r3, 0x94(r1)
/* 80059FB0 00056EF0  3A 52 00 01 */	addi r18, r18, 1
/* 80059FB4 00056EF4  2C 12 00 80 */	cmpwi r18, 0x80
/* 80059FB8 00056EF8  38 63 00 04 */	addi r3, r3, 4
/* 80059FBC 00056EFC  90 61 00 94 */	stw r3, 0x94(r1)
/* 80059FC0 00056F00  41 80 FC 2C */	blt lbl_80059BEC
/* 80059FC4 00056F04  38 00 00 00 */	li r0, 0
/* 80059FC8 00056F08  C3 C2 85 D8 */	lfs f30, $$2531-_SDA2_BASE_(r2)
/* 80059FCC 00056F0C  90 01 00 88 */	stw r0, 0x88(r1)
/* 80059FD0 00056F10  38 00 00 00 */	li r0, 0
/* 80059FD4 00056F14  3C 80 80 3B */	lis r4, __vt__Q28JASystem11TInstEffect@ha
/* 80059FD8 00056F18  C3 E2 85 DC */	lfs f31, $$2532-_SDA2_BASE_(r2)
/* 80059FDC 00056F1C  3C 60 80 3B */	lis r3, __vt__Q28JASystem9TInstRand@ha
/* 80059FE0 00056F20  CB 82 85 E8 */	lfd f28, $$2535-_SDA2_BASE_(r2)
/* 80059FE4 00056F24  3A C4 AE 80 */	addi r22, r4, __vt__Q28JASystem11TInstEffect@l
/* 80059FE8 00056F28  C3 A2 85 E0 */	lfs f29, $$2533-_SDA2_BASE_(r2)
/* 80059FEC 00056F2C  3A A3 AE A8 */	addi r21, r3, __vt__Q28JASystem9TInstRand@l
/* 80059FF0 00056F30  90 01 00 90 */	stw r0, 0x90(r1)
/* 80059FF4 00056F34  3D E0 43 30 */	lis r15, 0x4330
lbl_80059FF8:
/* 80059FF8 00056F38  80 61 00 90 */	lwz r3, 0x90(r1)
/* 80059FFC 00056F3C  38 03 03 B4 */	addi r0, r3, 0x3b4
/* 8005A000 00056F40  7C 9D 00 2E */	lwzx r4, r29, r0
/* 8005A004 00056F44  7F A3 EB 78 */	mr r3, r29
/* 8005A008 00056F48  48 00 04 55 */	bl JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TPerc$$1__FPCvUl
/* 8005A00C 00056F4C  7C 73 1B 79 */	or. r19, r3, r3
/* 8005A010 00056F50  41 82 01 E8 */	beq lbl_8005A1F8
/* 8005A014 00056F54  38 97 00 00 */	addi r4, r23, 0
/* 8005A018 00056F58  38 60 10 04 */	li r3, 0x1004
/* 8005A01C 00056F5C  38 A0 00 00 */	li r5, 0
/* 8005A020 00056F60  4B FB 29 25 */	bl __nw__FUlP7JKRHeapi
/* 8005A024 00056F64  28 03 00 00 */	cmplwi r3, 0
/* 8005A028 00056F68  41 82 00 08 */	beq lbl_8005A030
/* 8005A02C 00056F6C  48 00 02 41 */	bl __ct__Q28JASystem8TDrumSetFv
lbl_8005A030:
/* 8005A030 00056F70  3A 03 00 00 */	addi r16, r3, 0
/* 8005A034 00056F74  3A 80 00 00 */	li r20, 0
/* 8005A038 00056F78  3A 20 00 00 */	li r17, 0
/* 8005A03C 00056F7C  3A 40 00 00 */	li r18, 0
lbl_8005A040:
/* 8005A040 00056F80  38 12 00 88 */	addi r0, r18, 0x88
/* 8005A044 00056F84  7C 93 00 2E */	lwzx r4, r19, r0
/* 8005A048 00056F88  7F A3 EB 78 */	mr r3, r29
/* 8005A04C 00056F8C  48 00 03 F9 */	bl JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TPmap$$1__FPCvUl
/* 8005A050 00056F90  7C 7C 1B 79 */	or. r28, r3, r3
/* 8005A054 00056F94  41 82 01 7C */	beq lbl_8005A1D0
/* 8005A058 00056F98  38 70 00 00 */	addi r3, r16, 0
/* 8005A05C 00056F9C  38 94 00 00 */	addi r4, r20, 0
/* 8005A060 00056FA0  48 00 06 AD */	bl getPerc__Q28JASystem8TDrumSetFi
/* 8005A064 00056FA4  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8005A068 00056FA8  7C 78 1B 78 */	mr r24, r3
/* 8005A06C 00056FAC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8005A070 00056FB0  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8005A074 00056FB4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8005A078 00056FB8  80 73 00 00 */	lwz r3, 0(r19)
/* 8005A07C 00056FBC  3C 03 AF BB */	addis r0, r3, 0xafbb
/* 8005A080 00056FC0  28 00 52 32 */	cmplwi r0, 0x5232
/* 8005A084 00056FC4  40 82 00 3C */	bne lbl_8005A0C0
/* 8005A088 00056FC8  38 14 02 88 */	addi r0, r20, 0x288
/* 8005A08C 00056FCC  7C 93 00 AE */	lbzx r4, r19, r0
/* 8005A090 00056FD0  38 11 03 08 */	addi r0, r17, 0x308
/* 8005A094 00056FD4  38 78 00 00 */	addi r3, r24, 0
/* 8005A098 00056FD8  7C 84 07 74 */	extsb r4, r4
/* 8005A09C 00056FDC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8005A0A0 00056FE0  90 81 00 9C */	stw r4, 0x9c(r1)
/* 8005A0A4 00056FE4  91 E1 00 98 */	stw r15, 0x98(r1)
/* 8005A0A8 00056FE8  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8005A0AC 00056FEC  EC 00 E0 28 */	fsubs f0, f0, f28
/* 8005A0B0 00056FF0  EC 00 E8 24 */	fdivs f0, f0, f29
/* 8005A0B4 00056FF4  D0 18 00 08 */	stfs f0, 8(r24)
/* 8005A0B8 00056FF8  7C 93 02 2E */	lhzx r4, r19, r0
/* 8005A0BC 00056FFC  48 00 07 E5 */	bl setRelease__Q38JASystem8TDrumSet5TPercFUl
lbl_8005A0C0:
/* 8005A0C0 00057000  38 78 00 00 */	addi r3, r24, 0
/* 8005A0C4 00057004  38 80 00 02 */	li r4, 2
/* 8005A0C8 00057008  48 00 06 E9 */	bl setEffectCount__Q38JASystem8TDrumSet5TPercFUl
/* 8005A0CC 0005700C  3B 40 00 00 */	li r26, 0
/* 8005A0D0 00057010  3B 60 00 00 */	li r27, 0
/* 8005A0D4 00057014  3B 20 00 00 */	li r25, 0
lbl_8005A0D8:
/* 8005A0D8 00057018  38 19 00 08 */	addi r0, r25, 8
/* 8005A0DC 0005701C  7C 9C 00 2E */	lwzx r4, r28, r0
/* 8005A0E0 00057020  7F A3 EB 78 */	mr r3, r29
/* 8005A0E4 00057024  48 00 03 D9 */	bl JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TRand$$1__FPCvUl
/* 8005A0E8 00057028  7C 7E 1B 79 */	or. r30, r3, r3
/* 8005A0EC 0005702C  41 82 00 64 */	beq lbl_8005A150
/* 8005A0F0 00057030  38 97 00 00 */	addi r4, r23, 0
/* 8005A0F4 00057034  38 60 00 10 */	li r3, 0x10
/* 8005A0F8 00057038  38 A0 00 00 */	li r5, 0
/* 8005A0FC 0005703C  4B FB 28 49 */	bl __nw__FUlP7JKRHeapi
/* 8005A100 00057040  7C 7F 1B 79 */	or. r31, r3, r3
/* 8005A104 00057044  41 82 00 1C */	beq lbl_8005A120
/* 8005A108 00057048  92 DF 00 00 */	stw r22, 0(r31)
/* 8005A10C 0005704C  38 00 00 00 */	li r0, 0
/* 8005A110 00057050  98 1F 00 04 */	stb r0, 4(r31)
/* 8005A114 00057054  92 BF 00 00 */	stw r21, 0(r31)
/* 8005A118 00057058  D3 DF 00 08 */	stfs f30, 8(r31)
/* 8005A11C 0005705C  D3 FF 00 0C */	stfs f31, 0xc(r31)
lbl_8005A120:
/* 8005A120 00057060  88 9E 00 00 */	lbz r4, 0(r30)
/* 8005A124 00057064  7F E3 FB 78 */	mr r3, r31
/* 8005A128 00057068  48 00 08 11 */	bl setTarget__Q28JASystem11TInstEffectFi
/* 8005A12C 0005706C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8005A130 00057070  38 78 00 00 */	addi r3, r24, 0
/* 8005A134 00057074  38 9A 00 00 */	addi r4, r26, 0
/* 8005A138 00057078  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8005A13C 0005707C  7F E5 FB 78 */	mr r5, r31
/* 8005A140 00057080  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8005A144 00057084  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8005A148 00057088  48 00 07 49 */	bl setEffect__Q38JASystem8TDrumSet5TPercFiPQ28JASystem11TInstEffect
/* 8005A14C 0005708C  3B 5A 00 01 */	addi r26, r26, 1
lbl_8005A150:
/* 8005A150 00057090  3B 7B 00 01 */	addi r27, r27, 1
/* 8005A154 00057094  2C 1B 00 02 */	cmpwi r27, 2
/* 8005A158 00057098  3B 39 00 04 */	addi r25, r25, 4
/* 8005A15C 0005709C  41 80 FF 7C */	blt lbl_8005A0D8
/* 8005A160 000570A0  7F 03 C3 78 */	mr r3, r24
/* 8005A164 000570A4  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 8005A168 000570A8  48 00 06 C1 */	bl setVeloRegionCount__Q38JASystem8TDrumSet5TPercFUl
/* 8005A16C 000570AC  3B C0 00 00 */	li r30, 0
/* 8005A170 000570B0  3B 60 00 00 */	li r27, 0
/* 8005A174 000570B4  48 00 00 50 */	b lbl_8005A1C4
lbl_8005A178:
/* 8005A178 000570B8  38 78 00 00 */	addi r3, r24, 0
/* 8005A17C 000570BC  38 9E 00 00 */	addi r4, r30, 0
/* 8005A180 000570C0  48 00 07 01 */	bl getVeloRegion__Q38JASystem8TDrumSet5TPercFi
/* 8005A184 000570C4  38 1B 00 14 */	addi r0, r27, 0x14
/* 8005A188 000570C8  7C 9C 00 2E */	lwzx r4, r28, r0
/* 8005A18C 000570CC  3B E3 00 00 */	addi r31, r3, 0
/* 8005A190 000570D0  38 7D 00 00 */	addi r3, r29, 0
/* 8005A194 000570D4  48 00 02 E1 */	bl JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TVmap$$1__FPCvUl
/* 8005A198 000570D8  88 03 00 00 */	lbz r0, 0(r3)
/* 8005A19C 000570DC  3B DE 00 01 */	addi r30, r30, 1
/* 8005A1A0 000570E0  3B 7B 00 04 */	addi r27, r27, 4
/* 8005A1A4 000570E4  90 1F 00 00 */	stw r0, 0(r31)
/* 8005A1A8 000570E8  80 03 00 04 */	lwz r0, 4(r3)
/* 8005A1AC 000570EC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8005A1B0 000570F0  90 1F 00 04 */	stw r0, 4(r31)
/* 8005A1B4 000570F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8005A1B8 000570F8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8005A1BC 000570FC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8005A1C0 00057100  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8005A1C4:
/* 8005A1C4 00057104  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8005A1C8 00057108  7C 1E 00 40 */	cmplw r30, r0
/* 8005A1CC 0005710C  41 80 FF AC */	blt lbl_8005A178
lbl_8005A1D0:
/* 8005A1D0 00057110  3A 94 00 01 */	addi r20, r20, 1
/* 8005A1D4 00057114  2C 14 00 80 */	cmpwi r20, 0x80
/* 8005A1D8 00057118  3A 31 00 02 */	addi r17, r17, 2
/* 8005A1DC 0005711C  3A 52 00 04 */	addi r18, r18, 4
/* 8005A1E0 00057120  41 80 FE 60 */	blt lbl_8005A040
/* 8005A1E4 00057124  80 81 00 88 */	lwz r4, 0x88(r1)
/* 8005A1E8 00057128  38 6E 00 00 */	addi r3, r14, 0
/* 8005A1EC 0005712C  38 B0 00 00 */	addi r5, r16, 0
/* 8005A1F0 00057130  38 84 00 E4 */	addi r4, r4, 0xe4
/* 8005A1F4 00057134  4B FF EA D1 */	bl setInst__Q28JASystem10TBasicBankFiPQ28JASystem5TInst
lbl_8005A1F8:
/* 8005A1F8 00057138  80 61 00 88 */	lwz r3, 0x88(r1)
/* 8005A1FC 0005713C  38 63 00 01 */	addi r3, r3, 1
/* 8005A200 00057140  90 61 00 88 */	stw r3, 0x88(r1)
/* 8005A204 00057144  80 61 00 90 */	lwz r3, 0x90(r1)
/* 8005A208 00057148  80 01 00 88 */	lwz r0, 0x88(r1)
/* 8005A20C 0005714C  38 63 00 04 */	addi r3, r3, 4
/* 8005A210 00057150  2C 00 00 0C */	cmpwi r0, 0xc
/* 8005A214 00057154  90 61 00 90 */	stw r3, 0x90(r1)
/* 8005A218 00057158  41 80 FD E0 */	blt lbl_80059FF8
/* 8005A21C 0005715C  7E E3 BB 78 */	mr r3, r23
/* 8005A220 00057160  81 97 00 00 */	lwz r12, 0(r23)
/* 8005A224 00057164  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8005A228 00057168  7D 88 03 A6 */	mtlr r12
/* 8005A22C 0005716C  4E 80 00 21 */	blrl 
/* 8005A230 00057170  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 8005A234 00057174  80 8D 90 90 */	lwz r4, sUsedHeapSize__Q28JASystem9BNKParser-_SDA_BASE_(r13)
/* 8005A238 00057178  7C 03 00 50 */	subf r0, r3, r0
/* 8005A23C 0005717C  7C 04 02 14 */	add r0, r4, r0
/* 8005A240 00057180  90 0D 90 90 */	stw r0, sUsedHeapSize__Q28JASystem9BNKParser-_SDA_BASE_(r13)
/* 8005A244 00057184  38 6E 00 00 */	addi r3, r14, 0
lbl_8005A248:
/* 8005A248 00057188  B9 C1 00 A0 */	lmw r14, 0xa0(r1)
/* 8005A24C 0005718C  80 01 01 0C */	lwz r0, 0x10c(r1)
/* 8005A250 00057190  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8005A254 00057194  CB C1 00 F8 */	lfd f30, 0xf8(r1)
/* 8005A258 00057198  7C 08 03 A6 */	mtlr r0
/* 8005A25C 0005719C  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 8005A260 000571A0  CB 81 00 E8 */	lfd f28, 0xe8(r1)
/* 8005A264 000571A4  38 21 01 08 */	addi r1, r1, 0x108
/* 8005A268 000571A8  4E 80 00 20 */	blr 

.global __ct__Q28JASystem8TDrumSetFv
__ct__Q28JASystem8TDrumSetFv:
/* 8005A26C 000571AC  7C 08 02 A6 */	mflr r0
/* 8005A270 000571B0  3C 80 80 3B */	lis r4, __vt__Q28JASystem5TInst@ha
/* 8005A274 000571B4  90 01 00 04 */	stw r0, 4(r1)
/* 8005A278 000571B8  38 04 AD F0 */	addi r0, r4, __vt__Q28JASystem5TInst@l
/* 8005A27C 000571BC  3C 80 80 06 */	lis r4, __ct__Q38JASystem8TDrumSet5TPercFv@ha
/* 8005A280 000571C0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8005A284 000571C4  38 84 A7 20 */	addi r4, r4, __ct__Q38JASystem8TDrumSet5TPercFv@l
/* 8005A288 000571C8  38 C0 00 20 */	li r6, 0x20
/* 8005A28C 000571CC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8005A290 000571D0  38 E0 00 80 */	li r7, 0x80
/* 8005A294 000571D4  90 61 00 08 */	stw r3, 8(r1)
/* 8005A298 000571D8  3C 60 80 3B */	lis r3, __vt__Q28JASystem8TDrumSet@ha
/* 8005A29C 000571DC  83 E1 00 08 */	lwz r31, 8(r1)
/* 8005A2A0 000571E0  90 1F 00 00 */	stw r0, 0(r31)
/* 8005A2A4 000571E4  38 03 AE 90 */	addi r0, r3, __vt__Q28JASystem8TDrumSet@l
/* 8005A2A8 000571E8  3C 60 80 06 */	lis r3, __dt__Q38JASystem8TDrumSet5TPercFv@ha
/* 8005A2AC 000571EC  90 1F 00 00 */	stw r0, 0(r31)
/* 8005A2B0 000571F0  38 A3 A7 54 */	addi r5, r3, __dt__Q38JASystem8TDrumSet5TPercFv@l
/* 8005A2B4 000571F4  38 7F 00 04 */	addi r3, r31, 4
/* 8005A2B8 000571F8  48 02 85 7D */	bl __construct_array
/* 8005A2BC 000571FC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8005A2C0 00057200  7F E3 FB 78 */	mr r3, r31
/* 8005A2C4 00057204  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8005A2C8 00057208  38 21 00 18 */	addi r1, r1, 0x18
/* 8005A2CC 0005720C  7C 08 03 A6 */	mtlr r0
/* 8005A2D0 00057210  4E 80 00 20 */	blr 

.global findOscPtr__Q28JASystem9BNKParserFPQ28JASystem10TBasicBankPQ38JASystem9BNKParser7THeaderPQ38JASystem9BNKParser4TOsc
findOscPtr__Q28JASystem9BNKParserFPQ28JASystem10TBasicBankPQ38JASystem9BNKParser7THeaderPQ38JASystem9BNKParser4TOsc:
/* 8005A2D4 00057214  7C 08 02 A6 */	mflr r0
/* 8005A2D8 00057218  90 01 00 04 */	stw r0, 4(r1)
/* 8005A2DC 0005721C  94 21 FF 68 */	stwu r1, -0x98(r1)
/* 8005A2E0 00057220  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8005A2E4 00057224  DB C1 00 88 */	stfd f30, 0x88(r1)
/* 8005A2E8 00057228  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8005A2EC 0005722C  BE E1 00 5C */	stmw r23, 0x5c(r1)
/* 8005A2F0 00057230  7C 98 23 78 */	mr r24, r4
/* 8005A2F4 00057234  7C 77 1B 78 */	mr r23, r3
/* 8005A2F8 00057238  3B 25 00 00 */	addi r25, r5, 0
/* 8005A2FC 0005723C  3B 98 00 20 */	addi r28, r24, 0x20
/* 8005A300 00057240  3B 60 00 00 */	li r27, 0
/* 8005A304 00057244  3B E0 00 00 */	li r31, 0
/* 8005A308 00057248  C3 A2 85 D8 */	lfs f29, $$2531-_SDA2_BASE_(r2)
/* 8005A30C 0005724C  C3 C2 85 F0 */	lfs f30, $$2568-_SDA2_BASE_(r2)
/* 8005A310 00057250  C3 E2 85 DC */	lfs f31, $$2532-_SDA2_BASE_(r2)
lbl_8005A314:
/* 8005A314 00057254  38 1F 00 04 */	addi r0, r31, 4
/* 8005A318 00057258  7C 9C 00 2E */	lwzx r4, r28, r0
/* 8005A31C 0005725C  7F 03 C3 78 */	mr r3, r24
/* 8005A320 00057260  48 00 01 E5 */	bl JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TInst$$1__FPCvUl
/* 8005A324 00057264  7C 7D 1B 79 */	or. r29, r3, r3
/* 8005A328 00057268  41 82 00 D4 */	beq lbl_8005A3FC
/* 8005A32C 0005726C  3B 40 00 00 */	li r26, 0
/* 8005A330 00057270  3B C0 00 00 */	li r30, 0
lbl_8005A334:
/* 8005A334 00057274  38 1E 00 10 */	addi r0, r30, 0x10
/* 8005A338 00057278  7C 9D 00 2E */	lwzx r4, r29, r0
/* 8005A33C 0005727C  7F 03 C3 78 */	mr r3, r24
/* 8005A340 00057280  48 00 01 AD */	bl JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser4TOsc$$1__FPCvUl
/* 8005A344 00057284  7C 03 C8 40 */	cmplw r3, r25
/* 8005A348 00057288  40 82 00 A4 */	bne lbl_8005A3EC
/* 8005A34C 0005728C  7E E3 BB 78 */	mr r3, r23
/* 8005A350 00057290  81 97 00 00 */	lwz r12, 0(r23)
/* 8005A354 00057294  7F 64 DB 78 */	mr r4, r27
/* 8005A358 00057298  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8005A35C 0005729C  7D 88 03 A6 */	mtlr r12
/* 8005A360 000572A0  4E 80 00 21 */	blrl 
/* 8005A364 000572A4  28 03 00 00 */	cmplwi r3, 0
/* 8005A368 000572A8  41 82 00 84 */	beq lbl_8005A3EC
/* 8005A36C 000572AC  38 00 00 00 */	li r0, 0
/* 8005A370 000572B0  98 01 00 14 */	stb r0, 0x14(r1)
/* 8005A374 000572B4  38 C1 00 14 */	addi r6, r1, 0x14
/* 8005A378 000572B8  38 80 00 3C */	li r4, 0x3c
/* 8005A37C 000572BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8005A380 000572C0  38 A0 00 7F */	li r5, 0x7f
/* 8005A384 000572C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8005A388 000572C8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8005A38C 000572CC  D3 A1 00 24 */	stfs f29, 0x24(r1)
/* 8005A390 000572D0  D3 A1 00 28 */	stfs f29, 0x28(r1)
/* 8005A394 000572D4  D3 A1 00 2C */	stfs f29, 0x2c(r1)
/* 8005A398 000572D8  D3 A1 00 30 */	stfs f29, 0x30(r1)
/* 8005A39C 000572DC  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 8005A3A0 000572E0  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 8005A3A4 000572E4  D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 8005A3A8 000572E8  D3 C1 00 40 */	stfs f30, 0x40(r1)
/* 8005A3AC 000572EC  D3 E1 00 44 */	stfs f31, 0x44(r1)
/* 8005A3B0 000572F0  D3 E1 00 48 */	stfs f31, 0x48(r1)
/* 8005A3B4 000572F4  98 01 00 4C */	stb r0, 0x4c(r1)
/* 8005A3B8 000572F8  B0 01 00 4E */	sth r0, 0x4e(r1)
/* 8005A3BC 000572FC  90 01 00 50 */	stw r0, 0x50(r1)
/* 8005A3C0 00057300  90 01 00 54 */	stw r0, 0x54(r1)
/* 8005A3C4 00057304  81 83 00 00 */	lwz r12, 0(r3)
/* 8005A3C8 00057308  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8005A3CC 0005730C  7D 88 03 A6 */	mtlr r12
/* 8005A3D0 00057310  4E 80 00 21 */	blrl 
/* 8005A3D4 00057314  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8005A3D8 00057318  7C 1A 00 40 */	cmplw r26, r0
/* 8005A3DC 0005731C  40 80 00 10 */	bge lbl_8005A3EC
/* 8005A3E0 00057320  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8005A3E4 00057324  7C 63 F0 2E */	lwzx r3, r3, r30
/* 8005A3E8 00057328  48 00 00 28 */	b lbl_8005A410
lbl_8005A3EC:
/* 8005A3EC 0005732C  3B 5A 00 01 */	addi r26, r26, 1
/* 8005A3F0 00057330  2C 1A 00 02 */	cmpwi r26, 2
/* 8005A3F4 00057334  3B DE 00 04 */	addi r30, r30, 4
/* 8005A3F8 00057338  41 80 FF 3C */	blt lbl_8005A334
lbl_8005A3FC:
/* 8005A3FC 0005733C  3B 7B 00 01 */	addi r27, r27, 1
/* 8005A400 00057340  2C 1B 00 80 */	cmpwi r27, 0x80
/* 8005A404 00057344  3B FF 00 04 */	addi r31, r31, 4
/* 8005A408 00057348  41 80 FF 0C */	blt lbl_8005A314
/* 8005A40C 0005734C  38 60 00 00 */	li r3, 0
lbl_8005A410:
/* 8005A410 00057350  BA E1 00 5C */	lmw r23, 0x5c(r1)
/* 8005A414 00057354  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8005A418 00057358  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8005A41C 0005735C  CB C1 00 88 */	lfd f30, 0x88(r1)
/* 8005A420 00057360  7C 08 03 A6 */	mtlr r0
/* 8005A424 00057364  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8005A428 00057368  38 21 00 98 */	addi r1, r1, 0x98
/* 8005A42C 0005736C  4E 80 00 20 */	blr 

.global getOscTableEndPtr__Q28JASystem9BNKParserFPs
getOscTableEndPtr__Q28JASystem9BNKParserFPs:
/* 8005A430 00057370  A8 03 00 00 */	lha r0, 0(r3)
/* 8005A434 00057374  38 63 00 06 */	addi r3, r3, 6
/* 8005A438 00057378  2C 00 00 0A */	cmpwi r0, 0xa
/* 8005A43C 0005737C  40 81 FF F4 */	ble getOscTableEndPtr__Q28JASystem9BNKParserFPs
/* 8005A440 00057380  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TPmap$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TPmap$$1__FPCvUl:
/* 8005A444 00057384  28 04 00 00 */	cmplwi r4, 0
/* 8005A448 00057388  40 82 00 0C */	bne lbl_8005A454
/* 8005A44C 0005738C  38 60 00 00 */	li r3, 0
/* 8005A450 00057390  4E 80 00 20 */	blr 
lbl_8005A454:
/* 8005A454 00057394  7C 63 22 14 */	add r3, r3, r4
/* 8005A458 00057398  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TPerc$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TPerc$$1__FPCvUl:
/* 8005A45C 0005739C  28 04 00 00 */	cmplwi r4, 0
/* 8005A460 000573A0  40 82 00 0C */	bne lbl_8005A46C
/* 8005A464 000573A4  38 60 00 00 */	li r3, 0
/* 8005A468 000573A8  4E 80 00 20 */	blr 
lbl_8005A46C:
/* 8005A46C 000573AC  7C 63 22 14 */	add r3, r3, r4
/* 8005A470 000573B0  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TVmap$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TVmap$$1__FPCvUl:
/* 8005A474 000573B4  28 04 00 00 */	cmplwi r4, 0
/* 8005A478 000573B8  40 82 00 0C */	bne lbl_8005A484
/* 8005A47C 000573BC  38 60 00 00 */	li r3, 0
/* 8005A480 000573C0  4E 80 00 20 */	blr 
lbl_8005A484:
/* 8005A484 000573C4  7C 63 22 14 */	add r3, r3, r4
/* 8005A488 000573C8  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser7TKeymap$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser7TKeymap$$1__FPCvUl:
/* 8005A48C 000573CC  28 04 00 00 */	cmplwi r4, 0
/* 8005A490 000573D0  40 82 00 0C */	bne lbl_8005A49C
/* 8005A494 000573D4  38 60 00 00 */	li r3, 0
/* 8005A498 000573D8  4E 80 00 20 */	blr 
lbl_8005A49C:
/* 8005A49C 000573DC  7C 63 22 14 */	add r3, r3, r4
/* 8005A4A0 000573E0  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser6TSense$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser6TSense$$1__FPCvUl:
/* 8005A4A4 000573E4  28 04 00 00 */	cmplwi r4, 0
/* 8005A4A8 000573E8  40 82 00 0C */	bne lbl_8005A4B4
/* 8005A4AC 000573EC  38 60 00 00 */	li r3, 0
/* 8005A4B0 000573F0  4E 80 00 20 */	blr 
lbl_8005A4B4:
/* 8005A4B4 000573F4  7C 63 22 14 */	add r3, r3, r4
/* 8005A4B8 000573F8  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TRand$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TRand$$1__FPCvUl:
/* 8005A4BC 000573FC  28 04 00 00 */	cmplwi r4, 0
/* 8005A4C0 00057400  40 82 00 0C */	bne lbl_8005A4CC
/* 8005A4C4 00057404  38 60 00 00 */	li r3, 0
/* 8005A4C8 00057408  4E 80 00 20 */	blr 
lbl_8005A4CC:
/* 8005A4CC 0005740C  7C 63 22 14 */	add r3, r3, r4
/* 8005A4D0 00057410  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0s$$1__FPCvUl
JSUConvertOffsetToPtr$$0s$$1__FPCvUl:
/* 8005A4D4 00057414  28 04 00 00 */	cmplwi r4, 0
/* 8005A4D8 00057418  40 82 00 0C */	bne lbl_8005A4E4
/* 8005A4DC 0005741C  38 60 00 00 */	li r3, 0
/* 8005A4E0 00057420  4E 80 00 20 */	blr 
lbl_8005A4E4:
/* 8005A4E4 00057424  7C 63 22 14 */	add r3, r3, r4
/* 8005A4E8 00057428  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser4TOsc$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser4TOsc$$1__FPCvUl:
/* 8005A4EC 0005742C  28 04 00 00 */	cmplwi r4, 0
/* 8005A4F0 00057430  40 82 00 0C */	bne lbl_8005A4FC
/* 8005A4F4 00057434  38 60 00 00 */	li r3, 0
/* 8005A4F8 00057438  4E 80 00 20 */	blr 
lbl_8005A4FC:
/* 8005A4FC 0005743C  7C 63 22 14 */	add r3, r3, r4
/* 8005A500 00057440  4E 80 00 20 */	blr 

.global JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TInst$$1__FPCvUl
JSUConvertOffsetToPtr$$0Q38JASystem9BNKParser5TInst$$1__FPCvUl:
/* 8005A504 00057444  28 04 00 00 */	cmplwi r4, 0
/* 8005A508 00057448  40 82 00 0C */	bne lbl_8005A514
/* 8005A50C 0005744C  38 60 00 00 */	li r3, 0
/* 8005A510 00057450  4E 80 00 20 */	blr 
lbl_8005A514:
/* 8005A514 00057454  7C 63 22 14 */	add r3, r3, r4
/* 8005A518 00057458  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__Q28JASystem11TInstEffect
__vt__Q28JASystem11TInstEffect:
	.incbin "baserom.dol", 0x3A7E80, 0x10

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2531:
	.incbin "baserom.dol", 0x3E42D8, 0x4
$$2532:
	.incbin "baserom.dol", 0x3E42DC, 0x4
$$2533:
	.incbin "baserom.dol", 0x3E42E0, 0x8
$$2535:
	.incbin "baserom.dol", 0x3E42E8, 0x8
$$2568:
	.incbin "baserom.dol", 0x3E42F0, 0x8

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
sUsedHeapSize__Q28JASystem9BNKParser:
	.skip 0x8
