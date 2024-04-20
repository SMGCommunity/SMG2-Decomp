.include "macros.inc"
.file "OSAlloc.c"

# 0x805B4B10 - 0x805B4E30
.text
.balign 4

.fn fn_805B4B10, global
/* 805B4B10 005B0490  7C 67 1B 78 */	mr r7, r3
/* 805B4B14 005B0494  38 C0 00 00 */	li r6, 0x0
/* 805B4B18 005B0498  48 00 00 18 */	b .L_805B4B30
/* 805B4B1C 005B049C  60 00 00 00 */	nop
.L_805B4B20:
/* 805B4B20 005B04A0  7C 04 38 40 */	cmplw r4, r7
/* 805B4B24 005B04A4  40 81 00 14 */	ble .L_805B4B38
/* 805B4B28 005B04A8  7C E6 3B 78 */	mr r6, r7
/* 805B4B2C 005B04AC  80 E7 00 04 */	lwz r7, 0x4(r7)
.L_805B4B30:
/* 805B4B30 005B04B0  2C 07 00 00 */	cmpwi r7, 0x0
/* 805B4B34 005B04B4  40 82 FF EC */	bne .L_805B4B20
.L_805B4B38:
/* 805B4B38 005B04B8  2C 07 00 00 */	cmpwi r7, 0x0
/* 805B4B3C 005B04BC  90 E4 00 04 */	stw r7, 0x4(r4)
/* 805B4B40 005B04C0  90 C4 00 00 */	stw r6, 0x0(r4)
/* 805B4B44 005B04C4  41 82 00 38 */	beq .L_805B4B7C
/* 805B4B48 005B04C8  90 87 00 00 */	stw r4, 0x0(r7)
/* 805B4B4C 005B04CC  80 A4 00 08 */	lwz r5, 0x8(r4)
/* 805B4B50 005B04D0  7C 04 2A 14 */	add r0, r4, r5
/* 805B4B54 005B04D4  7C 00 38 40 */	cmplw r0, r7
/* 805B4B58 005B04D8  40 82 00 24 */	bne .L_805B4B7C
/* 805B4B5C 005B04DC  80 07 00 08 */	lwz r0, 0x8(r7)
/* 805B4B60 005B04E0  7C 05 02 14 */	add r0, r5, r0
/* 805B4B64 005B04E4  90 04 00 08 */	stw r0, 0x8(r4)
/* 805B4B68 005B04E8  80 E7 00 04 */	lwz r7, 0x4(r7)
/* 805B4B6C 005B04EC  90 E4 00 04 */	stw r7, 0x4(r4)
/* 805B4B70 005B04F0  2C 07 00 00 */	cmpwi r7, 0x0
/* 805B4B74 005B04F4  41 82 00 08 */	beq .L_805B4B7C
/* 805B4B78 005B04F8  90 87 00 00 */	stw r4, 0x0(r7)
.L_805B4B7C:
/* 805B4B7C 005B04FC  2C 06 00 00 */	cmpwi r6, 0x0
/* 805B4B80 005B0500  41 82 00 38 */	beq .L_805B4BB8
/* 805B4B84 005B0504  90 86 00 04 */	stw r4, 0x4(r6)
/* 805B4B88 005B0508  80 A6 00 08 */	lwz r5, 0x8(r6)
/* 805B4B8C 005B050C  7C 06 2A 14 */	add r0, r6, r5
/* 805B4B90 005B0510  7C 00 20 40 */	cmplw r0, r4
/* 805B4B94 005B0514  4C 82 00 20 */	bnelr
/* 805B4B98 005B0518  80 04 00 08 */	lwz r0, 0x8(r4)
/* 805B4B9C 005B051C  2C 07 00 00 */	cmpwi r7, 0x0
/* 805B4BA0 005B0520  7C 05 02 14 */	add r0, r5, r0
/* 805B4BA4 005B0524  90 06 00 08 */	stw r0, 0x8(r6)
/* 805B4BA8 005B0528  90 E6 00 04 */	stw r7, 0x4(r6)
/* 805B4BAC 005B052C  4D 82 00 20 */	beqlr
/* 805B4BB0 005B0530  90 C7 00 00 */	stw r6, 0x0(r7)
/* 805B4BB4 005B0534  4E 80 00 20 */	blr
.L_805B4BB8:
/* 805B4BB8 005B0538  7C 83 23 78 */	mr r3, r4
/* 805B4BBC 005B053C  4E 80 00 20 */	blr
.endfn fn_805B4B10

.fn fn_805B4BC0, global
/* 805B4BC0 005B0540  1C 63 00 0C */	mulli r3, r3, 0xc
/* 805B4BC4 005B0544  80 AD F3 5C */	lwz r5, lbl_807D667C@sda21(r0)
/* 805B4BC8 005B0548  38 04 00 3F */	addi r0, r4, 0x3f
/* 805B4BCC 005B054C  7C A5 1A 14 */	add r5, r5, r3
/* 805B4BD0 005B0550  54 04 00 34 */	clrrwi r4, r0, 5
/* 805B4BD4 005B0554  80 65 00 04 */	lwz r3, 0x4(r5)
/* 805B4BD8 005B0558  7C 66 1B 78 */	mr r6, r3
/* 805B4BDC 005B055C  48 00 00 14 */	b .L_805B4BF0
.L_805B4BE0:
/* 805B4BE0 005B0560  80 06 00 08 */	lwz r0, 0x8(r6)
/* 805B4BE4 005B0564  7C 04 00 00 */	cmpw r4, r0
/* 805B4BE8 005B0568  40 81 00 10 */	ble .L_805B4BF8
/* 805B4BEC 005B056C  80 C6 00 04 */	lwz r6, 0x4(r6)
.L_805B4BF0:
/* 805B4BF0 005B0570  2C 06 00 00 */	cmpwi r6, 0x0
/* 805B4BF4 005B0574  40 82 FF EC */	bne .L_805B4BE0
.L_805B4BF8:
/* 805B4BF8 005B0578  2C 06 00 00 */	cmpwi r6, 0x0
/* 805B4BFC 005B057C  40 82 00 0C */	bne .L_805B4C08
/* 805B4C00 005B0580  38 60 00 00 */	li r3, 0x0
/* 805B4C04 005B0584  4E 80 00 20 */	blr
.L_805B4C08:
/* 805B4C08 005B0588  80 06 00 08 */	lwz r0, 0x8(r6)
/* 805B4C0C 005B058C  7C 04 00 50 */	subf r0, r4, r0
/* 805B4C10 005B0590  28 00 00 40 */	cmplwi r0, 0x40
/* 805B4C14 005B0594  40 80 00 3C */	bge .L_805B4C50
/* 805B4C18 005B0598  80 86 00 04 */	lwz r4, 0x4(r6)
/* 805B4C1C 005B059C  2C 04 00 00 */	cmpwi r4, 0x0
/* 805B4C20 005B05A0  41 82 00 0C */	beq .L_805B4C2C
/* 805B4C24 005B05A4  80 06 00 00 */	lwz r0, 0x0(r6)
/* 805B4C28 005B05A8  90 04 00 00 */	stw r0, 0x0(r4)
.L_805B4C2C:
/* 805B4C2C 005B05AC  80 86 00 00 */	lwz r4, 0x0(r6)
/* 805B4C30 005B05B0  2C 04 00 00 */	cmpwi r4, 0x0
/* 805B4C34 005B05B4  40 82 00 0C */	bne .L_805B4C40
/* 805B4C38 005B05B8  80 66 00 04 */	lwz r3, 0x4(r6)
/* 805B4C3C 005B05BC  48 00 00 0C */	b .L_805B4C48
.L_805B4C40:
/* 805B4C40 005B05C0  80 06 00 04 */	lwz r0, 0x4(r6)
/* 805B4C44 005B05C4  90 04 00 04 */	stw r0, 0x4(r4)
.L_805B4C48:
/* 805B4C48 005B05C8  90 65 00 04 */	stw r3, 0x4(r5)
/* 805B4C4C 005B05CC  48 00 00 44 */	b .L_805B4C90
.L_805B4C50:
/* 805B4C50 005B05D0  90 86 00 08 */	stw r4, 0x8(r6)
/* 805B4C54 005B05D4  7C 86 22 14 */	add r4, r6, r4
/* 805B4C58 005B05D8  90 04 00 08 */	stw r0, 0x8(r4)
/* 805B4C5C 005B05DC  80 06 00 00 */	lwz r0, 0x0(r6)
/* 805B4C60 005B05E0  90 04 00 00 */	stw r0, 0x0(r4)
/* 805B4C64 005B05E4  80 66 00 04 */	lwz r3, 0x4(r6)
/* 805B4C68 005B05E8  90 64 00 04 */	stw r3, 0x4(r4)
/* 805B4C6C 005B05EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 805B4C70 005B05F0  41 82 00 08 */	beq .L_805B4C78
/* 805B4C74 005B05F4  90 83 00 00 */	stw r4, 0x0(r3)
.L_805B4C78:
/* 805B4C78 005B05F8  80 64 00 00 */	lwz r3, 0x0(r4)
/* 805B4C7C 005B05FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 805B4C80 005B0600  41 82 00 0C */	beq .L_805B4C8C
/* 805B4C84 005B0604  90 83 00 04 */	stw r4, 0x4(r3)
/* 805B4C88 005B0608  48 00 00 08 */	b .L_805B4C90
.L_805B4C8C:
/* 805B4C8C 005B060C  90 85 00 04 */	stw r4, 0x4(r5)
.L_805B4C90:
/* 805B4C90 005B0610  80 65 00 08 */	lwz r3, 0x8(r5)
/* 805B4C94 005B0614  38 00 00 00 */	li r0, 0x0
/* 805B4C98 005B0618  90 66 00 04 */	stw r3, 0x4(r6)
/* 805B4C9C 005B061C  2C 03 00 00 */	cmpwi r3, 0x0
/* 805B4CA0 005B0620  90 06 00 00 */	stw r0, 0x0(r6)
/* 805B4CA4 005B0624  41 82 00 08 */	beq .L_805B4CAC
/* 805B4CA8 005B0628  90 C3 00 00 */	stw r6, 0x0(r3)
.L_805B4CAC:
/* 805B4CAC 005B062C  90 C5 00 08 */	stw r6, 0x8(r5)
/* 805B4CB0 005B0630  38 66 00 20 */	addi r3, r6, 0x20
/* 805B4CB4 005B0634  4E 80 00 20 */	blr
.endfn fn_805B4BC0

.fn gap_03_805B4CB8_text, global
.hidden gap_03_805B4CB8_text
/* 805B4CB8 005B0638  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4CBC 005B063C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4CB8_text

.fn fn_805B4CC0, global
/* 805B4CC0 005B0640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B4CC4 005B0644  7C 08 02 A6 */	mflr r0
/* 805B4CC8 005B0648  38 84 FF E0 */	subi r4, r4, 0x20
/* 805B4CCC 005B064C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B4CD0 005B0650  1C 03 00 0C */	mulli r0, r3, 0xc
/* 805B4CD4 005B0654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B4CD8 005B0658  80 AD F3 5C */	lwz r5, lbl_807D667C@sda21(r0)
/* 805B4CDC 005B065C  80 C4 00 04 */	lwz r6, 0x4(r4)
/* 805B4CE0 005B0660  7F E5 02 14 */	add r31, r5, r0
/* 805B4CE4 005B0664  2C 06 00 00 */	cmpwi r6, 0x0
/* 805B4CE8 005B0668  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 805B4CEC 005B066C  41 82 00 0C */	beq .L_805B4CF8
/* 805B4CF0 005B0670  80 04 00 00 */	lwz r0, 0x0(r4)
/* 805B4CF4 005B0674  90 06 00 00 */	stw r0, 0x0(r6)
.L_805B4CF8:
/* 805B4CF8 005B0678  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 805B4CFC 005B067C  2C 05 00 00 */	cmpwi r5, 0x0
/* 805B4D00 005B0680  40 82 00 0C */	bne .L_805B4D0C
/* 805B4D04 005B0684  80 64 00 04 */	lwz r3, 0x4(r4)
/* 805B4D08 005B0688  48 00 00 0C */	b .L_805B4D14
.L_805B4D0C:
/* 805B4D0C 005B068C  80 04 00 04 */	lwz r0, 0x4(r4)
/* 805B4D10 005B0690  90 05 00 04 */	stw r0, 0x4(r5)
.L_805B4D14:
/* 805B4D14 005B0694  90 7F 00 08 */	stw r3, 0x8(r31)
/* 805B4D18 005B0698  80 7F 00 04 */	lwz r3, 0x4(r31)
/* 805B4D1C 005B069C  4B FF FD F5 */	bl fn_805B4B10
/* 805B4D20 005B06A0  90 7F 00 04 */	stw r3, 0x4(r31)
/* 805B4D24 005B06A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B4D28 005B06A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B4D2C 005B06AC  7C 08 03 A6 */	mtlr r0
/* 805B4D30 005B06B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805B4D34 005B06B4  4E 80 00 20 */	blr
.endfn fn_805B4CC0

.fn gap_03_805B4D38_text, global
.hidden gap_03_805B4D38_text
/* 805B4D38 005B06B8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805B4D3C 005B06BC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805B4D38_text

.fn fn_805B4D40, global
/* 805B4D40 005B06C0  80 0D 96 38 */	lwz r0, lbl_807D0958@sda21(r0)
/* 805B4D44 005B06C4  90 6D 96 38 */	stw r3, lbl_807D0958@sda21(r0)
/* 805B4D48 005B06C8  7C 03 03 78 */	mr r3, r0
/* 805B4D4C 005B06CC  4E 80 00 20 */	blr
.endfn fn_805B4D40

.fn fn_805B4D50, global
/* 805B4D50 005B06D0  1C E5 00 0C */	mulli r7, r5, 0xc
/* 805B4D54 005B06D4  90 6D F3 5C */	stw r3, lbl_807D667C@sda21(r0)
/* 805B4D58 005B06D8  39 00 00 00 */	li r8, 0x0
/* 805B4D5C 005B06DC  90 AD F3 58 */	stw r5, lbl_807D6678@sda21(r0)
/* 805B4D60 005B06E0  38 C0 00 00 */	li r6, 0x0
/* 805B4D64 005B06E4  38 A0 FF FF */	li r5, -0x1
/* 805B4D68 005B06E8  38 60 00 00 */	li r3, 0x0
/* 805B4D6C 005B06EC  48 00 00 20 */	b .L_805B4D8C
.L_805B4D70:
/* 805B4D70 005B06F0  80 0D F3 5C */	lwz r0, lbl_807D667C@sda21(r0)
/* 805B4D74 005B06F4  39 08 00 01 */	addi r8, r8, 0x1
/* 805B4D78 005B06F8  7C A6 01 2E */	stwx r5, r6, r0
/* 805B4D7C 005B06FC  7D 20 32 14 */	add r9, r0, r6
/* 805B4D80 005B0700  38 C6 00 0C */	addi r6, r6, 0xc
/* 805B4D84 005B0704  90 69 00 08 */	stw r3, 0x8(r9)
/* 805B4D88 005B0708  90 69 00 04 */	stw r3, 0x4(r9)
.L_805B4D8C:
/* 805B4D8C 005B070C  80 0D F3 58 */	lwz r0, lbl_807D6678@sda21(r0)
/* 805B4D90 005B0710  7C 08 00 00 */	cmpw r8, r0
/* 805B4D94 005B0714  41 80 FF DC */	blt .L_805B4D70
/* 805B4D98 005B0718  80 6D F3 5C */	lwz r3, lbl_807D667C@sda21(r0)
/* 805B4D9C 005B071C  54 80 00 34 */	clrrwi r0, r4, 5
/* 805B4DA0 005B0720  38 80 FF FF */	li r4, -0x1
/* 805B4DA4 005B0724  90 8D 96 38 */	stw r4, lbl_807D0958@sda21(r0)
/* 805B4DA8 005B0728  7C 63 3A 14 */	add r3, r3, r7
/* 805B4DAC 005B072C  38 63 00 1F */	addi r3, r3, 0x1f
/* 805B4DB0 005B0730  90 0D F3 50 */	stw r0, lbl_807D6670@sda21(r0)
/* 805B4DB4 005B0734  54 63 00 34 */	clrrwi r3, r3, 5
/* 805B4DB8 005B0738  90 6D F3 54 */	stw r3, lbl_807D6674@sda21(r0)
/* 805B4DBC 005B073C  4E 80 00 20 */	blr
.endfn fn_805B4D50

.fn fn_805B4DC0, global
/* 805B4DC0 005B0740  80 CD F3 58 */	lwz r6, lbl_807D6678@sda21(r0)
/* 805B4DC4 005B0744  38 03 00 1F */	addi r0, r3, 0x1f
/* 805B4DC8 005B0748  54 07 00 34 */	clrrwi r7, r0, 5
/* 805B4DCC 005B074C  54 84 00 34 */	clrrwi r4, r4, 5
/* 805B4DD0 005B0750  80 AD F3 5C */	lwz r5, lbl_807D667C@sda21(r0)
/* 805B4DD4 005B0754  38 60 00 00 */	li r3, 0x0
/* 805B4DD8 005B0758  7C C9 03 A6 */	mtctr r6
/* 805B4DDC 005B075C  2C 06 00 00 */	cmpwi r6, 0x0
/* 805B4DE0 005B0760  40 81 00 48 */	ble .L_805B4E28
/* 805B4DE4 005B0764  60 00 00 00 */	nop
.L_805B4DE8:
/* 805B4DE8 005B0768  80 05 00 00 */	lwz r0, 0x0(r5)
/* 805B4DEC 005B076C  2C 00 00 00 */	cmpwi r0, 0x0
/* 805B4DF0 005B0770  40 80 00 2C */	bge .L_805B4E1C
/* 805B4DF4 005B0774  7C 07 20 50 */	subf r0, r7, r4
/* 805B4DF8 005B0778  90 05 00 00 */	stw r0, 0x0(r5)
/* 805B4DFC 005B077C  38 80 00 00 */	li r4, 0x0
/* 805B4E00 005B0780  90 87 00 00 */	stw r4, 0x0(r7)
/* 805B4E04 005B0784  90 87 00 04 */	stw r4, 0x4(r7)
/* 805B4E08 005B0788  80 05 00 00 */	lwz r0, 0x0(r5)
/* 805B4E0C 005B078C  90 07 00 08 */	stw r0, 0x8(r7)
/* 805B4E10 005B0790  90 E5 00 04 */	stw r7, 0x4(r5)
/* 805B4E14 005B0794  90 85 00 08 */	stw r4, 0x8(r5)
/* 805B4E18 005B0798  4E 80 00 20 */	blr
.L_805B4E1C:
/* 805B4E1C 005B079C  38 A5 00 0C */	addi r5, r5, 0xc
/* 805B4E20 005B07A0  38 63 00 01 */	addi r3, r3, 0x1
/* 805B4E24 005B07A4  42 00 FF C4 */	bdnz .L_805B4DE8
.L_805B4E28:
/* 805B4E28 005B07A8  38 60 FF FF */	li r3, -0x1
/* 805B4E2C 005B07AC  4E 80 00 20 */	blr
.endfn fn_805B4DC0

# 0x807D0958 - 0x807D0960
.section .sdata, "wa"
.balign 8

.obj lbl_807D0958, global
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
.endobj lbl_807D0958

# 0x807D6670 - 0x807D6680
.section .sbss, "wa", @nobits
.balign 8

.obj lbl_807D6670, global
	.skip 0x4
.endobj lbl_807D6670

.obj lbl_807D6674, global
	.skip 0x4
.endobj lbl_807D6674

.obj lbl_807D6678, global
	.skip 0x4
.endobj lbl_807D6678

.obj lbl_807D667C, global
	.skip 0x4
.endobj lbl_807D667C