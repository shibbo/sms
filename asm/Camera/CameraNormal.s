.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global ctrlNormalOrTowerCamera___15CPolarSubCameraFv
ctrlNormalOrTowerCamera___15CPolarSubCameraFv:
/* 803598E4 00356824  7C 08 02 A6 */	mflr r0
/* 803598E8 00356828  90 01 00 04 */	stw r0, 4(r1)
/* 803598EC 0035682C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 803598F0 00356830  DB E1 00 A8 */	stfd f31, 0xa8(r1)
/* 803598F4 00356834  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 803598F8 00356838  DB A1 00 98 */	stfd f29, 0x98(r1)
/* 803598FC 0035683C  93 E1 00 94 */	stw r31, 0x94(r1)
/* 80359900 00356840  93 C1 00 90 */	stw r30, 0x90(r1)
/* 80359904 00356844  7C 7E 1B 78 */	mr r30, r3
/* 80359908 00356848  80 63 01 20 */	lwz r3, 0x120(r3)
/* 8035990C 0035684C  C0 02 05 D8 */	lfs f0, $$22326@sda21(r2)
/* 80359910 00356850  C3 A3 00 C0 */	lfs f29, 0xc0(r3)
/* 80359914 00356854  C3 E3 00 C4 */	lfs f31, 0xc4(r3)
/* 80359918 00356858  D0 1E 02 50 */	stfs f0, 0x250(r30)
/* 8035991C 0035685C  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 80359920 00356860  28 00 00 00 */	cmplwi r0, 0
/* 80359924 00356864  40 82 00 20 */	bne lbl_80359944
/* 80359928 00356868  80 6D A8 B8 */	lwz r3, gpCameraMario@sda21(r13)
/* 8035992C 0035686C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80359930 00356870  D0 1E 00 8C */	stfs f0, 0x8c(r30)
/* 80359934 00356874  C0 03 00 04 */	lfs f0, 4(r3)
/* 80359938 00356878  D0 1E 00 90 */	stfs f0, 0x90(r30)
/* 8035993C 0035687C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80359940 00356880  D0 1E 00 94 */	stfs f0, 0x94(r30)
lbl_80359944:
/* 80359944 00356884  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 80359948 00356888  28 00 00 00 */	cmplwi r0, 0
/* 8035994C 0035688C  40 82 04 20 */	bne lbl_80359D6C
/* 80359950 00356890  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 80359954 00356894  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80359958 00356898  41 82 00 4C */	beq lbl_803599A4
/* 8035995C 0035689C  A8 9E 02 74 */	lha r4, 0x274(r30)
/* 80359960 003568A0  38 7E 00 A6 */	addi r3, r30, 0xa6
/* 80359964 003568A4  A8 BE 02 76 */	lha r5, 0x276(r30)
/* 80359968 003568A8  4B FF EE 79 */	bl CLBChaseAngleDecrease__FPsss
/* 8035996C 003568AC  2C 03 00 00 */	cmpwi r3, 0
/* 80359970 003568B0  40 82 03 F0 */	bne lbl_80359D60
/* 80359974 003568B4  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 80359978 003568B8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8035997C 003568BC  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 80359980 003568C0  A0 7E 00 64 */	lhz r3, 0x64(r30)
/* 80359984 003568C4  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80359988 003568C8  41 82 03 D8 */	beq lbl_80359D60
/* 8035998C 003568CC  54 60 07 76 */	rlwinm r0, r3, 0, 0x1d, 0x1b
/* 80359990 003568D0  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 80359994 003568D4  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 80359998 003568D8  60 00 00 10 */	ori r0, r0, 0x10
/* 8035999C 003568DC  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 803599A0 003568E0  48 00 03 C0 */	b lbl_80359D60
lbl_803599A4:
/* 803599A4 003568E4  7F C3 F3 78 */	mr r3, r30
/* 803599A8 003568E8  80 9E 00 50 */	lwz r4, 0x50(r30)
/* 803599AC 003568EC  48 00 97 65 */	bl isTowerCameraSpecifyMode__15CPolarSubCameraCFi
/* 803599B0 003568F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803599B4 003568F4  41 82 00 6C */	beq lbl_80359A20
/* 803599B8 003568F8  C0 02 05 D8 */	lfs f0, $$22326@sda21(r2)
/* 803599BC 003568FC  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 803599C0 00356900  41 82 00 28 */	beq lbl_803599E8
/* 803599C4 00356904  7F C3 F3 78 */	mr r3, r30
/* 803599C8 00356908  FC 20 E8 90 */	fmr f1, f29
/* 803599CC 0035690C  4B FF B5 3D */	bl rotateY_ByStickX___15CPolarSubCameraFf
/* 803599D0 00356910  7F C3 F3 78 */	mr r3, r30
/* 803599D4 00356914  4B FF B3 15 */	bl execInvalidAutoChase___15CPolarSubCameraFv
/* 803599D8 00356918  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 803599DC 0035691C  60 00 00 80 */	ori r0, r0, 0x80
/* 803599E0 00356920  B0 1E 00 64 */	sth r0, 0x64(r30)
/* 803599E4 00356924  48 00 03 7C */	b lbl_80359D60
lbl_803599E8:
/* 803599E8 00356928  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 803599EC 0035692C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 803599F0 00356930  40 82 03 70 */	bne lbl_80359D60
/* 803599F4 00356934  7F C3 F3 78 */	mr r3, r30
/* 803599F8 00356938  4B FF B3 01 */	bl isMarioCrabWalk___15CPolarSubCameraCFv
/* 803599FC 0035693C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80359A00 00356940  40 82 03 60 */	bne lbl_80359D60
/* 80359A04 00356944  38 7E 00 00 */	addi r3, r30, 0
/* 80359A08 00356948  38 81 00 70 */	addi r4, r1, 0x70
/* 80359A0C 0035694C  48 00 03 8D */	bl calcTowerCenterPos___15CPolarSubCameraFP3Vec
/* 80359A10 00356950  38 7E 00 00 */	addi r3, r30, 0
/* 80359A14 00356954  38 81 00 70 */	addi r4, r1, 0x70
/* 80359A18 00356958  4B FF F6 69 */	bl calcNoticeTargetYrot___15CPolarSubCameraFRC3Vec
/* 80359A1C 0035695C  48 00 03 44 */	b lbl_80359D60
lbl_80359A20:
/* 80359A20 00356960  C0 02 05 D8 */	lfs f0, $$22326@sda21(r2)
/* 80359A24 00356964  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 80359A28 00356968  41 82 00 1C */	beq lbl_80359A44
/* 80359A2C 0035696C  7F C3 F3 78 */	mr r3, r30
/* 80359A30 00356970  FC 20 E8 90 */	fmr f1, f29
/* 80359A34 00356974  4B FF B4 D5 */	bl rotateY_ByStickX___15CPolarSubCameraFf
/* 80359A38 00356978  7F C3 F3 78 */	mr r3, r30
/* 80359A3C 0035697C  4B FF B2 AD */	bl execInvalidAutoChase___15CPolarSubCameraFv
/* 80359A40 00356980  48 00 03 20 */	b lbl_80359D60
lbl_80359A44:
/* 80359A44 00356984  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 80359A48 00356988  2C 00 00 39 */	cmpwi r0, 0x39
/* 80359A4C 0035698C  40 82 00 28 */	bne lbl_80359A74
/* 80359A50 00356990  7F C3 F3 78 */	mr r3, r30
/* 80359A54 00356994  4B FF 82 09 */	bl isChangeToBossGesoCamera___15CPolarSubCameraCFv
/* 80359A58 00356998  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80359A5C 0035699C  41 82 03 04 */	beq lbl_80359D60
/* 80359A60 003569A0  80 9E 02 A8 */	lwz r4, 0x2a8(r30)
/* 80359A64 003569A4  38 7E 00 00 */	addi r3, r30, 0
/* 80359A68 003569A8  38 84 00 10 */	addi r4, r4, 0x10
/* 80359A6C 003569AC  4B FF F6 15 */	bl calcNoticeTargetYrot___15CPolarSubCameraFRC3Vec
/* 80359A70 003569B0  48 00 02 F0 */	b lbl_80359D60
lbl_80359A74:
/* 80359A74 003569B4  2C 00 00 43 */	cmpwi r0, 0x43
/* 80359A78 003569B8  40 82 00 30 */	bne lbl_80359AA8
/* 80359A7C 003569BC  7F C3 F3 78 */	mr r3, r30
/* 80359A80 003569C0  4B FF 81 B1 */	bl isChangeToCancanCamera___15CPolarSubCameraCFv
/* 80359A84 003569C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80359A88 003569C8  41 82 02 D8 */	beq lbl_80359D60
/* 80359A8C 003569CC  80 6D 98 B8 */	lwz r3, gpMarioOriginal@sda21(r13)
/* 80359A90 003569D0  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 80359A94 003569D4  4B F4 4F F5 */	bl getHostPos__18TFireWanwanTailHitCFv
/* 80359A98 003569D8  38 83 00 00 */	addi r4, r3, 0
/* 80359A9C 003569DC  38 7E 00 00 */	addi r3, r30, 0
/* 80359AA0 003569E0  4B FF F5 E1 */	bl calcNoticeTargetYrot___15CPolarSubCameraFRC3Vec
/* 80359AA4 003569E4  48 00 02 BC */	b lbl_80359D60
lbl_80359AA8:
/* 80359AA8 003569E8  4B DF 90 A1 */	bl SMS_IsMarioTouchGround4cm__Fv
/* 80359AAC 003569EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80359AB0 003569F0  40 82 00 20 */	bne lbl_80359AD0
/* 80359AB4 003569F4  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 80359AB8 003569F8  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80359ABC 003569FC  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 80359AC0 00356A00  C0 43 00 78 */	lfs f2, 0x78(r3)
/* 80359AC4 00356A04  4B E1 0B 71 */	bl CLBLinearInbetween$$0f$$1__Ffff
/* 80359AC8 00356A08  D0 3E 02 50 */	stfs f1, 0x250(r30)
/* 80359ACC 00356A0C  48 00 00 1C */	b lbl_80359AE8
lbl_80359AD0:
/* 80359AD0 00356A10  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 80359AD4 00356A14  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80359AD8 00356A18  C0 23 00 6C */	lfs f1, 0x6c(r3)
/* 80359ADC 00356A1C  C0 43 00 70 */	lfs f2, 0x70(r3)
/* 80359AE0 00356A20  4B E1 0B 55 */	bl CLBLinearInbetween$$0f$$1__Ffff
/* 80359AE4 00356A24  D0 3E 02 50 */	stfs f1, 0x250(r30)
lbl_80359AE8:
/* 80359AE8 00356A28  7F C3 F3 78 */	mr r3, r30
/* 80359AEC 00356A2C  4B FF B1 75 */	bl isMomentDefinite___15CPolarSubCameraCFv
/* 80359AF0 00356A30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80359AF4 00356A34  41 82 00 28 */	beq lbl_80359B1C
/* 80359AF8 00356A38  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 80359AFC 00356A3C  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80359B00 00356A40  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 80359B04 00356A44  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80359B08 00356A48  EC 23 08 28 */	fsubs f1, f3, f1
/* 80359B0C 00356A4C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80359B10 00356A50  4B D6 C6 B5 */	bl matan__Fff
/* 80359B14 00356A54  B0 7E 00 A6 */	sth r3, 0xa6(r30)
/* 80359B18 00356A58  48 00 02 48 */	b lbl_80359D60
lbl_80359B1C:
/* 80359B1C 00356A5C  A0 1E 00 64 */	lhz r0, 0x64(r30)
/* 80359B20 00356A60  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80359B24 00356A64  40 82 02 3C */	bne lbl_80359D60
/* 80359B28 00356A68  7F C3 F3 78 */	mr r3, r30
/* 80359B2C 00356A6C  4B FF B1 CD */	bl isMarioCrabWalk___15CPolarSubCameraCFv
/* 80359B30 00356A70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80359B34 00356A74  40 82 02 2C */	bne lbl_80359D60
/* 80359B38 00356A78  7F C3 F3 78 */	mr r3, r30
/* 80359B3C 00356A7C  4B FF B2 5D */	bl isMarioAimWithGun___15CPolarSubCameraCFv
/* 80359B40 00356A80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80359B44 00356A84  41 82 00 74 */	beq lbl_80359BB8
/* 80359B48 00356A88  7F C3 F3 78 */	mr r3, r30
/* 80359B4C 00356A8C  4B FF 7F E9 */	bl isChangeToParallelCameraByMoveBG___15CPolarSubCameraCFv
/* 80359B50 00356A90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80359B54 00356A94  40 82 00 64 */	bne lbl_80359BB8
/* 80359B58 00356A98  7F C3 F3 78 */	mr r3, r30
/* 80359B5C 00356A9C  4B FF 7F 91 */	bl isChangeToParallelCameraCByMoveBG___15CPolarSubCameraCFv
/* 80359B60 00356AA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80359B64 00356AA4  40 82 00 54 */	bne lbl_80359BB8
/* 80359B68 00356AA8  C0 22 05 D8 */	lfs f1, $$22326@sda21(r2)
/* 80359B6C 00356AAC  C0 1E 02 88 */	lfs f0, 0x288(r30)
/* 80359B70 00356AB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80359B74 00356AB4  41 82 01 EC */	beq lbl_80359D60
/* 80359B78 00356AB8  C0 42 05 DC */	lfs f2, $$22327@sda21(r2)
/* 80359B7C 00356ABC  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80359B80 00356AC0  4B FF C4 0D */	bl CLBEaseInInbetween$$0f$$1__Ffff
/* 80359B84 00356AC4  80 7E 02 D4 */	lwz r3, 0x2d4(r30)
/* 80359B88 00356AC8  38 83 01 A8 */	addi r4, r3, 0x1a8
/* 80359B8C 00356ACC  38 63 01 94 */	addi r3, r3, 0x194
/* 80359B90 00356AD0  A8 84 00 00 */	lha r4, 0(r4)
/* 80359B94 00356AD4  A8 63 00 00 */	lha r3, 0(r3)
/* 80359B98 00356AD8  48 00 03 29 */	bl CLBEaseInInbetween$$0s$$1__Fssf
/* 80359B9C 00356ADC  80 8D 98 E4 */	lwz r4, gpMarioAngleY@sda21(r13)
/* 80359BA0 00356AE0  38 A3 00 00 */	addi r5, r3, 0
/* 80359BA4 00356AE4  38 7E 00 A6 */	addi r3, r30, 0xa6
/* 80359BA8 00356AE8  A8 84 00 00 */	lha r4, 0(r4)
/* 80359BAC 00356AEC  38 84 80 00 */	addi r4, r4, -32768
/* 80359BB0 00356AF0  4B FF EC 31 */	bl CLBChaseAngleDecrease__FPsss
/* 80359BB4 00356AF4  48 00 01 AC */	b lbl_80359D60
lbl_80359BB8:
/* 80359BB8 00356AF8  80 6D 98 E4 */	lwz r3, gpMarioAngleY@sda21(r13)
/* 80359BBC 00356AFC  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 80359BC0 00356B00  A8 63 00 00 */	lha r3, 0(r3)
/* 80359BC4 00356B04  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80359BC8 00356B08  3B E3 80 00 */	addi r31, r3, -32768
/* 80359BCC 00356B0C  41 82 00 14 */	beq lbl_80359BE0
/* 80359BD0 00356B10  40 80 00 5C */	bge lbl_80359C2C
/* 80359BD4 00356B14  2C 00 00 12 */	cmpwi r0, 0x12
/* 80359BD8 00356B18  41 82 00 08 */	beq lbl_80359BE0
/* 80359BDC 00356B1C  48 00 00 50 */	b lbl_80359C2C
lbl_80359BE0:
/* 80359BE0 00356B20  A8 1E 02 58 */	lha r0, 0x258(r30)
/* 80359BE4 00356B24  7F E3 07 34 */	extsh r3, r31
/* 80359BE8 00356B28  7C 60 18 50 */	subf r3, r0, r3
/* 80359BEC 00356B2C  7C 60 07 35 */	extsh. r0, r3
/* 80359BF0 00356B30  41 80 00 0C */	blt lbl_80359BFC
/* 80359BF4 00356B34  7C 60 07 34 */	extsh r0, r3
/* 80359BF8 00356B38  48 00 00 0C */	b lbl_80359C04
lbl_80359BFC:
/* 80359BFC 00356B3C  7C 60 07 34 */	extsh r0, r3
/* 80359C00 00356B40  7C 00 00 D0 */	neg r0, r0
lbl_80359C04:
/* 80359C04 00356B44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80359C08 00356B48  C8 22 05 F0 */	lfd f1, $$22333@sda21(r2)
/* 80359C0C 00356B4C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80359C10 00356B50  3C 00 43 30 */	lis r0, 0x4330
/* 80359C14 00356B54  C0 42 05 E0 */	lfs f2, $$22328@sda21(r2)
/* 80359C18 00356B58  90 01 00 88 */	stw r0, 0x88(r1)
/* 80359C1C 00356B5C  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80359C20 00356B60  EC 00 08 28 */	fsubs f0, f0, f1
/* 80359C24 00356B64  EF A2 00 32 */	fmuls f29, f2, f0
/* 80359C28 00356B68  48 00 00 34 */	b lbl_80359C5C
lbl_80359C2C:
/* 80359C2C 00356B6C  A8 7E 02 58 */	lha r3, 0x258(r30)
/* 80359C30 00356B70  80 0D 8D EC */	lwz r0, jmaSinShift@sda21(r13)
/* 80359C34 00356B74  7C 63 F8 50 */	subf r3, r3, r31
/* 80359C38 00356B78  80 8D 8D F4 */	lwz r4, jmaCosTable@sda21(r13)
/* 80359C3C 00356B7C  54 63 0C 3C */	rlwinm r3, r3, 1, 0x10, 0x1e
/* 80359C40 00356B80  C0 22 05 DC */	lfs f1, $$22327@sda21(r2)
/* 80359C44 00356B84  7C 60 06 30 */	sraw r0, r3, r0
/* 80359C48 00356B88  C0 42 05 E4 */	lfs f2, $$22329@sda21(r2)
/* 80359C4C 00356B8C  54 00 10 3A */	slwi r0, r0, 2
/* 80359C50 00356B90  7C 04 04 2E */	lfsx f0, r4, r0
/* 80359C54 00356B94  EC 01 00 28 */	fsubs f0, f1, f0
/* 80359C58 00356B98  EF A2 00 32 */	fmuls f29, f2, f0
lbl_80359C5C:
/* 80359C5C 00356B9C  A8 1E 02 CA */	lha r0, 0x2ca(r30)
/* 80359C60 00356BA0  C3 C2 05 DC */	lfs f30, $$22327@sda21(r2)
/* 80359C64 00356BA4  2C 00 FF FF */	cmpwi r0, -1
/* 80359C68 00356BA8  41 82 00 20 */	beq lbl_80359C88
/* 80359C6C 00356BAC  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 80359C70 00356BB0  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80359C74 00356BB4  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 80359C78 00356BB8  C0 43 00 88 */	lfs f2, 0x88(r3)
/* 80359C7C 00356BBC  4B E1 09 B9 */	bl CLBLinearInbetween$$0f$$1__Ffff
/* 80359C80 00356BC0  FF C0 08 90 */	fmr f30, f1
/* 80359C84 00356BC4  48 00 00 40 */	b lbl_80359CC4
lbl_80359C88:
/* 80359C88 00356BC8  80 6D 98 FC */	lwz r3, gpMarioFlag@sda21(r13)
/* 80359C8C 00356BCC  80 03 00 00 */	lwz r0, 0(r3)
/* 80359C90 00356BD0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80359C94 00356BD4  41 82 00 0C */	beq lbl_80359CA0
/* 80359C98 00356BD8  38 00 00 01 */	li r0, 1
/* 80359C9C 00356BDC  48 00 00 08 */	b lbl_80359CA4
lbl_80359CA0:
/* 80359CA0 00356BE0  38 00 00 00 */	li r0, 0
lbl_80359CA4:
/* 80359CA4 00356BE4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80359CA8 00356BE8  41 82 00 1C */	beq lbl_80359CC4
/* 80359CAC 00356BEC  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 80359CB0 00356BF0  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80359CB4 00356BF4  C0 23 00 7C */	lfs f1, 0x7c(r3)
/* 80359CB8 00356BF8  C0 43 00 80 */	lfs f2, 0x80(r3)
/* 80359CBC 00356BFC  4B E1 09 79 */	bl CLBLinearInbetween$$0f$$1__Ffff
/* 80359CC0 00356C00  FF C0 08 90 */	fmr f30, f1
lbl_80359CC4:
/* 80359CC4 00356C04  80 7E 01 20 */	lwz r3, 0x120(r30)
/* 80359CC8 00356C08  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 80359CCC 00356C0C  FC 00 00 1E */	fctiwz f0, f0
/* 80359CD0 00356C10  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80359CD4 00356C14  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80359CD8 00356C18  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80359CDC 00356C1C  41 82 00 1C */	beq lbl_80359CF8
/* 80359CE0 00356C20  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 80359CE4 00356C24  C0 7E 00 A8 */	lfs f3, 0xa8(r30)
/* 80359CE8 00356C28  C0 23 00 8C */	lfs f1, 0x8c(r3)
/* 80359CEC 00356C2C  C0 43 00 90 */	lfs f2, 0x90(r3)
/* 80359CF0 00356C30  4B E1 09 45 */	bl CLBLinearInbetween$$0f$$1__Ffff
/* 80359CF4 00356C34  EF DE 00 72 */	fmuls f30, f30, f1
lbl_80359CF8:
/* 80359CF8 00356C38  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 80359CFC 00356C3C  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80359D00 00356C40  41 82 00 14 */	beq lbl_80359D14
/* 80359D04 00356C44  40 80 00 18 */	bge lbl_80359D1C
/* 80359D08 00356C48  2C 00 00 12 */	cmpwi r0, 0x12
/* 80359D0C 00356C4C  41 82 00 08 */	beq lbl_80359D14
/* 80359D10 00356C50  48 00 00 0C */	b lbl_80359D1C
lbl_80359D14:
/* 80359D14 00356C54  C0 62 05 E8 */	lfs f3, $$22330@sda21(r2)
/* 80359D18 00356C58  48 00 00 0C */	b lbl_80359D24
lbl_80359D1C:
/* 80359D1C 00356C5C  80 6D A8 B8 */	lwz r3, gpCameraMario@sda21(r13)
/* 80359D20 00356C60  C0 63 00 0C */	lfs f3, 0xc(r3)
lbl_80359D24:
/* 80359D24 00356C64  C0 1E 02 50 */	lfs f0, 0x250(r30)
/* 80359D28 00356C68  C0 5E 02 88 */	lfs f2, 0x288(r30)
/* 80359D2C 00356C6C  EC 20 07 72 */	fmuls f1, f0, f29
/* 80359D30 00356C70  C0 02 05 EC */	lfs f0, $$22331@sda21(r2)
/* 80359D34 00356C74  EC 3E 00 72 */	fmuls f1, f30, f1
/* 80359D38 00356C78  EC 23 00 72 */	fmuls f1, f3, f1
/* 80359D3C 00356C7C  EC 22 00 72 */	fmuls f1, f2, f1
/* 80359D40 00356C80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80359D44 00356C84  40 81 00 08 */	ble lbl_80359D4C
/* 80359D48 00356C88  FC 20 00 90 */	fmr f1, f0
lbl_80359D4C:
/* 80359D4C 00356C8C  4B E1 2F 01 */	bl CLBRoundf$$0s$$1__Ff
/* 80359D50 00356C90  38 A3 00 00 */	addi r5, r3, 0
/* 80359D54 00356C94  38 9F 00 00 */	addi r4, r31, 0
/* 80359D58 00356C98  38 7E 00 A6 */	addi r3, r30, 0xa6
/* 80359D5C 00356C9C  4B E1 37 5D */	bl CLBChaseGeneralConstantSpecifySpeed$$0s$$1__FPsss
lbl_80359D60:
/* 80359D60 00356CA0  7F C3 F3 78 */	mr r3, r30
/* 80359D64 00356CA4  FC 20 F8 90 */	fmr f1, f31
/* 80359D68 00356CA8  4B FF B2 31 */	bl rotateX_ByStickY___15CPolarSubCameraFf
lbl_80359D6C:
/* 80359D6C 00356CAC  7F C3 F3 78 */	mr r3, r30
/* 80359D70 00356CB0  4B FF 9C 39 */	bl calcPosAndAt___15CPolarSubCameraFv
/* 80359D74 00356CB4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80359D78 00356CB8  CB E1 00 A8 */	lfd f31, 0xa8(r1)
/* 80359D7C 00356CBC  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80359D80 00356CC0  7C 08 03 A6 */	mtlr r0
/* 80359D84 00356CC4  CB A1 00 98 */	lfd f29, 0x98(r1)
/* 80359D88 00356CC8  83 E1 00 94 */	lwz r31, 0x94(r1)
/* 80359D8C 00356CCC  83 C1 00 90 */	lwz r30, 0x90(r1)
/* 80359D90 00356CD0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80359D94 00356CD4  4E 80 00 20 */	blr 

.global calcTowerCenterPos___15CPolarSubCameraFP3Vec
calcTowerCenterPos___15CPolarSubCameraFP3Vec:
/* 80359D98 00356CD8  7C 08 02 A6 */	mflr r0
/* 80359D9C 00356CDC  90 01 00 04 */	stw r0, 4(r1)
/* 80359DA0 00356CE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80359DA4 00356CE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80359DA8 00356CE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80359DAC 00356CEC  3B C4 00 00 */	addi r30, r4, 0
/* 80359DB0 00356CF0  80 03 00 50 */	lwz r0, 0x50(r3)
/* 80359DB4 00356CF4  2C 00 00 37 */	cmpwi r0, 0x37
/* 80359DB8 00356CF8  41 82 00 64 */	beq lbl_80359E1C
/* 80359DBC 00356CFC  40 80 00 28 */	bge lbl_80359DE4
/* 80359DC0 00356D00  2C 00 00 28 */	cmpwi r0, 0x28
/* 80359DC4 00356D04  41 82 00 38 */	beq lbl_80359DFC
/* 80359DC8 00356D08  40 80 00 10 */	bge lbl_80359DD8
/* 80359DCC 00356D0C  2C 00 00 27 */	cmpwi r0, 0x27
/* 80359DD0 00356D10  40 80 00 20 */	bge lbl_80359DF0
/* 80359DD4 00356D14  48 00 00 68 */	b lbl_80359E3C
lbl_80359DD8:
/* 80359DD8 00356D18  2C 00 00 2A */	cmpwi r0, 0x2a
/* 80359DDC 00356D1C  40 80 00 60 */	bge lbl_80359E3C
/* 80359DE0 00356D20  48 00 00 2C */	b lbl_80359E0C
lbl_80359DE4:
/* 80359DE4 00356D24  2C 00 00 41 */	cmpwi r0, 0x41
/* 80359DE8 00356D28  41 82 00 44 */	beq lbl_80359E2C
/* 80359DEC 00356D2C  48 00 00 50 */	b lbl_80359E3C
lbl_80359DF0:
/* 80359DF0 00356D30  3C 60 80 3E */	lis r3, sPositionNameTable$localstatic0$calcTowerCenterPos___15CPolarSubCameraFP3Vec@ha
/* 80359DF4 00356D34  83 E3 4A F8 */	lwz r31, sPositionNameTable$localstatic0$calcTowerCenterPos___15CPolarSubCameraFP3Vec@l(r3)
/* 80359DF8 00356D38  48 00 00 58 */	b lbl_80359E50
lbl_80359DFC:
/* 80359DFC 00356D3C  3C 60 80 3E */	lis r3, sPositionNameTable$localstatic0$calcTowerCenterPos___15CPolarSubCameraFP3Vec@ha
/* 80359E00 00356D40  38 63 4A F8 */	addi r3, r3, sPositionNameTable$localstatic0$calcTowerCenterPos___15CPolarSubCameraFP3Vec@l
/* 80359E04 00356D44  83 E3 00 04 */	lwz r31, 4(r3)
/* 80359E08 00356D48  48 00 00 48 */	b lbl_80359E50
lbl_80359E0C:
/* 80359E0C 00356D4C  3C 60 80 3E */	lis r3, sPositionNameTable$localstatic0$calcTowerCenterPos___15CPolarSubCameraFP3Vec@ha
/* 80359E10 00356D50  38 63 4A F8 */	addi r3, r3, sPositionNameTable$localstatic0$calcTowerCenterPos___15CPolarSubCameraFP3Vec@l
/* 80359E14 00356D54  83 E3 00 08 */	lwz r31, 8(r3)
/* 80359E18 00356D58  48 00 00 38 */	b lbl_80359E50
lbl_80359E1C:
/* 80359E1C 00356D5C  3C 60 80 3E */	lis r3, sPositionNameTable$localstatic0$calcTowerCenterPos___15CPolarSubCameraFP3Vec@ha
/* 80359E20 00356D60  38 63 4A F8 */	addi r3, r3, sPositionNameTable$localstatic0$calcTowerCenterPos___15CPolarSubCameraFP3Vec@l
/* 80359E24 00356D64  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 80359E28 00356D68  48 00 00 28 */	b lbl_80359E50
lbl_80359E2C:
/* 80359E2C 00356D6C  3C 60 80 3E */	lis r3, sPositionNameTable$localstatic0$calcTowerCenterPos___15CPolarSubCameraFP3Vec@ha
/* 80359E30 00356D70  38 63 4A F8 */	addi r3, r3, sPositionNameTable$localstatic0$calcTowerCenterPos___15CPolarSubCameraFP3Vec@l
/* 80359E34 00356D74  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 80359E38 00356D78  48 00 00 18 */	b lbl_80359E50
lbl_80359E3C:
/* 80359E3C 00356D7C  C0 02 05 D8 */	lfs f0, $$22326@sda21(r2)
/* 80359E40 00356D80  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80359E44 00356D84  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80359E48 00356D88  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80359E4C 00356D8C  48 00 00 5C */	b lbl_80359EA8
lbl_80359E50:
/* 80359E50 00356D90  7F E3 FB 78 */	mr r3, r31
/* 80359E54 00356D94  4B CE A8 39 */	bl calcKeyCode__Q26JDrama8TNameRefFPCc
/* 80359E58 00356D98  7C 64 1B 78 */	mr r4, r3
/* 80359E5C 00356D9C  80 6D 98 30 */	lwz r3, gpPositionHolder@sda21(r13)
/* 80359E60 00356DA0  7F E5 FB 78 */	mr r5, r31
/* 80359E64 00356DA4  81 83 00 00 */	lwz r12, 0(r3)
/* 80359E68 00356DA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80359E6C 00356DAC  7D 88 03 A6 */	mtlr r12
/* 80359E70 00356DB0  4E 80 00 21 */	blrl 
/* 80359E74 00356DB4  28 03 00 00 */	cmplwi r3, 0
/* 80359E78 00356DB8  41 82 00 20 */	beq lbl_80359E98
/* 80359E7C 00356DBC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80359E80 00356DC0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80359E84 00356DC4  90 9E 00 00 */	stw r4, 0(r30)
/* 80359E88 00356DC8  90 1E 00 04 */	stw r0, 4(r30)
/* 80359E8C 00356DCC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80359E90 00356DD0  90 1E 00 08 */	stw r0, 8(r30)
/* 80359E94 00356DD4  48 00 00 14 */	b lbl_80359EA8
lbl_80359E98:
/* 80359E98 00356DD8  C0 02 05 D8 */	lfs f0, $$22326@sda21(r2)
/* 80359E9C 00356DDC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80359EA0 00356DE0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80359EA4 00356DE4  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_80359EA8:
/* 80359EA8 00356DE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80359EAC 00356DEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80359EB0 00356DF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80359EB4 00356DF4  7C 08 03 A6 */	mtlr r0
/* 80359EB8 00356DF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80359EBC 00356DFC  4E 80 00 20 */	blr 

.global CLBEaseInInbetween$$0s$$1__Fssf
CLBEaseInInbetween$$0s$$1__Fssf:
/* 80359EC0 00356E00  7C 08 02 A6 */	mflr r0
/* 80359EC4 00356E04  7C 65 07 34 */	extsh r5, r3
/* 80359EC8 00356E08  90 01 00 04 */	stw r0, 4(r1)
/* 80359ECC 00356E0C  7C 80 07 34 */	extsh r0, r4
/* 80359ED0 00356E10  7C 05 00 50 */	subf r0, r5, r0
/* 80359ED4 00356E14  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80359ED8 00356E18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80359EDC 00356E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80359EE0 00356E20  3C 00 43 30 */	lis r0, 0x4330
/* 80359EE4 00356E24  C8 42 05 F0 */	lfd f2, $$22333@sda21(r2)
/* 80359EE8 00356E28  90 01 00 10 */	stw r0, 0x10(r1)
/* 80359EEC 00356E2C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80359EF0 00356E30  EC 40 10 28 */	fsubs f2, f0, f2
/* 80359EF4 00356E34  4B E1 35 01 */	bl CLBTwoDegreeGeneralInbetween$$0s$$1__Fssff
/* 80359EF8 00356E38  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80359EFC 00356E3C  38 21 00 18 */	addi r1, r1, 0x18
/* 80359F00 00356E40  7C 08 03 A6 */	mtlr r0
/* 80359F04 00356E44  4E 80 00 20 */	blr 

.section .rodata, "wa"  # 0x8036FFA0 - 0x803A8380
$$21490:
  .4byte 0
  .4byte 0
  .4byte 0
$$21526:
	.incbin "baserom.dol", 0x3A2AE4, 0x14
$$21857:
	.incbin "baserom.dol", 0x3A2AF8, 0x30
$$21858:
	.incbin "baserom.dol", 0x3A2B28, 0x38
$$21859:
	.incbin "baserom.dol", 0x3A2B60, 0x34
$$21860:
	.incbin "baserom.dol", 0x3A2B94, 0x24
$$22176:
	.incbin "baserom.dol", 0x3A2BB8, 0x10
$$22177:
	.incbin "baserom.dol", 0x3A2BC8, 0x10
$$22178:
	.incbin "baserom.dol", 0x3A2BD8, 0x10
$$22179:
	.incbin "baserom.dol", 0x3A2BE8, 0x10
$$22180:
	.incbin "baserom.dol", 0x3A2BF8, 0x10

.section .data, "wa"  # 0x803A8380 - 0x803E6000
sPositionNameTable$localstatic0$calcTowerCenterPos___15CPolarSubCameraFP3Vec:
  .4byte $$22176
  .4byte $$22177
  .4byte $$22178
  .4byte $$22179
  .4byte $$22180
  .4byte 0

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$22326:
  .4byte 0
$$22327:
	.incbin "baserom.dol", 0x3EC2DC, 0x4
$$22328:
	.incbin "baserom.dol", 0x3EC2E0, 0x4
$$22329:
	.incbin "baserom.dol", 0x3EC2E4, 0x4
$$22330:
	.incbin "baserom.dol", 0x3EC2E8, 0x4
$$22331:
	.incbin "baserom.dol", 0x3EC2EC, 0x4
$$22333:
	.incbin "baserom.dol", 0x3EC2F0, 0x8
