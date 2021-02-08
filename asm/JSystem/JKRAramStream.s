.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global create__13JKRAramStreamFl
create__13JKRAramStreamFl:
/* 8003A85C 0003779C  7C 08 02 A6 */	mflr r0
/* 8003A860 000377A0  90 01 00 04 */	stw r0, 4(r1)
/* 8003A864 000377A4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8003A868 000377A8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8003A86C 000377AC  3B E3 00 00 */	addi r31, r3, 0
/* 8003A870 000377B0  80 0D 8E A0 */	lwz r0, sAramStreamObject__13JKRAramStream-_SDA_BASE_(r13)
/* 8003A874 000377B4  28 00 00 00 */	cmplwi r0, 0
/* 8003A878 000377B8  40 82 00 38 */	bne lbl_8003A8B0
/* 8003A87C 000377BC  80 8D 8D 68 */	lwz r4, sSystemHeap__7JKRHeap-_SDA_BASE_(r13)
/* 8003A880 000377C0  38 60 00 60 */	li r3, 0x60
/* 8003A884 000377C4  38 A0 00 00 */	li r5, 0
/* 8003A888 000377C8  4B FD 20 BD */	bl __nw__FUlP7JKRHeapi
/* 8003A88C 000377CC  28 03 00 00 */	cmplwi r3, 0
/* 8003A890 000377D0  41 82 00 0C */	beq lbl_8003A89C
/* 8003A894 000377D4  7F E4 FB 78 */	mr r4, r31
/* 8003A898 000377D8  48 00 00 31 */	bl __ct__13JKRAramStreamFl
lbl_8003A89C:
/* 8003A89C 000377DC  90 6D 8E A0 */	stw r3, sAramStreamObject__13JKRAramStream-_SDA_BASE_(r13)
/* 8003A8A0 000377E0  38 60 00 00 */	li r3, 0
/* 8003A8A4 000377E4  38 80 00 00 */	li r4, 0
/* 8003A8A8 000377E8  38 A0 00 00 */	li r5, 0
/* 8003A8AC 000377EC  48 00 04 69 */	bl setTransBuffer__13JKRAramStreamFPUcUlP7JKRHeap
lbl_8003A8B0:
/* 8003A8B0 000377F0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8003A8B4 000377F4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8003A8B8 000377F8  38 21 00 18 */	addi r1, r1, 0x18
/* 8003A8BC 000377FC  80 6D 8E A0 */	lwz r3, sAramStreamObject__13JKRAramStream-_SDA_BASE_(r13)
/* 8003A8C0 00037800  7C 08 03 A6 */	mtlr r0
/* 8003A8C4 00037804  4E 80 00 20 */	blr 

.global __ct__13JKRAramStreamFl
__ct__13JKRAramStreamFl:
/* 8003A8C8 00037808  7C 08 02 A6 */	mflr r0
/* 8003A8CC 0003780C  7C 86 23 78 */	mr r6, r4
/* 8003A8D0 00037810  90 01 00 04 */	stw r0, 4(r1)
/* 8003A8D4 00037814  38 80 40 00 */	li r4, 0x4000
/* 8003A8D8 00037818  38 A0 00 10 */	li r5, 0x10
/* 8003A8DC 0003781C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8003A8E0 00037820  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8003A8E4 00037824  90 61 00 08 */	stw r3, 8(r1)
/* 8003A8E8 00037828  80 61 00 08 */	lwz r3, 8(r1)
/* 8003A8EC 0003782C  4B FD 36 D1 */	bl __ct__9JKRThreadFUlii
/* 8003A8F0 00037830  3C 60 80 3B */	lis r3, __vt__13JKRAramStream@ha
/* 8003A8F4 00037834  83 E1 00 08 */	lwz r31, 8(r1)
/* 8003A8F8 00037838  38 03 9E F8 */	addi r0, r3, __vt__13JKRAramStream@l
/* 8003A8FC 0003783C  90 1F 00 00 */	stw r0, 0(r31)
/* 8003A900 00037840  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 8003A904 00037844  48 05 8F 05 */	bl OSResumeThread
/* 8003A908 00037848  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8003A90C 0003784C  7F E3 FB 78 */	mr r3, r31
/* 8003A910 00037850  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8003A914 00037854  38 21 00 18 */	addi r1, r1, 0x18
/* 8003A918 00037858  7C 08 03 A6 */	mtlr r0
/* 8003A91C 0003785C  4E 80 00 20 */	blr 

.global __dt__13JKRAramStreamFv
__dt__13JKRAramStreamFv:
/* 8003A920 00037860  7C 08 02 A6 */	mflr r0
/* 8003A924 00037864  90 01 00 04 */	stw r0, 4(r1)
/* 8003A928 00037868  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8003A92C 0003786C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8003A930 00037870  3B E4 00 00 */	addi r31, r4, 0
/* 8003A934 00037874  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8003A938 00037878  7C 7E 1B 79 */	or. r30, r3, r3
/* 8003A93C 0003787C  41 82 00 2C */	beq lbl_8003A968
/* 8003A940 00037880  3C 60 80 3B */	lis r3, __vt__13JKRAramStream@ha
/* 8003A944 00037884  38 03 9E F8 */	addi r0, r3, __vt__13JKRAramStream@l
/* 8003A948 00037888  90 1E 00 00 */	stw r0, 0(r30)
/* 8003A94C 0003788C  38 7E 00 00 */	addi r3, r30, 0
/* 8003A950 00037890  38 80 00 00 */	li r4, 0
/* 8003A954 00037894  4B FD 37 99 */	bl __dt__9JKRThreadFv
/* 8003A958 00037898  7F E0 07 35 */	extsh. r0, r31
/* 8003A95C 0003789C  40 81 00 0C */	ble lbl_8003A968
/* 8003A960 000378A0  7F C3 F3 78 */	mr r3, r30
/* 8003A964 000378A4  4B FD 21 4D */	bl __dl__FPv
lbl_8003A968:
/* 8003A968 000378A8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8003A96C 000378AC  7F C3 F3 78 */	mr r3, r30
/* 8003A970 000378B0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8003A974 000378B4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8003A978 000378B8  7C 08 03 A6 */	mtlr r0
/* 8003A97C 000378BC  38 21 00 18 */	addi r1, r1, 0x18
/* 8003A980 000378C0  4E 80 00 20 */	blr 

.global run__13JKRAramStreamFv
run__13JKRAramStreamFv:
/* 8003A984 000378C4  7C 08 02 A6 */	mflr r0
/* 8003A988 000378C8  3C 60 80 3B */	lis r3, sMessageBuffer__13JKRAramStream@ha
/* 8003A98C 000378CC  90 01 00 04 */	stw r0, 4(r1)
/* 8003A990 000378D0  38 A0 00 04 */	li r5, 4
/* 8003A994 000378D4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8003A998 000378D8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8003A99C 000378DC  3B E3 9E C8 */	addi r31, r3, sMessageBuffer__13JKRAramStream@l
/* 8003A9A0 000378E0  38 9F 00 00 */	addi r4, r31, 0
/* 8003A9A4 000378E4  38 7F 00 10 */	addi r3, r31, 0x10
/* 8003A9A8 000378E8  48 05 60 A9 */	bl OSInitMessageQueue
lbl_8003A9AC:
/* 8003A9AC 000378EC  38 7F 00 10 */	addi r3, r31, 0x10
/* 8003A9B0 000378F0  38 81 00 0C */	addi r4, r1, 0xc
/* 8003A9B4 000378F4  38 A0 00 01 */	li r5, 1
/* 8003A9B8 000378F8  48 05 61 C1 */	bl OSReceiveMessage
/* 8003A9BC 000378FC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8003A9C0 00037900  80 03 00 00 */	lwz r0, 0(r3)
/* 8003A9C4 00037904  2C 00 00 02 */	cmpwi r0, 2
/* 8003A9C8 00037908  41 82 00 1C */	beq lbl_8003A9E4
/* 8003A9CC 0003790C  40 80 FF E0 */	bge lbl_8003A9AC
/* 8003A9D0 00037910  2C 00 00 01 */	cmpwi r0, 1
/* 8003A9D4 00037914  40 80 00 08 */	bge lbl_8003A9DC
/* 8003A9D8 00037918  4B FF FF D4 */	b lbl_8003A9AC
lbl_8003A9DC:
/* 8003A9DC 0003791C  48 00 00 11 */	bl readFromAram__13JKRAramStreamFv
/* 8003A9E0 00037920  4B FF FF CC */	b lbl_8003A9AC
lbl_8003A9E4:
/* 8003A9E4 00037924  48 00 00 11 */	bl writeToAram__13JKRAramStreamFP20JKRAramStreamCommand
/* 8003A9E8 00037928  4B FF FF C4 */	b lbl_8003A9AC

.global readFromAram__13JKRAramStreamFv
readFromAram__13JKRAramStreamFv:
/* 8003A9EC 0003792C  38 60 00 01 */	li r3, 1
/* 8003A9F0 00037930  4E 80 00 20 */	blr 

.global writeToAram__13JKRAramStreamFP20JKRAramStreamCommand
writeToAram__13JKRAramStreamFP20JKRAramStreamCommand:
/* 8003A9F4 00037934  7C 08 02 A6 */	mflr r0
/* 8003A9F8 00037938  90 01 00 04 */	stw r0, 4(r1)
/* 8003A9FC 0003793C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003AA00 00037940  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 8003AA04 00037944  7C 7A 1B 78 */	mr r26, r3
/* 8003AA08 00037948  3B A0 00 00 */	li r29, 0
/* 8003AA0C 0003794C  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8003AA10 00037950  83 E3 00 08 */	lwz r31, 8(r3)
/* 8003AA14 00037954  28 00 00 00 */	cmplwi r0, 0
/* 8003AA18 00037958  83 C3 00 14 */	lwz r30, 0x14(r3)
/* 8003AA1C 0003795C  7C 18 03 78 */	mr r24, r0
/* 8003AA20 00037960  83 83 00 04 */	lwz r28, 4(r3)
/* 8003AA24 00037964  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8003AA28 00037968  83 63 00 20 */	lwz r27, 0x20(r3)
/* 8003AA2C 0003796C  41 82 00 2C */	beq lbl_8003AA58
/* 8003AA30 00037970  28 00 00 00 */	cmplwi r0, 0
/* 8003AA34 00037974  40 82 00 10 */	bne lbl_8003AA44
/* 8003AA38 00037978  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 8003AA3C 0003797C  3B 23 80 00 */	addi r25, r3, 0x00008000@l
/* 8003AA40 00037980  48 00 00 08 */	b lbl_8003AA48
lbl_8003AA44:
/* 8003AA44 00037984  7C 19 03 78 */	mr r25, r0
lbl_8003AA48:
/* 8003AA48 00037988  93 3A 00 1C */	stw r25, 0x1c(r26)
/* 8003AA4C 0003798C  38 00 00 00 */	li r0, 0
/* 8003AA50 00037990  98 1A 00 24 */	stb r0, 0x24(r26)
/* 8003AA54 00037994  48 00 00 64 */	b lbl_8003AAB8
lbl_8003AA58:
/* 8003AA58 00037998  28 00 00 00 */	cmplwi r0, 0
/* 8003AA5C 0003799C  40 82 00 10 */	bne lbl_8003AA6C
/* 8003AA60 000379A0  3C 60 00 01 */	lis r3, 0x00008000@ha
/* 8003AA64 000379A4  3B 23 80 00 */	addi r25, r3, 0x00008000@l
/* 8003AA68 000379A8  48 00 00 08 */	b lbl_8003AA70
lbl_8003AA6C:
/* 8003AA6C 000379AC  7C 19 03 78 */	mr r25, r0
lbl_8003AA70:
/* 8003AA70 000379B0  28 1B 00 00 */	cmplwi r27, 0
/* 8003AA74 000379B4  41 82 00 20 */	beq lbl_8003AA94
/* 8003AA78 000379B8  38 79 00 00 */	addi r3, r25, 0
/* 8003AA7C 000379BC  38 BB 00 00 */	addi r5, r27, 0
/* 8003AA80 000379C0  38 80 FF E0 */	li r4, -32
/* 8003AA84 000379C4  4B FD 19 C9 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 8003AA88 000379C8  90 7A 00 18 */	stw r3, 0x18(r26)
/* 8003AA8C 000379CC  7C 78 1B 78 */	mr r24, r3
/* 8003AA90 000379D0  48 00 00 1C */	b lbl_8003AAAC
lbl_8003AA94:
/* 8003AA94 000379D4  38 79 00 00 */	addi r3, r25, 0
/* 8003AA98 000379D8  38 80 FF E0 */	li r4, -32
/* 8003AA9C 000379DC  38 A0 00 00 */	li r5, 0
/* 8003AAA0 000379E0  4B FD 19 AD */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 8003AAA4 000379E4  90 7A 00 18 */	stw r3, 0x18(r26)
/* 8003AAA8 000379E8  7C 78 1B 78 */	mr r24, r3
lbl_8003AAAC:
/* 8003AAAC 000379EC  93 3A 00 1C */	stw r25, 0x1c(r26)
/* 8003AAB0 000379F0  38 00 00 01 */	li r0, 1
/* 8003AAB4 000379F4  98 1A 00 24 */	stb r0, 0x24(r26)
lbl_8003AAB8:
/* 8003AAB8 000379F8  28 18 00 00 */	cmplwi r24, 0
/* 8003AABC 000379FC  40 82 00 50 */	bne lbl_8003AB0C
/* 8003AAC0 00037A00  28 1B 00 00 */	cmplwi r27, 0
/* 8003AAC4 00037A04  40 82 00 1C */	bne lbl_8003AAE0
/* 8003AAC8 00037A08  80 6D 8D 6C */	lwz r3, sCurrentHeap__7JKRHeap-_SDA_BASE_(r13)
/* 8003AACC 00037A0C  81 83 00 00 */	lwz r12, 0(r3)
/* 8003AAD0 00037A10  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8003AAD4 00037A14  7D 88 03 A6 */	mtlr r12
/* 8003AAD8 00037A18  4E 80 00 21 */	blrl 
/* 8003AADC 00037A1C  48 00 00 18 */	b lbl_8003AAF4
lbl_8003AAE0:
/* 8003AAE0 00037A20  7F 63 DB 78 */	mr r3, r27
/* 8003AAE4 00037A24  81 9B 00 00 */	lwz r12, 0(r27)
/* 8003AAE8 00037A28  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8003AAEC 00037A2C  7D 88 03 A6 */	mtlr r12
/* 8003AAF0 00037A30  4E 80 00 21 */	blrl 
lbl_8003AAF4:
/* 8003AAF4 00037A34  3C 60 80 37 */	lis r3, $$2110@ha
/* 8003AAF8 00037A38  4C C6 31 82 */	crclr 6
/* 8003AAFC 00037A3C  38 63 0D A8 */	addi r3, r3, $$2110@l
/* 8003AB00 00037A40  38 80 00 A9 */	li r4, 0xa9
/* 8003AB04 00037A44  38 A2 83 10 */	addi r5, r2, $$2111-_SDA2_BASE_
/* 8003AB08 00037A48  48 05 44 DD */	bl OSPanic
lbl_8003AB0C:
/* 8003AB0C 00037A4C  28 18 00 00 */	cmplwi r24, 0
/* 8003AB10 00037A50  41 82 00 8C */	beq lbl_8003AB9C
/* 8003AB14 00037A54  80 7A 00 10 */	lwz r3, 0x10(r26)
/* 8003AB18 00037A58  38 9E 00 00 */	addi r4, r30, 0
/* 8003AB1C 00037A5C  38 A0 00 00 */	li r5, 0
/* 8003AB20 00037A60  4B FD 3E ED */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 8003AB24 00037A64  48 00 00 50 */	b lbl_8003AB74
lbl_8003AB28:
/* 8003AB28 00037A68  7C 1F C8 40 */	cmplw r31, r25
/* 8003AB2C 00037A6C  40 81 00 0C */	ble lbl_8003AB38
/* 8003AB30 00037A70  7F 3B CB 78 */	mr r27, r25
/* 8003AB34 00037A74  48 00 00 08 */	b lbl_8003AB3C
lbl_8003AB38:
/* 8003AB38 00037A78  7F FB FB 78 */	mr r27, r31
lbl_8003AB3C:
/* 8003AB3C 00037A7C  80 7A 00 10 */	lwz r3, 0x10(r26)
/* 8003AB40 00037A80  38 98 00 00 */	addi r4, r24, 0
/* 8003AB44 00037A84  38 BB 00 00 */	addi r5, r27, 0
/* 8003AB48 00037A88  4B FD 3A 49 */	bl read__14JSUInputStreamFPvl
/* 8003AB4C 00037A8C  38 98 00 00 */	addi r4, r24, 0
/* 8003AB50 00037A90  38 BC 00 00 */	addi r5, r28, 0
/* 8003AB54 00037A94  38 DB 00 00 */	addi r6, r27, 0
/* 8003AB58 00037A98  38 60 00 00 */	li r3, 0
/* 8003AB5C 00037A9C  38 E0 00 00 */	li r7, 0
/* 8003AB60 00037AA0  4B FF F9 C5 */	bl orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
/* 8003AB64 00037AA4  7F FB F8 50 */	subf r31, r27, r31
/* 8003AB68 00037AA8  7F DE DA 14 */	add r30, r30, r27
/* 8003AB6C 00037AAC  7F BD DA 14 */	add r29, r29, r27
/* 8003AB70 00037AB0  7F 9C DA 14 */	add r28, r28, r27
lbl_8003AB74:
/* 8003AB74 00037AB4  28 1F 00 00 */	cmplwi r31, 0
/* 8003AB78 00037AB8  40 82 FF B0 */	bne lbl_8003AB28
/* 8003AB7C 00037ABC  88 1A 00 24 */	lbz r0, 0x24(r26)
/* 8003AB80 00037AC0  28 00 00 00 */	cmplwi r0, 0
/* 8003AB84 00037AC4  41 82 00 18 */	beq lbl_8003AB9C
/* 8003AB88 00037AC8  38 78 00 00 */	addi r3, r24, 0
/* 8003AB8C 00037ACC  38 80 00 00 */	li r4, 0
/* 8003AB90 00037AD0  4B FD 19 35 */	bl free__7JKRHeapFPvP7JKRHeap
/* 8003AB94 00037AD4  38 00 00 00 */	li r0, 0
/* 8003AB98 00037AD8  98 1A 00 24 */	stb r0, 0x24(r26)
lbl_8003AB9C:
/* 8003AB9C 00037ADC  38 9D 00 00 */	addi r4, r29, 0
/* 8003ABA0 00037AE0  38 7A 00 2C */	addi r3, r26, 0x2c
/* 8003ABA4 00037AE4  38 A0 00 00 */	li r5, 0
/* 8003ABA8 00037AE8  48 05 5F 09 */	bl OSSendMessage
/* 8003ABAC 00037AEC  7F A3 EB 78 */	mr r3, r29
/* 8003ABB0 00037AF0  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 8003ABB4 00037AF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003ABB8 00037AF8  38 21 00 30 */	addi r1, r1, 0x30
/* 8003ABBC 00037AFC  7C 08 03 A6 */	mtlr r0
/* 8003ABC0 00037B00  4E 80 00 20 */	blr 

.global write_StreamToAram_Async__13JKRAramStreamFP18JSUFileInputStreamUlUlUl
write_StreamToAram_Async__13JKRAramStreamFP18JSUFileInputStreamUlUlUl:
/* 8003ABC4 00037B04  7C 08 02 A6 */	mflr r0
/* 8003ABC8 00037B08  90 01 00 04 */	stw r0, 4(r1)
/* 8003ABCC 00037B0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003ABD0 00037B10  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8003ABD4 00037B14  3B 63 00 00 */	addi r27, r3, 0
/* 8003ABD8 00037B18  3B A5 00 00 */	addi r29, r5, 0
/* 8003ABDC 00037B1C  3B 84 00 00 */	addi r28, r4, 0
/* 8003ABE0 00037B20  3B C6 00 00 */	addi r30, r6, 0
/* 8003ABE4 00037B24  38 60 00 58 */	li r3, 0x58
/* 8003ABE8 00037B28  38 A0 FF FC */	li r5, -4
/* 8003ABEC 00037B2C  80 0D 8D 68 */	lwz r0, sSystemHeap__7JKRHeap-_SDA_BASE_(r13)
/* 8003ABF0 00037B30  7C 04 03 78 */	mr r4, r0
/* 8003ABF4 00037B34  4B FD 1D 51 */	bl __nw__FUlP7JKRHeapi
/* 8003ABF8 00037B38  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003ABFC 00037B3C  41 82 00 10 */	beq lbl_8003AC0C
/* 8003AC00 00037B40  7F E3 FB 78 */	mr r3, r31
/* 8003AC04 00037B44  48 00 01 65 */	bl __ct__20JKRAramStreamCommandFv
/* 8003AC08 00037B48  7C 7F 1B 78 */	mr r31, r3
lbl_8003AC0C:
/* 8003AC0C 00037B4C  38 00 00 02 */	li r0, 2
/* 8003AC10 00037B50  90 1F 00 00 */	stw r0, 0(r31)
/* 8003AC14 00037B54  38 00 00 00 */	li r0, 0
/* 8003AC18 00037B58  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8003AC1C 00037B5C  93 9F 00 04 */	stw r28, 4(r31)
/* 8003AC20 00037B60  38 9F 00 4C */	addi r4, r31, 0x4c
/* 8003AC24 00037B64  38 A0 00 01 */	li r5, 1
/* 8003AC28 00037B68  93 BF 00 08 */	stw r29, 8(r31)
/* 8003AC2C 00037B6C  93 7F 00 10 */	stw r27, 0x10(r31)
/* 8003AC30 00037B70  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8003AC34 00037B74  93 DF 00 14 */	stw r30, 0x14(r31)
/* 8003AC38 00037B78  80 0D 8E A4 */	lwz r0, transBuffer__13JKRAramStream-_SDA_BASE_(r13)
/* 8003AC3C 00037B7C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8003AC40 00037B80  80 0D 8E AC */	lwz r0, transHeap__13JKRAramStream-_SDA_BASE_(r13)
/* 8003AC44 00037B84  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8003AC48 00037B88  80 0D 8E A8 */	lwz r0, transSize__13JKRAramStream-_SDA_BASE_(r13)
/* 8003AC4C 00037B8C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8003AC50 00037B90  48 05 5E 01 */	bl OSInitMessageQueue
/* 8003AC54 00037B94  3C 60 80 3B */	lis r3, sMessageQueue__13JKRAramStream@ha
/* 8003AC58 00037B98  38 63 9E D8 */	addi r3, r3, sMessageQueue__13JKRAramStream@l
/* 8003AC5C 00037B9C  38 9F 00 00 */	addi r4, r31, 0
/* 8003AC60 00037BA0  38 A0 00 01 */	li r5, 1
/* 8003AC64 00037BA4  48 05 5E 4D */	bl OSSendMessage
/* 8003AC68 00037BA8  7F E3 FB 78 */	mr r3, r31
/* 8003AC6C 00037BAC  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8003AC70 00037BB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003AC74 00037BB4  38 21 00 30 */	addi r1, r1, 0x30
/* 8003AC78 00037BB8  7C 08 03 A6 */	mtlr r0
/* 8003AC7C 00037BBC  4E 80 00 20 */	blr 

.global sync__13JKRAramStreamFP20JKRAramStreamCommandi
sync__13JKRAramStreamFP20JKRAramStreamCommandi:
/* 8003AC80 00037BC0  7C 08 02 A6 */	mflr r0
/* 8003AC84 00037BC4  2C 04 00 00 */	cmpwi r4, 0
/* 8003AC88 00037BC8  90 01 00 04 */	stw r0, 4(r1)
/* 8003AC8C 00037BCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003AC90 00037BD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003AC94 00037BD4  3B E3 00 00 */	addi r31, r3, 0
/* 8003AC98 00037BD8  40 82 00 30 */	bne lbl_8003ACC8
/* 8003AC9C 00037BDC  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8003ACA0 00037BE0  38 81 00 10 */	addi r4, r1, 0x10
/* 8003ACA4 00037BE4  38 A0 00 01 */	li r5, 1
/* 8003ACA8 00037BE8  48 05 5E D1 */	bl OSReceiveMessage
/* 8003ACAC 00037BEC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8003ACB0 00037BF0  28 00 00 00 */	cmplwi r0, 0
/* 8003ACB4 00037BF4  40 82 00 0C */	bne lbl_8003ACC0
/* 8003ACB8 00037BF8  38 60 00 00 */	li r3, 0
/* 8003ACBC 00037BFC  48 00 00 44 */	b lbl_8003AD00
lbl_8003ACC0:
/* 8003ACC0 00037C00  7F E3 FB 78 */	mr r3, r31
/* 8003ACC4 00037C04  48 00 00 3C */	b lbl_8003AD00
lbl_8003ACC8:
/* 8003ACC8 00037C08  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8003ACCC 00037C0C  38 81 00 10 */	addi r4, r1, 0x10
/* 8003ACD0 00037C10  38 A0 00 00 */	li r5, 0
/* 8003ACD4 00037C14  48 05 5E A5 */	bl OSReceiveMessage
/* 8003ACD8 00037C18  2C 03 00 00 */	cmpwi r3, 0
/* 8003ACDC 00037C1C  40 82 00 0C */	bne lbl_8003ACE8
/* 8003ACE0 00037C20  38 60 00 00 */	li r3, 0
/* 8003ACE4 00037C24  48 00 00 1C */	b lbl_8003AD00
lbl_8003ACE8:
/* 8003ACE8 00037C28  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8003ACEC 00037C2C  28 00 00 00 */	cmplwi r0, 0
/* 8003ACF0 00037C30  40 82 00 0C */	bne lbl_8003ACFC
/* 8003ACF4 00037C34  38 60 00 00 */	li r3, 0
/* 8003ACF8 00037C38  48 00 00 08 */	b lbl_8003AD00
lbl_8003ACFC:
/* 8003ACFC 00037C3C  7F E3 FB 78 */	mr r3, r31
lbl_8003AD00:
/* 8003AD00 00037C40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003AD04 00037C44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003AD08 00037C48  38 21 00 20 */	addi r1, r1, 0x20
/* 8003AD0C 00037C4C  7C 08 03 A6 */	mtlr r0
/* 8003AD10 00037C50  4E 80 00 20 */	blr 

.global setTransBuffer__13JKRAramStreamFPUcUlP7JKRHeap
setTransBuffer__13JKRAramStreamFPUcUlP7JKRHeap:
/* 8003AD14 00037C54  3C C0 00 01 */	lis r6, 0x00008000@ha
/* 8003AD18 00037C58  38 E0 00 00 */	li r7, 0
/* 8003AD1C 00037C5C  38 06 80 00 */	addi r0, r6, 0x00008000@l
/* 8003AD20 00037C60  90 ED 8E A4 */	stw r7, transBuffer__13JKRAramStream-_SDA_BASE_(r13)
/* 8003AD24 00037C64  28 03 00 00 */	cmplwi r3, 0
/* 8003AD28 00037C68  90 0D 8E A8 */	stw r0, transSize__13JKRAramStream-_SDA_BASE_(r13)
/* 8003AD2C 00037C6C  90 ED 8E AC */	stw r7, transHeap__13JKRAramStream-_SDA_BASE_(r13)
/* 8003AD30 00037C70  41 82 00 10 */	beq lbl_8003AD40
/* 8003AD34 00037C74  38 03 00 1F */	addi r0, r3, 0x1f
/* 8003AD38 00037C78  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8003AD3C 00037C7C  90 0D 8E A4 */	stw r0, transBuffer__13JKRAramStream-_SDA_BASE_(r13)
lbl_8003AD40:
/* 8003AD40 00037C80  28 04 00 00 */	cmplwi r4, 0
/* 8003AD44 00037C84  41 82 00 0C */	beq lbl_8003AD50
/* 8003AD48 00037C88  54 80 00 34 */	rlwinm r0, r4, 0, 0, 0x1a
/* 8003AD4C 00037C8C  90 0D 8E A8 */	stw r0, transSize__13JKRAramStream-_SDA_BASE_(r13)
lbl_8003AD50:
/* 8003AD50 00037C90  28 05 00 00 */	cmplwi r5, 0
/* 8003AD54 00037C94  4D 82 00 20 */	beqlr 
/* 8003AD58 00037C98  28 03 00 00 */	cmplwi r3, 0
/* 8003AD5C 00037C9C  4C 82 00 20 */	bnelr 
/* 8003AD60 00037CA0  90 AD 8E AC */	stw r5, transHeap__13JKRAramStream-_SDA_BASE_(r13)
/* 8003AD64 00037CA4  4E 80 00 20 */	blr 

.global __ct__20JKRAramStreamCommandFv
__ct__20JKRAramStreamCommandFv:
/* 8003AD68 00037CA8  38 00 00 00 */	li r0, 0
/* 8003AD6C 00037CAC  98 03 00 24 */	stb r0, 0x24(r3)
/* 8003AD70 00037CB0  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$2110:
	.incbin "baserom.dol", 0x36DDA8, 0x18

.section .data, "wa"  # 0x803A8380 - 0x803E6000
sMessageBuffer__13JKRAramStream:
	.incbin "baserom.dol", 0x3A6EC8, 0x10
sMessageQueue__13JKRAramStream:
	.incbin "baserom.dol", 0x3A6ED8, 0x20
.global __vt__13JKRAramStream
__vt__13JKRAramStream:
	.incbin "baserom.dol", 0x3A6EF8, 0x10

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2111:
	.incbin "baserom.dol", 0x3E4010, 0x8

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
sAramStreamObject__13JKRAramStream:
	.skip 0x4
transBuffer__13JKRAramStream:
	.skip 0x4
transSize__13JKRAramStream:
	.skip 0x4
transHeap__13JKRAramStream:
	.skip 0x4
