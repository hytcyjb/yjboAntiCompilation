.class Landroid/support/v4/b/a/n;
.super Landroid/support/v4/b/a/m;
.source "DrawableWrapperLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/b/a/n$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v4/b/a/m;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v4/b/a/m;-><init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V

    .line 39
    return-void
.end method


# virtual methods
.method b()Landroid/support/v4/b/a/j$a;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/support/v4/b/a/n$a;

    iget-object v1, p0, Landroid/support/v4/b/a/n;->b:Landroid/support/v4/b/a/j$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b/a/n$a;-><init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 101
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    .line 102
    iget-object v1, p0, Landroid/support/v4/b/a/n;->c:Landroid/graphics/drawable/Drawable;

    .line 103
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_0

    instance-of v1, v1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 106
    :cond_1
    return v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v4/b/a/n;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v4/b/a/n;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 54
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/v4/b/a/n;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 44
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Landroid/support/v4/b/a/n;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 49
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/b/a/m;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Landroid/support/v4/b/a/n;->invalidateSelf()V

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Landroid/support/v4/b/a/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroid/support/v4/b/a/n;->a(I)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/a/n;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/support/v4/b/a/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Landroid/support/v4/b/a/n;->a(Landroid/content/res/ColorStateList;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/a/n;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/support/v4/b/a/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Landroid/support/v4/b/a/n;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/a/n;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
