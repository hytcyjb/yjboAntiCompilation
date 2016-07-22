.class public final Lcom/ddtaxi/a/a/de;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/a/a/dj;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Lcom/ddtaxi/a/a/gy;

.field private d:Ljava/lang/Object;

.field private e:J

.field private f:J

.field private g:D

.field private h:Lcom/ddtaxi/a/a/k;

.field private i:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->d:Ljava/lang/Object;

    sget-object v0, Lcom/ddtaxi/a/a/k;->d:Lcom/ddtaxi/a/a/k;

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->h:Lcom/ddtaxi/a/a/k;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->i:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->N()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->d:Ljava/lang/Object;

    sget-object v0, Lcom/ddtaxi/a/a/k;->d:Lcom/ddtaxi/a/a/k;

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->h:Lcom/ddtaxi/a/a/k;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->i:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->N()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/de;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/de;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method static synthetic M()Lcom/ddtaxi/a/a/de;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/de;->O()Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method private N()V
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->aa()Lcom/ddtaxi/a/a/gy;

    :cond_0
    return-void
.end method

.method private static O()Lcom/ddtaxi/a/a/de;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/de;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/de;-><init>()V

    return-object v0
.end method

.method private P()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    :cond_0
    return-void
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->L()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method private aa()Lcom/ddtaxi/a/a/gy;
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    iget v3, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public A()Lcom/ddtaxi/a/a/dc;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/a/a/dc;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/a/a/dc;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/dc;)V

    iget v3, p0, Lcom/ddtaxi/a/a/de;->a:I

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v4, :cond_6

    iget v4, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    iget v4, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/ddtaxi/a/a/de;->a:I

    :cond_0
    iget-object v4, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/ddtaxi/a/a/dc;->a(Lcom/ddtaxi/a/a/dc;Ljava/util/List;)V

    :goto_0
    and-int/lit8 v4, v3, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    :goto_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/de;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/dc;->a(Lcom/ddtaxi/a/a/dc;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-wide v4, p0, Lcom/ddtaxi/a/a/de;->e:J

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/a/a/dc;->a(Lcom/ddtaxi/a/a/dc;J)V

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget-wide v4, p0, Lcom/ddtaxi/a/a/de;->f:J

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/a/a/dc;->b(Lcom/ddtaxi/a/a/dc;J)V

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    iget-wide v4, p0, Lcom/ddtaxi/a/a/de;->g:D

    invoke-static {v2, v4, v5}, Lcom/ddtaxi/a/a/dc;->a(Lcom/ddtaxi/a/a/dc;D)V

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    iget-object v1, p0, Lcom/ddtaxi/a/a/de;->h:Lcom/ddtaxi/a/a/k;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/dc;->a(Lcom/ddtaxi/a/a/dc;Lcom/ddtaxi/a/a/k;)V

    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    iget-object v1, p0, Lcom/ddtaxi/a/a/de;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/dc;->b(Lcom/ddtaxi/a/a/dc;Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/dc;->a(Lcom/ddtaxi/a/a/dc;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->ax()V

    return-object v2

    :cond_6
    iget-object v4, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v4}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ddtaxi/a/a/dc;->a(Lcom/ddtaxi/a/a/dc;Ljava/util/List;)V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public B()Lcom/ddtaxi/a/a/de;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public C()Lcom/ddtaxi/a/a/dh;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/df;->a()Lcom/ddtaxi/a/a/df;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dh;

    return-object v0
.end method

.method public D()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public E()Lcom/ddtaxi/a/a/de;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/dc;->a()Lcom/ddtaxi/a/a/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dc;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public F()Lcom/ddtaxi/a/a/de;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/a/a/de;->e:J

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public G()Lcom/ddtaxi/a/a/de;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/a/a/de;->f:J

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->x()Lcom/ddtaxi/a/a/dc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->x()Lcom/ddtaxi/a/a/dc;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/ddtaxi/a/a/de;
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/a/a/de;->g:D

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public K()Lcom/ddtaxi/a/a/de;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/dc;->a()Lcom/ddtaxi/a/a/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dc;->t()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public L()Lcom/ddtaxi/a/a/de;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/dc;->a()Lcom/ddtaxi/a/a/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dc;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->A()Lcom/ddtaxi/a/a/dc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->A()Lcom/ddtaxi/a/a/dc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->e()Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->e()Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->e()Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->d()Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->d()Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->d()Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->y()Lcom/ddtaxi/a/a/dc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->y()Lcom/ddtaxi/a/a/dc;

    move-result-object v0

    return-object v0
.end method

.method public a(D)Lcom/ddtaxi/a/a/de;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/a/a/de;->g:D

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public a(ILcom/ddtaxi/a/a/df;)Lcom/ddtaxi/a/a/de;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/dh;)Lcom/ddtaxi/a/a/de;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/dh;->m()Lcom/ddtaxi/a/a/df;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/dh;->m()Lcom/ddtaxi/a/a/df;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(J)Lcom/ddtaxi/a/a/de;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/a/a/de;->e:J

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/dc;)Lcom/ddtaxi/a/a/de;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/ddtaxi/a/a/dc;->a()Lcom/ddtaxi/a/a/dc;

    move-result-object v1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_9

    invoke-static {p1}, Lcom/ddtaxi/a/a/dc;->b(Lcom/ddtaxi/a/a/dc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/ddtaxi/a/a/dc;->b(Lcom/ddtaxi/a/a/dc;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dc;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/dc;->c(Lcom/ddtaxi/a/a/dc;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dc;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dc;->n()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/de;->a(J)Lcom/ddtaxi/a/a/de;

    :cond_3
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dc;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dc;->p()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/de;->b(J)Lcom/ddtaxi/a/a/de;

    :cond_4
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dc;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dc;->r()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ddtaxi/a/a/de;->a(D)Lcom/ddtaxi/a/a/de;

    :cond_5
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dc;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dc;->t()Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/de;->b(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/de;

    :cond_6
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dc;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/dc;->d(Lcom/ddtaxi/a/a/dc;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    :cond_7
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dc;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/de;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/a/a/dc;->b(Lcom/ddtaxi/a/a/dc;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_9
    invoke-static {p1}, Lcom/ddtaxi/a/a/dc;->b(Lcom/ddtaxi/a/a/dc;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/dc;->b(Lcom/ddtaxi/a/a/dc;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ddtaxi/a/a/de;->a:I

    sget-boolean v1, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/dc;->b(Lcom/ddtaxi/a/a/dc;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto/16 :goto_2
.end method

.method public a(Lcom/ddtaxi/a/a/df;)Lcom/ddtaxi/a/a/de;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/dh;)Lcom/ddtaxi/a/a/de;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dh;->m()Lcom/ddtaxi/a/a/df;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dh;->m()Lcom/ddtaxi/a/a/df;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/de;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/dc;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/dc;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/de;->a(Lcom/ddtaxi/a/a/dc;)Lcom/ddtaxi/a/a/de;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/de;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/de;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/de;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/a/a/dc;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/de;->a(Lcom/ddtaxi/a/a/dc;)Lcom/ddtaxi/a/a/de;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dc;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/de;->a(Lcom/ddtaxi/a/a/dc;)Lcom/ddtaxi/a/a/de;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/de;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/de;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/de;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public a(I)Lcom/ddtaxi/a/a/df;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/df;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/df;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/df;)Lcom/ddtaxi/a/a/de;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/dh;)Lcom/ddtaxi/a/a/de;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/dh;->m()Lcom/ddtaxi/a/a/df;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/dh;->m()Lcom/ddtaxi/a/a/df;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(J)Lcom/ddtaxi/a/a/de;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    iput-wide p1, p0, Lcom/ddtaxi/a/a/de;->f:J

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public b(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/de;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/de;->h:Lcom/ddtaxi/a/a/k;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ddtaxi/a/a/de;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/de;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public b(I)Lcom/ddtaxi/a/a/di;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/di;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/di;

    goto :goto_0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/de;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/de;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/de;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/ddtaxi/a/a/de;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/de;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->M()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/dc;

    const-class v2, Lcom/ddtaxi/a/a/de;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/de;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/de;
    .locals 3

    const-wide/16 v1, 0x0

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    iput-wide v1, p0, Lcom/ddtaxi/a/a/de;->e:J

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    iput-wide v1, p0, Lcom/ddtaxi/a/a/de;->f:J

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ddtaxi/a/a/de;->g:D

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    sget-object v0, Lcom/ddtaxi/a/a/k;->d:Lcom/ddtaxi/a/a/k;

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->h:Lcom/ddtaxi/a/a/k;

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->i:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public d(I)Lcom/ddtaxi/a/a/dh;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dh;

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/de;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/de;->O()Lcom/ddtaxi/a/a/de;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->A()Lcom/ddtaxi/a/a/dc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/de;->a(Lcom/ddtaxi/a/a/dc;)Lcom/ddtaxi/a/a/de;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/ddtaxi/a/a/dh;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/de;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/df;->a()Lcom/ddtaxi/a/a/df;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dh;

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->L()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/de;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/a/a/de;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/de;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->aB()V

    return-object p0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

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

.method public k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/de;->d:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public l()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->d:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

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

.method public n()J
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/a/a/de;->e:J

    return-wide v0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

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

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/a/a/de;->f:J

    return-wide v0
.end method

.method public q()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

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

.method public r()D
    .locals 2

    iget-wide v0, p0, Lcom/ddtaxi/a/a/de;->g:D

    return-wide v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

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

.method public t()Lcom/ddtaxi/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->h:Lcom/ddtaxi/a/a/k;

    return-object v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/de;->a:I

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

.method public v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/de;->i:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public w()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/de;->i:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/de;->i:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public x()Lcom/ddtaxi/a/a/dc;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/dc;->a()Lcom/ddtaxi/a/a/dc;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/ddtaxi/a/a/dc;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->A()Lcom/ddtaxi/a/a/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dc;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/a/a/de;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final z()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/de;->i()I

    move-result v2

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/de;->a(I)Lcom/ddtaxi/a/a/df;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/df;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
