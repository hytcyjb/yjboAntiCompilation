.class public final Lcom/ddtaxi/a/a/cc;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/a/a/cd;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Lcom/ddtaxi/a/a/ce;

.field private f:Lcom/ddtaxi/a/a/hq;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->b:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->c:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/ddtaxi/a/a/ce;->a()Lcom/ddtaxi/a/a/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cc;->C()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->b:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->c:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->d:Ljava/lang/Object;

    invoke-static {}, Lcom/ddtaxi/a/a/ce;->a()Lcom/ddtaxi/a/a/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cc;->C()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/cc;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/cc;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method static synthetic B()Lcom/ddtaxi/a/a/cc;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cc;->D()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method private C()V
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cc;->E()Lcom/ddtaxi/a/a/hq;

    :cond_0
    return-void
.end method

.method private static D()Lcom/ddtaxi/a/a/cc;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/cc;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/cc;-><init>()V

    return-object v0
.end method

.method private E()Lcom/ddtaxi/a/a/hq;
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/hq;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->q()Lcom/ddtaxi/a/a/ce;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->az()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ddtaxi/a/a/hq;-><init>(Lcom/ddtaxi/a/a/ep;Lcom/ddtaxi/a/a/ev;Z)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    return-object v0
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->t()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Lcom/ddtaxi/a/a/cg;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cc;->E()Lcom/ddtaxi/a/a/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->e()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cg;

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->s()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->s()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->u()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->u()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->e()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->e()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->e()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->d()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->d()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->d()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->t()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->t()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/ca;)Lcom/ddtaxi/a/a/cc;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ca;->a()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ca;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/ca;->b(Lcom/ddtaxi/a/a/ca;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ca;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/ca;->c(Lcom/ddtaxi/a/a/ca;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ca;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/ca;->d(Lcom/ddtaxi/a/a/ca;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    :cond_3
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ca;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ca;->q()Lcom/ddtaxi/a/a/ce;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/cc;->b(Lcom/ddtaxi/a/a/ce;)Lcom/ddtaxi/a/a/cc;

    :cond_4
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ca;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/cc;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/ce;)Lcom/ddtaxi/a/a/cc;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hq;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/cg;)Lcom/ddtaxi/a/a/cc;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/cg;->m()Lcom/ddtaxi/a/a/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/cg;->m()Lcom/ddtaxi/a/a/ce;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/hq;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/cc;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/ca;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/ca;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/cc;->a(Lcom/ddtaxi/a/a/ca;)Lcom/ddtaxi/a/a/cc;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/cc;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/cc;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cc;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/a/a/ca;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ca;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/cc;->a(Lcom/ddtaxi/a/a/ca;)Lcom/ddtaxi/a/a/cc;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ca;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/cc;->a(Lcom/ddtaxi/a/a/ca;)Lcom/ddtaxi/a/a/cc;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/cc;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/cc;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    return-object p0
.end method

.method public b(Lcom/ddtaxi/a/a/ce;)Lcom/ddtaxi/a/a/cc;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    invoke-static {}, Lcom/ddtaxi/a/a/ce;->a()Lcom/ddtaxi/a/a/ce;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ce;->a(Lcom/ddtaxi/a/a/ce;)Lcom/ddtaxi/a/a/cg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/cg;->a(Lcom/ddtaxi/a/a/ce;)Lcom/ddtaxi/a/a/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/cg;->n()Lcom/ddtaxi/a/a/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    :goto_1
    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hq;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_1
.end method

.method public b(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/cc;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/cc;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ddtaxi/a/a/cc;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/cc;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    return-object p0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/cc;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/cc;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/cc;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/ddtaxi/a/a/cc;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/cc;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    return-object p0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/cc;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->u()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/ca;

    const-class v2, Lcom/ddtaxi/a/a/cc;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/cc;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/cc;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->c:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/ce;->a()Lcom/ddtaxi/a/a/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->g()Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public e()Lcom/ddtaxi/a/a/cc;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/cc;->D()Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->u()Lcom/ddtaxi/a/a/ca;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/cc;->a(Lcom/ddtaxi/a/a/ca;)Lcom/ddtaxi/a/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->t()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/cc;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/cc;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    return-object p0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/cc;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/cc;->b:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/cc;->c:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->c:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

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

.method public n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/cc;->d:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public o()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->d:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

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

.method public q()Lcom/ddtaxi/a/a/ce;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->c()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ce;

    goto :goto_0
.end method

.method public r()Lcom/ddtaxi/a/a/ch;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->f()Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ch;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    goto :goto_0
.end method

.method public s()Lcom/ddtaxi/a/a/ca;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ca;->a()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/ddtaxi/a/a/ca;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->u()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ca;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/a/a/cc;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public u()Lcom/ddtaxi/a/a/ca;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/a/a/ca;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/a/a/ca;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/ca;)V

    iget v3, p0, Lcom/ddtaxi/a/a/cc;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/cc;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/ca;->a(Lcom/ddtaxi/a/a/ca;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/cc;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/ca;->b(Lcom/ddtaxi/a/a/ca;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/cc;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/ca;->c(Lcom/ddtaxi/a/a/ca;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    or-int/lit8 v0, v0, 0x8

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/ca;->a(Lcom/ddtaxi/a/a/ca;Lcom/ddtaxi/a/a/ce;)V

    :goto_2
    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/ca;->a(Lcom/ddtaxi/a/a/ca;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->ax()V

    return-object v2

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->d()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ce;

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/ca;->a(Lcom/ddtaxi/a/a/ca;Lcom/ddtaxi/a/a/ce;)V

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public v()Lcom/ddtaxi/a/a/cc;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/ca;->a()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ca;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    return-object p0
.end method

.method public w()Lcom/ddtaxi/a/a/cc;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/ca;->a()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ca;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    return-object p0
.end method

.method public x()Lcom/ddtaxi/a/a/cc;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/ca;->a()Lcom/ddtaxi/a/a/ca;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ca;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    return-object p0
.end method

.method public y()Lcom/ddtaxi/a/a/cc;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/ce;->a()Lcom/ddtaxi/a/a/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cc;->e:Lcom/ddtaxi/a/a/ce;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/cc;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cc;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->g()Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public final z()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cc;->q()Lcom/ddtaxi/a/a/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ce;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
