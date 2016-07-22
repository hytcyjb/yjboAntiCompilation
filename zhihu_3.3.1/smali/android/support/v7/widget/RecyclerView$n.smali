.class public final Landroid/support/v7/widget/RecyclerView$n;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "n"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Landroid/support/v7/widget/RecyclerView;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/support/v7/widget/RecyclerView$m;

.field private h:Landroid/support/v7/widget/RecyclerView$s;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .parameter

    .prologue
    .line 4432
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    .line 4434
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    .line 4436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    .line 4438
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Ljava/util/List;

    .line 4441
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$n;->f:I

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$n;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 4432
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    .line 4780
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 4781
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4782
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 4783
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/ViewGroup;Z)V

    .line 4780
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 4786
    :cond_1
    if-nez p2, :cond_2

    .line 4798
    :goto_1
    return-void

    .line 4790
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 4791
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4792
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4794
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 4795
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4796
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private d(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 4760
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4761
    invoke-static {p1}, Landroid/support/v4/view/ah;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4763
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ah;->c(Landroid/view/View;I)V

    .line 4766
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/ah;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4767
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->q(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ad;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ad;->b()Landroid/support/v4/view/a;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 4771
    :cond_1
    return-void
.end method

.method private f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 4774
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4775
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/view/ViewGroup;Z)V

    .line 4777
    :cond_0
    return-void
.end method


# virtual methods
.method a(IIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 5050
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 5053
    :goto_0
    if-ge v2, v3, :cond_1

    .line 5054
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5055
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f()I

    move-result v4

    if-ne v4, p1, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$r;->f(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v4

    if-nez v4, :cond_4

    .line 5057
    :cond_0
    if-eq p2, v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->j()I

    move-result v2

    if-eq v2, p2, :cond_2

    .line 5058
    const-string v2, "RecyclerView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrap view for position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isn\'t dirty but has"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wrong view type! (found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->j()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but expected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5068
    :cond_1
    if-nez p3, :cond_6

    .line 5069
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/s;->a(II)Landroid/view/View;

    move-result-object v2

    .line 5070
    if-eqz v2, :cond_6

    .line 5073
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5074
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/s;->e(Landroid/view/View;)V

    .line 5075
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/s;->b(Landroid/view/View;)I

    move-result v1

    .line 5076
    if-ne v1, v5, :cond_5

    .line 5077
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5063
    :cond_2
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    .line 5105
    :cond_3
    :goto_1
    return-object v0

    .line 5053
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 5080
    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/s;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/s;->d(I)V

    .line 5081
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$n;->c(Landroid/view/View;)V

    .line 5082
    const/16 v1, 0x2020

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    goto :goto_1

    .line 5089
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5090
    :goto_2
    if-ge v1, v2, :cond_8

    .line 5091
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5094
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f()I

    move-result v3

    if-ne v3, p1, :cond_7

    .line 5095
    if-nez p3, :cond_3

    .line 5096
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 5090
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 5105
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(JIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5110
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5111
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 5112
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5113
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5114
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->j()I

    move-result v2

    if-ne p3, v2, :cond_1

    .line 5115
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    .line 5116
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5125
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5126
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(II)V

    .line 5157
    :cond_0
    :goto_1
    return-object v0

    .line 5131
    :cond_1
    if-nez p4, :cond_2

    .line 5135
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5136
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5137
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/view/View;)V

    .line 5111
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5143
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5144
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    .line 5145
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5146
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_5

    .line 5147
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->j()I

    move-result v2

    if-ne p3, v2, :cond_4

    .line 5148
    if-nez p4, :cond_0

    .line 5149
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 5152
    :cond_4
    if-nez p4, :cond_5

    .line 5153
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$n;->d(I)V

    .line 5144
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 5157
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(IZ)Landroid/view/View;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x2000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4615
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4616
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4622
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4623
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$n;->f(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 4624
    if-eqz v4, :cond_5

    move v0, v1

    :goto_0
    move-object v9, v4

    move v4, v0

    move-object v0, v9

    .line 4627
    :goto_1
    if-nez v0, :cond_16

    .line 4628
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView$n;->a(IIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4629
    if-eqz v0, :cond_16

    .line 4630
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4632
    if-nez p2, :cond_3

    .line 4635
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    .line 4636
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4637
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v5, v6, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4638
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l()V

    .line 4642
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_3
    move-object v0, v3

    move v3, v4

    .line 4650
    :goto_3
    if-nez v0, :cond_15

    .line 4651
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/e;->b(I)I

    move-result v4

    .line 4652
    if-ltz v4, :cond_4

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 4653
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v2

    .line 4624
    goto/16 :goto_0

    .line 4639
    :cond_6
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4640
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n()V

    goto :goto_2

    :cond_7
    move v3, v1

    .line 4646
    goto :goto_3

    .line 4658
    :cond_8
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/RecyclerView$a;->b(I)I

    move-result v5

    .line 4660
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$a;->d()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4661
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView$a;->a(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v5, p2}, Landroid/support/v7/widget/RecyclerView$n;->a(JIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4662
    if-eqz v0, :cond_9

    .line 4664
    iput v4, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    move v3, v1

    .line 4668
    :cond_9
    if-nez v0, :cond_b

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$n;->h:Landroid/support/v7/widget/RecyclerView$s;

    if-eqz v4, :cond_b

    .line 4671
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$n;->h:Landroid/support/v7/widget/RecyclerView$s;

    invoke-virtual {v4, p0, p1, v5}, Landroid/support/v7/widget/RecyclerView$s;->a(Landroid/support/v7/widget/RecyclerView$n;II)Landroid/view/View;

    move-result-object v4

    .line 4673
    if-eqz v4, :cond_b

    .line 4674
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4675
    if-nez v0, :cond_a

    .line 4676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4678
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4685
    :cond_b
    if-nez v0, :cond_c

    .line 4692
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->e()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$m;->a(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4693
    if-eqz v0, :cond_c

    .line 4694
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->x()V

    .line 4695
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->s()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4696
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4700
    :cond_c
    if-nez v0, :cond_15

    .line 4701
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/RecyclerView$a;->c(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    move-object v4, v0

    move v5, v3

    .line 4711
    :goto_4
    if-eqz v5, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4713
    invoke-virtual {v4, v2, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(II)V

    .line 4714
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$r;->c(Landroid/support/v7/widget/RecyclerView$r;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4715
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$e;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 4717
    or-int/lit16 v0, v0, 0x1000

    .line 4718
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/RecyclerView$e;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->w()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v6, v4, v0, v7}, Landroid/support/v7/widget/RecyclerView$e;->a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v0

    .line 4720
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v4, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$e$c;)V

    .line 4725
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->r()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4727
    iput p1, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    move v3, v2

    .line 4743
    :goto_5
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 4745
    if-nez v0, :cond_11

    .line 4746
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 4747
    iget-object v6, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4754
    :goto_6
    iput-object v4, v0, Landroid/support/v7/widget/RecyclerView$i;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 4755
    if-eqz v5, :cond_13

    if-eqz v3, :cond_13

    :goto_7
    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$i;->d:Z

    .line 4756
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    return-object v0

    .line 4728
    :cond_e
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->r()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->q()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4733
    :cond_f
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->b(I)I

    move-result v0

    .line 4734
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iput-object v3, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k:Landroid/support/v7/widget/RecyclerView;

    .line 4735
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 4736
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->d(Landroid/view/View;)V

    .line 4738
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4739
    iput p1, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    :cond_10
    move v3, v1

    goto :goto_5

    .line 4748
    :cond_11
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 4749
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 4750
    iget-object v6, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 4752
    :cond_12
    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    goto :goto_6

    :cond_13
    move v1, v2

    .line 4755
    goto :goto_7

    :cond_14
    move v3, v2

    goto :goto_5

    :cond_15
    move-object v4, v0

    move v5, v3

    goto/16 :goto_4

    :cond_16
    move v3, v4

    goto/16 :goto_3

    :cond_17
    move-object v0, v3

    move v4, v2

    goto/16 :goto_1
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4477
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 4464
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$n;->f:I

    .line 4466
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 4467
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->d(I)V

    .line 4466
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4469
    :cond_0
    return-void
.end method

.method a(II)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 5181
    if-ge p1, p2, :cond_1

    .line 5184
    const/4 v0, -0x1

    move v1, v0

    move v2, p2

    move v3, p1

    .line 5190
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v5

    .line 5191
    :goto_1
    if-ge v4, v6, :cond_4

    .line 5192
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5193
    if-eqz v0, :cond_0

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v7, v3, :cond_0

    iget v7, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-le v7, v2, :cond_2

    .line 5191
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 5188
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    move v2, p1

    move v3, p2

    goto :goto_0

    .line 5196
    :cond_2
    iget v7, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-ne v7, p1, :cond_3

    .line 5197
    sub-int v7, p2, p1

    invoke-virtual {v0, v7, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    goto :goto_2

    .line 5199
    :cond_3
    invoke-virtual {v0, v1, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    goto :goto_2

    .line 5206
    :cond_4
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5175
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->clear()V

    .line 5176
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->e()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView$a;Landroid/support/v7/widget/RecyclerView$a;Z)V

    .line 5177
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$m;)V
    .locals 2
    .parameter

    .prologue
    .line 5255
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->g:Landroid/support/v7/widget/RecyclerView$m;

    if-eqz v0, :cond_0

    .line 5256
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->g:Landroid/support/v7/widget/RecyclerView$m;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$m;->b()V

    .line 5258
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$n;->g:Landroid/support/v7/widget/RecyclerView$m;

    .line 5259
    if-eqz p1, :cond_1

    .line 5260
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->g:Landroid/support/v7/widget/RecyclerView$m;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 5262
    :cond_1
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$s;)V
    .locals 0
    .parameter

    .prologue
    .line 5251
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$n;->h:Landroid/support/v7/widget/RecyclerView$s;

    .line 5252
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 4813
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4814
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4815
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4817
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4818
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l()V

    .line 4822
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4823
    return-void

    .line 4819
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4820
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n()V

    goto :goto_0
.end method

.method a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4491
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4496
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    .line 4512
    :cond_0
    :goto_0
    return v0

    .line 4498
    :cond_1
    iget v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 4499
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4502
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4504
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v2

    iget v3, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$a;->b(I)I

    move-result v2

    .line 4505
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->j()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 4506
    goto :goto_0

    .line 4509
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$a;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4510
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i()J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v4

    iget v5, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$a;->a(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(I)I
    .locals 3
    .parameter

    .prologue
    .line 4586
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4587
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$r;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4590
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$r;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4593
    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->b(I)I

    move-result p1

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 4835
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4836
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 4837
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->d(I)V

    .line 4836
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4839
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4840
    return-void
.end method

.method b(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 5209
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5210
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 5211
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5212
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v3, p1, :cond_0

    .line 5217
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    .line 5210
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5220
    :cond_1
    return-void
.end method

.method b(IIZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5229
    add-int v2, p1, p2

    .line 5230
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5231
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 5232
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5233
    if-eqz v0, :cond_0

    .line 5234
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v3, v2, :cond_1

    .line 5240
    neg-int v3, p2

    invoke-virtual {v0, v3, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    .line 5231
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5241
    :cond_1
    iget v3, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    if-lt v3, p1, :cond_0

    .line 5243
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    .line 5244
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$n;->d(I)V

    goto :goto_1

    .line 5248
    :cond_2
    return-void
.end method

.method b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4871
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4872
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 4878
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4879
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4883
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4884
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4888
    :cond_4
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    .line 4890
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v2

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    .line 4899
    :goto_1
    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->y()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4900
    :cond_5
    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 4903
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4904
    iget v4, p0, Landroid/support/v7/widget/RecyclerView$n;->f:I

    if-ne v2, v4, :cond_6

    if-lez v2, :cond_6

    .line 4905
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$n;->d(I)V

    .line 4907
    :cond_6
    iget v4, p0, Landroid/support/v7/widget/RecyclerView$n;->f:I

    if-ge v2, v4, :cond_a

    .line 4908
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v0

    .line 4912
    :goto_2
    if-nez v2, :cond_9

    .line 4913
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$n;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    move v1, v0

    move v0, v2

    .line 4922
    :goto_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/ar;->g(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4923
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v3, :cond_7

    .line 4924
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k:Landroid/support/v7/widget/RecyclerView;

    .line 4926
    :cond_7
    return-void

    :cond_8
    move v2, v1

    .line 4890
    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move v2, v1

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_3
.end method

.method b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 4941
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4942
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$n;)Landroid/support/v7/widget/RecyclerView$n;

    .line 4943
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    .line 4944
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n()V

    .line 4945
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4946
    return-void
.end method

.method c()I
    .locals 1

    .prologue
    .line 4995
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 4611
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView$n;->a(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method c(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 5272
    add-int v2, p1, p2

    .line 5273
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5274
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 5275
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5276
    if-nez v0, :cond_1

    .line 5274
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5280
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f()I

    move-result v3

    .line 5281
    if-lt v3, p1, :cond_0

    if-ge v3, v2, :cond_0

    .line 5282
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    .line 5283
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView$n;->d(I)V

    goto :goto_1

    .line 5288
    :cond_2
    return-void
.end method

.method c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4929
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 4930
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$n;->e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4931
    iput-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k:Landroid/support/v7/widget/RecyclerView;

    .line 4932
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->e()Landroid/support/v7/widget/RecyclerView$m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$m;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4933
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 4958
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4959
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4961
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4962
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4966
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Landroid/support/v7/widget/RecyclerView$n;Z)V

    .line 4967
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4975
    :goto_0
    return-void

    .line 4969
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 4970
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    .line 4972
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Landroid/support/v7/widget/RecyclerView$n;Z)V

    .line 4973
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 4454
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4455
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->b()V

    .line 4456
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 5003
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5004
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5005
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5007
    :cond_0
    return-void
.end method

.method d(I)V
    .locals 1
    .parameter

    .prologue
    .line 4857
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 4861
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$n;->c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4862
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4863
    return-void
.end method

.method d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 4984
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4985
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4989
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$n;)Landroid/support/v7/widget/RecyclerView$n;

    .line 4990
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    .line 4991
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n()V

    .line 4992
    return-void

    .line 4987
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method e()Landroid/support/v7/widget/RecyclerView$m;
    .locals 1

    .prologue
    .line 5265
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->g:Landroid/support/v7/widget/RecyclerView$m;

    if-nez v0, :cond_0

    .line 5266
    new-instance v0, Landroid/support/v7/widget/RecyclerView$m;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$m;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->g:Landroid/support/v7/widget/RecyclerView$m;

    .line 5268
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->g:Landroid/support/v7/widget/RecyclerView$m;

    return-object v0
.end method

.method e(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 4999
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    return-object v0
.end method

.method e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 5161
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->r(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5162
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->r(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$o;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5164
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5165
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5167
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/RecyclerView$r;

    if-eqz v0, :cond_2

    .line 5168
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/ar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ar;->g(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5171
    :cond_2
    return-void
.end method

.method f(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 5012
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 5037
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 5016
    :goto_1
    if-ge v3, v4, :cond_3

    .line 5017
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5018
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 5019
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    goto :goto_0

    .line 5016
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5024
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5025
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->b(I)I

    move-result v0

    .line 5026
    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 5027
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$a;->a(I)J

    move-result-wide v6

    .line 5028
    :goto_2
    if-ge v2, v4, :cond_5

    .line 5029
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5030
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    .line 5031
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    goto :goto_0

    .line 5028
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 5037
    goto :goto_0
.end method

.method f()V
    .locals 4

    .prologue
    .line 5291
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5292
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 5293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5294
    if-eqz v0, :cond_0

    .line 5295
    const/16 v3, 0x200

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    .line 5292
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5298
    :cond_1
    return-void
.end method

.method g()V
    .locals 4

    .prologue
    .line 5301
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5302
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5303
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 5304
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5305
    if-eqz v0, :cond_0

    .line 5306
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    .line 5307
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(Ljava/lang/Object;)V

    .line 5303
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5312
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$n;->b()V

    .line 5314
    :cond_2
    return-void
.end method

.method h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5317
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 5318
    :goto_0
    if-ge v2, v3, :cond_0

    .line 5319
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5320
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()V

    .line 5318
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5322
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 5323
    :goto_1
    if-ge v2, v3, :cond_1

    .line 5324
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()V

    .line 5323
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 5326
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 5327
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5328
    :goto_2
    if-ge v1, v2, :cond_2

    .line 5329
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c()V

    .line 5328
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 5332
    :cond_2
    return-void
.end method

.method i()V
    .locals 4

    .prologue
    .line 5335
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5336
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 5337
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5338
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    .line 5339
    if-eqz v0, :cond_0

    .line 5340
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$i;->c:Z

    .line 5336
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5343
    :cond_1
    return-void
.end method
