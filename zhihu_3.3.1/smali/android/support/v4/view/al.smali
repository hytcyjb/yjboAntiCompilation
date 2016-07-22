.class Landroid/support/v4/view/al;
.super Ljava/lang/Object;
.source "ViewCompatHC.java"


# direct methods
.method public static a(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public static a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-static {p0, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method public static a(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method static a()J
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 95
    return-void
.end method

.method static a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 168
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 169
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/al;->j(Landroid/view/View;)V

    .line 171
    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 35
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 155
    return-void
.end method

.method public static b(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 99
    return-void
.end method

.method static b(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 176
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/al;->j(Landroid/view/View;)V

    .line 179
    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 159
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    return v0
.end method

.method public static c(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 103
    return-void
.end method

.method public static d(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 111
    return-void
.end method

.method public static e(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 127
    return-void
.end method

.method public static f(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 131
    return-void
.end method

.method public static g(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public static h(Landroid/view/View;)F
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public static i(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 151
    return-void
.end method

.method private static j(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 183
    const/high16 v1, 0x3f80

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 184
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 185
    return-void
.end method
