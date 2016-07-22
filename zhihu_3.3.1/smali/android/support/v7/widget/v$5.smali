.class Landroid/support/v7/widget/v$5;
.super Landroid/support/v7/widget/v$c;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/v;->u(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Landroid/support/v4/view/bc;

.field final synthetic c:Landroid/support/v7/widget/v;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/v;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/bc;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Landroid/support/v7/widget/v$5;->c:Landroid/support/v7/widget/v;

    iput-object p2, p0, Landroid/support/v7/widget/v$5;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Landroid/support/v7/widget/v$5;->b:Landroid/support/v4/view/bc;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/v$c;-><init>(Landroid/support/v7/widget/v$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/v7/widget/v$5;->c:Landroid/support/v7/widget/v;

    iget-object v1, p0, Landroid/support/v7/widget/v$5;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/v;->m(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 232
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/v$5;->b:Landroid/support/v4/view/bc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->a(Landroid/support/v4/view/bg;)Landroid/support/v4/view/bc;

    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/v$5;->c:Landroid/support/v7/widget/v;

    iget-object v1, p0, Landroid/support/v7/widget/v$5;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/v;->j(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/v$5;->c:Landroid/support/v7/widget/v;

    invoke-static {v0}, Landroid/support/v7/widget/v;->f(Landroid/support/v7/widget/v;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/v$5;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Landroid/support/v7/widget/v$5;->c:Landroid/support/v7/widget/v;

    invoke-static {v0}, Landroid/support/v7/widget/v;->e(Landroid/support/v7/widget/v;)V

    .line 244
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    const/high16 v0, 0x3f80

    invoke-static {p1, v0}, Landroid/support/v4/view/ah;->c(Landroid/view/View;F)V

    .line 236
    return-void
.end method
