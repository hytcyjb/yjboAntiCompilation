.class Landroid/support/v4/view/aq;
.super Ljava/lang/Object;
.source "ViewCompatKitKat.java"


# direct methods
.method public static a(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 31
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method
