.class public Lcom/didi/beatles/upload/BtsCropImageView;
.super Landroid/widget/ImageView;
.source "BtsCropImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/upload/BtsCropImageView$AnimatedZoomRunnable;,
        Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;
    }
.end annotation


# static fields
.field private static final BORDERDISTANCE:I = 0x32

.field public static final DEFAULT_MAX_SCALE:F = 4.0f

.field public static final DEFAULT_MID_SCALE:F = 2.0f

.field public static final DEFAULT_MIN_SCALE:F = 1.0f


# instance fields
.field private final baseMatrix:Landroid/graphics/Matrix;

.field private borderlength:I

.field private final displayRect:Landroid/graphics/RectF;

.field private final drawMatrix:Landroid/graphics/Matrix;

.field private isJusted:Z

.field private maxScale:F

.field private midScale:F

.field private minScale:F

.field private multiGestureDetector:Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;

.field private final suppMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/beatles/upload/BtsCropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/didi/beatles/upload/BtsCropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attr"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F

    .line 35
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->midScale:F

    .line 36
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->maxScale:F

    .line 44
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->baseMatrix:Landroid/graphics/Matrix;

    .line 45
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->drawMatrix:Landroid/graphics/Matrix;

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->suppMatrix:Landroid/graphics/Matrix;

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->displayRect:Landroid/graphics/RectF;

    .line 62
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    invoke-virtual {p0, p0}, Lcom/didi/beatles/upload/BtsCropImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    new-instance v0, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;

    invoke-direct {v0, p0, p1}, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;-><init>(Lcom/didi/beatles/upload/BtsCropImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->multiGestureDetector:Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/upload/BtsCropImageView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->maxScale:F

    return v0
.end method

.method static synthetic access$100(Lcom/didi/beatles/upload/BtsCropImageView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F

    return v0
.end method

.method static synthetic access$200(Lcom/didi/beatles/upload/BtsCropImageView;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->suppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/upload/BtsCropImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/beatles/upload/BtsCropImageView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->midScale:F

    return v0
.end method

.method static synthetic access$500(Lcom/didi/beatles/upload/BtsCropImageView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/upload/BtsCropImageView;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->checkMatrixBounds()V

    .line 406
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/beatles/upload/BtsCropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 407
    return-void
.end method

.method private checkMatrixBounds()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4000

    .line 410
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/didi/beatles/upload/BtsCropImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    .line 411
    .local v2, rect:Landroid/graphics/RectF;
    if-nez v2, :cond_0

    .line 439
    :goto_0
    return-void

    .line 415
    :cond_0
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 416
    .local v1, deltaY:F
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getWidth()I

    move-result v6

    int-to-float v5, v6

    .line 417
    .local v5, viewWidth:F
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getHeight()I

    move-result v6

    int-to-float v4, v6

    .line 419
    .local v4, viewHeight:F
    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v7, v7

    sub-float v7, v4, v7

    div-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 420
    iget v6, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v6, v6

    sub-float v6, v4, v6

    div-float/2addr v6, v8

    iget v7, v2, Landroid/graphics/RectF;->top:F

    sub-float v1, v6, v7

    .line 422
    :cond_1
    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    div-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 423
    iget v6, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v6, v6

    add-float/2addr v6, v4

    div-float/2addr v6, v8

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v6, v7

    .line 425
    :cond_2
    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v7, v7

    sub-float v7, v5, v7

    div-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 426
    iget v6, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v6, v6

    sub-float v6, v5, v6

    div-float/2addr v6, v8

    iget v7, v2, Landroid/graphics/RectF;->left:F

    sub-float v0, v6, v7

    .line 428
    :cond_3
    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v7, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    div-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    .line 429
    iget v6, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    div-float/2addr v6, v8

    iget v7, v2, Landroid/graphics/RectF;->right:F

    sub-float v0, v6, v7

    .line 432
    :cond_4
    iget-object v6, p0, Lcom/didi/beatles/upload/BtsCropImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 435
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    neg-float v6, v0

    neg-float v7, v1

    invoke-direct {v3, v6, v9, v7, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 436
    .local v3, trans:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v6, 0xa

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 437
    invoke-virtual {p0, v3}, Lcom/didi/beatles/upload/BtsCropImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private configPosition()V
    .locals 12

    .prologue
    const/high16 v11, 0x4000

    .line 80
    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 81
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 86
    .local v7, viewWidth:F
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getHeight()I

    move-result v8

    int-to-float v6, v8

    .line 87
    .local v6, viewHeight:F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 88
    .local v4, drawableWidth:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 90
    .local v3, drawableHeight:I
    const/high16 v8, 0x42c8

    sub-float v8, v7, v8

    float-to-int v8, v8

    iput v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    .line 91
    const/high16 v5, 0x3f80

    .line 96
    .local v5, scale:F
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v8, v8

    int-to-float v9, v3

    div-float/2addr v8, v9

    iget v9, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v9, v9

    int-to-float v10, v4

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F

    .line 101
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F

    iget v9, p0, Lcom/didi/beatles/upload/BtsCropImageView;->midScale:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 102
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F

    iget v9, p0, Lcom/didi/beatles/upload/BtsCropImageView;->maxScale:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    .line 104
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F

    iput v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->midScale:F

    .line 105
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F

    iput v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->maxScale:F

    .line 116
    :cond_1
    :goto_1
    if-gt v4, v3, :cond_5

    .line 118
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    if-ge v4, v8, :cond_2

    .line 119
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 120
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v8, v8

    int-to-float v9, v4

    div-float v5, v8, v9

    .line 122
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 135
    :cond_2
    :goto_2
    int-to-float v8, v3

    cmpl-float v8, v8, v6

    if-lez v8, :cond_3

    int-to-float v8, v4

    cmpl-float v8, v8, v7

    if-lez v8, :cond_3

    .line 136
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 137
    int-to-float v8, v3

    sub-float v1, v8, v6

    .line 138
    .local v1, distanceHeight:F
    int-to-float v8, v4

    sub-float v2, v8, v7

    .line 139
    .local v2, distanceWidth:F
    cmpl-float v8, v1, v2

    if-lez v8, :cond_6

    .line 140
    int-to-float v8, v4

    div-float v5, v7, v8

    .line 144
    :goto_3
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 148
    .end local v1           #distanceHeight:F
    .end local v2           #distanceWidth:F
    :cond_3
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->baseMatrix:Landroid/graphics/Matrix;

    int-to-float v9, v4

    mul-float/2addr v9, v5

    sub-float v9, v7, v9

    div-float/2addr v9, v11

    int-to-float v10, v3

    mul-float/2addr v10, v5

    sub-float v10, v6, v10

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 150
    invoke-direct {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->resetMatrix()V

    .line 151
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->isJusted:Z

    goto/16 :goto_0

    .line 107
    :cond_4
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F

    iput v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->midScale:F

    .line 108
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->minScale:F

    mul-float/2addr v8, v11

    iput v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->maxScale:F

    goto :goto_1

    .line 127
    :cond_5
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    if-ge v3, v8, :cond_2

    .line 128
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 129
    iget v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v8, v8

    int-to-float v9, v3

    div-float v5, v8, v9

    .line 131
    iget-object v8, p0, Lcom/didi/beatles/upload/BtsCropImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_2

    .line 142
    .restart local v1       #distanceHeight:F
    .restart local v2       #distanceWidth:F
    :cond_6
    int-to-float v8, v3

    div-float v5, v6, v8

    goto :goto_3
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 5
    .parameter "matrix"

    .prologue
    const/4 v4, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 450
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 451
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropImageView;->displayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 452
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropImageView;->displayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 453
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropImageView;->displayRect:Landroid/graphics/RectF;

    .line 456
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropImageView;->displayRect:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method private postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "view"
    .parameter "runnable"

    .prologue
    .line 362
    const-wide/16 v0, 0x10

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    return-void
.end method

.method private resetMatrix()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->suppMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 468
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 467
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/beatles/upload/BtsCropImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method


# virtual methods
.method public crop(FF)Landroid/graphics/Bitmap;
    .locals 23
    .parameter "outputX"
    .parameter "outputY"

    .prologue
    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getWidth()I

    move-result v1

    int-to-float v0, v1

    move/from16 v22, v0

    .line 490
    .local v22, viewWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getHeight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v21, v0

    .line 493
    .local v21, viewHeight:F
    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/didi/beatles/upload/BtsCropImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v16

    .line 494
    .local v16, rect:Landroid/graphics/RectF;
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float v11, v1, v2

    .line 497
    .local v11, curDrawableHeight:F
    invoke-virtual/range {p0 .. p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 498
    .local v13, d:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 499
    .local v19, srcHeight:I
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 502
    .local v20, srcWidth:I
    move/from16 v0, v19

    int-to-float v1, v0

    div-float v12, v11, v1

    .line 505
    .local v12, curScale:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v1, v1

    sub-float v1, v21, v1

    const/high16 v2, 0x4000

    div-float v10, v1, v2

    .line 506
    .local v10, cropDrawableTop:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v1, v1

    sub-float v1, v22, v1

    const/high16 v2, 0x4000

    div-float v9, v1, v2

    .line 507
    .local v9, cropDrawableLeft:F
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v18, v10, v1

    .line 508
    .local v18, relativeTop:F
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v17, v9, v1

    .line 511
    .local v17, relativeLeft:F
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 512
    .local v6, m:Landroid/graphics/Matrix;
    move/from16 v0, v20

    int-to-float v1, v0

    div-float v1, p1, v1

    move/from16 v0, v19

    int-to-float v2, v0

    div-float v2, p2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 513
    .local v15, preScale:F
    invoke-virtual {v6, v15, v15}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 517
    :try_start_0
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    div-float v2, v17, v12

    float-to-int v2, v2

    div-float v3, v18, v12

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v4, v4

    div-float/2addr v4, v12

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/didi/beatles/upload/BtsCropImageView;->borderlength:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    float-to-int v5, v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 524
    :goto_0
    return-object v8

    .line 520
    :catch_0
    move-exception v14

    .line 521
    .local v14, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->drawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropImageView;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 472
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->drawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/didi/beatles/upload/BtsCropImageView;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 473
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->drawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final getScale()F
    .locals 4

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/didi/beatles/upload/BtsCropImageView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v1

    .line 375
    .local v1, rect:Landroid/graphics/RectF;
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float v0, v2, v3

    .line 376
    .local v0, curDrawableHeight:F
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 390
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 392
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 393
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 397
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 398
    invoke-virtual {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 399
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->isJusted:Z

    if-eqz v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/didi/beatles/upload/BtsCropImageView;->configPosition()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 157
    iget-object v0, p0, Lcom/didi/beatles/upload/BtsCropImageView;->multiGestureDetector:Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;

    invoke-virtual {v0, p2}, Lcom/didi/beatles/upload/BtsCropImageView$MultiGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0
.end method
