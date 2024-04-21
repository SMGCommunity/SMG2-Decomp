.include "macros.inc"
.file "OSSync.c"

# 0x805BC4A0 - 0x805BC520
.text
.balign 4
.sym __OSSystemCallVectorStart, global

.fn fn_805BC4A0, global
/* 805BC4A0 005B7E20  7D 30 FA A6 */	mfspr r9, HID0
/* 805BC4A4 005B7E24  61 2A 00 08 */	ori r10, r9, 0x8
/* 805BC4A8 005B7E28  7D 50 FB A6 */	mtspr HID0, r10
/* 805BC4AC 005B7E2C  4C 00 01 2C */	isync
/* 805BC4B0 005B7E30  7C 00 04 AC */	sync
/* 805BC4B4 005B7E34  7D 30 FB A6 */	mtspr HID0, r9
/* 805BC4B8 005B7E38  4C 00 00 64 */	rfi
.sym __OSSystemCallVectorEnd, global
/* 805BC4BC 005B7E3C  60 00 00 00 */	nop
.endfn fn_805BC4A0

.fn __OSInitSystemCall, global
/* 805BC4C0 005B7E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC4C4 005B7E44  7C 08 02 A6 */	mflr r0
/* 805BC4C8 005B7E48  3C 80 80 5C */	lis r4, __OSSystemCallVectorStart@ha
/* 805BC4CC 005B7E4C  3C A0 80 5C */	lis r5, __OSSystemCallVectorEnd@ha
/* 805BC4D0 005B7E50  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC4D4 005B7E54  38 84 C4 A0 */	addi r4, r4, __OSSystemCallVectorStart@l
/* 805BC4D8 005B7E58  38 A5 C4 BC */	addi r5, r5, __OSSystemCallVectorEnd@l
/* 805BC4DC 005B7E5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC4E0 005B7E60  3F E0 80 00 */	lis r31, 0x8000
/* 805BC4E4 005B7E64  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 805BC4E8 005B7E68  7C A4 28 50 */	subf r5, r4, r5
/* 805BC4EC 005B7E6C  4B A4 7E D9 */	bl memcpy
/* 805BC4F0 005B7E70  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 805BC4F4 005B7E74  38 80 01 00 */	li r4, 0x100
/* 805BC4F8 005B7E78  4B FF 8F A9 */	bl DCFlushRangeNoSync
/* 805BC4FC 005B7E7C  7C 00 04 AC */	sync
/* 805BC500 005B7E80  38 7F 0C 00 */	addi r3, r31, 0xc00
/* 805BC504 005B7E84  38 80 01 00 */	li r4, 0x100
/* 805BC508 005B7E88  4B FF 90 29 */	bl ICInvalidateRange
/* 805BC50C 005B7E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC510 005B7E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC514 005B7E94  7C 08 03 A6 */	mtlr r0
/* 805BC518 005B7E98  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC51C 005B7E9C  4E 80 00 20 */	blr
.endfn __OSInitSystemCall
