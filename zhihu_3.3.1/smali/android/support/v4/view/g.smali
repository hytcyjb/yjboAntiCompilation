.class Landroid/support/v4/view/g;
.super Ljava/lang/Object;
.source "GravityCompatJellybeanMr1.java"


# direct methods
.method public static a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method

.method public static a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-static/range {p0 .. p5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 32
    return-void
.end method
