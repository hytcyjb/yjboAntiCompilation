.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ae;
.super Ljava/lang/Object;
.source "JceUtil.java"


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x100

    .line 370
    const/16 v4, 0x10

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .line 373
    .local v0, digits:[B
    new-array v1, v5, [B

    .line 374
    .local v1, high:[B
    new-array v3, v5, [B

    .line 376
    .local v3, low:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 377
    ushr-int/lit8 v4, v2, 0x4

    aget-byte v4, v0, v4

    aput-byte v4, v1, v2

    .line 378
    and-int/lit8 v4, v2, 0xf

    aget-byte v4, v0, v4

    aput-byte v4, v3, v2

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_0
    sput-object v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->a:[B

    .line 382
    sput-object v3, Lcom/tencent/tencentmap/mapsdk/maps/a/ae;->b:[B

    .line 383
    return-void

    .line 370
    :array_0
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public static a(BB)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 24
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(II)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 36
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(JJ)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 40
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(SS)Z
    .locals 1
    .parameter "l"
    .parameter "r"

    .prologue
    .line 32
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
