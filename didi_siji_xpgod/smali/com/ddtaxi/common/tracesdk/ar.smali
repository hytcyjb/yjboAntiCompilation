.class public final Lcom/ddtaxi/common/tracesdk/ar;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/as;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Lcom/ddtaxi/a/a/gy;

.field private d:Ljava/util/List;

.field private e:Lcom/ddtaxi/a/a/gy;

.field private f:Ljava/util/List;

.field private g:Lcom/ddtaxi/a/a/gy;

.field private h:Ljava/util/List;

.field private i:Lcom/ddtaxi/a/a/gy;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->L()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->L()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/common/tracesdk/ar;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/ar;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method static synthetic K()Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ar;->M()Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method private L()V
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ap;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->O()Lcom/ddtaxi/a/a/gy;

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aa()Lcom/ddtaxi/a/a/gy;

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ac()Lcom/ddtaxi/a/a/gy;

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ae()Lcom/ddtaxi/a/a/gy;

    :cond_0
    return-void
.end method

.method private static M()Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    new-instance v0, Lcom/ddtaxi/common/tracesdk/ar;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/ar;-><init>()V

    return-object v0
.end method

.method private N()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :cond_0
    return-void
.end method

.method private O()Lcom/ddtaxi/a/a/gy;
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private P()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :cond_0
    return-void
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->p()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method private aa()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ab()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :cond_0
    return-void
.end method

.method private ac()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ad()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :cond_0
    return-void
.end method

.method private ae()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public A()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ah;->a()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/aj;

    return-object v0
.end method

.method public B()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public D()Lcom/ddtaxi/common/tracesdk/v;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ac()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/t;->a()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/v;

    return-object v0
.end method

.method public E()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ac()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public F()Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public G()Lcom/ddtaxi/common/tracesdk/af;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ae()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ad;->a()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/af;

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->s()Lcom/ddtaxi/common/tracesdk/ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->s()Lcom/ddtaxi/common/tracesdk/ap;

    move-result-object v0

    return-object v0
.end method

.method public J()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ae()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->u()Lcom/ddtaxi/common/tracesdk/ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->u()Lcom/ddtaxi/common/tracesdk/ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->e()Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->e()Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->e()Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->d()Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->d()Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->d()Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->t()Lcom/ddtaxi/common/tracesdk/ap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->t()Lcom/ddtaxi/common/tracesdk/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ddtaxi/common/tracesdk/ad;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/common/tracesdk/af;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/af;->x()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/af;->x()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/common/tracesdk/ah;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->P()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/common/tracesdk/aj;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->P()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/aj;->B()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/aj;->B()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/common/tracesdk/at;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->N()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/common/tracesdk/av;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->N()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/av;->m()Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/av;->m()Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/common/tracesdk/t;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ab()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/common/tracesdk/v;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ab()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/v;->B()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/v;->B()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/common/tracesdk/ap;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/common/tracesdk/ap;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/common/tracesdk/ap;)Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/common/tracesdk/ap;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/common/tracesdk/ap;)Lcom/ddtaxi/common/tracesdk/ar;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/common/tracesdk/ap;)Lcom/ddtaxi/common/tracesdk/ar;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/ad;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/af;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/af;->x()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/af;->x()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/ah;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->P()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/aj;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->P()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/aj;->B()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/aj;->B()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/ap;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ap;->a()Lcom/ddtaxi/common/tracesdk/ap;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->b(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->b(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->c(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->c(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :goto_3
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_e

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->d(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->d(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :goto_5
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :cond_3
    :goto_6
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_12

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->e(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->e(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :goto_7
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :cond_4
    :goto_8
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ap;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/ar;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->N()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->b(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_6
    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->b(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->b(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ap;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->O()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_9

    :cond_8
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->b(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->P()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->c(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_a
    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->c(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->c(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ap;->v()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :goto_a
    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_4

    :cond_b
    move-object v0, v1

    goto :goto_a

    :cond_c
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->c(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_4

    :cond_d
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ab()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->d(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_e
    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->d(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->d(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ap;->v()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ac()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_6

    :cond_f
    move-object v0, v1

    goto :goto_b

    :cond_10
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->d(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_6

    :cond_11
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->e(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    :cond_12
    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->e(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->e(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ap;->v()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ae()Lcom/ddtaxi/a/a/gy;

    move-result-object v1

    :cond_13
    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_8

    :cond_14
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ap;->e(Lcom/ddtaxi/common/tracesdk/ap;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_8
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/at;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->N()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/av;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->N()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/av;->m()Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/av;->m()Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/t;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ab()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/v;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ab()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/v;->B()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/v;->B()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->N()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(I)Lcom/ddtaxi/common/tracesdk/at;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/at;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/at;

    goto :goto_0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method public b(ILcom/ddtaxi/common/tracesdk/ad;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/common/tracesdk/af;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/af;->x()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/af;->x()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/common/tracesdk/ah;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->P()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/common/tracesdk/aj;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->P()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/aj;->B()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/aj;->B()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/common/tracesdk/at;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->N()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/common/tracesdk/av;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->N()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/av;->m()Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/av;->m()Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/common/tracesdk/t;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ab()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/common/tracesdk/v;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ab()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/v;->B()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/v;->B()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(Ljava/lang/Iterable;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->P()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(I)Lcom/ddtaxi/common/tracesdk/ba;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ba;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ba;

    goto :goto_0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;

    goto :goto_0
.end method

.method public c(Ljava/lang/Iterable;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ab()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->q()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/common/tracesdk/ap;

    const-class v2, Lcom/ddtaxi/common/tracesdk/ar;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/ddtaxi/common/tracesdk/ao;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ao;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ao;

    goto :goto_0
.end method

.method public d()Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :goto_3
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_3
.end method

.method public d(Ljava/lang/Iterable;)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public e()Lcom/ddtaxi/common/tracesdk/ar;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ar;->M()Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->u()Lcom/ddtaxi/common/tracesdk/ap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/ar;->a(Lcom/ddtaxi/common/tracesdk/ap;)Lcom/ddtaxi/common/tracesdk/ar;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;

    goto :goto_0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->p()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Lcom/ddtaxi/common/tracesdk/ac;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ac;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ac;

    goto :goto_0
.end method

.method public g(I)Lcom/ddtaxi/common/tracesdk/ad;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ad;

    goto :goto_0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public h(I)Lcom/ddtaxi/common/tracesdk/ag;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ag;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ag;

    goto :goto_0
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public i(I)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->N()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public j(I)Lcom/ddtaxi/common/tracesdk/av;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->O()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/av;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public k(I)Lcom/ddtaxi/common/tracesdk/av;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->O()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/at;->a()Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/av;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public l(I)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->P()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public m(I)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/aj;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public n(I)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ah;->a()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/aj;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public o(I)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ab()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public p(I)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ac()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/v;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public q(I)Lcom/ddtaxi/common/tracesdk/v;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ac()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/t;->a()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/v;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public r(I)Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public s(I)Lcom/ddtaxi/common/tracesdk/af;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ae()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/af;

    return-object v0
.end method

.method public s()Lcom/ddtaxi/common/tracesdk/ap;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ap;->a()Lcom/ddtaxi/common/tracesdk/ap;

    move-result-object v0

    return-object v0
.end method

.method public t(I)Lcom/ddtaxi/common/tracesdk/af;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ae()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ad;->a()Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/af;

    return-object v0
.end method

.method public t()Lcom/ddtaxi/common/tracesdk/ap;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->u()Lcom/ddtaxi/common/tracesdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/ap;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/ar;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public u()Lcom/ddtaxi/common/tracesdk/ap;
    .locals 3

    new-instance v0, Lcom/ddtaxi/common/tracesdk/ap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/common/tracesdk/ap;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/common/tracesdk/ap;)V

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ddtaxi/common/tracesdk/ap;->a(Lcom/ddtaxi/common/tracesdk/ap;Ljava/util/List;)V

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_5

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ddtaxi/common/tracesdk/ap;->b(Lcom/ddtaxi/common/tracesdk/ap;Ljava/util/List;)V

    :goto_1
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :cond_2
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ddtaxi/common/tracesdk/ap;->c(Lcom/ddtaxi/common/tracesdk/ap;Ljava/util/List;)V

    :goto_2
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    :cond_3
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ddtaxi/common/tracesdk/ap;->d(Lcom/ddtaxi/common/tracesdk/ap;Ljava/util/List;)V

    :goto_3
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->ax()V

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/common/tracesdk/ap;->a(Lcom/ddtaxi/common/tracesdk/ap;Ljava/util/List;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/common/tracesdk/ap;->b(Lcom/ddtaxi/common/tracesdk/ap;Ljava/util/List;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->g:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/common/tracesdk/ap;->c(Lcom/ddtaxi/common/tracesdk/ap;Ljava/util/List;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/ar;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/common/tracesdk/ap;->d(Lcom/ddtaxi/common/tracesdk/ap;Ljava/util/List;)V

    goto :goto_3
.end method

.method public v()Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public w()Lcom/ddtaxi/common/tracesdk/av;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->O()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/at;->a()Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/av;

    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/ar;->O()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/ddtaxi/common/tracesdk/ar;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->d:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/ar;->e:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public final z()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->i()I

    move-result v2

    if-lt v0, v2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->l()I

    move-result v2

    if-lt v0, v2, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->o()I

    move-result v2

    if-lt v0, v2, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/ar;->r()I

    move-result v2

    if-lt v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/ar;->a(I)Lcom/ddtaxi/common/tracesdk/at;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/common/tracesdk/at;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/ar;->c(I)Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/common/tracesdk/ah;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/ar;->e(I)Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/common/tracesdk/t;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/ar;->g(I)Lcom/ddtaxi/common/tracesdk/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/common/tracesdk/ad;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
