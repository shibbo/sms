.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __ct__10JKRDvdFileFv
__ct__10JKRDvdFileFv:
/* 800096CC 0000660C  7C 08 02 A6 */	mflr r0
/* 800096D0 00006610  90 01 00 04 */	stw r0, 4(r1)
/* 800096D4 00006614  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800096D8 00006618  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800096DC 0000661C  90 61 00 08 */	stw r3, 8(r1)
/* 800096E0 00006620  83 E1 00 08 */	lwz r31, 8(r1)
/* 800096E4 00006624  7F E3 FB 78 */	mr r3, r31
/* 800096E8 00006628  4B FF F5 CD */	bl __ct__11JKRDisposerFv
/* 800096EC 0000662C  3C 60 80 3B */	lis r3, __vt__7JKRFile@ha
/* 800096F0 00006630  38 03 83 80 */	addi r0, r3, __vt__7JKRFile@l
/* 800096F4 00006634  90 1F 00 00 */	stw r0, 0(r31)
/* 800096F8 00006638  38 00 00 00 */	li r0, 0
/* 800096FC 0000663C  3C 60 80 3B */	lis r3, __vt__10JKRDvdFile@ha
/* 80009700 00006640  98 1F 00 18 */	stb r0, 0x18(r31)
/* 80009704 00006644  38 03 85 20 */	addi r0, r3, __vt__10JKRDvdFile@l
/* 80009708 00006648  38 9F 00 00 */	addi r4, r31, 0
/* 8000970C 0000664C  90 1F 00 00 */	stw r0, 0(r31)
/* 80009710 00006650  38 64 00 E4 */	addi r3, r4, 0xe4
/* 80009714 00006654  48 00 54 05 */	bl __ct__10JSUPtrLinkFPv
/* 80009718 00006658  7F E3 FB 78 */	mr r3, r31
/* 8000971C 0000665C  48 00 01 59 */	bl initiate__10JKRDvdFileFv
/* 80009720 00006660  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80009724 00006664  7F E3 FB 78 */	mr r3, r31
/* 80009728 00006668  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8000972C 0000666C  38 21 00 18 */	addi r1, r1, 0x18
/* 80009730 00006670  7C 08 03 A6 */	mtlr r0
/* 80009734 00006674  4E 80 00 20 */	blr 

.global __ct__10JKRDvdFileFl
__ct__10JKRDvdFileFl:
/* 80009738 00006678  7C 08 02 A6 */	mflr r0
/* 8000973C 0000667C  90 01 00 04 */	stw r0, 4(r1)
/* 80009740 00006680  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80009744 00006684  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80009748 00006688  7C 9F 23 78 */	mr r31, r4
/* 8000974C 0000668C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80009750 00006690  90 61 00 08 */	stw r3, 8(r1)
/* 80009754 00006694  83 C1 00 08 */	lwz r30, 8(r1)
/* 80009758 00006698  7F C3 F3 78 */	mr r3, r30
/* 8000975C 0000669C  4B FF F5 59 */	bl __ct__11JKRDisposerFv
/* 80009760 000066A0  3C 60 80 3B */	lis r3, __vt__7JKRFile@ha
/* 80009764 000066A4  38 03 83 80 */	addi r0, r3, __vt__7JKRFile@l
/* 80009768 000066A8  90 1E 00 00 */	stw r0, 0(r30)
/* 8000976C 000066AC  38 00 00 00 */	li r0, 0
/* 80009770 000066B0  3C 60 80 3B */	lis r3, __vt__10JKRDvdFile@ha
/* 80009774 000066B4  98 1E 00 18 */	stb r0, 0x18(r30)
/* 80009778 000066B8  38 03 85 20 */	addi r0, r3, __vt__10JKRDvdFile@l
/* 8000977C 000066BC  38 9E 00 00 */	addi r4, r30, 0
/* 80009780 000066C0  90 1E 00 00 */	stw r0, 0(r30)
/* 80009784 000066C4  38 64 00 E4 */	addi r3, r4, 0xe4
/* 80009788 000066C8  48 00 53 91 */	bl __ct__10JSUPtrLinkFPv
/* 8000978C 000066CC  7F C3 F3 78 */	mr r3, r30
/* 80009790 000066D0  48 00 00 E5 */	bl initiate__10JKRDvdFileFv
/* 80009794 000066D4  7F C3 F3 78 */	mr r3, r30
/* 80009798 000066D8  81 9E 00 00 */	lwz r12, 0(r30)
/* 8000979C 000066DC  7F E4 FB 78 */	mr r4, r31
/* 800097A0 000066E0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 800097A4 000066E4  7D 88 03 A6 */	mtlr r12
/* 800097A8 000066E8  4E 80 00 21 */	blrl 
/* 800097AC 000066EC  98 7E 00 18 */	stb r3, 0x18(r30)
/* 800097B0 000066F0  7F C3 F3 78 */	mr r3, r30
/* 800097B4 000066F4  88 1E 00 18 */	lbz r0, 0x18(r30)
/* 800097B8 000066F8  28 00 00 00 */	cmplwi r0, 0
/* 800097BC 000066FC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800097C0 00006700  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800097C4 00006704  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800097C8 00006708  7C 08 03 A6 */	mtlr r0
/* 800097CC 0000670C  38 21 00 18 */	addi r1, r1, 0x18
/* 800097D0 00006710  4E 80 00 20 */	blr 

.global __dt__10JKRDvdFileFv
__dt__10JKRDvdFileFv:
/* 800097D4 00006714  7C 08 02 A6 */	mflr r0
/* 800097D8 00006718  90 01 00 04 */	stw r0, 4(r1)
/* 800097DC 0000671C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800097E0 00006720  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800097E4 00006724  3B E4 00 00 */	addi r31, r4, 0
/* 800097E8 00006728  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800097EC 0000672C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800097F0 00006730  41 82 00 68 */	beq lbl_80009858
/* 800097F4 00006734  3C 60 80 3B */	lis r3, __vt__10JKRDvdFile@ha
/* 800097F8 00006738  38 03 85 20 */	addi r0, r3, __vt__10JKRDvdFile@l
/* 800097FC 0000673C  90 1E 00 00 */	stw r0, 0(r30)
/* 80009800 00006740  7F C3 F3 78 */	mr r3, r30
/* 80009804 00006744  81 9E 00 00 */	lwz r12, 0(r30)
/* 80009808 00006748  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8000980C 0000674C  7D 88 03 A6 */	mtlr r12
/* 80009810 00006750  4E 80 00 21 */	blrl 
/* 80009814 00006754  34 1E 00 E4 */	addic. r0, r30, 0xe4
/* 80009818 00006758  41 82 00 10 */	beq lbl_80009828
/* 8000981C 0000675C  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 80009820 00006760  38 80 00 00 */	li r4, 0
/* 80009824 00006764  48 00 53 0D */	bl __dt__10JSUPtrLinkFv
lbl_80009828:
/* 80009828 00006768  28 1E 00 00 */	cmplwi r30, 0
/* 8000982C 0000676C  41 82 00 1C */	beq lbl_80009848
/* 80009830 00006770  3C 60 80 3B */	lis r3, __vt__7JKRFile@ha
/* 80009834 00006774  38 03 83 80 */	addi r0, r3, __vt__7JKRFile@l
/* 80009838 00006778  90 1E 00 00 */	stw r0, 0(r30)
/* 8000983C 0000677C  38 7E 00 00 */	addi r3, r30, 0
/* 80009840 00006780  38 80 00 00 */	li r4, 0
/* 80009844 00006784  4B FF F4 E9 */	bl __dt__11JKRDisposerFv
lbl_80009848:
/* 80009848 00006788  7F E0 07 35 */	extsh. r0, r31
/* 8000984C 0000678C  40 81 00 0C */	ble lbl_80009858
/* 80009850 00006790  7F C3 F3 78 */	mr r3, r30
/* 80009854 00006794  48 00 32 5D */	bl __dl__FPv
lbl_80009858:
/* 80009858 00006798  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8000985C 0000679C  7F C3 F3 78 */	mr r3, r30
/* 80009860 000067A0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80009864 000067A4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80009868 000067A8  7C 08 03 A6 */	mtlr r0
/* 8000986C 000067AC  38 21 00 18 */	addi r1, r1, 0x18
/* 80009870 000067B0  4E 80 00 20 */	blr 

.global initiate__10JKRDvdFileFv
initiate__10JKRDvdFileFv:
/* 80009874 000067B4  7C 08 02 A6 */	mflr r0
/* 80009878 000067B8  90 01 00 04 */	stw r0, 4(r1)
/* 8000987C 000067BC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80009880 000067C0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80009884 000067C4  7C 7F 1B 78 */	mr r31, r3
/* 80009888 000067C8  93 E3 00 98 */	stw r31, 0x98(r3)
/* 8000988C 000067CC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80009890 000067D0  48 08 77 69 */	bl OSInitMutex
/* 80009894 000067D4  38 7F 00 34 */	addi r3, r31, 0x34
/* 80009898 000067D8  48 08 77 61 */	bl OSInitMutex
/* 8000989C 000067DC  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 800098A0 000067E0  38 9F 00 E0 */	addi r4, r31, 0xe0
/* 800098A4 000067E4  38 A0 00 01 */	li r5, 1
/* 800098A8 000067E8  48 08 71 A9 */	bl OSInitMessageQueue
/* 800098AC 000067EC  38 7F 00 9C */	addi r3, r31, 0x9c
/* 800098B0 000067F0  38 9F 00 BC */	addi r4, r31, 0xbc
/* 800098B4 000067F4  38 A0 00 01 */	li r5, 1
/* 800098B8 000067F8  48 08 71 99 */	bl OSInitMessageQueue
/* 800098BC 000067FC  38 00 00 00 */	li r0, 0
/* 800098C0 00006800  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 800098C4 00006804  90 1F 00 50 */	stw r0, 0x50(r31)
/* 800098C8 00006808  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800098CC 0000680C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800098D0 00006810  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800098D4 00006814  38 21 00 18 */	addi r1, r1, 0x18
/* 800098D8 00006818  7C 08 03 A6 */	mtlr r0
/* 800098DC 0000681C  4E 80 00 20 */	blr 

.global open__10JKRDvdFileFPCc
open__10JKRDvdFileFPCc:
/* 800098E0 00006820  7C 08 02 A6 */	mflr r0
/* 800098E4 00006824  90 01 00 04 */	stw r0, 4(r1)
/* 800098E8 00006828  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800098EC 0000682C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800098F0 00006830  7C 7F 1B 78 */	mr r31, r3
/* 800098F4 00006834  88 03 00 18 */	lbz r0, 0x18(r3)
/* 800098F8 00006838  28 00 00 00 */	cmplwi r0, 0
/* 800098FC 0000683C  40 82 00 44 */	bne lbl_80009940
/* 80009900 00006840  38 64 00 00 */	addi r3, r4, 0
/* 80009904 00006844  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80009908 00006848  48 08 C9 2D */	bl DVDOpen
/* 8000990C 0000684C  7C 63 00 D0 */	neg r3, r3
/* 80009910 00006850  30 03 FF FF */	addic r0, r3, -1
/* 80009914 00006854  7C 00 19 10 */	subfe r0, r0, r3
/* 80009918 00006858  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8000991C 0000685C  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 80009920 00006860  28 00 00 00 */	cmplwi r0, 0
/* 80009924 00006864  41 82 00 1C */	beq lbl_80009940
/* 80009928 00006868  3C 60 80 40 */	lis r3, sDvdList__10JKRDvdFile@ha
/* 8000992C 0000686C  38 63 0B A4 */	addi r3, r3, sDvdList__10JKRDvdFile@l
/* 80009930 00006870  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 80009934 00006874  48 00 53 15 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 80009938 00006878  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8000993C 0000687C  48 08 F0 DD */	bl DVDGetCommandBlockStatus
lbl_80009940:
/* 80009940 00006880  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80009944 00006884  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 80009948 00006888  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8000994C 0000688C  7C 08 03 A6 */	mtlr r0
/* 80009950 00006890  38 21 00 18 */	addi r1, r1, 0x18
/* 80009954 00006894  4E 80 00 20 */	blr 

.global open__10JKRDvdFileFl
open__10JKRDvdFileFl:
/* 80009958 00006898  7C 08 02 A6 */	mflr r0
/* 8000995C 0000689C  90 01 00 04 */	stw r0, 4(r1)
/* 80009960 000068A0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80009964 000068A4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80009968 000068A8  7C 7F 1B 78 */	mr r31, r3
/* 8000996C 000068AC  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80009970 000068B0  28 00 00 00 */	cmplwi r0, 0
/* 80009974 000068B4  40 82 00 44 */	bne lbl_800099B8
/* 80009978 000068B8  38 64 00 00 */	addi r3, r4, 0
/* 8000997C 000068BC  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80009980 000068C0  48 08 C8 41 */	bl DVDFastOpen
/* 80009984 000068C4  7C 63 00 D0 */	neg r3, r3
/* 80009988 000068C8  30 03 FF FF */	addic r0, r3, -1
/* 8000998C 000068CC  7C 00 19 10 */	subfe r0, r0, r3
/* 80009990 000068D0  98 1F 00 18 */	stb r0, 0x18(r31)
/* 80009994 000068D4  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 80009998 000068D8  28 00 00 00 */	cmplwi r0, 0
/* 8000999C 000068DC  41 82 00 1C */	beq lbl_800099B8
/* 800099A0 000068E0  3C 60 80 40 */	lis r3, sDvdList__10JKRDvdFile@ha
/* 800099A4 000068E4  38 63 0B A4 */	addi r3, r3, sDvdList__10JKRDvdFile@l
/* 800099A8 000068E8  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 800099AC 000068EC  48 00 52 9D */	bl append__10JSUPtrListFP10JSUPtrLink
/* 800099B0 000068F0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800099B4 000068F4  48 08 F0 65 */	bl DVDGetCommandBlockStatus
lbl_800099B8:
/* 800099B8 000068F8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800099BC 000068FC  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 800099C0 00006900  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800099C4 00006904  7C 08 03 A6 */	mtlr r0
/* 800099C8 00006908  38 21 00 18 */	addi r1, r1, 0x18
/* 800099CC 0000690C  4E 80 00 20 */	blr 

.global close__10JKRDvdFileFv
close__10JKRDvdFileFv:
/* 800099D0 00006910  7C 08 02 A6 */	mflr r0
/* 800099D4 00006914  90 01 00 04 */	stw r0, 4(r1)
/* 800099D8 00006918  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800099DC 0000691C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800099E0 00006920  7C 7F 1B 78 */	mr r31, r3
/* 800099E4 00006924  88 03 00 18 */	lbz r0, 0x18(r3)
/* 800099E8 00006928  28 00 00 00 */	cmplwi r0, 0
/* 800099EC 0000692C  41 82 00 4C */	beq lbl_80009A38
/* 800099F0 00006930  38 7F 00 5C */	addi r3, r31, 0x5c
/* 800099F4 00006934  48 08 C9 09 */	bl DVDClose
/* 800099F8 00006938  2C 03 00 00 */	cmpwi r3, 0
/* 800099FC 0000693C  41 82 00 20 */	beq lbl_80009A1C
/* 80009A00 00006940  38 00 00 00 */	li r0, 0
/* 80009A04 00006944  3C 60 80 40 */	lis r3, sDvdList__10JKRDvdFile@ha
/* 80009A08 00006948  98 1F 00 18 */	stb r0, 0x18(r31)
/* 80009A0C 0000694C  38 63 0B A4 */	addi r3, r3, sDvdList__10JKRDvdFile@l
/* 80009A10 00006950  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 80009A14 00006954  48 00 55 89 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 80009A18 00006958  48 00 00 20 */	b lbl_80009A38
lbl_80009A1C:
/* 80009A1C 0000695C  3C 60 80 37 */	lis r3, $$2302@ha
/* 80009A20 00006960  4C C6 31 82 */	crclr 6
/* 80009A24 00006964  3C 80 80 37 */	lis r4, $$2303@ha
/* 80009A28 00006968  38 A4 01 40 */	addi r5, r4, $$2303@l
/* 80009A2C 0000696C  38 63 01 30 */	addi r3, r3, $$2302@l
/* 80009A30 00006970  38 80 00 D4 */	li r4, 0xd4
/* 80009A34 00006974  48 08 55 B1 */	bl OSPanic
lbl_80009A38:
/* 80009A38 00006978  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80009A3C 0000697C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80009A40 00006980  38 21 00 18 */	addi r1, r1, 0x18
/* 80009A44 00006984  7C 08 03 A6 */	mtlr r0
/* 80009A48 00006988  4E 80 00 20 */	blr 

.global readData__10JKRDvdFileFPvll
readData__10JKRDvdFileFPvll:
/* 80009A4C 0000698C  7C 08 02 A6 */	mflr r0
/* 80009A50 00006990  90 01 00 04 */	stw r0, 4(r1)
/* 80009A54 00006994  38 05 00 1F */	addi r0, r5, 0x1f
/* 80009A58 00006998  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80009A5C 0000699C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80009A60 000069A0  3B E6 00 00 */	addi r31, r6, 0
/* 80009A64 000069A4  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80009A68 000069A8  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 80009A6C 000069AC  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80009A70 000069B0  3B A4 00 00 */	addi r29, r4, 0
/* 80009A74 000069B4  93 81 00 18 */	stw r28, 0x18(r1)
/* 80009A78 000069B8  3B 83 00 00 */	addi r28, r3, 0
/* 80009A7C 000069BC  38 7C 00 1C */	addi r3, r28, 0x1c
/* 80009A80 000069C0  48 08 75 B1 */	bl OSLockMutex
/* 80009A84 000069C4  80 1C 00 F4 */	lwz r0, 0xf4(r28)
/* 80009A88 000069C8  28 00 00 00 */	cmplwi r0, 0
/* 80009A8C 000069CC  41 82 00 14 */	beq lbl_80009AA0
/* 80009A90 000069D0  38 7C 00 1C */	addi r3, r28, 0x1c
/* 80009A94 000069D4  48 08 76 79 */	bl OSUnlockMutex
/* 80009A98 000069D8  38 60 FF FF */	li r3, -1
/* 80009A9C 000069DC  48 00 00 58 */	b lbl_80009AF4
lbl_80009AA0:
/* 80009AA0 000069E0  48 08 91 E9 */	bl OSGetCurrentThread
/* 80009AA4 000069E4  3C 80 80 01 */	lis r4, doneProcess__10JKRDvdFileFlP11DVDFileInfo@ha
/* 80009AA8 000069E8  90 7C 00 F4 */	stw r3, 0xf4(r28)
/* 80009AAC 000069EC  38 E4 9B 70 */	addi r7, r4, doneProcess__10JKRDvdFileFlP11DVDFileInfo@l
/* 80009AB0 000069F0  38 DF 00 00 */	addi r6, r31, 0
/* 80009AB4 000069F4  38 9D 00 00 */	addi r4, r29, 0
/* 80009AB8 000069F8  38 BE 00 00 */	addi r5, r30, 0
/* 80009ABC 000069FC  38 7C 00 5C */	addi r3, r28, 0x5c
/* 80009AC0 00006A00  3B E0 FF FF */	li r31, -1
/* 80009AC4 00006A04  39 00 00 02 */	li r8, 2
/* 80009AC8 00006A08  48 08 CA DD */	bl DVDReadAsyncPrio
/* 80009ACC 00006A0C  2C 03 00 00 */	cmpwi r3, 0
/* 80009AD0 00006A10  41 82 00 10 */	beq lbl_80009AE0
/* 80009AD4 00006A14  7F 83 E3 78 */	mr r3, r28
/* 80009AD8 00006A18  48 00 00 45 */	bl sync__10JKRDvdFileFv
/* 80009ADC 00006A1C  7C 7F 1B 78 */	mr r31, r3
lbl_80009AE0:
/* 80009AE0 00006A20  38 00 00 00 */	li r0, 0
/* 80009AE4 00006A24  90 1C 00 F4 */	stw r0, 0xf4(r28)
/* 80009AE8 00006A28  38 7C 00 1C */	addi r3, r28, 0x1c
/* 80009AEC 00006A2C  48 08 76 21 */	bl OSUnlockMutex
/* 80009AF0 00006A30  7F E3 FB 78 */	mr r3, r31
lbl_80009AF4:
/* 80009AF4 00006A34  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80009AF8 00006A38  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80009AFC 00006A3C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80009B00 00006A40  7C 08 03 A6 */	mtlr r0
/* 80009B04 00006A44  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80009B08 00006A48  83 81 00 18 */	lwz r28, 0x18(r1)
/* 80009B0C 00006A4C  38 21 00 28 */	addi r1, r1, 0x28
/* 80009B10 00006A50  4E 80 00 20 */	blr 

.global writeData__10JKRDvdFileFPCvll
writeData__10JKRDvdFileFPCvll:
/* 80009B14 00006A54  38 60 FF FF */	li r3, -1
/* 80009B18 00006A58  4E 80 00 20 */	blr 

.global sync__10JKRDvdFileFv
sync__10JKRDvdFileFv:
/* 80009B1C 00006A5C  7C 08 02 A6 */	mflr r0
/* 80009B20 00006A60  90 01 00 04 */	stw r0, 4(r1)
/* 80009B24 00006A64  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80009B28 00006A68  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80009B2C 00006A6C  3B E3 00 00 */	addi r31, r3, 0
/* 80009B30 00006A70  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80009B34 00006A74  48 08 74 FD */	bl OSLockMutex
/* 80009B38 00006A78  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80009B3C 00006A7C  38 81 00 0C */	addi r4, r1, 0xc
/* 80009B40 00006A80  38 A0 00 01 */	li r5, 1
/* 80009B44 00006A84  48 08 70 35 */	bl OSReceiveMessage
/* 80009B48 00006A88  38 00 00 00 */	li r0, 0
/* 80009B4C 00006A8C  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 80009B50 00006A90  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80009B54 00006A94  48 08 75 B9 */	bl OSUnlockMutex
/* 80009B58 00006A98  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80009B5C 00006A9C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80009B60 00006AA0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80009B64 00006AA4  7C 08 03 A6 */	mtlr r0
/* 80009B68 00006AA8  38 21 00 18 */	addi r1, r1, 0x18
/* 80009B6C 00006AAC  4E 80 00 20 */	blr 

.global doneProcess__10JKRDvdFileFlP11DVDFileInfo
doneProcess__10JKRDvdFileFlP11DVDFileInfo:
/* 80009B70 00006AB0  7C 08 02 A6 */	mflr r0
/* 80009B74 00006AB4  90 01 00 04 */	stw r0, 4(r1)
/* 80009B78 00006AB8  94 21 FF F8 */	stwu r1, -8(r1)
/* 80009B7C 00006ABC  80 A4 00 3C */	lwz r5, 0x3c(r4)
/* 80009B80 00006AC0  38 83 00 00 */	addi r4, r3, 0
/* 80009B84 00006AC4  38 65 00 C0 */	addi r3, r5, 0xc0
/* 80009B88 00006AC8  38 A0 00 00 */	li r5, 0
/* 80009B8C 00006ACC  48 08 6F 25 */	bl OSSendMessage
/* 80009B90 00006AD0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80009B94 00006AD4  38 21 00 08 */	addi r1, r1, 8
/* 80009B98 00006AD8  7C 08 03 A6 */	mtlr r0
/* 80009B9C 00006ADC  4E 80 00 20 */	blr 

.global getFileSize__10JKRDvdFileCFv
getFileSize__10JKRDvdFileCFv:
/* 80009BA0 00006AE0  80 63 00 90 */	lwz r3, 0x90(r3)
/* 80009BA4 00006AE4  4E 80 00 20 */	blr 

.global __sinit_JKRDvdFile_cpp
__sinit_JKRDvdFile_cpp:
/* 80009BA8 00006AE8  7C 08 02 A6 */	mflr r0
/* 80009BAC 00006AEC  3C 60 80 40 */	lis r3, sDvdList__10JKRDvdFile@ha
/* 80009BB0 00006AF0  90 01 00 04 */	stw r0, 4(r1)
/* 80009BB4 00006AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80009BB8 00006AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80009BBC 00006AFC  3B E3 0B A4 */	addi r31, r3, sDvdList__10JKRDvdFile@l
/* 80009BC0 00006B00  38 7F 00 00 */	addi r3, r31, 0
/* 80009BC4 00006B04  48 00 50 71 */	bl initiate__10JSUPtrListFv
/* 80009BC8 00006B08  3C 80 80 01 */	lis r4, __dt__21JSUList$$010JKRDvdFile$$1Fv@ha
/* 80009BCC 00006B0C  3C 60 80 3E */	lis r3, $$2237@ha
/* 80009BD0 00006B10  38 A3 60 70 */	addi r5, r3, $$2237@l
/* 80009BD4 00006B14  38 84 9B F4 */	addi r4, r4, __dt__21JSUList$$010JKRDvdFile$$1Fv@l
/* 80009BD8 00006B18  38 7F 00 00 */	addi r3, r31, 0
/* 80009BDC 00006B1C  48 07 8B 4D */	bl __register_global_object
/* 80009BE0 00006B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80009BE4 00006B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80009BE8 00006B28  38 21 00 10 */	addi r1, r1, 0x10
/* 80009BEC 00006B2C  7C 08 03 A6 */	mtlr r0
/* 80009BF0 00006B30  4E 80 00 20 */	blr 

.global __dt__21JSUList$$010JKRDvdFile$$1Fv
__dt__21JSUList$$010JKRDvdFile$$1Fv:
/* 80009BF4 00006B34  7C 08 02 A6 */	mflr r0
/* 80009BF8 00006B38  90 01 00 04 */	stw r0, 4(r1)
/* 80009BFC 00006B3C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80009C00 00006B40  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80009C04 00006B44  3B E4 00 00 */	addi r31, r4, 0
/* 80009C08 00006B48  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80009C0C 00006B4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80009C10 00006B50  41 82 00 20 */	beq lbl_80009C30
/* 80009C14 00006B54  38 7E 00 00 */	addi r3, r30, 0
/* 80009C18 00006B58  38 80 00 00 */	li r4, 0
/* 80009C1C 00006B5C  48 00 4F B1 */	bl __dt__10JSUPtrListFv
/* 80009C20 00006B60  7F E0 07 35 */	extsh. r0, r31
/* 80009C24 00006B64  40 81 00 0C */	ble lbl_80009C30
/* 80009C28 00006B68  7F C3 F3 78 */	mr r3, r30
/* 80009C2C 00006B6C  48 00 2E 85 */	bl __dl__FPv
lbl_80009C30:
/* 80009C30 00006B70  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80009C34 00006B74  7F C3 F3 78 */	mr r3, r30
/* 80009C38 00006B78  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80009C3C 00006B7C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80009C40 00006B80  7C 08 03 A6 */	mtlr r0
/* 80009C44 00006B84  38 21 00 18 */	addi r1, r1, 0x18
/* 80009C48 00006B88  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
	.incbin "baserom.dol", 0x36CBB0, 0x4

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$2302:
	.incbin "baserom.dol", 0x36D130, 0x10
$$2303:
	.incbin "baserom.dol", 0x36D140, 0x18

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__10JKRDvdFile
__vt__10JKRDvdFile:
	.incbin "baserom.dol", 0x3A5520, 0x28

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
$$2237:
	.skip 0x10

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
sDvdList__10JKRDvdFile:
	.skip 0xC
