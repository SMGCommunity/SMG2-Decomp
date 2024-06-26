.include "macros.inc"
.file "OSAudioSystem.c"

# 0x805B4F30 - 0x805B53F0
.text
.balign 4

.fn __AIClockInit, local
/* 805B4F30 005B08B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B4F34 005B08B4  7C 08 02 A6 */	mflr r0
/* 805B4F38 005B08B8  3C 80 CD 80 */	lis r4, 0xcd80
/* 805B4F3C 005B08BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B4F40 005B08C0  54 60 40 2E */	slwi r0, r3, 8
/* 805B4F44 005B08C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B4F48 005B08C8  7C 7F 1B 78 */	mr r31, r3
/* 805B4F4C 005B08CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B4F50 005B08D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 805B4F54 005B08D4  93 81 00 10 */	stw r28, 0x10(r1)
/* 805B4F58 005B08D8  80 A4 01 80 */	lwz r5, 0x180(r4)
/* 805B4F5C 005B08DC  54 A5 06 2C */	rlwinm r5, r5, 0, 24, 22
/* 805B4F60 005B08E0  7C A5 03 78 */	or r5, r5, r0
/* 805B4F64 005B08E4  54 A0 06 6E */	rlwinm r0, r5, 0, 25, 23
/* 805B4F68 005B08E8  90 04 01 80 */	stw r0, 0x180(r4)
/* 805B4F6C 005B08EC  80 04 01 D0 */	lwz r0, 0x1d0(r4)
/* 805B4F70 005B08F0  54 00 00 BE */	clrlwi r0, r0, 2
/* 805B4F74 005B08F4  90 04 01 D0 */	stw r0, 0x1d0(r4)
/* 805B4F78 005B08F8  48 00 8E 19 */	bl OSGetTick
/* 805B4F7C 005B08FC  3C 80 43 1C */	lis r4, 0x431c
/* 805B4F80 005B0900  7C 7C 1B 78 */	mr r28, r3
/* 805B4F84 005B0904  3B C4 DE 83 */	subi r30, r4, 0x217d
/* 805B4F88 005B0908  3F A0 80 00 */	lis r29, 0x8000
.L_805B4F8C:
/* 805B4F8C 005B090C  48 00 8E 05 */	bl OSGetTick
/* 805B4F90 005B0910  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 805B4F94 005B0914  7C 7C 18 50 */	subf r3, r28, r3
/* 805B4F98 005B0918  54 63 18 38 */	slwi r3, r3, 3
/* 805B4F9C 005B091C  54 00 F0 BE */	srwi r0, r0, 2
/* 805B4FA0 005B0920  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 805B4FA4 005B0924  54 00 8B FE */	srwi r0, r0, 15
/* 805B4FA8 005B0928  7C 03 03 96 */	divwu r0, r3, r0
/* 805B4FAC 005B092C  28 00 00 64 */	cmplwi r0, 0x64
/* 805B4FB0 005B0930  41 80 FF DC */	blt .L_805B4F8C
/* 805B4FB4 005B0934  2C 1F 00 00 */	cmpwi r31, 0x0
/* 805B4FB8 005B0938  40 82 00 2C */	bne .L_805B4FE4
/* 805B4FBC 005B093C  3C 80 CD 80 */	lis r4, 0xcd80
/* 805B4FC0 005B0940  3C 60 F8 04 */	lis r3, 0xf804
/* 805B4FC4 005B0944  80 A4 01 CC */	lwz r5, 0x1cc(r4)
/* 805B4FC8 005B0948  38 03 FF C0 */	subi r0, r3, 0x40
/* 805B4FCC 005B094C  54 A3 06 9A */	rlwinm r3, r5, 0, 26, 13
/* 805B4FD0 005B0950  60 63 0F C0 */	ori r3, r3, 0xfc0
/* 805B4FD4 005B0954  7C 60 00 38 */	and r0, r3, r0
/* 805B4FD8 005B0958  64 00 04 64 */	oris r0, r0, 0x464
/* 805B4FDC 005B095C  90 04 01 CC */	stw r0, 0x1cc(r4)
/* 805B4FE0 005B0960  48 00 00 28 */	b .L_805B5008
.L_805B4FE4:
/* 805B4FE4 005B0964  3C 60 CD 80 */	lis r3, 0xcd80
/* 805B4FE8 005B0968  80 03 01 CC */	lwz r0, 0x1cc(r3)
/* 805B4FEC 005B096C  54 00 06 9A */	rlwinm r0, r0, 0, 26, 13
/* 805B4FF0 005B0970  60 00 FF C0 */	ori r0, r0, 0xffc0
/* 805B4FF4 005B0974  54 00 00 32 */	clrrwi r0, r0, 6
/* 805B4FF8 005B0978  60 00 00 0E */	ori r0, r0, 0xe
/* 805B4FFC 005B097C  54 00 03 88 */	rlwinm r0, r0, 0, 14, 4
/* 805B5000 005B0980  64 00 04 B0 */	oris r0, r0, 0x4b0
/* 805B5004 005B0984  90 03 01 CC */	stw r0, 0x1cc(r3)
.L_805B5008:
/* 805B5008 005B0988  48 00 8D 89 */	bl OSGetTick
/* 805B500C 005B098C  3C 80 43 1C */	lis r4, 0x431c
/* 805B5010 005B0990  7C 7F 1B 78 */	mr r31, r3
/* 805B5014 005B0994  3B C4 DE 83 */	subi r30, r4, 0x217d
/* 805B5018 005B0998  3F A0 80 00 */	lis r29, 0x8000
.L_805B501C:
/* 805B501C 005B099C  48 00 8D 75 */	bl OSGetTick
/* 805B5020 005B09A0  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 805B5024 005B09A4  7C 7F 18 50 */	subf r3, r31, r3
/* 805B5028 005B09A8  54 63 18 38 */	slwi r3, r3, 3
/* 805B502C 005B09AC  54 00 F0 BE */	srwi r0, r0, 2
/* 805B5030 005B09B0  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 805B5034 005B09B4  54 00 8B FE */	srwi r0, r0, 15
/* 805B5038 005B09B8  7C 03 03 96 */	divwu r0, r3, r0
/* 805B503C 005B09BC  28 00 00 64 */	cmplwi r0, 0x64
/* 805B5040 005B09C0  41 80 FF DC */	blt .L_805B501C
/* 805B5044 005B09C4  3C 60 CD 80 */	lis r3, 0xcd80
/* 805B5048 005B09C8  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 805B504C 005B09CC  54 00 01 04 */	rlwinm r0, r0, 0, 4, 2
/* 805B5050 005B09D0  90 03 01 D0 */	stw r0, 0x1d0(r3)
/* 805B5054 005B09D4  48 00 8D 3D */	bl OSGetTick
/* 805B5058 005B09D8  3C 80 43 1C */	lis r4, 0x431c
/* 805B505C 005B09DC  7C 7F 1B 78 */	mr r31, r3
/* 805B5060 005B09E0  3B C4 DE 83 */	subi r30, r4, 0x217d
/* 805B5064 005B09E4  3F A0 80 00 */	lis r29, 0x8000
.L_805B5068:
/* 805B5068 005B09E8  48 00 8D 29 */	bl OSGetTick
/* 805B506C 005B09EC  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 805B5070 005B09F0  7C 7F 18 50 */	subf r3, r31, r3
/* 805B5074 005B09F4  54 63 18 38 */	slwi r3, r3, 3
/* 805B5078 005B09F8  54 00 F0 BE */	srwi r0, r0, 2
/* 805B507C 005B09FC  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 805B5080 005B0A00  54 00 8B FE */	srwi r0, r0, 15
/* 805B5084 005B0A04  7C 03 03 96 */	divwu r0, r3, r0
/* 805B5088 005B0A08  28 00 03 E8 */	cmplwi r0, 0x3e8
/* 805B508C 005B0A0C  41 80 FF DC */	blt .L_805B5068
/* 805B5090 005B0A10  3C 60 CD 80 */	lis r3, 0xcd80
/* 805B5094 005B0A14  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 805B5098 005B0A18  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 805B509C 005B0A1C  64 00 40 00 */	oris r0, r0, 0x4000
/* 805B50A0 005B0A20  90 03 01 D0 */	stw r0, 0x1d0(r3)
/* 805B50A4 005B0A24  48 00 8C ED */	bl OSGetTick
/* 805B50A8 005B0A28  3C 80 43 1C */	lis r4, 0x431c
/* 805B50AC 005B0A2C  7C 7F 1B 78 */	mr r31, r3
/* 805B50B0 005B0A30  3B C4 DE 83 */	subi r30, r4, 0x217d
/* 805B50B4 005B0A34  3F A0 80 00 */	lis r29, 0x8000
.L_805B50B8:
/* 805B50B8 005B0A38  48 00 8C D9 */	bl OSGetTick
/* 805B50BC 005B0A3C  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 805B50C0 005B0A40  7C 7F 18 50 */	subf r3, r31, r3
/* 805B50C4 005B0A44  54 63 18 38 */	slwi r3, r3, 3
/* 805B50C8 005B0A48  54 00 F0 BE */	srwi r0, r0, 2
/* 805B50CC 005B0A4C  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 805B50D0 005B0A50  54 00 8B FE */	srwi r0, r0, 15
/* 805B50D4 005B0A54  7C 03 03 96 */	divwu r0, r3, r0
/* 805B50D8 005B0A58  28 00 03 E8 */	cmplwi r0, 0x3e8
/* 805B50DC 005B0A5C  41 80 FF DC */	blt .L_805B50B8
/* 805B50E0 005B0A60  3C 60 CD 80 */	lis r3, 0xcd80
/* 805B50E4 005B0A64  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 805B50E8 005B0A68  54 00 00 7E */	clrlwi r0, r0, 1
/* 805B50EC 005B0A6C  64 00 80 00 */	oris r0, r0, 0x8000
/* 805B50F0 005B0A70  90 03 01 D0 */	stw r0, 0x1d0(r3)
/* 805B50F4 005B0A74  48 00 8C 9D */	bl OSGetTick
/* 805B50F8 005B0A78  3C 80 43 1C */	lis r4, 0x431c
/* 805B50FC 005B0A7C  7C 7D 1B 78 */	mr r29, r3
/* 805B5100 005B0A80  3B C4 DE 83 */	subi r30, r4, 0x217d
/* 805B5104 005B0A84  3F E0 80 00 */	lis r31, 0x8000
.L_805B5108:
/* 805B5108 005B0A88  48 00 8C 89 */	bl OSGetTick
/* 805B510C 005B0A8C  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 805B5110 005B0A90  7C 7D 18 50 */	subf r3, r29, r3
/* 805B5114 005B0A94  54 63 18 38 */	slwi r3, r3, 3
/* 805B5118 005B0A98  54 00 F0 BE */	srwi r0, r0, 2
/* 805B511C 005B0A9C  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 805B5120 005B0AA0  54 00 8B FE */	srwi r0, r0, 15
/* 805B5124 005B0AA4  7C 03 03 96 */	divwu r0, r3, r0
/* 805B5128 005B0AA8  28 00 03 E8 */	cmplwi r0, 0x3e8
/* 805B512C 005B0AAC  41 80 FF DC */	blt .L_805B5108
/* 805B5130 005B0AB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B5134 005B0AB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B5138 005B0AB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B513C 005B0ABC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 805B5140 005B0AC0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 805B5144 005B0AC4  7C 08 03 A6 */	mtlr r0
/* 805B5148 005B0AC8  38 21 00 20 */	addi r1, r1, 0x20
/* 805B514C 005B0ACC  4E 80 00 20 */	blr
.endfn __AIClockInit

.fn __OSInitAudioSystem, global
/* 805B5150 005B0AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B5154 005B0AD4  7C 08 02 A6 */	mflr r0
/* 805B5158 005B0AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B515C 005B0ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B5160 005B0AE0  80 0D F3 00 */	lwz r0, __OSInIPL@sda21(r0)
/* 805B5164 005B0AE4  2C 00 00 00 */	cmpwi r0, 0x0
/* 805B5168 005B0AE8  40 82 00 0C */	bne .L_805B5174
/* 805B516C 005B0AEC  38 60 00 01 */	li r3, 0x1
/* 805B5170 005B0AF0  4B FF FD C1 */	bl __AIClockInit
.L_805B5174:
/* 805B5174 005B0AF4  4B FF FC DD */	bl OSGetArenaHi
/* 805B5178 005B0AF8  3C 80 81 00 */	lis r4, 0x8100
/* 805B517C 005B0AFC  38 A0 00 80 */	li r5, 0x80
/* 805B5180 005B0B00  38 63 FF 80 */	subi r3, r3, 0x80
/* 805B5184 005B0B04  4B A4 F2 41 */	bl memcpy
/* 805B5188 005B0B08  3C 80 80 71 */	lis r4, DSPInitCode@ha
/* 805B518C 005B0B0C  3C 60 81 00 */	lis r3, 0x8100
/* 805B5190 005B0B10  38 84 CB C0 */	addi r4, r4, DSPInitCode@l
/* 805B5194 005B0B14  38 A0 00 80 */	li r5, 0x80
/* 805B5198 005B0B18  4B A4 F2 2D */	bl memcpy
/* 805B519C 005B0B1C  3C 60 81 00 */	lis r3, 0x8100
/* 805B51A0 005B0B20  38 80 00 80 */	li r4, 0x80
/* 805B51A4 005B0B24  48 00 02 9D */	bl DCFlushRange
/* 805B51A8 005B0B28  3C 60 CC 00 */	lis r3, 0xcc00
/* 805B51AC 005B0B2C  38 00 00 43 */	li r0, 0x43
/* 805B51B0 005B0B30  B0 03 50 12 */	sth r0, 0x5012(r3)
/* 805B51B4 005B0B34  38 00 08 AC */	li r0, 0x8ac
/* 805B51B8 005B0B38  B0 03 50 0A */	sth r0, 0x500a(r3)
/* 805B51BC 005B0B3C  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 805B51C0 005B0B40  60 00 00 01 */	ori r0, r0, 0x1
/* 805B51C4 005B0B44  B0 03 50 0A */	sth r0, 0x500a(r3)
.L_805B51C8:
/* 805B51C8 005B0B48  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 805B51CC 005B0B4C  54 00 07 FF */	clrlwi. r0, r0, 31
/* 805B51D0 005B0B50  40 82 FF F8 */	bne .L_805B51C8
/* 805B51D4 005B0B54  3C 80 CC 00 */	lis r4, 0xcc00
/* 805B51D8 005B0B58  38 00 00 00 */	li r0, 0x0
/* 805B51DC 005B0B5C  B0 04 50 00 */	sth r0, 0x5000(r4)
.L_805B51E0:
/* 805B51E0 005B0B60  A0 64 50 04 */	lhz r3, 0x5004(r4)
/* 805B51E4 005B0B64  A0 04 50 06 */	lhz r0, 0x5006(r4)
/* 805B51E8 005B0B68  50 60 80 1E */	rlwimi r0, r3, 16, 0, 15
/* 805B51EC 005B0B6C  54 00 00 01 */	clrrwi. r0, r0, 31
/* 805B51F0 005B0B70  40 82 FF F0 */	bne .L_805B51E0
/* 805B51F4 005B0B74  3C 80 CC 00 */	lis r4, 0xcc00
/* 805B51F8 005B0B78  3C 00 01 00 */	lis r0, 0x100
/* 805B51FC 005B0B7C  90 04 50 20 */	stw r0, 0x5020(r4)
/* 805B5200 005B0B80  38 60 00 00 */	li r3, 0x0
/* 805B5204 005B0B84  38 00 00 20 */	li r0, 0x20
/* 805B5208 005B0B88  90 64 50 24 */	stw r3, 0x5024(r4)
/* 805B520C 005B0B8C  90 04 50 28 */	stw r0, 0x5028(r4)
/* 805B5210 005B0B90  A0 A4 50 0A */	lhz r5, 0x500a(r4)
/* 805B5214 005B0B94  48 00 00 08 */	b .L_805B521C
.L_805B5218:
/* 805B5218 005B0B98  A0 A4 50 0A */	lhz r5, 0x500a(r4)
.L_805B521C:
/* 805B521C 005B0B9C  54 A0 06 B5 */	rlwinm. r0, r5, 0, 26, 26
/* 805B5220 005B0BA0  41 82 FF F8 */	beq .L_805B5218
/* 805B5224 005B0BA4  3C 60 CC 00 */	lis r3, 0xcc00
/* 805B5228 005B0BA8  B0 A3 50 0A */	sth r5, 0x500a(r3)
/* 805B522C 005B0BAC  48 00 8B 65 */	bl OSGetTick
/* 805B5230 005B0BB0  7C 7F 1B 78 */	mr r31, r3
.L_805B5234:
/* 805B5234 005B0BB4  48 00 8B 5D */	bl OSGetTick
/* 805B5238 005B0BB8  7C 1F 18 50 */	subf r0, r31, r3
/* 805B523C 005B0BBC  2C 00 08 92 */	cmpwi r0, 0x892
/* 805B5240 005B0BC0  41 80 FF F4 */	blt .L_805B5234
/* 805B5244 005B0BC4  3C 80 CC 00 */	lis r4, 0xcc00
/* 805B5248 005B0BC8  3C 00 01 00 */	lis r0, 0x100
/* 805B524C 005B0BCC  90 04 50 20 */	stw r0, 0x5020(r4)
/* 805B5250 005B0BD0  38 60 00 00 */	li r3, 0x0
/* 805B5254 005B0BD4  38 00 00 20 */	li r0, 0x20
/* 805B5258 005B0BD8  90 64 50 24 */	stw r3, 0x5024(r4)
/* 805B525C 005B0BDC  90 04 50 28 */	stw r0, 0x5028(r4)
/* 805B5260 005B0BE0  A0 A4 50 0A */	lhz r5, 0x500a(r4)
/* 805B5264 005B0BE4  48 00 00 08 */	b .L_805B526C
.L_805B5268:
/* 805B5268 005B0BE8  A0 A4 50 0A */	lhz r5, 0x500a(r4)
.L_805B526C:
/* 805B526C 005B0BEC  54 A0 06 B5 */	rlwinm. r0, r5, 0, 26, 26
/* 805B5270 005B0BF0  41 82 FF F8 */	beq .L_805B5268
/* 805B5274 005B0BF4  3C 60 CC 00 */	lis r3, 0xcc00
/* 805B5278 005B0BF8  B0 A3 50 0A */	sth r5, 0x500a(r3)
/* 805B527C 005B0BFC  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 805B5280 005B0C00  54 00 05 66 */	rlwinm r0, r0, 0, 21, 19
/* 805B5284 005B0C04  B0 03 50 0A */	sth r0, 0x500a(r3)
.L_805B5288:
/* 805B5288 005B0C08  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 805B528C 005B0C0C  54 00 05 6B */	rlwinm. r0, r0, 0, 21, 21
/* 805B5290 005B0C10  40 82 FF F8 */	bne .L_805B5288
/* 805B5294 005B0C14  3C 60 CC 00 */	lis r3, 0xcc00
/* 805B5298 005B0C18  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 805B529C 005B0C1C  54 00 07 B8 */	rlwinm r0, r0, 0, 30, 28
/* 805B52A0 005B0C20  B0 03 50 0A */	sth r0, 0x500a(r3)
/* 805B52A4 005B0C24  A0 03 50 04 */	lhz r0, 0x5004(r3)
/* 805B52A8 005B0C28  48 00 00 0C */	b .L_805B52B4
/* 805B52AC 005B0C2C  60 00 00 00 */	nop
.L_805B52B0:
/* 805B52B0 005B0C30  A0 03 50 04 */	lhz r0, 0x5004(r3)
.L_805B52B4:
/* 805B52B4 005B0C34  54 00 04 21 */	rlwinm. r0, r0, 0, 16, 16
/* 805B52B8 005B0C38  41 82 FF F8 */	beq .L_805B52B0
/* 805B52BC 005B0C3C  3C 80 CC 00 */	lis r4, 0xcc00
/* 805B52C0 005B0C40  38 00 08 AC */	li r0, 0x8ac
/* 805B52C4 005B0C44  A0 64 50 06 */	lhz r3, 0x5006(r4)
/* 805B52C8 005B0C48  A0 64 50 0A */	lhz r3, 0x500a(r4)
/* 805B52CC 005B0C4C  60 63 00 04 */	ori r3, r3, 0x4
/* 805B52D0 005B0C50  B0 64 50 0A */	sth r3, 0x500a(r4)
/* 805B52D4 005B0C54  B0 04 50 0A */	sth r0, 0x500a(r4)
/* 805B52D8 005B0C58  A0 04 50 0A */	lhz r0, 0x500a(r4)
/* 805B52DC 005B0C5C  60 00 00 01 */	ori r0, r0, 0x1
/* 805B52E0 005B0C60  B0 04 50 0A */	sth r0, 0x500a(r4)
/* 805B52E4 005B0C64  60 00 00 00 */	nop
.L_805B52E8:
/* 805B52E8 005B0C68  A0 04 50 0A */	lhz r0, 0x500a(r4)
/* 805B52EC 005B0C6C  54 00 07 FF */	clrlwi. r0, r0, 31
/* 805B52F0 005B0C70  40 82 FF F8 */	bne .L_805B52E8
/* 805B52F4 005B0C74  4B FF FB 5D */	bl OSGetArenaHi
/* 805B52F8 005B0C78  7C 64 1B 78 */	mr r4, r3
/* 805B52FC 005B0C7C  3C 60 81 00 */	lis r3, 0x8100
/* 805B5300 005B0C80  38 84 FF 80 */	subi r4, r4, 0x80
/* 805B5304 005B0C84  38 A0 00 80 */	li r5, 0x80
/* 805B5308 005B0C88  4B A4 F0 BD */	bl memcpy
/* 805B530C 005B0C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B5310 005B0C90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B5314 005B0C94  7C 08 03 A6 */	mtlr r0
/* 805B5318 005B0C98  38 21 00 10 */	addi r1, r1, 0x10
/* 805B531C 005B0C9C  4E 80 00 20 */	blr
.endfn __OSInitAudioSystem

.fn __OSStopAudioSystem, global
/* 805B5320 005B0CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B5324 005B0CA4  7C 08 02 A6 */	mflr r0
/* 805B5328 005B0CA8  3C 60 CC 00 */	lis r3, 0xcc00
/* 805B532C 005B0CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B5330 005B0CB0  38 00 08 04 */	li r0, 0x804
/* 805B5334 005B0CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B5338 005B0CB8  B0 03 50 0A */	sth r0, 0x500a(r3)
/* 805B533C 005B0CBC  A0 03 50 36 */	lhz r0, 0x5036(r3)
/* 805B5340 005B0CC0  54 00 04 7E */	clrlwi r0, r0, 17
/* 805B5344 005B0CC4  B0 03 50 36 */	sth r0, 0x5036(r3)
/* 805B5348 005B0CC8  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 805B534C 005B0CCC  48 00 00 08 */	b .L_805B5354
.L_805B5350:
/* 805B5350 005B0CD0  A0 03 50 0A */	lhz r0, 0x500a(r3)
.L_805B5354:
/* 805B5354 005B0CD4  54 00 05 6B */	rlwinm. r0, r0, 0, 21, 21
/* 805B5358 005B0CD8  40 82 FF F8 */	bne .L_805B5350
/* 805B535C 005B0CDC  3C 60 CC 00 */	lis r3, 0xcc00
/* 805B5360 005B0CE0  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 805B5364 005B0CE4  48 00 00 08 */	b .L_805B536C
.L_805B5368:
/* 805B5368 005B0CE8  A0 03 50 0A */	lhz r0, 0x500a(r3)
.L_805B536C:
/* 805B536C 005B0CEC  54 00 05 AD */	rlwinm. r0, r0, 0, 22, 22
/* 805B5370 005B0CF0  40 82 FF F8 */	bne .L_805B5368
/* 805B5374 005B0CF4  3C 80 CC 00 */	lis r4, 0xcc00
/* 805B5378 005B0CF8  38 00 08 AC */	li r0, 0x8ac
/* 805B537C 005B0CFC  B0 04 50 0A */	sth r0, 0x500a(r4)
/* 805B5380 005B0D00  38 00 00 00 */	li r0, 0x0
/* 805B5384 005B0D04  B0 04 50 00 */	sth r0, 0x5000(r4)
.L_805B5388:
/* 805B5388 005B0D08  A0 64 50 04 */	lhz r3, 0x5004(r4)
/* 805B538C 005B0D0C  A0 04 50 06 */	lhz r0, 0x5006(r4)
/* 805B5390 005B0D10  50 60 80 1E */	rlwimi r0, r3, 16, 0, 15
/* 805B5394 005B0D14  54 00 00 01 */	clrrwi. r0, r0, 31
/* 805B5398 005B0D18  40 82 FF F0 */	bne .L_805B5388
/* 805B539C 005B0D1C  48 00 89 F5 */	bl OSGetTick
/* 805B53A0 005B0D20  7C 7F 1B 78 */	mr r31, r3
.L_805B53A4:
/* 805B53A4 005B0D24  48 00 89 ED */	bl OSGetTick
/* 805B53A8 005B0D28  7C 1F 18 50 */	subf r0, r31, r3
/* 805B53AC 005B0D2C  2C 00 00 2C */	cmpwi r0, 0x2c
/* 805B53B0 005B0D30  41 80 FF F4 */	blt .L_805B53A4
/* 805B53B4 005B0D34  3C 60 CC 00 */	lis r3, 0xcc00
/* 805B53B8 005B0D38  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 805B53BC 005B0D3C  60 00 00 01 */	ori r0, r0, 0x1
/* 805B53C0 005B0D40  B0 03 50 0A */	sth r0, 0x500a(r3)
/* 805B53C4 005B0D44  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 805B53C8 005B0D48  48 00 00 0C */	b .L_805B53D4
/* 805B53CC 005B0D4C  60 00 00 00 */	nop
.L_805B53D0:
/* 805B53D0 005B0D50  A0 03 50 0A */	lhz r0, 0x500a(r3)
.L_805B53D4:
/* 805B53D4 005B0D54  54 00 07 FF */	clrlwi. r0, r0, 31
/* 805B53D8 005B0D58  40 82 FF F8 */	bne .L_805B53D0
/* 805B53DC 005B0D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B53E0 005B0D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B53E4 005B0D64  7C 08 03 A6 */	mtlr r0
/* 805B53E8 005B0D68  38 21 00 10 */	addi r1, r1, 0x10
/* 805B53EC 005B0D6C  4E 80 00 20 */	blr
.endfn __OSStopAudioSystem

# 0x8070CBC0 - 0x8070CC40
.data
.balign 8

.obj DSPInitCode, local
	.4byte 0x029F0010
	.4byte 0x029F0033
	.4byte 0x029F0034
	.4byte 0x029F0035
	.4byte 0x029F0036
	.4byte 0x029F0037
	.4byte 0x029F0038
	.4byte 0x029F0039
	.4byte 0x12061203
	.4byte 0x12041205
	.4byte 0x00808000
	.4byte 0x0088FFFF
	.4byte 0x00841000
	.4byte 0x0064001D
	.4byte 0x02180000
	.4byte 0x81001C1E
	.4byte 0x00441B1E
	.4byte 0x00840800
	.4byte 0x00640027
	.4byte 0x191E0000
	.4byte 0x00DEFFFC
	.4byte 0x02A08000
	.4byte 0x029C0028
	.4byte 0x16FC0054
	.4byte 0x16FD4348
	.4byte 0x002102FF
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0x02FF02FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj DSPInitCode
