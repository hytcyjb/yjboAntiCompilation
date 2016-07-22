.class Landroid/support/v4/b/a/e;
.super Ljava/lang/Object;
.source "DrawableCompatHoneycomb.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 30
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 33
    instance-of v0, p0, Landroid/support/v4/b/a/l;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/support/v4/b/a/l;

    invoke-direct {v0, p0}, Landroid/support/v4/b/a/l;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 36
    :cond_0
    return-object p0
.end method
