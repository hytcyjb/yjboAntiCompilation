.class Landroid/support/v7/widget/c;
.super Landroid/support/v7/widget/b;
.source "ActionBarBackgroundDrawableV21.java"


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionBarContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/b;-><init>(Landroid/support/v7/widget/ActionBarContainer;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/ActionBarContainer;

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionBarContainer;->d:Z

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Landroid/support/v7/widget/c;->a:Landroid/support/v7/widget/ActionBarContainer;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContainer;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_0
.end method
