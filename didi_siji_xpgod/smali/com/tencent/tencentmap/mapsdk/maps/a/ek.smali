.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ek;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/ed;
.source "MarkerGLIcon3D.java"


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private m:F

.field private n:F

.field private o:F


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;FFI)V
    .locals 9
    .parameter "gl"
    .parameter "iconBmp"
    .parameter "fAnchU"
    .parameter "fAnchV"
    .parameter "textureName"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;-><init>()V

    .line 33
    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    .line 34
    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    .line 36
    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->c:F

    .line 37
    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->d:F

    .line 39
    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    .line 40
    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    .line 41
    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    .line 42
    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    .line 47
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    .line 48
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    .line 49
    const/4 v3, 0x2

    .line 50
    .local v3, targetWid:I
    const/4 v2, 0x2

    .line 51
    .local v2, targetHei:I
    :goto_0
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    if-ge v3, v6, :cond_0

    .line 52
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_0
    :goto_1
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    if-ge v2, v6, :cond_1

    .line 56
    shl-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    :cond_1
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, p3

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    .line 60
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    int-to-float v6, v6

    iget v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    .line 61
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    int-to-float v6, v6

    mul-float/2addr v6, p4

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    .line 62
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    iget v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    .line 63
    iput p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->c:F

    .line 64
    iput p4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->d:F

    .line 66
    const/16 v6, 0xc

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    aput v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x3

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    aput v8, v6, v7

    const/4 v7, 0x4

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    aput v8, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x6

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    aput v8, v6, v7

    const/4 v7, 0x7

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    aput v8, v6, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput v8, v6, v7

    const/16 v7, 0x9

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    aput v8, v6, v7

    const/16 v7, 0xa

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    aput v8, v6, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v6}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->h:Ljava/nio/FloatBuffer;

    .line 69
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    int-to-float v6, v6

    int-to-float v7, v3

    div-float v5, v6, v7

    .line 70
    .local v5, texWid:F
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    int-to-float v6, v6

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 71
    .local v4, texHei:F
    const/16 v6, 0x8

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x3

    aput v4, v6, v7

    const/4 v7, 0x4

    aput v5, v6, v7

    const/4 v7, 0x5

    aput v4, v6, v7

    const/4 v7, 0x6

    aput v5, v6, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v6}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->i:Ljava/nio/FloatBuffer;

    .line 73
    if-nez p5, :cond_3

    .line 76
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 78
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 80
    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, p2, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 81
    invoke-static {p1, v0}, Lcom/tencent/map/lib/gl/a;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v6

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->j:I

    .line 82
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :goto_2
    return-void

    .line 85
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->j:I

    goto :goto_2

    .line 88
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_3
    iput p5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->j:I

    goto :goto_2
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    return v0
.end method

.method public final a(FF)V
    .locals 4
    .parameter "fU"
    .parameter "fV"

    .prologue
    const/4 v3, 0x0

    .line 150
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->c:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->d:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    .line 155
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    .line 156
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    .line 157
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    .line 159
    const/16 v0, 0xc

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    aput v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    invoke-static {v0}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->h:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "iconBmp"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    .line 212
    const/4 v1, 0x2

    .line 213
    .local v1, targetWid:I
    const/4 v0, 0x2

    .line 214
    .local v0, targetHei:I
    :goto_0
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    if-ge v1, v4, :cond_0

    .line 215
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_0
    :goto_1
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    if-ge v0, v4, :cond_1

    .line 219
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_1
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->c:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    .line 223
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    int-to-float v4, v4

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    .line 224
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    int-to-float v4, v4

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->d:F

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    .line 225
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    .line 227
    const/16 v4, 0xc

    new-array v4, v4, [F

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    aput v5, v4, v8

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    aput v5, v4, v9

    aput v7, v4, v10

    iget v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    aput v5, v4, v11

    const/4 v5, 0x4

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    aput v6, v4, v5

    const/4 v5, 0x5

    aput v7, v4, v5

    const/4 v5, 0x6

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    aput v6, v4, v5

    const/4 v5, 0x7

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    aput v6, v4, v5

    const/16 v5, 0x8

    aput v7, v4, v5

    const/16 v5, 0x9

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    aput v6, v4, v5

    const/16 v5, 0xa

    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    aput v6, v4, v5

    const/16 v5, 0xb

    aput v7, v4, v5

    invoke-static {v4}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->h:Ljava/nio/FloatBuffer;

    .line 230
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    int-to-float v4, v4

    int-to-float v5, v1

    div-float v3, v4, v5

    .line 231
    .local v3, texWid:F
    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    int-to-float v4, v4

    int-to-float v5, v0

    div-float v2, v4, v5

    .line 232
    .local v2, texHei:F
    const/16 v4, 0x8

    new-array v4, v4, [F

    aput v7, v4, v8

    aput v7, v4, v9

    aput v7, v4, v10

    aput v2, v4, v11

    const/4 v5, 0x4

    aput v3, v4, v5

    const/4 v5, 0x5

    aput v2, v4, v5

    const/4 v5, 0x6

    aput v3, v4, v5

    const/4 v5, 0x7

    aput v7, v4, v5

    invoke-static {v4}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->i:Ljava/nio/FloatBuffer;

    .line 234
    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    const/16 v1, 0x303

    .line 281
    const/4 v0, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 283
    invoke-super {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 286
    const/16 v0, 0x302

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 287
    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "gl"
    .parameter "iconBmp"

    .prologue
    .line 237
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    .line 238
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    .line 239
    const/4 v3, 0x2

    .line 240
    .local v3, targetWid:I
    const/4 v2, 0x2

    .line 241
    .local v2, targetHei:I
    :goto_0
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    if-ge v3, v6, :cond_0

    .line 242
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 245
    :cond_0
    :goto_1
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    if-ge v2, v6, :cond_1

    .line 246
    shl-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 249
    :cond_1
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->c:F

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    .line 250
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    int-to-float v6, v6

    iget v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    .line 251
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    int-to-float v6, v6

    iget v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->d:F

    mul-float/2addr v6, v7

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    .line 252
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    iget v7, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    .line 254
    const/16 v6, 0xc

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    aput v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x3

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    aput v8, v6, v7

    const/4 v7, 0x4

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    aput v8, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x6

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    aput v8, v6, v7

    const/4 v7, 0x7

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    aput v8, v6, v7

    const/16 v7, 0x8

    const/4 v8, 0x0

    aput v8, v6, v7

    const/16 v7, 0x9

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    aput v8, v6, v7

    const/16 v7, 0xa

    iget v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    aput v8, v6, v7

    const/16 v7, 0xb

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v6}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->h:Ljava/nio/FloatBuffer;

    .line 257
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->a:I

    int-to-float v6, v6

    int-to-float v7, v3

    div-float v5, v6, v7

    .line 258
    .local v5, texWid:F
    iget v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    int-to-float v6, v6

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 259
    .local v4, texHei:F
    const/16 v6, 0x8

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    aput v8, v6, v7

    const/4 v7, 0x3

    aput v4, v6, v7

    const/4 v7, 0x4

    aput v5, v6, v7

    const/4 v7, 0x5

    aput v4, v6, v7

    const/4 v7, 0x6

    aput v5, v6, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v6}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->i:Ljava/nio/FloatBuffer;

    .line 264
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 266
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 268
    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, p2, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 269
    invoke-static {p1, v0}, Lcom/tencent/map/lib/gl/a;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v6

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->j:I

    .line 270
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :goto_2
    return-void

    .line 274
    :cond_2
    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->j:I

    goto :goto_2
.end method

.method public final a(FFLcom/tencent/tencentmap/mapsdk/maps/a/bf;)Z
    .locals 6
    .parameter "hitx"
    .parameter "hity"
    .parameter "p"

    .prologue
    .line 308
    float-to-double v0, p1

    iget-wide v2, p3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    iget-wide v2, p3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    float-to-double v0, p2

    iget-wide v2, p3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->o:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    add-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    float-to-double v0, p2

    iget-wide v2, p3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    iget v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->b:I

    return v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->e:F

    return v0
.end method

.method public final e()F
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->m:F

    return v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ek;->n:F

    return v0
.end method
