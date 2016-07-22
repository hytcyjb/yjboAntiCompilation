.class Landroid/support/v7/widget/RecyclerView$f;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 10261
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10261
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$f;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 10265
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(Z)V

    .line 10266
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->g:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 10267
    iput-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->g:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 10271
    :cond_0
    iput-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 10272
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10273
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10274
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 10277
    :cond_1
    return-void
.end method
