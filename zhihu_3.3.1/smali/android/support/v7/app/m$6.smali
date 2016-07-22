.class Landroid/support/v7/app/m$6;
.super Landroid/support/v4/view/bh;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/m;->a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/m;


# direct methods
.method constructor <init>(Landroid/support/v7/app/m;)V
    .locals 0
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Landroid/support/v7/app/m$6;->a:Landroid/support/v7/app/m;

    invoke-direct {p0}, Landroid/support/v4/view/bh;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 801
    iget-object v0, p0, Landroid/support/v7/app/m$6;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Landroid/support/v7/app/m$6;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 804
    iget-object v0, p0, Landroid/support/v7/app/m$6;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Landroid/support/v7/app/m$6;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ah;->x(Landroid/view/View;)V

    .line 807
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 794
    iget-object v0, p0, Landroid/support/v7/app/m$6;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->n:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    .line 795
    iget-object v0, p0, Landroid/support/v7/app/m$6;->a:Landroid/support/v7/app/m;

    iget-object v0, v0, Landroid/support/v7/app/m;->q:Landroid/support/v4/view/bc;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/bc;->a(Landroid/support/v4/view/bg;)Landroid/support/v4/view/bc;

    .line 796
    iget-object v0, p0, Landroid/support/v7/app/m$6;->a:Landroid/support/v7/app/m;

    iput-object v2, v0, Landroid/support/v7/app/m;->q:Landroid/support/v4/view/bc;

    .line 797
    return-void
.end method
