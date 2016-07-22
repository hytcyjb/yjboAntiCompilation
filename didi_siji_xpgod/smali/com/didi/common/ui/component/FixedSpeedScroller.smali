.class public Lcom/didi/common/ui/component/FixedSpeedScroller;
.super Landroid/widget/Scroller;
.source "FixedSpeedScroller.java"


# instance fields
.field private mDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 15
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/didi/common/ui/component/FixedSpeedScroller;->mDuration:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 15
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/didi/common/ui/component/FixedSpeedScroller;->mDuration:I

    .line 23
    return-void
.end method


# virtual methods
.method public setFixedDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 38
    iput p1, p0, Lcom/didi/common/ui/component/FixedSpeedScroller;->mDuration:I

    .line 39
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 34
    iget v5, p0, Lcom/didi/common/ui/component/FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 35
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 28
    iget v5, p0, Lcom/didi/common/ui/component/FixedSpeedScroller;->mDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 29
    return-void
.end method
