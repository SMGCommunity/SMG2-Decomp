.include "macros.inc"
.file "OSMessage.c"

# 0x805BA1C0 - 0x805BA4A0
.text
.balign 4

.fn fn_805BA1C0, global
/* 805BA1C0 005B5B40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA1C4 005B5B44  7C 08 02 A6 */	mflr r0
/* 805BA1C8 005B5B48  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BA1CC 005B5B4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BA1D0 005B5B50  7C BF 2B 78 */	mr r31, r5
/* 805BA1D4 005B5B54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BA1D8 005B5B58  7C 9E 23 78 */	mr r30, r4
/* 805BA1DC 005B5B5C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 805BA1E0 005B5B60  7C 7D 1B 78 */	mr r29, r3
/* 805BA1E4 005B5B64  48 00 25 DD */	bl OSInitThreadQueue
/* 805BA1E8 005B5B68  38 7D 00 08 */	addi r3, r29, 0x8
/* 805BA1EC 005B5B6C  48 00 25 D5 */	bl OSInitThreadQueue
/* 805BA1F0 005B5B70  38 00 00 00 */	li r0, 0x0
/* 805BA1F4 005B5B74  93 DD 00 10 */	stw r30, 0x10(r29)
/* 805BA1F8 005B5B78  93 FD 00 14 */	stw r31, 0x14(r29)
/* 805BA1FC 005B5B7C  90 1D 00 18 */	stw r0, 0x18(r29)
/* 805BA200 005B5B80  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 805BA204 005B5B84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BA208 005B5B88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BA20C 005B5B8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 805BA210 005B5B90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA214 005B5B94  7C 08 03 A6 */	mtlr r0
/* 805BA218 005B5B98  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA21C 005B5B9C  4E 80 00 20 */	blr
.endfn fn_805BA1C0

.fn fn_805BA220, global
/* 805BA220 005B5BA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA224 005B5BA4  7C 08 02 A6 */	mflr r0
/* 805BA228 005B5BA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BA22C 005B5BAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BA230 005B5BB0  7C BF 2B 78 */	mr r31, r5
/* 805BA234 005B5BB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BA238 005B5BB8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 805BA23C 005B5BBC  7C 9D 23 78 */	mr r29, r4
/* 805BA240 005B5BC0  93 81 00 10 */	stw r28, 0x10(r1)
/* 805BA244 005B5BC4  7C 7C 1B 78 */	mr r28, r3
/* 805BA248 005B5BC8  4B FF F7 89 */	bl OSDisableInterrupts
/* 805BA24C 005B5BCC  7C 7E 1B 78 */	mr r30, r3
/* 805BA250 005B5BD0  57 FF 07 FE */	clrlwi r31, r31, 31
/* 805BA254 005B5BD4  48 00 00 24 */	b .L_805BA278
.L_805BA258:
/* 805BA258 005B5BD8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 805BA25C 005B5BDC  40 82 00 14 */	bne .L_805BA270
/* 805BA260 005B5BE0  7F C3 F3 78 */	mr r3, r30
/* 805BA264 005B5BE4  4B FF F7 AD */	bl OSRestoreInterrupts
/* 805BA268 005B5BE8  38 60 00 00 */	li r3, 0x0
/* 805BA26C 005B5BEC  48 00 00 5C */	b .L_805BA2C8
.L_805BA270:
/* 805BA270 005B5BF0  7F 83 E3 78 */	mr r3, r28
/* 805BA274 005B5BF4  48 00 36 DD */	bl OSSleepThread
.L_805BA278:
/* 805BA278 005B5BF8  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 805BA27C 005B5BFC  80 DC 00 14 */	lwz r6, 0x14(r28)
/* 805BA280 005B5C00  7C 06 20 00 */	cmpw r6, r4
/* 805BA284 005B5C04  40 81 FF D4 */	ble .L_805BA258
/* 805BA288 005B5C08  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 805BA28C 005B5C0C  38 7C 00 08 */	addi r3, r28, 0x8
/* 805BA290 005B5C10  80 BC 00 10 */	lwz r5, 0x10(r28)
/* 805BA294 005B5C14  7C 80 22 14 */	add r4, r0, r4
/* 805BA298 005B5C18  7C 04 33 D6 */	divw r0, r4, r6
/* 805BA29C 005B5C1C  7C 00 31 D6 */	mullw r0, r0, r6
/* 805BA2A0 005B5C20  7C 00 20 50 */	subf r0, r0, r4
/* 805BA2A4 005B5C24  54 00 10 3A */	slwi r0, r0, 2
/* 805BA2A8 005B5C28  7F A5 01 2E */	stwx r29, r5, r0
/* 805BA2AC 005B5C2C  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 805BA2B0 005B5C30  38 04 00 01 */	addi r0, r4, 0x1
/* 805BA2B4 005B5C34  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 805BA2B8 005B5C38  48 00 37 89 */	bl fn_805BDA40
/* 805BA2BC 005B5C3C  7F C3 F3 78 */	mr r3, r30
/* 805BA2C0 005B5C40  4B FF F7 51 */	bl OSRestoreInterrupts
/* 805BA2C4 005B5C44  38 60 00 01 */	li r3, 0x1
.L_805BA2C8:
/* 805BA2C8 005B5C48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA2CC 005B5C4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BA2D0 005B5C50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BA2D4 005B5C54  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 805BA2D8 005B5C58  83 81 00 10 */	lwz r28, 0x10(r1)
/* 805BA2DC 005B5C5C  7C 08 03 A6 */	mtlr r0
/* 805BA2E0 005B5C60  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA2E4 005B5C64  4E 80 00 20 */	blr
.endfn fn_805BA220

.fn gap_03_805BA2E8_text, global
.hidden gap_03_805BA2E8_text
/* 805BA2E8 005B5C68  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 805BA2EC 005B5C6C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805BA2E8_text

.fn fn_805BA2F0, global
/* 805BA2F0 005B5C70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA2F4 005B5C74  7C 08 02 A6 */	mflr r0
/* 805BA2F8 005B5C78  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BA2FC 005B5C7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BA300 005B5C80  7C 7F 1B 78 */	mr r31, r3
/* 805BA304 005B5C84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BA308 005B5C88  7C BE 2B 78 */	mr r30, r5
/* 805BA30C 005B5C8C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 805BA310 005B5C90  93 81 00 10 */	stw r28, 0x10(r1)
/* 805BA314 005B5C94  7C 9C 23 78 */	mr r28, r4
/* 805BA318 005B5C98  4B FF F6 B9 */	bl OSDisableInterrupts
/* 805BA31C 005B5C9C  7C 7D 1B 78 */	mr r29, r3
/* 805BA320 005B5CA0  57 DE 07 FE */	clrlwi r30, r30, 31
/* 805BA324 005B5CA4  48 00 00 24 */	b .L_805BA348
.L_805BA328:
/* 805BA328 005B5CA8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 805BA32C 005B5CAC  40 82 00 14 */	bne .L_805BA340
/* 805BA330 005B5CB0  7F A3 EB 78 */	mr r3, r29
/* 805BA334 005B5CB4  4B FF F6 DD */	bl OSRestoreInterrupts
/* 805BA338 005B5CB8  38 60 00 00 */	li r3, 0x0
/* 805BA33C 005B5CBC  48 00 00 70 */	b .L_805BA3AC
.L_805BA340:
/* 805BA340 005B5CC0  38 7F 00 08 */	addi r3, r31, 0x8
/* 805BA344 005B5CC4  48 00 36 0D */	bl OSSleepThread
.L_805BA348:
/* 805BA348 005B5CC8  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 805BA34C 005B5CCC  2C 00 00 00 */	cmpwi r0, 0x0
/* 805BA350 005B5CD0  41 82 FF D8 */	beq .L_805BA328
/* 805BA354 005B5CD4  2C 1C 00 00 */	cmpwi r28, 0x0
/* 805BA358 005B5CD8  41 82 00 18 */	beq .L_805BA370
/* 805BA35C 005B5CDC  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 805BA360 005B5CE0  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 805BA364 005B5CE4  54 00 10 3A */	slwi r0, r0, 2
/* 805BA368 005B5CE8  7C 03 00 2E */	lwzx r0, r3, r0
/* 805BA36C 005B5CEC  90 1C 00 00 */	stw r0, 0x0(r28)
.L_805BA370:
/* 805BA370 005B5CF0  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 805BA374 005B5CF4  7F E3 FB 78 */	mr r3, r31
/* 805BA378 005B5CF8  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 805BA37C 005B5CFC  38 E4 00 01 */	addi r7, r4, 0x1
/* 805BA380 005B5D00  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 805BA384 005B5D04  7C A7 33 D6 */	divw r5, r7, r6
/* 805BA388 005B5D08  38 04 FF FF */	subi r0, r4, 0x1
/* 805BA38C 005B5D0C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 805BA390 005B5D10  7C 05 31 D6 */	mullw r0, r5, r6
/* 805BA394 005B5D14  7C 00 38 50 */	subf r0, r0, r7
/* 805BA398 005B5D18  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805BA39C 005B5D1C  48 00 36 A5 */	bl fn_805BDA40
/* 805BA3A0 005B5D20  7F A3 EB 78 */	mr r3, r29
/* 805BA3A4 005B5D24  4B FF F6 6D */	bl OSRestoreInterrupts
/* 805BA3A8 005B5D28  38 60 00 01 */	li r3, 0x1
.L_805BA3AC:
/* 805BA3AC 005B5D2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA3B0 005B5D30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BA3B4 005B5D34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BA3B8 005B5D38  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 805BA3BC 005B5D3C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 805BA3C0 005B5D40  7C 08 03 A6 */	mtlr r0
/* 805BA3C4 005B5D44  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA3C8 005B5D48  4E 80 00 20 */	blr
.endfn fn_805BA2F0

.fn gap_03_805BA3CC_text, global
.hidden gap_03_805BA3CC_text
/* 805BA3CC 005B5D4C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
.endfn gap_03_805BA3CC_text

.fn fn_805BA3D0, global
/* 805BA3D0 005B5D50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BA3D4 005B5D54  7C 08 02 A6 */	mflr r0
/* 805BA3D8 005B5D58  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BA3DC 005B5D5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805BA3E0 005B5D60  7C BF 2B 78 */	mr r31, r5
/* 805BA3E4 005B5D64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805BA3E8 005B5D68  93 A1 00 14 */	stw r29, 0x14(r1)
/* 805BA3EC 005B5D6C  7C 9D 23 78 */	mr r29, r4
/* 805BA3F0 005B5D70  93 81 00 10 */	stw r28, 0x10(r1)
/* 805BA3F4 005B5D74  7C 7C 1B 78 */	mr r28, r3
/* 805BA3F8 005B5D78  4B FF F5 D9 */	bl OSDisableInterrupts
/* 805BA3FC 005B5D7C  7C 7E 1B 78 */	mr r30, r3
/* 805BA400 005B5D80  57 FF 07 FE */	clrlwi r31, r31, 31
/* 805BA404 005B5D84  48 00 00 24 */	b .L_805BA428
.L_805BA408:
/* 805BA408 005B5D88  2C 1F 00 00 */	cmpwi r31, 0x0
/* 805BA40C 005B5D8C  40 82 00 14 */	bne .L_805BA420
/* 805BA410 005B5D90  7F C3 F3 78 */	mr r3, r30
/* 805BA414 005B5D94  4B FF F5 FD */	bl OSRestoreInterrupts
/* 805BA418 005B5D98  38 60 00 00 */	li r3, 0x0
/* 805BA41C 005B5D9C  48 00 00 64 */	b .L_805BA480
.L_805BA420:
/* 805BA420 005B5DA0  7F 83 E3 78 */	mr r3, r28
/* 805BA424 005B5DA4  48 00 35 2D */	bl OSSleepThread
.L_805BA428:
/* 805BA428 005B5DA8  80 DC 00 14 */	lwz r6, 0x14(r28)
/* 805BA42C 005B5DAC  80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 805BA430 005B5DB0  7C 06 00 00 */	cmpw r6, r0
/* 805BA434 005B5DB4  40 81 FF D4 */	ble .L_805BA408
/* 805BA438 005B5DB8  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 805BA43C 005B5DBC  38 7C 00 08 */	addi r3, r28, 0x8
/* 805BA440 005B5DC0  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 805BA444 005B5DC4  7C A6 02 14 */	add r5, r6, r0
/* 805BA448 005B5DC8  38 A5 FF FF */	subi r5, r5, 0x1
/* 805BA44C 005B5DCC  7C 05 33 D6 */	divw r0, r5, r6
/* 805BA450 005B5DD0  7C 00 31 D6 */	mullw r0, r0, r6
/* 805BA454 005B5DD4  7C 00 28 50 */	subf r0, r0, r5
/* 805BA458 005B5DD8  90 1C 00 18 */	stw r0, 0x18(r28)
/* 805BA45C 005B5DDC  54 00 10 3A */	slwi r0, r0, 2
/* 805BA460 005B5DE0  7F A4 01 2E */	stwx r29, r4, r0
/* 805BA464 005B5DE4  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 805BA468 005B5DE8  38 04 00 01 */	addi r0, r4, 0x1
/* 805BA46C 005B5DEC  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 805BA470 005B5DF0  48 00 35 D1 */	bl fn_805BDA40
/* 805BA474 005B5DF4  7F C3 F3 78 */	mr r3, r30
/* 805BA478 005B5DF8  4B FF F5 99 */	bl OSRestoreInterrupts
/* 805BA47C 005B5DFC  38 60 00 01 */	li r3, 0x1
.L_805BA480:
/* 805BA480 005B5E00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BA484 005B5E04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805BA488 005B5E08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805BA48C 005B5E0C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 805BA490 005B5E10  83 81 00 10 */	lwz r28, 0x10(r1)
/* 805BA494 005B5E14  7C 08 03 A6 */	mtlr r0
/* 805BA498 005B5E18  38 21 00 20 */	addi r1, r1, 0x20
/* 805BA49C 005B5E1C  4E 80 00 20 */	blr
.endfn fn_805BA3D0