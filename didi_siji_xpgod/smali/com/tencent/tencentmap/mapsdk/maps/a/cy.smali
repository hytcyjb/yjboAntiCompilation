.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/cy;
.super Ljava/lang/Object;
.source "MySerialize.java"


# direct methods
.method public static a([B)I
    .locals 3
    .parameter "data"

    .prologue
    .line 193
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const v1, 0xff00

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/high16 v1, 0xff

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x10

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 194
    const/high16 v1, -0x100

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v1, v2

    .line 193
    or-int/2addr v0, v1

    return v0
.end method

.method public static a(I)[B
    .locals 3
    .parameter "i"

    .prologue
    .line 178
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 179
    .local v0, data:[B
    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 180
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 181
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 182
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 183
    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 278
    if-eqz p0, :cond_0

    .line 280
    :try_start_0
    const-string v0, "UTF-16LE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 284
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2
    .parameter "data"

    .prologue
    .line 293
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-16LE"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
