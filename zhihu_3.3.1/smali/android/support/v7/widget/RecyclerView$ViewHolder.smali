.class public abstract Landroid/support/v7/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/view/View;

.field b:I

.field c:I

.field d:J

.field e:I

.field f:I

.field g:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroid/support/v7/widget/RecyclerView;

.field private l:I

.field private n:I

.field private o:Landroid/support/v7/widget/RecyclerView$n;

.field private p:Z

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8914
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 8938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8810
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    .line 8811
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c:I

    .line 8812
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->d:J

    .line 8813
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e:I

    .line 8814
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    .line 8817
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->g:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 8819
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 8916
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i:Ljava/util/List;

    .line 8917
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->j:Ljava/util/List;

    .line 8919
    iput v4, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n:I

    .line 8923
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->o:Landroid/support/v7/widget/RecyclerView$n;

    .line 8925
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p:Z

    .line 8929
    iput v4, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->q:I

    .line 8939
    if-nez p1, :cond_0

    .line 8940
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8942
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 8943
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 9212
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->q:I

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->c(Landroid/view/View;I)V

    .line 9214
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->q:I

    .line 9215
    return-void
.end method

.method private B()Z
    .locals 1

    .prologue
    .line 9286
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()Z
    .locals 1

    .prologue
    .line 9294
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ah;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$n;)Landroid/support/v7/widget/RecyclerView$n;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8808
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->o:Landroid/support/v7/widget/RecyclerView$n;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 9157
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 9158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i:Ljava/util/List;

    .line 9159
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->j:Ljava/util/List;

    .line 9161
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 8808
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8808
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 9202
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ah;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->q:I

    .line 9204
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/view/ah;->c(Landroid/view/View;I)V

    .line 9206
    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 8808
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->A()V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .parameter

    .prologue
    .line 8808
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->C()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .parameter

    .prologue
    .line 8808
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p:Z

    return v0
.end method

.method static synthetic e(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .parameter

    .prologue
    .line 8808
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->B()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .parameter

    .prologue
    .line 8808
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    return v0
.end method


# virtual methods
.method a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9140
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    .line 9141
    return-void
.end method

.method a(IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8946
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    .line 8947
    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    .line 8948
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    .line 8949
    return-void
.end method

.method a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 8952
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c:I

    if-ne v0, v1, :cond_0

    .line 8953
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c:I

    .line 8955
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    if-ne v0, v1, :cond_1

    .line 8956
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    .line 8958
    :cond_1
    if-eqz p2, :cond_2

    .line 8959
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    .line 8961
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    .line 8962
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8963
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$i;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$i;->c:Z

    .line 8965
    :cond_3
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9107
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->o:Landroid/support/v7/widget/RecyclerView$n;

    .line 9108
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p:Z

    .line 9109
    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 9148
    if-nez p1, :cond_1

    .line 9149
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c(I)V

    .line 9154
    :cond_0
    :goto_0
    return-void

    .line 9150
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 9151
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a()V

    .line 9152
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 9128
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 8968
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c:I

    .line 8969
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    .line 8970
    return-void
.end method

.method c(I)V
    .locals 1
    .parameter

    .prologue
    .line 9144
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    .line 9145
    return-void
.end method

.method public final c(Z)V
    .locals 3
    .parameter

    .prologue
    .line 9252
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n:I

    .line 9253
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n:I

    if-gez v0, :cond_2

    .line 9254
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n:I

    .line 9259
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9269
    :cond_0
    :goto_1
    return-void

    .line 9252
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9261
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 9262
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    goto :goto_1

    .line 9263
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n:I

    if-nez v0, :cond_0

    .line 9264
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    goto :goto_1
.end method

.method d()V
    .locals 2

    .prologue
    .line 8973
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8974
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c:I

    .line 8976
    :cond_0
    return-void
.end method

.method e()Z
    .locals 1

    .prologue
    .line 8979
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 2

    .prologue
    .line 9018
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    goto :goto_0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 9044
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 9045
    const/4 v0, -0x1

    .line 9047
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 9062
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c:I

    return v0
.end method

.method public final i()J
    .locals 2

    .prologue
    .line 9072
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->d:J

    return-wide v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 9079
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e:I

    return v0
.end method

.method k()Z
    .locals 1

    .prologue
    .line 9083
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->o:Landroid/support/v7/widget/RecyclerView$n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()V
    .locals 1

    .prologue
    .line 9087
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->o:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$n;->d(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 9088
    return-void
.end method

.method m()Z
    .locals 1

    .prologue
    .line 9091
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()V
    .locals 1

    .prologue
    .line 9095
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    .line 9096
    return-void
.end method

.method o()V
    .locals 1

    .prologue
    .line 9099
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    .line 9100
    return-void
.end method

.method p()Z
    .locals 1

    .prologue
    .line 9112
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q()Z
    .locals 1

    .prologue
    .line 9116
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method r()Z
    .locals 1

    .prologue
    .line 9120
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method s()Z
    .locals 1

    .prologue
    .line 9124
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method t()Z
    .locals 1

    .prologue
    .line 9132
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9219
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9222
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9223
    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p:Z

    if-eqz v0, :cond_a

    const-string v0, "[changeScrap]"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9226
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9227
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->r()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9228
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9229
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9230
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9231
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9232
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->y()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9233
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->u()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9235
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9236
    :cond_9
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9223
    :cond_a
    const-string v0, "[attachedScrap]"

    goto/16 :goto_0
.end method

.method u()Z
    .locals 1

    .prologue
    .line 9136
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method v()V
    .locals 1

    .prologue
    .line 9164
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 9165
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9167
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    .line 9168
    return-void
.end method

.method w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9171
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 9172
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 9174
    :cond_0
    sget-object v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->m:Ljava/util/List;

    .line 9180
    :goto_0
    return-object v0

    .line 9177
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->j:Ljava/util/List;

    goto :goto_0

    .line 9180
    :cond_2
    sget-object v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->m:Ljava/util/List;

    goto :goto_0
.end method

.method x()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 9185
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    .line 9186
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->b:I

    .line 9187
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->c:I

    .line 9188
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->d:J

    .line 9189
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->f:I

    .line 9190
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->n:I

    .line 9191
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->g:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 9192
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->h:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 9193
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->v()V

    .line 9194
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->q:I

    .line 9195
    return-void
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 9277
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ah;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method z()Z
    .locals 1

    .prologue
    .line 9298
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
