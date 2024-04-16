.include "macros.inc"
.file "NameObjFinder.cpp"

# 0x803431F0 - 0x80343210
.text
.balign 4

.fn fn_803431F0, global
/* 803431F0 0033EB70  80 AD 9A 84 */	lwz r5, lbl_807D0DA4@sda21(r0)
/* 803431F4 0033EB74  7C 64 1B 78 */	mr r4, r3
/* 803431F8 0033EB78  80 65 00 24 */	lwz r3, 0x24(r5)
/* 803431FC 0033EB7C  80 63 01 28 */	lwz r3, 0x128(r3)
/* 80343200 0033EB80  48 00 04 50 */	b fn_80343650
.endfn fn_803431F0

.fn gap_03_80343204_text, global
.hidden gap_03_80343204_text
/* 80343204 0033EB84  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80343208 0033EB88  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034320C 0033EB8C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_80343204_text
