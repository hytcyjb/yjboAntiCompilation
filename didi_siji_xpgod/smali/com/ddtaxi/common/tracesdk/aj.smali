.class public final Lcom/ddtaxi/common/tracesdk/aj;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/common/tracesdk/ao;


# instance fields
.field private a:I

.field private b:J

.field private c:D

.field private d:D

.field private e:D

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:J

.field private l:F

.field private m:I

.field private n:Ljava/util/List;

.field private o:Lcom/ddtaxi/a/a/gy;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aq()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aq()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/common/tracesdk/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/common/tracesdk/aj;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->h()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic am()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/aj;->ar()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method private aq()V
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ah;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->at()Lcom/ddtaxi/a/a/gy;

    :cond_0
    return-void
.end method

.method private static ar()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    new-instance v0, Lcom/ddtaxi/common/tracesdk/aj;

    invoke-direct {v0}, Lcom/ddtaxi/common/tracesdk/aj;-><init>()V

    return-object v0
.end method

.method private as()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    :cond_0
    return-void
.end method

.method private at()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v3, 0x1000

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public A()Lcom/ddtaxi/common/tracesdk/ah;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ah;->a()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v0

    return-object v0
.end method

.method public B()Lcom/ddtaxi/common/tracesdk/ah;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->F()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/common/tracesdk/ah;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/common/tracesdk/aj;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public C()J
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->k:J

    return-wide v0
.end method

.method public D()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->l:F

    return v0
.end method

.method public F()Lcom/ddtaxi/common/tracesdk/ah;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/common/tracesdk/ah;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/common/tracesdk/ah;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/common/tracesdk/ah;)V

    iget v3, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_d

    :goto_0
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/aj;->b:J

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/common/tracesdk/ah;->a(Lcom/ddtaxi/common/tracesdk/ah;J)V

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/aj;->c:D

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/common/tracesdk/ah;->a(Lcom/ddtaxi/common/tracesdk/ah;D)V

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/aj;->d:D

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/common/tracesdk/ah;->b(Lcom/ddtaxi/common/tracesdk/ah;D)V

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/aj;->e:D

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/common/tracesdk/ah;->c(Lcom/ddtaxi/common/tracesdk/ah;D)V

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->f:F

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ah;->a(Lcom/ddtaxi/common/tracesdk/ah;F)V

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->g:F

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ah;->b(Lcom/ddtaxi/common/tracesdk/ah;F)V

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->h:F

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ah;->c(Lcom/ddtaxi/common/tracesdk/ah;F)V

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->i:F

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ah;->d(Lcom/ddtaxi/common/tracesdk/ah;F)V

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->j:F

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ah;->e(Lcom/ddtaxi/common/tracesdk/ah;F)V

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget-wide v4, p0, Lcom/ddtaxi/common/tracesdk/aj;->k:J

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/common/tracesdk/ah;->b(Lcom/ddtaxi/common/tracesdk/ah;J)V

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->l:F

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ah;->f(Lcom/ddtaxi/common/tracesdk/ah;F)V

    and-int/lit16 v1, v3, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->m:I

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ah;->a(Lcom/ddtaxi/common/tracesdk/ah;I)V

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_c

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    :cond_b
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ah;->a(Lcom/ddtaxi/common/tracesdk/ah;Ljava/util/List;)V

    :goto_1
    invoke-static {v2, v0}, Lcom/ddtaxi/common/tracesdk/ah;->b(Lcom/ddtaxi/common/tracesdk/ah;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->ax()V

    return-object v2

    :cond_c
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ddtaxi/common/tracesdk/ah;->a(Lcom/ddtaxi/common/tracesdk/ah;Ljava/util/List;)V

    goto :goto_1

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method public G()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->b:J

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->A()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->A()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->c:D

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public K()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->d:D

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public L()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->m:I

    return v0
.end method

.method public N()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public O()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public P()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->F()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->F()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->e()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->e()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->e()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->d()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->d()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->d()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->B()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->B()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v0

    return-object v0
.end method

.method public a(D)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/aj;->c:D

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public a(F)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/aj;->f:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public a(ILcom/ddtaxi/common/tracesdk/ak;)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->as()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/common/tracesdk/am;)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->as()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/am;->p()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/am;->p()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(J)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/aj;->b:J

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/common/tracesdk/ah;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/common/tracesdk/ah;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/aj;->a(Lcom/ddtaxi/common/tracesdk/ah;)Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/common/tracesdk/ah;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/aj;->a(Lcom/ddtaxi/common/tracesdk/ah;)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ah;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->a(Lcom/ddtaxi/common/tracesdk/ah;)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/ah;)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ah;->a()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->h()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ddtaxi/common/tracesdk/aj;->a(J)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->j()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ddtaxi/common/tracesdk/aj;->a(D)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->l()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ddtaxi/common/tracesdk/aj;->b(D)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_3
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->n()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ddtaxi/common/tracesdk/aj;->c(D)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_4
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->p()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->a(F)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_5
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->q()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->r()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->b(F)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_6
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->s()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->t()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->c(F)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_7
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->u()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->v()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->d(F)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_8
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->w()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->x()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->e(F)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_9
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->y()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->C()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ddtaxi/common/tracesdk/aj;->b(J)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_a
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->D()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->E()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->f(F)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_b
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->L()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->M()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->c(I)Lcom/ddtaxi/common/tracesdk/aj;

    :cond_c
    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_f

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ah;->b(Lcom/ddtaxi/common/tracesdk/ah;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ah;->b(Lcom/ddtaxi/common/tracesdk/ah;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    :cond_d
    :goto_2
    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/ah;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/aj;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->as()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ah;->b(Lcom/ddtaxi/common/tracesdk/ah;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_f
    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ah;->b(Lcom/ddtaxi/common/tracesdk/ah;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ah;->b(Lcom/ddtaxi/common/tracesdk/ah;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v1, v1, -0x1001

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ah;->T()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->at()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :cond_10
    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    goto :goto_2

    :cond_11
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/common/tracesdk/ah;->b(Lcom/ddtaxi/common/tracesdk/ah;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_2
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/ak;)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->as()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/common/tracesdk/am;)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->as()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/am;->p()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/common/tracesdk/am;->p()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->as()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(I)Lcom/ddtaxi/common/tracesdk/ak;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ak;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/ak;

    goto :goto_0
.end method

.method public aa()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->e:D

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public ab()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->f:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public ac()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->g:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public ad()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->h:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public ae()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->i:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public af()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->j:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public ag()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->k:J

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public ah()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->l:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public ai()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->m:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public aj()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public ak()Lcom/ddtaxi/common/tracesdk/am;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->at()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ak;->a()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/am;

    return-object v0
.end method

.method public al()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->at()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/aj;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/aj;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public b(D)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/aj;->d:D

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public b(F)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/aj;->g:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public b(ILcom/ddtaxi/common/tracesdk/ak;)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->as()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/common/tracesdk/am;)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->as()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/am;->p()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/common/tracesdk/am;->p()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(J)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/aj;->k:J

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public b(I)Lcom/ddtaxi/common/tracesdk/an;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/an;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/an;

    goto :goto_0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/common/tracesdk/aj;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/aj;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public c(D)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/common/tracesdk/aj;->e:D

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public c(F)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/aj;->h:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public c(I)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/aj;->m:I

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->i()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/common/tracesdk/ah;

    const-class v2, Lcom/ddtaxi/common/tracesdk/aj;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/common/tracesdk/aj;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    iput-wide v4, p0, Lcom/ddtaxi/common/tracesdk/aj;->b:J

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput-wide v2, p0, Lcom/ddtaxi/common/tracesdk/aj;->c:D

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput-wide v2, p0, Lcom/ddtaxi/common/tracesdk/aj;->d:D

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput-wide v2, p0, Lcom/ddtaxi/common/tracesdk/aj;->e:D

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->f:F

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->g:F

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->h:F

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->i:F

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->j:F

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput-wide v4, p0, Lcom/ddtaxi/common/tracesdk/aj;->k:J

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->l:F

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->m:I

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public d(F)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/aj;->i:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public d(I)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->as()V

    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->o:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public e()Lcom/ddtaxi/common/tracesdk/aj;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/aj;->ar()Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->F()Lcom/ddtaxi/common/tracesdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/common/tracesdk/aj;->a(Lcom/ddtaxi/common/tracesdk/ah;)Lcom/ddtaxi/common/tracesdk/aj;

    move-result-object v0

    return-object v0
.end method

.method public e(F)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/aj;->j:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public e(I)Lcom/ddtaxi/common/tracesdk/am;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->at()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/am;

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/r;->h()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public f(F)Lcom/ddtaxi/common/tracesdk/aj;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    iput p1, p0, Lcom/ddtaxi/common/tracesdk/aj;->l:F

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->aB()V

    return-object p0
.end method

.method public f(I)Lcom/ddtaxi/common/tracesdk/am;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/common/tracesdk/aj;->at()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/common/tracesdk/ak;->a()Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/common/tracesdk/am;

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

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

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->b:J

    return-wide v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

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

.method public j()D
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->c:D

    return-wide v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

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

.method public l()D
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->d:D

    return-wide v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

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

.method public n()D
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->e:D

    return-wide v0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

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

.method public p()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->f:F

    return v0
.end method

.method public q()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

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

.method public r()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->g:F

    return v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

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

.method public t()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->h:F

    return v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

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

.method public v()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->i:F

    return v0
.end method

.method public w()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()F
    .locals 1

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->j:F

    return v0
.end method

.method public y()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/common/tracesdk/aj;->a:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->g()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/common/tracesdk/aj;->P()I

    move-result v2

    if-lt v0, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ddtaxi/common/tracesdk/aj;->a(I)Lcom/ddtaxi/common/tracesdk/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/common/tracesdk/ak;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
