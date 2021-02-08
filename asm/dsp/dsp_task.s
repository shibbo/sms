.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __DSP_exec_task
__DSP_exec_task:
/* 8009E7EC 0009B72C  7C 08 02 A6 */	mflr r0
/* 8009E7F0 0009B730  90 01 00 04 */	stw r0, 4(r1)
/* 8009E7F4 0009B734  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8009E7F8 0009B738  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8009E7FC 0009B73C  3B E4 00 00 */	addi r31, r4, 0
/* 8009E800 0009B740  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8009E804 0009B744  7C 7E 1B 79 */	or. r30, r3, r3
/* 8009E808 0009B748  41 82 00 44 */	beq lbl_8009E84C
/* 8009E80C 0009B74C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8009E810 0009B750  4B FF FE 81 */	bl DSPSendMailToDSP
lbl_8009E814:
/* 8009E814 0009B754  4B FF FE 45 */	bl DSPCheckMailToDSP
/* 8009E818 0009B758  28 03 00 00 */	cmplwi r3, 0
/* 8009E81C 0009B75C  40 82 FF F8 */	bne lbl_8009E814
/* 8009E820 0009B760  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8009E824 0009B764  4B FF FE 6D */	bl DSPSendMailToDSP
lbl_8009E828:
/* 8009E828 0009B768  4B FF FE 31 */	bl DSPCheckMailToDSP
/* 8009E82C 0009B76C  28 03 00 00 */	cmplwi r3, 0
/* 8009E830 0009B770  40 82 FF F8 */	bne lbl_8009E828
/* 8009E834 0009B774  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8009E838 0009B778  4B FF FE 59 */	bl DSPSendMailToDSP
lbl_8009E83C:
/* 8009E83C 0009B77C  4B FF FE 1D */	bl DSPCheckMailToDSP
/* 8009E840 0009B780  28 03 00 00 */	cmplwi r3, 0
/* 8009E844 0009B784  40 82 FF F8 */	bne lbl_8009E83C
/* 8009E848 0009B788  48 00 00 40 */	b lbl_8009E888
lbl_8009E84C:
/* 8009E84C 0009B78C  38 60 00 00 */	li r3, 0
/* 8009E850 0009B790  4B FF FE 41 */	bl DSPSendMailToDSP
lbl_8009E854:
/* 8009E854 0009B794  4B FF FE 05 */	bl DSPCheckMailToDSP
/* 8009E858 0009B798  28 03 00 00 */	cmplwi r3, 0
/* 8009E85C 0009B79C  40 82 FF F8 */	bne lbl_8009E854
/* 8009E860 0009B7A0  38 60 00 00 */	li r3, 0
/* 8009E864 0009B7A4  4B FF FE 2D */	bl DSPSendMailToDSP
lbl_8009E868:
/* 8009E868 0009B7A8  4B FF FD F1 */	bl DSPCheckMailToDSP
/* 8009E86C 0009B7AC  28 03 00 00 */	cmplwi r3, 0
/* 8009E870 0009B7B0  40 82 FF F8 */	bne lbl_8009E868
/* 8009E874 0009B7B4  38 60 00 00 */	li r3, 0
/* 8009E878 0009B7B8  4B FF FE 19 */	bl DSPSendMailToDSP
lbl_8009E87C:
/* 8009E87C 0009B7BC  4B FF FD DD */	bl DSPCheckMailToDSP
/* 8009E880 0009B7C0  28 03 00 00 */	cmplwi r3, 0
/* 8009E884 0009B7C4  40 82 FF F8 */	bne lbl_8009E87C
lbl_8009E888:
/* 8009E888 0009B7C8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8009E88C 0009B7CC  4B FF FE 05 */	bl DSPSendMailToDSP
lbl_8009E890:
/* 8009E890 0009B7D0  4B FF FD C9 */	bl DSPCheckMailToDSP
/* 8009E894 0009B7D4  28 03 00 00 */	cmplwi r3, 0
/* 8009E898 0009B7D8  40 82 FF F8 */	bne lbl_8009E890
/* 8009E89C 0009B7DC  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8009E8A0 0009B7E0  4B FF FD F1 */	bl DSPSendMailToDSP
lbl_8009E8A4:
/* 8009E8A4 0009B7E4  4B FF FD B5 */	bl DSPCheckMailToDSP
/* 8009E8A8 0009B7E8  28 03 00 00 */	cmplwi r3, 0
/* 8009E8AC 0009B7EC  40 82 FF F8 */	bne lbl_8009E8A4
/* 8009E8B0 0009B7F0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8009E8B4 0009B7F4  4B FF FD DD */	bl DSPSendMailToDSP
lbl_8009E8B8:
/* 8009E8B8 0009B7F8  4B FF FD A1 */	bl DSPCheckMailToDSP
/* 8009E8BC 0009B7FC  28 03 00 00 */	cmplwi r3, 0
/* 8009E8C0 0009B800  40 82 FF F8 */	bne lbl_8009E8B8
/* 8009E8C4 0009B804  80 1F 00 00 */	lwz r0, 0(r31)
/* 8009E8C8 0009B808  28 00 00 00 */	cmplwi r0, 0
/* 8009E8CC 0009B80C  40 82 00 58 */	bne lbl_8009E924
/* 8009E8D0 0009B810  A0 7F 00 24 */	lhz r3, 0x24(r31)
/* 8009E8D4 0009B814  4B FF FD BD */	bl DSPSendMailToDSP
lbl_8009E8D8:
/* 8009E8D8 0009B818  4B FF FD 81 */	bl DSPCheckMailToDSP
/* 8009E8DC 0009B81C  28 03 00 00 */	cmplwi r3, 0
/* 8009E8E0 0009B820  40 82 FF F8 */	bne lbl_8009E8D8
/* 8009E8E4 0009B824  38 60 00 00 */	li r3, 0
/* 8009E8E8 0009B828  4B FF FD A9 */	bl DSPSendMailToDSP
lbl_8009E8EC:
/* 8009E8EC 0009B82C  4B FF FD 6D */	bl DSPCheckMailToDSP
/* 8009E8F0 0009B830  28 03 00 00 */	cmplwi r3, 0
/* 8009E8F4 0009B834  40 82 FF F8 */	bne lbl_8009E8EC
/* 8009E8F8 0009B838  38 60 00 00 */	li r3, 0
/* 8009E8FC 0009B83C  4B FF FD 95 */	bl DSPSendMailToDSP
lbl_8009E900:
/* 8009E900 0009B840  4B FF FD 59 */	bl DSPCheckMailToDSP
/* 8009E904 0009B844  28 03 00 00 */	cmplwi r3, 0
/* 8009E908 0009B848  40 82 FF F8 */	bne lbl_8009E900
/* 8009E90C 0009B84C  38 60 00 00 */	li r3, 0
/* 8009E910 0009B850  4B FF FD 81 */	bl DSPSendMailToDSP
lbl_8009E914:
/* 8009E914 0009B854  4B FF FD 45 */	bl DSPCheckMailToDSP
/* 8009E918 0009B858  28 03 00 00 */	cmplwi r3, 0
/* 8009E91C 0009B85C  40 82 FF F8 */	bne lbl_8009E914
/* 8009E920 0009B860  48 00 00 54 */	b lbl_8009E974
lbl_8009E924:
/* 8009E924 0009B864  A0 7F 00 26 */	lhz r3, 0x26(r31)
/* 8009E928 0009B868  4B FF FD 69 */	bl DSPSendMailToDSP
lbl_8009E92C:
/* 8009E92C 0009B86C  4B FF FD 2D */	bl DSPCheckMailToDSP
/* 8009E930 0009B870  28 03 00 00 */	cmplwi r3, 0
/* 8009E934 0009B874  40 82 FF F8 */	bne lbl_8009E92C
/* 8009E938 0009B878  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8009E93C 0009B87C  4B FF FD 55 */	bl DSPSendMailToDSP
lbl_8009E940:
/* 8009E940 0009B880  4B FF FD 19 */	bl DSPCheckMailToDSP
/* 8009E944 0009B884  28 03 00 00 */	cmplwi r3, 0
/* 8009E948 0009B888  40 82 FF F8 */	bne lbl_8009E940
/* 8009E94C 0009B88C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8009E950 0009B890  4B FF FD 41 */	bl DSPSendMailToDSP
lbl_8009E954:
/* 8009E954 0009B894  4B FF FD 05 */	bl DSPCheckMailToDSP
/* 8009E958 0009B898  28 03 00 00 */	cmplwi r3, 0
/* 8009E95C 0009B89C  40 82 FF F8 */	bne lbl_8009E954
/* 8009E960 0009B8A0  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8009E964 0009B8A4  4B FF FD 2D */	bl DSPSendMailToDSP
lbl_8009E968:
/* 8009E968 0009B8A8  4B FF FC F1 */	bl DSPCheckMailToDSP
/* 8009E96C 0009B8AC  28 03 00 00 */	cmplwi r3, 0
/* 8009E970 0009B8B0  40 82 FF F8 */	bne lbl_8009E968
lbl_8009E974:
/* 8009E974 0009B8B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8009E978 0009B8B8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8009E97C 0009B8BC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8009E980 0009B8C0  38 21 00 18 */	addi r1, r1, 0x18
/* 8009E984 0009B8C4  7C 08 03 A6 */	mtlr r0
/* 8009E988 0009B8C8  4E 80 00 20 */	blr 

.global __DSP_boot_task
__DSP_boot_task:
/* 8009E98C 0009B8CC  7C 08 02 A6 */	mflr r0
/* 8009E990 0009B8D0  3C 80 80 3B */	lis r4, $$2264@ha
/* 8009E994 0009B8D4  90 01 00 04 */	stw r0, 4(r1)
/* 8009E998 0009B8D8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8009E99C 0009B8DC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8009E9A0 0009B8E0  3B E4 12 40 */	addi r31, r4, $$2264@l
/* 8009E9A4 0009B8E4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8009E9A8 0009B8E8  3B C3 00 00 */	addi r30, r3, 0
lbl_8009E9AC:
/* 8009E9AC 0009B8EC  4B FF FC BD */	bl DSPCheckMailFromDSP
/* 8009E9B0 0009B8F0  28 03 00 00 */	cmplwi r3, 0
/* 8009E9B4 0009B8F4  41 82 FF F8 */	beq lbl_8009E9AC
/* 8009E9B8 0009B8F8  4B FF FC C1 */	bl DSPReadMailFromDSP
/* 8009E9BC 0009B8FC  90 61 00 0C */	stw r3, 0xc(r1)
/* 8009E9C0 0009B900  3C 60 80 F4 */	lis r3, 0x80F3A001@ha
/* 8009E9C4 0009B904  38 63 A0 01 */	addi r3, r3, 0x80F3A001@l
/* 8009E9C8 0009B908  4B FF FC C9 */	bl DSPSendMailToDSP
lbl_8009E9CC:
/* 8009E9CC 0009B90C  4B FF FC 8D */	bl DSPCheckMailToDSP
/* 8009E9D0 0009B910  28 03 00 00 */	cmplwi r3, 0
/* 8009E9D4 0009B914  40 82 FF F8 */	bne lbl_8009E9CC
/* 8009E9D8 0009B918  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8009E9DC 0009B91C  4B FF FC B5 */	bl DSPSendMailToDSP
lbl_8009E9E0:
/* 8009E9E0 0009B920  4B FF FC 79 */	bl DSPCheckMailToDSP
/* 8009E9E4 0009B924  28 03 00 00 */	cmplwi r3, 0
/* 8009E9E8 0009B928  40 82 FF F8 */	bne lbl_8009E9E0
/* 8009E9EC 0009B92C  3C 60 80 F4 */	lis r3, 0x80F3C002@ha
/* 8009E9F0 0009B930  38 63 C0 02 */	addi r3, r3, 0x80F3C002@l
/* 8009E9F4 0009B934  4B FF FC 9D */	bl DSPSendMailToDSP
lbl_8009E9F8:
/* 8009E9F8 0009B938  4B FF FC 61 */	bl DSPCheckMailToDSP
/* 8009E9FC 0009B93C  28 03 00 00 */	cmplwi r3, 0
/* 8009EA00 0009B940  40 82 FF F8 */	bne lbl_8009E9F8
/* 8009EA04 0009B944  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8009EA08 0009B948  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8009EA0C 0009B94C  4B FF FC 85 */	bl DSPSendMailToDSP
lbl_8009EA10:
/* 8009EA10 0009B950  4B FF FC 49 */	bl DSPCheckMailToDSP
/* 8009EA14 0009B954  28 03 00 00 */	cmplwi r3, 0
/* 8009EA18 0009B958  40 82 FF F8 */	bne lbl_8009EA10
/* 8009EA1C 0009B95C  3C 60 80 F4 */	lis r3, 0x80F3A002@ha
/* 8009EA20 0009B960  38 63 A0 02 */	addi r3, r3, 0x80F3A002@l
/* 8009EA24 0009B964  4B FF FC 6D */	bl DSPSendMailToDSP
lbl_8009EA28:
/* 8009EA28 0009B968  4B FF FC 31 */	bl DSPCheckMailToDSP
/* 8009EA2C 0009B96C  28 03 00 00 */	cmplwi r3, 0
/* 8009EA30 0009B970  40 82 FF F8 */	bne lbl_8009EA28
/* 8009EA34 0009B974  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8009EA38 0009B978  4B FF FC 59 */	bl DSPSendMailToDSP
lbl_8009EA3C:
/* 8009EA3C 0009B97C  4B FF FC 1D */	bl DSPCheckMailToDSP
/* 8009EA40 0009B980  28 03 00 00 */	cmplwi r3, 0
/* 8009EA44 0009B984  40 82 FF F8 */	bne lbl_8009EA3C
/* 8009EA48 0009B988  3C 60 80 F4 */	lis r3, 0x80F3B002@ha
/* 8009EA4C 0009B98C  38 63 B0 02 */	addi r3, r3, 0x80F3B002@l
/* 8009EA50 0009B990  4B FF FC 41 */	bl DSPSendMailToDSP
lbl_8009EA54:
/* 8009EA54 0009B994  4B FF FC 05 */	bl DSPCheckMailToDSP
/* 8009EA58 0009B998  28 03 00 00 */	cmplwi r3, 0
/* 8009EA5C 0009B99C  40 82 FF F8 */	bne lbl_8009EA54
/* 8009EA60 0009B9A0  38 60 00 00 */	li r3, 0
/* 8009EA64 0009B9A4  4B FF FC 2D */	bl DSPSendMailToDSP
lbl_8009EA68:
/* 8009EA68 0009B9A8  4B FF FB F1 */	bl DSPCheckMailToDSP
/* 8009EA6C 0009B9AC  28 03 00 00 */	cmplwi r3, 0
/* 8009EA70 0009B9B0  40 82 FF F8 */	bne lbl_8009EA68
/* 8009EA74 0009B9B4  3C 60 80 F4 */	lis r3, 0x80F3D001@ha
/* 8009EA78 0009B9B8  38 63 D0 01 */	addi r3, r3, 0x80F3D001@l
/* 8009EA7C 0009B9BC  4B FF FC 15 */	bl DSPSendMailToDSP
lbl_8009EA80:
/* 8009EA80 0009B9C0  4B FF FB D9 */	bl DSPCheckMailToDSP
/* 8009EA84 0009B9C4  28 03 00 00 */	cmplwi r3, 0
/* 8009EA88 0009B9C8  40 82 FF F8 */	bne lbl_8009EA80
/* 8009EA8C 0009B9CC  A0 7E 00 24 */	lhz r3, 0x24(r30)
/* 8009EA90 0009B9D0  4B FF FC 01 */	bl DSPSendMailToDSP
lbl_8009EA94:
/* 8009EA94 0009B9D4  4B FF FB C5 */	bl DSPCheckMailToDSP
/* 8009EA98 0009B9D8  28 03 00 00 */	cmplwi r3, 0
/* 8009EA9C 0009B9DC  40 82 FF F8 */	bne lbl_8009EA94
/* 8009EAA0 0009B9E0  38 7F 00 00 */	addi r3, r31, 0
/* 8009EAA4 0009B9E4  4C C6 31 82 */	crclr 6
/* 8009EAA8 0009B9E8  38 9E 00 00 */	addi r4, r30, 0
/* 8009EAAC 0009B9EC  4B FF FC F1 */	bl __DSP_debug_printf
/* 8009EAB0 0009B9F0  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8009EAB4 0009B9F4  38 7F 00 20 */	addi r3, r31, 0x20
/* 8009EAB8 0009B9F8  4C C6 31 82 */	crclr 6
/* 8009EABC 0009B9FC  4B FF FC E1 */	bl __DSP_debug_printf
/* 8009EAC0 0009BA00  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8009EAC4 0009BA04  38 7F 00 50 */	addi r3, r31, 0x50
/* 8009EAC8 0009BA08  4C C6 31 82 */	crclr 6
/* 8009EACC 0009BA0C  4B FF FC D1 */	bl __DSP_debug_printf
/* 8009EAD0 0009BA10  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 8009EAD4 0009BA14  38 7F 00 80 */	addi r3, r31, 0x80
/* 8009EAD8 0009BA18  4C C6 31 82 */	crclr 6
/* 8009EADC 0009BA1C  4B FF FC C1 */	bl __DSP_debug_printf
/* 8009EAE0 0009BA20  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8009EAE4 0009BA24  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8009EAE8 0009BA28  4C C6 31 82 */	crclr 6
/* 8009EAEC 0009BA2C  4B FF FC B1 */	bl __DSP_debug_printf
/* 8009EAF0 0009BA30  A0 9E 00 24 */	lhz r4, 0x24(r30)
/* 8009EAF4 0009BA34  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 8009EAF8 0009BA38  4C C6 31 82 */	crclr 6
/* 8009EAFC 0009BA3C  4B FF FC A1 */	bl __DSP_debug_printf
/* 8009EB00 0009BA40  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8009EB04 0009BA44  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8009EB08 0009BA48  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8009EB0C 0009BA4C  38 21 00 18 */	addi r1, r1, 0x18
/* 8009EB10 0009BA50  7C 08 03 A6 */	mtlr r0
/* 8009EB14 0009BA54  4E 80 00 20 */	blr 

.global __DSP_insert_task
__DSP_insert_task:
/* 8009EB18 0009BA58  80 0D 95 4C */	lwz r0, __DSP_first_task-_SDA_BASE_(r13)
/* 8009EB1C 0009BA5C  28 00 00 00 */	cmplwi r0, 0
/* 8009EB20 0009BA60  40 82 00 20 */	bne lbl_8009EB40
/* 8009EB24 0009BA64  90 6D 95 50 */	stw r3, __DSP_curr_task-_SDA_BASE_(r13)
/* 8009EB28 0009BA68  38 00 00 00 */	li r0, 0
/* 8009EB2C 0009BA6C  90 6D 95 48 */	stw r3, __DSP_last_task-_SDA_BASE_(r13)
/* 8009EB30 0009BA70  90 6D 95 4C */	stw r3, __DSP_first_task-_SDA_BASE_(r13)
/* 8009EB34 0009BA74  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8009EB38 0009BA78  90 03 00 38 */	stw r0, 0x38(r3)
/* 8009EB3C 0009BA7C  4E 80 00 20 */	blr 
lbl_8009EB40:
/* 8009EB40 0009BA80  7C 05 03 78 */	mr r5, r0
/* 8009EB44 0009BA84  48 00 00 44 */	b lbl_8009EB88
lbl_8009EB48:
/* 8009EB48 0009BA88  80 83 00 04 */	lwz r4, 4(r3)
/* 8009EB4C 0009BA8C  80 05 00 04 */	lwz r0, 4(r5)
/* 8009EB50 0009BA90  7C 04 00 40 */	cmplw r4, r0
/* 8009EB54 0009BA94  40 80 00 30 */	bge lbl_8009EB84
/* 8009EB58 0009BA98  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 8009EB5C 0009BA9C  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8009EB60 0009BAA0  90 65 00 3C */	stw r3, 0x3c(r5)
/* 8009EB64 0009BAA4  90 A3 00 38 */	stw r5, 0x38(r3)
/* 8009EB68 0009BAA8  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 8009EB6C 0009BAAC  28 04 00 00 */	cmplwi r4, 0
/* 8009EB70 0009BAB0  40 82 00 0C */	bne lbl_8009EB7C
/* 8009EB74 0009BAB4  90 6D 95 4C */	stw r3, __DSP_first_task-_SDA_BASE_(r13)
/* 8009EB78 0009BAB8  48 00 00 18 */	b lbl_8009EB90
lbl_8009EB7C:
/* 8009EB7C 0009BABC  90 64 00 38 */	stw r3, 0x38(r4)
/* 8009EB80 0009BAC0  48 00 00 10 */	b lbl_8009EB90
lbl_8009EB84:
/* 8009EB84 0009BAC4  80 A5 00 38 */	lwz r5, 0x38(r5)
lbl_8009EB88:
/* 8009EB88 0009BAC8  28 05 00 00 */	cmplwi r5, 0
/* 8009EB8C 0009BACC  40 82 FF BC */	bne lbl_8009EB48
lbl_8009EB90:
/* 8009EB90 0009BAD0  28 05 00 00 */	cmplwi r5, 0
/* 8009EB94 0009BAD4  4C 82 00 20 */	bnelr 
/* 8009EB98 0009BAD8  80 8D 95 48 */	lwz r4, __DSP_last_task-_SDA_BASE_(r13)
/* 8009EB9C 0009BADC  38 00 00 00 */	li r0, 0
/* 8009EBA0 0009BAE0  90 64 00 38 */	stw r3, 0x38(r4)
/* 8009EBA4 0009BAE4  90 03 00 38 */	stw r0, 0x38(r3)
/* 8009EBA8 0009BAE8  80 0D 95 48 */	lwz r0, __DSP_last_task-_SDA_BASE_(r13)
/* 8009EBAC 0009BAEC  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8009EBB0 0009BAF0  90 6D 95 48 */	stw r3, __DSP_last_task-_SDA_BASE_(r13)
/* 8009EBB4 0009BAF4  4E 80 00 20 */	blr 

.global __DSP_remove_task
__DSP_remove_task:
/* 8009EBB8 0009BAF8  38 80 00 00 */	li r4, 0
/* 8009EBBC 0009BAFC  90 83 00 08 */	stw r4, 8(r3)
/* 8009EBC0 0009BB00  38 00 00 03 */	li r0, 3
/* 8009EBC4 0009BB04  90 03 00 00 */	stw r0, 0(r3)
/* 8009EBC8 0009BB08  80 0D 95 4C */	lwz r0, __DSP_first_task-_SDA_BASE_(r13)
/* 8009EBCC 0009BB0C  7C 00 18 40 */	cmplw r0, r3
/* 8009EBD0 0009BB10  40 82 00 30 */	bne lbl_8009EC00
/* 8009EBD4 0009BB14  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8009EBD8 0009BB18  28 00 00 00 */	cmplwi r0, 0
/* 8009EBDC 0009BB1C  41 82 00 14 */	beq lbl_8009EBF0
/* 8009EBE0 0009BB20  90 0D 95 4C */	stw r0, __DSP_first_task-_SDA_BASE_(r13)
/* 8009EBE4 0009BB24  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8009EBE8 0009BB28  90 83 00 3C */	stw r4, 0x3c(r3)
/* 8009EBEC 0009BB2C  4E 80 00 20 */	blr 
lbl_8009EBF0:
/* 8009EBF0 0009BB30  90 8D 95 50 */	stw r4, __DSP_curr_task-_SDA_BASE_(r13)
/* 8009EBF4 0009BB34  90 8D 95 48 */	stw r4, __DSP_last_task-_SDA_BASE_(r13)
/* 8009EBF8 0009BB38  90 8D 95 4C */	stw r4, __DSP_first_task-_SDA_BASE_(r13)
/* 8009EBFC 0009BB3C  4E 80 00 20 */	blr 
lbl_8009EC00:
/* 8009EC00 0009BB40  80 0D 95 48 */	lwz r0, __DSP_last_task-_SDA_BASE_(r13)
/* 8009EC04 0009BB44  7C 00 18 40 */	cmplw r0, r3
/* 8009EC08 0009BB48  40 82 00 20 */	bne lbl_8009EC28
/* 8009EC0C 0009BB4C  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8009EC10 0009BB50  90 0D 95 48 */	stw r0, __DSP_last_task-_SDA_BASE_(r13)
/* 8009EC14 0009BB54  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8009EC18 0009BB58  90 83 00 38 */	stw r4, 0x38(r3)
/* 8009EC1C 0009BB5C  80 0D 95 4C */	lwz r0, __DSP_first_task-_SDA_BASE_(r13)
/* 8009EC20 0009BB60  90 0D 95 50 */	stw r0, __DSP_curr_task-_SDA_BASE_(r13)
/* 8009EC24 0009BB64  4E 80 00 20 */	blr 
lbl_8009EC28:
/* 8009EC28 0009BB68  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8009EC2C 0009BB6C  90 0D 95 50 */	stw r0, __DSP_curr_task-_SDA_BASE_(r13)
/* 8009EC30 0009BB70  80 03 00 38 */	lwz r0, 0x38(r3)
/* 8009EC34 0009BB74  80 83 00 3C */	lwz r4, 0x3c(r3)
/* 8009EC38 0009BB78  90 04 00 38 */	stw r0, 0x38(r4)
/* 8009EC3C 0009BB7C  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8009EC40 0009BB80  80 63 00 38 */	lwz r3, 0x38(r3)
/* 8009EC44 0009BB84  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8009EC48 0009BB88  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
$$2264:
	.incbin "baserom.dol", 0x3AE240, 0x20
$$2265:
	.incbin "baserom.dol", 0x3AE260, 0x30
$$2266:
	.incbin "baserom.dol", 0x3AE290, 0x30
$$2267:
	.incbin "baserom.dol", 0x3AE2C0, 0x30
$$2268:
	.incbin "baserom.dol", 0x3AE2F0, 0x30
$$2269:
	.incbin "baserom.dol", 0x3AE320, 0x30
$$2292:
	.incbin "baserom.dol", 0x3AE350, 0x30

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
.global __DSP_last_task
__DSP_last_task:
	.skip 0x4
.global __DSP_first_task
__DSP_first_task:
	.skip 0x4
.global __DSP_curr_task
__DSP_curr_task:
	.skip 0x8
