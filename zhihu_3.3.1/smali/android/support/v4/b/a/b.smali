.class Landroid/support/v4/b/a/b;
.super Ljava/lang/Object;
.source "DrawableCompatApi23.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 27
    return-void
.end method
