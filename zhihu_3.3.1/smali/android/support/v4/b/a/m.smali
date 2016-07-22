.class Landroid/support/v4/b/a/m;
.super Landroid/support/v4/b/a/l;
.source "DrawableWrapperKitKat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/b/a/m$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v4/b/a/l;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v4/b/a/l;-><init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V

    .line 31
    return-void
.end method


# virtual methods
.method b()Landroid/support/v4/b/a/j$a;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/support/v4/b/a/m$a;

    iget-object v1, p0, Landroid/support/v4/b/a/m;->b:Landroid/support/v4/b/a/j$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b/a/m$a;-><init>(Landroid/support/v4/b/a/j$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/v4/b/a/m;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/v4/b/a/m;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 36
    return-void
.end method
