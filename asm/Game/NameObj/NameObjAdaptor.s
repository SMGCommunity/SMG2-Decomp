.include "macros.inc"
.file "NameObjAdaptor.cpp"

# 0x80339900 - 0x80339B50
.text
.balign 4

.fn fn_80339900, global
/* 80339900 00335280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80339904 00335284  7C 08 02 A6 */	mflr r0
/* 80339908 00335288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033990C 0033528C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80339910 00335290  7C 7F 1B 78 */	mr r31, r3
/* 80339914 00335294  4B FF FC FD */	bl fn_80339610
/* 80339918 00335298  3C 60 80 6B */	lis r3, lbl_806B3418@ha
/* 8033991C 0033529C  38 00 00 00 */	li r0, 0x0
/* 80339920 003352A0  38 63 34 18 */	addi r3, r3, lbl_806B3418@l
/* 80339924 003352A4  90 7F 00 00 */	stw r3, 0x0(r31)
/* 80339928 003352A8  7F E3 FB 78 */	mr r3, r31
/* 8033992C 003352AC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80339930 003352B0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80339934 003352B4  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80339938 003352B8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8033993C 003352BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80339940 003352C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80339944 003352C4  7C 08 03 A6 */	mtlr r0
/* 80339948 003352C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8033994C 003352CC  4E 80 00 20 */	blr
.endfn fn_80339900

.fn fn_80339950, global
/* 80339950 003352D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80339954 003352D4  7C 08 02 A6 */	mflr r0
/* 80339958 003352D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8033995C 003352DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80339960 003352E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80339964 003352E4  7C 9F 23 78 */	mr r31, r4
/* 80339968 003352E8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8033996C 003352EC  7C 7E 1B 78 */	mr r30, r3
/* 80339970 003352F0  41 82 00 4C */	beq .L_803399BC
/* 80339974 003352F4  3C 80 80 6B */	lis r4, lbl_806B3418@ha
/* 80339978 003352F8  38 84 34 18 */	addi r4, r4, lbl_806B3418@l
/* 8033997C 003352FC  90 83 00 00 */	stw r4, 0x0(r3)
/* 80339980 00335300  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80339984 00335304  48 1C 7F 1D */	bl fn_805018A0
/* 80339988 00335308  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8033998C 0033530C  48 1C 7F 15 */	bl fn_805018A0
/* 80339990 00335310  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80339994 00335314  48 1C 7F 0D */	bl fn_805018A0
/* 80339998 00335318  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8033999C 0033531C  48 1C 7F 05 */	bl fn_805018A0
/* 803399A0 00335320  7F C3 F3 78 */	mr r3, r30
/* 803399A4 00335324  38 80 00 00 */	li r4, 0x0
/* 803399A8 00335328  4B FF FC D9 */	bl fn_80339680
/* 803399AC 0033532C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 803399B0 00335330  40 81 00 0C */	ble .L_803399BC
/* 803399B4 00335334  7F C3 F3 78 */	mr r3, r30
/* 803399B8 00335338  48 1C 7E E9 */	bl fn_805018A0
.L_803399BC:
/* 803399BC 0033533C  7F C3 F3 78 */	mr r3, r30
/* 803399C0 00335340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803399C4 00335344  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 803399C8 00335348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803399CC 0033534C  7C 08 03 A6 */	mtlr r0
/* 803399D0 00335350  38 21 00 10 */	addi r1, r1, 0x10
/* 803399D4 00335354  4E 80 00 20 */	blr
.endfn fn_80339950

.fn gap_03_803399D8_text, global
.hidden gap_03_803399D8_text
/* 803399D8 00335358  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803399DC 0033535C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_803399D8_text

.fn fn_803399E0, global
/* 803399E0 00335360  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803399E4 00335364  2C 03 00 00 */	cmpwi r3, 0x0
/* 803399E8 00335368  4D 82 00 20 */	beqlr
/* 803399EC 0033536C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 803399F0 00335370  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 803399F4 00335374  7D 89 03 A6 */	mtctr r12
/* 803399F8 00335378  4E 80 04 20 */	bctr
/* 803399FC 0033537C  4E 80 00 20 */	blr
.endfn fn_803399E0

.fn fn_80339A00, global
/* 80339A00 00335380  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80339A04 00335384  2C 03 00 00 */	cmpwi r3, 0x0
/* 80339A08 00335388  4D 82 00 20 */	beqlr
/* 80339A0C 0033538C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80339A10 00335390  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80339A14 00335394  7D 89 03 A6 */	mtctr r12
/* 80339A18 00335398  4E 80 04 20 */	bctr
/* 80339A1C 0033539C  4E 80 00 20 */	blr
.endfn fn_80339A00

.fn fn_80339A20, global
/* 80339A20 003353A0  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80339A24 003353A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 80339A28 003353A8  4D 82 00 20 */	beqlr
/* 80339A2C 003353AC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80339A30 003353B0  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80339A34 003353B4  7D 89 03 A6 */	mtctr r12
/* 80339A38 003353B8  4E 80 04 20 */	bctr
/* 80339A3C 003353BC  4E 80 00 20 */	blr
.endfn fn_80339A20

.fn fn_80339A40, global
/* 80339A40 003353C0  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80339A44 003353C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 80339A48 003353C8  4D 82 00 20 */	beqlr
/* 80339A4C 003353CC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80339A50 003353D0  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80339A54 003353D4  7D 89 03 A6 */	mtctr r12
/* 80339A58 003353D8  4E 80 04 20 */	bctr
/* 80339A5C 003353DC  4E 80 00 20 */	blr
.endfn fn_80339A40

.fn fn_80339A60, global
/* 80339A60 003353E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80339A64 003353E4  7C 08 02 A6 */	mflr r0
/* 80339A68 003353E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80339A6C 003353EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80339A70 003353F0  7C 7F 1B 78 */	mr r31, r3
/* 80339A74 003353F4  7C 83 23 78 */	mr r3, r4
/* 80339A78 003353F8  81 84 00 00 */	lwz r12, 0x0(r4)
/* 80339A7C 003353FC  38 80 00 00 */	li r4, 0x0
/* 80339A80 00335400  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80339A84 00335404  7D 89 03 A6 */	mtctr r12
/* 80339A88 00335408  4E 80 04 21 */	bctrl
/* 80339A8C 0033540C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 80339A90 00335410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80339A94 00335414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80339A98 00335418  7C 08 03 A6 */	mtlr r0
/* 80339A9C 0033541C  38 21 00 10 */	addi r1, r1, 0x10
/* 80339AA0 00335420  4E 80 00 20 */	blr
.endfn fn_80339A60

.fn gap_03_80339AA4_text, global
.hidden gap_03_80339AA4_text
/* 80339AA4 00335424  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80339AA8 00335428  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80339AAC 0033542C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_80339AA4_text

.fn fn_80339AB0, global
/* 80339AB0 00335430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80339AB4 00335434  7C 08 02 A6 */	mflr r0
/* 80339AB8 00335438  90 01 00 14 */	stw r0, 0x14(r1)
/* 80339ABC 0033543C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80339AC0 00335440  7C 7F 1B 78 */	mr r31, r3
/* 80339AC4 00335444  7C 83 23 78 */	mr r3, r4
/* 80339AC8 00335448  81 84 00 00 */	lwz r12, 0x0(r4)
/* 80339ACC 0033544C  38 80 00 00 */	li r4, 0x0
/* 80339AD0 00335450  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80339AD4 00335454  7D 89 03 A6 */	mtctr r12
/* 80339AD8 00335458  4E 80 04 21 */	bctrl
/* 80339ADC 0033545C  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80339AE0 00335460  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80339AE4 00335464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80339AE8 00335468  7C 08 03 A6 */	mtlr r0
/* 80339AEC 0033546C  38 21 00 10 */	addi r1, r1, 0x10
/* 80339AF0 00335470  4E 80 00 20 */	blr
.endfn fn_80339AB0

.fn gap_03_80339AF4_text, global
.hidden gap_03_80339AF4_text
/* 80339AF4 00335474  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80339AF8 00335478  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80339AFC 0033547C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_80339AF4_text

.fn fn_80339B00, global
/* 80339B00 00335480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80339B04 00335484  7C 08 02 A6 */	mflr r0
/* 80339B08 00335488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80339B0C 0033548C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80339B10 00335490  7C 7F 1B 78 */	mr r31, r3
/* 80339B14 00335494  7C 83 23 78 */	mr r3, r4
/* 80339B18 00335498  81 84 00 00 */	lwz r12, 0x0(r4)
/* 80339B1C 0033549C  38 80 00 00 */	li r4, 0x0
/* 80339B20 003354A0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80339B24 003354A4  7D 89 03 A6 */	mtctr r12
/* 80339B28 003354A8  4E 80 04 21 */	bctrl
/* 80339B2C 003354AC  90 7F 00 20 */	stw r3, 0x20(r31)
/* 80339B30 003354B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80339B34 003354B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80339B38 003354B8  7C 08 03 A6 */	mtlr r0
/* 80339B3C 003354BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80339B40 003354C0  4E 80 00 20 */	blr
.endfn fn_80339B00

.fn gap_03_80339B44_text, global
.hidden gap_03_80339B44_text
/* 80339B44 003354C4  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80339B48 003354C8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80339B4C 003354CC  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_80339B44_text

# 0x806B3418 - 0x806B3448
.data
.balign 8

.obj lbl_806B3418, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte fn_80339950
	.4byte fn_803396C0
	.4byte fn_803396D0
	.4byte fn_803399E0
	.4byte fn_80339A40
	.4byte fn_80339A00
	.4byte fn_80339A20
	.4byte fn_800269F0
	.4byte fn_800269E0
	.4byte 0x00000000
.endobj lbl_806B3418