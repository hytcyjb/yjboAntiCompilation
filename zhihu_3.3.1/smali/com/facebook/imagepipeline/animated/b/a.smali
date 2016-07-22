.class public Lcom/facebook/imagepipeline/animated/b/a;
.super Ljava/lang/Object;
.source "AnimatedDrawableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 134
    if-eq p0, v2, :cond_0

    if-ne p1, v2, :cond_2

    :cond_0
    move v0, v1

    .line 145
    :cond_1
    :goto_0
    return v0

    .line 139
    :cond_2
    if-gt p0, p1, :cond_4

    .line 140
    if-lt p2, p0, :cond_3

    if-le p2, p1, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 143
    :cond_4
    if-ge p2, p0, :cond_5

    if-le p2, p1, :cond_5

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    .line 118
    :goto_0
    return v0

    .line 114
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public a([II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-static {p1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 103
    if-gez v0, :cond_0

    .line 104
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 106
    :cond_0
    return v0
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    const/16 v0, 0x400

    if-ge p2, v0, :cond_0

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, "KB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_0
    div-int/lit16 v0, p2, 0x400

    .line 36
    rem-int/lit16 v1, p2, 0x400

    div-int/lit8 v1, v1, 0x64

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v0, "MB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public a([I)V
    .locals 3
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 56
    aget v1, p1, v0

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 57
    const/16 v1, 0x64

    aput v1, p1, v0

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public b([I)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 69
    move v1, v0

    .line 70
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 71
    aget v2, p1, v0

    add-int/2addr v1, v2

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return v1
.end method

.method public c([I)[I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    array-length v1, p1

    new-array v2, v1, [I

    move v1, v0

    .line 86
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 87
    aput v1, v2, v0

    .line 88
    aget v3, p1, v0

    add-int/2addr v1, v3

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-object v2
.end method
