.class public final Lcom/ddtaxi/common/tracesdk/v;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/ac;


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcom/ddtaxi/common/tracesdk/w;

.field private h:I

.field private i:I

.field private j:Ljava/util/List;

.field private k:Lcom/ddtaxi/a/a/gy;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    sget-object v0, Lcom/ddtaxi/common/tracesdk/w;->a:Lcom/ddtaxi/common/tracesdk/w;

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->g:Lcom/ddtaxi/common/tracesdk/w;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ab()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    sget-object v0, Lcom/ddtaxi/common/tracesdk/w;->a:Lcom/ddtaxi/common/tracesdk/w;

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->g:Lcom/ddtaxi/common/tracesdk/w;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ab()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/common/tracesdk/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/v;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->l()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aa()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/v;->ac()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method private ab()V
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/t;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ae()Lcom/ddtaxi/a/a/gy;

    :cond_0
    return-void
.end method

.method private static ac()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    new-instance v0, Lcom/ddtaxi/common/tracesdk/v;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/v;-><init>()V

    return-object v0
.end method

.method private ad()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    :cond_0
    return-void
.end method

.method private ae()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit16 v0, v0, 0x100

    const/16 v3, 0x100

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public A()Lcom/ddtaxi/common/tracesdk/t;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/t;->a()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v0

    return-object v0
.end method

.method public B()Lcom/ddtaxi/common/tracesdk/t;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->C()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/t;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/v;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public C()Lcom/ddtaxi/common/tracesdk/t;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/common/tracesdk/t;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/common/tracesdk/t;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/common/tracesdk/t;)V

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_9

    :goto_0
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/v;->b:J

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/common/tracesdk/t;->a(Lcom/ddtaxi/common/tracesdk/t;J)V

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/v;->c:I

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/t;->a(Lcom/ddtaxi/common/tracesdk/t;I)V

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/v;->d:I

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/t;->b(Lcom/ddtaxi/common/tracesdk/t;I)V

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/v;->e:I

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/t;->c(Lcom/ddtaxi/common/tracesdk/t;I)V

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/v;->f:I

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/t;->d(Lcom/ddtaxi/common/tracesdk/t;I)V

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/v;->g:Lcom/ddtaxi/common/tracesdk/w;

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/t;->a(Lcom/ddtaxi/common/tracesdk/t;Lcom/ddtaxi/common/tracesdk/w;)V

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/v;->h:I

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/t;->e(Lcom/ddtaxi/common/tracesdk/t;I)V

    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/v;->i:I

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/t;->f(Lcom/ddtaxi/common/tracesdk/t;I)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_8

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit16 v1, v1, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    :cond_7
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/t;->a(Lcom/ddtaxi/common/tracesdk/t;Ljava/util/List;)V

    :goto_1
    invoke-static {v2, v0}, Lcom/ddtaxi/common/tracesdk/t;->g(Lcom/ddtaxi/common/tracesdk/t;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->ax()V

    return-object v2

    :cond_8
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/t;->a(Lcom/ddtaxi/common/tracesdk/t;Ljava/util/List;)V

    goto :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public D()Lcom/ddtaxi/common/tracesdk/v;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/v;->b:J

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public E()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->c:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public F()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->d:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public G()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->e:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->A()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->A()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->f:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public K()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    sget-object v0, Lcom/ddtaxi/common/tracesdk/w;->a:Lcom/ddtaxi/common/tracesdk/w;

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->g:Lcom/ddtaxi/common/tracesdk/w;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public L()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->h:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public M()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->i:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public N()Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public O()Lcom/ddtaxi/common/tracesdk/aa;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ae()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/y;->a()Lcom/ddtaxi/common/tracesdk/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/aa;

    return-object v0
.end method

.method public P()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ae()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->C()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->C()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->e()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->e()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->e()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->d()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->d()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->d()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->B()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->B()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ddtaxi/common/tracesdk/aa;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/aa;->p()Lcom/ddtaxi/common/tracesdk/y;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/aa;->p()Lcom/ddtaxi/common/tracesdk/y;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/common/tracesdk/y;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(J)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/v;->b:J

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/common/tracesdk/t;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/common/tracesdk/t;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/common/tracesdk/t;)Lcom/ddtaxi/common/tracesdk/v;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/common/tracesdk/t;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/common/tracesdk/t;)Lcom/ddtaxi/common/tracesdk/v;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/t;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/common/tracesdk/t;)Lcom/ddtaxi/common/tracesdk/v;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/aa;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/aa;->p()Lcom/ddtaxi/common/tracesdk/y;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/aa;->p()Lcom/ddtaxi/common/tracesdk/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/t;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/t;->a()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->h()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ddtaxi/common/tracesdk/v;->a(J)Lcom/ddtaxi/common/tracesdk/v;

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->j()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/v;->c(I)Lcom/ddtaxi/common/tracesdk/v;

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->l()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/v;->d(I)Lcom/ddtaxi/common/tracesdk/v;

    :cond_3
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->n()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/v;->e(I)Lcom/ddtaxi/common/tracesdk/v;

    :cond_4
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->p()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/v;->f(I)Lcom/ddtaxi/common/tracesdk/v;

    :cond_5
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->q()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->r()Lcom/ddtaxi/common/tracesdk/w;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/common/tracesdk/w;)Lcom/ddtaxi/common/tracesdk/v;

    :cond_6
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->s()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->t()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/v;->g(I)Lcom/ddtaxi/common/tracesdk/v;

    :cond_7
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->u()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->v()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/v;->h(I)Lcom/ddtaxi/common/tracesdk/v;

    :cond_8
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_b

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/t;->b(Lcom/ddtaxi/common/tracesdk/t;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/t;->b(Lcom/ddtaxi/common/tracesdk/t;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/t;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/v;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/t;->b(Lcom/ddtaxi/common/tracesdk/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_b
    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/t;->b(Lcom/ddtaxi/common/tracesdk/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/t;->b(Lcom/ddtaxi/common/tracesdk/t;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/t;->L()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ae()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :cond_c
    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/t;->b(Lcom/ddtaxi/common/tracesdk/t;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_2
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/w;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput-object p1, p0, Lcom/ddtaxi/common/tracesdk/v;->g:Lcom/ddtaxi/common/tracesdk/w;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/y;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(I)Lcom/ddtaxi/common/tracesdk/y;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/y;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/y;

    goto :goto_0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/ddtaxi/common/tracesdk/ab;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ab;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ab;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/common/tracesdk/aa;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/aa;->p()Lcom/ddtaxi/common/tracesdk/y;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/aa;->p()Lcom/ddtaxi/common/tracesdk/y;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/common/tracesdk/y;)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/v;->c:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->m()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/common/tracesdk/t;

    const-class v2, Lcom/ddtaxi/common/tracesdk/v;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/common/tracesdk/v;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/v;->b:J

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/v;->c:I

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/v;->d:I

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/v;->e:I

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/v;->f:I

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    sget-object v0, Lcom/ddtaxi/common/tracesdk/w;->a:Lcom/ddtaxi/common/tracesdk/w;

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->g:Lcom/ddtaxi/common/tracesdk/w;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/v;->h:I

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput v2, p0, Lcom/ddtaxi/common/tracesdk/v;->i:I

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public d(I)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/v;->d:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public e()Lcom/ddtaxi/common/tracesdk/v;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/v;->ac()Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->C()Lcom/ddtaxi/common/tracesdk/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/v;->a(Lcom/ddtaxi/common/tracesdk/t;)Lcom/ddtaxi/common/tracesdk/v;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/v;->e:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->l()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/v;->f:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public g(I)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/v;->h:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/v;->b:J

    return-wide v0
.end method

.method public h(I)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/v;->i:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    return-object p0
.end method

.method public i(I)Lcom/ddtaxi/common/tracesdk/v;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ad()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->c:I

    return v0
.end method

.method public j(I)Lcom/ddtaxi/common/tracesdk/aa;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ae()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/aa;

    return-object v0
.end method

.method public k(I)Lcom/ddtaxi/common/tracesdk/aa;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/v;->ae()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/y;->a()Lcom/ddtaxi/common/tracesdk/y;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/aa;

    return-object v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->d:I

    return v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->e:I

    return v0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->f:I

    return v0
.end method

.method public q()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Lcom/ddtaxi/common/tracesdk/w;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->g:Lcom/ddtaxi/common/tracesdk/w;

    return-object v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->h:I

    return v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->a:I

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

.method public v()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/v;->i:I

    return v0
.end method

.method public w()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public x()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/v;->k:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final z()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->g()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/v;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
