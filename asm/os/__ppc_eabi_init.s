.include "macros.inc"

.section .init, "ax"  # 0x80003100 - 0x80005540
.global __init_hardware
__init_hardware:
/* 80005440 00002440  7C 00 00 A6 */	mfmsr r0
/* 80005444 00002444  60 00 20 00 */	ori r0, r0, 0x2000
/* 80005448 00002448  7C 00 01 24 */	mtmsr r0
/* 8000544C 0000244C  7F E8 02 A6 */	mflr r31
/* 80005450 00002450  48 08 79 E9 */	bl __OSPSInit
/* 80005454 00002454  48 08 90 89 */	bl __OSCacheInit
/* 80005458 00002458  7F E8 03 A6 */	mtlr r31
/* 8000545C 0000245C  4E 80 00 20 */	blr 

.global __flush_cache
__flush_cache:
/* 80005460 00002460  3C A0 FF FF */	lis r5, 0xFFFFFFF1@h
/* 80005464 00002464  60 A5 FF F1 */	ori r5, r5, 0xFFFFFFF1@l
/* 80005468 00002468  7C A5 18 38 */	and r5, r5, r3
/* 8000546C 0000246C  7C 65 18 50 */	subf r3, r5, r3
/* 80005470 00002470  7C 84 1A 14 */	add r4, r4, r3
lbl_80005474:
/* 80005474 00002474  7C 00 28 6C */	dcbst 0, r5
/* 80005478 00002478  7C 00 04 AC */	sync 0
/* 8000547C 0000247C  7C 00 2F AC */	icbi 0, r5
/* 80005480 00002480  30 A5 00 08 */	addic r5, r5, 8
/* 80005484 00002484  34 84 FF F8 */	addic. r4, r4, -8
/* 80005488 00002488  40 80 FF EC */	bge lbl_80005474
/* 8000548C 0000248C  4C 00 01 2C */	isync 
/* 80005490 00002490  4E 80 00 20 */	blr 

.global lbl_80005494
lbl_80005494:
/* 80005494 00002494  80 00 31 00 */	lwz r0, 0x3100(0)
/* 80005498 00002498  80 00 31 00 */	lwz r0, 0x3100(0)
/* 8000549C 0000249C  00 00 24 30 */	.4byte 0x00002430  /* unknown instruction */
/* 800054A0 000024A0  80 00 55 40 */	lwz r0, 0x5540(0)
/* 800054A4 000024A4  80 00 55 40 */	lwz r0, 0x5540(0)
/* 800054A8 000024A8  00 00 00 48 */	.4byte 0x00000048  /* unknown instruction */
/* 800054AC 000024AC  80 00 55 A0 */	lwz r0, 0x55a0(0)
/* 800054B0 000024B0  80 00 55 A0 */	lwz r0, 0x55a0(0)
/* 800054B4 000024B4  00 00 00 5C */	.4byte 0x0000005C  /* unknown instruction */
/* 800054B8 000024B8  80 00 56 00 */	lwz r0, 0x5600(0)
/* 800054BC 000024BC  80 00 56 00 */	lwz r0, 0x5600(0)
/* 800054C0 000024C0  00 36 A5 88 */	.4byte 0x0036A588  /* unknown instruction */
/* 800054C4 000024C4  80 36 FB A0 */	lwz r1, -0x460(r22)
/* 800054C8 000024C8  80 36 FB A0 */	lwz r1, -0x460(r22)
/* 800054CC 000024CC  00 00 03 C4 */	.4byte 0x000003C4  /* unknown instruction */
/* 800054D0 000024D0  80 36 FF 80 */	lwz r1, -0x80(r22)
/* 800054D4 000024D4  80 36 FF 80 */	lwz r1, -0x80(r22)
/* 800054D8 000024D8  00 00 00 10 */	.4byte 0x00000010  /* unknown instruction */
/* 800054DC 000024DC  80 36 FF A0 */	lwz r1, -0x60(r22)
/* 800054E0 000024E0  80 36 FF A0 */	lwz r1, -0x60(r22)
/* 800054E4 000024E4  00 03 83 D7 */	.4byte 0x000383D7  /* unknown instruction */
/* 800054E8 000024E8  80 3A 83 80 */	lwz r1, -0x7c80(r26)
/* 800054EC 000024EC  80 3A 83 80 */	lwz r1, -0x7c80(r26)
/* 800054F0 000024F0  00 03 DC 6C */	.4byte 0x0003DC6C  /* unknown instruction */
/* 800054F4 000024F4  80 40 8A C0 */	lwz r2, -0x7540(0)
/* 800054F8 000024F8  80 40 8A C0 */	lwz r2, -0x7540(0)
/* 800054FC 000024FC  00 00 0C EC */	.4byte 0x00000CEC  /* unknown instruction */
/* 80005500 00002500  80 40 B4 60 */	lwz r2, -0x4ba0(0)
/* 80005504 00002504  80 40 B4 60 */	lwz r2, -0x4ba0(0)
/* 80005508 00002508  00 00 8B A4 */	.4byte 0x00008BA4  /* unknown instruction */
/* 8000550C 0000250C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005510 00002510  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005514 00002514  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global lbl_80005518
lbl_80005518:
/* 80005518 00002518  80 3E 60 00 */	lwz r1, 0x6000(r30)
/* 8000551C 0000251C  00 02 2A C0 */	.4byte 0x00022AC0  /* unknown instruction */
/* 80005520 00002520  80 40 97 C0 */	lwz r2, -0x6840(0)
/* 80005524 00002524  00 00 1C 9C */	.4byte 0x00001C9C  /* unknown instruction */
/* 80005528 00002528  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000552C 0000252C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005530 00002530  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005534 00002534  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80005538 00002538  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000553C 0000253C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.section .text, "ax"  # 0x80005600 - 0x8036FBA0
.global __init_user
__init_user:
/* 8009421C 0009115C  7C 08 02 A6 */	mflr r0
/* 80094220 00091160  90 01 00 04 */	stw r0, 4(r1)
/* 80094224 00091164  94 21 FF F8 */	stwu r1, -8(r1)
/* 80094228 00091168  48 00 00 15 */	bl __init_cpp
/* 8009422C 0009116C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80094230 00091170  38 21 00 08 */	addi r1, r1, 8
/* 80094234 00091174  7C 08 03 A6 */	mtlr r0
/* 80094238 00091178  4E 80 00 20 */	blr 

.global __init_cpp
__init_cpp:
/* 8009423C 0009117C  7C 08 02 A6 */	mflr r0
/* 80094240 00091180  90 01 00 04 */	stw r0, 4(r1)
/* 80094244 00091184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80094248 00091188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009424C 0009118C  3C 60 80 37 */	lis r3, __init_cpp_exceptions_reference@ha
/* 80094250 00091190  38 03 FB A0 */	addi r0, r3, __init_cpp_exceptions_reference@l
/* 80094254 00091194  7C 1F 03 78 */	mr r31, r0
/* 80094258 00091198  48 00 00 04 */	b lbl_8009425C
lbl_8009425C:
/* 8009425C 0009119C  48 00 00 04 */	b lbl_80094260
lbl_80094260:
/* 80094260 000911A0  48 00 00 10 */	b lbl_80094270
lbl_80094264:
/* 80094264 000911A4  7D 88 03 A6 */	mtlr r12
/* 80094268 000911A8  4E 80 00 21 */	blrl 
/* 8009426C 000911AC  3B FF 00 04 */	addi r31, r31, 4
lbl_80094270:
/* 80094270 000911B0  81 9F 00 00 */	lwz r12, 0(r31)
/* 80094274 000911B4  28 0C 00 00 */	cmplwi r12, 0
/* 80094278 000911B8  40 82 FF EC */	bne lbl_80094264
/* 8009427C 000911BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80094280 000911C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80094284 000911C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80094288 000911C8  7C 08 03 A6 */	mtlr r0
/* 8009428C 000911CC  4E 80 00 20 */	blr 

.global _ExitProcess
_ExitProcess:
/* 80094290 000911D0  7C 08 02 A6 */	mflr r0
/* 80094294 000911D4  90 01 00 04 */	stw r0, 4(r1)
/* 80094298 000911D8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8009429C 000911DC  4B FF 81 45 */	bl PPCHalt
/* 800942A0 000911E0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800942A4 000911E4  38 21 00 08 */	addi r1, r1, 8
/* 800942A8 000911E8  7C 08 03 A6 */	mtlr r0
/* 800942AC 000911EC  4E 80 00 20 */	blr 
