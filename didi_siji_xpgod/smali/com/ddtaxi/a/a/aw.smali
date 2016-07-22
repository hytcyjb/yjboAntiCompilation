.class public final Lcom/ddtaxi/a/a/aw;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/a/a/bb;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:I

.field private d:Lcom/ddtaxi/a/a/ax;

.field private e:Lcom/ddtaxi/a/a/az;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:I

.field private j:Lcom/ddtaxi/a/a/bc;

.field private k:Lcom/ddtaxi/a/a/hq;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->b:Ljava/lang/Object;

    sget-object v0, Lcom/ddtaxi/a/a/ax;->a:Lcom/ddtaxi/a/a/ax;

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->d:Lcom/ddtaxi/a/a/ax;

    sget-object v0, Lcom/ddtaxi/a/a/az;->a:Lcom/ddtaxi/a/a/az;

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->e:Lcom/ddtaxi/a/a/az;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->f:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->g:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->h:Ljava/lang/Object;

    invoke-static {}, Lcom/ddtaxi/a/a/bc;->a()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/aw;->ae()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->b:Ljava/lang/Object;

    sget-object v0, Lcom/ddtaxi/a/a/ax;->a:Lcom/ddtaxi/a/a/ax;

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->d:Lcom/ddtaxi/a/a/ax;

    sget-object v0, Lcom/ddtaxi/a/a/az;->a:Lcom/ddtaxi/a/a/az;

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->e:Lcom/ddtaxi/a/a/az;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->f:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->g:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->h:Ljava/lang/Object;

    invoke-static {}, Lcom/ddtaxi/a/a/bc;->a()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/aw;->ae()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/aw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/aw;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->j()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ad()Lcom/ddtaxi/a/a/aw;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/aw;->af()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method private ae()V
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/aw;->ag()Lcom/ddtaxi/a/a/hq;

    :cond_0
    return-void
.end method

.method private static af()Lcom/ddtaxi/a/a/aw;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/aw;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/aw;-><init>()V

    return-object v0
.end method

.method private ag()Lcom/ddtaxi/a/a/hq;
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/hq;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->E()Lcom/ddtaxi/a/a/bc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->az()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ddtaxi/a/a/hq;-><init>(Lcom/ddtaxi/a/a/ep;Lcom/ddtaxi/a/a/ev;Z)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    return-object v0
.end method


# virtual methods
.method public A()Lcom/ddtaxi/a/a/au;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/au;->a()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    return-object v0
.end method

.method public B()Lcom/ddtaxi/a/a/au;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->F()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/a/a/aw;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->i:I

    return v0
.end method

.method public D()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

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

.method public E()Lcom/ddtaxi/a/a/bc;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->c()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bc;

    goto :goto_0
.end method

.method public F()Lcom/ddtaxi/a/a/au;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/a/a/au;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/a/a/au;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/au;)V

    iget v3, p0, Lcom/ddtaxi/a/a/aw;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_9

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/aw;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/au;->a(Lcom/ddtaxi/a/a/au;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ddtaxi/a/a/aw;->c:I

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/au;->a(Lcom/ddtaxi/a/a/au;I)V

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/aw;->d:Lcom/ddtaxi/a/a/ax;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/au;->a(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/ax;)V

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lcom/ddtaxi/a/a/aw;->e:Lcom/ddtaxi/a/a/az;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/au;->a(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/az;)V

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/ddtaxi/a/a/aw;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/au;->b(Lcom/ddtaxi/a/a/au;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lcom/ddtaxi/a/a/aw;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/au;->c(Lcom/ddtaxi/a/a/au;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lcom/ddtaxi/a/a/aw;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/au;->d(Lcom/ddtaxi/a/a/au;Ljava/lang/Object;)V

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lcom/ddtaxi/a/a/aw;->i:I

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/au;->b(Lcom/ddtaxi/a/a/au;I)V

    and-int/lit16 v1, v3, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_8

    or-int/lit16 v0, v0, 0x100

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/au;->a(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/bc;)V

    :goto_2
    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/au;->c(Lcom/ddtaxi/a/a/au;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->ax()V

    return-object v2

    :cond_7
    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->d()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bc;

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/au;->a(Lcom/ddtaxi/a/a/au;Lcom/ddtaxi/a/a/bc;)V

    goto :goto_2

    :cond_8
    move v1, v0

    goto :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public G()Lcom/ddtaxi/a/a/aw;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/au;->a()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->A()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->A()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/ddtaxi/a/a/aw;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->c:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public K()Lcom/ddtaxi/a/a/aw;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    sget-object v0, Lcom/ddtaxi/a/a/ax;->a:Lcom/ddtaxi/a/a/ax;

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->d:Lcom/ddtaxi/a/a/ax;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public L()Lcom/ddtaxi/a/a/bh;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->f()Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bh;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    goto :goto_0
.end method

.method public M()Lcom/ddtaxi/a/a/aw;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    sget-object v0, Lcom/ddtaxi/a/a/az;->a:Lcom/ddtaxi/a/a/az;

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->e:Lcom/ddtaxi/a/a/az;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public N()Lcom/ddtaxi/a/a/aw;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/au;->a()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public O()Lcom/ddtaxi/a/a/aw;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/au;->a()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public P()Lcom/ddtaxi/a/a/aw;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/au;->a()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/au;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->h:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->F()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->F()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->e()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->e()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->e()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->d()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->d()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->d()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->B()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/ddtaxi/a/a/aw;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput p1, p0, Lcom/ddtaxi/a/a/aw;->c:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/au;->a()Lcom/ddtaxi/a/a/au;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/au;->b(Lcom/ddtaxi/a/a/au;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->k()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/aw;->a(I)Lcom/ddtaxi/a/a/aw;

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->m()Lcom/ddtaxi/a/a/ax;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/aw;->a(Lcom/ddtaxi/a/a/ax;)Lcom/ddtaxi/a/a/aw;

    :cond_3
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->o()Lcom/ddtaxi/a/a/az;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/aw;->a(Lcom/ddtaxi/a/a/az;)Lcom/ddtaxi/a/a/aw;

    :cond_4
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/au;->c(Lcom/ddtaxi/a/a/au;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    :cond_5
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/au;->d(Lcom/ddtaxi/a/a/au;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    :cond_6
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/au;->e(Lcom/ddtaxi/a/a/au;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->h:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    :cond_7
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->y()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->C()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/aw;->b(I)Lcom/ddtaxi/a/a/aw;

    :cond_8
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->D()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->E()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/aw;->b(Lcom/ddtaxi/a/a/bc;)Lcom/ddtaxi/a/a/aw;

    :cond_9
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/au;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/aw;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto/16 :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/ax;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/aw;->d:Lcom/ddtaxi/a/a/ax;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/az;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/aw;->e:Lcom/ddtaxi/a/a/az;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/bc;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hq;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/be;)Lcom/ddtaxi/a/a/aw;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/be;->y()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/be;->y()Lcom/ddtaxi/a/a/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/hq;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/au;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/au;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/aw;->a(Lcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/aw;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/aw;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/aw;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/a/a/au;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/aw;->a(Lcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/aw;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/au;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/aw;->a(Lcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/aw;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/aw;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public aa()Lcom/ddtaxi/a/a/aw;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->i:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public ab()Lcom/ddtaxi/a/a/aw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/bc;->a()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->g()Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public ac()Lcom/ddtaxi/a/a/be;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/aw;->ag()Lcom/ddtaxi/a/a/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->e()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/be;

    return-object v0
.end method

.method public b(I)Lcom/ddtaxi/a/a/aw;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput p1, p0, Lcom/ddtaxi/a/a/aw;->i:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public b(Lcom/ddtaxi/a/a/bc;)Lcom/ddtaxi/a/a/aw;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    invoke-static {}, Lcom/ddtaxi/a/a/bc;->a()Lcom/ddtaxi/a/a/bc;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    invoke-static {v0}, Lcom/ddtaxi/a/a/bc;->a(Lcom/ddtaxi/a/a/bc;)Lcom/ddtaxi/a/a/be;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/bc;)Lcom/ddtaxi/a/a/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/be;->A()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    :goto_1
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hq;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_1
.end method

.method public b(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/aw;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/aw;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/aw;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/aw;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/aw;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/aw;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/aw;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->k()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/au;

    const-class v2, Lcom/ddtaxi/a/a/aw;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/aw;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput v1, p0, Lcom/ddtaxi/a/a/aw;->c:I

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    sget-object v0, Lcom/ddtaxi/a/a/ax;->a:Lcom/ddtaxi/a/a/ax;

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->d:Lcom/ddtaxi/a/a/ax;

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    sget-object v0, Lcom/ddtaxi/a/a/az;->a:Lcom/ddtaxi/a/a/az;

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->e:Lcom/ddtaxi/a/a/az;

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->f:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->g:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->h:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput v1, p0, Lcom/ddtaxi/a/a/aw;->i:I

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/bc;->a()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->j:Lcom/ddtaxi/a/a/bc;

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->k:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->g()Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/aw;->h:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/aw;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/aw;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/aw;->af()Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->F()Lcom/ddtaxi/a/a/au;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/aw;->a(Lcom/ddtaxi/a/a/au;)Lcom/ddtaxi/a/a/aw;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->j()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/aw;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/aw;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/aw;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/aw;->h:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->aB()V

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/aw;->b:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

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

.method public k()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->c:I

    return v0
.end method

.method public l()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

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

.method public m()Lcom/ddtaxi/a/a/ax;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->d:Lcom/ddtaxi/a/a/ax;

    return-object v0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

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

.method public o()Lcom/ddtaxi/a/a/az;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->e:Lcom/ddtaxi/a/a/az;

    return-object v0
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

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

.method public q()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/aw;->f:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public r()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->f:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

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

.method public t()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/aw;->g:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public u()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->g:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public v()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

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

.method public w()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/aw;->h:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public x()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/aw;->h:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/aw;->h:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public y()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/aw;->a:I

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

.method public final z()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/aw;->E()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bc;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
