.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __dt__12TMapDrawWallFv
__dt__12TMapDrawWallFv:
/* 801E0610 001DD550  7C 08 02 A6 */	mflr r0
/* 801E0614 001DD554  90 01 00 04 */	stw r0, 4(r1)
/* 801E0618 001DD558  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801E061C 001DD55C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801E0620 001DD560  3B E4 00 00 */	addi r31, r4, 0
/* 801E0624 001DD564  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801E0628 001DD568  7C 7E 1B 79 */	or. r30, r3, r3
/* 801E062C 001DD56C  41 82 00 3C */	beq lbl_801E0668
/* 801E0630 001DD570  3C 60 80 3D */	lis r3, __vt__12TMapDrawWall@ha
/* 801E0634 001DD574  38 03 FD 18 */	addi r0, r3, __vt__12TMapDrawWall@l
/* 801E0638 001DD578  90 1E 00 00 */	stw r0, 0(r30)
/* 801E063C 001DD57C  41 82 00 1C */	beq lbl_801E0658
/* 801E0640 001DD580  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 801E0644 001DD584  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 801E0648 001DD588  90 1E 00 00 */	stw r0, 0(r30)
/* 801E064C 001DD58C  38 7E 00 00 */	addi r3, r30, 0
/* 801E0650 001DD590  38 80 00 00 */	li r4, 0
/* 801E0654 001DD594  4B E6 41 A9 */	bl __dt__Q26JDrama8TNameRefFv
lbl_801E0658:
/* 801E0658 001DD598  7F E0 07 35 */	extsh. r0, r31
/* 801E065C 001DD59C  40 81 00 0C */	ble lbl_801E0668
/* 801E0660 001DD5A0  7F C3 F3 78 */	mr r3, r30
/* 801E0664 001DD5A4  4B E2 C4 4D */	bl __dl__FPv
lbl_801E0668:
/* 801E0668 001DD5A8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801E066C 001DD5AC  7F C3 F3 78 */	mr r3, r30
/* 801E0670 001DD5B0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801E0674 001DD5B4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801E0678 001DD5B8  7C 08 03 A6 */	mtlr r0
/* 801E067C 001DD5BC  38 21 00 18 */	addi r1, r1, 0x18
/* 801E0680 001DD5C0  4E 80 00 20 */	blr 

.global draw__4TMapCFUlPQ26JDrama9TGraphics
draw__4TMapCFUlPQ26JDrama9TGraphics:
/* 801E0684 001DD5C4  4E 80 00 20 */	blr 

.global __ct__12TMapDrawWallFPCc
__ct__12TMapDrawWallFPCc:
/* 801E0688 001DD5C8  7C 08 02 A6 */	mflr r0
/* 801E068C 001DD5CC  3C A0 80 3B */	lis r5, __vt__Q26JDrama8TNameRef@ha
/* 801E0690 001DD5D0  90 01 00 04 */	stw r0, 4(r1)
/* 801E0694 001DD5D4  38 05 A8 60 */	addi r0, r5, __vt__Q26JDrama8TNameRef@l
/* 801E0698 001DD5D8  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 801E069C 001DD5DC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 801E06A0 001DD5E0  3B E3 00 00 */	addi r31, r3, 0
/* 801E06A4 001DD5E4  90 03 00 00 */	stw r0, 0(r3)
/* 801E06A8 001DD5E8  7C 83 23 78 */	mr r3, r4
/* 801E06AC 001DD5EC  90 9F 00 04 */	stw r4, 4(r31)
/* 801E06B0 001DD5F0  4B E6 3F DD */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 801E06B4 001DD5F4  B0 7F 00 08 */	sth r3, 8(r31)
/* 801E06B8 001DD5F8  3C 60 80 3B */	lis r3, __vt__Q26JDrama8TViewObj@ha
/* 801E06BC 001DD5FC  38 03 A0 C0 */	addi r0, r3, __vt__Q26JDrama8TViewObj@l
/* 801E06C0 001DD600  90 1F 00 00 */	stw r0, 0(r31)
/* 801E06C4 001DD604  38 80 00 00 */	li r4, 0
/* 801E06C8 001DD608  3C 60 80 3D */	lis r3, __vt__12TMapDrawWall@ha
/* 801E06CC 001DD60C  B0 9F 00 0C */	sth r4, 0xc(r31)
/* 801E06D0 001DD610  38 03 FD 18 */	addi r0, r3, __vt__12TMapDrawWall@l
/* 801E06D4 001DD614  38 7F 00 00 */	addi r3, r31, 0
/* 801E06D8 001DD618  90 1F 00 00 */	stw r0, 0(r31)
/* 801E06DC 001DD61C  90 9F 00 10 */	stw r4, 0x10(r31)
/* 801E06E0 001DD620  80 02 CE 0C */	lwz r0, $$22346@sda21(r2)
/* 801E06E4 001DD624  90 01 00 18 */	stw r0, 0x18(r1)
/* 801E06E8 001DD628  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801E06EC 001DD62C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801E06F0 001DD630  90 9F 00 18 */	stw r4, 0x18(r31)
/* 801E06F4 001DD634  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 801E06F8 001DD638  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 801E06FC 001DD63C  38 21 00 28 */	addi r1, r1, 0x28
/* 801E0700 001DD640  7C 08 03 A6 */	mtlr r0
/* 801E0704 001DD644  4E 80 00 20 */	blr 

.global load__12TMapDrawWallFR20JSUMemoryInputStream
load__12TMapDrawWallFR20JSUMemoryInputStream:
/* 801E0708 001DD648  7C 08 02 A6 */	mflr r0
/* 801E070C 001DD64C  3C 80 80 39 */	lis r4, $$22364@ha
/* 801E0710 001DD650  90 01 00 04 */	stw r0, 4(r1)
/* 801E0714 001DD654  38 04 17 D8 */	addi r0, r4, $$22364@l
/* 801E0718 001DD658  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 801E071C 001DD65C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801E0720 001DD660  3B E3 00 00 */	addi r31, r3, 0
/* 801E0724 001DD664  7C 03 03 78 */	mr r3, r0
/* 801E0728 001DD668  4B E2 B5 95 */	bl getGlbResource__13JKRFileLoaderFPCc
/* 801E072C 001DD66C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 801E0730 001DD670  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801E0734 001DD674  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801E0738 001DD678  38 21 00 18 */	addi r1, r1, 0x18
/* 801E073C 001DD67C  7C 08 03 A6 */	mtlr r0
/* 801E0740 001DD680  4E 80 00 20 */	blr 

.global perform__12TMapDrawWallFUlPQ26JDrama9TGraphics
perform__12TMapDrawWallFUlPQ26JDrama9TGraphics:
/* 801E0744 001DD684  7C 08 02 A6 */	mflr r0
/* 801E0748 001DD688  90 01 00 04 */	stw r0, 4(r1)
/* 801E074C 001DD68C  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 801E0750 001DD690  94 21 FF 38 */	stwu r1, -0xc8(r1)
/* 801E0754 001DD694  BF 41 00 B0 */	stmw r26, 0xb0(r1)
/* 801E0758 001DD698  3B C3 00 00 */	addi r30, r3, 0
/* 801E075C 001DD69C  41 82 02 FC */	beq lbl_801E0A58
/* 801E0760 001DD6A0  80 6D A8 B0 */	lwz r3, gpCamera@sda21(r13)
/* 801E0764 001DD6A4  A8 03 02 C8 */	lha r0, 0x2c8(r3)
/* 801E0768 001DD6A8  2C 00 FF FF */	cmpwi r0, -1
/* 801E076C 001DD6AC  40 82 00 30 */	bne lbl_801E079C
/* 801E0770 001DD6B0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801E0774 001DD6B4  2C 03 00 00 */	cmpwi r3, 0
/* 801E0778 001DD6B8  40 81 00 3C */	ble lbl_801E07B4
/* 801E077C 001DD6BC  38 03 FF FB */	addi r0, r3, -5
/* 801E0780 001DD6C0  90 1E 00 18 */	stw r0, 0x18(r30)
/* 801E0784 001DD6C4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 801E0788 001DD6C8  2C 00 00 00 */	cmpwi r0, 0
/* 801E078C 001DD6CC  40 80 00 28 */	bge lbl_801E07B4
/* 801E0790 001DD6D0  38 00 00 00 */	li r0, 0
/* 801E0794 001DD6D4  90 1E 00 18 */	stw r0, 0x18(r30)
/* 801E0798 001DD6D8  48 00 00 1C */	b lbl_801E07B4
lbl_801E079C:
/* 801E079C 001DD6DC  88 1E 00 17 */	lbz r0, 0x17(r30)
/* 801E07A0 001DD6E0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801E07A4 001DD6E4  7C 00 18 00 */	cmpw r0, r3
/* 801E07A8 001DD6E8  40 81 00 0C */	ble lbl_801E07B4
/* 801E07AC 001DD6EC  38 03 00 03 */	addi r0, r3, 3
/* 801E07B0 001DD6F0  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_801E07B4:
/* 801E07B4 001DD6F4  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 801E07B8 001DD6F8  2C 04 00 00 */	cmpwi r4, 0
/* 801E07BC 001DD6FC  41 82 02 9C */	beq lbl_801E0A58
/* 801E07C0 001DD700  88 1E 00 17 */	lbz r0, 0x17(r30)
/* 801E07C4 001DD704  38 61 00 7C */	addi r3, r1, 0x7c
/* 801E07C8 001DD708  7F E4 00 50 */	subf r31, r4, r0
/* 801E07CC 001DD70C  4B EB 3A E5 */	bl PSMTXIdentity
/* 801E07D0 001DD710  38 61 00 7C */	addi r3, r1, 0x7c
/* 801E07D4 001DD714  38 80 00 00 */	li r4, 0
/* 801E07D8 001DD718  4B EC CF 55 */	bl GXLoadPosMtxImm
/* 801E07DC 001DD71C  38 60 00 00 */	li r3, 0
/* 801E07E0 001DD720  4B EC D0 2D */	bl GXSetCurrentMtx
/* 801E07E4 001DD724  38 60 00 00 */	li r3, 0
/* 801E07E8 001DD728  38 80 00 09 */	li r4, 9
/* 801E07EC 001DD72C  38 A0 00 00 */	li r5, 0
/* 801E07F0 001DD730  38 C0 00 03 */	li r6, 3
/* 801E07F4 001DD734  38 E0 00 00 */	li r7, 0
/* 801E07F8 001DD738  4B EC 6B BD */	bl GXSetVtxAttrFmt
/* 801E07FC 001DD73C  38 60 00 00 */	li r3, 0
/* 801E0800 001DD740  38 80 00 0D */	li r4, 0xd
/* 801E0804 001DD744  38 A0 00 01 */	li r5, 1
/* 801E0808 001DD748  38 C0 00 02 */	li r6, 2
/* 801E080C 001DD74C  38 E0 00 00 */	li r7, 0
/* 801E0810 001DD750  4B EC 6B A5 */	bl GXSetVtxAttrFmt
/* 801E0814 001DD754  4B EC 6B 55 */	bl GXClearVtxDesc
/* 801E0818 001DD758  38 60 00 09 */	li r3, 9
/* 801E081C 001DD75C  38 80 00 01 */	li r4, 1
/* 801E0820 001DD760  4B EC 60 C9 */	bl GXSetVtxDesc
/* 801E0824 001DD764  38 60 00 0D */	li r3, 0xd
/* 801E0828 001DD768  38 80 00 01 */	li r4, 1
/* 801E082C 001DD76C  4B EC 60 BD */	bl GXSetVtxDesc
/* 801E0830 001DD770  38 60 00 01 */	li r3, 1
/* 801E0834 001DD774  4B EC 97 71 */	bl GXSetNumChans
/* 801E0838 001DD778  38 60 00 04 */	li r3, 4
/* 801E083C 001DD77C  38 80 00 00 */	li r4, 0
/* 801E0840 001DD780  38 A0 00 00 */	li r5, 0
/* 801E0844 001DD784  38 C0 00 00 */	li r6, 0
/* 801E0848 001DD788  38 E0 00 00 */	li r7, 0
/* 801E084C 001DD78C  39 00 00 00 */	li r8, 0
/* 801E0850 001DD790  39 20 00 02 */	li r9, 2
/* 801E0854 001DD794  4B EC 97 9D */	bl GXSetChanCtrl
/* 801E0858 001DD798  38 60 00 05 */	li r3, 5
/* 801E085C 001DD79C  38 80 00 00 */	li r4, 0
/* 801E0860 001DD7A0  38 A0 00 00 */	li r5, 0
/* 801E0864 001DD7A4  38 C0 00 00 */	li r6, 0
/* 801E0868 001DD7A8  38 E0 00 00 */	li r7, 0
/* 801E086C 001DD7AC  39 00 00 00 */	li r8, 0
/* 801E0870 001DD7B0  39 20 00 02 */	li r9, 2
/* 801E0874 001DD7B4  4B EC 97 7D */	bl GXSetChanCtrl
/* 801E0878 001DD7B8  80 02 CE 08 */	lwz r0, $$22341@sda21(r2)
/* 801E087C 001DD7BC  38 81 00 24 */	addi r4, r1, 0x24
/* 801E0880 001DD7C0  38 60 00 04 */	li r3, 4
/* 801E0884 001DD7C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 801E0888 001DD7C8  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 801E088C 001DD7CC  98 01 00 20 */	stb r0, 0x20(r1)
/* 801E0890 001DD7D0  88 1E 00 15 */	lbz r0, 0x15(r30)
/* 801E0894 001DD7D4  98 01 00 21 */	stb r0, 0x21(r1)
/* 801E0898 001DD7D8  88 1E 00 16 */	lbz r0, 0x16(r30)
/* 801E089C 001DD7DC  98 01 00 22 */	stb r0, 0x22(r1)
/* 801E08A0 001DD7E0  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 801E08A4 001DD7E4  98 01 00 23 */	stb r0, 0x23(r1)
/* 801E08A8 001DD7E8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801E08AC 001DD7EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E08B0 001DD7F0  4B EC 95 8D */	bl GXSetChanMatColor
/* 801E08B4 001DD7F4  38 60 00 01 */	li r3, 1
/* 801E08B8 001DD7F8  4B EC 78 99 */	bl GXSetNumTexGens
/* 801E08BC 001DD7FC  38 60 00 00 */	li r3, 0
/* 801E08C0 001DD800  38 80 00 01 */	li r4, 1
/* 801E08C4 001DD804  38 A0 00 04 */	li r5, 4
/* 801E08C8 001DD808  38 C0 00 3C */	li r6, 0x3c
/* 801E08CC 001DD80C  38 E0 00 00 */	li r7, 0
/* 801E08D0 001DD810  39 00 00 7D */	li r8, 0x7d
/* 801E08D4 001DD814  4B EC 75 AD */	bl GXSetTexCoordGen2
/* 801E08D8 001DD818  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 801E08DC 001DD81C  3B 60 00 00 */	li r27, 0
/* 801E08E0 001DD820  38 61 00 28 */	addi r3, r1, 0x28
/* 801E08E4 001DD824  93 61 00 50 */	stw r27, 0x50(r1)
/* 801E08E8 001DD828  4B E3 2D 95 */	bl storeTIMG__10JUTTextureFPC7ResTIMG
/* 801E08EC 001DD82C  9B 61 00 78 */	stb r27, 0x78(r1)
/* 801E08F0 001DD830  38 61 00 28 */	addi r3, r1, 0x28
/* 801E08F4 001DD834  38 80 00 00 */	li r4, 0
/* 801E08F8 001DD838  4B E3 31 81 */	bl load__10JUTTextureF11_GXTexMapID
/* 801E08FC 001DD83C  38 60 00 01 */	li r3, 1
/* 801E0900 001DD840  4B EC BB 0D */	bl GXSetNumTevStages
/* 801E0904 001DD844  38 60 00 00 */	li r3, 0
/* 801E0908 001DD848  38 80 00 00 */	li r4, 0
/* 801E090C 001DD84C  38 A0 00 00 */	li r5, 0
/* 801E0910 001DD850  38 C0 00 04 */	li r6, 4
/* 801E0914 001DD854  4B EC B9 1D */	bl GXSetTevOrder
/* 801E0918 001DD858  38 60 00 00 */	li r3, 0
/* 801E091C 001DD85C  38 80 00 0A */	li r4, 0xa
/* 801E0920 001DD860  38 A0 00 0F */	li r5, 0xf
/* 801E0924 001DD864  38 C0 00 0F */	li r6, 0xf
/* 801E0928 001DD868  38 E0 00 0F */	li r7, 0xf
/* 801E092C 001DD86C  4B EC B2 81 */	bl GXSetTevColorIn
/* 801E0930 001DD870  38 60 00 00 */	li r3, 0
/* 801E0934 001DD874  38 80 00 00 */	li r4, 0
/* 801E0938 001DD878  38 A0 00 00 */	li r5, 0
/* 801E093C 001DD87C  38 C0 00 00 */	li r6, 0
/* 801E0940 001DD880  38 E0 00 01 */	li r7, 1
/* 801E0944 001DD884  39 00 00 00 */	li r8, 0
/* 801E0948 001DD888  4B EC B3 69 */	bl GXSetTevColorOp
/* 801E094C 001DD88C  38 60 00 00 */	li r3, 0
/* 801E0950 001DD890  38 80 00 07 */	li r4, 7
/* 801E0954 001DD894  38 A0 00 05 */	li r5, 5
/* 801E0958 001DD898  38 C0 00 04 */	li r6, 4
/* 801E095C 001DD89C  38 E0 00 07 */	li r7, 7
/* 801E0960 001DD8A0  4B EC B2 CD */	bl GXSetTevAlphaIn
/* 801E0964 001DD8A4  38 60 00 00 */	li r3, 0
/* 801E0968 001DD8A8  38 80 00 00 */	li r4, 0
/* 801E096C 001DD8AC  38 A0 00 00 */	li r5, 0
/* 801E0970 001DD8B0  38 C0 00 00 */	li r6, 0
/* 801E0974 001DD8B4  38 E0 00 01 */	li r7, 1
/* 801E0978 001DD8B8  39 00 00 00 */	li r8, 0
/* 801E097C 001DD8BC  4B EC B3 F5 */	bl GXSetTevAlphaOp
/* 801E0980 001DD8C0  38 60 00 01 */	li r3, 1
/* 801E0984 001DD8C4  38 80 00 04 */	li r4, 4
/* 801E0988 001DD8C8  38 A0 00 05 */	li r5, 5
/* 801E098C 001DD8CC  38 C0 00 05 */	li r6, 5
/* 801E0990 001DD8D0  4B EC BD 61 */	bl GXSetBlendMode
/* 801E0994 001DD8D4  38 60 00 00 */	li r3, 0
/* 801E0998 001DD8D8  4B EC BF 55 */	bl GXSetZCompLoc
/* 801E099C 001DD8DC  38 60 00 07 */	li r3, 7
/* 801E09A0 001DD8E0  38 80 00 00 */	li r4, 0
/* 801E09A4 001DD8E4  38 A0 00 00 */	li r5, 0
/* 801E09A8 001DD8E8  38 C0 00 07 */	li r6, 7
/* 801E09AC 001DD8EC  38 E0 00 00 */	li r7, 0
/* 801E09B0 001DD8F0  4B EC B7 AD */	bl GXSetAlphaCompare
/* 801E09B4 001DD8F4  38 60 00 00 */	li r3, 0
/* 801E09B8 001DD8F8  38 80 00 07 */	li r4, 7
/* 801E09BC 001DD8FC  38 A0 00 00 */	li r5, 0
/* 801E09C0 001DD900  4B EC BE B5 */	bl GXSetZMode
/* 801E09C4 001DD904  38 60 00 00 */	li r3, 0
/* 801E09C8 001DD908  4B EC 81 69 */	bl GXSetCullMode
/* 801E09CC 001DD90C  38 60 00 80 */	li r3, 0x80
/* 801E09D0 001DD910  38 80 00 00 */	li r4, 0
/* 801E09D4 001DD914  38 A0 00 04 */	li r5, 4
/* 801E09D8 001DD918  4B EC 7E D1 */	bl GXBegin
/* 801E09DC 001DD91C  7C 1F 00 D0 */	neg r0, r31
/* 801E09E0 001DD920  7C 1C 07 34 */	extsh r28, r0
/* 801E09E4 001DD924  3F A0 CC 01 */	lis r29, 0xCC008000@ha
/* 801E09E8 001DD928  B3 9D 80 00 */	sth r28, 0xCC008000@l(r29)
/* 801E09EC 001DD92C  B3 9D 80 00 */	sth r28, -0x8000(r29)
/* 801E09F0 001DD930  B3 7D 80 00 */	sth r27, -0x8000(r29)
/* 801E09F4 001DD934  B3 7D 80 00 */	sth r27, -0x8000(r29)
/* 801E09F8 001DD938  4B F1 BC 45 */	bl SMSGetGameRenderWidth__Fv
/* 801E09FC 001DD93C  7C 1F 1A 14 */	add r0, r31, r3
/* 801E0A00 001DD940  B0 1D 80 00 */	sth r0, -0x8000(r29)
/* 801E0A04 001DD944  3B C0 00 01 */	li r30, 1
/* 801E0A08 001DD948  B3 9D 80 00 */	sth r28, -0x8000(r29)
/* 801E0A0C 001DD94C  B3 DD 80 00 */	sth r30, -0x8000(r29)
/* 801E0A10 001DD950  B3 7D 80 00 */	sth r27, -0x8000(r29)
/* 801E0A14 001DD954  4B F1 BC 21 */	bl SMSGetGameRenderHeight__Fv
/* 801E0A18 001DD958  7F 5F 1A 14 */	add r26, r31, r3
/* 801E0A1C 001DD95C  4B F1 BC 21 */	bl SMSGetGameRenderWidth__Fv
/* 801E0A20 001DD960  7C 1F 1A 14 */	add r0, r31, r3
/* 801E0A24 001DD964  B0 1D 80 00 */	sth r0, -0x8000(r29)
/* 801E0A28 001DD968  B3 5D 80 00 */	sth r26, -0x8000(r29)
/* 801E0A2C 001DD96C  B3 DD 80 00 */	sth r30, -0x8000(r29)
/* 801E0A30 001DD970  B3 DD 80 00 */	sth r30, -0x8000(r29)
/* 801E0A34 001DD974  4B F1 BC 01 */	bl SMSGetGameRenderHeight__Fv
/* 801E0A38 001DD978  B3 9D 80 00 */	sth r28, -0x8000(r29)
/* 801E0A3C 001DD97C  7C 1F 1A 14 */	add r0, r31, r3
/* 801E0A40 001DD980  38 61 00 28 */	addi r3, r1, 0x28
/* 801E0A44 001DD984  B0 1D 80 00 */	sth r0, -0x8000(r29)
/* 801E0A48 001DD988  38 80 FF FF */	li r4, -1
/* 801E0A4C 001DD98C  B3 7D 80 00 */	sth r27, -0x8000(r29)
/* 801E0A50 001DD990  B3 DD 80 00 */	sth r30, -0x8000(r29)
/* 801E0A54 001DD994  4B E3 2B B9 */	bl __dt__10JUTTextureFv
lbl_801E0A58:
/* 801E0A58 001DD998  BB 41 00 B0 */	lmw r26, 0xb0(r1)
/* 801E0A5C 001DD99C  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 801E0A60 001DD9A0  38 21 00 C8 */	addi r1, r1, 0xc8
/* 801E0A64 001DD9A4  7C 08 03 A6 */	mtlr r0
/* 801E0A68 001DD9A8  4E 80 00 20 */	blr 

.global __sinit_MapDraw_cpp
__sinit_MapDraw_cpp:
/* 801E0A6C 001DD9AC  7C 08 02 A6 */	mflr r0
/* 801E0A70 001DD9B0  3C 60 80 3F */	lis r3, $$22402@ha
/* 801E0A74 001DD9B4  90 01 00 04 */	stw r0, 4(r1)
/* 801E0A78 001DD9B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E0A7C 001DD9BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E0A80 001DD9C0  3B E3 7A 10 */	addi r31, r3, $$22402@l
/* 801E0A84 001DD9C4  88 0D 97 CC */	lbz r0, __init__smList__15JALList$$05MSBgm$$1@sda21(r13)
/* 801E0A88 001DD9C8  7C 00 07 75 */	extsb. r0, r0
/* 801E0A8C 001DD9CC  40 82 00 28 */	bne lbl_801E0AB4
/* 801E0A90 001DD9D0  38 6D 97 A8 */	addi r3, r13, smList__15JALList$$05MSBgm$$1@sda21
/* 801E0A94 001DD9D4  4B E2 E1 A1 */	bl initiate__10JSUPtrListFv
/* 801E0A98 001DD9D8  3C 60 80 0E */	lis r3, __dt__15JSUList$$05MSBgm$$1Fv@ha
/* 801E0A9C 001DD9DC  38 83 6A 44 */	addi r4, r3, __dt__15JSUList$$05MSBgm$$1Fv@l
/* 801E0AA0 001DD9E0  38 6D 97 A8 */	addi r3, r13, smList__15JALList$$05MSBgm$$1@sda21
/* 801E0AA4 001DD9E4  38 BF 00 00 */	addi r5, r31, 0
/* 801E0AA8 001DD9E8  4B EA 1C 81 */	bl __register_global_object
/* 801E0AAC 001DD9EC  38 00 00 01 */	li r0, 1
/* 801E0AB0 001DD9F0  98 0D 97 CC */	stb r0, __init__smList__15JALList$$05MSBgm$$1@sda21(r13)
lbl_801E0AB4:
/* 801E0AB4 001DD9F4  88 0D 97 CD */	lbz r0, __init__smList__24JALList$$013MSSetSoundGrp$$1@sda21(r13)
/* 801E0AB8 001DD9F8  7C 00 07 75 */	extsb. r0, r0
/* 801E0ABC 001DD9FC  40 82 00 28 */	bne lbl_801E0AE4
/* 801E0AC0 001DDA00  38 6D 97 B4 */	addi r3, r13, smList__24JALList$$013MSSetSoundGrp$$1@sda21
/* 801E0AC4 001DDA04  4B E2 E1 71 */	bl initiate__10JSUPtrListFv
/* 801E0AC8 001DDA08  3C 60 80 0E */	lis r3, __dt__24JSUList$$013MSSetSoundGrp$$1Fv@ha
/* 801E0ACC 001DDA0C  38 83 69 EC */	addi r4, r3, __dt__24JSUList$$013MSSetSoundGrp$$1Fv@l
/* 801E0AD0 001DDA10  38 6D 97 B4 */	addi r3, r13, smList__24JALList$$013MSSetSoundGrp$$1@sda21
/* 801E0AD4 001DDA14  38 BF 00 0C */	addi r5, r31, 0xc
/* 801E0AD8 001DDA18  4B EA 1C 51 */	bl __register_global_object
/* 801E0ADC 001DDA1C  38 00 00 01 */	li r0, 1
/* 801E0AE0 001DDA20  98 0D 97 CD */	stb r0, __init__smList__24JALList$$013MSSetSoundGrp$$1@sda21(r13)
lbl_801E0AE4:
/* 801E0AE4 001DDA24  88 0D 97 CE */	lbz r0, __init__smList__21JALList$$010MSSetSound$$1@sda21(r13)
/* 801E0AE8 001DDA28  7C 00 07 75 */	extsb. r0, r0
/* 801E0AEC 001DDA2C  40 82 00 28 */	bne lbl_801E0B14
/* 801E0AF0 001DDA30  38 6D 97 C0 */	addi r3, r13, smList__21JALList$$010MSSetSound$$1@sda21
/* 801E0AF4 001DDA34  4B E2 E1 41 */	bl initiate__10JSUPtrListFv
/* 801E0AF8 001DDA38  3C 60 80 0E */	lis r3, __dt__21JSUList$$010MSSetSound$$1Fv@ha
/* 801E0AFC 001DDA3C  38 83 69 94 */	addi r4, r3, __dt__21JSUList$$010MSSetSound$$1Fv@l
/* 801E0B00 001DDA40  38 6D 97 C0 */	addi r3, r13, smList__21JALList$$010MSSetSound$$1@sda21
/* 801E0B04 001DDA44  38 BF 00 18 */	addi r5, r31, 0x18
/* 801E0B08 001DDA48  4B EA 1C 21 */	bl __register_global_object
/* 801E0B0C 001DDA4C  38 00 00 01 */	li r0, 1
/* 801E0B10 001DDA50  98 0D 97 CE */	stb r0, __init__smList__21JALList$$010MSSetSound$$1@sda21(r13)
lbl_801E0B14:
/* 801E0B14 001DDA54  88 0D 8F 8C */	lbz r0, __init__smList__26JALList$$015JALSeModEffDGrp$$1@sda21(r13)
/* 801E0B18 001DDA58  7C 00 07 75 */	extsb. r0, r0
/* 801E0B1C 001DDA5C  40 82 00 28 */	bne lbl_801E0B44
/* 801E0B20 001DDA60  38 6D 8E FC */	addi r3, r13, smList__26JALList$$015JALSeModEffDGrp$$1@sda21
/* 801E0B24 001DDA64  4B E2 E1 11 */	bl initiate__10JSUPtrListFv
/* 801E0B28 001DDA68  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModEffDGrp$$1Fv@ha
/* 801E0B2C 001DDA6C  38 83 A8 0C */	addi r4, r3, __dt__26JSUList$$015JALSeModEffDGrp$$1Fv@l
/* 801E0B30 001DDA70  38 6D 8E FC */	addi r3, r13, smList__26JALList$$015JALSeModEffDGrp$$1@sda21
/* 801E0B34 001DDA74  38 BF 00 24 */	addi r5, r31, 0x24
/* 801E0B38 001DDA78  4B EA 1B F1 */	bl __register_global_object
/* 801E0B3C 001DDA7C  38 00 00 01 */	li r0, 1
/* 801E0B40 001DDA80  98 0D 8F 8C */	stb r0, __init__smList__26JALList$$015JALSeModEffDGrp$$1@sda21(r13)
lbl_801E0B44:
/* 801E0B44 001DDA84  88 0D 8F 8D */	lbz r0, __init__smList__26JALList$$015JALSeModPitDGrp$$1@sda21(r13)
/* 801E0B48 001DDA88  7C 00 07 75 */	extsb. r0, r0
/* 801E0B4C 001DDA8C  40 82 00 28 */	bne lbl_801E0B74
/* 801E0B50 001DDA90  38 6D 8F 08 */	addi r3, r13, smList__26JALList$$015JALSeModPitDGrp$$1@sda21
/* 801E0B54 001DDA94  4B E2 E0 E1 */	bl initiate__10JSUPtrListFv
/* 801E0B58 001DDA98  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModPitDGrp$$1Fv@ha
/* 801E0B5C 001DDA9C  38 83 A7 B4 */	addi r4, r3, __dt__26JSUList$$015JALSeModPitDGrp$$1Fv@l
/* 801E0B60 001DDAA0  38 6D 8F 08 */	addi r3, r13, smList__26JALList$$015JALSeModPitDGrp$$1@sda21
/* 801E0B64 001DDAA4  38 BF 00 30 */	addi r5, r31, 0x30
/* 801E0B68 001DDAA8  4B EA 1B C1 */	bl __register_global_object
/* 801E0B6C 001DDAAC  38 00 00 01 */	li r0, 1
/* 801E0B70 001DDAB0  98 0D 8F 8D */	stb r0, __init__smList__26JALList$$015JALSeModPitDGrp$$1@sda21(r13)
lbl_801E0B74:
/* 801E0B74 001DDAB4  88 0D 8F 8E */	lbz r0, __init__smList__26JALList$$015JALSeModVolDGrp$$1@sda21(r13)
/* 801E0B78 001DDAB8  7C 00 07 75 */	extsb. r0, r0
/* 801E0B7C 001DDABC  40 82 00 28 */	bne lbl_801E0BA4
/* 801E0B80 001DDAC0  38 6D 8F 14 */	addi r3, r13, smList__26JALList$$015JALSeModVolDGrp$$1@sda21
/* 801E0B84 001DDAC4  4B E2 E0 B1 */	bl initiate__10JSUPtrListFv
/* 801E0B88 001DDAC8  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModVolDGrp$$1Fv@ha
/* 801E0B8C 001DDACC  38 83 A7 5C */	addi r4, r3, __dt__26JSUList$$015JALSeModVolDGrp$$1Fv@l
/* 801E0B90 001DDAD0  38 6D 8F 14 */	addi r3, r13, smList__26JALList$$015JALSeModVolDGrp$$1@sda21
/* 801E0B94 001DDAD4  38 BF 00 3C */	addi r5, r31, 0x3c
/* 801E0B98 001DDAD8  4B EA 1B 91 */	bl __register_global_object
/* 801E0B9C 001DDADC  38 00 00 01 */	li r0, 1
/* 801E0BA0 001DDAE0  98 0D 8F 8E */	stb r0, __init__smList__26JALList$$015JALSeModVolDGrp$$1@sda21(r13)
lbl_801E0BA4:
/* 801E0BA4 001DDAE4  88 0D 8F 8F */	lbz r0, __init__smList__26JALList$$015JALSeModEffFGrp$$1@sda21(r13)
/* 801E0BA8 001DDAE8  7C 00 07 75 */	extsb. r0, r0
/* 801E0BAC 001DDAEC  40 82 00 28 */	bne lbl_801E0BD4
/* 801E0BB0 001DDAF0  38 6D 8F 20 */	addi r3, r13, smList__26JALList$$015JALSeModEffFGrp$$1@sda21
/* 801E0BB4 001DDAF4  4B E2 E0 81 */	bl initiate__10JSUPtrListFv
/* 801E0BB8 001DDAF8  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModEffFGrp$$1Fv@ha
/* 801E0BBC 001DDAFC  38 83 A7 04 */	addi r4, r3, __dt__26JSUList$$015JALSeModEffFGrp$$1Fv@l
/* 801E0BC0 001DDB00  38 6D 8F 20 */	addi r3, r13, smList__26JALList$$015JALSeModEffFGrp$$1@sda21
/* 801E0BC4 001DDB04  38 BF 00 48 */	addi r5, r31, 0x48
/* 801E0BC8 001DDB08  4B EA 1B 61 */	bl __register_global_object
/* 801E0BCC 001DDB0C  38 00 00 01 */	li r0, 1
/* 801E0BD0 001DDB10  98 0D 8F 8F */	stb r0, __init__smList__26JALList$$015JALSeModEffFGrp$$1@sda21(r13)
lbl_801E0BD4:
/* 801E0BD4 001DDB14  88 0D 8F 90 */	lbz r0, __init__smList__26JALList$$015JALSeModPitFGrp$$1@sda21(r13)
/* 801E0BD8 001DDB18  7C 00 07 75 */	extsb. r0, r0
/* 801E0BDC 001DDB1C  40 82 00 28 */	bne lbl_801E0C04
/* 801E0BE0 001DDB20  38 6D 8F 2C */	addi r3, r13, smList__26JALList$$015JALSeModPitFGrp$$1@sda21
/* 801E0BE4 001DDB24  4B E2 E0 51 */	bl initiate__10JSUPtrListFv
/* 801E0BE8 001DDB28  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModPitFGrp$$1Fv@ha
/* 801E0BEC 001DDB2C  38 83 A6 AC */	addi r4, r3, __dt__26JSUList$$015JALSeModPitFGrp$$1Fv@l
/* 801E0BF0 001DDB30  38 6D 8F 2C */	addi r3, r13, smList__26JALList$$015JALSeModPitFGrp$$1@sda21
/* 801E0BF4 001DDB34  38 BF 00 54 */	addi r5, r31, 0x54
/* 801E0BF8 001DDB38  4B EA 1B 31 */	bl __register_global_object
/* 801E0BFC 001DDB3C  38 00 00 01 */	li r0, 1
/* 801E0C00 001DDB40  98 0D 8F 90 */	stb r0, __init__smList__26JALList$$015JALSeModPitFGrp$$1@sda21(r13)
lbl_801E0C04:
/* 801E0C04 001DDB44  88 0D 8F 91 */	lbz r0, __init__smList__26JALList$$015JALSeModVolFGrp$$1@sda21(r13)
/* 801E0C08 001DDB48  7C 00 07 75 */	extsb. r0, r0
/* 801E0C0C 001DDB4C  40 82 00 28 */	bne lbl_801E0C34
/* 801E0C10 001DDB50  38 6D 8F 38 */	addi r3, r13, smList__26JALList$$015JALSeModVolFGrp$$1@sda21
/* 801E0C14 001DDB54  4B E2 E0 21 */	bl initiate__10JSUPtrListFv
/* 801E0C18 001DDB58  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModVolFGrp$$1Fv@ha
/* 801E0C1C 001DDB5C  38 83 A6 54 */	addi r4, r3, __dt__26JSUList$$015JALSeModVolFGrp$$1Fv@l
/* 801E0C20 001DDB60  38 6D 8F 38 */	addi r3, r13, smList__26JALList$$015JALSeModVolFGrp$$1@sda21
/* 801E0C24 001DDB64  38 BF 00 60 */	addi r5, r31, 0x60
/* 801E0C28 001DDB68  4B EA 1B 01 */	bl __register_global_object
/* 801E0C2C 001DDB6C  38 00 00 01 */	li r0, 1
/* 801E0C30 001DDB70  98 0D 8F 91 */	stb r0, __init__smList__26JALList$$015JALSeModVolFGrp$$1@sda21(r13)
lbl_801E0C34:
/* 801E0C34 001DDB74  88 0D 8F 92 */	lbz r0, __init__smList__26JALList$$015JALSeModEffDist$$1@sda21(r13)
/* 801E0C38 001DDB78  7C 00 07 75 */	extsb. r0, r0
/* 801E0C3C 001DDB7C  40 82 00 28 */	bne lbl_801E0C64
/* 801E0C40 001DDB80  38 6D 8F 44 */	addi r3, r13, smList__26JALList$$015JALSeModEffDist$$1@sda21
/* 801E0C44 001DDB84  4B E2 DF F1 */	bl initiate__10JSUPtrListFv
/* 801E0C48 001DDB88  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModEffDist$$1Fv@ha
/* 801E0C4C 001DDB8C  38 83 A5 FC */	addi r4, r3, __dt__26JSUList$$015JALSeModEffDist$$1Fv@l
/* 801E0C50 001DDB90  38 6D 8F 44 */	addi r3, r13, smList__26JALList$$015JALSeModEffDist$$1@sda21
/* 801E0C54 001DDB94  38 BF 00 6C */	addi r5, r31, 0x6c
/* 801E0C58 001DDB98  4B EA 1A D1 */	bl __register_global_object
/* 801E0C5C 001DDB9C  38 00 00 01 */	li r0, 1
/* 801E0C60 001DDBA0  98 0D 8F 92 */	stb r0, __init__smList__26JALList$$015JALSeModEffDist$$1@sda21(r13)
lbl_801E0C64:
/* 801E0C64 001DDBA4  88 0D 8F 93 */	lbz r0, __init__smList__26JALList$$015JALSeModPitDist$$1@sda21(r13)
/* 801E0C68 001DDBA8  7C 00 07 75 */	extsb. r0, r0
/* 801E0C6C 001DDBAC  40 82 00 28 */	bne lbl_801E0C94
/* 801E0C70 001DDBB0  38 6D 8F 50 */	addi r3, r13, smList__26JALList$$015JALSeModPitDist$$1@sda21
/* 801E0C74 001DDBB4  4B E2 DF C1 */	bl initiate__10JSUPtrListFv
/* 801E0C78 001DDBB8  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModPitDist$$1Fv@ha
/* 801E0C7C 001DDBBC  38 83 A5 A4 */	addi r4, r3, __dt__26JSUList$$015JALSeModPitDist$$1Fv@l
/* 801E0C80 001DDBC0  38 6D 8F 50 */	addi r3, r13, smList__26JALList$$015JALSeModPitDist$$1@sda21
/* 801E0C84 001DDBC4  38 BF 00 78 */	addi r5, r31, 0x78
/* 801E0C88 001DDBC8  4B EA 1A A1 */	bl __register_global_object
/* 801E0C8C 001DDBCC  38 00 00 01 */	li r0, 1
/* 801E0C90 001DDBD0  98 0D 8F 93 */	stb r0, __init__smList__26JALList$$015JALSeModPitDist$$1@sda21(r13)
lbl_801E0C94:
/* 801E0C94 001DDBD4  88 0D 8F 94 */	lbz r0, __init__smList__26JALList$$015JALSeModVolDist$$1@sda21(r13)
/* 801E0C98 001DDBD8  7C 00 07 75 */	extsb. r0, r0
/* 801E0C9C 001DDBDC  40 82 00 28 */	bne lbl_801E0CC4
/* 801E0CA0 001DDBE0  38 6D 8F 5C */	addi r3, r13, smList__26JALList$$015JALSeModVolDist$$1@sda21
/* 801E0CA4 001DDBE4  4B E2 DF 91 */	bl initiate__10JSUPtrListFv
/* 801E0CA8 001DDBE8  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModVolDist$$1Fv@ha
/* 801E0CAC 001DDBEC  38 83 A5 4C */	addi r4, r3, __dt__26JSUList$$015JALSeModVolDist$$1Fv@l
/* 801E0CB0 001DDBF0  38 6D 8F 5C */	addi r3, r13, smList__26JALList$$015JALSeModVolDist$$1@sda21
/* 801E0CB4 001DDBF4  38 BF 00 84 */	addi r5, r31, 0x84
/* 801E0CB8 001DDBF8  4B EA 1A 71 */	bl __register_global_object
/* 801E0CBC 001DDBFC  38 00 00 01 */	li r0, 1
/* 801E0CC0 001DDC00  98 0D 8F 94 */	stb r0, __init__smList__26JALList$$015JALSeModVolDist$$1@sda21(r13)
lbl_801E0CC4:
/* 801E0CC4 001DDC04  88 0D 8F 95 */	lbz r0, __init__smList__26JALList$$015JALSeModEffFunk$$1@sda21(r13)
/* 801E0CC8 001DDC08  7C 00 07 75 */	extsb. r0, r0
/* 801E0CCC 001DDC0C  40 82 00 28 */	bne lbl_801E0CF4
/* 801E0CD0 001DDC10  38 6D 8F 68 */	addi r3, r13, smList__26JALList$$015JALSeModEffFunk$$1@sda21
/* 801E0CD4 001DDC14  4B E2 DF 61 */	bl initiate__10JSUPtrListFv
/* 801E0CD8 001DDC18  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModEffFunk$$1Fv@ha
/* 801E0CDC 001DDC1C  38 83 A4 F4 */	addi r4, r3, __dt__26JSUList$$015JALSeModEffFunk$$1Fv@l
/* 801E0CE0 001DDC20  38 6D 8F 68 */	addi r3, r13, smList__26JALList$$015JALSeModEffFunk$$1@sda21
/* 801E0CE4 001DDC24  38 BF 00 90 */	addi r5, r31, 0x90
/* 801E0CE8 001DDC28  4B EA 1A 41 */	bl __register_global_object
/* 801E0CEC 001DDC2C  38 00 00 01 */	li r0, 1
/* 801E0CF0 001DDC30  98 0D 8F 95 */	stb r0, __init__smList__26JALList$$015JALSeModEffFunk$$1@sda21(r13)
lbl_801E0CF4:
/* 801E0CF4 001DDC34  88 0D 8F 96 */	lbz r0, __init__smList__26JALList$$015JALSeModPitFunk$$1@sda21(r13)
/* 801E0CF8 001DDC38  7C 00 07 75 */	extsb. r0, r0
/* 801E0CFC 001DDC3C  40 82 00 28 */	bne lbl_801E0D24
/* 801E0D00 001DDC40  38 6D 8F 74 */	addi r3, r13, smList__26JALList$$015JALSeModPitFunk$$1@sda21
/* 801E0D04 001DDC44  4B E2 DF 31 */	bl initiate__10JSUPtrListFv
/* 801E0D08 001DDC48  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModPitFunk$$1Fv@ha
/* 801E0D0C 001DDC4C  38 83 A4 9C */	addi r4, r3, __dt__26JSUList$$015JALSeModPitFunk$$1Fv@l
/* 801E0D10 001DDC50  38 6D 8F 74 */	addi r3, r13, smList__26JALList$$015JALSeModPitFunk$$1@sda21
/* 801E0D14 001DDC54  38 BF 00 9C */	addi r5, r31, 0x9c
/* 801E0D18 001DDC58  4B EA 1A 11 */	bl __register_global_object
/* 801E0D1C 001DDC5C  38 00 00 01 */	li r0, 1
/* 801E0D20 001DDC60  98 0D 8F 96 */	stb r0, __init__smList__26JALList$$015JALSeModPitFunk$$1@sda21(r13)
lbl_801E0D24:
/* 801E0D24 001DDC64  88 0D 8F 97 */	lbz r0, __init__smList__26JALList$$015JALSeModVolFunk$$1@sda21(r13)
/* 801E0D28 001DDC68  7C 00 07 75 */	extsb. r0, r0
/* 801E0D2C 001DDC6C  40 82 00 28 */	bne lbl_801E0D54
/* 801E0D30 001DDC70  38 6D 8F 80 */	addi r3, r13, smList__26JALList$$015JALSeModVolFunk$$1@sda21
/* 801E0D34 001DDC74  4B E2 DF 01 */	bl initiate__10JSUPtrListFv
/* 801E0D38 001DDC78  3C 60 80 05 */	lis r3, __dt__26JSUList$$015JALSeModVolFunk$$1Fv@ha
/* 801E0D3C 001DDC7C  38 83 A4 44 */	addi r4, r3, __dt__26JSUList$$015JALSeModVolFunk$$1Fv@l
/* 801E0D40 001DDC80  38 6D 8F 80 */	addi r3, r13, smList__26JALList$$015JALSeModVolFunk$$1@sda21
/* 801E0D44 001DDC84  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 801E0D48 001DDC88  4B EA 19 E1 */	bl __register_global_object
/* 801E0D4C 001DDC8C  38 00 00 01 */	li r0, 1
/* 801E0D50 001DDC90  98 0D 8F 97 */	stb r0, __init__smList__26JALList$$015JALSeModVolFunk$$1@sda21(r13)
lbl_801E0D54:
/* 801E0D54 001DDC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E0D58 001DDC98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E0D5C 001DDC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 801E0D60 001DDCA0  7C 08 03 A6 */	mtlr r0
/* 801E0D64 001DDCA4  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x8036FBA0 - 0x8036FF80
  .4byte __sinit_MapDraw_cpp

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$22364:
	.incbin "baserom.dol", 0x38E7D8, 0x18

.section .data, "wa"  # 0x803A8380 - 0x803E6000
.global __vt__12TMapDrawWall
__vt__12TMapDrawWall:
  .4byte 0
  .4byte 0
  .4byte __dt__12TMapDrawWallFv
  .4byte getType__Q26JDrama8TNameRefCFv
  .4byte load__12TMapDrawWallFR20JSUMemoryInputStream
  .4byte save__Q26JDrama8TNameRefFR21JSUMemoryOutputStream
  .4byte loadAfter__Q26JDrama8TNameRefFv
  .4byte searchF__Q26JDrama8TNameRefFUsPCc
  .4byte perform__12TMapDrawWallFUlPQ26JDrama9TGraphics
  .4byte 0

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$22341:
  .4byte 0
$$22346:
	.incbin "baserom.dol", 0x3E8B0C, 0x4

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
$$22402:
	.skip 0xC
$$22403:
	.skip 0xC
$$22404:
	.skip 0xC
$$22405:
	.skip 0xC
$$22406:
	.skip 0xC
$$22407:
	.skip 0xC
$$22408:
	.skip 0xC
$$22409:
	.skip 0xC
$$22410:
	.skip 0xC
$$22411:
	.skip 0xC
$$22412:
	.skip 0xC
$$22413:
	.skip 0xC
$$22414:
	.skip 0xC
$$22415:
	.skip 0xC
$$22416:
	.skip 0x10
