.include "macros.inc"
.file "OSInterrupt.c"

# 0x805B99D0 - 0x805BA1A0
.text
.balign 4

.fn OSDisableInterrupts, global
/* 805B99D0 005B5350  7C 60 00 A6 */	mfmsr r3
/* 805B99D4 005B5354  54 64 04 5E */	rlwinm r4, r3, 0, 17, 15
/* 805B99D8 005B5358  7C 80 01 24 */	mtmsr r4
/* 805B99DC 005B535C  54 63 8F FE */	extrwi r3, r3, 1, 16
/* 805B99E0 005B5360  4E 80 00 20 */	blr
.endfn OSDisableInterrupts

.fn gap_03_805B99E4_text, global
.hidden gap_03_805B99E4_text
/* 805B99E4 005B5364  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B99E8 005B5368  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B99EC 005B536C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B99E4_text

.fn OSEnableInterrupts, global
/* 805B99F0 005B5370  7C 60 00 A6 */	mfmsr r3
/* 805B99F4 005B5374  60 64 80 00 */	ori r4, r3, 0x8000
/* 805B99F8 005B5378  7C 80 01 24 */	mtmsr r4
/* 805B99FC 005B537C  54 63 8F FE */	extrwi r3, r3, 1, 16
/* 805B9A00 005B5380  4E 80 00 20 */	blr
.endfn OSEnableInterrupts

.fn gap_03_805B9A04_text, global
.hidden gap_03_805B9A04_text
/* 805B9A04 005B5384  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B9A08 005B5388  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B9A0C 005B538C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B9A04_text

.fn OSRestoreInterrupts, global
/* 805B9A10 005B5390  2C 03 00 00 */	cmpwi r3, 0x0
/* 805B9A14 005B5394  7C 80 00 A6 */	mfmsr r4
/* 805B9A18 005B5398  41 82 00 0C */	beq .L_805B9A24
/* 805B9A1C 005B539C  60 85 80 00 */	ori r5, r4, 0x8000
/* 805B9A20 005B53A0  48 00 00 08 */	b .L_805B9A28
.L_805B9A24:
/* 805B9A24 005B53A4  54 85 04 5E */	rlwinm r5, r4, 0, 17, 15
.L_805B9A28:
/* 805B9A28 005B53A8  7C A0 01 24 */	mtmsr r5
/* 805B9A2C 005B53AC  54 83 8F FE */	extrwi r3, r4, 1, 16
/* 805B9A30 005B53B0  4E 80 00 20 */	blr
.endfn OSRestoreInterrupts

.fn gap_03_805B9A34_text, global
.hidden gap_03_805B9A34_text
/* 805B9A34 005B53B4  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B9A38 005B53B8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B9A3C 005B53BC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B9A34_text

.fn __OSSetInterruptHandler, global
/* 805B9A40 005B53C0  80 AD F3 A0 */	lwz r5, InterruptHandlerTable@sda21(r0)
/* 805B9A44 005B53C4  54 60 10 3A */	slwi r0, r3, 2
/* 805B9A48 005B53C8  7C 65 00 2E */	lwzx r3, r5, r0
/* 805B9A4C 005B53CC  7C 85 01 2E */	stwx r4, r5, r0
/* 805B9A50 005B53D0  4E 80 00 20 */	blr
.endfn __OSSetInterruptHandler

.fn gap_03_805B9A54_text, global
.hidden gap_03_805B9A54_text
/* 805B9A54 005B53D4  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B9A58 005B53D8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B9A5C 005B53DC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B9A54_text

.fn fn_805B9A60, global
/* 805B9A60 005B53E0  80 8D F3 A0 */	lwz r4, InterruptHandlerTable@sda21(r0)
/* 805B9A64 005B53E4  54 60 10 3A */	slwi r0, r3, 2
/* 805B9A68 005B53E8  7C 64 00 2E */	lwzx r3, r4, r0
/* 805B9A6C 005B53EC  4E 80 00 20 */	blr
.endfn fn_805B9A60

.fn __OSInterruptInit, global
/* 805B9A70 005B53F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B9A74 005B53F4  7C 08 02 A6 */	mflr r0
/* 805B9A78 005B53F8  38 80 00 00 */	li r4, 0x0
/* 805B9A7C 005B53FC  38 A0 00 80 */	li r5, 0x80
/* 805B9A80 005B5400  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B9A84 005B5404  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B9A88 005B5408  3F E0 80 00 */	lis r31, 0x8000
/* 805B9A8C 005B540C  38 7F 30 40 */	addi r3, r31, 0x3040
/* 805B9A90 005B5410  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B9A94 005B5414  93 A1 00 14 */	stw r29, 0x14(r1)
/* 805B9A98 005B5418  90 6D F3 A0 */	stw r3, InterruptHandlerTable@sda21(r0)
/* 805B9A9C 005B541C  4B A4 AC 79 */	bl memset
/* 805B9AA0 005B5420  38 00 00 00 */	li r0, 0x0
/* 805B9AA4 005B5424  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 805B9AA8 005B5428  3C 80 CC 00 */	lis r4, 0xcc00
/* 805B9AAC 005B542C  38 A0 00 F0 */	li r5, 0xf0
/* 805B9AB0 005B5430  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 805B9AB4 005B5434  3C 60 CD 00 */	lis r3, 0xcd00
/* 805B9AB8 005B5438  3C 00 40 00 */	lis r0, 0x4000
/* 805B9ABC 005B543C  3B C0 FF F0 */	li r30, -0x10
/* 805B9AC0 005B5440  90 A4 30 04 */	stw r5, 0x3004(r4)
/* 805B9AC4 005B5444  90 03 00 34 */	stw r0, 0x34(r3)
/* 805B9AC8 005B5448  4B FF FF 09 */	bl OSDisableInterrupts
/* 805B9ACC 005B544C  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 805B9AD0 005B5450  7C 7D 1B 78 */	mr r29, r3
/* 805B9AD4 005B5454  80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 805B9AD8 005B5458  7F DE 03 78 */	or r30, r30, r0
/* 805B9ADC 005B545C  7C 00 20 F8 */	nor r0, r0, r4
/* 805B9AE0 005B5460  93 DF 00 C4 */	stw r30, 0xc4(r31)
/* 805B9AE4 005B5464  54 03 00 36 */	clrrwi r3, r0, 4
/* 805B9AE8 005B5468  7F DE 23 78 */	or r30, r30, r4
/* 805B9AEC 005B546C  48 00 00 0C */	b .L_805B9AF8
.L_805B9AF0:
/* 805B9AF0 005B5470  7F C4 F3 78 */	mr r4, r30
/* 805B9AF4 005B5474  48 00 00 4D */	bl SetInterruptMask
.L_805B9AF8:
/* 805B9AF8 005B5478  2C 03 00 00 */	cmpwi r3, 0x0
/* 805B9AFC 005B547C  40 82 FF F4 */	bne .L_805B9AF0
/* 805B9B00 005B5480  7F A3 EB 78 */	mr r3, r29
/* 805B9B04 005B5484  4B FF FF 0D */	bl OSRestoreInterrupts
/* 805B9B08 005B5488  3C 80 80 5C */	lis r4, ExternalInterruptHandler@ha
/* 805B9B0C 005B548C  38 60 00 04 */	li r3, 0x4
/* 805B9B10 005B5490  38 84 A1 50 */	addi r4, r4, ExternalInterruptHandler@l
/* 805B9B14 005B5494  4B FF A4 1D */	bl __OSSetExceptionHandler
/* 805B9B18 005B5498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B9B1C 005B549C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B9B20 005B54A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B9B24 005B54A4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 805B9B28 005B54A8  7C 08 03 A6 */	mtlr r0
/* 805B9B2C 005B54AC  38 21 00 20 */	addi r1, r1, 0x20
/* 805B9B30 005B54B0  4E 80 00 20 */	blr
.endfn __OSInterruptInit

.fn gap_03_805B9B34_text, global
.hidden gap_03_805B9B34_text
/* 805B9B34 005B54B4  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B9B38 005B54B8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B9B3C 005B54BC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B9B34_text

.fn SetInterruptMask, local
/* 805B9B40 005B54C0  7C 60 00 34 */	cntlzw r0, r3
/* 805B9B44 005B54C4  2C 00 00 0C */	cmpwi r0, 0xc
/* 805B9B48 005B54C8  40 80 00 24 */	bge .L_805B9B6C
/* 805B9B4C 005B54CC  2C 00 00 08 */	cmpwi r0, 0x8
/* 805B9B50 005B54D0  41 82 00 CC */	beq .L_805B9C1C
/* 805B9B54 005B54D4  40 80 00 F4 */	bge .L_805B9C48
/* 805B9B58 005B54D8  2C 00 00 05 */	cmpwi r0, 0x5
/* 805B9B5C 005B54DC  40 80 00 80 */	bge .L_805B9BDC
/* 805B9B60 005B54E0  2C 00 00 00 */	cmpwi r0, 0x0
/* 805B9B64 005B54E4  40 80 00 28 */	bge .L_805B9B8C
/* 805B9B68 005B54E8  4E 80 00 20 */	blr
.L_805B9B6C:
/* 805B9B6C 005B54EC  2C 00 00 11 */	cmpwi r0, 0x11
/* 805B9B70 005B54F0  40 80 00 10 */	bge .L_805B9B80
/* 805B9B74 005B54F4  2C 00 00 0F */	cmpwi r0, 0xf
/* 805B9B78 005B54F8  40 80 01 58 */	bge .L_805B9CD0
/* 805B9B7C 005B54FC  48 00 01 10 */	b .L_805B9C8C
.L_805B9B80:
/* 805B9B80 005B5500  2C 00 00 1C */	cmpwi r0, 0x1c
/* 805B9B84 005B5504  4C 80 00 20 */	bgelr
/* 805B9B88 005B5508  48 00 01 7C */	b .L_805B9D04
.L_805B9B8C:
/* 805B9B8C 005B550C  54 80 00 01 */	clrrwi. r0, r4, 31
/* 805B9B90 005B5510  38 A0 00 00 */	li r5, 0x0
/* 805B9B94 005B5514  40 82 00 08 */	bne .L_805B9B9C
/* 805B9B98 005B5518  60 A5 00 01 */	ori r5, r5, 0x1
.L_805B9B9C:
/* 805B9B9C 005B551C  54 80 00 43 */	rlwinm. r0, r4, 0, 1, 1
/* 805B9BA0 005B5520  40 82 00 08 */	bne .L_805B9BA8
/* 805B9BA4 005B5524  60 A5 00 02 */	ori r5, r5, 0x2
.L_805B9BA8:
/* 805B9BA8 005B5528  54 80 00 85 */	rlwinm. r0, r4, 0, 2, 2
/* 805B9BAC 005B552C  40 82 00 08 */	bne .L_805B9BB4
/* 805B9BB0 005B5530  60 A5 00 04 */	ori r5, r5, 0x4
.L_805B9BB4:
/* 805B9BB4 005B5534  54 80 00 C7 */	rlwinm. r0, r4, 0, 3, 3
/* 805B9BB8 005B5538  40 82 00 08 */	bne .L_805B9BC0
/* 805B9BBC 005B553C  60 A5 00 08 */	ori r5, r5, 0x8
.L_805B9BC0:
/* 805B9BC0 005B5540  54 80 01 09 */	rlwinm. r0, r4, 0, 4, 4
/* 805B9BC4 005B5544  40 82 00 08 */	bne .L_805B9BCC
/* 805B9BC8 005B5548  60 A5 00 10 */	ori r5, r5, 0x10
.L_805B9BCC:
/* 805B9BCC 005B554C  3C 80 CC 00 */	lis r4, 0xcc00
/* 805B9BD0 005B5550  54 63 01 7E */	clrlwi r3, r3, 5
/* 805B9BD4 005B5554  B0 A4 40 1C */	sth r5, 0x401c(r4)
/* 805B9BD8 005B5558  4E 80 00 20 */	blr
.L_805B9BDC:
/* 805B9BDC 005B555C  3C A0 CC 00 */	lis r5, 0xcc00
/* 805B9BE0 005B5560  54 80 01 4B */	rlwinm. r0, r4, 0, 5, 5
/* 805B9BE4 005B5564  A0 A5 50 0A */	lhz r5, 0x500a(r5)
/* 805B9BE8 005B5568  54 A5 07 6C */	rlwinm r5, r5, 0, 29, 22
/* 805B9BEC 005B556C  40 82 00 08 */	bne .L_805B9BF4
/* 805B9BF0 005B5570  60 A5 00 10 */	ori r5, r5, 0x10
.L_805B9BF4:
/* 805B9BF4 005B5574  54 80 01 8D */	rlwinm. r0, r4, 0, 6, 6
/* 805B9BF8 005B5578  40 82 00 08 */	bne .L_805B9C00
/* 805B9BFC 005B557C  60 A5 00 40 */	ori r5, r5, 0x40
.L_805B9C00:
/* 805B9C00 005B5580  54 80 01 CF */	rlwinm. r0, r4, 0, 7, 7
/* 805B9C04 005B5584  40 82 00 08 */	bne .L_805B9C0C
/* 805B9C08 005B5588  60 A5 01 00 */	ori r5, r5, 0x100
.L_805B9C0C:
/* 805B9C0C 005B558C  3C 80 CC 00 */	lis r4, 0xcc00
/* 805B9C10 005B5590  54 63 02 08 */	rlwinm r3, r3, 0, 8, 4
/* 805B9C14 005B5594  B0 A4 50 0A */	sth r5, 0x500a(r4)
/* 805B9C18 005B5598  4E 80 00 20 */	blr
.L_805B9C1C:
/* 805B9C1C 005B559C  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 805B9C20 005B55A0  3C 80 CD 00 */	lis r4, 0xcd00
/* 805B9C24 005B55A4  80 A4 6C 00 */	lwz r5, 0x6c00(r4)
/* 805B9C28 005B55A8  38 00 FF D3 */	li r0, -0x2d
/* 805B9C2C 005B55AC  7C A5 00 38 */	and r5, r5, r0
/* 805B9C30 005B55B0  40 82 00 08 */	bne .L_805B9C38
/* 805B9C34 005B55B4  60 A5 00 04 */	ori r5, r5, 0x4
.L_805B9C38:
/* 805B9C38 005B55B8  3C 80 CD 00 */	lis r4, 0xcd00
/* 805B9C3C 005B55BC  54 63 02 4E */	rlwinm r3, r3, 0, 9, 7
/* 805B9C40 005B55C0  90 A4 6C 00 */	stw r5, 0x6c00(r4)
/* 805B9C44 005B55C4  4E 80 00 20 */	blr
.L_805B9C48:
/* 805B9C48 005B55C8  54 80 02 53 */	rlwinm. r0, r4, 0, 9, 9
/* 805B9C4C 005B55CC  3C A0 CD 00 */	lis r5, 0xcd00
/* 805B9C50 005B55D0  80 A5 68 00 */	lwz r5, 0x6800(r5)
/* 805B9C54 005B55D4  38 00 D3 F0 */	li r0, -0x2c10
/* 805B9C58 005B55D8  7C A5 00 38 */	and r5, r5, r0
/* 805B9C5C 005B55DC  40 82 00 08 */	bne .L_805B9C64
/* 805B9C60 005B55E0  60 A5 00 01 */	ori r5, r5, 0x1
.L_805B9C64:
/* 805B9C64 005B55E4  54 80 02 95 */	rlwinm. r0, r4, 0, 10, 10
/* 805B9C68 005B55E8  40 82 00 08 */	bne .L_805B9C70
/* 805B9C6C 005B55EC  60 A5 00 04 */	ori r5, r5, 0x4
.L_805B9C70:
/* 805B9C70 005B55F0  54 80 02 D7 */	rlwinm. r0, r4, 0, 11, 11
/* 805B9C74 005B55F4  40 82 00 08 */	bne .L_805B9C7C
/* 805B9C78 005B55F8  60 A5 04 00 */	ori r5, r5, 0x400
.L_805B9C7C:
/* 805B9C7C 005B55FC  3C 80 CD 00 */	lis r4, 0xcd00
/* 805B9C80 005B5600  54 63 03 10 */	rlwinm r3, r3, 0, 12, 8
/* 805B9C84 005B5604  90 A4 68 00 */	stw r5, 0x6800(r4)
/* 805B9C88 005B5608  4E 80 00 20 */	blr
.L_805B9C8C:
/* 805B9C8C 005B560C  54 80 03 19 */	rlwinm. r0, r4, 0, 12, 12
/* 805B9C90 005B5610  3C A0 CD 00 */	lis r5, 0xcd00
/* 805B9C94 005B5614  80 A5 68 14 */	lwz r5, 0x6814(r5)
/* 805B9C98 005B5618  38 00 F3 F0 */	li r0, -0xc10
/* 805B9C9C 005B561C  7C A5 00 38 */	and r5, r5, r0
/* 805B9CA0 005B5620  40 82 00 08 */	bne .L_805B9CA8
/* 805B9CA4 005B5624  60 A5 00 01 */	ori r5, r5, 0x1
.L_805B9CA8:
/* 805B9CA8 005B5628  54 80 03 5B */	rlwinm. r0, r4, 0, 13, 13
/* 805B9CAC 005B562C  40 82 00 08 */	bne .L_805B9CB4
/* 805B9CB0 005B5630  60 A5 00 04 */	ori r5, r5, 0x4
.L_805B9CB4:
/* 805B9CB4 005B5634  54 80 03 9D */	rlwinm. r0, r4, 0, 14, 14
/* 805B9CB8 005B5638  40 82 00 08 */	bne .L_805B9CC0
/* 805B9CBC 005B563C  60 A5 04 00 */	ori r5, r5, 0x400
.L_805B9CC0:
/* 805B9CC0 005B5640  3C 80 CD 00 */	lis r4, 0xcd00
/* 805B9CC4 005B5644  54 63 03 D6 */	rlwinm r3, r3, 0, 15, 11
/* 805B9CC8 005B5648  90 A4 68 14 */	stw r5, 0x6814(r4)
/* 805B9CCC 005B564C  4E 80 00 20 */	blr
.L_805B9CD0:
/* 805B9CD0 005B5650  3C A0 CD 00 */	lis r5, 0xcd00
/* 805B9CD4 005B5654  54 80 03 DF */	rlwinm. r0, r4, 0, 15, 15
/* 805B9CD8 005B5658  80 A5 68 28 */	lwz r5, 0x6828(r5)
/* 805B9CDC 005B565C  54 A5 00 36 */	clrrwi r5, r5, 4
/* 805B9CE0 005B5660  40 82 00 08 */	bne .L_805B9CE8
/* 805B9CE4 005B5664  60 A5 00 01 */	ori r5, r5, 0x1
.L_805B9CE8:
/* 805B9CE8 005B5668  54 80 04 21 */	rlwinm. r0, r4, 0, 16, 16
/* 805B9CEC 005B566C  40 82 00 08 */	bne .L_805B9CF4
/* 805B9CF0 005B5670  60 A5 00 04 */	ori r5, r5, 0x4
.L_805B9CF4:
/* 805B9CF4 005B5674  3C 80 CD 00 */	lis r4, 0xcd00
/* 805B9CF8 005B5678  54 63 04 5C */	rlwinm r3, r3, 0, 17, 14
/* 805B9CFC 005B567C  90 A4 68 28 */	stw r5, 0x6828(r4)
/* 805B9D00 005B5680  4E 80 00 20 */	blr
.L_805B9D04:
/* 805B9D04 005B5684  54 80 04 63 */	rlwinm. r0, r4, 0, 17, 17
/* 805B9D08 005B5688  38 A0 00 F0 */	li r5, 0xf0
/* 805B9D0C 005B568C  40 82 00 08 */	bne .L_805B9D14
/* 805B9D10 005B5690  60 A5 08 00 */	ori r5, r5, 0x800
.L_805B9D14:
/* 805B9D14 005B5694  54 80 05 29 */	rlwinm. r0, r4, 0, 20, 20
/* 805B9D18 005B5698  40 82 00 08 */	bne .L_805B9D20
/* 805B9D1C 005B569C  60 A5 00 08 */	ori r5, r5, 0x8
.L_805B9D20:
/* 805B9D20 005B56A0  54 80 05 6B */	rlwinm. r0, r4, 0, 21, 21
/* 805B9D24 005B56A4  40 82 00 08 */	bne .L_805B9D2C
/* 805B9D28 005B56A8  60 A5 00 04 */	ori r5, r5, 0x4
.L_805B9D2C:
/* 805B9D2C 005B56AC  54 80 05 AD */	rlwinm. r0, r4, 0, 22, 22
/* 805B9D30 005B56B0  40 82 00 08 */	bne .L_805B9D38
/* 805B9D34 005B56B4  60 A5 00 02 */	ori r5, r5, 0x2
.L_805B9D38:
/* 805B9D38 005B56B8  54 80 05 EF */	rlwinm. r0, r4, 0, 23, 23
/* 805B9D3C 005B56BC  40 82 00 08 */	bne .L_805B9D44
/* 805B9D40 005B56C0  60 A5 00 01 */	ori r5, r5, 0x1
.L_805B9D44:
/* 805B9D44 005B56C4  54 80 06 31 */	rlwinm. r0, r4, 0, 24, 24
/* 805B9D48 005B56C8  40 82 00 08 */	bne .L_805B9D50
/* 805B9D4C 005B56CC  60 A5 01 00 */	ori r5, r5, 0x100
.L_805B9D50:
/* 805B9D50 005B56D0  54 80 06 73 */	rlwinm. r0, r4, 0, 25, 25
/* 805B9D54 005B56D4  40 82 00 08 */	bne .L_805B9D5C
/* 805B9D58 005B56D8  60 A5 10 00 */	ori r5, r5, 0x1000
.L_805B9D5C:
/* 805B9D5C 005B56DC  54 80 04 A5 */	rlwinm. r0, r4, 0, 18, 18
/* 805B9D60 005B56E0  40 82 00 08 */	bne .L_805B9D68
/* 805B9D64 005B56E4  60 A5 02 00 */	ori r5, r5, 0x200
.L_805B9D68:
/* 805B9D68 005B56E8  54 80 04 E7 */	rlwinm. r0, r4, 0, 19, 19
/* 805B9D6C 005B56EC  40 82 00 08 */	bne .L_805B9D74
/* 805B9D70 005B56F0  60 A5 04 00 */	ori r5, r5, 0x400
.L_805B9D74:
/* 805B9D74 005B56F4  54 80 06 B5 */	rlwinm. r0, r4, 0, 26, 26
/* 805B9D78 005B56F8  40 82 00 08 */	bne .L_805B9D80
/* 805B9D7C 005B56FC  60 A5 20 00 */	ori r5, r5, 0x2000
.L_805B9D80:
/* 805B9D80 005B5700  54 80 06 F7 */	rlwinm. r0, r4, 0, 27, 27
/* 805B9D84 005B5704  40 82 00 08 */	bne .L_805B9D8C
/* 805B9D88 005B5708  60 A5 40 00 */	ori r5, r5, 0x4000
.L_805B9D8C:
/* 805B9D8C 005B570C  3C 80 CC 00 */	lis r4, 0xcc00
/* 805B9D90 005B5710  54 63 07 20 */	rlwinm r3, r3, 0, 28, 16
/* 805B9D94 005B5714  90 A4 30 04 */	stw r5, 0x3004(r4)
/* 805B9D98 005B5718  4E 80 00 20 */	blr
.endfn SetInterruptMask

.fn gap_03_805B9D9C_text, global
.hidden gap_03_805B9D9C_text
/* 805B9D9C 005B571C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B9D9C_text

.fn __OSMaskInterrupts, global
/* 805B9DA0 005B5720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B9DA4 005B5724  7C 08 02 A6 */	mflr r0
/* 805B9DA8 005B5728  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B9DAC 005B572C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B9DB0 005B5730  7C 7F 1B 78 */	mr r31, r3
/* 805B9DB4 005B5734  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B9DB8 005B5738  93 A1 00 14 */	stw r29, 0x14(r1)
/* 805B9DBC 005B573C  4B FF FC 15 */	bl OSDisableInterrupts
/* 805B9DC0 005B5740  3C 80 80 00 */	lis r4, 0x8000
/* 805B9DC4 005B5744  7C 7E 1B 78 */	mr r30, r3
/* 805B9DC8 005B5748  83 A4 00 C4 */	lwz r29, 0xc4(r4)
/* 805B9DCC 005B574C  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 805B9DD0 005B5750  7F A0 2B 78 */	or r0, r29, r5
/* 805B9DD4 005B5754  7F E3 00 78 */	andc r3, r31, r0
/* 805B9DD8 005B5758  7F FF EB 78 */	or r31, r31, r29
/* 805B9DDC 005B575C  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 805B9DE0 005B5760  7F FF 2B 78 */	or r31, r31, r5
/* 805B9DE4 005B5764  48 00 00 0C */	b .L_805B9DF0
.L_805B9DE8:
/* 805B9DE8 005B5768  7F E4 FB 78 */	mr r4, r31
/* 805B9DEC 005B576C  4B FF FD 55 */	bl SetInterruptMask
.L_805B9DF0:
/* 805B9DF0 005B5770  2C 03 00 00 */	cmpwi r3, 0x0
/* 805B9DF4 005B5774  40 82 FF F4 */	bne .L_805B9DE8
/* 805B9DF8 005B5778  7F C3 F3 78 */	mr r3, r30
/* 805B9DFC 005B577C  4B FF FC 15 */	bl OSRestoreInterrupts
/* 805B9E00 005B5780  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B9E04 005B5784  7F A3 EB 78 */	mr r3, r29
/* 805B9E08 005B5788  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B9E0C 005B578C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 805B9E10 005B5790  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B9E14 005B5794  7C 08 03 A6 */	mtlr r0
/* 805B9E18 005B5798  38 21 00 20 */	addi r1, r1, 0x20
/* 805B9E1C 005B579C  4E 80 00 20 */	blr
.endfn __OSMaskInterrupts

.fn __OSUnmaskInterrupts, global
/* 805B9E20 005B57A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B9E24 005B57A4  7C 08 02 A6 */	mflr r0
/* 805B9E28 005B57A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B9E2C 005B57AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B9E30 005B57B0  7C 7F 1B 78 */	mr r31, r3
/* 805B9E34 005B57B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B9E38 005B57B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 805B9E3C 005B57BC  4B FF FB 95 */	bl OSDisableInterrupts
/* 805B9E40 005B57C0  3C 80 80 00 */	lis r4, 0x8000
/* 805B9E44 005B57C4  7C 7E 1B 78 */	mr r30, r3
/* 805B9E48 005B57C8  83 A4 00 C4 */	lwz r29, 0xc4(r4)
/* 805B9E4C 005B57CC  80 A4 00 C8 */	lwz r5, 0xc8(r4)
/* 805B9E50 005B57D0  7F A0 2B 78 */	or r0, r29, r5
/* 805B9E54 005B57D4  7F E3 00 38 */	and r3, r31, r0
/* 805B9E58 005B57D8  7F BF F8 78 */	andc r31, r29, r31
/* 805B9E5C 005B57DC  93 E4 00 C4 */	stw r31, 0xc4(r4)
/* 805B9E60 005B57E0  7F FF 2B 78 */	or r31, r31, r5
/* 805B9E64 005B57E4  48 00 00 0C */	b .L_805B9E70
.L_805B9E68:
/* 805B9E68 005B57E8  7F E4 FB 78 */	mr r4, r31
/* 805B9E6C 005B57EC  4B FF FC D5 */	bl SetInterruptMask
.L_805B9E70:
/* 805B9E70 005B57F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 805B9E74 005B57F4  40 82 FF F4 */	bne .L_805B9E68
/* 805B9E78 005B57F8  7F C3 F3 78 */	mr r3, r30
/* 805B9E7C 005B57FC  4B FF FB 95 */	bl OSRestoreInterrupts
/* 805B9E80 005B5800  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805B9E84 005B5804  7F A3 EB 78 */	mr r3, r29
/* 805B9E88 005B5808  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805B9E8C 005B580C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 805B9E90 005B5810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B9E94 005B5814  7C 08 03 A6 */	mtlr r0
/* 805B9E98 005B5818  38 21 00 20 */	addi r1, r1, 0x20
/* 805B9E9C 005B581C  4E 80 00 20 */	blr
.endfn __OSUnmaskInterrupts

.fn fn_805B9EA0, global
/* 805B9EA0 005B5820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B9EA4 005B5824  7C 08 02 A6 */	mflr r0
/* 805B9EA8 005B5828  3C 60 CC 00 */	lis r3, 0xcc00
/* 805B9EAC 005B582C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B9EB0 005B5830  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805B9EB4 005B5834  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805B9EB8 005B5838  7C 9E 23 78 */	mr r30, r4
/* 805B9EBC 005B583C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 805B9EC0 005B5840  83 E3 30 00 */	lwz r31, 0x3000(r3)
/* 805B9EC4 005B5844  80 03 30 04 */	lwz r0, 0x3004(r3)
/* 805B9EC8 005B5848  57 FF 04 1D */	rlwinm. r31, r31, 0, 16, 14
/* 805B9ECC 005B584C  41 82 00 0C */	beq .L_805B9ED8
/* 805B9ED0 005B5850  7F E0 00 39 */	and. r0, r31, r0
/* 805B9ED4 005B5854  40 82 00 0C */	bne .L_805B9EE0
.L_805B9ED8:
/* 805B9ED8 005B5858  7F C3 F3 78 */	mr r3, r30
/* 805B9EDC 005B585C  4B FF BC 95 */	bl OSLoadContext
.L_805B9EE0:
/* 805B9EE0 005B5860  57 E0 06 31 */	rlwinm. r0, r31, 0, 24, 24
/* 805B9EE4 005B5864  38 00 00 00 */	li r0, 0x0
/* 805B9EE8 005B5868  41 82 00 48 */	beq .L_805B9F30
/* 805B9EEC 005B586C  3C 60 CC 00 */	lis r3, 0xcc00
/* 805B9EF0 005B5870  A0 83 40 1E */	lhz r4, 0x401e(r3)
/* 805B9EF4 005B5874  54 83 07 FF */	clrlwi. r3, r4, 31
/* 805B9EF8 005B5878  41 82 00 08 */	beq .L_805B9F00
/* 805B9EFC 005B587C  64 00 80 00 */	oris r0, r0, 0x8000
.L_805B9F00:
/* 805B9F00 005B5880  54 83 07 BD */	rlwinm. r3, r4, 0, 30, 30
/* 805B9F04 005B5884  41 82 00 08 */	beq .L_805B9F0C
/* 805B9F08 005B5888  64 00 40 00 */	oris r0, r0, 0x4000
.L_805B9F0C:
/* 805B9F0C 005B588C  54 83 07 7B */	rlwinm. r3, r4, 0, 29, 29
/* 805B9F10 005B5890  41 82 00 08 */	beq .L_805B9F18
/* 805B9F14 005B5894  64 00 20 00 */	oris r0, r0, 0x2000
.L_805B9F18:
/* 805B9F18 005B5898  54 83 07 39 */	rlwinm. r3, r4, 0, 28, 28
/* 805B9F1C 005B589C  41 82 00 08 */	beq .L_805B9F24
/* 805B9F20 005B58A0  64 00 10 00 */	oris r0, r0, 0x1000
.L_805B9F24:
/* 805B9F24 005B58A4  54 83 06 F7 */	rlwinm. r3, r4, 0, 27, 27
/* 805B9F28 005B58A8  41 82 00 08 */	beq .L_805B9F30
/* 805B9F2C 005B58AC  64 00 08 00 */	oris r0, r0, 0x800
.L_805B9F30:
/* 805B9F30 005B58B0  57 E3 06 73 */	rlwinm. r3, r31, 0, 25, 25
/* 805B9F34 005B58B4  41 82 00 30 */	beq .L_805B9F64
/* 805B9F38 005B58B8  3C 60 CC 00 */	lis r3, 0xcc00
/* 805B9F3C 005B58BC  A0 83 50 0A */	lhz r4, 0x500a(r3)
/* 805B9F40 005B58C0  54 83 07 39 */	rlwinm. r3, r4, 0, 28, 28
/* 805B9F44 005B58C4  41 82 00 08 */	beq .L_805B9F4C
/* 805B9F48 005B58C8  64 00 04 00 */	oris r0, r0, 0x400
.L_805B9F4C:
/* 805B9F4C 005B58CC  54 83 06 B5 */	rlwinm. r3, r4, 0, 26, 26
/* 805B9F50 005B58D0  41 82 00 08 */	beq .L_805B9F58
/* 805B9F54 005B58D4  64 00 02 00 */	oris r0, r0, 0x200
.L_805B9F58:
/* 805B9F58 005B58D8  54 83 06 31 */	rlwinm. r3, r4, 0, 24, 24
/* 805B9F5C 005B58DC  41 82 00 08 */	beq .L_805B9F64
/* 805B9F60 005B58E0  64 00 01 00 */	oris r0, r0, 0x100
.L_805B9F64:
/* 805B9F64 005B58E4  57 E3 06 B5 */	rlwinm. r3, r31, 0, 26, 26
/* 805B9F68 005B58E8  41 82 00 18 */	beq .L_805B9F80
/* 805B9F6C 005B58EC  3C 60 CD 00 */	lis r3, 0xcd00
/* 805B9F70 005B58F0  80 63 6C 00 */	lwz r3, 0x6c00(r3)
/* 805B9F74 005B58F4  54 63 07 39 */	rlwinm. r3, r3, 0, 28, 28
/* 805B9F78 005B58F8  41 82 00 08 */	beq .L_805B9F80
/* 805B9F7C 005B58FC  64 00 00 80 */	oris r0, r0, 0x80
.L_805B9F80:
/* 805B9F80 005B5900  57 E3 06 F7 */	rlwinm. r3, r31, 0, 27, 27
/* 805B9F84 005B5904  41 82 00 7C */	beq .L_805BA000
/* 805B9F88 005B5908  3C 60 CD 00 */	lis r3, 0xcd00
/* 805B9F8C 005B590C  80 83 68 00 */	lwz r4, 0x6800(r3)
/* 805B9F90 005B5910  54 83 07 BD */	rlwinm. r3, r4, 0, 30, 30
/* 805B9F94 005B5914  41 82 00 08 */	beq .L_805B9F9C
/* 805B9F98 005B5918  64 00 00 40 */	oris r0, r0, 0x40
.L_805B9F9C:
/* 805B9F9C 005B591C  54 83 07 39 */	rlwinm. r3, r4, 0, 28, 28
/* 805B9FA0 005B5920  41 82 00 08 */	beq .L_805B9FA8
/* 805B9FA4 005B5924  64 00 00 20 */	oris r0, r0, 0x20
.L_805B9FA8:
/* 805B9FA8 005B5928  54 83 05 29 */	rlwinm. r3, r4, 0, 20, 20
/* 805B9FAC 005B592C  41 82 00 08 */	beq .L_805B9FB4
/* 805B9FB0 005B5930  64 00 00 10 */	oris r0, r0, 0x10
.L_805B9FB4:
/* 805B9FB4 005B5934  3C 60 CD 00 */	lis r3, 0xcd00
/* 805B9FB8 005B5938  80 83 68 14 */	lwz r4, 0x6814(r3)
/* 805B9FBC 005B593C  54 83 07 BD */	rlwinm. r3, r4, 0, 30, 30
/* 805B9FC0 005B5940  41 82 00 08 */	beq .L_805B9FC8
/* 805B9FC4 005B5944  64 00 00 08 */	oris r0, r0, 0x8
.L_805B9FC8:
/* 805B9FC8 005B5948  54 83 07 39 */	rlwinm. r3, r4, 0, 28, 28
/* 805B9FCC 005B594C  41 82 00 08 */	beq .L_805B9FD4
/* 805B9FD0 005B5950  64 00 00 04 */	oris r0, r0, 0x4
.L_805B9FD4:
/* 805B9FD4 005B5954  54 83 05 29 */	rlwinm. r3, r4, 0, 20, 20
/* 805B9FD8 005B5958  41 82 00 08 */	beq .L_805B9FE0
/* 805B9FDC 005B595C  64 00 00 02 */	oris r0, r0, 0x2
.L_805B9FE0:
/* 805B9FE0 005B5960  3C 60 CD 00 */	lis r3, 0xcd00
/* 805B9FE4 005B5964  80 83 68 28 */	lwz r4, 0x6828(r3)
/* 805B9FE8 005B5968  54 83 07 BD */	rlwinm. r3, r4, 0, 30, 30
/* 805B9FEC 005B596C  41 82 00 08 */	beq .L_805B9FF4
/* 805B9FF0 005B5970  64 00 00 01 */	oris r0, r0, 0x1
.L_805B9FF4:
/* 805B9FF4 005B5974  54 83 07 39 */	rlwinm. r3, r4, 0, 28, 28
/* 805B9FF8 005B5978  41 82 00 08 */	beq .L_805BA000
/* 805B9FFC 005B597C  60 00 80 00 */	ori r0, r0, 0x8000
.L_805BA000:
/* 805BA000 005B5980  57 E3 04 A5 */	rlwinm. r3, r31, 0, 18, 18
/* 805BA004 005B5984  41 82 00 08 */	beq .L_805BA00C
/* 805BA008 005B5988  60 00 00 20 */	ori r0, r0, 0x20
.L_805BA00C:
/* 805BA00C 005B598C  57 E3 04 E7 */	rlwinm. r3, r31, 0, 19, 19
/* 805BA010 005B5990  41 82 00 08 */	beq .L_805BA018
/* 805BA014 005B5994  60 00 00 40 */	ori r0, r0, 0x40
.L_805BA018:
/* 805BA018 005B5998  57 E3 05 6B */	rlwinm. r3, r31, 0, 21, 21
/* 805BA01C 005B599C  41 82 00 08 */	beq .L_805BA024
/* 805BA020 005B59A0  60 00 10 00 */	ori r0, r0, 0x1000
.L_805BA024:
/* 805BA024 005B59A4  57 E3 05 AD */	rlwinm. r3, r31, 0, 22, 22
/* 805BA028 005B59A8  41 82 00 08 */	beq .L_805BA030
/* 805BA02C 005B59AC  60 00 20 00 */	ori r0, r0, 0x2000
.L_805BA030:
/* 805BA030 005B59B0  57 E3 05 EF */	rlwinm. r3, r31, 0, 23, 23
/* 805BA034 005B59B4  41 82 00 08 */	beq .L_805BA03C
/* 805BA038 005B59B8  60 00 00 80 */	ori r0, r0, 0x80
.L_805BA03C:
/* 805BA03C 005B59BC  57 E3 07 39 */	rlwinm. r3, r31, 0, 28, 28
/* 805BA040 005B59C0  41 82 00 08 */	beq .L_805BA048
/* 805BA044 005B59C4  60 00 08 00 */	ori r0, r0, 0x800
.L_805BA048:
/* 805BA048 005B59C8  57 E3 07 7B */	rlwinm. r3, r31, 0, 29, 29
/* 805BA04C 005B59CC  41 82 00 08 */	beq .L_805BA054
/* 805BA050 005B59D0  60 00 04 00 */	ori r0, r0, 0x400
.L_805BA054:
/* 805BA054 005B59D4  57 E3 07 BD */	rlwinm. r3, r31, 0, 30, 30
/* 805BA058 005B59D8  41 82 00 08 */	beq .L_805BA060
/* 805BA05C 005B59DC  60 00 02 00 */	ori r0, r0, 0x200
.L_805BA060:
/* 805BA060 005B59E0  57 E3 05 29 */	rlwinm. r3, r31, 0, 20, 20
/* 805BA064 005B59E4  41 82 00 08 */	beq .L_805BA06C
/* 805BA068 005B59E8  60 00 40 00 */	ori r0, r0, 0x4000
.L_805BA06C:
/* 805BA06C 005B59EC  57 E3 07 FF */	clrlwi. r3, r31, 31
/* 805BA070 005B59F0  41 82 00 08 */	beq .L_805BA078
/* 805BA074 005B59F4  60 00 01 00 */	ori r0, r0, 0x100
.L_805BA078:
/* 805BA078 005B59F8  57 E3 04 63 */	rlwinm. r3, r31, 0, 17, 17
/* 805BA07C 005B59FC  41 82 00 08 */	beq .L_805BA084
/* 805BA080 005B5A00  60 00 00 10 */	ori r0, r0, 0x10
.L_805BA084:
/* 805BA084 005B5A04  3C 60 80 00 */	lis r3, 0x8000
/* 805BA088 005B5A08  80 83 00 C4 */	lwz r4, 0xc4(r3)
/* 805BA08C 005B5A0C  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 805BA090 005B5A10  7C 83 1B 78 */	or r3, r4, r3
/* 805BA094 005B5A14  7C 03 18 79 */	andc. r3, r0, r3
/* 805BA098 005B5A18  41 82 00 8C */	beq .L_805BA124
/* 805BA09C 005B5A1C  3C 80 80 71 */	lis r4, lbl_8070E0C0@ha
/* 805BA0A0 005B5A20  38 84 E0 C0 */	addi r4, r4, lbl_8070E0C0@l
/* 805BA0A4 005B5A24  60 00 00 00 */	nop
.L_805BA0A8:
/* 805BA0A8 005B5A28  80 04 00 00 */	lwz r0, 0x0(r4)
/* 805BA0AC 005B5A2C  7C 60 00 39 */	and. r0, r3, r0
/* 805BA0B0 005B5A30  41 82 00 10 */	beq .L_805BA0C0
/* 805BA0B4 005B5A34  7C 00 00 34 */	cntlzw r0, r0
/* 805BA0B8 005B5A38  7C 1D 07 34 */	extsh r29, r0
/* 805BA0BC 005B5A3C  48 00 00 0C */	b .L_805BA0C8
.L_805BA0C0:
/* 805BA0C0 005B5A40  38 84 00 04 */	addi r4, r4, 0x4
/* 805BA0C4 005B5A44  4B FF FF E4 */	b .L_805BA0A8
.L_805BA0C8:
/* 805BA0C8 005B5A48  80 6D F3 A0 */	lwz r3, InterruptHandlerTable@sda21(r0)
/* 805BA0CC 005B5A4C  57 A0 10 3A */	slwi r0, r29, 2
/* 805BA0D0 005B5A50  7F E3 00 2E */	lwzx r31, r3, r0
/* 805BA0D4 005B5A54  2C 1F 00 00 */	cmpwi r31, 0x0
/* 805BA0D8 005B5A58  41 82 00 4C */	beq .L_805BA124
/* 805BA0DC 005B5A5C  2C 1D 00 04 */	cmpwi r29, 0x4
/* 805BA0E0 005B5A60  40 81 00 1C */	ble .L_805BA0FC
/* 805BA0E4 005B5A64  B3 AD F3 94 */	sth r29, __OSLastInterrupt@sda21(r0)
/* 805BA0E8 005B5A68  48 00 3C 89 */	bl OSGetTime
/* 805BA0EC 005B5A6C  90 8D F3 9C */	stw r4, __OSLastInterruptTime+0x4@sda21(r0)
/* 805BA0F0 005B5A70  90 6D F3 98 */	stw r3, __OSLastInterruptTime@sda21(r0)
/* 805BA0F4 005B5A74  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 805BA0F8 005B5A78  90 0D F3 90 */	stw r0, __OSLastInterruptSrr0@sda21(r0)
.L_805BA0FC:
/* 805BA0FC 005B5A7C  48 00 27 35 */	bl OSDisableScheduler
/* 805BA100 005B5A80  7F EC FB 78 */	mr r12, r31
/* 805BA104 005B5A84  7F A3 EB 78 */	mr r3, r29
/* 805BA108 005B5A88  7F C4 F3 78 */	mr r4, r30
/* 805BA10C 005B5A8C  7D 89 03 A6 */	mtctr r12
/* 805BA110 005B5A90  4E 80 04 21 */	bctrl
/* 805BA114 005B5A94  48 00 27 5D */	bl OSEnableScheduler
/* 805BA118 005B5A98  48 00 2C 79 */	bl __OSReschedule
/* 805BA11C 005B5A9C  7F C3 F3 78 */	mr r3, r30
/* 805BA120 005B5AA0  4B FF BA 51 */	bl OSLoadContext
.L_805BA124:
/* 805BA124 005B5AA4  7F C3 F3 78 */	mr r3, r30
/* 805BA128 005B5AA8  4B FF BA 49 */	bl OSLoadContext
/* 805BA12C 005B5AAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA130 005B5AB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BA134 005B5AB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BA138 005B5AB8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 805BA13C 005B5ABC  7C 08 03 A6 */	mtlr r0
/* 805BA140 005B5AC0  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA144 005B5AC4  4E 80 00 20 */	blr
.endfn fn_805B9EA0

.fn gap_03_805BA148_text, global
.hidden gap_03_805BA148_text
/* 805BA148 005B5AC8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805BA14C 005B5ACC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805BA148_text

.fn ExternalInterruptHandler, local
/* 805BA150 005B5AD0  90 04 00 00 */	stw r0, 0x0(r4)
/* 805BA154 005B5AD4  90 24 00 04 */	stw r1, 0x4(r4)
/* 805BA158 005B5AD8  90 44 00 08 */	stw r2, 0x8(r4)
/* 805BA15C 005B5ADC  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 805BA160 005B5AE0  7C 11 E2 A6 */	mfspr r0, GQR1
/* 805BA164 005B5AE4  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 805BA168 005B5AE8  7C 12 E2 A6 */	mfspr r0, GQR2
/* 805BA16C 005B5AEC  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 805BA170 005B5AF0  7C 13 E2 A6 */	mfspr r0, GQR3
/* 805BA174 005B5AF4  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 805BA178 005B5AF8  7C 14 E2 A6 */	mfspr r0, GQR4
/* 805BA17C 005B5AFC  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 805BA180 005B5B00  7C 15 E2 A6 */	mfspr r0, GQR5
/* 805BA184 005B5B04  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 805BA188 005B5B08  7C 16 E2 A6 */	mfspr r0, GQR6
/* 805BA18C 005B5B0C  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 805BA190 005B5B10  7C 17 E2 A6 */	mfspr r0, GQR7
/* 805BA194 005B5B14  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 805BA198 005B5B18  94 21 FF F8 */	stwu r1, -0x8(r1)
/* 805BA19C 005B5B1C  4B FF FD 04 */	b fn_805B9EA0
.endfn ExternalInterruptHandler

# 0x8070E0C0 - 0x8070E0F0
.data
.balign 8

.obj lbl_8070E0C0, global
	.4byte 0x00000100
	.4byte 0x00000040
	.4byte 0xF8000000
	.4byte 0x00000200
	.4byte 0x00000080
	.4byte 0x00000010
	.4byte 0x00003000
	.4byte 0x00000020
	.4byte 0x03FF8C00
	.4byte 0x04000000
	.4byte 0x00004000
	.4byte 0xFFFFFFFF
.endobj lbl_8070E0C0

# 0x807D66B0 - 0x807D66C8
.section .sbss, "wa", @nobits
.balign 8

.obj __OSLastInterruptSrr0, global
	.skip 0x4
.endobj __OSLastInterruptSrr0

.obj __OSLastInterrupt, global
	.skip 0x2
.endobj __OSLastInterrupt

.obj gap_10_807D66B6_sbss, global
.hidden gap_10_807D66B6_sbss
	.skip 0x2
.endobj gap_10_807D66B6_sbss

.obj __OSLastInterruptTime, global
	.skip 0x8
.endobj __OSLastInterruptTime

.obj InterruptHandlerTable, local
	.skip 0x4
.endobj InterruptHandlerTable

.obj gap_10_807D66C4_sbss, global
.hidden gap_10_807D66C4_sbss
	.skip 0x4
.endobj gap_10_807D66C4_sbss