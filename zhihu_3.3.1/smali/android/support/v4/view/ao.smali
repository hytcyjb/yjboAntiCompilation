.class Landroid/support/v4/view/ao;
.super Ljava/lang/Object;
.source "ViewCompatJB.java"


# direct methods
.method public static a(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 59
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidate(IIII)V

    .line 43
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 51
    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 38
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    .line 83
    return-void
.end method

.method public static h(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    return v0
.end method
