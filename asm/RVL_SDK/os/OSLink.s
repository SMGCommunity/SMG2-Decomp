.include "macros.inc"
.file "OSLink.c"

# 0x805BA1A0 - 0x805BA1C0
.text
.balign 4

.fn __OSModuleInit, global
/* 805BA1A0 005B5B20  3C 60 80 00 */	lis r3, 0x8000
/* 805BA1A4 005B5B24  38 00 00 00 */	li r0, 0x0
/* 805BA1A8 005B5B28  90 03 30 CC */	stw r0, 0x30cc(r3)
/* 805BA1AC 005B5B2C  90 03 30 C8 */	stw r0, 0x30c8(r3)
/* 805BA1B0 005B5B30  90 03 30 D0 */	stw r0, 0x30d0(r3)
/* 805BA1B4 005B5B34  4E 80 00 20 */	blr
.endfn __OSModuleInit

.fn gap_03_805BA1B8_text, global
.hidden gap_03_805BA1B8_text
/* 805BA1B8 005B5B38  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805BA1BC 005B5B3C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805BA1B8_text
