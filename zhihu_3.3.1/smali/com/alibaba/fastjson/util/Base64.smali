.class public Lcom/alibaba/fastjson/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field public static final CA:[C

.field public static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 58
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    .line 59
    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    .line 61
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 62
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    array-length v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 63
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    aget-char v4, v4, v0

    aput v0, v3, v4

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeFast(Ljava/lang/String;)[B
    .locals 13
    .parameter

    .prologue
    const/16 v8, 0x4c

    const/16 v6, 0x3d

    const/4 v1, 0x0

    .line 201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 202
    if-nez v2, :cond_0

    .line 203
    new-array v0, v1, [B

    .line 253
    :goto_0
    return-object v0

    .line 206
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v3, v1

    .line 209
    :goto_1
    if-ge v3, v0, :cond_a

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_a

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 213
    :goto_2
    if-lez v7, :cond_1

    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aget v0, v0, v4

    if-gez v0, :cond_1

    .line 214
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_2

    .line 217
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_4

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_3

    const/4 v0, 0x2

    move v6, v0

    .line 218
    :goto_3
    sub-int v0, v7, v3

    add-int/lit8 v4, v0, 0x1

    .line 219
    if-le v2, v8, :cond_6

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_5

    div-int/lit8 v0, v4, 0x4e

    :goto_4
    shl-int/lit8 v0, v0, 0x1

    .line 221
    :goto_5
    sub-int v2, v4, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v8, v2, v6

    .line 222
    new-array v4, v8, [B

    .line 226
    div-int/lit8 v2, v8, 0x3

    mul-int/lit8 v9, v2, 0x3

    move v2, v1

    move v5, v1

    :cond_2
    :goto_6
    if-ge v5, v9, :cond_7

    .line 228
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v10, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v3, v10

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v3

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    .line 232
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    .line 233
    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    .line 234
    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    aput-byte v10, v4, v12

    .line 237
    if-lez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x13

    if-ne v2, v10, :cond_2

    .line 238
    add-int/lit8 v2, v3, 0x2

    move v3, v2

    move v2, v1

    .line 239
    goto :goto_6

    .line 217
    :cond_3
    const/4 v0, 0x1

    move v6, v0

    goto :goto_3

    :cond_4
    move v6, v1

    goto :goto_3

    :cond_5
    move v0, v1

    .line 219
    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    .line 243
    :cond_7
    if-ge v5, v8, :cond_9

    move v0, v3

    move v3, v1

    .line 246
    :goto_7
    sub-int v2, v7, v6

    if-gt v0, v2, :cond_8

    .line 247
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget v0, v9, v0

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v0, v9

    or-int/2addr v0, v3

    .line 246
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    move v0, v2

    goto :goto_7

    .line 249
    :cond_8
    const/16 v0, 0x10

    move v1, v5

    :goto_8
    if-ge v1, v8, :cond_9

    .line 250
    add-int/lit8 v2, v1, 0x1

    shr-int v5, v3, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 249
    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_8

    :cond_9
    move-object v0, v4

    .line 253
    goto/16 :goto_0

    :cond_a
    move v7, v0

    goto/16 :goto_2
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x4c

    const/16 v5, 0x3d

    const/4 v1, 0x0

    .line 135
    if-nez p2, :cond_0

    .line 136
    new-array v0, v1, [B

    .line 185
    :goto_0
    return-object v0

    .line 139
    :cond_0
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    move v3, p1

    .line 142
    :goto_1
    if-ge v3, v0, :cond_a

    sget-object v2, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v2, v2, v4

    if-gez v2, :cond_a

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    :goto_2
    if-lez v7, :cond_1

    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v0, v0, v2

    if-gez v0, :cond_1

    .line 147
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_2

    .line 150
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_4

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_3

    const/4 v0, 0x2

    move v6, v0

    .line 151
    :goto_3
    sub-int v0, v7, v3

    add-int/lit8 v2, v0, 0x1

    .line 152
    if-le p2, v8, :cond_6

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0xd

    if-ne v0, v4, :cond_5

    div-int/lit8 v0, v2, 0x4e

    :goto_4
    shl-int/lit8 v0, v0, 0x1

    .line 154
    :goto_5
    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v8, v2, v6

    .line 155
    new-array v4, v8, [B

    .line 159
    div-int/lit8 v2, v8, 0x3

    mul-int/lit8 v9, v2, 0x3

    move v2, v1

    move v5, v1

    :cond_2
    :goto_6
    if-ge v5, v9, :cond_7

    .line 161
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v10, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v3, v10

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v3

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    .line 164
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    .line 165
    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    .line 166
    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    aput-byte v10, v4, v12

    .line 169
    if-lez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x13

    if-ne v2, v10, :cond_2

    .line 170
    add-int/lit8 v2, v3, 0x2

    move v3, v2

    move v2, v1

    .line 171
    goto :goto_6

    .line 150
    :cond_3
    const/4 v0, 0x1

    move v6, v0

    goto :goto_3

    :cond_4
    move v6, v1

    goto :goto_3

    :cond_5
    move v0, v1

    .line 152
    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    .line 175
    :cond_7
    if-ge v5, v8, :cond_9

    move v0, v3

    move v3, v1

    .line 178
    :goto_7
    sub-int v2, v7, v6

    if-gt v0, v2, :cond_8

    .line 179
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget v0, v9, v0

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v0, v9

    or-int/2addr v0, v3

    .line 178
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    move v0, v2

    goto :goto_7

    .line 181
    :cond_8
    const/16 v0, 0x10

    move v1, v5

    :goto_8
    if-ge v1, v8, :cond_9

    .line 182
    add-int/lit8 v2, v1, 0x1

    shr-int v5, v3, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 181
    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_8

    :cond_9
    move-object v0, v4

    .line 185
    goto/16 :goto_0

    :cond_a
    move v7, v0

    goto/16 :goto_2
.end method

.method public static final decodeFast([CII)[B
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x4c

    const/16 v5, 0x3d

    const/4 v1, 0x0

    .line 80
    if-nez p2, :cond_0

    .line 81
    new-array v0, v1, [B

    .line 130
    :goto_0
    return-object v0

    .line 84
    :cond_0
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    move v3, p1

    .line 87
    :goto_1
    if-ge v3, v0, :cond_a

    sget-object v2, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v4, p0, v3

    aget v2, v2, v4

    if-gez v2, :cond_a

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 91
    :goto_2
    if-lez v7, :cond_1

    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v2, p0, v7

    aget v0, v0, v2

    if-gez v0, :cond_1

    .line 92
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_2

    .line 95
    :cond_1
    aget-char v0, p0, v7

    if-ne v0, v5, :cond_4

    add-int/lit8 v0, v7, -0x1

    aget-char v0, p0, v0

    if-ne v0, v5, :cond_3

    const/4 v0, 0x2

    move v6, v0

    .line 96
    :goto_3
    sub-int v0, v7, v3

    add-int/lit8 v2, v0, 0x1

    .line 97
    if-le p2, v8, :cond_6

    aget-char v0, p0, v8

    const/16 v4, 0xd

    if-ne v0, v4, :cond_5

    div-int/lit8 v0, v2, 0x4e

    :goto_4
    shl-int/lit8 v0, v0, 0x1

    .line 99
    :goto_5
    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v8, v2, v6

    .line 100
    new-array v4, v8, [B

    .line 104
    div-int/lit8 v2, v8, 0x3

    mul-int/lit8 v9, v2, 0x3

    move v2, v1

    move v5, v1

    :cond_2
    :goto_6
    if-ge v5, v9, :cond_7

    .line 106
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v3, 0x1

    aget-char v3, p0, v3

    aget v3, v10, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v11, 0x1

    aget-char v11, p0, v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v3, v10

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v12, 0x1

    aget-char v12, p0, v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v3

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v3, v11, 0x1

    aget-char v11, p0, v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    .line 109
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    .line 110
    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    .line 111
    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    aput-byte v10, v4, v12

    .line 114
    if-lez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x13

    if-ne v2, v10, :cond_2

    .line 115
    add-int/lit8 v2, v3, 0x2

    move v3, v2

    move v2, v1

    .line 116
    goto :goto_6

    .line 95
    :cond_3
    const/4 v0, 0x1

    move v6, v0

    goto :goto_3

    :cond_4
    move v6, v1

    goto :goto_3

    :cond_5
    move v0, v1

    .line 97
    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    .line 120
    :cond_7
    if-ge v5, v8, :cond_9

    move v0, v3

    move v3, v1

    .line 123
    :goto_7
    sub-int v2, v7, v6

    if-gt v0, v2, :cond_8

    .line 124
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v2, v0, 0x1

    aget-char v0, p0, v0

    aget v0, v9, v0

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v0, v9

    or-int/2addr v0, v3

    .line 123
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    move v0, v2

    goto :goto_7

    .line 126
    :cond_8
    const/16 v0, 0x10

    move v1, v5

    :goto_8
    if-ge v1, v8, :cond_9

    .line 127
    add-int/lit8 v2, v1, 0x1

    shr-int v5, v3, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 126
    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_8

    :cond_9
    move-object v0, v4

    .line 130
    goto/16 :goto_0

    :cond_a
    move v7, v0

    goto/16 :goto_2
.end method
