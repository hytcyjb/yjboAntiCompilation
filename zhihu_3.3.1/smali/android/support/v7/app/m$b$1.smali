.class Landroid/support/v7/app/m$b$1;
.super Landroid/support/v4/view/bh;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/m$b;->a(Landroid/support/v7/view/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/m$b;


# direct methods
.method constructor <init>(Landroid/support/v7/app/m$b;)V
    .locals 0
    .parameter

    .prologue
    .line 1745
    iput-object p1, p0, Landroid/support/v7/app/m$b$1;->a:Landroid/support/v7/app/m$b;

    invoke-direct {p0}, Landroid/support/v4/view/bh;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1748
    iget-object v0, p0, Landroid/support/v7/app/m$b$1;->a:Landroid/support/v7/app/m$b;

    iget-object v0, v0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 1749
    iget-object v0, p0, Landroid/support/v7/app/m$b$1;->a:Landroid/support/v7/app/m$b;

    iget-object v0, v0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1750
    iget-object v0, p0, Landroid/support/v7/app/m$b$1;->a:Landroid/support/v7/app/m$b;

    iget-object v0, v0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1754
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/m$b$1;->a:Landroid/support/v7/app/m$b;

    iget-object v0, v0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->removeAllViews()V

    .line 1755
    iget-object v0, p0, Landroid/support/v7/app/m$b$1;->a:Landroid/support/v7/app/m$b;

    iget-object v0, v0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->q:Landroid/support/v4/view/bc;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/bc;->a(Landroid/support/v4/view/bg;)Landroid/support/v4/view/bc;

    .line 1756
    iget-object v0, p0, Landroid/support/v7/app/m$b$1;->a:Landroid/support/v7/app/m$b;

    iget-object v0, v0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    iput-object v2, v0, Landroid/support/v7/app/m;->q:Landroid/support/v4/view/bc;

    .line 1757
    return-void

    .line 1751
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/m$b$1;->a:Landroid/support/v7/app/m$b;

    iget-object v0, v0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1752
    iget-object v0, p0, Landroid/support/v7/app/m$b$1;->a:Landroid/support/v7/app/m$b;

    iget-object v0, v0, Landroid/support/v7/app/m$b;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ah;->x(Landroid/view/View;)V

    goto :goto_0
.end method
