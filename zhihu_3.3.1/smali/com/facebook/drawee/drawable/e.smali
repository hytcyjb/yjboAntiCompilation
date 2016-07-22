.class public Lcom/facebook/drawee/drawable/e;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# direct methods
.method public static a(I)I
    .locals 2
    .parameter

    .prologue
    .line 94
    ushr-int/lit8 v0, p0, 0x18

    .line 95
    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 96
    const/4 v0, -0x1

    .line 100
    :goto_0
    return v0

    .line 97
    :cond_0
    if-nez v0, :cond_1

    .line 98
    const/4 v0, -0x2

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public static a(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0xffffff

    .line 76
    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    .line 85
    :goto_0
    return p0

    .line 79
    :cond_0
    if-nez p1, :cond_1

    .line 80
    and-int/2addr p0, v2

    goto :goto_0

    .line 82
    :cond_1
    shr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    .line 83
    ushr-int/lit8 v1, p0, 0x18

    .line 84
    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 85
    shl-int/lit8 v0, v0, 0x18

    and-int v1, p0, v2

    or-int p0, v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;Lcom/facebook/drawee/drawable/o;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 63
    instance-of v0, p0, Lcom/facebook/drawee/drawable/n;

    if-eqz v0, :cond_0

    .line 64
    check-cast p0, Lcom/facebook/drawee/drawable/n;

    invoke-interface {p0, p2}, Lcom/facebook/drawee/drawable/n;->a(Lcom/facebook/drawee/drawable/o;)V

    .line 67
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 35
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 36
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Lcom/facebook/drawee/drawable/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/drawable/d;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
