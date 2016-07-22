.class public Lcom/tencent/tencentmap/mapsdk/maps/a/ed;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/ej;
.source "GLIcon3D.java"


# instance fields
.field protected f:I

.field protected g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ej;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;II)V
    .locals 17
    .parameter "gl"
    .parameter "iconBmp"
    .parameter "layout"
    .parameter "textureName"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ej;-><init>()V

    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 36
    .local v13, width:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 38
    .local v5, height:I
    move-object/from16 v0, p0

    iput v13, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->f:I

    .line 39
    move-object/from16 v0, p0

    iput v5, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->g:I

    .line 41
    const/4 v9, 0x2

    .line 42
    .local v9, targetWid:I
    const/4 v8, 0x2

    .line 43
    .local v8, targetHei:I
    :goto_0
    if-ge v9, v13, :cond_0

    .line 44
    shl-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 47
    :cond_0
    :goto_1
    if-ge v8, v5, :cond_1

    .line 48
    shl-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 51
    :cond_1
    neg-int v14, v13

    div-int/lit8 v14, v14, 0x2

    int-to-float v6, v14

    .line 52
    .local v6, left:F
    neg-float v7, v6

    .line 54
    .local v7, right:F
    const/4 v14, 0x1

    move/from16 v0, p3

    if-ne v0, v14, :cond_2

    .line 55
    div-int/lit8 v14, v5, 0x2

    int-to-float v12, v14

    .line 56
    .local v12, top:F
    neg-float v3, v12

    .line 61
    .local v3, bottom:F
    :goto_2
    const/16 v14, 0xc

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v6, v14, v15

    const/4 v15, 0x1

    aput v12, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput v16, v14, v15

    const/4 v15, 0x3

    aput v6, v14, v15

    const/4 v15, 0x4

    aput v3, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput v16, v14, v15

    const/4 v15, 0x6

    aput v7, v14, v15

    const/4 v15, 0x7

    aput v3, v14, v15

    const/16 v15, 0x8

    const/16 v16, 0x0

    aput v16, v14, v15

    const/16 v15, 0x9

    aput v7, v14, v15

    const/16 v15, 0xa

    aput v12, v14, v15

    const/16 v15, 0xb

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v14}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->h:Ljava/nio/FloatBuffer;

    .line 64
    int-to-float v14, v13

    int-to-float v15, v9

    div-float v11, v14, v15

    .line 65
    .local v11, texWid:F
    int-to-float v14, v5

    int-to-float v15, v8

    div-float v10, v14, v15

    .line 66
    .local v10, texHei:F
    const/16 v14, 0x8

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput v16, v14, v15

    const/4 v15, 0x3

    aput v10, v14, v15

    const/4 v15, 0x4

    aput v11, v14, v15

    const/4 v15, 0x5

    aput v10, v14, v15

    const/4 v15, 0x6

    aput v11, v14, v15

    const/4 v15, 0x7

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v14}, Lcom/tencent/map/lib/gl/a;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->i:Ljava/nio/FloatBuffer;

    .line 69
    if-nez p4, :cond_3

    .line 70
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 71
    .local v2, bmp:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 72
    .local v4, canvas:Landroid/graphics/Canvas;
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 73
    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->l:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v14, v15, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 74
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/tencent/map/lib/gl/a;->a(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->j:I

    .line 75
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    :goto_3
    return-void

    .line 58
    .end local v3           #bottom:F
    .end local v10           #texHei:F
    .end local v11           #texWid:F
    .end local v12           #top:F
    :cond_2
    int-to-float v12, v5

    .line 59
    .restart local v12       #top:F
    const/4 v3, 0x0

    .restart local v3       #bottom:F
    goto/16 :goto_2

    .line 77
    .restart local v10       #texHei:F
    .restart local v11       #texWid:F
    :cond_3
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->j:I

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->f:I

    return v0
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    const/16 v1, 0x303

    .line 84
    const/4 v0, 0x1

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 86
    invoke-super {p0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/ej;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 89
    const/16 v0, 0x302

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 90
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ed;->g:I

    return v0
.end method
