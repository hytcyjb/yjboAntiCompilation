.class public Lcom/didi/frame/driverinfo/DriverCirclePhoto;
.super Landroid/widget/ImageView;
.source "DriverCirclePhoto.java"


# instance fields
.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->paint:Landroid/graphics/Paint;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->paint:Landroid/graphics/Paint;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->paint:Landroid/graphics/Paint;

    .line 37
    return-void
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bit"

    .prologue
    const/4 v1, 0x0

    .line 79
    move-object v0, p1

    .line 80
    .local v0, BitmapOrg:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 81
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 82
    .local v4, height:I
    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->getWidth()I

    move-result v8

    .line 83
    .local v8, newWidth:I
    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->getHeight()I

    move-result v7

    .line 85
    .local v7, newHeight:I
    int-to-float v2, v8

    int-to-float v6, v3

    div-float v11, v2, v6

    .line 86
    .local v11, scaleWidth:F
    int-to-float v2, v7

    int-to-float v6, v4

    div-float v10, v2, v6

    .line 88
    .local v10, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 89
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 90
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 91
    .local v9, resizedBitmap:Landroid/graphics/Bitmap;
    return-object v9
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 44
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 45
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 47
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-static {v1, v4, v5, v6, v7}, Lcom/didi/common/util/ImageUtil;->round(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->reset()V

    .line 50
    iget-object v4, p0, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 55
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #rect:Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 53
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
