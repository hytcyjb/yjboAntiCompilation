.class Landroid/support/v4/widget/z;
.super Ljava/lang/Object;
.source "ScrollerCompatIcs.java"


# direct methods
.method public static a(Ljava/lang/Object;)F
    .locals 1
    .parameter

    .prologue
    .line 26
    check-cast p0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method
