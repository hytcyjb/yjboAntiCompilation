.class public Lcom/didi/common/ui/component/scroll/ScrollState;
.super Ljava/lang/Object;
.source "ScrollState.java"


# instance fields
.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/widget/Scroller;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 2
    .parameter "interpolator"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/widget/Scroller;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    .line 24
    return-void
.end method


# virtual methods
.method public getCurrX()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public getFinalX()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public getFinalY()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public setScrollParams(II)V
    .locals 5
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    neg-int v3, p1

    neg-int v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 96
    return-void
.end method

.method public setScrollParams(III)V
    .locals 6
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    neg-int v3, p1

    neg-int v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 113
    return-void
.end method

.method public setScrollParams(IIIII)V
    .locals 6
    .parameter "fromX"
    .parameter "fromY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p3

    neg-int v4, p4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 130
    return-void
.end method

.method public setStoped()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 137
    return-void
.end method

.method public shouldScroll()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/didi/common/ui/component/scroll/ScrollState;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method
