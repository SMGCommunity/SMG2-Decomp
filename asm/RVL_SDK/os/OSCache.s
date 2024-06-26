.include "macros.inc"
.file "OSCache.c"

# 0x805B53F0 - 0x805B5810
.text
.balign 4

.fn DCEnable, global
/* 805B53F0 005B0D70  7C 00 04 AC */	sync
/* 805B53F4 005B0D74  7C 70 FA A6 */	mfspr r3, HID0
/* 805B53F8 005B0D78  60 63 40 00 */	ori r3, r3, 0x4000
/* 805B53FC 005B0D7C  7C 70 FB A6 */	mtspr HID0, r3
/* 805B5400 005B0D80  4E 80 00 20 */	blr
.endfn DCEnable

.fn gap_03_805B5404_text, global
.hidden gap_03_805B5404_text
/* 805B5404 005B0D84  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B5408 005B0D88  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B540C 005B0D8C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B5404_text

.fn DCInvalidateRange, global
/* 805B5410 005B0D90  28 04 00 00 */	cmplwi r4, 0x0
/* 805B5414 005B0D94  4C 81 00 20 */	blelr
/* 805B5418 005B0D98  54 65 06 FE */	clrlwi r5, r3, 27
/* 805B541C 005B0D9C  7C 84 2A 14 */	add r4, r4, r5
/* 805B5420 005B0DA0  38 84 00 1F */	addi r4, r4, 0x1f
/* 805B5424 005B0DA4  54 84 D9 7E */	srwi r4, r4, 5
/* 805B5428 005B0DA8  7C 89 03 A6 */	mtctr r4
.L_805B542C:
/* 805B542C 005B0DAC  7C 00 1B AC */	dcbi r0, r3
/* 805B5430 005B0DB0  38 63 00 20 */	addi r3, r3, 0x20
/* 805B5434 005B0DB4  42 00 FF F8 */	bdnz .L_805B542C
/* 805B5438 005B0DB8  4E 80 00 20 */	blr
.endfn DCInvalidateRange

.fn gap_03_805B543C_text, global
.hidden gap_03_805B543C_text
/* 805B543C 005B0DBC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B543C_text

.fn DCFlushRange, global
/* 805B5440 005B0DC0  28 04 00 00 */	cmplwi r4, 0x0
/* 805B5444 005B0DC4  4C 81 00 20 */	blelr
/* 805B5448 005B0DC8  54 65 06 FE */	clrlwi r5, r3, 27
/* 805B544C 005B0DCC  7C 84 2A 14 */	add r4, r4, r5
/* 805B5450 005B0DD0  38 84 00 1F */	addi r4, r4, 0x1f
/* 805B5454 005B0DD4  54 84 D9 7E */	srwi r4, r4, 5
/* 805B5458 005B0DD8  7C 89 03 A6 */	mtctr r4
.L_805B545C:
/* 805B545C 005B0DDC  7C 00 18 AC */	dcbf r0, r3
/* 805B5460 005B0DE0  38 63 00 20 */	addi r3, r3, 0x20
/* 805B5464 005B0DE4  42 00 FF F8 */	bdnz .L_805B545C
/* 805B5468 005B0DE8  44 00 00 02 */	sc
/* 805B546C 005B0DEC  4E 80 00 20 */	blr
.endfn DCFlushRange

.fn fn_805B5470, global
/* 805B5470 005B0DF0  28 04 00 00 */	cmplwi r4, 0x0
/* 805B5474 005B0DF4  4C 81 00 20 */	blelr
/* 805B5478 005B0DF8  54 65 06 FE */	clrlwi r5, r3, 27
/* 805B547C 005B0DFC  7C 84 2A 14 */	add r4, r4, r5
/* 805B5480 005B0E00  38 84 00 1F */	addi r4, r4, 0x1f
/* 805B5484 005B0E04  54 84 D9 7E */	srwi r4, r4, 5
/* 805B5488 005B0E08  7C 89 03 A6 */	mtctr r4
.L_805B548C:
/* 805B548C 005B0E0C  7C 00 18 6C */	dcbst r0, r3
/* 805B5490 005B0E10  38 63 00 20 */	addi r3, r3, 0x20
/* 805B5494 005B0E14  42 00 FF F8 */	bdnz .L_805B548C
/* 805B5498 005B0E18  44 00 00 02 */	sc
/* 805B549C 005B0E1C  4E 80 00 20 */	blr
.endfn fn_805B5470

.fn DCFlushRangeNoSync, global
/* 805B54A0 005B0E20  28 04 00 00 */	cmplwi r4, 0x0
/* 805B54A4 005B0E24  4C 81 00 20 */	blelr
/* 805B54A8 005B0E28  54 65 06 FE */	clrlwi r5, r3, 27
/* 805B54AC 005B0E2C  7C 84 2A 14 */	add r4, r4, r5
/* 805B54B0 005B0E30  38 84 00 1F */	addi r4, r4, 0x1f
/* 805B54B4 005B0E34  54 84 D9 7E */	srwi r4, r4, 5
/* 805B54B8 005B0E38  7C 89 03 A6 */	mtctr r4
.L_805B54BC:
/* 805B54BC 005B0E3C  7C 00 18 AC */	dcbf r0, r3
/* 805B54C0 005B0E40  38 63 00 20 */	addi r3, r3, 0x20
/* 805B54C4 005B0E44  42 00 FF F8 */	bdnz .L_805B54BC
/* 805B54C8 005B0E48  4E 80 00 20 */	blr
.endfn DCFlushRangeNoSync

.fn gap_03_805B54CC_text, global
.hidden gap_03_805B54CC_text
/* 805B54CC 005B0E4C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B54CC_text

.fn fn_805B54D0, global
/* 805B54D0 005B0E50  28 04 00 00 */	cmplwi r4, 0x0
/* 805B54D4 005B0E54  4C 81 00 20 */	blelr
/* 805B54D8 005B0E58  54 65 06 FE */	clrlwi r5, r3, 27
/* 805B54DC 005B0E5C  7C 84 2A 14 */	add r4, r4, r5
/* 805B54E0 005B0E60  38 84 00 1F */	addi r4, r4, 0x1f
/* 805B54E4 005B0E64  54 84 D9 7E */	srwi r4, r4, 5
/* 805B54E8 005B0E68  7C 89 03 A6 */	mtctr r4
.L_805B54EC:
/* 805B54EC 005B0E6C  7C 00 18 6C */	dcbst r0, r3
/* 805B54F0 005B0E70  38 63 00 20 */	addi r3, r3, 0x20
/* 805B54F4 005B0E74  42 00 FF F8 */	bdnz .L_805B54EC
/* 805B54F8 005B0E78  4E 80 00 20 */	blr
.endfn fn_805B54D0

.fn gap_03_805B54FC_text, global
.hidden gap_03_805B54FC_text
/* 805B54FC 005B0E7C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B54FC_text

.fn DCZeroRange, global
/* 805B5500 005B0E80  28 04 00 00 */	cmplwi r4, 0x0
/* 805B5504 005B0E84  4C 81 00 20 */	blelr
/* 805B5508 005B0E88  54 65 06 FE */	clrlwi r5, r3, 27
/* 805B550C 005B0E8C  7C 84 2A 14 */	add r4, r4, r5
/* 805B5510 005B0E90  38 84 00 1F */	addi r4, r4, 0x1f
/* 805B5514 005B0E94  54 84 D9 7E */	srwi r4, r4, 5
/* 805B5518 005B0E98  7C 89 03 A6 */	mtctr r4
.L_805B551C:
/* 805B551C 005B0E9C  7C 00 1F EC */	dcbz r0, r3
/* 805B5520 005B0EA0  38 63 00 20 */	addi r3, r3, 0x20
/* 805B5524 005B0EA4  42 00 FF F8 */	bdnz .L_805B551C
/* 805B5528 005B0EA8  4E 80 00 20 */	blr
.endfn DCZeroRange

.fn gap_03_805B552C_text, global
.hidden gap_03_805B552C_text
/* 805B552C 005B0EAC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B552C_text

.fn ICInvalidateRange, global
/* 805B5530 005B0EB0  28 04 00 00 */	cmplwi r4, 0x0
/* 805B5534 005B0EB4  4C 81 00 20 */	blelr
/* 805B5538 005B0EB8  54 65 06 FE */	clrlwi r5, r3, 27
/* 805B553C 005B0EBC  7C 84 2A 14 */	add r4, r4, r5
/* 805B5540 005B0EC0  38 84 00 1F */	addi r4, r4, 0x1f
/* 805B5544 005B0EC4  54 84 D9 7E */	srwi r4, r4, 5
/* 805B5548 005B0EC8  7C 89 03 A6 */	mtctr r4
.L_805B554C:
/* 805B554C 005B0ECC  7C 00 1F AC */	icbi r0, r3
/* 805B5550 005B0ED0  38 63 00 20 */	addi r3, r3, 0x20
/* 805B5554 005B0ED4  42 00 FF F8 */	bdnz .L_805B554C
/* 805B5558 005B0ED8  7C 00 04 AC */	sync
/* 805B555C 005B0EDC  4C 00 01 2C */	isync
/* 805B5560 005B0EE0  4E 80 00 20 */	blr
.endfn ICInvalidateRange

.fn gap_03_805B5564_text, global
.hidden gap_03_805B5564_text
/* 805B5564 005B0EE4  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B5568 005B0EE8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B556C 005B0EEC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B5564_text

.fn ICFlashInvalidate, global
/* 805B5570 005B0EF0  7C 70 FA A6 */	mfspr r3, HID0
/* 805B5574 005B0EF4  60 63 08 00 */	ori r3, r3, 0x800
/* 805B5578 005B0EF8  7C 70 FB A6 */	mtspr HID0, r3
/* 805B557C 005B0EFC  4E 80 00 20 */	blr
.endfn ICFlashInvalidate

.fn ICEnable, global
/* 805B5580 005B0F00  4C 00 01 2C */	isync
/* 805B5584 005B0F04  7C 70 FA A6 */	mfspr r3, HID0
/* 805B5588 005B0F08  60 63 80 00 */	ori r3, r3, 0x8000
/* 805B558C 005B0F0C  7C 70 FB A6 */	mtspr HID0, r3
/* 805B5590 005B0F10  4E 80 00 20 */	blr
.endfn ICEnable

.fn gap_03_805B5594_text, global
.hidden gap_03_805B5594_text
/* 805B5594 005B0F14  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B5598 005B0F18  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B559C 005B0F1C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B5594_text

.fn LCDisable, global
/* 805B55A0 005B0F20  3C 60 E0 00 */	lis r3, 0xe000
/* 805B55A4 005B0F24  38 80 02 00 */	li r4, 0x200
/* 805B55A8 005B0F28  7C 89 03 A6 */	mtctr r4
.L_805B55AC:
/* 805B55AC 005B0F2C  7C 00 1B AC */	dcbi r0, r3
/* 805B55B0 005B0F30  38 63 00 20 */	addi r3, r3, 0x20
/* 805B55B4 005B0F34  42 00 FF F8 */	bdnz .L_805B55AC
/* 805B55B8 005B0F38  7C 98 E2 A6 */	mfspr r4, HID2
/* 805B55BC 005B0F3C  54 84 01 04 */	rlwinm r4, r4, 0, 4, 2
/* 805B55C0 005B0F40  7C 98 E3 A6 */	mtspr HID2, r4
/* 805B55C4 005B0F44  4E 80 00 20 */	blr
.endfn LCDisable

.fn gap_03_805B55C8_text, global
.hidden gap_03_805B55C8_text
/* 805B55C8 005B0F48  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B55CC 005B0F4C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B55C8_text

.fn DMAErrorHandler, global
/* 805B55D0 005B0F50  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805B55D4 005B0F54  7C 08 02 A6 */	mflr r0
/* 805B55D8 005B0F58  90 01 00 84 */	stw r0, 0x84(r1)
/* 805B55DC 005B0F5C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 805B55E0 005B0F60  93 C1 00 78 */	stw r30, 0x78(r1)
/* 805B55E4 005B0F64  93 A1 00 74 */	stw r29, 0x74(r1)
/* 805B55E8 005B0F68  7C 9D 23 78 */	mr r29, r4
/* 805B55EC 005B0F6C  40 86 00 24 */	bne cr1, .L_805B5610
/* 805B55F0 005B0F70  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 805B55F4 005B0F74  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 805B55F8 005B0F78  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 805B55FC 005B0F7C  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 805B5600 005B0F80  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 805B5604 005B0F84  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 805B5608 005B0F88  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 805B560C 005B0F8C  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_805B5610:
/* 805B5610 005B0F90  3F E0 80 71 */	lis r31, "@909"@ha
/* 805B5614 005B0F94  90 61 00 08 */	stw r3, 0x8(r1)
/* 805B5618 005B0F98  3B FF CC 40 */	addi r31, r31, "@909"@l
/* 805B561C 005B0F9C  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5620 005B0FA0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805B5624 005B0FA4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 805B5628 005B0FA8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 805B562C 005B0FAC  91 01 00 1C */	stw r8, 0x1c(r1)
/* 805B5630 005B0FB0  91 21 00 20 */	stw r9, 0x20(r1)
/* 805B5634 005B0FB4  91 41 00 24 */	stw r10, 0x24(r1)
/* 805B5638 005B0FB8  4B FF D5 A9 */	bl PPCMfhid2
/* 805B563C 005B0FBC  7C 7E 1B 78 */	mr r30, r3
/* 805B5640 005B0FC0  38 7F 00 00 */	addi r3, r31, 0x0
/* 805B5644 005B0FC4  4C C6 31 82 */	crclr cr1eq
/* 805B5648 005B0FC8  48 00 0B C9 */	bl OSReport
/* 805B564C 005B0FCC  80 BD 01 9C */	lwz r5, 0x19c(r29)
/* 805B5650 005B0FD0  7F C4 F3 78 */	mr r4, r30
/* 805B5654 005B0FD4  38 7F 00 18 */	addi r3, r31, 0x18
/* 805B5658 005B0FD8  4C C6 31 82 */	crclr cr1eq
/* 805B565C 005B0FDC  48 00 0B B5 */	bl OSReport
/* 805B5660 005B0FE0  57 C0 02 17 */	rlwinm. r0, r30, 0, 8, 11
/* 805B5664 005B0FE4  41 82 00 10 */	beq .L_805B5674
/* 805B5668 005B0FE8  80 1D 01 9C */	lwz r0, 0x19c(r29)
/* 805B566C 005B0FEC  54 00 02 95 */	rlwinm. r0, r0, 0, 10, 10
/* 805B5670 005B0FF0  40 82 00 1C */	bne .L_805B568C
.L_805B5674:
/* 805B5674 005B0FF4  38 7F 00 38 */	addi r3, r31, 0x38
/* 805B5678 005B0FF8  4C C6 31 82 */	crclr cr1eq
/* 805B567C 005B0FFC  48 00 0B 95 */	bl OSReport
/* 805B5680 005B1000  7F A3 EB 78 */	mr r3, r29
/* 805B5684 005B1004  48 00 07 2D */	bl OSDumpContext
/* 805B5688 005B1008  4B FF D4 89 */	bl PPCHalt
.L_805B568C:
/* 805B568C 005B100C  38 7F 00 68 */	addi r3, r31, 0x68
/* 805B5690 005B1010  4C C6 31 82 */	crclr cr1eq
/* 805B5694 005B1014  48 00 0B 7D */	bl OSReport
/* 805B5698 005B1018  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 805B569C 005B101C  4C C6 31 82 */	crclr cr1eq
/* 805B56A0 005B1020  48 00 0B 71 */	bl OSReport
/* 805B56A4 005B1024  57 C0 02 11 */	rlwinm. r0, r30, 0, 8, 8
/* 805B56A8 005B1028  41 82 00 10 */	beq .L_805B56B8
/* 805B56AC 005B102C  38 7F 00 DC */	addi r3, r31, 0xdc
/* 805B56B0 005B1030  4C C6 31 82 */	crclr cr1eq
/* 805B56B4 005B1034  48 00 0B 5D */	bl OSReport
.L_805B56B8:
/* 805B56B8 005B1038  57 C0 02 53 */	rlwinm. r0, r30, 0, 9, 9
/* 805B56BC 005B103C  41 82 00 10 */	beq .L_805B56CC
/* 805B56C0 005B1040  38 7F 01 1C */	addi r3, r31, 0x11c
/* 805B56C4 005B1044  4C C6 31 82 */	crclr cr1eq
/* 805B56C8 005B1048  48 00 0B 49 */	bl OSReport
.L_805B56CC:
/* 805B56CC 005B104C  57 C0 02 95 */	rlwinm. r0, r30, 0, 10, 10
/* 805B56D0 005B1050  41 82 00 10 */	beq .L_805B56E0
/* 805B56D4 005B1054  38 7F 01 48 */	addi r3, r31, 0x148
/* 805B56D8 005B1058  4C C6 31 82 */	crclr cr1eq
/* 805B56DC 005B105C  48 00 0B 35 */	bl OSReport
.L_805B56E0:
/* 805B56E0 005B1060  57 C0 02 D7 */	rlwinm. r0, r30, 0, 11, 11
/* 805B56E4 005B1064  41 82 00 10 */	beq .L_805B56F4
/* 805B56E8 005B1068  38 7F 01 68 */	addi r3, r31, 0x168
/* 805B56EC 005B106C  4C C6 31 82 */	crclr cr1eq
/* 805B56F0 005B1070  48 00 0B 21 */	bl OSReport
.L_805B56F4:
/* 805B56F4 005B1074  7F C3 F3 78 */	mr r3, r30
/* 805B56F8 005B1078  4B FF D4 F9 */	bl PPCMthid2
/* 805B56FC 005B107C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805B5700 005B1080  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 805B5704 005B1084  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 805B5708 005B1088  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 805B570C 005B108C  7C 08 03 A6 */	mtlr r0
/* 805B5710 005B1090  38 21 00 80 */	addi r1, r1, 0x80
/* 805B5714 005B1094  4E 80 00 20 */	blr
.endfn DMAErrorHandler

.fn gap_03_805B5718_text, global
.hidden gap_03_805B5718_text
/* 805B5718 005B1098  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B571C 005B109C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B5718_text

.fn __OSCacheInit, global
/* 805B5720 005B10A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B5724 005B10A4  7C 08 02 A6 */	mflr r0
/* 805B5728 005B10A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B572C 005B10AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B5730 005B10B0  4B FF D3 81 */	bl PPCMfhid0
/* 805B5734 005B10B4  54 60 04 21 */	rlwinm. r0, r3, 0, 16, 16
/* 805B5738 005B10B8  40 82 00 08 */	bne .L_805B5740
/* 805B573C 005B10BC  4B FF FE 45 */	bl ICEnable
.L_805B5740:
/* 805B5740 005B10C0  4B FF D3 71 */	bl PPCMfhid0
/* 805B5744 005B10C4  54 60 04 63 */	rlwinm. r0, r3, 0, 17, 17
/* 805B5748 005B10C8  40 82 00 08 */	bne .L_805B5750
/* 805B574C 005B10CC  4B FF FC A5 */	bl DCEnable
.L_805B5750:
/* 805B5750 005B10D0  4B FF D3 81 */	bl PPCMfl2cr
/* 805B5754 005B10D4  54 60 00 01 */	clrrwi. r0, r3, 31
/* 805B5758 005B10D8  40 82 00 8C */	bne .L_805B57E4
/* 805B575C 005B10DC  4B FF D3 35 */	bl PPCMfmsr
/* 805B5760 005B10E0  7C 7F 1B 78 */	mr r31, r3
/* 805B5764 005B10E4  7C 00 04 AC */	sync
/* 805B5768 005B10E8  38 60 00 30 */	li r3, 0x30
/* 805B576C 005B10EC  4B FF D3 35 */	bl PPCMtmsr
/* 805B5770 005B10F0  7C 00 04 AC */	sync
/* 805B5774 005B10F4  7C 00 04 AC */	sync
/* 805B5778 005B10F8  4B FF D3 59 */	bl PPCMfl2cr
/* 805B577C 005B10FC  54 63 00 7E */	clrlwi r3, r3, 1
/* 805B5780 005B1100  4B FF D3 61 */	bl PPCMtl2cr
/* 805B5784 005B1104  7C 00 04 AC */	sync
/* 805B5788 005B1108  7C 00 04 AC */	sync
/* 805B578C 005B110C  4B FF D3 45 */	bl PPCMfl2cr
/* 805B5790 005B1110  54 63 00 7E */	clrlwi r3, r3, 1
/* 805B5794 005B1114  4B FF D3 4D */	bl PPCMtl2cr
/* 805B5798 005B1118  7C 00 04 AC */	sync
/* 805B579C 005B111C  4B FF D3 35 */	bl PPCMfl2cr
/* 805B57A0 005B1120  64 63 00 20 */	oris r3, r3, 0x20
/* 805B57A4 005B1124  4B FF D3 3D */	bl PPCMtl2cr
.L_805B57A8:
/* 805B57A8 005B1128  4B FF D3 29 */	bl PPCMfl2cr
/* 805B57AC 005B112C  54 60 07 FF */	clrlwi. r0, r3, 31
/* 805B57B0 005B1130  40 82 FF F8 */	bne .L_805B57A8
/* 805B57B4 005B1134  4B FF D3 1D */	bl PPCMfl2cr
/* 805B57B8 005B1138  54 63 02 D2 */	rlwinm r3, r3, 0, 11, 9
/* 805B57BC 005B113C  4B FF D3 25 */	bl PPCMtl2cr
.L_805B57C0:
/* 805B57C0 005B1140  4B FF D3 11 */	bl PPCMfl2cr
/* 805B57C4 005B1144  54 60 07 FF */	clrlwi. r0, r3, 31
/* 805B57C8 005B1148  40 82 FF F8 */	bne .L_805B57C0
/* 805B57CC 005B114C  7F E3 FB 78 */	mr r3, r31
/* 805B57D0 005B1150  4B FF D2 D1 */	bl PPCMtmsr
/* 805B57D4 005B1154  4B FF D2 FD */	bl PPCMfl2cr
/* 805B57D8 005B1158  64 60 80 00 */	oris r0, r3, 0x8000
/* 805B57DC 005B115C  54 03 02 D2 */	rlwinm r3, r0, 0, 11, 9
/* 805B57E0 005B1160  4B FF D3 01 */	bl PPCMtl2cr
.L_805B57E4:
/* 805B57E4 005B1164  3C 80 80 5B */	lis r4, DMAErrorHandler@ha
/* 805B57E8 005B1168  38 60 00 01 */	li r3, 0x1
/* 805B57EC 005B116C  38 84 55 D0 */	addi r4, r4, DMAErrorHandler@l
/* 805B57F0 005B1170  48 00 0B E1 */	bl OSSetErrorHandler
/* 805B57F4 005B1174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B57F8 005B1178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B57FC 005B117C  7C 08 03 A6 */	mtlr r0
/* 805B5800 005B1180  38 21 00 10 */	addi r1, r1, 0x10
/* 805B5804 005B1184  4E 80 00 20 */	blr
.endfn __OSCacheInit

.fn gap_03_805B5808_text, global
.hidden gap_03_805B5808_text
/* 805B5808 005B1188  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B580C 005B118C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B5808_text

# 0x8070CC40 - 0x8070CDC8
.data
.balign 8

.obj "@909", local
	.string "Machine check received\n"
.endobj "@909"

.obj gap_07_8070CC58_data, global
.hidden gap_07_8070CC58_data
	.4byte 0x48494432
	.4byte 0x203D2030
	.4byte 0x78257820
	.4byte 0x20205352
	.4byte 0x5231203D
	.4byte 0x20307825
	.4byte 0x780A0000
	.4byte 0x00000000
	.4byte 0x4D616368
	.4byte 0x696E6520
	.4byte 0x63686563
	.4byte 0x6B207761
	.4byte 0x73206E6F
	.4byte 0x7420444D
	.4byte 0x412F6C6F
	.4byte 0x636B6564
	.4byte 0x20636163
	.4byte 0x68652072
	.4byte 0x656C6174
	.4byte 0x65640A00
	.4byte 0x444D4145
	.4byte 0x72726F72
	.4byte 0x48616E64
	.4byte 0x6C657228
	.4byte 0x293A2041
	.4byte 0x6E206572
	.4byte 0x726F7220
	.4byte 0x6F636375
	.4byte 0x72726564
	.4byte 0x20776869
	.4byte 0x6C652070
	.4byte 0x726F6365
	.4byte 0x7373696E
	.4byte 0x6720444D
	.4byte 0x412E0A00
	.4byte 0x54686520
	.4byte 0x666F6C6C
	.4byte 0x6F77696E
	.4byte 0x67206572
	.4byte 0x726F7273
	.4byte 0x20686176
	.4byte 0x65206265
	.4byte 0x656E2064
	.4byte 0x65746563
	.4byte 0x74656420
	.4byte 0x616E6420
	.4byte 0x636C6561
	.4byte 0x72656420
	.4byte 0x3A0A0000
	.4byte 0x092D2052
	.4byte 0x65717565
	.4byte 0x73746564
	.4byte 0x2061206C
	.4byte 0x6F636B65
	.4byte 0x64206361
	.4byte 0x63686520
	.4byte 0x74616720
	.4byte 0x74686174
	.4byte 0x20776173
	.4byte 0x20616C72
	.4byte 0x65616479
	.4byte 0x20696E20
	.4byte 0x74686520
	.4byte 0x63616368
	.4byte 0x650A0000
	.4byte 0x092D2044
	.4byte 0x4D412061
	.4byte 0x7474656D
	.4byte 0x70746564
	.4byte 0x20746F20
	.4byte 0x61636365
	.4byte 0x7373206E
	.4byte 0x6F726D61
	.4byte 0x6C206361
	.4byte 0x6368650A
	.4byte 0x00000000
	.4byte 0x092D2044
	.4byte 0x4D41206D
	.4byte 0x69737365
	.4byte 0x6420696E
	.4byte 0x20646174
	.4byte 0x61206361
	.4byte 0x6368650A
	.4byte 0x00000000
	.4byte 0x092D2044
	.4byte 0x4D412071
	.4byte 0x75657565
	.4byte 0x206F7665
	.4byte 0x72666C6F
	.4byte 0x7765640A
	.4byte 0x00000000
	.4byte 0x00000000
.endobj gap_07_8070CC58_data
