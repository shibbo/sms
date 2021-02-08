.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global init__Q28JASystem7BankMgrFi
init__Q28JASystem7BankMgrFi:
/* 80058320 00055260  7C 08 02 A6 */	mflr r0
/* 80058324 00055264  38 A0 00 00 */	li r5, 0
/* 80058328 00055268  90 01 00 04 */	stw r0, 4(r1)
/* 8005832C 0005526C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80058330 00055270  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80058334 00055274  7C 7F 1B 78 */	mr r31, r3
/* 80058338 00055278  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8005833C 0005527C  54 7E 10 3A */	slwi r30, r3, 2
/* 80058340 00055280  38 7E 00 00 */	addi r3, r30, 0
/* 80058344 00055284  80 8D 92 00 */	lwz r4, JASDram-_SDA_BASE_(r13)
/* 80058348 00055288  4B FB 46 FD */	bl __nwa__FUlP7JKRHeapi
/* 8005834C 0005528C  90 6D 90 84 */	stw r3, sBankArray__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 80058350 00055290  57 E3 08 3C */	slwi r3, r31, 1
/* 80058354 00055294  80 8D 92 00 */	lwz r4, JASDram-_SDA_BASE_(r13)
/* 80058358 00055298  38 A0 00 00 */	li r5, 0
/* 8005835C 0005529C  4B FB 46 E9 */	bl __nwa__FUlP7JKRHeapi
/* 80058360 000552A0  90 6D 90 88 */	stw r3, sVir2PhyTable__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 80058364 000552A4  7F C4 F3 78 */	mr r4, r30
/* 80058368 000552A8  80 6D 90 84 */	lwz r3, sBankArray__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 8005836C 000552AC  48 00 8E B5 */	bl bzero__Q28JASystem4CalcFPvUl
/* 80058370 000552B0  2C 1F 00 00 */	cmpwi r31, 0
/* 80058374 000552B4  39 20 00 00 */	li r9, 0
/* 80058378 000552B8  38 60 00 00 */	li r3, 0
/* 8005837C 000552BC  40 81 00 A4 */	ble lbl_80058420
/* 80058380 000552C0  2C 1F 00 08 */	cmpwi r31, 8
/* 80058384 000552C4  38 BF FF F8 */	addi r5, r31, -8
/* 80058388 000552C8  40 81 00 6C */	ble lbl_800583F4
/* 8005838C 000552CC  38 05 00 07 */	addi r0, r5, 7
/* 80058390 000552D0  80 ED 90 88 */	lwz r7, sVir2PhyTable__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 80058394 000552D4  54 00 E8 FE */	srwi r0, r0, 3
/* 80058398 000552D8  3C 80 00 01 */	lis r4, 0x0000FFFF@ha
/* 8005839C 000552DC  7C 09 03 A6 */	mtctr r0
/* 800583A0 000552E0  2C 05 00 00 */	cmpwi r5, 0
/* 800583A4 000552E4  39 04 FF FF */	addi r8, r4, 0x0000FFFF@l
/* 800583A8 000552E8  40 81 00 4C */	ble lbl_800583F4
lbl_800583AC:
/* 800583AC 000552EC  7D 07 1B 2E */	sthx r8, r7, r3
/* 800583B0 000552F0  38 03 00 02 */	addi r0, r3, 2
/* 800583B4 000552F4  38 83 00 04 */	addi r4, r3, 4
/* 800583B8 000552F8  7D 07 03 2E */	sthx r8, r7, r0
/* 800583BC 000552FC  38 03 00 06 */	addi r0, r3, 6
/* 800583C0 00055300  38 C3 00 08 */	addi r6, r3, 8
/* 800583C4 00055304  7D 07 23 2E */	sthx r8, r7, r4
/* 800583C8 00055308  38 A3 00 0A */	addi r5, r3, 0xa
/* 800583CC 0005530C  38 83 00 0C */	addi r4, r3, 0xc
/* 800583D0 00055310  7D 07 03 2E */	sthx r8, r7, r0
/* 800583D4 00055314  38 03 00 0E */	addi r0, r3, 0xe
/* 800583D8 00055318  39 29 00 08 */	addi r9, r9, 8
/* 800583DC 0005531C  7D 07 33 2E */	sthx r8, r7, r6
/* 800583E0 00055320  38 63 00 10 */	addi r3, r3, 0x10
/* 800583E4 00055324  7D 07 2B 2E */	sthx r8, r7, r5
/* 800583E8 00055328  7D 07 23 2E */	sthx r8, r7, r4
/* 800583EC 0005532C  7D 07 03 2E */	sthx r8, r7, r0
/* 800583F0 00055330  42 00 FF BC */	bdnz lbl_800583AC
lbl_800583F4:
/* 800583F4 00055334  7C 09 F8 50 */	subf r0, r9, r31
/* 800583F8 00055338  80 8D 90 88 */	lwz r4, sVir2PhyTable__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 800583FC 0005533C  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80058400 00055340  7C 09 03 A6 */	mtctr r0
/* 80058404 00055344  7C 09 F8 00 */	cmpw r9, r31
/* 80058408 00055348  38 03 FF FF */	addi r0, r3, 0x0000FFFF@l
/* 8005840C 0005534C  55 23 08 3C */	slwi r3, r9, 1
/* 80058410 00055350  40 80 00 10 */	bge lbl_80058420
lbl_80058414:
/* 80058414 00055354  7C 04 1B 2E */	sthx r0, r4, r3
/* 80058418 00055358  38 63 00 02 */	addi r3, r3, 2
/* 8005841C 0005535C  42 00 FF F8 */	bdnz lbl_80058414
lbl_80058420:
/* 80058420 00055360  93 ED 90 80 */	stw r31, sTableSize__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 80058424 00055364  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80058428 00055368  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8005842C 0005536C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80058430 00055370  7C 08 03 A6 */	mtlr r0
/* 80058434 00055374  38 21 00 18 */	addi r1, r1, 0x18
/* 80058438 00055378  4E 80 00 20 */	blr 

.global registBankBNK__Q28JASystem7BankMgrFiPv
registBankBNK__Q28JASystem7BankMgrFiPv:
/* 8005843C 0005537C  7C 08 02 A6 */	mflr r0
/* 80058440 00055380  90 01 00 04 */	stw r0, 4(r1)
/* 80058444 00055384  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80058448 00055388  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8005844C 0005538C  3B E4 00 00 */	addi r31, r4, 0
/* 80058450 00055390  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80058454 00055394  3B C3 00 00 */	addi r30, r3, 0
/* 80058458 00055398  80 64 00 08 */	lwz r3, 8(r4)
/* 8005845C 0005539C  7F C4 F3 78 */	mr r4, r30
/* 80058460 000553A0  48 00 00 55 */	bl setVir2PhyTable__Q28JASystem7BankMgrFUli
/* 80058464 000553A4  7F E3 FB 78 */	mr r3, r31
/* 80058468 000553A8  48 00 16 D5 */	bl createBasicBank__Q28JASystem9BNKParserFPv
/* 8005846C 000553AC  28 03 00 00 */	cmplwi r3, 0
/* 80058470 000553B0  40 82 00 0C */	bne lbl_8005847C
/* 80058474 000553B4  38 60 00 00 */	li r3, 0
/* 80058478 000553B8  48 00 00 14 */	b lbl_8005848C
lbl_8005847C:
/* 8005847C 000553BC  80 8D 90 84 */	lwz r4, sBankArray__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 80058480 000553C0  57 C0 10 3A */	slwi r0, r30, 2
/* 80058484 000553C4  7C 64 01 2E */	stwx r3, r4, r0
/* 80058488 000553C8  38 60 00 01 */	li r3, 1
lbl_8005848C:
/* 8005848C 000553CC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80058490 000553D0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80058494 000553D4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80058498 000553D8  7C 08 03 A6 */	mtlr r0
/* 8005849C 000553DC  38 21 00 18 */	addi r1, r1, 0x18
/* 800584A0 000553E0  4E 80 00 20 */	blr 

.global getPhysicalNumber__Q28JASystem7BankMgrFUs
getPhysicalNumber__Q28JASystem7BankMgrFUs:
/* 800584A4 000553E4  80 8D 90 88 */	lwz r4, sVir2PhyTable__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 800584A8 000553E8  54 60 0B FC */	rlwinm r0, r3, 1, 0xf, 0x1e
/* 800584AC 000553EC  7C 64 02 2E */	lhzx r3, r4, r0
/* 800584B0 000553F0  4E 80 00 20 */	blr 

.global setVir2PhyTable__Q28JASystem7BankMgrFUli
setVir2PhyTable__Q28JASystem7BankMgrFUli:
/* 800584B4 000553F4  28 03 FF FF */	cmplwi r3, 0xffff
/* 800584B8 000553F8  4D 82 00 20 */	beqlr 
/* 800584BC 000553FC  80 AD 90 88 */	lwz r5, sVir2PhyTable__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 800584C0 00055400  54 60 08 3C */	slwi r0, r3, 1
/* 800584C4 00055404  7C 65 02 14 */	add r3, r5, r0
/* 800584C8 00055408  B0 83 00 00 */	sth r4, 0(r3)
/* 800584CC 0005540C  4E 80 00 20 */	blr 

.global assignWaveBank__Q28JASystem7BankMgrFii
assignWaveBank__Q28JASystem7BankMgrFii:
/* 800584D0 00055410  7C 08 02 A6 */	mflr r0
/* 800584D4 00055414  90 01 00 04 */	stw r0, 4(r1)
/* 800584D8 00055418  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800584DC 0005541C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800584E0 00055420  80 0D 90 80 */	lwz r0, sTableSize__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 800584E4 00055424  7C 03 00 00 */	cmpw r3, r0
/* 800584E8 00055428  41 80 00 0C */	blt lbl_800584F4
/* 800584EC 0005542C  3B E0 00 00 */	li r31, 0
/* 800584F0 00055430  48 00 00 10 */	b lbl_80058500
lbl_800584F4:
/* 800584F4 00055434  80 AD 90 84 */	lwz r5, sBankArray__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 800584F8 00055438  54 60 10 3A */	slwi r0, r3, 2
/* 800584FC 0005543C  7F E5 00 2E */	lwzx r31, r5, r0
lbl_80058500:
/* 80058500 00055440  28 1F 00 00 */	cmplwi r31, 0
/* 80058504 00055444  40 82 00 0C */	bne lbl_80058510
/* 80058508 00055448  38 60 00 00 */	li r3, 0
/* 8005850C 0005544C  48 00 00 24 */	b lbl_80058530
lbl_80058510:
/* 80058510 00055450  7C 83 23 78 */	mr r3, r4
/* 80058514 00055454  48 00 2C C9 */	bl getWaveBank__Q28JASystem11WaveBankMgrFi
/* 80058518 00055458  28 03 00 00 */	cmplwi r3, 0
/* 8005851C 0005545C  40 82 00 0C */	bne lbl_80058528
/* 80058520 00055460  38 60 00 00 */	li r3, 0
/* 80058524 00055464  48 00 00 0C */	b lbl_80058530
lbl_80058528:
/* 80058528 00055468  90 7F 00 04 */	stw r3, 4(r31)
/* 8005852C 0005546C  38 60 00 01 */	li r3, 1
lbl_80058530:
/* 80058530 00055470  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80058534 00055474  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80058538 00055478  38 21 00 20 */	addi r1, r1, 0x20
/* 8005853C 0005547C  7C 08 03 A6 */	mtlr r0
/* 80058540 00055480  4E 80 00 20 */	blr 

.global noteOn__Q28JASystem7BankMgrFPQ28JASystem11TChannelMgriiUcUcUl
noteOn__Q28JASystem7BankMgrFPQ28JASystem11TChannelMgriiUcUcUl:
/* 80058544 00055484  7C 08 02 A6 */	mflr r0
/* 80058548 00055488  90 01 00 04 */	stw r0, 4(r1)
/* 8005854C 0005548C  94 21 FF 68 */	stwu r1, -0x98(r1)
/* 80058550 00055490  BE E1 00 74 */	stmw r23, 0x74(r1)
/* 80058554 00055494  3B A5 00 00 */	addi r29, r5, 0
/* 80058558 00055498  2C 1D 00 EF */	cmpwi r29, 0xef
/* 8005855C 0005549C  3B 03 00 00 */	addi r24, r3, 0
/* 80058560 000554A0  3B 24 00 00 */	addi r25, r4, 0
/* 80058564 000554A4  3B 46 00 00 */	addi r26, r6, 0
/* 80058568 000554A8  3B 67 00 00 */	addi r27, r7, 0
/* 8005856C 000554AC  3B 88 00 00 */	addi r28, r8, 0
/* 80058570 000554B0  40 81 00 20 */	ble lbl_80058590
/* 80058574 000554B4  38 78 00 00 */	addi r3, r24, 0
/* 80058578 000554B8  38 BA 00 00 */	addi r5, r26, 0
/* 8005857C 000554BC  38 DB 00 00 */	addi r6, r27, 0
/* 80058580 000554C0  38 FC 00 00 */	addi r7, r28, 0
/* 80058584 000554C4  38 9D FF 10 */	addi r4, r29, -240
/* 80058588 000554C8  48 00 03 CD */	bl noteOnOsc__Q28JASystem7BankMgrFPQ28JASystem11TChannelMgriUcUcUl
/* 8005858C 000554CC  48 00 03 B4 */	b lbl_80058940
lbl_80058590:
/* 80058590 000554D0  80 0D 90 80 */	lwz r0, sTableSize__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 80058594 000554D4  7C 19 00 00 */	cmpw r25, r0
/* 80058598 000554D8  41 80 00 0C */	blt lbl_800585A4
/* 8005859C 000554DC  3A E0 00 00 */	li r23, 0
/* 800585A0 000554E0  48 00 00 10 */	b lbl_800585B0
lbl_800585A4:
/* 800585A4 000554E4  80 6D 90 84 */	lwz r3, sBankArray__Q28JASystem7BankMgr-_SDA_BASE_(r13)
/* 800585A8 000554E8  57 20 10 3A */	slwi r0, r25, 2
/* 800585AC 000554EC  7E E3 00 2E */	lwzx r23, r3, r0
lbl_800585B0:
/* 800585B0 000554F0  28 17 00 00 */	cmplwi r23, 0
/* 800585B4 000554F4  38 77 00 00 */	addi r3, r23, 0
/* 800585B8 000554F8  40 82 00 0C */	bne lbl_800585C4
/* 800585BC 000554FC  38 60 00 00 */	li r3, 0
/* 800585C0 00055500  48 00 03 80 */	b lbl_80058940
lbl_800585C4:
/* 800585C4 00055504  81 83 00 00 */	lwz r12, 0(r3)
/* 800585C8 00055508  7F A4 EB 78 */	mr r4, r29
/* 800585CC 0005550C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800585D0 00055510  7D 88 03 A6 */	mtlr r12
/* 800585D4 00055514  4E 80 00 21 */	blrl 
/* 800585D8 00055518  28 03 00 00 */	cmplwi r3, 0
/* 800585DC 0005551C  40 82 00 0C */	bne lbl_800585E8
/* 800585E0 00055520  38 60 00 00 */	li r3, 0
/* 800585E4 00055524  48 00 03 5C */	b lbl_80058940
lbl_800585E8:
/* 800585E8 00055528  38 00 00 00 */	li r0, 0
/* 800585EC 0005552C  98 01 00 24 */	stb r0, 0x24(r1)
/* 800585F0 00055530  57 5E 06 3E */	clrlwi r30, r26, 0x18
/* 800585F4 00055534  7F C4 F3 78 */	mr r4, r30
/* 800585F8 00055538  90 01 00 28 */	stw r0, 0x28(r1)
/* 800585FC 0005553C  57 65 06 3E */	clrlwi r5, r27, 0x18
/* 80058600 00055540  38 C1 00 24 */	addi r6, r1, 0x24
/* 80058604 00055544  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80058608 00055548  90 01 00 30 */	stw r0, 0x30(r1)
/* 8005860C 0005554C  C0 02 85 B4 */	lfs f0, $$2340-_SDA2_BASE_(r2)
/* 80058610 00055550  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80058614 00055554  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80058618 00055558  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8005861C 0005555C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80058620 00055560  C0 22 85 B8 */	lfs f1, $$2418-_SDA2_BASE_(r2)
/* 80058624 00055564  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80058628 00055568  C0 02 85 B0 */	lfs f0, $$2339-_SDA2_BASE_(r2)
/* 8005862C 0005556C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80058630 00055570  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80058634 00055574  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80058638 00055578  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8005863C 0005557C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80058640 00055580  98 01 00 5C */	stb r0, 0x5c(r1)
/* 80058644 00055584  B0 01 00 5E */	sth r0, 0x5e(r1)
/* 80058648 00055588  90 01 00 60 */	stw r0, 0x60(r1)
/* 8005864C 0005558C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80058650 00055590  81 83 00 00 */	lwz r12, 0(r3)
/* 80058654 00055594  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80058658 00055598  7D 88 03 A6 */	mtlr r12
/* 8005865C 0005559C  4E 80 00 21 */	blrl 
/* 80058660 000555A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80058664 000555A4  40 82 00 0C */	bne lbl_80058670
/* 80058668 000555A8  38 60 00 00 */	li r3, 0
/* 8005866C 000555AC  48 00 02 D4 */	b lbl_80058940
lbl_80058670:
/* 80058670 000555B0  80 17 00 04 */	lwz r0, 4(r23)
/* 80058674 000555B4  28 00 00 00 */	cmplwi r0, 0
/* 80058678 000555B8  7C 03 03 78 */	mr r3, r0
/* 8005867C 000555BC  40 82 00 0C */	bne lbl_80058688
/* 80058680 000555C0  38 60 00 00 */	li r3, 0
/* 80058684 000555C4  48 00 02 BC */	b lbl_80058940
lbl_80058688:
/* 80058688 000555C8  81 83 00 00 */	lwz r12, 0(r3)
/* 8005868C 000555CC  80 81 00 28 */	lwz r4, 0x28(r1)
/* 80058690 000555D0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80058694 000555D4  7D 88 03 A6 */	mtlr r12
/* 80058698 000555D8  4E 80 00 21 */	blrl 
/* 8005869C 000555DC  7C 77 1B 79 */	or. r23, r3, r3
/* 800586A0 000555E0  40 82 00 0C */	bne lbl_800586AC
/* 800586A4 000555E4  38 60 00 00 */	li r3, 0
/* 800586A8 000555E8  48 00 02 98 */	b lbl_80058940
lbl_800586AC:
/* 800586AC 000555EC  7E E3 BB 78 */	mr r3, r23
/* 800586B0 000555F0  81 97 00 00 */	lwz r12, 0(r23)
/* 800586B4 000555F4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800586B8 000555F8  7D 88 03 A6 */	mtlr r12
/* 800586BC 000555FC  4E 80 00 21 */	blrl 
/* 800586C0 00055600  7C 7F 1B 79 */	or. r31, r3, r3
/* 800586C4 00055604  40 82 00 0C */	bne lbl_800586D0
/* 800586C8 00055608  38 60 00 00 */	li r3, 0
/* 800586CC 0005560C  48 00 02 74 */	b lbl_80058940
lbl_800586D0:
/* 800586D0 00055610  7E E3 BB 78 */	mr r3, r23
/* 800586D4 00055614  81 97 00 00 */	lwz r12, 0(r23)
/* 800586D8 00055618  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800586DC 0005561C  7D 88 03 A6 */	mtlr r12
/* 800586E0 00055620  4E 80 00 21 */	blrl 
/* 800586E4 00055624  7C 77 1B 79 */	or. r23, r3, r3
/* 800586E8 00055628  40 82 00 0C */	bne lbl_800586F4
/* 800586EC 0005562C  38 60 00 00 */	li r3, 0
/* 800586F0 00055630  48 00 02 50 */	b lbl_80058940
lbl_800586F4:
/* 800586F4 00055634  80 81 00 64 */	lwz r4, 0x64(r1)
/* 800586F8 00055638  57 23 40 2E */	slwi r3, r25, 8
/* 800586FC 0005563C  54 80 06 32 */	rlwinm r0, r4, 0, 0x18, 0x19
/* 80058700 00055640  54 84 C0 0E */	slwi r4, r4, 0x18
/* 80058704 00055644  7C 83 1B 78 */	or r3, r4, r3
/* 80058708 00055648  2C 00 00 80 */	cmpwi r0, 0x80
/* 8005870C 0005564C  7F A4 1B 78 */	or r4, r29, r3
/* 80058710 00055650  41 82 00 2C */	beq lbl_8005873C
/* 80058714 00055654  40 80 00 10 */	bge lbl_80058724
/* 80058718 00055658  2C 00 00 40 */	cmpwi r0, 0x40
/* 8005871C 0005565C  41 82 00 28 */	beq lbl_80058744
/* 80058720 00055660  48 00 00 30 */	b lbl_80058750
lbl_80058724:
/* 80058724 00055664  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 80058728 00055668  41 82 00 08 */	beq lbl_80058730
/* 8005872C 0005566C  48 00 00 24 */	b lbl_80058750
lbl_80058730:
/* 80058730 00055670  64 84 00 FF */	oris r4, r4, 0xff
/* 80058734 00055674  60 84 FF FF */	ori r4, r4, 0xffff
/* 80058738 00055678  48 00 00 18 */	b lbl_80058750
lbl_8005873C:
/* 8005873C 0005567C  60 84 00 FF */	ori r4, r4, 0xff
/* 80058740 00055680  48 00 00 10 */	b lbl_80058750
lbl_80058744:
/* 80058744 00055684  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80058748 00055688  54 00 80 1E */	slwi r0, r0, 0x10
/* 8005874C 0005568C  7C 84 03 78 */	or r4, r4, r0
lbl_80058750:
/* 80058750 00055690  7F 03 C3 78 */	mr r3, r24
/* 80058754 00055694  48 00 58 ED */	bl getLogicalChannel__Q28JASystem11TChannelMgrFUl
/* 80058758 00055698  7C 7D 1B 79 */	or. r29, r3, r3
/* 8005875C 0005569C  40 82 00 0C */	bne lbl_80058768
/* 80058760 000556A0  38 60 00 00 */	li r3, 0
/* 80058764 000556A4  48 00 01 DC */	b lbl_80058940
lbl_80058768:
/* 80058768 000556A8  93 FD 00 10 */	stw r31, 0x10(r29)
/* 8005876C 000556AC  92 FD 00 14 */	stw r23, 0x14(r29)
/* 80058770 000556B0  88 01 00 24 */	lbz r0, 0x24(r1)
/* 80058774 000556B4  98 1D 00 0C */	stb r0, 0xc(r29)
/* 80058778 000556B8  9B 7D 00 00 */	stb r27, 0(r29)
/* 8005877C 000556BC  9B 5D 00 01 */	stb r26, 1(r29)
/* 80058780 000556C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80058784 000556C4  C0 0D 81 F0 */	lfs f0, gDacRate__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 80058788 000556C8  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8005878C 000556CC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80058790 000556D0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80058794 000556D4  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 80058798 000556D8  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8005879C 000556DC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800587A0 000556E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800587A4 000556E4  D0 1D 00 50 */	stfs f0, 0x50(r29)
/* 800587A8 000556E8  88 01 00 5C */	lbz r0, 0x5c(r1)
/* 800587AC 000556EC  28 00 00 00 */	cmplwi r0, 0
/* 800587B0 000556F0  40 82 00 44 */	bne lbl_800587F4
/* 800587B4 000556F4  88 7F 00 02 */	lbz r3, 2(r31)
/* 800587B8 000556F8  38 1E 00 3C */	addi r0, r30, 0x3c
/* 800587BC 000556FC  7C 03 00 51 */	subf. r0, r3, r0
/* 800587C0 00055700  40 80 00 08 */	bge lbl_800587C8
/* 800587C4 00055704  38 00 00 00 */	li r0, 0
lbl_800587C8:
/* 800587C8 00055708  2C 00 00 7F */	cmpwi r0, 0x7f
/* 800587CC 0005570C  40 81 00 08 */	ble lbl_800587D4
/* 800587D0 00055710  38 00 00 7F */	li r0, 0x7f
lbl_800587D4:
/* 800587D4 00055714  3C 60 80 3B */	lis r3, C5BASE_PITCHTABLE__Q28JASystem6Driver@ha
/* 800587D8 00055718  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 800587DC 0005571C  54 04 10 3A */	slwi r4, r0, 2
/* 800587E0 00055720  38 03 B0 00 */	addi r0, r3, C5BASE_PITCHTABLE__Q28JASystem6Driver@l
/* 800587E4 00055724  7C 60 22 14 */	add r3, r0, r4
/* 800587E8 00055728  C0 03 00 00 */	lfs f0, 0(r3)
/* 800587EC 0005572C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800587F0 00055730  D0 1D 00 50 */	stfs f0, 0x50(r29)
lbl_800587F4:
/* 800587F4 00055734  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800587F8 00055738  3C 00 43 30 */	lis r0, 0x4330
/* 800587FC 0005573C  38 9D 00 68 */	addi r4, r29, 0x68
/* 80058800 00055740  D0 1D 00 4C */	stfs f0, 0x4c(r29)
/* 80058804 00055744  88 7D 00 00 */	lbz r3, 0(r29)
/* 80058808 00055748  C8 42 85 C0 */	lfd f2, $$2421-_SDA2_BASE_(r2)
/* 8005880C 0005574C  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80058810 00055750  C0 02 85 BC */	lfs f0, $$2419-_SDA2_BASE_(r2)
/* 80058814 00055754  90 01 00 68 */	stw r0, 0x68(r1)
/* 80058818 00055758  C8 21 00 68 */	lfd f1, 0x68(r1)
/* 8005881C 0005575C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80058820 00055760  EC 01 00 24 */	fdivs f0, f1, f0
/* 80058824 00055764  D0 1D 00 54 */	stfs f0, 0x54(r29)
/* 80058828 00055768  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 8005882C 0005576C  C0 3D 00 4C */	lfs f1, 0x4c(r29)
/* 80058830 00055770  EC 00 00 32 */	fmuls f0, f0, f0
/* 80058834 00055774  EC 01 00 32 */	fmuls f0, f1, f0
/* 80058838 00055778  D0 1D 00 54 */	stfs f0, 0x54(r29)
/* 8005883C 0005577C  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 80058840 00055780  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80058844 00055784  EC 01 00 32 */	fmuls f0, f1, f0
/* 80058848 00055788  D0 1D 00 54 */	stfs f0, 0x54(r29)
/* 8005884C 0005578C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80058850 00055790  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 80058854 00055794  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80058858 00055798  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 8005885C 0005579C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80058860 000557A0  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 80058864 000557A4  C0 5D 00 68 */	lfs f2, 0x68(r29)
/* 80058868 000557A8  C0 22 85 B0 */	lfs f1, $$2339-_SDA2_BASE_(r2)
/* 8005886C 000557AC  C0 02 85 B4 */	lfs f0, $$2340-_SDA2_BASE_(r2)
/* 80058870 000557B0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80058874 000557B4  40 80 00 0C */	bge lbl_80058880
/* 80058878 000557B8  FC 40 08 90 */	fmr f2, f1
/* 8005887C 000557BC  48 00 00 10 */	b lbl_8005888C
lbl_80058880:
/* 80058880 000557C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80058884 000557C4  40 81 00 08 */	ble lbl_8005888C
/* 80058888 000557C8  FC 40 00 90 */	fmr f2, f0
lbl_8005888C:
/* 8005888C 000557CC  D0 44 00 00 */	stfs f2, 0(r4)
/* 80058890 000557D0  38 9D 00 74 */	addi r4, r29, 0x74
/* 80058894 000557D4  C0 5D 00 74 */	lfs f2, 0x74(r29)
/* 80058898 000557D8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8005889C 000557DC  40 80 00 0C */	bge lbl_800588A8
/* 800588A0 000557E0  FC 40 08 90 */	fmr f2, f1
/* 800588A4 000557E4  48 00 00 10 */	b lbl_800588B4
lbl_800588A8:
/* 800588A8 000557E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800588AC 000557EC  40 81 00 08 */	ble lbl_800588B4
/* 800588B0 000557F0  FC 40 00 90 */	fmr f2, f0
lbl_800588B4:
/* 800588B4 000557F4  D0 44 00 00 */	stfs f2, 0(r4)
/* 800588B8 000557F8  3A E0 00 00 */	li r23, 0
/* 800588BC 000557FC  3B 00 00 00 */	li r24, 0
/* 800588C0 00055800  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800588C4 00055804  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 800588C8 00055808  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800588CC 0005580C  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 800588D0 00055810  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800588D4 00055814  D0 1D 00 84 */	stfs f0, 0x84(r29)
/* 800588D8 00055818  C0 02 85 B4 */	lfs f0, $$2340-_SDA2_BASE_(r2)
/* 800588DC 0005581C  D0 1D 00 8C */	stfs f0, 0x8c(r29)
/* 800588E0 00055820  D0 1D 00 90 */	stfs f0, 0x90(r29)
/* 800588E4 00055824  48 00 00 20 */	b lbl_80058904
lbl_800588E8:
/* 800588E8 00055828  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 800588EC 0005582C  38 7D 00 00 */	addi r3, r29, 0
/* 800588F0 00055830  38 97 00 00 */	addi r4, r23, 0
/* 800588F4 00055834  7C A5 C0 2E */	lwzx r5, r5, r24
/* 800588F8 00055838  48 00 46 E9 */	bl setOscInit__Q28JASystem8TChannelFUlPCQ38JASystem11TOscillator4Osc_
/* 800588FC 0005583C  3A F7 00 01 */	addi r23, r23, 1
/* 80058900 00055840  3B 18 00 04 */	addi r24, r24, 4
lbl_80058904:
/* 80058904 00055844  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80058908 00055848  7C 17 00 40 */	cmplw r23, r0
/* 8005890C 0005584C  41 80 FF DC */	blt lbl_800588E8
/* 80058910 00055850  A0 A1 00 5E */	lhz r5, 0x5e(r1)
/* 80058914 00055854  38 7D 00 00 */	addi r3, r29, 0
/* 80058918 00055858  38 80 00 00 */	li r4, 0
/* 8005891C 0005585C  48 00 47 A1 */	bl directReleaseOsc__Q28JASystem8TChannelFUlUs
/* 80058920 00055860  38 7D 00 00 */	addi r3, r29, 0
/* 80058924 00055864  38 9C 00 00 */	addi r4, r28, 0
/* 80058928 00055868  48 00 4B 69 */	bl play__Q28JASystem8TChannelFUl
/* 8005892C 0005586C  2C 03 00 00 */	cmpwi r3, 0
/* 80058930 00055870  40 82 00 0C */	bne lbl_8005893C
/* 80058934 00055874  38 60 00 00 */	li r3, 0
/* 80058938 00055878  48 00 00 08 */	b lbl_80058940
lbl_8005893C:
/* 8005893C 0005587C  7F A3 EB 78 */	mr r3, r29
lbl_80058940:
/* 80058940 00055880  BA E1 00 74 */	lmw r23, 0x74(r1)
/* 80058944 00055884  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 80058948 00055888  38 21 00 98 */	addi r1, r1, 0x98
/* 8005894C 0005588C  7C 08 03 A6 */	mtlr r0
/* 80058950 00055890  4E 80 00 20 */	blr 

.global noteOnOsc__Q28JASystem7BankMgrFPQ28JASystem11TChannelMgriUcUcUl
noteOnOsc__Q28JASystem7BankMgrFPQ28JASystem11TChannelMgriUcUcUl:
/* 80058954 00055894  7C 08 02 A6 */	mflr r0
/* 80058958 00055898  90 01 00 04 */	stw r0, 4(r1)
/* 8005895C 0005589C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80058960 000558A0  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 80058964 000558A4  3B 64 00 00 */	addi r27, r4, 0
/* 80058968 000558A8  3B 85 00 00 */	addi r28, r5, 0
/* 8005896C 000558AC  3B A6 00 00 */	addi r29, r6, 0
/* 80058970 000558B0  3B C7 00 00 */	addi r30, r7, 0
/* 80058974 000558B4  38 80 00 00 */	li r4, 0
/* 80058978 000558B8  48 00 56 C9 */	bl getLogicalChannel__Q28JASystem11TChannelMgrFUl
/* 8005897C 000558BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80058980 000558C0  40 82 00 0C */	bne lbl_8005898C
/* 80058984 000558C4  38 60 00 00 */	li r3, 0
/* 80058988 000558C8  48 00 01 10 */	b lbl_80058A98
lbl_8005898C:
/* 8005898C 000558CC  93 7F 00 14 */	stw r27, 0x14(r31)
/* 80058990 000558D0  38 00 00 02 */	li r0, 2
/* 80058994 000558D4  57 84 06 3F */	clrlwi. r4, r28, 0x18
/* 80058998 000558D8  98 1F 00 0C */	stb r0, 0xc(r31)
/* 8005899C 000558DC  9B BF 00 00 */	stb r29, 0(r31)
/* 800589A0 000558E0  9B 9F 00 01 */	stb r28, 1(r31)
/* 800589A4 000558E4  C0 22 85 C8 */	lfs f1, $$2435-_SDA2_BASE_(r2)
/* 800589A8 000558E8  C0 0D 81 F0 */	lfs f0, gDacRate__Q28JASystem6Kernel-_SDA_BASE_(r13)
/* 800589AC 000558EC  EC 01 00 24 */	fdivs f0, f1, f0
/* 800589B0 000558F0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 800589B4 000558F4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 800589B8 000558F8  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 800589BC 000558FC  40 80 00 08 */	bge lbl_800589C4
/* 800589C0 00055900  38 80 00 00 */	li r4, 0
lbl_800589C4:
/* 800589C4 00055904  2C 04 00 7F */	cmpwi r4, 0x7f
/* 800589C8 00055908  40 81 00 08 */	ble lbl_800589D0
/* 800589CC 0005590C  38 80 00 7F */	li r4, 0x7f
lbl_800589D0:
/* 800589D0 00055910  3C 60 80 3B */	lis r3, C5BASE_PITCHTABLE__Q28JASystem6Driver@ha
/* 800589D4 00055914  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 800589D8 00055918  54 84 10 3A */	slwi r4, r4, 2
/* 800589DC 0005591C  38 03 B0 00 */	addi r0, r3, C5BASE_PITCHTABLE__Q28JASystem6Driver@l
/* 800589E0 00055920  7C 60 22 14 */	add r3, r0, r4
/* 800589E4 00055924  C0 03 00 00 */	lfs f0, 0(r3)
/* 800589E8 00055928  3C 60 80 3B */	lis r3, OSC_ENV__Q28JASystem7BankMgr@ha
/* 800589EC 0005592C  38 A3 AD 94 */	addi r5, r3, OSC_ENV__Q28JASystem7BankMgr@l
/* 800589F0 00055930  EC 01 00 32 */	fmuls f0, f1, f0
/* 800589F4 00055934  3C 00 43 30 */	lis r0, 0x4330
/* 800589F8 00055938  38 7F 00 00 */	addi r3, r31, 0
/* 800589FC 0005593C  38 80 00 00 */	li r4, 0
/* 80058A00 00055940  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 80058A04 00055944  C0 62 85 B4 */	lfs f3, $$2340-_SDA2_BASE_(r2)
/* 80058A08 00055948  D0 7F 00 4C */	stfs f3, 0x4c(r31)
/* 80058A0C 0005594C  88 DF 00 00 */	lbz r6, 0(r31)
/* 80058A10 00055950  C8 42 85 C0 */	lfd f2, $$2421-_SDA2_BASE_(r2)
/* 80058A14 00055954  90 C1 00 24 */	stw r6, 0x24(r1)
/* 80058A18 00055958  C0 02 85 BC */	lfs f0, $$2419-_SDA2_BASE_(r2)
/* 80058A1C 0005595C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80058A20 00055960  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80058A24 00055964  EC 21 10 28 */	fsubs f1, f1, f2
/* 80058A28 00055968  EC 01 00 24 */	fdivs f0, f1, f0
/* 80058A2C 0005596C  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 80058A30 00055970  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80058A34 00055974  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80058A38 00055978  EC 00 00 32 */	fmuls f0, f0, f0
/* 80058A3C 0005597C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80058A40 00055980  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 80058A44 00055984  C0 22 85 B8 */	lfs f1, $$2418-_SDA2_BASE_(r2)
/* 80058A48 00055988  D0 3F 00 68 */	stfs f1, 0x68(r31)
/* 80058A4C 0005598C  C0 02 85 B0 */	lfs f0, $$2339-_SDA2_BASE_(r2)
/* 80058A50 00055990  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 80058A54 00055994  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 80058A58 00055998  D0 3F 00 6C */	stfs f1, 0x6c(r31)
/* 80058A5C 0005599C  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 80058A60 000559A0  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 80058A64 000559A4  D0 7F 00 8C */	stfs f3, 0x8c(r31)
/* 80058A68 000559A8  D0 7F 00 90 */	stfs f3, 0x90(r31)
/* 80058A6C 000559AC  48 00 45 75 */	bl setOscInit__Q28JASystem8TChannelFUlPCQ38JASystem11TOscillator4Osc_
/* 80058A70 000559B0  38 00 00 00 */	li r0, 0
/* 80058A74 000559B4  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80058A78 000559B8  38 7F 00 00 */	addi r3, r31, 0
/* 80058A7C 000559BC  38 9E 00 00 */	addi r4, r30, 0
/* 80058A80 000559C0  48 00 4A 11 */	bl play__Q28JASystem8TChannelFUl
/* 80058A84 000559C4  2C 03 00 00 */	cmpwi r3, 0
/* 80058A88 000559C8  40 82 00 0C */	bne lbl_80058A94
/* 80058A8C 000559CC  38 60 00 00 */	li r3, 0
/* 80058A90 000559D0  48 00 00 08 */	b lbl_80058A98
lbl_80058A94:
/* 80058A94 000559D4  7F E3 FB 78 */	mr r3, r31
lbl_80058A98:
/* 80058A98 000559D8  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 80058A9C 000559DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80058AA0 000559E0  38 21 00 40 */	addi r1, r1, 0x40
/* 80058AA4 000559E4  7C 08 03 A6 */	mtlr r0
/* 80058AA8 000559E8  4E 80 00 20 */	blr 

.global gateOn__Q28JASystem7BankMgrFPQ28JASystem8TChannelUcUcUl
gateOn__Q28JASystem7BankMgrFPQ28JASystem8TChannelUcUcUl:
/* 80058AAC 000559EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80058AB0 000559F0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80058AB4 000559F4  2C 00 FF FF */	cmpwi r0, -1
/* 80058AB8 000559F8  40 82 00 B4 */	bne lbl_80058B6C
/* 80058ABC 000559FC  90 C3 00 30 */	stw r6, 0x30(r3)
/* 80058AC0 00055A00  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80058AC4 00055A04  90 03 00 34 */	stw r0, 0x34(r3)
/* 80058AC8 00055A08  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80058ACC 00055A0C  28 00 00 02 */	cmplwi r0, 2
/* 80058AD0 00055A10  40 82 00 0C */	bne lbl_80058ADC
/* 80058AD4 00055A14  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80058AD8 00055A18  48 00 00 18 */	b lbl_80058AF0
lbl_80058ADC:
/* 80058ADC 00055A1C  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 80058AE0 00055A20  54 86 06 3E */	clrlwi r6, r4, 0x18
/* 80058AE4 00055A24  38 06 00 3C */	addi r0, r6, 0x3c
/* 80058AE8 00055A28  88 C7 00 02 */	lbz r6, 2(r7)
/* 80058AEC 00055A2C  7C 06 00 50 */	subf r0, r6, r0
lbl_80058AF0:
/* 80058AF0 00055A30  2C 00 00 00 */	cmpwi r0, 0
/* 80058AF4 00055A34  40 80 00 08 */	bge lbl_80058AFC
/* 80058AF8 00055A38  38 00 00 00 */	li r0, 0
lbl_80058AFC:
/* 80058AFC 00055A3C  2C 00 00 7F */	cmpwi r0, 0x7f
/* 80058B00 00055A40  40 81 00 08 */	ble lbl_80058B08
/* 80058B04 00055A44  38 00 00 7F */	li r0, 0x7f
lbl_80058B08:
/* 80058B08 00055A48  3C C0 80 3B */	lis r6, C5BASE_PITCHTABLE__Q28JASystem6Driver@ha
/* 80058B0C 00055A4C  54 07 10 3A */	slwi r7, r0, 2
/* 80058B10 00055A50  38 06 B0 00 */	addi r0, r6, C5BASE_PITCHTABLE__Q28JASystem6Driver@l
/* 80058B14 00055A54  7C C0 3A 14 */	add r6, r0, r7
/* 80058B18 00055A58  C0 26 00 00 */	lfs f1, 0(r6)
/* 80058B1C 00055A5C  3C 00 43 30 */	lis r0, 0x4330
/* 80058B20 00055A60  98 A3 00 00 */	stb r5, 0(r3)
/* 80058B24 00055A64  98 83 00 01 */	stb r4, 1(r3)
/* 80058B28 00055A68  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 80058B2C 00055A6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80058B30 00055A70  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80058B34 00055A74  88 83 00 00 */	lbz r4, 0(r3)
/* 80058B38 00055A78  C8 42 85 C0 */	lfd f2, $$2421-_SDA2_BASE_(r2)
/* 80058B3C 00055A7C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80058B40 00055A80  C0 02 85 BC */	lfs f0, $$2419-_SDA2_BASE_(r2)
/* 80058B44 00055A84  90 01 00 18 */	stw r0, 0x18(r1)
/* 80058B48 00055A88  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 80058B4C 00055A8C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80058B50 00055A90  EC 01 00 24 */	fdivs f0, f1, f0
/* 80058B54 00055A94  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 80058B58 00055A98  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 80058B5C 00055A9C  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 80058B60 00055AA0  EC 00 00 32 */	fmuls f0, f0, f0
/* 80058B64 00055AA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80058B68 00055AA8  D0 03 00 54 */	stfs f0, 0x54(r3)
lbl_80058B6C:
/* 80058B6C 00055AAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80058B70 00055AB0  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
OSC_RELEASE_TABLE__Q28JASystem7BankMgr:
	.incbin "baserom.dol", 0x3A7D88, 0xC
OSC_ENV__Q28JASystem7BankMgr:
	.incbin "baserom.dol", 0x3A7D94, 0x1C

.section .sdata2, "wa"  # 0x8040B460 - 0x80414020
$$2339:
	.incbin "baserom.dol", 0x3E42B0, 0x4
$$2340:
	.incbin "baserom.dol", 0x3E42B4, 0x4
$$2418:
	.incbin "baserom.dol", 0x3E42B8, 0x4
$$2419:
	.incbin "baserom.dol", 0x3E42BC, 0x4
$$2421:
	.incbin "baserom.dol", 0x3E42C0, 0x8
$$2435:
	.incbin "baserom.dol", 0x3E42C8, 0x8

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
sTableSize__Q28JASystem7BankMgr:
	.skip 0x4
sBankArray__Q28JASystem7BankMgr:
	.skip 0x4
sVir2PhyTable__Q28JASystem7BankMgr:
	.skip 0x8
