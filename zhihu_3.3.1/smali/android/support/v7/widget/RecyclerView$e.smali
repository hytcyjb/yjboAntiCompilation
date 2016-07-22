.class public abstract Landroid/support/v7/widget/RecyclerView$e;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$e$c;,
        Landroid/support/v7/widget/RecyclerView$e$a;,
        Landroid/support/v7/widget/RecyclerView$e$b;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView$e$b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$e$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 10302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10358
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    .line 10359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    .line 10362
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$e;->c:J

    .line 10363
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$e;->d:J

    .line 10364
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$e;->e:J

    .line 10365
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$e;->f:J

    .line 10942
    return-void
.end method

.method static d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 10663
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    .line 10664
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10665
    const/4 v0, 0x4

    .line 10674
    :cond_0
    :goto_0
    return v0

    .line 10667
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    .line 10668
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h()I

    move-result v1

    .line 10669
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->g()I

    move-result v2

    .line 10670
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 10671
    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$e$c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10516
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$e;->i()Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$e$c;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$e$c;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$r;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v7/widget/RecyclerView$e$c;"
        }
    .end annotation

    .prologue
    .line 10487
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$e;->i()Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$e$c;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()V
.end method

.method a(Landroid/support/v7/widget/RecyclerView$e$b;)V
    .locals 0
    .parameter

    .prologue
    .line 10448
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    .line 10449
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 10882
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->g(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$e$a;)Z
    .locals 2
    .parameter

    .prologue
    .line 10819
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$e;->b()Z

    move-result v0

    .line 10820
    if-eqz p1, :cond_0

    .line 10821
    if-nez v0, :cond_1

    .line 10822
    invoke-interface {p1}, Landroid/support/v7/widget/RecyclerView$e$a;->a()V

    .line 10827
    :cond_0
    :goto_0
    return v0

    .line 10824
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z
.end method

.method public abstract c()V
.end method

.method public abstract c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract c(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z
.end method

.method public d()J
    .locals 2

    .prologue
    .line 10373
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->e:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 10391
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->c:J

    return-wide v0
.end method

.method public final e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 10747
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 10748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    if-eqz v0, :cond_0

    .line 10749
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$e$b;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 10751
    :cond_0
    return-void
.end method

.method public f()J
    .locals 2

    .prologue
    .line 10409
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->d:J

    return-wide v0
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 10762
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 10427
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->f:J

    return-wide v0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .parameter

    .prologue
    .line 10852
    const/4 v0, 0x1

    return v0
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 10890
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 10891
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 10892
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$e$a;

    invoke-interface {v0}, Landroid/support/v7/widget/RecyclerView$e$a;->a()V

    .line 10891
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 10894
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10895
    return-void
.end method

.method public i()Landroid/support/v7/widget/RecyclerView$e$c;
    .locals 1

    .prologue
    .line 10907
    new-instance v0, Landroid/support/v7/widget/RecyclerView$e$c;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$e$c;-><init>()V

    return-object v0
.end method
