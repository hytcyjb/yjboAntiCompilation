.class public Lcom/didi/common/ui/component/RelativeLayoutScrollView;
.super Lcom/didi/common/ui/component/scroll/ScrollableRelativeLayout;
.source "RelativeLayoutScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/didi/common/ui/component/scroll/ScrollableRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/component/scroll/ScrollableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/ui/component/scroll/ScrollableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    return-void
.end method

.method private getChildTop(Landroid/view/View;)I
    .locals 3
    .parameter "childView"

    .prologue
    .line 39
    move-object v1, p1

    .line 40
    .local v1, v:Landroid/view/View;
    const/4 v0, 0x0

    .line 42
    .local v0, top:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1           #v:Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 45
    .restart local v1       #v:Landroid/view/View;
    if-ne v1, p0, :cond_0

    .line 46
    return v0
.end method


# virtual methods
.method public moveBack()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const/16 v0, 0x3e8

    invoke-virtual {p0, v1, v1, v0}, Lcom/didi/common/ui/component/RelativeLayoutScrollView;->smoothScrollTo(III)V

    .line 54
    return-void
.end method

.method public moveChildToTop(I)V
    .locals 5
    .parameter "childId"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/didi/common/ui/component/RelativeLayoutScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, childView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/didi/common/ui/component/RelativeLayoutScrollView;->getChildTop(Landroid/view/View;)I

    move-result v1

    .line 33
    .local v1, needScrollY:I
    if-lez v1, :cond_0

    .line 34
    const/4 v2, 0x0

    neg-int v3, v1

    const/16 v4, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/didi/common/ui/component/RelativeLayoutScrollView;->smoothScrollBy(III)V

    .line 36
    :cond_0
    return-void
.end method
