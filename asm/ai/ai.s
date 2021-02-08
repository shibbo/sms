.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global AIRegisterDMACallback
AIRegisterDMACallback:
/* 8009CDE8 00099D28  7C 08 02 A6 */	mflr r0
/* 8009CDEC 00099D2C  90 01 00 04 */	stw r0, 4(r1)
/* 8009CDF0 00099D30  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8009CDF4 00099D34  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8009CDF8 00099D38  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8009CDFC 00099D3C  7C 7E 1B 78 */	mr r30, r3
/* 8009CE00 00099D40  83 ED 94 BC */	lwz r31, __AID_Callback-_SDA_BASE_(r13)
/* 8009CE04 00099D44  4B FF 33 C9 */	bl OSDisableInterrupts
/* 8009CE08 00099D48  93 CD 94 BC */	stw r30, __AID_Callback-_SDA_BASE_(r13)
/* 8009CE0C 00099D4C  4B FF 33 E9 */	bl OSRestoreInterrupts
/* 8009CE10 00099D50  7F E3 FB 78 */	mr r3, r31
/* 8009CE14 00099D54  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8009CE18 00099D58  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8009CE1C 00099D5C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8009CE20 00099D60  38 21 00 18 */	addi r1, r1, 0x18
/* 8009CE24 00099D64  7C 08 03 A6 */	mtlr r0
/* 8009CE28 00099D68  4E 80 00 20 */	blr 

.global AIInitDMA
AIInitDMA:
/* 8009CE2C 00099D6C  7C 08 02 A6 */	mflr r0
/* 8009CE30 00099D70  90 01 00 04 */	stw r0, 4(r1)
/* 8009CE34 00099D74  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8009CE38 00099D78  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8009CE3C 00099D7C  3B E4 00 00 */	addi r31, r4, 0
/* 8009CE40 00099D80  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8009CE44 00099D84  3B C3 00 00 */	addi r30, r3, 0
/* 8009CE48 00099D88  4B FF 33 85 */	bl OSDisableInterrupts
/* 8009CE4C 00099D8C  3C 80 CC 00 */	lis r4, 0xCC005030@ha
/* 8009CE50 00099D90  A0 04 50 30 */	lhz r0, 0xCC005030@l(r4)
/* 8009CE54 00099D94  38 A4 50 00 */	addi r5, r4, 0x5000
/* 8009CE58 00099D98  38 C4 50 00 */	addi r6, r4, 0x5000
/* 8009CE5C 00099D9C  38 E4 50 00 */	addi r7, r4, 0x5000
/* 8009CE60 00099DA0  54 04 00 2A */	rlwinm r4, r0, 0, 0, 0x15
/* 8009CE64 00099DA4  57 C0 84 3E */	srwi r0, r30, 0x10
/* 8009CE68 00099DA8  7C 80 03 78 */	or r0, r4, r0
/* 8009CE6C 00099DAC  B0 05 00 30 */	sth r0, 0x30(r5)
/* 8009CE70 00099DB0  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8009CE74 00099DB4  A0 86 00 32 */	lhz r4, 0x32(r6)
/* 8009CE78 00099DB8  54 84 06 DE */	rlwinm r4, r4, 0, 0x1b, 0xf
/* 8009CE7C 00099DBC  7C 80 03 78 */	or r0, r4, r0
/* 8009CE80 00099DC0  B0 06 00 32 */	sth r0, 0x32(r6)
/* 8009CE84 00099DC4  57 E0 DC 3E */	rlwinm r0, r31, 0x1b, 0x10, 0x1f
/* 8009CE88 00099DC8  A0 87 00 36 */	lhz r4, 0x36(r7)
/* 8009CE8C 00099DCC  54 84 00 20 */	rlwinm r4, r4, 0, 0, 0x10
/* 8009CE90 00099DD0  7C 80 03 78 */	or r0, r4, r0
/* 8009CE94 00099DD4  B0 07 00 36 */	sth r0, 0x36(r7)
/* 8009CE98 00099DD8  4B FF 33 5D */	bl OSRestoreInterrupts
/* 8009CE9C 00099DDC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8009CEA0 00099DE0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8009CEA4 00099DE4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8009CEA8 00099DE8  38 21 00 18 */	addi r1, r1, 0x18
/* 8009CEAC 00099DEC  7C 08 03 A6 */	mtlr r0
/* 8009CEB0 00099DF0  4E 80 00 20 */	blr 

.global AIStartDMA
AIStartDMA:
/* 8009CEB4 00099DF4  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8009CEB8 00099DF8  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8009CEBC 00099DFC  A0 03 00 36 */	lhz r0, 0x36(r3)
/* 8009CEC0 00099E00  60 00 80 00 */	ori r0, r0, 0x8000
/* 8009CEC4 00099E04  B0 03 00 36 */	sth r0, 0x36(r3)
/* 8009CEC8 00099E08  4E 80 00 20 */	blr 

.global AIResetStreamSampleCount
AIResetStreamSampleCount:
/* 8009CECC 00099E0C  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8009CED0 00099E10  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8009CED4 00099E14  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8009CED8 00099E18  60 00 00 20 */	ori r0, r0, 0x20
/* 8009CEDC 00099E1C  90 03 6C 00 */	stw r0, 0x6c00(r3)
/* 8009CEE0 00099E20  4E 80 00 20 */	blr 

.global AISetStreamPlayState
AISetStreamPlayState:
/* 8009CEE4 00099E24  7C 08 02 A6 */	mflr r0
/* 8009CEE8 00099E28  90 01 00 04 */	stw r0, 4(r1)
/* 8009CEEC 00099E2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009CEF0 00099E30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8009CEF4 00099E34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8009CEF8 00099E38  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8009CEFC 00099E3C  7C 7D 1B 78 */	mr r29, r3
/* 8009CF00 00099E40  48 00 00 BD */	bl AIGetStreamPlayState
/* 8009CF04 00099E44  7C 1D 18 40 */	cmplw r29, r3
/* 8009CF08 00099E48  41 82 00 98 */	beq lbl_8009CFA0
/* 8009CF0C 00099E4C  48 00 02 B1 */	bl AIGetStreamSampleRate
/* 8009CF10 00099E50  28 03 00 00 */	cmplwi r3, 0
/* 8009CF14 00099E54  40 82 00 78 */	bne lbl_8009CF8C
/* 8009CF18 00099E58  28 1D 00 01 */	cmplwi r29, 1
/* 8009CF1C 00099E5C  40 82 00 70 */	bne lbl_8009CF8C
/* 8009CF20 00099E60  48 00 02 F5 */	bl AIGetStreamVolRight
/* 8009CF24 00099E64  7C 7E 1B 78 */	mr r30, r3
/* 8009CF28 00099E68  48 00 02 C1 */	bl AIGetStreamVolLeft
/* 8009CF2C 00099E6C  3B A3 00 00 */	addi r29, r3, 0
/* 8009CF30 00099E70  38 60 00 00 */	li r3, 0
/* 8009CF34 00099E74  48 00 02 C5 */	bl AISetStreamVolRight
/* 8009CF38 00099E78  38 60 00 00 */	li r3, 0
/* 8009CF3C 00099E7C  48 00 02 91 */	bl AISetStreamVolLeft
/* 8009CF40 00099E80  4B FF 32 8D */	bl OSDisableInterrupts
/* 8009CF44 00099E84  7C 7F 1B 78 */	mr r31, r3
/* 8009CF48 00099E88  48 00 05 A5 */	bl __AI_SRC_INIT
/* 8009CF4C 00099E8C  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8009CF50 00099E90  80 04 6C 00 */	lwz r0, 0xCC006C00@l(r4)
/* 8009CF54 00099E94  38 7F 00 00 */	addi r3, r31, 0
/* 8009CF58 00099E98  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8009CF5C 00099E9C  60 00 00 20 */	ori r0, r0, 0x20
/* 8009CF60 00099EA0  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 8009CF64 00099EA4  80 04 6C 00 */	lwz r0, 0x6c00(r4)
/* 8009CF68 00099EA8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8009CF6C 00099EAC  60 00 00 01 */	ori r0, r0, 1
/* 8009CF70 00099EB0  90 04 6C 00 */	stw r0, 0x6c00(r4)
/* 8009CF74 00099EB4  4B FF 32 81 */	bl OSRestoreInterrupts
/* 8009CF78 00099EB8  7F C3 F3 78 */	mr r3, r30
/* 8009CF7C 00099EBC  48 00 02 51 */	bl AISetStreamVolLeft
/* 8009CF80 00099EC0  7F A3 EB 78 */	mr r3, r29
/* 8009CF84 00099EC4  48 00 02 75 */	bl AISetStreamVolRight
/* 8009CF88 00099EC8  48 00 00 18 */	b lbl_8009CFA0
lbl_8009CF8C:
/* 8009CF8C 00099ECC  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8009CF90 00099ED0  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8009CF94 00099ED4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8009CF98 00099ED8  7C 00 EB 78 */	or r0, r0, r29
/* 8009CF9C 00099EDC  90 03 6C 00 */	stw r0, 0x6c00(r3)
lbl_8009CFA0:
/* 8009CFA0 00099EE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009CFA4 00099EE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8009CFA8 00099EE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8009CFAC 00099EEC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8009CFB0 00099EF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8009CFB4 00099EF4  7C 08 03 A6 */	mtlr r0
/* 8009CFB8 00099EF8  4E 80 00 20 */	blr 

.global AIGetStreamPlayState
AIGetStreamPlayState:
/* 8009CFBC 00099EFC  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8009CFC0 00099F00  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8009CFC4 00099F04  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 8009CFC8 00099F08  4E 80 00 20 */	blr 

.global AISetDSPSampleRate
AISetDSPSampleRate:
/* 8009CFCC 00099F0C  7C 08 02 A6 */	mflr r0
/* 8009CFD0 00099F10  90 01 00 04 */	stw r0, 4(r1)
/* 8009CFD4 00099F14  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8009CFD8 00099F18  BF 41 00 10 */	stmw r26, 0x10(r1)
/* 8009CFDC 00099F1C  7C 7A 1B 78 */	mr r26, r3
/* 8009CFE0 00099F20  48 00 00 CD */	bl AIGetDSPSampleRate
/* 8009CFE4 00099F24  7C 1A 18 40 */	cmplw r26, r3
/* 8009CFE8 00099F28  41 82 00 B0 */	beq lbl_8009D098
/* 8009CFEC 00099F2C  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 8009CFF0 00099F30  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8009CFF4 00099F34  28 1A 00 00 */	cmplwi r26, 0
/* 8009CFF8 00099F38  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8009CFFC 00099F3C  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D000 00099F40  40 82 00 98 */	bne lbl_8009D098
/* 8009D004 00099F44  48 00 01 E5 */	bl AIGetStreamVolLeft
/* 8009D008 00099F48  7C 7E 1B 78 */	mr r30, r3
/* 8009D00C 00099F4C  48 00 02 09 */	bl AIGetStreamVolRight
/* 8009D010 00099F50  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8009D014 00099F54  3B A3 00 00 */	addi r29, r3, 0
/* 8009D018 00099F58  54 1B 07 FE */	clrlwi r27, r0, 0x1f
/* 8009D01C 00099F5C  48 00 01 A1 */	bl AIGetStreamSampleRate
/* 8009D020 00099F60  3B 83 00 00 */	addi r28, r3, 0
/* 8009D024 00099F64  38 60 00 00 */	li r3, 0
/* 8009D028 00099F68  48 00 01 A5 */	bl AISetStreamVolLeft
/* 8009D02C 00099F6C  38 60 00 00 */	li r3, 0
/* 8009D030 00099F70  48 00 01 C9 */	bl AISetStreamVolRight
/* 8009D034 00099F74  4B FF 31 99 */	bl OSDisableInterrupts
/* 8009D038 00099F78  7C 7A 1B 78 */	mr r26, r3
/* 8009D03C 00099F7C  48 00 04 B1 */	bl __AI_SRC_INIT
/* 8009D040 00099F80  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8009D044 00099F84  57 80 08 3C */	slwi r0, r28, 1
/* 8009D048 00099F88  38 7A 00 00 */	addi r3, r26, 0
/* 8009D04C 00099F8C  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 8009D050 00099F90  60 84 00 20 */	ori r4, r4, 0x20
/* 8009D054 00099F94  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8009D058 00099F98  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8009D05C 00099F9C  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8009D060 00099FA0  7C 80 03 78 */	or r0, r4, r0
/* 8009D064 00099FA4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D068 00099FA8  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8009D06C 00099FAC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8009D070 00099FB0  7C 00 DB 78 */	or r0, r0, r27
/* 8009D074 00099FB4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D078 00099FB8  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8009D07C 00099FBC  60 00 00 40 */	ori r0, r0, 0x40
/* 8009D080 00099FC0  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D084 00099FC4  4B FF 31 71 */	bl OSRestoreInterrupts
/* 8009D088 00099FC8  7F C3 F3 78 */	mr r3, r30
/* 8009D08C 00099FCC  48 00 01 41 */	bl AISetStreamVolLeft
/* 8009D090 00099FD0  7F A3 EB 78 */	mr r3, r29
/* 8009D094 00099FD4  48 00 01 65 */	bl AISetStreamVolRight
lbl_8009D098:
/* 8009D098 00099FD8  BB 41 00 10 */	lmw r26, 0x10(r1)
/* 8009D09C 00099FDC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8009D0A0 00099FE0  38 21 00 28 */	addi r1, r1, 0x28
/* 8009D0A4 00099FE4  7C 08 03 A6 */	mtlr r0
/* 8009D0A8 00099FE8  4E 80 00 20 */	blr 

.global AIGetDSPSampleRate
AIGetDSPSampleRate:
/* 8009D0AC 00099FEC  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8009D0B0 00099FF0  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8009D0B4 00099FF4  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 8009D0B8 00099FF8  68 03 00 01 */	xori r3, r0, 1
/* 8009D0BC 00099FFC  4E 80 00 20 */	blr 

.global AISetStreamSampleRate
AISetStreamSampleRate:
/* 8009D0C0 0009A000  7C 08 02 A6 */	mflr r0
/* 8009D0C4 0009A004  28 03 00 01 */	cmplwi r3, 1
/* 8009D0C8 0009A008  90 01 00 04 */	stw r0, 4(r1)
/* 8009D0CC 0009A00C  94 21 FF F8 */	stwu r1, -8(r1)
/* 8009D0D0 0009A010  40 82 00 08 */	bne lbl_8009D0D8
/* 8009D0D4 0009A014  48 00 00 15 */	bl __AI_set_stream_sample_rate
lbl_8009D0D8:
/* 8009D0D8 0009A018  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8009D0DC 0009A01C  38 21 00 08 */	addi r1, r1, 8
/* 8009D0E0 0009A020  7C 08 03 A6 */	mtlr r0
/* 8009D0E4 0009A024  4E 80 00 20 */	blr 

.global __AI_set_stream_sample_rate
__AI_set_stream_sample_rate:
/* 8009D0E8 0009A028  7C 08 02 A6 */	mflr r0
/* 8009D0EC 0009A02C  90 01 00 04 */	stw r0, 4(r1)
/* 8009D0F0 0009A030  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8009D0F4 0009A034  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 8009D0F8 0009A038  7C 79 1B 78 */	mr r25, r3
/* 8009D0FC 0009A03C  48 00 00 C1 */	bl AIGetStreamSampleRate
/* 8009D100 0009A040  7C 19 18 40 */	cmplw r25, r3
/* 8009D104 0009A044  41 82 00 A4 */	beq lbl_8009D1A8
/* 8009D108 0009A048  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 8009D10C 0009A04C  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8009D110 0009A050  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8009D114 0009A054  7C 1D 03 78 */	mr r29, r0
/* 8009D118 0009A058  48 00 00 D1 */	bl AIGetStreamVolLeft
/* 8009D11C 0009A05C  7C 7C 1B 78 */	mr r28, r3
/* 8009D120 0009A060  48 00 00 F5 */	bl AIGetStreamVolRight
/* 8009D124 0009A064  3B 63 00 00 */	addi r27, r3, 0
/* 8009D128 0009A068  38 60 00 00 */	li r3, 0
/* 8009D12C 0009A06C  48 00 00 CD */	bl AISetStreamVolRight
/* 8009D130 0009A070  38 60 00 00 */	li r3, 0
/* 8009D134 0009A074  48 00 00 99 */	bl AISetStreamVolLeft
/* 8009D138 0009A078  80 7F 6C 00 */	lwz r3, 0x6c00(r31)
/* 8009D13C 0009A07C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8009D140 0009A080  54 7A 06 72 */	rlwinm r26, r3, 0, 0x19, 0x19
/* 8009D144 0009A084  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8009D148 0009A088  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D14C 0009A08C  4B FF 30 81 */	bl OSDisableInterrupts
/* 8009D150 0009A090  7C 7E 1B 78 */	mr r30, r3
/* 8009D154 0009A094  48 00 03 99 */	bl __AI_SRC_INIT
/* 8009D158 0009A098  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8009D15C 0009A09C  57 20 08 3C */	slwi r0, r25, 1
/* 8009D160 0009A0A0  38 7E 00 00 */	addi r3, r30, 0
/* 8009D164 0009A0A4  7C 84 D3 78 */	or r4, r4, r26
/* 8009D168 0009A0A8  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8009D16C 0009A0AC  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8009D170 0009A0B0  54 84 06 F2 */	rlwinm r4, r4, 0, 0x1b, 0x19
/* 8009D174 0009A0B4  60 84 00 20 */	ori r4, r4, 0x20
/* 8009D178 0009A0B8  90 9F 6C 00 */	stw r4, 0x6c00(r31)
/* 8009D17C 0009A0BC  80 9F 6C 00 */	lwz r4, 0x6c00(r31)
/* 8009D180 0009A0C0  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 8009D184 0009A0C4  7C 80 03 78 */	or r0, r4, r0
/* 8009D188 0009A0C8  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D18C 0009A0CC  4B FF 30 69 */	bl OSRestoreInterrupts
/* 8009D190 0009A0D0  7F A3 EB 78 */	mr r3, r29
/* 8009D194 0009A0D4  4B FF FD 51 */	bl AISetStreamPlayState
/* 8009D198 0009A0D8  7F 83 E3 78 */	mr r3, r28
/* 8009D19C 0009A0DC  48 00 00 31 */	bl AISetStreamVolLeft
/* 8009D1A0 0009A0E0  7F 63 DB 78 */	mr r3, r27
/* 8009D1A4 0009A0E4  48 00 00 55 */	bl AISetStreamVolRight
lbl_8009D1A8:
/* 8009D1A8 0009A0E8  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 8009D1AC 0009A0EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8009D1B0 0009A0F0  38 21 00 30 */	addi r1, r1, 0x30
/* 8009D1B4 0009A0F4  7C 08 03 A6 */	mtlr r0
/* 8009D1B8 0009A0F8  4E 80 00 20 */	blr 

.global AIGetStreamSampleRate
AIGetStreamSampleRate:
/* 8009D1BC 0009A0FC  3C 60 CC 00 */	lis r3, 0xCC006C00@ha
/* 8009D1C0 0009A100  80 03 6C 00 */	lwz r0, 0xCC006C00@l(r3)
/* 8009D1C4 0009A104  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 8009D1C8 0009A108  4E 80 00 20 */	blr 

.global AISetStreamVolLeft
AISetStreamVolLeft:
/* 8009D1CC 0009A10C  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8009D1D0 0009A110  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 8009D1D4 0009A114  80 04 00 04 */	lwz r0, 4(r4)
/* 8009D1D8 0009A118  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 8009D1DC 0009A11C  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 8009D1E0 0009A120  90 04 00 04 */	stw r0, 4(r4)
/* 8009D1E4 0009A124  4E 80 00 20 */	blr 

.global AIGetStreamVolLeft
AIGetStreamVolLeft:
/* 8009D1E8 0009A128  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 8009D1EC 0009A12C  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 8009D1F0 0009A130  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8009D1F4 0009A134  4E 80 00 20 */	blr 

.global AISetStreamVolRight
AISetStreamVolRight:
/* 8009D1F8 0009A138  3C 80 CC 00 */	lis r4, 0xCC006C00@ha
/* 8009D1FC 0009A13C  38 84 6C 00 */	addi r4, r4, 0xCC006C00@l
/* 8009D200 0009A140  80 04 00 04 */	lwz r0, 4(r4)
/* 8009D204 0009A144  54 00 06 1E */	rlwinm r0, r0, 0, 0x18, 0xf
/* 8009D208 0009A148  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 8009D20C 0009A14C  90 04 00 04 */	stw r0, 4(r4)
/* 8009D210 0009A150  4E 80 00 20 */	blr 

.global AIGetStreamVolRight
AIGetStreamVolRight:
/* 8009D214 0009A154  3C 60 CC 00 */	lis r3, 0xCC006C04@ha
/* 8009D218 0009A158  80 03 6C 04 */	lwz r0, 0xCC006C04@l(r3)
/* 8009D21C 0009A15C  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 8009D220 0009A160  4E 80 00 20 */	blr 

.global AIInit
AIInit:
/* 8009D224 0009A164  7C 08 02 A6 */	mflr r0
/* 8009D228 0009A168  90 01 00 04 */	stw r0, 4(r1)
/* 8009D22C 0009A16C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8009D230 0009A170  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8009D234 0009A174  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8009D238 0009A178  3B C3 00 00 */	addi r30, r3, 0
/* 8009D23C 0009A17C  80 0D 94 C8 */	lwz r0, __AI_init_flag-_SDA_BASE_(r13)
/* 8009D240 0009A180  2C 00 00 01 */	cmpwi r0, 1
/* 8009D244 0009A184  41 82 01 2C */	beq lbl_8009D370
/* 8009D248 0009A188  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8009D24C 0009A18C  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8009D250 0009A190  3C 60 43 1C */	lis r3, 0x431BDE83@ha
/* 8009D254 0009A194  3C 80 00 01 */	lis r4, 0x0000A428@ha
/* 8009D258 0009A198  54 00 F0 BE */	srwi r0, r0, 2
/* 8009D25C 0009A19C  38 63 DE 83 */	addi r3, r3, 0x431BDE83@l
/* 8009D260 0009A1A0  7C 03 00 16 */	mulhwu r0, r3, r0
/* 8009D264 0009A1A4  54 09 8B FE */	srwi r9, r0, 0xf
/* 8009D268 0009A1A8  38 A4 A4 28 */	addi r5, r4, 0x0000A428@l
/* 8009D26C 0009A1AC  38 64 A4 10 */	addi r3, r4, -23536
/* 8009D270 0009A1B0  38 04 F6 18 */	addi r0, r4, -2536
/* 8009D274 0009A1B4  3C 80 10 62 */	lis r4, 0x10624DD3@ha
/* 8009D278 0009A1B8  7C E9 29 D6 */	mullw r7, r9, r5
/* 8009D27C 0009A1BC  39 44 4D D3 */	addi r10, r4, 0x10624DD3@l
/* 8009D280 0009A1C0  7C A9 19 D6 */	mullw r5, r9, r3
/* 8009D284 0009A1C4  7C 89 01 D6 */	mullw r4, r9, r0
/* 8009D288 0009A1C8  1D 09 7B 24 */	mulli r8, r9, 0x7b24
/* 8009D28C 0009A1CC  1C 69 0B B8 */	mulli r3, r9, 0xbb8
/* 8009D290 0009A1D0  7D 0A 40 16 */	mulhwu r8, r10, r8
/* 8009D294 0009A1D4  7C EA 38 16 */	mulhwu r7, r10, r7
/* 8009D298 0009A1D8  7C AA 28 16 */	mulhwu r5, r10, r5
/* 8009D29C 0009A1DC  7C 8A 20 16 */	mulhwu r4, r10, r4
/* 8009D2A0 0009A1E0  7C 6A 18 16 */	mulhwu r3, r10, r3
/* 8009D2A4 0009A1E4  55 08 BA 7E */	srwi r8, r8, 9
/* 8009D2A8 0009A1E8  54 E7 BA 7E */	srwi r7, r7, 9
/* 8009D2AC 0009A1EC  91 0D 94 D4 */	stw r8, lbl_80409F94-_SDA_BASE_(r13)
/* 8009D2B0 0009A1F0  54 A5 BA 7E */	srwi r5, r5, 9
/* 8009D2B4 0009A1F4  54 84 BA 7E */	srwi r4, r4, 9
/* 8009D2B8 0009A1F8  90 ED 94 DC */	stw r7, lbl_80409F9C-_SDA_BASE_(r13)
/* 8009D2BC 0009A1FC  3B E0 00 00 */	li r31, 0
/* 8009D2C0 0009A200  54 63 BA 7E */	srwi r3, r3, 9
/* 8009D2C4 0009A204  90 AD 94 E4 */	stw r5, lbl_80409FA4-_SDA_BASE_(r13)
/* 8009D2C8 0009A208  3C C0 CC 00 */	lis r6, 0xCC006C00@ha
/* 8009D2CC 0009A20C  90 6D 94 F4 */	stw r3, lbl_80409FB4-_SDA_BASE_(r13)
/* 8009D2D0 0009A210  38 60 00 01 */	li r3, 1
/* 8009D2D4 0009A214  80 06 6C 00 */	lwz r0, 0xCC006C00@l(r6)
/* 8009D2D8 0009A218  90 8D 94 EC */	stw r4, lbl_80409FAC-_SDA_BASE_(r13)
/* 8009D2DC 0009A21C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8009D2E0 0009A220  60 00 00 20 */	ori r0, r0, 0x20
/* 8009D2E4 0009A224  93 ED 94 D0 */	stw r31, bound_32KHz-_SDA_BASE_(r13)
/* 8009D2E8 0009A228  93 ED 94 D8 */	stw r31, bound_48KHz-_SDA_BASE_(r13)
/* 8009D2EC 0009A22C  93 ED 94 E0 */	stw r31, min_wait-_SDA_BASE_(r13)
/* 8009D2F0 0009A230  93 ED 94 E8 */	stw r31, max_wait-_SDA_BASE_(r13)
/* 8009D2F4 0009A234  93 ED 94 F0 */	stw r31, buffer-_SDA_BASE_(r13)
/* 8009D2F8 0009A238  80 A6 6C 04 */	lwz r5, 0x6c04(r6)
/* 8009D2FC 0009A23C  90 06 6C 00 */	stw r0, 0x6c00(r6)
/* 8009D300 0009A240  54 A0 06 1E */	rlwinm r0, r5, 0, 0x18, 0xf
/* 8009D304 0009A244  60 00 00 00 */	nop 
/* 8009D308 0009A248  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 8009D30C 0009A24C  80 06 6C 04 */	lwz r0, 0x6c04(r6)
/* 8009D310 0009A250  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 8009D314 0009A254  60 00 00 00 */	nop 
/* 8009D318 0009A258  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 8009D31C 0009A25C  93 E6 6C 0C */	stw r31, 0x6c0c(r6)
/* 8009D320 0009A260  4B FF FD C9 */	bl __AI_set_stream_sample_rate
/* 8009D324 0009A264  38 60 00 00 */	li r3, 0
/* 8009D328 0009A268  4B FF FC A5 */	bl AISetDSPSampleRate
/* 8009D32C 0009A26C  3C 60 80 0A */	lis r3, __AIDHandler@ha
/* 8009D330 0009A270  93 ED 94 B8 */	stw r31, __AIS_Callback-_SDA_BASE_(r13)
/* 8009D334 0009A274  38 83 D4 04 */	addi r4, r3, __AIDHandler@l
/* 8009D338 0009A278  93 ED 94 BC */	stw r31, __AID_Callback-_SDA_BASE_(r13)
/* 8009D33C 0009A27C  38 60 00 05 */	li r3, 5
/* 8009D340 0009A280  93 CD 94 C0 */	stw r30, __CallbackStack-_SDA_BASE_(r13)
/* 8009D344 0009A284  4B FF 2E D5 */	bl __OSSetInterruptHandler
/* 8009D348 0009A288  3C 60 04 00 */	lis r3, 0x400
/* 8009D34C 0009A28C  4B FF 32 D1 */	bl __OSUnmaskInterrupts
/* 8009D350 0009A290  3C 60 80 0A */	lis r3, __AISHandler@ha
/* 8009D354 0009A294  38 83 D3 88 */	addi r4, r3, __AISHandler@l
/* 8009D358 0009A298  38 60 00 08 */	li r3, 8
/* 8009D35C 0009A29C  4B FF 2E BD */	bl __OSSetInterruptHandler
/* 8009D360 0009A2A0  3C 60 00 80 */	lis r3, 0x80
/* 8009D364 0009A2A4  4B FF 32 B9 */	bl __OSUnmaskInterrupts
/* 8009D368 0009A2A8  38 00 00 01 */	li r0, 1
/* 8009D36C 0009A2AC  90 0D 94 C8 */	stw r0, __AI_init_flag-_SDA_BASE_(r13)
lbl_8009D370:
/* 8009D370 0009A2B0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8009D374 0009A2B4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8009D378 0009A2B8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8009D37C 0009A2BC  38 21 00 18 */	addi r1, r1, 0x18
/* 8009D380 0009A2C0  7C 08 03 A6 */	mtlr r0
/* 8009D384 0009A2C4  4E 80 00 20 */	blr 

.global __AISHandler
__AISHandler:
/* 8009D388 0009A2C8  7C 08 02 A6 */	mflr r0
/* 8009D38C 0009A2CC  90 01 00 04 */	stw r0, 4(r1)
/* 8009D390 0009A2D0  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8009D394 0009A2D4  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8009D398 0009A2D8  3F E0 CC 00 */	lis r31, 0xCC006C00@ha
/* 8009D39C 0009A2DC  80 1F 6C 00 */	lwz r0, 0xCC006C00@l(r31)
/* 8009D3A0 0009A2E0  38 61 00 10 */	addi r3, r1, 0x10
/* 8009D3A4 0009A2E4  93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 8009D3A8 0009A2E8  60 00 00 08 */	ori r0, r0, 8
/* 8009D3AC 0009A2EC  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D3B0 0009A2F0  3B C4 00 00 */	addi r30, r4, 0
/* 8009D3B4 0009A2F4  4B FF 16 31 */	bl OSClearContext
/* 8009D3B8 0009A2F8  38 61 00 10 */	addi r3, r1, 0x10
/* 8009D3BC 0009A2FC  4B FF 14 61 */	bl OSSetCurrentContext
/* 8009D3C0 0009A300  81 8D 94 B8 */	lwz r12, __AIS_Callback-_SDA_BASE_(r13)
/* 8009D3C4 0009A304  28 0C 00 00 */	cmplwi r12, 0
/* 8009D3C8 0009A308  41 82 00 14 */	beq lbl_8009D3DC
/* 8009D3CC 0009A30C  38 7F 6C 00 */	addi r3, r31, 0x6c00
/* 8009D3D0 0009A310  7D 88 03 A6 */	mtlr r12
/* 8009D3D4 0009A314  80 63 00 08 */	lwz r3, 8(r3)
/* 8009D3D8 0009A318  4E 80 00 21 */	blrl 
lbl_8009D3DC:
/* 8009D3DC 0009A31C  38 61 00 10 */	addi r3, r1, 0x10
/* 8009D3E0 0009A320  4B FF 16 05 */	bl OSClearContext
/* 8009D3E4 0009A324  7F C3 F3 78 */	mr r3, r30
/* 8009D3E8 0009A328  4B FF 14 35 */	bl OSSetCurrentContext
/* 8009D3EC 0009A32C  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8009D3F0 0009A330  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8009D3F4 0009A334  83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 8009D3F8 0009A338  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8009D3FC 0009A33C  7C 08 03 A6 */	mtlr r0
/* 8009D400 0009A340  4E 80 00 20 */	blr 

.global __AIDHandler
__AIDHandler:
/* 8009D404 0009A344  7C 08 02 A6 */	mflr r0
/* 8009D408 0009A348  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8009D40C 0009A34C  90 01 00 04 */	stw r0, 4(r1)
/* 8009D410 0009A350  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8009D414 0009A354  38 00 FF 5F */	li r0, -161
/* 8009D418 0009A358  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 8009D41C 0009A35C  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 8009D420 0009A360  3B E4 00 00 */	addi r31, r4, 0
/* 8009D424 0009A364  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 8009D428 0009A368  7C A0 00 38 */	and r0, r5, r0
/* 8009D42C 0009A36C  60 00 00 08 */	ori r0, r0, 8
/* 8009D430 0009A370  B0 03 00 0A */	sth r0, 0xa(r3)
/* 8009D434 0009A374  38 61 00 10 */	addi r3, r1, 0x10
/* 8009D438 0009A378  4B FF 15 AD */	bl OSClearContext
/* 8009D43C 0009A37C  38 61 00 10 */	addi r3, r1, 0x10
/* 8009D440 0009A380  4B FF 13 DD */	bl OSSetCurrentContext
/* 8009D444 0009A384  80 6D 94 BC */	lwz r3, __AID_Callback-_SDA_BASE_(r13)
/* 8009D448 0009A388  28 03 00 00 */	cmplwi r3, 0
/* 8009D44C 0009A38C  41 82 00 24 */	beq lbl_8009D470
/* 8009D450 0009A390  80 0D 94 C0 */	lwz r0, __CallbackStack-_SDA_BASE_(r13)
/* 8009D454 0009A394  28 00 00 00 */	cmplwi r0, 0
/* 8009D458 0009A398  41 82 00 0C */	beq lbl_8009D464
/* 8009D45C 0009A39C  48 00 00 39 */	bl __AICallbackStackSwitch
/* 8009D460 0009A3A0  48 00 00 10 */	b lbl_8009D470
lbl_8009D464:
/* 8009D464 0009A3A4  39 83 00 00 */	addi r12, r3, 0
/* 8009D468 0009A3A8  7D 88 03 A6 */	mtlr r12
/* 8009D46C 0009A3AC  4E 80 00 21 */	blrl 
lbl_8009D470:
/* 8009D470 0009A3B0  38 61 00 10 */	addi r3, r1, 0x10
/* 8009D474 0009A3B4  4B FF 15 71 */	bl OSClearContext
/* 8009D478 0009A3B8  7F E3 FB 78 */	mr r3, r31
/* 8009D47C 0009A3BC  4B FF 13 A1 */	bl OSSetCurrentContext
/* 8009D480 0009A3C0  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 8009D484 0009A3C4  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 8009D488 0009A3C8  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 8009D48C 0009A3CC  7C 08 03 A6 */	mtlr r0
/* 8009D490 0009A3D0  4E 80 00 20 */	blr 

.global __AICallbackStackSwitch
__AICallbackStackSwitch:
/* 8009D494 0009A3D4  7C 08 02 A6 */	mflr r0
/* 8009D498 0009A3D8  90 01 00 04 */	stw r0, 4(r1)
/* 8009D49C 0009A3DC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8009D4A0 0009A3E0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8009D4A4 0009A3E4  7C 7F 1B 78 */	mr r31, r3
/* 8009D4A8 0009A3E8  3C A0 80 41 */	lis r5, __OldStack@ha
/* 8009D4AC 0009A3EC  38 A5 9F 84 */	addi r5, r5, __OldStack@l
/* 8009D4B0 0009A3F0  90 25 00 00 */	stw r1, 0(r5)
/* 8009D4B4 0009A3F4  3C A0 80 41 */	lis r5, __CallbackStack@ha
/* 8009D4B8 0009A3F8  38 A5 9F 80 */	addi r5, r5, __CallbackStack@l
/* 8009D4BC 0009A3FC  80 25 00 00 */	lwz r1, 0(r5)
/* 8009D4C0 0009A400  38 21 FF F8 */	addi r1, r1, -8
/* 8009D4C4 0009A404  7F E8 03 A6 */	mtlr r31
/* 8009D4C8 0009A408  4E 80 00 21 */	blrl 
/* 8009D4CC 0009A40C  3C A0 80 41 */	lis r5, __OldStack@ha
/* 8009D4D0 0009A410  38 A5 9F 84 */	addi r5, r5, __OldStack@l
/* 8009D4D4 0009A414  80 25 00 00 */	lwz r1, 0(r5)
/* 8009D4D8 0009A418  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8009D4DC 0009A41C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8009D4E0 0009A420  38 21 00 18 */	addi r1, r1, 0x18
/* 8009D4E4 0009A424  7C 08 03 A6 */	mtlr r0
/* 8009D4E8 0009A428  4E 80 00 20 */	blr 

.global __AI_SRC_INIT
__AI_SRC_INIT:
/* 8009D4EC 0009A42C  7C 08 02 A6 */	mflr r0
/* 8009D4F0 0009A430  90 01 00 04 */	stw r0, 4(r1)
/* 8009D4F4 0009A434  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8009D4F8 0009A438  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8009D4FC 0009A43C  38 80 00 00 */	li r4, 0
/* 8009D500 0009A440  38 60 00 00 */	li r3, 0
/* 8009D504 0009A444  38 00 00 00 */	li r0, 0
/* 8009D508 0009A448  3B 80 00 00 */	li r28, 0
/* 8009D50C 0009A44C  3B A0 00 00 */	li r29, 0
/* 8009D510 0009A450  48 00 00 04 */	b lbl_8009D514
lbl_8009D514:
/* 8009D514 0009A454  3F E0 CC 00 */	lis r31, 0xcc00
/* 8009D518 0009A458  48 00 00 04 */	b lbl_8009D51C
lbl_8009D51C:
/* 8009D51C 0009A45C  48 00 01 64 */	b lbl_8009D680
lbl_8009D520:
/* 8009D520 0009A460  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8009D524 0009A464  3B DF 6C 00 */	addi r30, r31, 0x6c00
/* 8009D528 0009A468  3B DE 00 08 */	addi r30, r30, 8
/* 8009D52C 0009A46C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8009D530 0009A470  60 00 00 20 */	ori r0, r0, 0x20
/* 8009D534 0009A474  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D538 0009A478  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8009D53C 0009A47C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8009D540 0009A480  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D544 0009A484  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8009D548 0009A488  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8009D54C 0009A48C  60 00 00 01 */	ori r0, r0, 1
/* 8009D550 0009A490  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D554 0009A494  80 7E 00 00 */	lwz r3, 0(r30)
/* 8009D558 0009A498  48 00 00 04 */	b lbl_8009D55C
lbl_8009D55C:
/* 8009D55C 0009A49C  48 00 00 04 */	b lbl_8009D560
lbl_8009D560:
/* 8009D560 0009A4A0  80 1E 00 00 */	lwz r0, 0(r30)
/* 8009D564 0009A4A4  7C 03 00 40 */	cmplw r3, r0
/* 8009D568 0009A4A8  41 82 FF F8 */	beq lbl_8009D560
/* 8009D56C 0009A4AC  4B FF 68 8D */	bl OSGetTime
/* 8009D570 0009A4B0  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8009D574 0009A4B4  7C 9A 23 78 */	mr r26, r4
/* 8009D578 0009A4B8  7C 7B 1B 78 */	mr r27, r3
/* 8009D57C 0009A4BC  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8009D580 0009A4C0  60 00 00 02 */	ori r0, r0, 2
/* 8009D584 0009A4C4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D588 0009A4C8  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8009D58C 0009A4CC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8009D590 0009A4D0  60 00 00 01 */	ori r0, r0, 1
/* 8009D594 0009A4D4  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D598 0009A4D8  80 7E 00 00 */	lwz r3, 0(r30)
/* 8009D59C 0009A4DC  48 00 00 04 */	b lbl_8009D5A0
lbl_8009D5A0:
/* 8009D5A0 0009A4E0  48 00 00 04 */	b lbl_8009D5A4
lbl_8009D5A4:
/* 8009D5A4 0009A4E4  80 1E 00 00 */	lwz r0, 0(r30)
/* 8009D5A8 0009A4E8  7C 03 00 40 */	cmplw r3, r0
/* 8009D5AC 0009A4EC  41 82 FF F8 */	beq lbl_8009D5A4
/* 8009D5B0 0009A4F0  4B FF 68 49 */	bl OSGetTime
/* 8009D5B4 0009A4F4  7D 1A 20 10 */	subfc r8, r26, r4
/* 8009D5B8 0009A4F8  81 8D 94 D4 */	lwz r12, lbl_80409F94-_SDA_BASE_(r13)
/* 8009D5BC 0009A4FC  80 BF 6C 00 */	lwz r5, 0x6c00(r31)
/* 8009D5C0 0009A500  7C FB 19 10 */	subfe r7, r27, r3
/* 8009D5C4 0009A504  81 4D 94 F4 */	lwz r10, lbl_80409FB4-_SDA_BASE_(r13)
/* 8009D5C8 0009A508  6C E7 80 00 */	xoris r7, r7, 0x8000
/* 8009D5CC 0009A50C  54 A5 07 FA */	rlwinm r5, r5, 0, 0x1f, 0x1d
/* 8009D5D0 0009A510  81 6D 94 D0 */	lwz r11, bound_32KHz-_SDA_BASE_(r13)
/* 8009D5D4 0009A514  7C CA 60 10 */	subfc r6, r10, r12
/* 8009D5D8 0009A518  81 2D 94 F0 */	lwz r9, buffer-_SDA_BASE_(r13)
/* 8009D5DC 0009A51C  90 BF 6C 00 */	stw r5, 0x6c00(r31)
/* 8009D5E0 0009A520  7C 09 59 10 */	subfe r0, r9, r11
/* 8009D5E4 0009A524  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8009D5E8 0009A528  7C 06 40 10 */	subfc r0, r6, r8
/* 8009D5EC 0009A52C  80 1F 6C 00 */	lwz r0, 0x6c00(r31)
/* 8009D5F0 0009A530  7C A5 39 10 */	subfe r5, r5, r7
/* 8009D5F4 0009A534  7C A7 39 10 */	subfe r5, r7, r7
/* 8009D5F8 0009A538  7C A5 00 D0 */	neg r5, r5
/* 8009D5FC 0009A53C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8009D600 0009A540  2C 05 00 00 */	cmpwi r5, 0
/* 8009D604 0009A544  90 1F 6C 00 */	stw r0, 0x6c00(r31)
/* 8009D608 0009A548  41 82 00 14 */	beq lbl_8009D61C
/* 8009D60C 0009A54C  83 AD 94 E0 */	lwz r29, min_wait-_SDA_BASE_(r13)
/* 8009D610 0009A550  38 00 00 01 */	li r0, 1
/* 8009D614 0009A554  83 8D 94 E4 */	lwz r28, lbl_80409FA4-_SDA_BASE_(r13)
/* 8009D618 0009A558  48 00 00 68 */	b lbl_8009D680
lbl_8009D61C:
/* 8009D61C 0009A55C  7C CC 50 14 */	addc r6, r12, r10
/* 8009D620 0009A560  7C 0B 49 14 */	adde r0, r11, r9
/* 8009D624 0009A564  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8009D628 0009A568  7C 06 40 10 */	subfc r0, r6, r8
/* 8009D62C 0009A56C  7C A5 39 10 */	subfe r5, r5, r7
/* 8009D630 0009A570  7C A7 39 10 */	subfe r5, r7, r7
/* 8009D634 0009A574  7C A5 00 D0 */	neg r5, r5
/* 8009D638 0009A578  2C 05 00 00 */	cmpwi r5, 0
/* 8009D63C 0009A57C  40 82 00 40 */	bne lbl_8009D67C
/* 8009D640 0009A580  80 AD 94 DC */	lwz r5, lbl_80409F9C-_SDA_BASE_(r13)
/* 8009D644 0009A584  80 0D 94 D8 */	lwz r0, bound_48KHz-_SDA_BASE_(r13)
/* 8009D648 0009A588  7C CA 28 10 */	subfc r6, r10, r5
/* 8009D64C 0009A58C  7C 09 01 10 */	subfe r0, r9, r0
/* 8009D650 0009A590  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8009D654 0009A594  7C 06 40 10 */	subfc r0, r6, r8
/* 8009D658 0009A598  7C A5 39 10 */	subfe r5, r5, r7
/* 8009D65C 0009A59C  7C A7 39 10 */	subfe r5, r7, r7
/* 8009D660 0009A5A0  7C A5 00 D0 */	neg r5, r5
/* 8009D664 0009A5A4  2C 05 00 00 */	cmpwi r5, 0
/* 8009D668 0009A5A8  41 82 00 14 */	beq lbl_8009D67C
/* 8009D66C 0009A5AC  83 AD 94 E8 */	lwz r29, max_wait-_SDA_BASE_(r13)
/* 8009D670 0009A5B0  38 00 00 01 */	li r0, 1
/* 8009D674 0009A5B4  83 8D 94 EC */	lwz r28, lbl_80409FAC-_SDA_BASE_(r13)
/* 8009D678 0009A5B8  48 00 00 08 */	b lbl_8009D680
lbl_8009D67C:
/* 8009D67C 0009A5BC  38 00 00 00 */	li r0, 0
lbl_8009D680:
/* 8009D680 0009A5C0  28 00 00 00 */	cmplwi r0, 0
/* 8009D684 0009A5C4  41 82 FE 9C */	beq lbl_8009D520
/* 8009D688 0009A5C8  7F 64 E0 14 */	addc r27, r4, r28
/* 8009D68C 0009A5CC  7F 43 E9 14 */	adde r26, r3, r29
/* 8009D690 0009A5D0  48 00 00 04 */	b lbl_8009D694
lbl_8009D694:
/* 8009D694 0009A5D4  48 00 00 04 */	b lbl_8009D698
lbl_8009D698:
/* 8009D698 0009A5D8  4B FF 67 61 */	bl OSGetTime
/* 8009D69C 0009A5DC  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8009D6A0 0009A5E0  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 8009D6A4 0009A5E4  7C 1B 20 10 */	subfc r0, r27, r4
/* 8009D6A8 0009A5E8  7C 63 29 10 */	subfe r3, r3, r5
/* 8009D6AC 0009A5EC  7C 65 29 10 */	subfe r3, r5, r5
/* 8009D6B0 0009A5F0  7C 63 00 D0 */	neg r3, r3
/* 8009D6B4 0009A5F4  2C 03 00 00 */	cmpwi r3, 0
/* 8009D6B8 0009A5F8  40 82 FF E0 */	bne lbl_8009D698
/* 8009D6BC 0009A5FC  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8009D6C0 0009A600  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8009D6C4 0009A604  38 21 00 30 */	addi r1, r1, 0x30
/* 8009D6C8 0009A608  7C 08 03 A6 */	mtlr r0
/* 8009D6CC 0009A60C  4E 80 00 20 */	blr 

.section .sbss, "wa"  # 0x804097C0 - 0x8040B45C
__AIS_Callback:
	.skip 0x4
__AID_Callback:
	.skip 0x4
__CallbackStack:
	.skip 0x4
__OldStack:
	.skip 0x4
__AI_init_flag:
	.skip 0x8
bound_32KHz:
	.skip 0x4
lbl_80409F94:
	.skip 0x4
bound_48KHz:
	.skip 0x4
lbl_80409F9C:
	.skip 0x4
min_wait:
	.skip 0x4
lbl_80409FA4:
	.skip 0x4
max_wait:
	.skip 0x4
lbl_80409FAC:
	.skip 0x4
buffer:
	.skip 0x4
lbl_80409FB4:
	.skip 0x4
