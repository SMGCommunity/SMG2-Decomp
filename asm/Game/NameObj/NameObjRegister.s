.include "macros.inc"
.file "NameObjRegister.cpp"

# 0x80343E20 - 0x80343E50
.text
.balign 4

.fn fn_80343E20, global
/* 80343E20 0033F7A0  90 83 00 00 */	stw r4, 0x0(r3)
/* 80343E24 0033F7A4  4E 80 00 20 */	blr
.endfn fn_80343E20

.fn gap_03_80343E28_text, global
.hidden gap_03_80343E28_text
/* 80343E28 0033F7A8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80343E2C 0033F7AC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_80343E28_text

.fn fn_80343E30, global
/* 80343E30 0033F7B0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 80343E34 0033F7B4  4B FF F6 6C */	b fn_803434A0
.endfn fn_80343E30

.fn gap_03_80343E38_text, global
.hidden gap_03_80343E38_text
/* 80343E38 0033F7B8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80343E3C 0033F7BC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_80343E38_text

.fn fn_80343E40, global
/* 80343E40 0033F7C0  38 00 00 00 */	li r0, 0x0
/* 80343E44 0033F7C4  90 03 00 00 */	stw r0, 0x0(r3)
/* 80343E48 0033F7C8  4E 80 00 20 */	blr
.endfn fn_80343E40

.fn gap_03_80343E4C_text, global
.hidden gap_03_80343E4C_text
/* 80343E4C 0033F7CC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_80343E4C_text
