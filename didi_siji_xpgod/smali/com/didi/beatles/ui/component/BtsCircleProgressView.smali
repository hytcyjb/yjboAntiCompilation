.class public Lcom/didi/beatles/ui/component/BtsCircleProgressView;
.super Landroid/view/View;
.source "BtsCircleProgressView.java"


# instance fields
.field private mOval:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mStrokeWidth:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->instantiate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributeset"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->instantiate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attributeset"
    .parameter "i"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->instantiate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dpValue"

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 72
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private instantiate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const/4 v1, 0x0

    iput v1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mProgress:I

    .line 35
    const/16 v0, 0x41

    .line 37
    .local v0, size:I
    const v1, 0x40266666

    invoke-static {p1, v1}, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mStrokeWidth:I

    .line 38
    const/high16 v1, 0x4338

    invoke-static {p1, v1}, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 40
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mStrokeWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mStrokeWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    int-to-float v4, v0

    int-to-float v5, v0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mOval:Landroid/graphics/RectF;

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mPaint:Landroid/graphics/Paint;

    .line 42
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45
    iget v1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mViewWidth:I

    .line 46
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->setBackgroundColor(I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x4387

    const/4 v4, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 17
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mOval:Landroid/graphics/RectF;

    const/high16 v3, 0x43b4

    iget-object v5, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 20
    iget v0, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mProgress:I

    if-lez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 22
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mProgress:I

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    iget-object v5, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 25
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 51
    iget v0, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mViewWidth:I

    iget v1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mViewWidth:I

    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->setMeasuredDimension(II)V

    .line 52
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 28
    iput p1, p0, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->mProgress:I

    .line 29
    invoke-virtual {p0}, Lcom/didi/beatles/ui/component/BtsCircleProgressView;->invalidate()V

    .line 30
    return-void
.end method
