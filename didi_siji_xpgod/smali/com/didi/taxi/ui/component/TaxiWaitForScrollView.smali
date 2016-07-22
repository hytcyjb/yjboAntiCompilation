.class public Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;
.super Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;
.source "TaxiWaitForScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    return-void
.end method

.method private getChildTop(Landroid/view/View;)I
    .locals 3
    .parameter "childView"

    .prologue
    .line 48
    move-object v1, p1

    .line 49
    .local v1, v:Landroid/view/View;
    const/4 v0, 0x0

    .line 51
    .local v0, top:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #v:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 54
    .restart local v1       #v:Landroid/view/View;
    if-ne v1, p0, :cond_0

    .line 55
    return v0
.end method


# virtual methods
.method public isScrolling()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->mScrollState:Lcom/didi/common/ui/component/scroll/ScrollState;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/scroll/ScrollState;->shouldScroll()Z

    move-result v0

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 0
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/component/scroll/ScrollableFrameLayout;->measureChild(Landroid/view/View;II)V

    .line 27
    return-void
.end method

.method public moveBack()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const/16 v0, 0x190

    invoke-virtual {p0, v1, v1, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->smoothScrollTo(III)V

    .line 63
    return-void
.end method

.method public moveChildToTop(I)V
    .locals 1
    .parameter "childId"

    .prologue
    .line 35
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->moveChildToTop(II)V

    .line 36
    return-void
.end method

.method public moveChildToTop(II)V
    .locals 4
    .parameter "childId"
    .parameter "time"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, childView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->getChildTop(Landroid/view/View;)I

    move-result v1

    .line 42
    .local v1, needScrollY:I
    if-lez v1, :cond_0

    .line 43
    const/4 v2, 0x0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3, p2}, Lcom/didi/taxi/ui/component/TaxiWaitForScrollView;->smoothScrollBy(III)V

    .line 45
    :cond_0
    return-void
.end method
