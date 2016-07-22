.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/dr;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/ed;
.source "InfoWindowGLIcon3D.java"


# static fields
.field public static b:I

.field public static c:Z

.field public static d:F

.field public static e:F


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xf3

    .line 18
    const/16 v0, 0xe6

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->b:I

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->c:Z

    .line 20
    const/high16 v0, 0x3f40

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->d:F

    .line 21
    const v0, 0x3f333333

    sput v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->e:F

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "gl"
    .parameter "iconBmp"
    .parameter "textureName"

    .prologue
    const/4 v0, 0x2

    .line 24
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;-><init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;II)V

    .line 16
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->a:I

    .line 25
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->a:I

    .line 26
    return-void
.end method

.method private c()F
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->b()I

    move-result v2

    int-to-float v0, v2

    .line 39
    .local v0, high:F
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 40
    const/high16 v2, 0x4000

    div-float v1, v0, v2

    .line 44
    .local v1, top:F
    :goto_0
    return v1

    .line 42
    .end local v1           #top:F
    :cond_0
    move v1, v0

    .restart local v1       #top:F
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/16 v5, 0x303

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-interface {p1, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 120
    invoke-super {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 122
    sget-boolean v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->c:Z

    if-ne v0, v1, :cond_0

    .line 123
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    const/16 v0, 0x404

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    sget v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->d:F

    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->e:F

    const/high16 v2, 0x3f80

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    sget v0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->b:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(I)F

    move-result v0

    sget v1, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->b:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(I)F

    move-result v1

    sget v2, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->b:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(I)F

    move-result v2

    sget v3, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->b:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(I)F

    move-result v3

    invoke-interface {p1, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    const/4 v0, 0x3

    const/16 v1, 0x1406

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->h:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-interface {p1, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    const/16 v0, 0x405

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 127
    :cond_0
    const/16 v0, 0x302

    invoke-interface {p1, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 128
    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "gl"
    .parameter "iconBmp"

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iput v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->f:I

    .line 65
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->g:I

    .line 66
    const/4 v7, 0x2

    .line 67
    .local v7, targetWid:I
    const/4 v6, 0x2

    .line 68
    .local v6, targetHei:I
    :goto_0
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->f:I

    if-ge v7, v10, :cond_0

    .line 69
    shl-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 72
    :cond_0
    :goto_1
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->g:I

    if-ge v6, v10, :cond_1

    .line 73
    shl-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 76
    :cond_1
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->f:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v3, v10

    .line 77
    .local v3, fLeft:F
    neg-float v4, v3

    .line 79
    .local v4, fRight:F
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->a:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 80
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->g:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v5, v10

    .line 81
    .local v5, fTop:F
    neg-float v2, v5

    .line 92
    .local v2, fBottom:F
    :goto_2
    const/16 v10, 0xc

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    const/4 v11, 0x1

    aput v5, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x3

    aput v3, v10, v11

    const/4 v11, 0x4

    aput v2, v10, v11

    const/4 v11, 0x5

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x6

    aput v4, v10, v11

    const/4 v11, 0x7

    aput v2, v10, v11

    const/16 v11, 0x8

    const/4 v12, 0x0

    aput v12, v10, v11

    const/16 v11, 0x9

    aput v4, v10, v11

    const/16 v11, 0xa

    aput v5, v10, v11

    const/16 v11, 0xb

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v10}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->h:Ljava/nio/FloatBuffer;

    .line 95
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->f:I

    int-to-float v10, v10

    int-to-float v11, v7

    div-float v9, v10, v11

    .line 96
    .local v9, texWid:F
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->g:I

    int-to-float v10, v10

    int-to-float v11, v6

    div-float v8, v10, v11

    .line 97
    .local v8, texHei:F
    const/16 v10, 0x8

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x3

    aput v8, v10, v11

    const/4 v11, 0x4

    aput v9, v10, v11

    const/4 v11, 0x5

    aput v8, v10, v11

    const/4 v11, 0x6

    aput v9, v10, v11

    const/4 v11, 0x7

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v10}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->i:Ljava/nio/FloatBuffer;

    .line 102
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v6, v10}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 104
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 106
    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, p2, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    invoke-static {p1, v0}, Lcom/tencent/map/lib/gl/a;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v10

    iput v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->j:I

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :goto_3
    return-void

    .line 83
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #fBottom:F
    .end local v5           #fTop:F
    .end local v8           #texHei:F
    .end local v9           #texWid:F
    :cond_2
    iget v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->g:I

    int-to-float v5, v10

    .line 84
    .restart local v5       #fTop:F
    const/4 v2, 0x0

    .restart local v2       #fBottom:F
    goto/16 :goto_2

    .line 111
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v8       #texHei:F
    .restart local v9       #texWid:F
    :cond_3
    const/4 v10, 0x0

    iput v10, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->j:I

    goto :goto_3
.end method

.method public final a(FFLcom/tencent/tencentmap/mapsdk/maps/a/bf;)Z
    .locals 10
    .parameter "hitx"
    .parameter "hity"
    .parameter "p"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->a()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    .line 54
    .local v1, fLeft:F
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->a()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 55
    .local v2, fRight:F
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->c()F

    move-result v3

    .line 56
    .local v3, ftop:F
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->c()F

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dr;->b()I

    move-result v5

    int-to-float v5, v5

    sub-float v0, v4, v5

    .line 57
    .local v0, fBottom:F
    float-to-double v4, p1

    iget-wide v6, p3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    sub-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    float-to-double v4, p1

    iget-wide v6, p3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->a:D

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    add-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    float-to-double v4, p2

    iget-wide v6, p3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    add-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    float-to-double v4, p2

    iget-wide v6, p3, Lcom/tencent/tencentmap/mapsdk/maps/a/bf;->b:D

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    sub-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
