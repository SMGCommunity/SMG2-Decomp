.include "macros.inc"
.file "__ppc_eabi_init.cpp"

# 0x80004360 - 0x800043C4
.section .init, "ax"
.balign 4

.fn __init_hardware, global
/* 80004360 00000460  7C 00 00 A6 */	mfmsr r0
/* 80004364 00000464  60 00 20 00 */	ori r0, r0, 0x2000
/* 80004368 00000468  7C 00 01 24 */	mtmsr r0
/* 8000436C 0000046C  7F E8 02 A6 */	mflr r31
/* 80004370 00000470  48 5A FC F1 */	bl __OSPSInit
/* 80004374 00000474  48 5A E9 3D */	bl __OSFPRInit
/* 80004378 00000478  48 5B 13 A9 */	bl __OSCacheInit
/* 8000437C 0000047C  7F E8 03 A6 */	mtlr r31
/* 80004380 00000480  4E 80 00 20 */	blr
.endfn __init_hardware

.fn gap_00_80004384_init, global
.hidden gap_00_80004384_init
/* 80004384 00000484  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80004388 00000488  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8000438C 0000048C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_00_80004384_init

.fn __flush_cache, global
/* 80004390 00000490  3C A0 FF FF */	lis r5, 0xffff
/* 80004394 00000494  60 A5 FF F1 */	ori r5, r5, 0xfff1
/* 80004398 00000498  7C A5 18 38 */	and r5, r5, r3
/* 8000439C 0000049C  7C 65 18 50 */	subf r3, r5, r3
/* 800043A0 000004A0  7C 84 1A 14 */	add r4, r4, r3
.L_800043A4:
/* 800043A4 000004A4  7C 00 28 6C */	dcbst r0, r5
/* 800043A8 000004A8  7C 00 04 AC */	sync
/* 800043AC 000004AC  7C 00 2F AC */	icbi r0, r5
/* 800043B0 000004B0  30 A5 00 08 */	addic r5, r5, 0x8
/* 800043B4 000004B4  34 84 FF F8 */	subic. r4, r4, 0x8
/* 800043B8 000004B8  40 80 FF EC */	bge .L_800043A4
/* 800043BC 000004BC  4C 00 01 2C */	isync
/* 800043C0 000004C0  4E 80 00 20 */	blr
.endfn __flush_cache
