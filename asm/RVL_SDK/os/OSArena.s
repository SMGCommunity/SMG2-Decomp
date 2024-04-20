.include "macros.inc"
.file "OSArena.c"

# 0x805B4E30 - 0x805B4F30
.text
.balign 4

.fn OSGetMEM1ArenaHi, global
/* 805B4E30 005B07B0  80 6D F3 60 */	lwz r3, __OSArenaHi@sda21(r0)
/* 805B4E34 005B07B4  4E 80 00 20 */	blr
.endfn OSGetMEM1ArenaHi

.fn gap_03_805B4E38_text, global
.hidden gap_03_805B4E38_text
/* 805B4E38 005B07B8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4E3C 005B07BC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4E38_text

.fn OSGetMEM2ArenaHi, global
/* 805B4E40 005B07C0  80 6D F3 64 */	lwz r3, s_mem2ArenaHi@sda21(r0)
/* 805B4E44 005B07C4  4E 80 00 20 */	blr
.endfn OSGetMEM2ArenaHi

.fn gap_03_805B4E48_text, global
.hidden gap_03_805B4E48_text
/* 805B4E48 005B07C8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4E4C 005B07CC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4E48_text

.fn OSGetArenaHi, global
/* 805B4E50 005B07D0  80 6D F3 60 */	lwz r3, __OSArenaHi@sda21(r0)
/* 805B4E54 005B07D4  4E 80 00 20 */	blr
.endfn OSGetArenaHi

.fn gap_03_805B4E58_text, global
.hidden gap_03_805B4E58_text
/* 805B4E58 005B07D8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4E5C 005B07DC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4E58_text

.fn OSGetMEM1ArenaLo, global
/* 805B4E60 005B07E0  80 6D 96 40 */	lwz r3, __OSArenaLo@sda21(r0)
/* 805B4E64 005B07E4  4E 80 00 20 */	blr
.endfn OSGetMEM1ArenaLo

.fn gap_03_805B4E68_text, global
.hidden gap_03_805B4E68_text
/* 805B4E68 005B07E8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4E6C 005B07EC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4E68_text

.fn OSGetMEM2ArenaLo, global
/* 805B4E70 005B07F0  80 6D 96 44 */	lwz r3, s_mem2ArenaLo@sda21(r0)
/* 805B4E74 005B07F4  4E 80 00 20 */	blr
.endfn OSGetMEM2ArenaLo

.fn gap_03_805B4E78_text, global
.hidden gap_03_805B4E78_text
/* 805B4E78 005B07F8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4E7C 005B07FC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4E78_text

.fn OSGetArenaLo, global
/* 805B4E80 005B0800  80 6D 96 40 */	lwz r3, __OSArenaLo@sda21(r0)
/* 805B4E84 005B0804  4E 80 00 20 */	blr
.endfn OSGetArenaLo

.fn gap_03_805B4E88_text, global
.hidden gap_03_805B4E88_text
/* 805B4E88 005B0808  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4E8C 005B080C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4E88_text

.fn OSSetMEM1ArenaHi, global
/* 805B4E90 005B0810  90 6D F3 60 */	stw r3, __OSArenaHi@sda21(r0)
/* 805B4E94 005B0814  4E 80 00 20 */	blr
.endfn OSSetMEM1ArenaHi

.fn gap_03_805B4E98_text, global
.hidden gap_03_805B4E98_text
/* 805B4E98 005B0818  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4E9C 005B081C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4E98_text

.fn OSSetMEM2ArenaHi, global
/* 805B4EA0 005B0820  90 6D F3 64 */	stw r3, s_mem2ArenaHi@sda21(r0)
/* 805B4EA4 005B0824  4E 80 00 20 */	blr
.endfn OSSetMEM2ArenaHi

.fn gap_03_805B4EA8_text, global
.hidden gap_03_805B4EA8_text
/* 805B4EA8 005B0828  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4EAC 005B082C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4EA8_text

.fn OSSetArenaHi, global
/* 805B4EB0 005B0830  90 6D F3 60 */	stw r3, __OSArenaHi@sda21(r0)
/* 805B4EB4 005B0834  4E 80 00 20 */	blr
.endfn OSSetArenaHi

.fn gap_03_805B4EB8_text, global
.hidden gap_03_805B4EB8_text
/* 805B4EB8 005B0838  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4EBC 005B083C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4EB8_text

.fn OSSetMEM1ArenaLo, global
/* 805B4EC0 005B0840  90 6D 96 40 */	stw r3, __OSArenaLo@sda21(r0)
/* 805B4EC4 005B0844  4E 80 00 20 */	blr
.endfn OSSetMEM1ArenaLo

.fn gap_03_805B4EC8_text, global
.hidden gap_03_805B4EC8_text
/* 805B4EC8 005B0848  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4ECC 005B084C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4EC8_text

.fn OSSetMEM2ArenaLo, global
/* 805B4ED0 005B0850  90 6D 96 44 */	stw r3, s_mem2ArenaLo@sda21(r0)
/* 805B4ED4 005B0854  4E 80 00 20 */	blr
.endfn OSSetMEM2ArenaLo

.fn gap_03_805B4ED8_text, global
.hidden gap_03_805B4ED8_text
/* 805B4ED8 005B0858  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4EDC 005B085C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4ED8_text

.fn OSSetArenaLo, global
/* 805B4EE0 005B0860  90 6D 96 40 */	stw r3, __OSArenaLo@sda21(r0)
/* 805B4EE4 005B0864  4E 80 00 20 */	blr
.endfn OSSetArenaLo

.fn gap_03_805B4EE8_text, global
.hidden gap_03_805B4EE8_text
/* 805B4EE8 005B0868  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4EEC 005B086C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4EE8_text

.fn OSAllocFromMEM1ArenaLo, global
/* 805B4EF0 005B0870  80 0D 96 40 */	lwz r0, __OSArenaLo@sda21(r0)
/* 805B4EF4 005B0874  38 A4 FF FF */	subi r5, r4, 0x1
/* 805B4EF8 005B0878  7C A6 28 F8 */	nor r6, r5, r5
/* 805B4EFC 005B087C  7C A4 02 14 */	add r5, r4, r0
/* 805B4F00 005B0880  38 05 FF FF */	subi r0, r5, 0x1
/* 805B4F04 005B0884  7C C0 00 38 */	and r0, r6, r0
/* 805B4F08 005B0888  7C 60 1A 14 */	add r3, r0, r3
/* 805B4F0C 005B088C  7C 83 22 14 */	add r4, r3, r4
/* 805B4F10 005B0890  7C 03 03 78 */	mr r3, r0
/* 805B4F14 005B0894  38 04 FF FF */	subi r0, r4, 0x1
/* 805B4F18 005B0898  7C C0 00 38 */	and r0, r6, r0
/* 805B4F1C 005B089C  90 0D 96 40 */	stw r0, __OSArenaLo@sda21(r0)
/* 805B4F20 005B08A0  4E 80 00 20 */	blr
.endfn OSAllocFromMEM1ArenaLo

.fn gap_03_805B4F24_text, global
.hidden gap_03_805B4F24_text
/* 805B4F24 005B08A4  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4F28 005B08A8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4F2C 005B08AC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4F24_text

# 0x807D0960 - 0x807D0968
.section .sdata, "wa"
.balign 8

.obj __OSArenaLo, local
	.4byte 0xFFFFFFFF
.endobj __OSArenaLo

.obj s_mem2ArenaLo, local
	.4byte 0xFFFFFFFF
.endobj s_mem2ArenaLo

# 0x807D6680 - 0x807D6688
.section .sbss, "wa", @nobits
.balign 8

.obj __OSArenaHi, local
	.skip 0x4
.endobj __OSArenaHi

.obj s_mem2ArenaHi, local
	.skip 0x4
.endobj s_mem2ArenaHi
