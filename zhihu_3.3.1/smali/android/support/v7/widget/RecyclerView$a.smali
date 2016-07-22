.class public abstract Landroid/support/v7/widget/RecyclerView$a;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView$b;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5387
    new-instance v0, Landroid/support/v7/widget/RecyclerView$b;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$b;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    .line 5388
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)J
    .locals 2
    .parameter

    .prologue
    .line 5544
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 5884
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$b;->b(II)V

    .line 5885
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5583
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5465
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 5466
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$c;)V
    .locals 1
    .parameter

    .prologue
    .line 5674
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$b;->registerObserver(Ljava/lang/Object;)V

    .line 5675
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 5700
    return-void
.end method

.method public b(I)I
    .locals 1
    .parameter

    .prologue
    .line 5516
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 5490
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    .line 5491
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5492
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$a;->a(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->d:J

    .line 5494
    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x207

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(II)V

    .line 5497
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/os/g;->a(Ljava/lang/String;)V

    .line 5498
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->w()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 5499
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->v()V

    .line 5500
    invoke-static {}, Landroid/support/v4/os/g;->a()V

    .line 5501
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$c;)V
    .locals 1
    .parameter

    .prologue
    .line 5688
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$b;->unregisterObserver(Ljava/lang/Object;)V

    .line 5689
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .parameter

    .prologue
    .line 5709
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 5528
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5529
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5532
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    .line 5533
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .prologue
    .line 5620
    const/4 v0, 0x0

    return v0
.end method

.method public final c(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .line 5475
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/support/v4/os/g;->a(Ljava/lang/String;)V

    .line 5476
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5477
    iput p2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e:I

    .line 5478
    invoke-static {}, Landroid/support/v4/os/g;->a()V

    .line 5479
    return-object v0
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5634
    return-void
.end method

.method public final d(I)V
    .locals 2
    .parameter

    .prologue
    .line 5757
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$b;->a(II)V

    .line 5758
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .line 5646
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 5562
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    return v0
.end method

.method public final e(I)V
    .locals 2
    .parameter

    .prologue
    .line 5850
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$b;->b(II)V

    .line 5851
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 5654
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->a()Z

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 5741
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$b;->b()V

    .line 5742
    return-void
.end method

.method public final f(I)V
    .locals 2
    .parameter

    .prologue
    .line 5901
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$a;->a:Landroid/support/v7/widget/RecyclerView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$b;->c(II)V

    .line 5902
    return-void
.end method
