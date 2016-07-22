.class public Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;
.super Landroid/widget/LinearLayout;
.source "BtsUserRateChoiceView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawablePadding:I

.field private final mDrawables:[Landroid/graphics/drawable/Drawable;

.field private final mHeight:I

.field private mLastChoice:I

.field private final mRoundDimen:I

.field private final mScroller:Landroid/widget/Scroller;

.field private final mSelectPaint:Landroid/graphics/Paint;

.field private final mSelectRectF:Landroid/graphics/RectF;

.field private mTextViews:[Landroid/widget/TextView;

.field private final mTransparentColor:I

.field private mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-object p1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mContext:Landroid/content/Context;

    .line 49
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mSelectRectF:Landroid/graphics/RectF;

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mSelectPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mScroller:Landroid/widget/Scroller;

    .line 52
    const v1, 0x7f020062

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->setBackgroundResource(I)V

    .line 53
    iget-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mSelectPaint:Landroid/graphics/Paint;

    const v2, 0x7f07002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const v3, 0x7f02006a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 59
    iget-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020067

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 60
    iget-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x7f02006d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 61
    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTransparentColor:I

    .line 62
    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mRoundDimen:I

    .line 63
    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mHeight:I

    .line 64
    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mDrawablePadding:I

    .line 65
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mSelectRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    invoke-virtual {p0}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 105
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mSelectRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mRoundDimen:I

    int-to-float v1, v1

    iget v2, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mRoundDimen:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mSelectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 106
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 108
    invoke-virtual {p0}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->invalidate()V

    .line 112
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 113
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    iget v0, v0, Lcom/didi/beatles/model/order/BtsUserRate;->mChoice:I

    iput v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mLastChoice:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/didi/beatles/model/order/BtsUserRate;->mChoice:I

    .line 122
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    iget v1, v1, Lcom/didi/beatles/model/order/BtsUserRate;->mChoice:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 123
    iget-object v0, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mLastChoice:I

    invoke-virtual {p0}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->getWidth()I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x3

    iget-object v3, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    iget v3, v3, Lcom/didi/beatles/model/order/BtsUserRate;->mChoice:I

    iget v4, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mLastChoice:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3

    const/16 v5, 0x190

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 124
    invoke-virtual {p0}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->invalidate()V

    goto :goto_0
.end method

.method public setItem(Lcom/didi/beatles/model/order/BtsUserRate;)V
    .locals 11
    .parameter "userRate"

    .prologue
    const/16 v10, 0x11

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 68
    iput-object p1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    .line 69
    invoke-virtual {p0}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->removeAllViews()V

    .line 70
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    iget-object v5, v5, Lcom/didi/beatles/model/order/BtsUserRate;->mRateDetails:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    iget-object v5, v5, Lcom/didi/beatles/model/order/BtsUserRate;->mRateDetails:[Ljava/lang/String;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    iget-object v5, v5, Lcom/didi/beatles/model/order/BtsUserRate;->mRateDetails:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Landroid/widget/TextView;

    iput-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    .line 73
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    iget-object v5, v5, Lcom/didi/beatles/model/order/BtsUserRate;->mRateDetails:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 74
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07004a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 75
    .local v0, colorState:Landroid/content/res/ColorStateList;
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .local v3, relative:Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 77
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v1

    .line 78
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    const/high16 v6, 0x4140

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    iget v6, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mDrawablePadding:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 80
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 81
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    iget-object v6, v6, Lcom/didi/beatles/model/order/BtsUserRate;->mRateDetails:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    const/4 v5, 0x3

    if-lt v1, v5, :cond_2

    .line 84
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 88
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v4, textLp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    iget v6, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mHeight:I

    const/high16 v7, 0x3f80

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 95
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v3, v2}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 86
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #textLp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 97
    .end local v0           #colorState:Landroid/content/res/ColorStateList;
    .end local v3           #relative:Landroid/widget/RelativeLayout;
    :cond_3
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    iget v5, v5, Lcom/didi/beatles/model/order/BtsUserRate;->mChoice:I

    iput v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mLastChoice:I

    .line 98
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mTextViews:[Landroid/widget/TextView;

    iget-object v6, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->mUserRate:Lcom/didi/beatles/model/order/BtsUserRate;

    iget v6, v6, Lcom/didi/beatles/model/order/BtsUserRate;->mChoice:I

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/didi/beatles/ui/userrate/BtsUserRateChoiceView;->invalidate()V

    goto/16 :goto_0
.end method
