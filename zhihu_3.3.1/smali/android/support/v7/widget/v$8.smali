.class Landroid/support/v7/widget/v$8;
.super Landroid/support/v7/widget/v$c;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/v;->a(Landroid/support/v7/widget/v$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/v$a;

.field final synthetic b:Landroid/support/v4/view/bc;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/v;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/v;Landroid/support/v7/widget/v$a;Landroid/support/v4/view/bc;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Landroid/support/v7/widget/v$8;->d:Landroid/support/v7/widget/v;

    iput-object p2, p0, Landroid/support/v7/widget/v$8;->a:Landroid/support/v7/widget/v$a;

    iput-object p3, p0, Landroid/support/v7/widget/v$8;->b:Landroid/support/v4/view/bc;

    iput-object p4, p0, Landroid/support/v7/widget/v$8;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/v$c;-><init>(Landroid/support/v7/widget/v$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Landroid/support/v7/widget/v$8;->d:Landroid/support/v7/widget/v;

    iget-object v1, p0, Landroid/support/v7/widget/v$8;->a:Landroid/support/v7/widget/v$a;

    iget-object v1, v1, Landroid/support/v7/widget/v$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/v;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 376
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Landroid/support/v7/widget/v$8;->b:Landroid/support/v4/view/bc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->a(Landroid/support/v4/view/bg;)Landroid/support/v4/view/bc;

    .line 380
    iget-object v0, p0, Landroid/support/v7/widget/v$8;->c:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    .line 381
    iget-object v0, p0, Landroid/support/v7/widget/v$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ah;->a(Landroid/view/View;F)V

    .line 382
    iget-object v0, p0, Landroid/support/v7/widget/v$8;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ah;->b(Landroid/view/View;F)V

    .line 383
    iget-object v0, p0, Landroid/support/v7/widget/v$8;->d:Landroid/support/v7/widget/v;

    iget-object v1, p0, Landroid/support/v7/widget/v$8;->a:Landroid/support/v7/widget/v$a;

    iget-object v1, v1, Landroid/support/v7/widget/v$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/v;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 384
    iget-object v0, p0, Landroid/support/v7/widget/v$8;->d:Landroid/support/v7/widget/v;

    invoke-static {v0}, Landroid/support/v7/widget/v;->h(Landroid/support/v7/widget/v;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/v$8;->a:Landroid/support/v7/widget/v$a;

    iget-object v1, v1, Landroid/support/v7/widget/v$a;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Landroid/support/v7/widget/v$8;->d:Landroid/support/v7/widget/v;

    invoke-static {v0}, Landroid/support/v7/widget/v;->e(Landroid/support/v7/widget/v;)V

    .line 386
    return-void
.end method
