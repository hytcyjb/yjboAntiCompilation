.class Landroid/support/v4/view/ar;
.super Ljava/lang/Object;
.source "ViewCompatLollipop.java"


# direct methods
.method public static a(Landroid/view/View;Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    instance-of v0, p1, Landroid/support/v4/view/bk;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 96
    check-cast v0, Landroid/support/v4/view/bk;

    invoke-virtual {v0}, Landroid/support/v4/view/bk;->g()Landroid/view/WindowInsets;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 100
    if-eq v1, v0, :cond_0

    .line 102
    new-instance p1, Landroid/support/v4/view/bk;

    invoke-direct {p1, v1}, Landroid/support/v4/view/bk;-><init>(Landroid/view/WindowInsets;)V

    .line 105
    :cond_0
    return-object p1
.end method

.method public static a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 36
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 40
    return-void
.end method

.method static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 83
    return-void
.end method

.method static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 91
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/ab;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 71
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/support/v4/view/ar$1;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ar$1;-><init>(Landroid/support/v4/view/ab;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_0
.end method

.method public static b(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;Landroid/support/v4/view/bj;)Landroid/support/v4/view/bj;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    instance-of v0, p1, Landroid/support/v4/view/bk;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 111
    check-cast v0, Landroid/support/v4/view/bk;

    invoke-virtual {v0}, Landroid/support/v4/view/bk;->g()Landroid/view/WindowInsets;

    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 115
    if-eq v1, v0, :cond_0

    .line 117
    new-instance p1, Landroid/support/v4/view/bk;

    invoke-direct {p1, v1}, Landroid/support/v4/view/bk;-><init>(Landroid/view/WindowInsets;)V

    .line 120
    :cond_0
    return-object p1
.end method

.method public static c(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    return v0
.end method

.method static d(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method static e(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    .line 137
    return-void
.end method

.method public static h(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v0

    return v0
.end method
