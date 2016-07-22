.class public Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;
.super Landroid/widget/LinearLayout;
.source "BtsUserRateContainerView.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDividerHeight:I

.field private final mTransparentColor:I

.field private mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object p1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mContext:Landroid/content/Context;

    .line 28
    iget-object v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 29
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mTransparentColor:I

    .line 30
    iget v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mTransparentColor:I

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->setBackgroundColor(I)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->setOrientation(I)V

    .line 32
    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mDividerHeight:I

    .line 33
    return-void
.end method


# virtual methods
.method public setDatas([Lcom/didi/beatles/model/order/BtsUserRate;)V
    .locals 7
    .parameter "userRates"

    .prologue
    const/4 v6, -0x1

    .line 36
    iput-object p1, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    .line 37
    invoke-virtual {p0}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->removeAllViews()V

    .line 38
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    if-nez v5, :cond_1

    .line 54
    :cond_0
    return-void

    .line 40
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 41
    new-instance v4, Lcom/didi/beatles/ui/userrate/BtsUserRateView;

    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/didi/beatles/ui/userrate/BtsUserRateView;-><init>(Landroid/content/Context;)V

    .line 42
    .local v4, view:Lcom/didi/beatles/ui/userrate/BtsUserRateView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v4, v3}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/didi/beatles/ui/userrate/BtsUserRateView;->setItem(Lcom/didi/beatles/model/order/BtsUserRate;)V

    .line 46
    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_2

    .line 47
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mDividerHeight:I

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v0, dividerLp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/view/View;

    iget-object v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, dividerView:Landroid/view/View;
    iget v5, p0, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->mTransparentColor:I

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/didi/beatles/ui/userrate/BtsUserRateContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .end local v0           #dividerLp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #dividerView:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
