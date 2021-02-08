.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __dt__12TMovieRumbleFv
__dt__12TMovieRumbleFv:
/* 80247868 002447A8  7C 08 02 A6 */	mflr r0
/* 8024786C 002447AC  90 01 00 04 */	stw r0, 4(r1)
/* 80247870 002447B0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80247874 002447B4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80247878 002447B8  3B E4 00 00 */	addi r31, r4, 0
/* 8024787C 002447BC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80247880 002447C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80247884 002447C4  41 82 00 3C */	beq lbl_802478C0
/* 80247888 002447C8  3C 60 80 3D */	lis r3, __vt__12TMovieRumble@ha
/* 8024788C 002447CC  38 03 21 88 */	addi r0, r3, __vt__12TMovieRumble@l
/* 80247890 002447D0  90 1E 00 00 */	stw r0, 0(r30)
/* 80247894 002447D4  41 82 00 1C */	beq lbl_802478B0
/* 80247898 002447D8  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 8024789C 002447DC  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 802478A0 002447E0  90 1E 00 00 */	stw r0, 0(r30)
/* 802478A4 002447E4  38 7E 00 00 */	addi r3, r30, 0
/* 802478A8 002447E8  38 80 00 00 */	li r4, 0
/* 802478AC 002447EC  4B DF CF 51 */	bl __dt__Q26JDrama8TNameRefFv
lbl_802478B0:
/* 802478B0 002447F0  7F E0 07 35 */	extsh. r0, r31
/* 802478B4 002447F4  40 81 00 0C */	ble lbl_802478C0
/* 802478B8 002447F8  7F C3 F3 78 */	mr r3, r30
/* 802478BC 002447FC  4B DC 51 F5 */	bl __dl__FPv
lbl_802478C0:
/* 802478C0 00244800  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802478C4 00244804  7F C3 F3 78 */	mr r3, r30
/* 802478C8 00244808  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 802478CC 0024480C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 802478D0 00244810  7C 08 03 A6 */	mtlr r0
/* 802478D4 00244814  38 21 00 18 */	addi r1, r1, 0x18
/* 802478D8 00244818  4E 80 00 20 */	blr 

.global checkRumbleOff__12TMovieRumbleFv
checkRumbleOff__12TMovieRumbleFv:
/* 802478DC 0024481C  7C 08 02 A6 */	mflr r0
/* 802478E0 00244820  90 01 00 04 */	stw r0, 4(r1)
/* 802478E4 00244824  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 802478E8 00244828  93 E1 00 44 */	stw r31, 0x44(r1)
/* 802478EC 0024482C  7C 7F 1B 78 */	mr r31, r3
/* 802478F0 00244830  93 C1 00 40 */	stw r30, 0x40(r1)
/* 802478F4 00244834  93 A1 00 3C */	stw r29, 0x3c(r1)
/* 802478F8 00244838  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802478FC 0024483C  2C 00 FF FF */	cmpwi r0, -1
/* 80247900 00244840  41 82 00 CC */	beq lbl_802479CC
/* 80247904 00244844  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80247908 00244848  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8024790C 0024484C  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80247910 00244850  7C 04 00 00 */	cmpw r4, r0
/* 80247914 00244854  41 81 00 B8 */	bgt lbl_802479CC
/* 80247918 00244858  80 6D 97 88 */	lwz r3, SMSRumbleMgr-_SDA_BASE_(r13)
/* 8024791C 0024485C  4B E8 80 21 */	bl stop__9RumbleMgrFv
/* 80247920 00244860  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80247924 00244864  38 80 00 00 */	li r4, 0
/* 80247928 00244868  38 03 00 01 */	addi r0, r3, 1
/* 8024792C 0024486C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80247930 00244870  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80247934 00244874  83 BF 00 18 */	lwz r29, 0x18(r31)
/* 80247938 00244878  28 03 00 00 */	cmplwi r3, 0
/* 8024793C 0024487C  3B C3 00 00 */	addi r30, r3, 0
/* 80247940 00244880  41 82 00 10 */	beq lbl_80247950
/* 80247944 00244884  2C 1D 00 00 */	cmpwi r29, 0
/* 80247948 00244888  41 80 00 08 */	blt lbl_80247950
/* 8024794C 0024488C  38 80 00 01 */	li r4, 1
lbl_80247950:
/* 80247950 00244890  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80247954 00244894  41 82 00 68 */	beq lbl_802479BC
/* 80247958 00244898  80 63 00 04 */	lwz r3, 4(r3)
/* 8024795C 0024489C  80 03 00 00 */	lwz r0, 0(r3)
/* 80247960 002448A0  7C 1D 00 00 */	cmpw r29, r0
/* 80247964 002448A4  40 80 00 58 */	bge lbl_802479BC
/* 80247968 002448A8  3C 60 80 39 */	lis r3, $$21578@ha
/* 8024796C 002448AC  38 A3 48 34 */	addi r5, r3, $$21578@l
/* 80247970 002448B0  38 7E 00 00 */	addi r3, r30, 0
/* 80247974 002448B4  38 9D 00 00 */	addi r4, r29, 0
/* 80247978 002448B8  38 DF 00 1C */	addi r6, r31, 0x1c
/* 8024797C 002448BC  4B E8 A7 ED */	bl GetValue__Q24Koga8ToolDataCFiPCcRl
/* 80247980 002448C0  3C 60 80 39 */	lis r3, $$21579@ha
/* 80247984 002448C4  38 A3 48 40 */	addi r5, r3, $$21579@l
/* 80247988 002448C8  38 7E 00 00 */	addi r3, r30, 0
/* 8024798C 002448CC  38 9D 00 00 */	addi r4, r29, 0
/* 80247990 002448D0  38 DF 00 20 */	addi r6, r31, 0x20
/* 80247994 002448D4  4B E8 A7 D5 */	bl GetValue__Q24Koga8ToolDataCFiPCcRl
/* 80247998 002448D8  38 7E 00 00 */	addi r3, r30, 0
/* 8024799C 002448DC  38 9D 00 00 */	addi r4, r29, 0
/* 802479A0 002448E0  38 C1 00 2C */	addi r6, r1, 0x2c
/* 802479A4 002448E4  38 A2 DC 18 */	addi r5, r2, $$21580-_SDA2_BASE_
/* 802479A8 002448E8  4B E8 A6 F5 */	bl GetValue__Q24Koga8ToolDataCFiPCcRPCc
/* 802479AC 002448EC  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 802479B0 002448F0  4B E8 8F 65 */	bl getIndex__10RumbleTypeFPc
/* 802479B4 002448F4  90 7F 00 24 */	stw r3, 0x24(r31)
/* 802479B8 002448F8  48 00 00 0C */	b lbl_802479C4
lbl_802479BC:
/* 802479BC 002448FC  38 00 FF FF */	li r0, -1
/* 802479C0 00244900  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_802479C4:
/* 802479C4 00244904  38 00 00 00 */	li r0, 0
/* 802479C8 00244908  98 1F 00 28 */	stb r0, 0x28(r31)
lbl_802479CC:
/* 802479CC 0024490C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 802479D0 00244910  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 802479D4 00244914  83 C1 00 40 */	lwz r30, 0x40(r1)
/* 802479D8 00244918  7C 08 03 A6 */	mtlr r0
/* 802479DC 0024491C  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 802479E0 00244920  38 21 00 48 */	addi r1, r1, 0x48
/* 802479E4 00244924  4E 80 00 20 */	blr 

.global perform__12TMovieRumbleFUlPQ26JDrama9TGraphics
perform__12TMovieRumbleFUlPQ26JDrama9TGraphics:
/* 802479E8 00244928  7C 08 02 A6 */	mflr r0
/* 802479EC 0024492C  90 01 00 04 */	stw r0, 4(r1)
/* 802479F0 00244930  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 802479F4 00244934  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802479F8 00244938  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802479FC 0024493C  3B E3 00 00 */	addi r31, r3, 0
/* 80247A00 00244940  41 82 00 54 */	beq lbl_80247A54
/* 80247A04 00244944  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 80247A08 00244948  28 00 00 00 */	cmplwi r0, 0
/* 80247A0C 0024494C  41 82 00 10 */	beq lbl_80247A1C
/* 80247A10 00244950  7F E3 FB 78 */	mr r3, r31
/* 80247A14 00244954  4B FF FE C9 */	bl checkRumbleOff__12TMovieRumbleFv
/* 80247A18 00244958  48 00 00 3C */	b lbl_80247A54
lbl_80247A1C:
/* 80247A1C 0024495C  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80247A20 00244960  2C 04 FF FF */	cmpwi r4, -1
/* 80247A24 00244964  41 82 00 30 */	beq lbl_80247A54
/* 80247A28 00244968  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80247A2C 0024496C  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 80247A30 00244970  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80247A34 00244974  7C 05 00 00 */	cmpw r5, r0
/* 80247A38 00244978  41 81 00 1C */	bgt lbl_80247A54
/* 80247A3C 0024497C  80 6D 97 88 */	lwz r3, SMSRumbleMgr-_SDA_BASE_(r13)
/* 80247A40 00244980  38 A0 FF FF */	li r5, -1
/* 80247A44 00244984  38 C0 00 00 */	li r6, 0
/* 80247A48 00244988  4B E8 80 95 */	bl start__9RumbleMgrFiiPf
/* 80247A4C 0024498C  38 00 00 01 */	li r0, 1
/* 80247A50 00244990  98 1F 00 28 */	stb r0, 0x28(r31)
lbl_80247A54:
/* 80247A54 00244994  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80247A58 00244998  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80247A5C 0024499C  38 21 00 30 */	addi r1, r1, 0x30
/* 80247A60 002449A0  7C 08 03 A6 */	mtlr r0
/* 80247A64 002449A4  4E 80 00 20 */	blr 

.global init__12TMovieRumbleFPCc
init__12TMovieRumbleFPCc:
/* 80247A68 002449A8  7C 08 02 A6 */	mflr r0
/* 80247A6C 002449AC  3C A0 80 39 */	lis r5, $$21490@ha
/* 80247A70 002449B0  90 01 00 04 */	stw r0, 4(r1)
/* 80247A74 002449B4  4C C6 31 82 */	crclr 6
/* 80247A78 002449B8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80247A7C 002449BC  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 80247A80 002449C0  3B E3 00 00 */	addi r31, r3, 0
/* 80247A84 002449C4  38 61 00 30 */	addi r3, r1, 0x30
/* 80247A88 002449C8  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 80247A8C 002449CC  3B C5 48 00 */	addi r30, r5, $$21490@l
/* 80247A90 002449D0  38 A4 00 00 */	addi r5, r4, 0
/* 80247A94 002449D4  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 80247A98 002449D8  38 9E 00 20 */	addi r4, r30, 0x20
/* 80247A9C 002449DC  93 81 00 B0 */	stw r28, 0xb0(r1)
/* 80247AA0 002449E0  4B E3 C5 51 */	bl sprintf
/* 80247AA4 002449E4  38 61 00 30 */	addi r3, r1, 0x30
/* 80247AA8 002449E8  38 80 00 2E */	li r4, 0x2e
/* 80247AAC 002449EC  4B E3 E1 39 */	bl strrchr
/* 80247AB0 002449F0  38 82 DC 10 */	addi r4, r2, $$21558-_SDA2_BASE_
/* 80247AB4 002449F4  4B E3 E3 3D */	bl strcpy
/* 80247AB8 002449F8  38 60 00 08 */	li r3, 8
/* 80247ABC 002449FC  4B DC 4D F5 */	bl __nw__FUl
/* 80247AC0 00244A00  7C 7C 1B 79 */	or. r28, r3, r3
/* 80247AC4 00244A04  41 82 00 0C */	beq lbl_80247AD0
/* 80247AC8 00244A08  7F 83 E3 78 */	mr r3, r28
/* 80247ACC 00244A0C  4B E8 A7 D1 */	bl __ct__Q24Koga8ToolDataFv
lbl_80247AD0:
/* 80247AD0 00244A10  93 9F 00 14 */	stw r28, 0x14(r31)
/* 80247AD4 00244A14  38 61 00 30 */	addi r3, r1, 0x30
/* 80247AD8 00244A18  4B DC 41 E5 */	bl getGlbResource__13JKRFileLoaderFPCc
/* 80247ADC 00244A1C  7C 60 1B 78 */	mr r0, r3
/* 80247AE0 00244A20  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80247AE4 00244A24  7C 04 03 78 */	mr r4, r0
/* 80247AE8 00244A28  4B E8 A7 4D */	bl Attach__Q24Koga8ToolDataFPCv
/* 80247AEC 00244A2C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80247AF0 00244A30  80 03 00 04 */	lwz r0, 4(r3)
/* 80247AF4 00244A34  28 00 00 00 */	cmplwi r0, 0
/* 80247AF8 00244A38  40 82 00 10 */	bne lbl_80247B08
/* 80247AFC 00244A3C  38 00 FF FF */	li r0, -1
/* 80247B00 00244A40  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80247B04 00244A44  48 00 00 0C */	b lbl_80247B10
lbl_80247B08:
/* 80247B08 00244A48  38 00 00 00 */	li r0, 0
/* 80247B0C 00244A4C  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80247B10:
/* 80247B10 00244A50  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80247B14 00244A54  38 00 00 00 */	li r0, 0
/* 80247B18 00244A58  83 9F 00 18 */	lwz r28, 0x18(r31)
/* 80247B1C 00244A5C  28 03 00 00 */	cmplwi r3, 0
/* 80247B20 00244A60  3B A3 00 00 */	addi r29, r3, 0
/* 80247B24 00244A64  41 82 00 10 */	beq lbl_80247B34
/* 80247B28 00244A68  2C 1C 00 00 */	cmpwi r28, 0
/* 80247B2C 00244A6C  41 80 00 08 */	blt lbl_80247B34
/* 80247B30 00244A70  38 00 00 01 */	li r0, 1
lbl_80247B34:
/* 80247B34 00244A74  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80247B38 00244A78  41 82 00 60 */	beq lbl_80247B98
/* 80247B3C 00244A7C  80 63 00 04 */	lwz r3, 4(r3)
/* 80247B40 00244A80  80 03 00 00 */	lwz r0, 0(r3)
/* 80247B44 00244A84  7C 1C 00 00 */	cmpw r28, r0
/* 80247B48 00244A88  40 80 00 50 */	bge lbl_80247B98
/* 80247B4C 00244A8C  38 7D 00 00 */	addi r3, r29, 0
/* 80247B50 00244A90  38 9C 00 00 */	addi r4, r28, 0
/* 80247B54 00244A94  38 BE 00 34 */	addi r5, r30, 0x34
/* 80247B58 00244A98  38 DF 00 1C */	addi r6, r31, 0x1c
/* 80247B5C 00244A9C  4B E8 A6 0D */	bl GetValue__Q24Koga8ToolDataCFiPCcRl
/* 80247B60 00244AA0  38 7D 00 00 */	addi r3, r29, 0
/* 80247B64 00244AA4  38 9C 00 00 */	addi r4, r28, 0
/* 80247B68 00244AA8  38 BE 00 40 */	addi r5, r30, 0x40
/* 80247B6C 00244AAC  38 DF 00 20 */	addi r6, r31, 0x20
/* 80247B70 00244AB0  4B E8 A5 F9 */	bl GetValue__Q24Koga8ToolDataCFiPCcRl
/* 80247B74 00244AB4  38 7D 00 00 */	addi r3, r29, 0
/* 80247B78 00244AB8  38 9C 00 00 */	addi r4, r28, 0
/* 80247B7C 00244ABC  38 C1 00 28 */	addi r6, r1, 0x28
/* 80247B80 00244AC0  38 A2 DC 18 */	addi r5, r2, $$21580-_SDA2_BASE_
/* 80247B84 00244AC4  4B E8 A5 19 */	bl GetValue__Q24Koga8ToolDataCFiPCcRPCc
/* 80247B88 00244AC8  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80247B8C 00244ACC  4B E8 8D 89 */	bl getIndex__10RumbleTypeFPc
/* 80247B90 00244AD0  90 7F 00 24 */	stw r3, 0x24(r31)
/* 80247B94 00244AD4  48 00 00 0C */	b lbl_80247BA0
lbl_80247B98:
/* 80247B98 00244AD8  38 00 FF FF */	li r0, -1
/* 80247B9C 00244ADC  90 1F 00 24 */	stw r0, 0x24(r31)
lbl_80247BA0:
/* 80247BA0 00244AE0  38 00 00 00 */	li r0, 0
/* 80247BA4 00244AE4  98 1F 00 28 */	stb r0, 0x28(r31)
/* 80247BA8 00244AE8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80247BAC 00244AEC  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 80247BB0 00244AF0  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 80247BB4 00244AF4  7C 08 03 A6 */	mtlr r0
/* 80247BB8 00244AF8  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 80247BBC 00244AFC  83 81 00 B0 */	lwz r28, 0xb0(r1)
/* 80247BC0 00244B00  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80247BC4 00244B04  4E 80 00 20 */	blr 

.global __ct__12TMovieRumbleFPC10TTHPRender
__ct__12TMovieRumbleFPC10TTHPRender:
/* 80247BC8 00244B08  7C 08 02 A6 */	mflr r0
/* 80247BCC 00244B0C  3C A0 80 3B */	lis r5, __vt__Q26JDrama8TNameRef@ha
/* 80247BD0 00244B10  90 01 00 04 */	stw r0, 4(r1)
/* 80247BD4 00244B14  38 05 A8 60 */	addi r0, r5, __vt__Q26JDrama8TNameRef@l
/* 80247BD8 00244B18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80247BDC 00244B1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80247BE0 00244B20  7C 9F 23 78 */	mr r31, r4
/* 80247BE4 00244B24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80247BE8 00244B28  3B C3 00 00 */	addi r30, r3, 0
/* 80247BEC 00244B2C  3C 60 80 39 */	lis r3, $$21681@ha
/* 80247BF0 00244B30  90 1E 00 00 */	stw r0, 0(r30)
/* 80247BF4 00244B34  38 63 48 4C */	addi r3, r3, $$21681@l
/* 80247BF8 00244B38  90 7E 00 04 */	stw r3, 4(r30)
/* 80247BFC 00244B3C  4B DF CA 91 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 80247C00 00244B40  B0 7E 00 08 */	sth r3, 8(r30)
/* 80247C04 00244B44  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 80247C08 00244B48  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 80247C0C 00244B4C  90 1E 00 00 */	stw r0, 0(r30)
/* 80247C10 00244B50  38 00 00 00 */	li r0, 0
/* 80247C14 00244B54  3C 60 80 3D */	lis r3, __vt__12TMovieRumble@ha
/* 80247C18 00244B58  B0 1E 00 0C */	sth r0, 0xc(r30)
/* 80247C1C 00244B5C  38 03 21 88 */	addi r0, r3, __vt__12TMovieRumble@l
/* 80247C20 00244B60  38 7E 00 00 */	addi r3, r30, 0
/* 80247C24 00244B64  90 1E 00 00 */	stw r0, 0(r30)
/* 80247C28 00244B68  93 FE 00 10 */	stw r31, 0x10(r30)
/* 80247C2C 00244B6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80247C30 00244B70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80247C34 00244B74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80247C38 00244B78  38 21 00 20 */	addi r1, r1, 0x20
/* 80247C3C 00244B7C  7C 08 03 A6 */	mtlr r0
/* 80247C40 00244B80  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$21490:
	.incbin "baserom.dol", 0x391800, 0xC
$$21526:
	.incbin "baserom.dol", 0x39180C, 0x14
$$21557:
	.incbin "baserom.dol", 0x391820, 0x14
$$21578:
	.incbin "baserom.dol", 0x391834, 0xC
$$21579:
	.incbin "baserom.dol", 0x391840, 0xC
$$21681:
	.incbin "baserom.dol", 0x39184C, 0xC

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__12TMovieRumble
__vt__12TMovieRumble:
	.incbin "baserom.dol", 0x3CF188, 0x28

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$21558:
	.incbin "baserom.dol", 0x3E9910, 0x8
$$21580:
	.incbin "baserom.dol", 0x3E9918, 0x8
