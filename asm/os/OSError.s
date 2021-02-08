.include "macros.inc"

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global OSReport
OSReport:
/* 8008EF64 0008BEA4  7C 08 02 A6 */	mflr r0
/* 8008EF68 0008BEA8  90 01 00 04 */	stw r0, 4(r1)
/* 8008EF6C 0008BEAC  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 8008EF70 0008BEB0  40 86 00 24 */	bne cr1, lbl_8008EF94
/* 8008EF74 0008BEB4  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8008EF78 0008BEB8  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8008EF7C 0008BEBC  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8008EF80 0008BEC0  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8008EF84 0008BEC4  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8008EF88 0008BEC8  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8008EF8C 0008BECC  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8008EF90 0008BED0  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8008EF94:
/* 8008EF94 0008BED4  90 61 00 08 */	stw r3, 8(r1)
/* 8008EF98 0008BED8  3C 00 01 00 */	lis r0, 0x100
/* 8008EF9C 0008BEDC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8008EFA0 0008BEE0  38 81 00 6C */	addi r4, r1, 0x6c
/* 8008EFA4 0008BEE4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8008EFA8 0008BEE8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8008EFAC 0008BEEC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8008EFB0 0008BEF0  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8008EFB4 0008BEF4  91 21 00 20 */	stw r9, 0x20(r1)
/* 8008EFB8 0008BEF8  91 41 00 24 */	stw r10, 0x24(r1)
/* 8008EFBC 0008BEFC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8008EFC0 0008BF00  38 01 00 80 */	addi r0, r1, 0x80
/* 8008EFC4 0008BF04  90 01 00 70 */	stw r0, 0x70(r1)
/* 8008EFC8 0008BF08  38 01 00 08 */	addi r0, r1, 8
/* 8008EFCC 0008BF0C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8008EFD0 0008BF10  4B FF 52 35 */	bl vprintf
/* 8008EFD4 0008BF14  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8008EFD8 0008BF18  38 21 00 78 */	addi r1, r1, 0x78
/* 8008EFDC 0008BF1C  7C 08 03 A6 */	mtlr r0
/* 8008EFE0 0008BF20  4E 80 00 20 */	blr 

.global OSPanic
OSPanic:
/* 8008EFE4 0008BF24  7C 08 02 A6 */	mflr r0
/* 8008EFE8 0008BF28  90 01 00 04 */	stw r0, 4(r1)
/* 8008EFEC 0008BF2C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8008EFF0 0008BF30  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8008EFF4 0008BF34  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8008EFF8 0008BF38  93 A1 00 84 */	stw r29, 0x84(r1)
/* 8008EFFC 0008BF3C  93 81 00 80 */	stw r28, 0x80(r1)
/* 8008F000 0008BF40  40 86 00 24 */	bne cr1, lbl_8008F024
/* 8008F004 0008BF44  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8008F008 0008BF48  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8008F00C 0008BF4C  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8008F010 0008BF50  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8008F014 0008BF54  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8008F018 0008BF58  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8008F01C 0008BF5C  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8008F020 0008BF60  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8008F024:
/* 8008F024 0008BF64  90 61 00 08 */	stw r3, 8(r1)
/* 8008F028 0008BF68  3B 83 00 00 */	addi r28, r3, 0
/* 8008F02C 0008BF6C  3B C4 00 00 */	addi r30, r4, 0
/* 8008F030 0008BF70  90 81 00 0C */	stw r4, 0xc(r1)
/* 8008F034 0008BF74  3B A5 00 00 */	addi r29, r5, 0
/* 8008F038 0008BF78  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8008F03C 0008BF7C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8008F040 0008BF80  3C C0 80 3B */	lis r6, $$210@ha
/* 8008F044 0008BF84  3B E6 FA A0 */	addi r31, r6, $$210@l
/* 8008F048 0008BF88  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8008F04C 0008BF8C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8008F050 0008BF90  91 21 00 20 */	stw r9, 0x20(r1)
/* 8008F054 0008BF94  91 41 00 24 */	stw r10, 0x24(r1)
/* 8008F058 0008BF98  48 00 11 75 */	bl OSDisableInterrupts
/* 8008F05C 0008BF9C  3C 00 03 00 */	lis r0, 0x300
/* 8008F060 0008BFA0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8008F064 0008BFA4  38 01 00 98 */	addi r0, r1, 0x98
/* 8008F068 0008BFA8  38 81 00 74 */	addi r4, r1, 0x74
/* 8008F06C 0008BFAC  90 01 00 78 */	stw r0, 0x78(r1)
/* 8008F070 0008BFB0  38 01 00 08 */	addi r0, r1, 8
/* 8008F074 0008BFB4  38 7D 00 00 */	addi r3, r29, 0
/* 8008F078 0008BFB8  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8008F07C 0008BFBC  4B FF 51 89 */	bl vprintf
/* 8008F080 0008BFC0  38 7F 00 00 */	addi r3, r31, 0
/* 8008F084 0008BFC4  4C C6 31 82 */	crclr 6
/* 8008F088 0008BFC8  38 9C 00 00 */	addi r4, r28, 0
/* 8008F08C 0008BFCC  38 BE 00 00 */	addi r5, r30, 0
/* 8008F090 0008BFD0  4B FF FE D5 */	bl OSReport
/* 8008F094 0008BFD4  38 7F 00 18 */	addi r3, r31, 0x18
/* 8008F098 0008BFD8  4C C6 31 82 */	crclr 6
/* 8008F09C 0008BFDC  4B FF FE C9 */	bl OSReport
/* 8008F0A0 0008BFE0  3B C0 00 00 */	li r30, 0
/* 8008F0A4 0008BFE4  4B FF F9 39 */	bl OSGetStackPointer
/* 8008F0A8 0008BFE8  7C 7D 1B 78 */	mr r29, r3
/* 8008F0AC 0008BFEC  48 00 00 20 */	b lbl_8008F0CC
lbl_8008F0B0:
/* 8008F0B0 0008BFF0  80 BD 00 00 */	lwz r5, 0(r29)
/* 8008F0B4 0008BFF4  7F A4 EB 78 */	mr r4, r29
/* 8008F0B8 0008BFF8  80 DD 00 04 */	lwz r6, 4(r29)
/* 8008F0BC 0008BFFC  38 7F 00 40 */	addi r3, r31, 0x40
/* 8008F0C0 0008C000  4C C6 31 82 */	crclr 6
/* 8008F0C4 0008C004  4B FF FE A1 */	bl OSReport
/* 8008F0C8 0008C008  83 BD 00 00 */	lwz r29, 0(r29)
lbl_8008F0CC:
/* 8008F0CC 0008C00C  28 1D 00 00 */	cmplwi r29, 0
/* 8008F0D0 0008C010  41 82 00 1C */	beq lbl_8008F0EC
/* 8008F0D4 0008C014  3C 1D 00 01 */	addis r0, r29, 1
/* 8008F0D8 0008C018  28 00 FF FF */	cmplwi r0, 0xffff
/* 8008F0DC 0008C01C  41 82 00 10 */	beq lbl_8008F0EC
/* 8008F0E0 0008C020  28 1E 00 10 */	cmplwi r30, 0x10
/* 8008F0E4 0008C024  3B DE 00 01 */	addi r30, r30, 1
/* 8008F0E8 0008C028  41 80 FF C8 */	blt lbl_8008F0B0
lbl_8008F0EC:
/* 8008F0EC 0008C02C  4B FF D2 F5 */	bl PPCHalt
/* 8008F0F0 0008C030  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8008F0F4 0008C034  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8008F0F8 0008C038  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8008F0FC 0008C03C  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 8008F100 0008C040  83 81 00 80 */	lwz r28, 0x80(r1)
/* 8008F104 0008C044  38 21 00 90 */	addi r1, r1, 0x90
/* 8008F108 0008C048  7C 08 03 A6 */	mtlr r0
/* 8008F10C 0008C04C  4E 80 00 20 */	blr 

.global OSSetErrorHandler
OSSetErrorHandler:
/* 8008F110 0008C050  3C A0 80 3F */	lis r5, __OSErrorTable@ha
/* 8008F114 0008C054  54 63 13 BA */	rlwinm r3, r3, 2, 0xe, 0x1d
/* 8008F118 0008C058  38 05 B0 D0 */	addi r0, r5, __OSErrorTable@l
/* 8008F11C 0008C05C  7C A0 1A 14 */	add r5, r0, r3
/* 8008F120 0008C060  80 65 00 00 */	lwz r3, 0(r5)
/* 8008F124 0008C064  90 85 00 00 */	stw r4, 0(r5)
/* 8008F128 0008C068  4E 80 00 20 */	blr 

.global __OSUnhandledException
__OSUnhandledException:
/* 8008F12C 0008C06C  7C 08 02 A6 */	mflr r0
/* 8008F130 0008C070  90 01 00 04 */	stw r0, 4(r1)
/* 8008F134 0008C074  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8008F138 0008C078  BF 21 00 1C */	stmw r25, 0x1c(r1)
/* 8008F13C 0008C07C  7C 9F 23 78 */	mr r31, r4
/* 8008F140 0008C080  3B 23 00 00 */	addi r25, r3, 0
/* 8008F144 0008C084  3B 45 00 00 */	addi r26, r5, 0
/* 8008F148 0008C088  3B 66 00 00 */	addi r27, r6, 0
/* 8008F14C 0008C08C  80 04 01 9C */	lwz r0, 0x19c(r4)
/* 8008F150 0008C090  3C 80 80 3B */	lis r4, $$210@ha
/* 8008F154 0008C094  3B A4 FA A0 */	addi r29, r4, $$210@l
/* 8008F158 0008C098  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8008F15C 0008C09C  40 82 00 18 */	bne lbl_8008F174
/* 8008F160 0008C0A0  38 7D 00 5C */	addi r3, r29, 0x5c
/* 8008F164 0008C0A4  4C C6 31 82 */	crclr 6
/* 8008F168 0008C0A8  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 8008F16C 0008C0AC  4B FF FD F9 */	bl OSReport
/* 8008F170 0008C0B0  48 00 00 7C */	b lbl_8008F1EC
lbl_8008F174:
/* 8008F174 0008C0B4  57 3E 06 3E */	clrlwi r30, r25, 0x18
/* 8008F178 0008C0B8  3C 60 80 3F */	lis r3, __OSErrorTable@ha
/* 8008F17C 0008C0BC  57 24 15 BA */	rlwinm r4, r25, 2, 0x16, 0x1d
/* 8008F180 0008C0C0  38 03 B0 D0 */	addi r0, r3, __OSErrorTable@l
/* 8008F184 0008C0C4  7F 80 22 14 */	add r28, r0, r4
/* 8008F188 0008C0C8  80 1C 00 00 */	lwz r0, 0(r28)
/* 8008F18C 0008C0CC  28 00 00 00 */	cmplwi r0, 0
/* 8008F190 0008C0D0  41 82 00 38 */	beq lbl_8008F1C8
/* 8008F194 0008C0D4  48 00 3B 35 */	bl OSDisableScheduler
/* 8008F198 0008C0D8  81 9C 00 00 */	lwz r12, 0(r28)
/* 8008F19C 0008C0DC  38 7E 00 00 */	addi r3, r30, 0
/* 8008F1A0 0008C0E0  38 9F 00 00 */	addi r4, r31, 0
/* 8008F1A4 0008C0E4  4C C6 31 82 */	crclr 6
/* 8008F1A8 0008C0E8  7D 88 03 A6 */	mtlr r12
/* 8008F1AC 0008C0EC  38 BA 00 00 */	addi r5, r26, 0
/* 8008F1B0 0008C0F0  38 DB 00 00 */	addi r6, r27, 0
/* 8008F1B4 0008C0F4  4E 80 00 21 */	blrl 
/* 8008F1B8 0008C0F8  48 00 3B 51 */	bl OSEnableScheduler
/* 8008F1BC 0008C0FC  48 00 40 41 */	bl __OSReschedule
/* 8008F1C0 0008C100  7F E3 FB 78 */	mr r3, r31
/* 8008F1C4 0008C104  4B FF F7 41 */	bl OSLoadContext
lbl_8008F1C8:
/* 8008F1C8 0008C108  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 8008F1CC 0008C10C  28 00 00 08 */	cmplwi r0, 8
/* 8008F1D0 0008C110  40 82 00 0C */	bne lbl_8008F1DC
/* 8008F1D4 0008C114  7F E3 FB 78 */	mr r3, r31
/* 8008F1D8 0008C118  4B FF F7 2D */	bl OSLoadContext
lbl_8008F1DC:
/* 8008F1DC 0008C11C  38 7D 00 7C */	addi r3, r29, 0x7c
/* 8008F1E0 0008C120  4C C6 31 82 */	crclr 6
/* 8008F1E4 0008C124  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 8008F1E8 0008C128  4B FF FD 7D */	bl OSReport
lbl_8008F1EC:
/* 8008F1EC 0008C12C  38 6D 82 50 */	addi r3, r13, $$232-_SDA_BASE_
/* 8008F1F0 0008C130  4C C6 31 82 */	crclr 6
/* 8008F1F4 0008C134  4B FF FD 71 */	bl OSReport
/* 8008F1F8 0008C138  7F E3 FB 78 */	mr r3, r31
/* 8008F1FC 0008C13C  4B FF F8 C9 */	bl OSDumpContext
/* 8008F200 0008C140  38 9A 00 00 */	addi r4, r26, 0
/* 8008F204 0008C144  4C C6 31 82 */	crclr 6
/* 8008F208 0008C148  38 BB 00 00 */	addi r5, r27, 0
/* 8008F20C 0008C14C  38 7D 00 94 */	addi r3, r29, 0x94
/* 8008F210 0008C150  4B FF FD 55 */	bl OSReport
/* 8008F214 0008C154  48 00 4B E5 */	bl OSGetTime
/* 8008F218 0008C158  38 A3 00 00 */	addi r5, r3, 0
/* 8008F21C 0008C15C  4C C6 31 82 */	crclr 6
/* 8008F220 0008C160  38 C4 00 00 */	addi r6, r4, 0
/* 8008F224 0008C164  38 7D 00 C8 */	addi r3, r29, 0xc8
/* 8008F228 0008C168  4B FF FD 3D */	bl OSReport
/* 8008F22C 0008C16C  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 8008F230 0008C170  28 00 00 0F */	cmplwi r0, 0xf
/* 8008F234 0008C174  41 81 00 C4 */	bgt lbl_8008F2F8
/* 8008F238 0008C178  3C 60 80 3B */	lis r3, $$243@ha
/* 8008F23C 0008C17C  38 63 FD 7C */	addi r3, r3, $$243@l
/* 8008F240 0008C180  54 00 10 3A */	slwi r0, r0, 2
/* 8008F244 0008C184  7C 03 00 2E */	lwzx r0, r3, r0
/* 8008F248 0008C188  7C 09 03 A6 */	mtctr r0
/* 8008F24C 0008C18C  4E 80 04 20 */	bctr 
/* 8008F250 0008C190  80 9F 01 98 */	lwz r4, 0x198(r31)
/* 8008F254 0008C194  38 BB 00 00 */	addi r5, r27, 0
/* 8008F258 0008C198  38 7D 00 D8 */	addi r3, r29, 0xd8
/* 8008F25C 0008C19C  4C C6 31 82 */	crclr 6
/* 8008F260 0008C1A0  4B FF FD 05 */	bl OSReport
/* 8008F264 0008C1A4  48 00 00 94 */	b lbl_8008F2F8
/* 8008F268 0008C1A8  80 9F 01 98 */	lwz r4, 0x198(r31)
/* 8008F26C 0008C1AC  38 7D 01 38 */	addi r3, r29, 0x138
/* 8008F270 0008C1B0  4C C6 31 82 */	crclr 6
/* 8008F274 0008C1B4  4B FF FC F1 */	bl OSReport
/* 8008F278 0008C1B8  48 00 00 80 */	b lbl_8008F2F8
/* 8008F27C 0008C1BC  80 9F 01 98 */	lwz r4, 0x198(r31)
/* 8008F280 0008C1C0  38 BB 00 00 */	addi r5, r27, 0
/* 8008F284 0008C1C4  38 7D 01 84 */	addi r3, r29, 0x184
/* 8008F288 0008C1C8  4C C6 31 82 */	crclr 6
/* 8008F28C 0008C1CC  4B FF FC D9 */	bl OSReport
/* 8008F290 0008C1D0  48 00 00 68 */	b lbl_8008F2F8
/* 8008F294 0008C1D4  80 9F 01 98 */	lwz r4, 0x198(r31)
/* 8008F298 0008C1D8  38 BB 00 00 */	addi r5, r27, 0
/* 8008F29C 0008C1DC  38 7D 01 E8 */	addi r3, r29, 0x1e8
/* 8008F2A0 0008C1E0  4C C6 31 82 */	crclr 6
/* 8008F2A4 0008C1E4  4B FF FC C1 */	bl OSReport
/* 8008F2A8 0008C1E8  48 00 00 50 */	b lbl_8008F2F8
/* 8008F2AC 0008C1EC  38 6D 82 50 */	addi r3, r13, $$232-_SDA_BASE_
/* 8008F2B0 0008C1F0  4C C6 31 82 */	crclr 6
/* 8008F2B4 0008C1F4  4B FF FC B1 */	bl OSReport
/* 8008F2B8 0008C1F8  3F C0 CC 00 */	lis r30, 0xCC005000@ha
/* 8008F2BC 0008C1FC  4C C6 31 82 */	crclr 6
/* 8008F2C0 0008C200  3B FE 50 00 */	addi r31, r30, 0xCC005000@l
/* 8008F2C4 0008C204  A0 9E 50 30 */	lhz r4, 0x5030(r30)
/* 8008F2C8 0008C208  38 7D 02 48 */	addi r3, r29, 0x248
/* 8008F2CC 0008C20C  A0 BE 50 32 */	lhz r5, 0x5032(r30)
/* 8008F2D0 0008C210  4B FF FC 95 */	bl OSReport
/* 8008F2D4 0008C214  A0 9F 00 20 */	lhz r4, 0x20(r31)
/* 8008F2D8 0008C218  38 7D 02 68 */	addi r3, r29, 0x268
/* 8008F2DC 0008C21C  A0 BF 00 22 */	lhz r5, 0x22(r31)
/* 8008F2E0 0008C220  4C C6 31 82 */	crclr 6
/* 8008F2E4 0008C224  4B FF FC 81 */	bl OSReport
/* 8008F2E8 0008C228  80 9E 60 14 */	lwz r4, 0x6014(r30)
/* 8008F2EC 0008C22C  4C C6 31 82 */	crclr 6
/* 8008F2F0 0008C230  38 7D 02 88 */	addi r3, r29, 0x288
/* 8008F2F4 0008C234  4B FF FC 71 */	bl OSReport
lbl_8008F2F8:
/* 8008F2F8 0008C238  A8 8D 93 28 */	lha r4, __OSLastInterrupt-_SDA_BASE_(r13)
/* 8008F2FC 0008C23C  38 7D 02 A4 */	addi r3, r29, 0x2a4
/* 8008F300 0008C240  4C C6 31 82 */	crclr 6
/* 8008F304 0008C244  80 AD 93 24 */	lwz r5, __OSLastInterruptSrr0-_SDA_BASE_(r13)
/* 8008F308 0008C248  80 ED 93 30 */	lwz r7, __OSLastInterruptTime-_SDA_BASE_(r13)
/* 8008F30C 0008C24C  81 0D 93 34 */	lwz r8, lbl_80409DF4-_SDA_BASE_(r13)
/* 8008F310 0008C250  4B FF FC 55 */	bl OSReport
/* 8008F314 0008C254  4B FF D0 CD */	bl PPCHalt
/* 8008F318 0008C258  BB 21 00 1C */	lmw r25, 0x1c(r1)
/* 8008F31C 0008C25C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8008F320 0008C260  38 21 00 38 */	addi r1, r1, 0x38
/* 8008F324 0008C264  7C 08 03 A6 */	mtlr r0
/* 8008F328 0008C268  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x803A8380 - 0x803E6000
$$210:
	.incbin "baserom.dol", 0x3ACAA0, 0x18
$$211:
	.incbin "baserom.dol", 0x3ACAB8, 0x28
$$212:
	.incbin "baserom.dol", 0x3ACAE0, 0x1C
$$230:
	.incbin "baserom.dol", 0x3ACAFC, 0x20
$$231:
	.incbin "baserom.dol", 0x3ACB1C, 0x18
$$233:
	.incbin "baserom.dol", 0x3ACB34, 0x34
$$234:
	.incbin "baserom.dol", 0x3ACB68, 0x10
$$235:
	.incbin "baserom.dol", 0x3ACB78, 0x60
$$236:
	.incbin "baserom.dol", 0x3ACBD8, 0x4C
$$237:
	.incbin "baserom.dol", 0x3ACC24, 0x64
$$238:
	.incbin "baserom.dol", 0x3ACC88, 0x60
$$239:
	.incbin "baserom.dol", 0x3ACCE8, 0x20
$$240:
	.incbin "baserom.dol", 0x3ACD08, 0x20
$$241:
	.incbin "baserom.dol", 0x3ACD28, 0x1C
$$242:
	.incbin "baserom.dol", 0x3ACD44, 0x38
$$243:
	.incbin "baserom.dol", 0x3ACD7C, 0x44

.section .sdata, "wa"  # 0x80408AC0 - 0x804097C0
$$232:
	.incbin "baserom.dol", 0x3E3250, 0x8

.section .bss, "wa"  # 0x803E6000 - 0x80408AC0
.global __OSErrorTable
__OSErrorTable:
	.skip 0x50
