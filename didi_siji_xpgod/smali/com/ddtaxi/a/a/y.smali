.class public final Lcom/ddtaxi/a/a/y;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/a/a/ad;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;

.field private d:Lcom/ddtaxi/a/a/gy;

.field private e:Ljava/util/List;

.field private f:Lcom/ddtaxi/a/a/gy;

.field private g:Ljava/util/List;

.field private h:Lcom/ddtaxi/a/a/gy;

.field private i:Ljava/util/List;

.field private j:Lcom/ddtaxi/a/a/gy;

.field private k:Ljava/util/List;

.field private l:Lcom/ddtaxi/a/a/gy;

.field private m:Ljava/util/List;

.field private n:Lcom/ddtaxi/a/a/gy;

.field private o:Lcom/ddtaxi/a/a/bw;

.field private p:Lcom/ddtaxi/a/a/hq;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-static {}, Lcom/ddtaxi/a/a/bw;->a()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->at()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-static {}, Lcom/ddtaxi/a/a/bw;->a()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->at()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/y;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->h()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method private aC()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aD()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :cond_0
    return-void
.end method

.method private aE()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aF()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :cond_0
    return-void
.end method

.method private aG()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aH()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :cond_0
    return-void
.end method

.method private aI()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v3, 0x10

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aJ()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :cond_0
    return-void
.end method

.method private aK()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aL()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :cond_0
    return-void
.end method

.method private aM()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aN()Lcom/ddtaxi/a/a/hq;
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/hq;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->L()Lcom/ddtaxi/a/a/bw;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->az()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ddtaxi/a/a/hq;-><init>(Lcom/ddtaxi/a/a/ep;Lcom/ddtaxi/a/a/ev;Z)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    return-object v0
.end method

.method static synthetic as()Lcom/ddtaxi/a/a/y;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/y;->au()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method private at()V
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aC()Lcom/ddtaxi/a/a/gy;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aE()Lcom/ddtaxi/a/a/gy;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aG()Lcom/ddtaxi/a/a/gy;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aI()Lcom/ddtaxi/a/a/gy;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aK()Lcom/ddtaxi/a/a/gy;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aM()Lcom/ddtaxi/a/a/gy;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aN()Lcom/ddtaxi/a/a/hq;

    :cond_0
    return-void
.end method

.method private static au()Lcom/ddtaxi/a/a/y;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/y;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/y;-><init>()V

    return-object v0
.end method

.method private av()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public A(I)Lcom/ddtaxi/a/a/ab;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aK()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/z;->a()Lcom/ddtaxi/a/a/z;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ab;

    return-object v0
.end method

.method public A()Lcom/ddtaxi/a/a/w;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/w;->a()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public B()Lcom/ddtaxi/a/a/w;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->F()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/w;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/a/a/y;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public B(I)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aL()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public C(I)Lcom/ddtaxi/a/a/ck;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aM()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ck;

    return-object v0
.end method

.method public C()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public D()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public D(I)Lcom/ddtaxi/a/a/ck;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aM()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/ci;->a()Lcom/ddtaxi/a/a/ci;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ck;

    return-object v0
.end method

.method public E()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()Lcom/ddtaxi/a/a/w;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/a/a/w;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/a/a/w;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/w;)V

    iget v3, p0, Lcom/ddtaxi/a/a/y;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_e

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->a(Lcom/ddtaxi/a/a/w;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->a(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V

    :goto_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->b(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V

    :goto_2
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_8

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    :cond_2
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->c(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V

    :goto_3
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_9

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    :cond_3
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->d(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V

    :goto_4
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_a

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    :cond_4
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->e(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V

    :goto_5
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_b

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    :cond_5
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->f(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V

    :goto_6
    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_d

    or-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/w;->a(Lcom/ddtaxi/a/a/w;Lcom/ddtaxi/a/a/bw;)V

    :goto_8
    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->a(Lcom/ddtaxi/a/a/w;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->ax()V

    return-object v2

    :cond_6
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->a(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->b(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->c(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V

    goto/16 :goto_3

    :cond_9
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->d(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V

    goto/16 :goto_4

    :cond_a
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->e(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/w;->f(Lcom/ddtaxi/a/a/w;Ljava/util/List;)V

    goto :goto_6

    :cond_c
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->d()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bw;

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/w;->a(Lcom/ddtaxi/a/a/w;Lcom/ddtaxi/a/a/bw;)V

    goto :goto_8

    :cond_d
    move v1, v0

    goto :goto_7

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method

.method public G()Lcom/ddtaxi/a/a/y;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/w;->a()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/w;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    return-object p0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->A()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->A()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public K()Lcom/ddtaxi/a/a/aw;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aC()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/au;->a()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/aw;

    return-object v0
.end method

.method public L()Lcom/ddtaxi/a/a/bw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->c()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bw;

    goto :goto_0
.end method

.method public M()Lcom/ddtaxi/a/a/bz;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->f()Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bz;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    goto :goto_0
.end method

.method public N()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aC()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public O()Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public P()Lcom/ddtaxi/a/a/aw;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aE()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/au;->a()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/aw;

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->F()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->F()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->e()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->e()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->e()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->d()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->d()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->d()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->B()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->B()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/ddtaxi/a/a/au;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/ab;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aJ()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ab;->l()Lcom/ddtaxi/a/a/z;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ab;->l()Lcom/ddtaxi/a/a/z;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/ae;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aH()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/ag;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aH()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ag;->q()Lcom/ddtaxi/a/a/ae;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ag;->q()Lcom/ddtaxi/a/a/ae;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->av()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/aw;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->av()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/ci;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aL()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/ck;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aL()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ck;->k()Lcom/ddtaxi/a/a/ci;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ck;->k()Lcom/ddtaxi/a/a/ci;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/w;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aF()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/y;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aF()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/y;->B()Lcom/ddtaxi/a/a/w;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/y;->B()Lcom/ddtaxi/a/a/w;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/z;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aJ()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/ab;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aJ()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ab;->l()Lcom/ddtaxi/a/a/z;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ab;->l()Lcom/ddtaxi/a/a/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/ae;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aH()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/ag;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aH()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ag;->q()Lcom/ddtaxi/a/a/ae;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ag;->q()Lcom/ddtaxi/a/a/ae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->av()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/aw;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->av()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/bw;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hq;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/by;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/by;->q()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/by;->q()Lcom/ddtaxi/a/a/bw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/hq;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/ci;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aL()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/ck;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aL()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ck;->k()Lcom/ddtaxi/a/a/ci;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ck;->k()Lcom/ddtaxi/a/a/ci;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/y;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/w;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/w;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/y;->a(Lcom/ddtaxi/a/a/w;)Lcom/ddtaxi/a/a/y;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/y;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/y;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/y;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/a/a/w;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/y;->a(Lcom/ddtaxi/a/a/w;)Lcom/ddtaxi/a/a/y;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/y;->a(Lcom/ddtaxi/a/a/w;)Lcom/ddtaxi/a/a/y;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/w;)Lcom/ddtaxi/a/a/y;
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/ddtaxi/a/a/w;->a()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->b(Lcom/ddtaxi/a/a/w;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->c(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->c(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_e

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->d(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->d(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :goto_3
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_12

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->e(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->e(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :goto_5
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :cond_4
    :goto_6
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_16

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->f(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->f(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :goto_7
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :cond_5
    :goto_8
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1a

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->g(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->g(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :goto_9
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :cond_6
    :goto_a
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1e

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->h(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->h(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :goto_b
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :cond_7
    :goto_c
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->E()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->L()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/y;->b(Lcom/ddtaxi/a/a/bw;)Lcom/ddtaxi/a/a/y;

    :cond_8
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/w;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/y;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->av()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->c(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_a
    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->c(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->c(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aC()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :goto_d
    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_2

    :cond_b
    move-object v0, v1

    goto :goto_d

    :cond_c
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->c(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_2

    :cond_d
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aD()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->d(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_e
    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->d(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->d(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aE()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_4

    :cond_f
    move-object v0, v1

    goto :goto_e

    :cond_10
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->d(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_4

    :cond_11
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aF()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->e(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_12
    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->e(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->e(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aG()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_6

    :cond_13
    move-object v0, v1

    goto :goto_f

    :cond_14
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->e(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_6

    :cond_15
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aH()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->f(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    :cond_16
    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->f(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->f(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aI()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_8

    :cond_17
    move-object v0, v1

    goto :goto_10

    :cond_18
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->f(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_8

    :cond_19
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aJ()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->g(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9

    :cond_1a
    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->g(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->g(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aK()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :goto_11
    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_a

    :cond_1b
    move-object v0, v1

    goto :goto_11

    :cond_1c
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->g(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_a

    :cond_1d
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aL()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->h(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_b

    :cond_1e
    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->h(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->h(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aM()Lcom/ddtaxi/a/a/gy;

    move-result-object v1

    :cond_1f
    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_c

    :cond_20
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/w;->h(Lcom/ddtaxi/a/a/w;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_c
.end method

.method public a(Lcom/ddtaxi/a/a/y;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aF()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/y;->B()Lcom/ddtaxi/a/a/w;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/y;->B()Lcom/ddtaxi/a/a/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/z;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aJ()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->av()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/y;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/y;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    return-object p0
.end method

.method public aa()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aE()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ab()Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public ac()Lcom/ddtaxi/a/a/y;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aG()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/w;->a()Lcom/ddtaxi/a/a/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/y;

    return-object v0
.end method

.method public ad()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aG()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ae()Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public af()Lcom/ddtaxi/a/a/ag;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aI()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/ae;->a()Lcom/ddtaxi/a/a/ae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ag;

    return-object v0
.end method

.method public ag()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aI()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ah()Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public ai()Lcom/ddtaxi/a/a/ab;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aK()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/z;->a()Lcom/ddtaxi/a/a/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ab;

    return-object v0
.end method

.method public aj()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aK()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ak()Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public al()Lcom/ddtaxi/a/a/ck;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aM()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/ci;->a()Lcom/ddtaxi/a/a/ci;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ck;

    return-object v0
.end method

.method public am()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aM()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public aq()Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/bw;->a()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->g()Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public ar()Lcom/ddtaxi/a/a/by;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aN()Lcom/ddtaxi/a/a/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->e()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/by;

    return-object v0
.end method

.method public b(I)Lcom/ddtaxi/a/a/bb;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bb;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bb;

    goto :goto_0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/y;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/y;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public b(ILcom/ddtaxi/a/a/ab;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aJ()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ab;->l()Lcom/ddtaxi/a/a/z;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ab;->l()Lcom/ddtaxi/a/a/z;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/ae;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aH()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/ag;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aH()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ag;->q()Lcom/ddtaxi/a/a/ae;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ag;->q()Lcom/ddtaxi/a/a/ae;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->av()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/aw;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->av()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/ci;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aL()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/ck;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aL()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ck;->k()Lcom/ddtaxi/a/a/ci;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ck;->k()Lcom/ddtaxi/a/a/ci;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/w;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aF()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/y;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aF()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/y;->B()Lcom/ddtaxi/a/a/w;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/y;->B()Lcom/ddtaxi/a/a/w;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/z;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aJ()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(Lcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aD()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(Lcom/ddtaxi/a/a/aw;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aD()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(Lcom/ddtaxi/a/a/bw;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    invoke-static {}, Lcom/ddtaxi/a/a/bw;->a()Lcom/ddtaxi/a/a/bw;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    invoke-static {v0}, Lcom/ddtaxi/a/a/bw;->a(Lcom/ddtaxi/a/a/bw;)Lcom/ddtaxi/a/a/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/by;->a(Lcom/ddtaxi/a/a/bw;)Lcom/ddtaxi/a/a/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/by;->r()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_1
    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hq;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_1
.end method

.method public b(Lcom/ddtaxi/a/a/w;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aF()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aD()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public c(I)Lcom/ddtaxi/a/a/au;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;

    goto :goto_0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/y;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/y;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public c(ILcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aD()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public c(ILcom/ddtaxi/a/a/aw;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aD()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public c(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aF()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->i()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/w;

    const-class v2, Lcom/ddtaxi/a/a/y;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/y;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/ddtaxi/a/a/bb;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bb;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bb;

    goto :goto_0
.end method

.method public d()Lcom/ddtaxi/a/a/y;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :goto_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :goto_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    :goto_5
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_6

    invoke-static {}, Lcom/ddtaxi/a/a/bw;->a()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->o:Lcom/ddtaxi/a/a/bw;

    :goto_6
    iget v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ddtaxi/a/a/y;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->p:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->g()Lcom/ddtaxi/a/a/hq;

    goto :goto_6
.end method

.method public d(ILcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aD()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public d(ILcom/ddtaxi/a/a/aw;)Lcom/ddtaxi/a/a/y;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aD()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public d(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aH()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public e(I)Lcom/ddtaxi/a/a/w;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/w;

    goto :goto_0
.end method

.method public e()Lcom/ddtaxi/a/a/y;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/y;->au()Lcom/ddtaxi/a/a/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->F()Lcom/ddtaxi/a/a/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/y;->a(Lcom/ddtaxi/a/a/w;)Lcom/ddtaxi/a/a/y;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aJ()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public f(I)Lcom/ddtaxi/a/a/ad;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ad;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ad;

    goto :goto_0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->h()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aL()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public g(I)Lcom/ddtaxi/a/a/ae;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/y;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(I)Lcom/ddtaxi/a/a/ah;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ah;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ah;

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/y;->b:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public i()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/y;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public i(I)Lcom/ddtaxi/a/a/z;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/z;

    goto :goto_0
.end method

.method public j(I)Lcom/ddtaxi/a/a/ac;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ac;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ac;

    goto :goto_0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public k(I)Lcom/ddtaxi/a/a/ci;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ci;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ci;

    goto :goto_0
.end method

.method public k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public l(I)Lcom/ddtaxi/a/a/cl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cl;

    goto :goto_0
.end method

.method public m(I)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->av()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public m()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public n(I)Lcom/ddtaxi/a/a/aw;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aC()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/aw;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public o(I)Lcom/ddtaxi/a/a/aw;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aC()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/au;->a()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/aw;

    return-object v0
.end method

.method public p(I)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aD()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->f:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public p()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public q(I)Lcom/ddtaxi/a/a/aw;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aE()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/aw;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public r(I)Lcom/ddtaxi/a/a/aw;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aE()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/au;->a()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/aw;

    return-object v0
.end method

.method public s(I)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aF()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->h:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public s()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public t(I)Lcom/ddtaxi/a/a/y;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aG()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/y;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public u(I)Lcom/ddtaxi/a/a/y;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aG()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/w;->a()Lcom/ddtaxi/a/a/w;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/y;

    return-object v0
.end method

.method public v(I)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aH()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->j:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public v()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public w(I)Lcom/ddtaxi/a/a/ag;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aI()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ag;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public x(I)Lcom/ddtaxi/a/a/ag;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aI()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/ae;->a()Lcom/ddtaxi/a/a/ae;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ag;

    return-object v0
.end method

.method public y(I)Lcom/ddtaxi/a/a/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aJ()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->l:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public y()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->m:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/y;->n:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public z(I)Lcom/ddtaxi/a/a/ab;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/y;->aK()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ab;

    return-object v0
.end method

.method public final z()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->l()I

    move-result v2

    if-lt v0, v2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->o()I

    move-result v2

    if-lt v0, v2, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->r()I

    move-result v2

    if-lt v0, v2, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->u()I

    move-result v2

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->E()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/y;->L()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bw;->z()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    :goto_4
    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/y;->a(I)Lcom/ddtaxi/a/a/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/au;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/y;->c(I)Lcom/ddtaxi/a/a/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/au;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/y;->e(I)Lcom/ddtaxi/a/a/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/w;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/y;->g(I)Lcom/ddtaxi/a/a/ae;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/ae;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    goto :goto_4
.end method
