.class public final Lcom/didi/common/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASELENGTH:I = 0xff

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXBIT:I = 0x6

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final base64Alphabet:[B

.field private static final fDebug:Z

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0x3f

    const/16 v6, 0x3e

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 15
    new-array v2, v8, [B

    sput-object v2, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    .line 16
    const/16 v2, 0x40

    new-array v2, v2, [C

    sput-object v2, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    .line 20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 21
    sget-object v2, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 24
    sget-object v2, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 26
    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    .line 27
    sget-object v2, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 26
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 30
    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    .line 31
    sget-object v2, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 30
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 34
    :cond_3
    sget-object v2, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    aput-byte v6, v2, v4

    .line 35
    sget-object v2, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v5

    .line 37
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x19

    if-gt v0, v2, :cond_4

    .line 38
    sget-object v2, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 40
    :cond_4
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, j:I
    :goto_5
    const/16 v2, 0x33

    if-gt v0, v2, :cond_5

    .line 41
    sget-object v2, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x61

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 43
    :cond_5
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x3d

    if-gt v0, v2, :cond_6

    .line 44
    sget-object v2, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 45
    :cond_6
    sget-object v2, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    aput-char v4, v2, v6

    .line 46
    sget-object v2, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v2, v7

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 27
    .parameter "encoded"

    .prologue
    .line 205
    if-nez p0, :cond_0

    .line 206
    const/16 v23, 0x0

    .line 286
    :goto_0
    return-object v23

    .line 208
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 210
    .local v8, base64Data:[C
    invoke-static {v8}, Lcom/didi/common/util/Base64;->removeWhiteSpace([C)I

    move-result v19

    .line 212
    .local v19, len:I
    rem-int/lit8 v24, v19, 0x4

    if-eqz v24, :cond_1

    .line 213
    const/16 v23, 0x0

    goto :goto_0

    .line 216
    :cond_1
    div-int/lit8 v22, v19, 0x4

    .line 218
    .local v22, numberQuadruple:I
    if-nez v22, :cond_2

    .line 219
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    goto :goto_0

    .line 221
    :cond_2
    const/4 v15, 0x0

    .line 222
    .local v15, decodedData:[B
    const/4 v4, 0x0

    .local v4, b1:B
    const/4 v5, 0x0

    .local v5, b2:B
    const/4 v6, 0x0

    .local v6, b3:B
    const/4 v7, 0x0

    .local v7, b4:B
    const/16 v20, 0x0

    .local v20, marker0:B
    const/16 v21, 0x0

    .line 223
    .local v21, marker1:B
    const/4 v9, 0x0

    .local v9, d1:C
    const/4 v10, 0x0

    .local v10, d2:C
    const/4 v11, 0x0

    .local v11, d3:C
    const/4 v12, 0x0

    .line 225
    .local v12, d4:C
    const/16 v18, 0x0

    .line 226
    .local v18, i:I
    const/16 v16, 0x0

    .line 227
    .local v16, encodedIndex:I
    const/4 v13, 0x0

    .line 228
    .local v13, dataIndex:I
    mul-int/lit8 v24, v22, 0x3

    move/from16 v0, v24

    new-array v15, v0, [B

    move v14, v13

    .end local v13           #dataIndex:I
    .local v14, dataIndex:I
    move/from16 v17, v16

    .line 230
    .end local v16           #encodedIndex:I
    .local v17, encodedIndex:I
    :goto_1
    add-int/lit8 v24, v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_6

    .line 232
    add-int/lit8 v13, v14, 0x1

    .end local v14           #dataIndex:I
    .restart local v13       #dataIndex:I
    aget-char v9, v8, v14

    invoke-static {v9}, Lcom/didi/common/util/Base64;->isData(C)Z

    move-result v24

    if-eqz v24, :cond_4

    add-int/lit8 v14, v13, 0x1

    .end local v13           #dataIndex:I
    .restart local v14       #dataIndex:I
    aget-char v10, v8, v13

    invoke-static {v10}, Lcom/didi/common/util/Base64;->isData(C)Z

    move-result v24

    if-eqz v24, :cond_3

    add-int/lit8 v13, v14, 0x1

    .end local v14           #dataIndex:I
    .restart local v13       #dataIndex:I
    aget-char v11, v8, v14

    invoke-static {v11}, Lcom/didi/common/util/Base64;->isData(C)Z

    move-result v24

    if-eqz v24, :cond_4

    add-int/lit8 v14, v13, 0x1

    .end local v13           #dataIndex:I
    .restart local v14       #dataIndex:I
    aget-char v12, v8, v13

    invoke-static {v12}, Lcom/didi/common/util/Base64;->isData(C)Z

    move-result v24

    if-nez v24, :cond_5

    :cond_3
    move v13, v14

    .line 235
    .end local v14           #dataIndex:I
    .restart local v13       #dataIndex:I
    :cond_4
    const/16 v23, 0x0

    goto :goto_0

    .line 237
    .end local v13           #dataIndex:I
    .restart local v14       #dataIndex:I
    :cond_5
    sget-object v24, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    aget-byte v4, v24, v9

    .line 238
    sget-object v24, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    aget-byte v5, v24, v10

    .line 239
    sget-object v24, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    aget-byte v6, v24, v11

    .line 240
    sget-object v24, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    aget-byte v7, v24, v12

    .line 242
    add-int/lit8 v16, v17, 0x1

    .end local v17           #encodedIndex:I
    .restart local v16       #encodedIndex:I
    shl-int/lit8 v24, v4, 0x2

    shr-int/lit8 v25, v5, 0x4

    or-int v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v15, v17

    .line 243
    add-int/lit8 v17, v16, 0x1

    .end local v16           #encodedIndex:I
    .restart local v17       #encodedIndex:I
    and-int/lit8 v24, v5, 0xf

    shl-int/lit8 v24, v24, 0x4

    shr-int/lit8 v25, v6, 0x2

    and-int/lit8 v25, v25, 0xf

    or-int v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v15, v16

    .line 244
    add-int/lit8 v16, v17, 0x1

    .end local v17           #encodedIndex:I
    .restart local v16       #encodedIndex:I
    shl-int/lit8 v24, v6, 0x6

    or-int v24, v24, v7

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v15, v17

    .line 230
    add-int/lit8 v18, v18, 0x1

    move/from16 v17, v16

    .end local v16           #encodedIndex:I
    .restart local v17       #encodedIndex:I
    goto :goto_1

    .line 247
    :cond_6
    add-int/lit8 v13, v14, 0x1

    .end local v14           #dataIndex:I
    .restart local v13       #dataIndex:I
    aget-char v9, v8, v14

    invoke-static {v9}, Lcom/didi/common/util/Base64;->isData(C)Z

    move-result v24

    if-eqz v24, :cond_7

    add-int/lit8 v14, v13, 0x1

    .end local v13           #dataIndex:I
    .restart local v14       #dataIndex:I
    aget-char v10, v8, v13

    invoke-static {v10}, Lcom/didi/common/util/Base64;->isData(C)Z

    move-result v24

    if-nez v24, :cond_8

    move v13, v14

    .line 248
    .end local v14           #dataIndex:I
    .restart local v13       #dataIndex:I
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 251
    .end local v13           #dataIndex:I
    .restart local v14       #dataIndex:I
    :cond_8
    sget-object v24, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    aget-byte v4, v24, v9

    .line 252
    sget-object v24, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    aget-byte v5, v24, v10

    .line 254
    add-int/lit8 v13, v14, 0x1

    .end local v14           #dataIndex:I
    .restart local v13       #dataIndex:I
    aget-char v11, v8, v14

    .line 255
    add-int/lit8 v14, v13, 0x1

    .end local v13           #dataIndex:I
    .restart local v14       #dataIndex:I
    aget-char v12, v8, v13

    .line 256
    invoke-static {v11}, Lcom/didi/common/util/Base64;->isData(C)Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-static {v12}, Lcom/didi/common/util/Base64;->isData(C)Z

    move-result v24

    if-nez v24, :cond_e

    .line 257
    :cond_9
    invoke-static {v11}, Lcom/didi/common/util/Base64;->isPad(C)Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-static {v12}, Lcom/didi/common/util/Base64;->isPad(C)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 258
    and-int/lit8 v24, v5, 0xf

    if-eqz v24, :cond_a

    .line 259
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 260
    :cond_a
    mul-int/lit8 v24, v18, 0x3

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 261
    .local v23, tmp:[B
    const/16 v24, 0x0

    const/16 v25, 0x0

    mul-int/lit8 v26, v18, 0x3

    move/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    shl-int/lit8 v24, v4, 0x2

    shr-int/lit8 v25, v5, 0x4

    or-int v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v17

    goto/16 :goto_0

    .line 264
    .end local v23           #tmp:[B
    :cond_b
    invoke-static {v11}, Lcom/didi/common/util/Base64;->isPad(C)Z

    move-result v24

    if-nez v24, :cond_d

    invoke-static {v12}, Lcom/didi/common/util/Base64;->isPad(C)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 265
    sget-object v24, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    aget-byte v6, v24, v11

    .line 266
    and-int/lit8 v24, v6, 0x3

    if-eqz v24, :cond_c

    .line 267
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 268
    :cond_c
    mul-int/lit8 v24, v18, 0x3

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 269
    .restart local v23       #tmp:[B
    const/16 v24, 0x0

    const/16 v25, 0x0

    mul-int/lit8 v26, v18, 0x3

    move/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    add-int/lit8 v16, v17, 0x1

    .end local v17           #encodedIndex:I
    .restart local v16       #encodedIndex:I
    shl-int/lit8 v24, v4, 0x2

    shr-int/lit8 v25, v5, 0x4

    or-int v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v17

    .line 271
    and-int/lit8 v24, v5, 0xf

    shl-int/lit8 v24, v24, 0x4

    shr-int/lit8 v25, v6, 0x2

    and-int/lit8 v25, v25, 0xf

    or-int v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v23, v16

    goto/16 :goto_0

    .line 274
    .end local v16           #encodedIndex:I
    .end local v23           #tmp:[B
    .restart local v17       #encodedIndex:I
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 278
    :cond_e
    sget-object v24, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    aget-byte v6, v24, v11

    .line 279
    sget-object v24, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    aget-byte v7, v24, v12

    .line 280
    add-int/lit8 v16, v17, 0x1

    .end local v17           #encodedIndex:I
    .restart local v16       #encodedIndex:I
    shl-int/lit8 v24, v4, 0x2

    shr-int/lit8 v25, v5, 0x4

    or-int v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v15, v17

    .line 281
    add-int/lit8 v17, v16, 0x1

    .end local v16           #encodedIndex:I
    .restart local v17       #encodedIndex:I
    and-int/lit8 v24, v5, 0xf

    shl-int/lit8 v24, v24, 0x4

    shr-int/lit8 v25, v6, 0x2

    and-int/lit8 v25, v25, 0xf

    or-int v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v15, v16

    .line 282
    add-int/lit8 v16, v17, 0x1

    .end local v17           #encodedIndex:I
    .restart local v16       #encodedIndex:I
    shl-int/lit8 v24, v6, 0x6

    or-int v24, v24, v7

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v15, v17

    move-object/from16 v23, v15

    .line 286
    goto/16 :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 25
    .parameter "binaryData"

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    const/16 v23, 0x0

    .line 193
    :goto_0
    return-object v23

    .line 78
    :cond_0
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    mul-int/lit8 v14, v23, 0x8

    .line 79
    .local v14, lengthDataBits:I
    if-nez v14, :cond_1

    .line 80
    const-string v23, ""

    goto :goto_0

    .line 83
    :cond_1
    rem-int/lit8 v10, v14, 0x18

    .line 84
    .local v10, fewerThan24bits:I
    div-int/lit8 v18, v14, 0x18

    .line 85
    .local v18, numberTriplets:I
    if-eqz v10, :cond_2

    add-int/lit8 v17, v18, 0x1

    .line 86
    .local v17, numberQuartet:I
    :goto_1
    add-int/lit8 v23, v17, -0x1

    div-int/lit8 v23, v23, 0x13

    add-int/lit8 v16, v23, 0x1

    .line 87
    .local v16, numberLines:I
    const/4 v7, 0x0

    .line 89
    .local v7, encodedData:[C
    mul-int/lit8 v23, v17, 0x4

    add-int v23, v23, v16

    move/from16 v0, v23

    new-array v7, v0, [C

    .line 91
    const/4 v12, 0x0

    .local v12, k:B
    const/4 v13, 0x0

    .local v13, l:B
    const/4 v2, 0x0

    .local v2, b1:B
    const/4 v3, 0x0

    .local v3, b2:B
    const/4 v4, 0x0

    .line 93
    .local v4, b3:B
    const/4 v8, 0x0

    .line 94
    .local v8, encodedIndex:I
    const/4 v5, 0x0

    .line 95
    .local v5, dataIndex:I
    const/4 v11, 0x0

    .line 100
    .local v11, i:I
    const/4 v15, 0x0

    .local v15, line:I
    :goto_2
    add-int/lit8 v23, v16, -0x1

    move/from16 v0, v23

    if-ge v15, v0, :cond_10

    .line 101
    const/16 v19, 0x0

    .local v19, quartet:I
    move v6, v5

    .end local v5           #dataIndex:I
    .local v6, dataIndex:I
    move v9, v8

    .end local v8           #encodedIndex:I
    .local v9, encodedIndex:I
    :goto_3
    const/16 v23, 0x13

    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    .line 102
    add-int/lit8 v5, v6, 0x1

    .end local v6           #dataIndex:I
    .restart local v5       #dataIndex:I
    aget-byte v2, p0, v6

    .line 103
    add-int/lit8 v6, v5, 0x1

    .end local v5           #dataIndex:I
    .restart local v6       #dataIndex:I
    aget-byte v3, p0, v5

    .line 104
    add-int/lit8 v5, v6, 0x1

    .end local v6           #dataIndex:I
    .restart local v5       #dataIndex:I
    aget-byte v4, p0, v6

    .line 110
    and-int/lit8 v23, v3, 0xf

    move/from16 v0, v23

    int-to-byte v13, v0

    .line 111
    and-int/lit8 v23, v2, 0x3

    move/from16 v0, v23

    int-to-byte v12, v0

    .line 113
    and-int/lit8 v23, v2, -0x80

    if-nez v23, :cond_3

    shr-int/lit8 v23, v2, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 115
    .local v20, val1:B
    :goto_4
    and-int/lit8 v23, v3, -0x80

    if-nez v23, :cond_4

    shr-int/lit8 v23, v3, 0x4

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 116
    .local v21, val2:B
    :goto_5
    and-int/lit8 v23, v4, -0x80

    if-nez v23, :cond_5

    shr-int/lit8 v23, v4, 0x6

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v22, v0

    .line 124
    .local v22, val3:B
    :goto_6
    add-int/lit8 v8, v9, 0x1

    .end local v9           #encodedIndex:I
    .restart local v8       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v23, v23, v20

    aput-char v23, v7, v9

    .line 125
    add-int/lit8 v9, v8, 0x1

    .end local v8           #encodedIndex:I
    .restart local v9       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v24, v12, 0x4

    or-int v24, v24, v21

    aget-char v23, v23, v24

    aput-char v23, v7, v8

    .line 126
    add-int/lit8 v8, v9, 0x1

    .end local v9           #encodedIndex:I
    .restart local v8       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v24, v13, 0x2

    or-int v24, v24, v22

    aget-char v23, v23, v24

    aput-char v23, v7, v9

    .line 127
    add-int/lit8 v9, v8, 0x1

    .end local v8           #encodedIndex:I
    .restart local v9       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v24, v4, 0x3f

    aget-char v23, v23, v24

    aput-char v23, v7, v8

    .line 129
    add-int/lit8 v11, v11, 0x1

    .line 101
    add-int/lit8 v19, v19, 0x1

    move v6, v5

    .end local v5           #dataIndex:I
    .restart local v6       #dataIndex:I
    goto :goto_3

    .end local v2           #b1:B
    .end local v3           #b2:B
    .end local v4           #b3:B
    .end local v6           #dataIndex:I
    .end local v7           #encodedData:[C
    .end local v9           #encodedIndex:I
    .end local v11           #i:I
    .end local v12           #k:B
    .end local v13           #l:B
    .end local v15           #line:I
    .end local v16           #numberLines:I
    .end local v17           #numberQuartet:I
    .end local v19           #quartet:I
    .end local v20           #val1:B
    .end local v21           #val2:B
    .end local v22           #val3:B
    :cond_2
    move/from16 v17, v18

    .line 85
    goto/16 :goto_1

    .line 113
    .restart local v2       #b1:B
    .restart local v3       #b2:B
    .restart local v4       #b3:B
    .restart local v5       #dataIndex:I
    .restart local v7       #encodedData:[C
    .restart local v9       #encodedIndex:I
    .restart local v11       #i:I
    .restart local v12       #k:B
    .restart local v13       #l:B
    .restart local v15       #line:I
    .restart local v16       #numberLines:I
    .restart local v17       #numberQuartet:I
    .restart local v19       #quartet:I
    :cond_3
    shr-int/lit8 v23, v2, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto :goto_4

    .line 115
    .restart local v20       #val1:B
    :cond_4
    shr-int/lit8 v23, v3, 0x4

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    goto :goto_5

    .line 116
    .restart local v21       #val2:B
    :cond_5
    shr-int/lit8 v23, v4, 0x6

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v22, v0

    goto :goto_6

    .line 131
    .end local v5           #dataIndex:I
    .end local v20           #val1:B
    .end local v21           #val2:B
    .restart local v6       #dataIndex:I
    :cond_6
    add-int/lit8 v8, v9, 0x1

    .end local v9           #encodedIndex:I
    .restart local v8       #encodedIndex:I
    const/16 v23, 0xa

    aput-char v23, v7, v9

    .line 100
    add-int/lit8 v15, v15, 0x1

    move v5, v6

    .end local v6           #dataIndex:I
    .restart local v5       #dataIndex:I
    goto/16 :goto_2

    .line 134
    .end local v5           #dataIndex:I
    .end local v8           #encodedIndex:I
    .end local v19           #quartet:I
    .restart local v6       #dataIndex:I
    .restart local v9       #encodedIndex:I
    :goto_7
    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    .line 135
    add-int/lit8 v5, v6, 0x1

    .end local v6           #dataIndex:I
    .restart local v5       #dataIndex:I
    aget-byte v2, p0, v6

    .line 136
    add-int/lit8 v6, v5, 0x1

    .end local v5           #dataIndex:I
    .restart local v6       #dataIndex:I
    aget-byte v3, p0, v5

    .line 137
    add-int/lit8 v5, v6, 0x1

    .end local v6           #dataIndex:I
    .restart local v5       #dataIndex:I
    aget-byte v4, p0, v6

    .line 143
    and-int/lit8 v23, v3, 0xf

    move/from16 v0, v23

    int-to-byte v13, v0

    .line 144
    and-int/lit8 v23, v2, 0x3

    move/from16 v0, v23

    int-to-byte v12, v0

    .line 146
    and-int/lit8 v23, v2, -0x80

    if-nez v23, :cond_7

    shr-int/lit8 v23, v2, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 148
    .restart local v20       #val1:B
    :goto_8
    and-int/lit8 v23, v3, -0x80

    if-nez v23, :cond_8

    shr-int/lit8 v23, v3, 0x4

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 149
    .restart local v21       #val2:B
    :goto_9
    and-int/lit8 v23, v4, -0x80

    if-nez v23, :cond_9

    shr-int/lit8 v23, v4, 0x6

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v22, v0

    .line 157
    .restart local v22       #val3:B
    :goto_a
    add-int/lit8 v8, v9, 0x1

    .end local v9           #encodedIndex:I
    .restart local v8       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v23, v23, v20

    aput-char v23, v7, v9

    .line 158
    add-int/lit8 v9, v8, 0x1

    .end local v8           #encodedIndex:I
    .restart local v9       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v24, v12, 0x4

    or-int v24, v24, v21

    aget-char v23, v23, v24

    aput-char v23, v7, v8

    .line 159
    add-int/lit8 v8, v9, 0x1

    .end local v9           #encodedIndex:I
    .restart local v8       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v24, v13, 0x2

    or-int v24, v24, v22

    aget-char v23, v23, v24

    aput-char v23, v7, v9

    .line 160
    add-int/lit8 v9, v8, 0x1

    .end local v8           #encodedIndex:I
    .restart local v9       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v24, v4, 0x3f

    aget-char v23, v23, v24

    aput-char v23, v7, v8

    .line 134
    add-int/lit8 v11, v11, 0x1

    move v6, v5

    .end local v5           #dataIndex:I
    .restart local v6       #dataIndex:I
    goto :goto_7

    .line 146
    .end local v6           #dataIndex:I
    .end local v20           #val1:B
    .end local v21           #val2:B
    .end local v22           #val3:B
    .restart local v5       #dataIndex:I
    :cond_7
    shr-int/lit8 v23, v2, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto :goto_8

    .line 148
    .restart local v20       #val1:B
    :cond_8
    shr-int/lit8 v23, v3, 0x4

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    goto :goto_9

    .line 149
    .restart local v21       #val2:B
    :cond_9
    shr-int/lit8 v23, v4, 0x6

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xfc

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v22, v0

    goto :goto_a

    .line 164
    .end local v5           #dataIndex:I
    .end local v20           #val1:B
    .end local v21           #val2:B
    .restart local v6       #dataIndex:I
    :cond_a
    const/16 v23, 0x8

    move/from16 v0, v23

    if-ne v10, v0, :cond_c

    .line 165
    aget-byte v2, p0, v6

    .line 166
    and-int/lit8 v23, v2, 0x3

    move/from16 v0, v23

    int-to-byte v12, v0

    .line 171
    and-int/lit8 v23, v2, -0x80

    if-nez v23, :cond_b

    shr-int/lit8 v23, v2, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 172
    .restart local v20       #val1:B
    :goto_b
    add-int/lit8 v8, v9, 0x1

    .end local v9           #encodedIndex:I
    .restart local v8       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v23, v23, v20

    aput-char v23, v7, v9

    .line 173
    add-int/lit8 v9, v8, 0x1

    .end local v8           #encodedIndex:I
    .restart local v9       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v24, v12, 0x4

    aget-char v23, v23, v24

    aput-char v23, v7, v8

    .line 174
    add-int/lit8 v8, v9, 0x1

    .end local v9           #encodedIndex:I
    .restart local v8       #encodedIndex:I
    const/16 v23, 0x3d

    aput-char v23, v7, v9

    .line 175
    add-int/lit8 v9, v8, 0x1

    .end local v8           #encodedIndex:I
    .restart local v9       #encodedIndex:I
    const/16 v23, 0x3d

    aput-char v23, v7, v8

    move v8, v9

    .line 191
    .end local v9           #encodedIndex:I
    .end local v20           #val1:B
    .restart local v8       #encodedIndex:I
    :goto_c
    const/16 v23, 0xa

    aput-char v23, v7, v8

    .line 193
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_0

    .line 171
    .end local v8           #encodedIndex:I
    .restart local v9       #encodedIndex:I
    :cond_b
    shr-int/lit8 v23, v2, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto :goto_b

    .line 176
    :cond_c
    const/16 v23, 0x10

    move/from16 v0, v23

    if-ne v10, v0, :cond_d

    .line 177
    aget-byte v2, p0, v6

    .line 178
    add-int/lit8 v23, v6, 0x1

    aget-byte v3, p0, v23

    .line 179
    and-int/lit8 v23, v3, 0xf

    move/from16 v0, v23

    int-to-byte v13, v0

    .line 180
    and-int/lit8 v23, v2, 0x3

    move/from16 v0, v23

    int-to-byte v12, v0

    .line 182
    and-int/lit8 v23, v2, -0x80

    if-nez v23, :cond_e

    shr-int/lit8 v23, v2, 0x2

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    .line 183
    .restart local v20       #val1:B
    :goto_d
    and-int/lit8 v23, v3, -0x80

    if-nez v23, :cond_f

    shr-int/lit8 v23, v3, 0x4

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    .line 185
    .restart local v21       #val2:B
    :goto_e
    add-int/lit8 v8, v9, 0x1

    .end local v9           #encodedIndex:I
    .restart local v8       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v23, v23, v20

    aput-char v23, v7, v9

    .line 186
    add-int/lit8 v9, v8, 0x1

    .end local v8           #encodedIndex:I
    .restart local v9       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v24, v12, 0x4

    or-int v24, v24, v21

    aget-char v23, v23, v24

    aput-char v23, v7, v8

    .line 187
    add-int/lit8 v8, v9, 0x1

    .end local v9           #encodedIndex:I
    .restart local v8       #encodedIndex:I
    sget-object v23, Lcom/didi/common/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v24, v13, 0x2

    aget-char v23, v23, v24

    aput-char v23, v7, v9

    .line 188
    add-int/lit8 v9, v8, 0x1

    .end local v8           #encodedIndex:I
    .restart local v9       #encodedIndex:I
    const/16 v23, 0x3d

    aput-char v23, v7, v8

    .end local v20           #val1:B
    .end local v21           #val2:B
    :cond_d
    move v8, v9

    .end local v9           #encodedIndex:I
    .restart local v8       #encodedIndex:I
    goto :goto_c

    .line 182
    .end local v8           #encodedIndex:I
    .restart local v9       #encodedIndex:I
    :cond_e
    shr-int/lit8 v23, v2, 0x2

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xc0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v20, v0

    goto :goto_d

    .line 183
    .restart local v20       #val1:B
    :cond_f
    shr-int/lit8 v23, v3, 0x4

    move/from16 v0, v23

    xor-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v21, v0

    goto :goto_e

    .end local v6           #dataIndex:I
    .end local v9           #encodedIndex:I
    .end local v20           #val1:B
    .restart local v5       #dataIndex:I
    .restart local v8       #encodedIndex:I
    :cond_10
    move v6, v5

    .end local v5           #dataIndex:I
    .restart local v6       #dataIndex:I
    move v9, v8

    .end local v8           #encodedIndex:I
    .restart local v9       #encodedIndex:I
    goto/16 :goto_7
.end method

.method protected static isBase64(C)Z
    .locals 1
    .parameter "octect"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/didi/common/util/Base64;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/didi/common/util/Base64;->isPad(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/didi/common/util/Base64;->isData(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isData(C)Z
    .locals 2
    .parameter "octect"

    .prologue
    .line 59
    sget-object v0, Lcom/didi/common/util/Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isPad(C)Z
    .locals 1
    .parameter "octect"

    .prologue
    .line 55
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isWhiteSpace(C)Z
    .locals 1
    .parameter "octect"

    .prologue
    .line 51
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 311
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u4e2d\u534e\u4eba\u6c11\u5171\u548c\u56fd"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method protected static removeWhiteSpace([C)I
    .locals 5
    .parameter "data"

    .prologue
    .line 297
    if-nez p0, :cond_1

    .line 298
    const/4 v3, 0x0

    .line 307
    :cond_0
    return v3

    .line 301
    :cond_1
    const/4 v2, 0x0

    .line 302
    .local v2, newSize:I
    array-length v1, p0

    .line 303
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    move v3, v2

    .end local v2           #newSize:I
    .local v3, newSize:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 304
    aget-char v4, p0, v0

    invoke-static {v4}, Lcom/didi/common/util/Base64;->isWhiteSpace(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 305
    add-int/lit8 v2, v3, 0x1

    .end local v3           #newSize:I
    .restart local v2       #newSize:I
    aget-char v4, p0, v0

    aput-char v4, p0, v3

    .line 303
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2           #newSize:I
    .restart local v3       #newSize:I
    goto :goto_0

    :cond_2
    move v2, v3

    .end local v3           #newSize:I
    .restart local v2       #newSize:I
    goto :goto_1
.end method
