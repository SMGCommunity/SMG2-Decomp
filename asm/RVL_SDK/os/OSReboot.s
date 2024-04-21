.include "macros.inc"
.file "OSReboot.c"

# 0x805BB030 - 0x805BB0C0
.text
.balign 4

.fn fn_805BB030, global
/* 805BB030 005B69B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BB034 005B69B4  7C 08 02 A6 */	mflr r0
/* 805BB038 005B69B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BB03C 005B69BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BB040 005B69C0  7C 9F 23 78 */	mr r31, r4
/* 805BB044 005B69C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BB048 005B69C8  7C 7E 1B 78 */	mr r30, r3
/* 805BB04C 005B69CC  4B FF E9 85 */	bl OSDisableInterrupts
/* 805BB050 005B69D0  3C 60 81 28 */	lis r3, 0x8128
/* 805BB054 005B69D4  4B FF 9E 8D */	bl OSSetArenaLo
/* 805BB058 005B69D8  3C 60 81 2F */	lis r3, 0x812f
/* 805BB05C 005B69DC  4B FF 9E 55 */	bl OSSetArenaHi
/* 805BB060 005B69E0  38 00 00 00 */	li r0, 0x0
/* 805BB064 005B69E4  90 01 00 08 */	stw r0, 0x8(r1)
/* 805BB068 005B69E8  3C 80 80 00 */	lis r4, 0x8000
/* 805BB06C 005B69EC  7F E3 FB 78 */	mr r3, r31
/* 805BB070 005B69F0  80 04 31 94 */	lwz r0, 0x3194(r4)
/* 805BB074 005B69F4  67 C4 80 00 */	oris r4, r30, 0x8000
/* 805BB078 005B69F8  90 0D F3 68 */	stw r0, lbl_807D6688@sda21(r0)
/* 805BB07C 005B69FC  38 A1 00 08 */	addi r5, r1, 0x8
/* 805BB080 005B6A00  4B FF CE 51 */	bl fn_805B7ED0
/* 805BB084 005B6A04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BB088 005B6A08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BB08C 005B6A0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BB090 005B6A10  7C 08 03 A6 */	mtlr r0
/* 805BB094 005B6A14  38 21 00 20 */	addi r1, r1, 0x20
/* 805BB098 005B6A18  4E 80 00 20 */	blr
.endfn fn_805BB030

.fn gap_03_805BB09C_text, global
.hidden gap_03_805BB09C_text
/* 805BB09C 005B6A1C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805BB09C_text

.fn fn_805BB0A0, global
/* 805BB0A0 005B6A20  80 0D F3 B0 */	lwz r0, lbl_807D66D0@sda21(r0)
/* 805BB0A4 005B6A24  90 03 00 00 */	stw r0, 0x0(r3)
/* 805BB0A8 005B6A28  80 0D F3 B4 */	lwz r0, lbl_807D66D4@sda21(r0)
/* 805BB0AC 005B6A2C  90 04 00 00 */	stw r0, 0x0(r4)
/* 805BB0B0 005B6A30  4E 80 00 20 */	blr
.endfn fn_805BB0A0

.fn gap_03_805BB0B4_text, global
.hidden gap_03_805BB0B4_text
/* 805BB0B4 005B6A34  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805BB0B8 005B6A38  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805BB0BC 005B6A3C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805BB0B4_text

# 0x807D66D0 - 0x807D66D8
.section .sbss, "wa", @nobits
.balign 8

.obj lbl_807D66D0, global
	.skip 0x4
.endobj lbl_807D66D0

.obj lbl_807D66D4, global
	.skip 0x4
.endobj lbl_807D66D4
