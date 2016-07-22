.class public Lcom/didi/common/ui/component/SimpleScrollView;
.super Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;
.source "SimpleScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    return-void
.end method

.method private getChildTop(Landroid/view/View;)I
    .locals 3
    .parameter "childView"

    .prologue
    .line 76
    move-object v1, p1

    .line 77
    .local v1, v:Landroid/view/View;
    const/4 v0, 0x0

    .line 79
    .local v0, top:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #v:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 82
    .restart local v1       #v:Landroid/view/View;
    if-ne v1, p0, :cond_0

    .line 83
    return v0
.end method


# virtual methods
.method public isScrolling()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/common/ui/component/SimpleScrollView;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/scroll/ScrollState;->shouldScroll()Z

    move-result v0

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 37
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/didi/common/ui/component/SimpleScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/didi/common/ui/component/SimpleScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/didi/common/ui/component/SimpleScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 39
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 41
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 42
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 50
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/didi/common/ui/component/SimpleScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/didi/common/ui/component/SimpleScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/didi/common/ui/component/SimpleScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 52
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 54
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 55
    return-void
.end method

.method public moveBack()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    const/16 v0, 0x190

    invoke-virtual {p0, v1, v1, v0}, Lcom/didi/common/ui/component/SimpleScrollView;->smoothScrollTo(III)V

    .line 91
    return-void
.end method

.method public moveChildToTop(I)V
    .locals 1
    .parameter "childId"

    .prologue
    .line 63
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/didi/common/ui/component/SimpleScrollView;->moveChildToTop(II)V

    .line 64
    return-void
.end method

.method public moveChildToTop(II)V
    .locals 4
    .parameter "childId"
    .parameter "time"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/component/SimpleScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, childView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/didi/common/ui/component/SimpleScrollView;->getChildTop(Landroid/view/View;)I

    move-result v1

    .line 70
    .local v1, needScrollY:I
    if-lez v1, :cond_0

    .line 71
    const/4 v2, 0x0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3, p2}, Lcom/didi/common/ui/component/SimpleScrollView;->smoothScrollBy(III)V

    .line 73
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->onMeasure(II)V

    .line 28
    return-void
.end method
