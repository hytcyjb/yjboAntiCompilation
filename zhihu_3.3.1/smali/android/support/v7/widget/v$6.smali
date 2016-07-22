.class Landroid/support/v7/widget/v$6;
.super Landroid/support/v7/widget/v$c;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/v;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/view/bc;

.field final synthetic e:Landroid/support/v7/widget/v;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/v;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/bc;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Landroid/support/v7/widget/v$6;->e:Landroid/support/v7/widget/v;

    iput-object p2, p0, Landroid/support/v7/widget/v$6;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Landroid/support/v7/widget/v$6;->b:I

    iput p4, p0, Landroid/support/v7/widget/v$6;->c:I

    iput-object p5, p0, Landroid/support/v7/widget/v$6;->d:Landroid/support/v4/view/bc;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/v$c;-><init>(Landroid/support/v7/widget/v$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v7/widget/v$6;->e:Landroid/support/v7/widget/v;

    iget-object v1, p0, Landroid/support/v7/widget/v$6;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/v;->l(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 290
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Landroid/support/v7/widget/v$6;->d:Landroid/support/v4/view/bc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/bc;->a(Landroid/support/v4/view/bg;)Landroid/support/v4/view/bc;

    .line 303
    iget-object v0, p0, Landroid/support/v7/widget/v$6;->e:Landroid/support/v7/widget/v;

    iget-object v1, p0, Landroid/support/v7/widget/v$6;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/v;->i(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/v$6;->e:Landroid/support/v7/widget/v;

    invoke-static {v0}, Landroid/support/v7/widget/v;->g(Landroid/support/v7/widget/v;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/v$6;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/v$6;->e:Landroid/support/v7/widget/v;

    invoke-static {v0}, Landroid/support/v7/widget/v;->e(Landroid/support/v7/widget/v;)V

    .line 306
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 293
    iget v0, p0, Landroid/support/v7/widget/v$6;->b:I

    if-eqz v0, :cond_0

    .line 294
    invoke-static {p1, v1}, Landroid/support/v4/view/ah;->a(Landroid/view/View;F)V

    .line 296
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/v$6;->c:I

    if-eqz v0, :cond_1

    .line 297
    invoke-static {p1, v1}, Landroid/support/v4/view/ah;->b(Landroid/view/View;F)V

    .line 299
    :cond_1
    return-void
.end method
