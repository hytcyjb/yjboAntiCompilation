.class public Lcom/example/wheel/WheelView;
.super Lcom/example/scroll/ScrollableView;
.source "WheelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/example/wheel/adapter/WheelAdapter;

.field private contentHeight:F

.field private itemHeight:F

.field private lastEventY:F

.field private linePaint:Landroid/graphics/Paint;

.field private lineSplitHeight:F

.field private scrollY:F

.field private secondRectBottom:F

.field private secondRectTop:F

.field private splitLineWidth:F

.field private textBaseY:F

.field private textGravity:I

.field private textPaintFirst:Landroid/graphics/Paint;

.field private textPaintSecond:Landroid/graphics/Paint;

.field private textPaintThird:Landroid/graphics/Paint;

.field private textSize:F

.field private thirdRectBottom:F

.field private thirdRectTop:F

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/example/scroll/ScrollableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-direct {p0, p2}, Lcom/example/wheel/WheelView;->initAttrs(Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/example/wheel/WheelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/example/wheel/WheelView;->scrollToRightPosition()V

    return-void
.end method

.method private computeCenterRect()V
    .locals 3

    .prologue
    const/high16 v2, 0x4000

    .line 174
    iget-object v0, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v0}, Lcom/example/wheel/adapter/WheelAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/example/wheel/WheelView;->textSize:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/example/wheel/WheelView;->thirdRectTop:F

    .line 177
    iget v0, p0, Lcom/example/wheel/WheelView;->thirdRectTop:F

    iget v1, p0, Lcom/example/wheel/WheelView;->textSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/example/wheel/WheelView;->lineSplitHeight:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/example/wheel/WheelView;->thirdRectBottom:F

    .line 178
    iget v0, p0, Lcom/example/wheel/WheelView;->thirdRectTop:F

    iget v1, p0, Lcom/example/wheel/WheelView;->itemHeight:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/example/wheel/WheelView;->secondRectTop:F

    .line 179
    iget v0, p0, Lcom/example/wheel/WheelView;->thirdRectBottom:F

    iget v1, p0, Lcom/example/wheel/WheelView;->itemHeight:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/example/wheel/WheelView;->secondRectBottom:F

    goto :goto_0
.end method

.method private computeTextX(FIF)F
    .locals 2
    .parameter "maxWidth"
    .parameter "px"
    .parameter "textWidth"

    .prologue
    const/high16 v1, 0x4000

    .line 160
    iget v0, p0, Lcom/example/wheel/WheelView;->textGravity:I

    if-nez v0, :cond_0

    .line 161
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    div-float v1, p3, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 162
    :goto_0
    return v0

    :cond_0
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    div-float v1, p1, v1

    sub-float/2addr v0, v1

    add-float/2addr v0, p1

    sub-float/2addr v0, p3

    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method private drawSplitLine(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 131
    iget v2, p0, Lcom/example/wheel/WheelView;->thirdRectTop:F

    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lcom/example/wheel/WheelView;->thirdRectTop:F

    iget-object v5, p0, Lcom/example/wheel/WheelView;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    iget v2, p0, Lcom/example/wheel/WheelView;->thirdRectBottom:F

    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lcom/example/wheel/WheelView;->thirdRectBottom:F

    iget-object v5, p0, Lcom/example/wheel/WheelView;->linePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 133
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 142
    iget-object v8, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v8, p2}, Lcom/example/wheel/adapter/WheelAdapter;->getMaxWidth(Landroid/graphics/Paint;)F

    move-result v2

    .line 143
    .local v2, maxWidth:F
    iget-object v8, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v8}, Lcom/example/wheel/adapter/WheelAdapter;->getCount()I

    move-result v0

    .line 144
    .local v0, count:I
    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getMeasuredWidth()I

    move-result v3

    .line 145
    .local v3, px:I
    const/4 v5, 0x0

    .line 146
    .local v5, textWidth:F
    const/4 v6, 0x0

    .line 147
    .local v6, x:F
    const/4 v7, 0x0

    .line 148
    .local v7, y:F
    const-string v4, ""

    .line 149
    .local v4, text:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 150
    iget-object v8, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v8, v1}, Lcom/example/wheel/adapter/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 152
    invoke-direct {p0, v2, v3, v5}, Lcom/example/wheel/WheelView;->computeTextX(FIF)F

    move-result v6

    .line 153
    iget v8, p0, Lcom/example/wheel/WheelView;->textBaseY:F

    iget v9, p0, Lcom/example/wheel/WheelView;->scrollY:F

    add-float v7, v8, v9

    .line 154
    invoke-virtual {p1, v4, v6, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 155
    const/4 v8, 0x0

    iget v9, p0, Lcom/example/wheel/WheelView;->itemHeight:F

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method private fling()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 234
    iget-object v0, p0, Lcom/example/wheel/WheelView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0, v3, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 235
    iget-object v0, p0, Lcom/example/wheel/WheelView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 236
    .local v8, velocityY:F
    invoke-direct {p0}, Lcom/example/wheel/WheelView;->getCurrentY()I

    move-result v2

    .line 237
    .local v2, currentY:I
    const/16 v5, 0xfa

    .line 238
    .local v5, duration:I
    const/high16 v0, 0x447a

    div-float v0, v8, v0

    int-to-float v3, v5

    mul-float/2addr v0, v3

    float-to-int v4, v0

    .line 239
    .local v4, distanceY:I
    cmpl-float v0, v8, v10

    if-lez v0, :cond_0

    const/4 v6, -0x1

    .line 240
    .local v6, direction:I
    :goto_0
    cmpl-float v0, v8, v10

    if-lez v0, :cond_1

    iget v0, p0, Lcom/example/wheel/WheelView;->scrollY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_1
    float-to-int v7, v0

    .line 241
    .local v7, maxDistance:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v4, v6, v0

    .line 242
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/example/wheel/WheelView;->scrollToRightPosition()V

    .line 248
    :goto_2
    return-void

    .line 239
    .end local v6           #direction:I
    .end local v7           #maxDistance:I
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 240
    .restart local v6       #direction:I
    :cond_1
    iget v0, p0, Lcom/example/wheel/WheelView;->contentHeight:F

    iget v3, p0, Lcom/example/wheel/WheelView;->scrollY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v0, v3

    goto :goto_1

    .restart local v7       #maxDistance:I
    :cond_2
    move-object v0, p0

    move v3, v1

    .line 246
    invoke-virtual/range {v0 .. v5}, Lcom/example/wheel/WheelView;->smoothScrollBy(IIIII)V

    .line 247
    invoke-direct {p0, v5}, Lcom/example/wheel/WheelView;->scrollToRightPositionDelayed(I)V

    goto :goto_2
.end method

.method private getCurrentY()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/example/wheel/WheelView;->scrollY:F

    neg-float v0, v0

    float-to-int v0, v0

    return v0
.end method

.method private getItemPosition(I)F
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 314
    iget v0, p0, Lcom/example/wheel/WheelView;->itemHeight:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    return v0
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "attrs"

    .prologue
    const/4 v9, 0x1

    const/high16 v8, -0x4080

    const/4 v7, -0x1

    .line 62
    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/sdu/didi/psnger/R$styleable;->wheel:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 64
    .local v2, textColorFirst:I
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 65
    .local v3, textColorSecond:I
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 66
    .local v4, textColorThird:I
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/example/wheel/WheelView;->textSize:F

    .line 67
    iget v5, p0, Lcom/example/wheel/WheelView;->textSize:F

    invoke-static {v5}, Lcom/didi/common/util/WindowUtil;->computeScaledSize(F)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/example/wheel/WheelView;->textSize:F

    .line 68
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 69
    .local v1, lineColor:I
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/example/wheel/WheelView;->splitLineWidth:F

    .line 70
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Lcom/example/wheel/WheelView;->lineSplitHeight:F

    .line 71
    iget v5, p0, Lcom/example/wheel/WheelView;->lineSplitHeight:F

    invoke-static {v5}, Lcom/didi/common/util/WindowUtil;->computeScaledSize(F)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/example/wheel/WheelView;->lineSplitHeight:F

    .line 72
    iget v5, p0, Lcom/example/wheel/WheelView;->textSize:F

    iget v6, p0, Lcom/example/wheel/WheelView;->lineSplitHeight:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/example/wheel/WheelView;->itemHeight:F

    .line 73
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/example/wheel/WheelView;->textGravity:I

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5, v9}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v5, p0, Lcom/example/wheel/WheelView;->textPaintFirst:Landroid/graphics/Paint;

    .line 77
    iget-object v5, p0, Lcom/example/wheel/WheelView;->textPaintFirst:Landroid/graphics/Paint;

    iget v6, p0, Lcom/example/wheel/WheelView;->textSize:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    iget-object v5, p0, Lcom/example/wheel/WheelView;->textPaintFirst:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    new-instance v5, Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/example/wheel/WheelView;->textPaintFirst:Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v5, p0, Lcom/example/wheel/WheelView;->textPaintSecond:Landroid/graphics/Paint;

    .line 80
    new-instance v5, Landroid/text/TextPaint;

    iget-object v6, p0, Lcom/example/wheel/WheelView;->textPaintFirst:Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v5, p0, Lcom/example/wheel/WheelView;->textPaintThird:Landroid/graphics/Paint;

    .line 81
    iget-object v5, p0, Lcom/example/wheel/WheelView;->textPaintSecond:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object v5, p0, Lcom/example/wheel/WheelView;->textPaintThird:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/example/wheel/WheelView;->linePaint:Landroid/graphics/Paint;

    .line 84
    iget v5, p0, Lcom/example/wheel/WheelView;->splitLineWidth:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 85
    iget-object v5, p0, Lcom/example/wheel/WheelView;->linePaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/example/wheel/WheelView;->splitLineWidth:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    :cond_0
    iget-object v5, p0, Lcom/example/wheel/WheelView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    return-void
.end method

.method private makeSureScrollVisible()V
    .locals 2

    .prologue
    .line 273
    iget v0, p0, Lcom/example/wheel/WheelView;->scrollY:F

    iget v1, p0, Lcom/example/wheel/WheelView;->lineSplitHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 274
    iget v0, p0, Lcom/example/wheel/WheelView;->lineSplitHeight:F

    iput v0, p0, Lcom/example/wheel/WheelView;->scrollY:F

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget v0, p0, Lcom/example/wheel/WheelView;->scrollY:F

    iget v1, p0, Lcom/example/wheel/WheelView;->contentHeight:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 276
    iget v0, p0, Lcom/example/wheel/WheelView;->contentHeight:F

    neg-float v0, v0

    iput v0, p0, Lcom/example/wheel/WheelView;->scrollY:F

    goto :goto_0
.end method

.method private scrollToRightPosition()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getCurrentItemIndex()I

    move-result v6

    .line 262
    .local v6, index:I
    invoke-direct {p0, v6}, Lcom/example/wheel/WheelView;->getItemPosition(I)F

    move-result v0

    float-to-int v4, v0

    .line 263
    .local v4, position:I
    iget v0, p0, Lcom/example/wheel/WheelView;->scrollY:F

    float-to-int v0, v0

    neg-int v2, v0

    const/16 v5, 0xfa

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/example/wheel/WheelView;->smoothScrollTo(IIIII)V

    .line 264
    return-void
.end method

.method private scrollToRightPositionDelayed(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 251
    new-instance v0, Lcom/example/wheel/WheelView$1;

    invoke-direct {v0, p0}, Lcom/example/wheel/WheelView$1;-><init>(Lcom/example/wheel/WheelView;)V

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/example/wheel/WheelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    return-void
.end method


# virtual methods
.method public computeTextBaseY()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v1}, Lcom/example/wheel/adapter/WheelAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v1}, Lcom/example/wheel/adapter/WheelAdapter;->getCount()I

    move-result v0

    .line 169
    .local v0, count:I
    int-to-float v1, v0

    iget v2, p0, Lcom/example/wheel/WheelView;->textSize:F

    mul-float/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/example/wheel/WheelView;->lineSplitHeight:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/example/wheel/WheelView;->contentHeight:F

    .line 170
    iget-object v1, p0, Lcom/example/wheel/WheelView;->textPaintFirst:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/example/wheel/WheelView;->textSize:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/example/wheel/WheelView;->textBaseY:F

    goto :goto_0
.end method

.method public doScrollTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 268
    int-to-float v0, p2

    iput v0, p0, Lcom/example/wheel/WheelView;->scrollY:F

    .line 269
    invoke-direct {p0}, Lcom/example/wheel/WheelView;->makeSureScrollVisible()V

    .line 270
    return-void
.end method

.method public getCurrentItemIndex()I
    .locals 6

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, position:I
    iget v3, p0, Lcom/example/wheel/WheelView;->scrollY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 287
    const/4 v0, 0x0

    move v1, v0

    .line 296
    .end local v0           #position:I
    .local v1, position:I
    :goto_0
    return v1

    .line 290
    .end local v1           #position:I
    .restart local v0       #position:I
    :cond_0
    iget v3, p0, Lcom/example/wheel/WheelView;->scrollY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/example/wheel/WheelView;->itemHeight:F

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 291
    iget v3, p0, Lcom/example/wheel/WheelView;->scrollY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/example/wheel/WheelView;->itemHeight:F

    rem-float/2addr v3, v4

    float-to-int v2, v3

    .line 292
    .local v2, reminer:I
    int-to-float v3, v2

    iget v4, p0, Lcom/example/wheel/WheelView;->itemHeight:F

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 293
    add-int/lit8 v0, v0, 0x1

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v3}, Lcom/example/wheel/adapter/WheelAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_2

    .line 295
    iget-object v3, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v3}, Lcom/example/wheel/adapter/WheelAdapter;->getCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :cond_2
    move v1, v0

    .line 296
    .end local v0           #position:I
    .restart local v1       #position:I
    goto :goto_0
.end method

.method public getCurrentItemString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getCurrentItemIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/example/wheel/adapter/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentValue()I
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getCurrentItemIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/example/wheel/adapter/WheelAdapter;->getValue(I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xc8

    const/16 v6, -0xc8

    .line 191
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 192
    .local v4, stepList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/example/scroll/Step;>;"
    const/16 v5, 0x7d0

    invoke-static {v7, v7, v5}, Lcom/example/scroll/Step;->createDistanceStep(III)Lcom/example/scroll/Step;

    move-result-object v0

    .line 193
    .local v0, step1:Lcom/example/scroll/Step;
    invoke-static {v6, v6}, Lcom/example/scroll/Step;->createDistanceStep(II)Lcom/example/scroll/Step;

    move-result-object v1

    .line 194
    .local v1, step2:Lcom/example/scroll/Step;
    invoke-static {v7, v6}, Lcom/example/scroll/Step;->createDistanceStep(II)Lcom/example/scroll/Step;

    move-result-object v2

    .line 195
    .local v2, step3:Lcom/example/scroll/Step;
    invoke-static {v8, v8}, Lcom/example/scroll/Step;->createDistanceStep(II)Lcom/example/scroll/Step;

    move-result-object v3

    .line 196
    .local v3, step4:Lcom/example/scroll/Step;
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p0, v4}, Lcom/example/wheel/WheelView;->move(Ljava/util/LinkedList;)V

    .line 201
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 106
    iget-object v2, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v2}, Lcom/example/wheel/adapter/WheelAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-direct {p0, p1}, Lcom/example/wheel/WheelView;->drawSplitLine(Landroid/graphics/Canvas;)V

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    iget-object v2, p0, Lcom/example/wheel/WheelView;->textPaintFirst:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2}, Lcom/example/wheel/WheelView;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/example/wheel/WheelView;->secondRectTop:F

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/example/wheel/WheelView;->secondRectBottom:F

    float-to-int v4, v4

    invoke-direct {v0, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    .local v0, secondRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 115
    iget-object v2, p0, Lcom/example/wheel/WheelView;->textPaintSecond:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2}, Lcom/example/wheel/WheelView;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/example/wheel/WheelView;->thirdRectTop:F

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/example/wheel/WheelView;->thirdRectBottom:F

    float-to-int v4, v4

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 120
    .local v1, thirdRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 121
    iget-object v2, p0, Lcom/example/wheel/WheelView;->textPaintThird:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2}, Lcom/example/wheel/WheelView;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onInit()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/example/scroll/ScrollableView;->onInit()V

    .line 93
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/example/wheel/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 94
    invoke-virtual {p0, p0}, Lcom/example/wheel/WheelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/example/wheel/WheelView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 96
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Lcom/example/scroll/ScrollableView;->onMeasure(II)V

    .line 185
    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->computeTextBaseY()V

    .line 186
    invoke-direct {p0}, Lcom/example/wheel/WheelView;->computeCenterRect()V

    .line 187
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/example/scroll/ScrollableView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 207
    .local v0, action:I
    iget-object v2, p0, Lcom/example/wheel/WheelView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 208
    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/example/wheel/WheelView;->lastEventY:F

    .line 225
    const/4 v2, 0x1

    return v2

    .line 210
    :pswitch_0
    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->stopScroll()V

    goto :goto_0

    .line 213
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/example/wheel/WheelView;->lastEventY:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 214
    .local v1, dy:I
    iget v2, p0, Lcom/example/wheel/WheelView;->scrollY:F

    int-to-float v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/example/wheel/WheelView;->scrollY:F

    .line 215
    invoke-direct {p0}, Lcom/example/wheel/WheelView;->makeSureScrollVisible()V

    .line 216
    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->render()V

    goto :goto_0

    .line 221
    .end local v1           #dy:I
    :pswitch_2
    invoke-direct {p0}, Lcom/example/wheel/WheelView;->fling()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public select(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/example/wheel/WheelView;->getItemPosition(I)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/example/wheel/WheelView;->scrollY:F

    .line 319
    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->render()V

    .line 320
    return-void
.end method

.method public setAdapter(Lcom/example/wheel/adapter/WheelAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    .line 100
    invoke-virtual {p0}, Lcom/example/wheel/WheelView;->render()V

    .line 101
    iget-object v0, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v0, p0}, Lcom/example/wheel/adapter/WheelAdapter;->setWheelView(Lcom/example/wheel/WheelView;)V

    .line 102
    return-void
.end method

.method public setCurrentValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 323
    iget-object v1, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v1, p1}, Lcom/example/wheel/adapter/WheelAdapter;->getValueIndex(I)I

    move-result v0

    .line 324
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/example/wheel/WheelView;->select(I)V

    .line 325
    return-void
.end method

.method public setStartValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v0, p1}, Lcom/example/wheel/adapter/WheelAdapter;->setStartValue(I)V

    .line 329
    iget-object v0, p0, Lcom/example/wheel/WheelView;->adapter:Lcom/example/wheel/adapter/WheelAdapter;

    invoke-virtual {v0}, Lcom/example/wheel/adapter/WheelAdapter;->notifyChanged()V

    .line 330
    return-void
.end method
