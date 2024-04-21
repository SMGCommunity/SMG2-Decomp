.include "macros.inc"
.file "OSIpc.c"

# 0x805BE3F0 - 0x805BE430
.text
.balign 4

.fn fn_805BE3F0, global
/* 805BE3F0 005B9D70  80 6D F3 D8 */	lwz r3, IpcBufferHi@sda21(r0)
/* 805BE3F4 005B9D74  4E 80 00 20 */	blr
.endfn fn_805BE3F0

.fn gap_03_805BE3F8_text, global
.hidden gap_03_805BE3F8_text
/* 805BE3F8 005B9D78  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805BE3FC 005B9D7C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805BE3F8_text

.fn fn_805BE400, global
/* 805BE400 005B9D80  80 6D 96 78 */	lwz r3, IpcBufferLo@sda21(r0)
/* 805BE404 005B9D84  4E 80 00 20 */	blr
.endfn fn_805BE400

.fn gap_03_805BE408_text, global
.hidden gap_03_805BE408_text
/* 805BE408 005B9D88  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805BE40C 005B9D8C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805BE408_text

.fn __OSInitIPCBuffer, global
/* 805BE410 005B9D90  3C 60 80 00 */	lis r3, 0x8000
/* 805BE414 005B9D94  80 03 31 30 */	lwz r0, 0x3130(r3)
/* 805BE418 005B9D98  90 0D 96 78 */	stw r0, IpcBufferLo@sda21(r0)
/* 805BE41C 005B9D9C  80 03 31 34 */	lwz r0, 0x3134(r3)
/* 805BE420 005B9DA0  90 0D F3 D8 */	stw r0, IpcBufferHi@sda21(r0)
/* 805BE424 005B9DA4  4E 80 00 20 */	blr
.endfn __OSInitIPCBuffer

.fn gap_03_805BE428_text, global
.hidden gap_03_805BE428_text
/* 805BE428 005B9DA8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805BE42C 005B9DAC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805BE428_text

# 0x807D0998 - 0x807D09A0
.section .sdata, "wa"
.balign 8

.obj IpcBufferLo, local
	.4byte 0xFFFFFFFF
.endobj IpcBufferLo

.obj gap_09_807D099C_sdata, global
.hidden gap_09_807D099C_sdata
	.4byte 0x00000000
.endobj gap_09_807D099C_sdata

# 0x807D66F8 - 0x807D6700
.section .sbss, "wa", @nobits
.balign 8

.obj IpcBufferHi, local
	.skip 0x4
.endobj IpcBufferHi

.obj gap_10_807D66FC_sbss, global
.hidden gap_10_807D66FC_sbss
	.skip 0x4
.endobj gap_10_807D66FC_sbss
