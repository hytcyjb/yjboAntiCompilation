.class Landroid/support/v7/widget/a/a$4;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/a/a$c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/a/a$c;

.field final synthetic b:I

.field final synthetic c:Landroid/support/v7/widget/a/a;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/a/a$c;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    iput-object p2, p0, Landroid/support/v7/widget/a/a$4;->a:Landroid/support/v7/widget/a/a$c;

    iput p3, p0, Landroid/support/v7/widget/a/a$4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    invoke-static {v0}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/a/a;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    invoke-static {v0}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/a/a;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/a/a$4;->a:Landroid/support/v7/widget/a/a$c;

    iget-boolean v0, v0, Landroid/support/v7/widget/a/a$c;->m:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/a/a$4;->a:Landroid/support/v7/widget/a/a$c;

    iget-object v0, v0, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 681
    iget-object v0, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    invoke-static {v0}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/a/a;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$e;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$e$a;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    invoke-static {v0}, Landroid/support/v7/widget/a/a;->h(Landroid/support/v7/widget/a/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 687
    iget-object v0, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    iget-object v0, v0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/a$a;

    iget-object v1, p0, Landroid/support/v7/widget/a/a$4;->a:Landroid/support/v7/widget/a/a$c;

    iget-object v1, v1, Landroid/support/v7/widget/a/a$c;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, p0, Landroid/support/v7/widget/a/a$4;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/a/a$a;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 692
    :cond_1
    :goto_0
    return-void

    .line 689
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/a/a$4;->c:Landroid/support/v7/widget/a/a;

    invoke-static {v0}, Landroid/support/v7/widget/a/a;->c(Landroid/support/v7/widget/a/a;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
