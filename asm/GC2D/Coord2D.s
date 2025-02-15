.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global update__8TCoord2DFv
update__8TCoord2DFv:
/* 802006E0 001FD620  7C 08 02 A6 */	mflr r0
/* 802006E4 001FD624  90 01 00 04 */	stw r0, 4(r1)
/* 802006E8 001FD628  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 802006EC 001FD62C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802006F0 001FD630  3B E0 00 00 */	li r31, 0
/* 802006F4 001FD634  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802006F8 001FD638  7C 7E 1B 78 */	mr r30, r3
/* 802006FC 001FD63C  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 80200700 001FD640  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80200704 001FD644  4B F6 9F 95 */	bl CLBChaseGeneralConstantSpecifySpeed$$0f$$1__FPfff
/* 80200708 001FD648  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8020070C 001FD64C  38 7E 00 04 */	addi r3, r30, 4
/* 80200710 001FD650  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80200714 001FD654  4B F6 9F 85 */	bl CLBChaseGeneralConstantSpecifySpeed$$0f$$1__FPfff
/* 80200718 001FD658  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8020071C 001FD65C  38 00 00 00 */	li r0, 0
/* 80200720 001FD660  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80200724 001FD664  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80200728 001FD668  40 82 00 18 */	bne lbl_80200740
/* 8020072C 001FD66C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80200730 001FD670  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80200734 001FD674  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80200738 001FD678  40 82 00 08 */	bne lbl_80200740
/* 8020073C 001FD67C  38 00 00 01 */	li r0, 1
lbl_80200740:
/* 80200740 001FD680  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80200744 001FD684  41 82 00 0C */	beq lbl_80200750
/* 80200748 001FD688  38 00 00 01 */	li r0, 1
/* 8020074C 001FD68C  48 00 00 08 */	b lbl_80200754
lbl_80200750:
/* 80200750 001FD690  38 00 00 00 */	li r0, 0
lbl_80200754:
/* 80200754 001FD694  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80200758 001FD698  41 82 00 14 */	beq lbl_8020076C
/* 8020075C 001FD69C  C0 02 D3 C0 */	lfs f0, $$21644@sda21(r2)
/* 80200760 001FD6A0  3B E0 00 01 */	li r31, 1
/* 80200764 001FD6A4  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 80200768 001FD6A8  D0 1E 00 14 */	stfs f0, 0x14(r30)
lbl_8020076C:
/* 8020076C 001FD6AC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80200770 001FD6B0  7F E3 FB 78 */	mr r3, r31
/* 80200774 001FD6B4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80200778 001FD6B8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8020077C 001FD6BC  7C 08 03 A6 */	mtlr r0
/* 80200780 001FD6C0  38 21 00 18 */	addi r1, r1, 0x18
/* 80200784 001FD6C4  4E 80 00 20 */	blr 

.global setValue__8TCoord2DFlffff
setValue__8TCoord2DFlffff:
/* 80200788 001FD6C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8020078C 001FD6CC  2C 04 00 00 */	cmpwi r4, 0
/* 80200790 001FD6D0  D0 23 00 08 */	stfs f1, 8(r3)
/* 80200794 001FD6D4  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80200798 001FD6D8  D0 63 00 00 */	stfs f3, 0(r3)
/* 8020079C 001FD6DC  D0 83 00 04 */	stfs f4, 4(r3)
/* 802007A0 001FD6E0  41 81 00 14 */	bgt lbl_802007B4
/* 802007A4 001FD6E4  C0 02 D3 C0 */	lfs f0, $$21644@sda21(r2)
/* 802007A8 001FD6E8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 802007AC 001FD6EC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 802007B0 001FD6F0  48 00 00 48 */	b lbl_802007F8
lbl_802007B4:
/* 802007B4 001FD6F4  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 802007B8 001FD6F8  C8 A2 D3 C8 */	lfd f5, $$21652@sda21(r2)
/* 802007BC 001FD6FC  90 81 00 2C */	stw r4, 0x2c(r1)
/* 802007C0 001FD700  3C 00 43 30 */	lis r0, 0x4330
/* 802007C4 001FD704  EC 61 18 28 */	fsubs f3, f1, f3
/* 802007C8 001FD708  90 01 00 28 */	stw r0, 0x28(r1)
/* 802007CC 001FD70C  EC 22 20 28 */	fsubs f1, f2, f4
/* 802007D0 001FD710  90 81 00 24 */	stw r4, 0x24(r1)
/* 802007D4 001FD714  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802007D8 001FD718  90 01 00 20 */	stw r0, 0x20(r1)
/* 802007DC 001FD71C  EC 40 28 28 */	fsubs f2, f0, f5
/* 802007E0 001FD720  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802007E4 001FD724  EC 00 28 28 */	fsubs f0, f0, f5
/* 802007E8 001FD728  EC 43 10 24 */	fdivs f2, f3, f2
/* 802007EC 001FD72C  EC 01 00 24 */	fdivs f0, f1, f0
/* 802007F0 001FD730  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 802007F4 001FD734  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_802007F8:
/* 802007F8 001FD738  38 21 00 30 */	addi r1, r1, 0x30
/* 802007FC 001FD73C  4E 80 00 20 */	blr 

.global __ct__8TCoord2DFv
__ct__8TCoord2DFv:
/* 80200800 001FD740  C0 02 D3 C0 */	lfs f0, $$21644@sda21(r2)
/* 80200804 001FD744  D0 03 00 04 */	stfs f0, 4(r3)
/* 80200808 001FD748  D0 03 00 00 */	stfs f0, 0(r3)
/* 8020080C 001FD74C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80200810 001FD750  D0 03 00 08 */	stfs f0, 8(r3)
/* 80200814 001FD754  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80200818 001FD758  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8020081C 001FD75C  4E 80 00 20 */	blr 

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$21644:
  .4byte 0
  .4byte 0
$$21652:
	.incbin "baserom.dol", 0x3E90C8, 0x8
