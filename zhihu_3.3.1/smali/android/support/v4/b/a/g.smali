.class Landroid/support/v4/b/a/g;
.super Ljava/lang/Object;
.source "DrawableCompatKitKat.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 29
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 36
    instance-of v0, p0, Landroid/support/v4/b/a/m;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/support/v4/b/a/m;

    invoke-direct {v0, p0}, Landroid/support/v4/b/a/m;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 39
    :cond_0
    return-object p0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method
