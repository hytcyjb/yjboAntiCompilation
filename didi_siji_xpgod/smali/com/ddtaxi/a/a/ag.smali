.class public final Lcom/ddtaxi/a/a/ag;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/a/a/ah;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;

.field private d:Lcom/ddtaxi/a/a/gy;

.field private e:Lcom/ddtaxi/a/a/ai;

.field private f:Lcom/ddtaxi/a/a/hq;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-static {}, Lcom/ddtaxi/a/a/ai;->a()Lcom/ddtaxi/a/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->A()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->b:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-static {}, Lcom/ddtaxi/a/a/ai;->a()Lcom/ddtaxi/a/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->A()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/ag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ag;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method private A()V
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->D()Lcom/ddtaxi/a/a/gy;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->E()Lcom/ddtaxi/a/a/hq;

    :cond_0
    return-void
.end method

.method private static B()Lcom/ddtaxi/a/a/ag;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/ag;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/ag;-><init>()V

    return-object v0
.end method

.method private C()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    :cond_0
    return-void
.end method

.method private D()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private E()Lcom/ddtaxi/a/a/hq;
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/hq;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->n()Lcom/ddtaxi/a/a/ai;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->az()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ddtaxi/a/a/hq;-><init>(Lcom/ddtaxi/a/a/ep;Lcom/ddtaxi/a/a/ev;Z)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    return-object v0
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->n()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic y()Lcom/ddtaxi/a/a/ag;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ag;->B()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->p()Lcom/ddtaxi/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->p()Lcom/ddtaxi/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->r()Lcom/ddtaxi/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->r()Lcom/ddtaxi/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->e()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->e()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->e()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->d()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->d()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->d()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->q()Lcom/ddtaxi/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->q()Lcom/ddtaxi/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ddtaxi/a/a/am;)Lcom/ddtaxi/a/a/ag;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/ao;)Lcom/ddtaxi/a/a/ag;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ao;->p()Lcom/ddtaxi/a/a/am;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ao;->p()Lcom/ddtaxi/a/a/am;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/ae;)Lcom/ddtaxi/a/a/ag;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/ddtaxi/a/a/ae;->a()Lcom/ddtaxi/a/a/ae;

    move-result-object v1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ae;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/ddtaxi/a/a/ag;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ddtaxi/a/a/ag;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/ae;->b(Lcom/ddtaxi/a/a/ae;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/ag;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_5

    invoke-static {p1}, Lcom/ddtaxi/a/a/ae;->c(Lcom/ddtaxi/a/a/ae;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/ddtaxi/a/a/ae;->c(Lcom/ddtaxi/a/a/ae;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ae;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ae;->n()Lcom/ddtaxi/a/a/ai;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ag;->b(Lcom/ddtaxi/a/a/ai;)Lcom/ddtaxi/a/a/ag;

    :cond_3
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ae;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ag;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/a/a/ae;->c(Lcom/ddtaxi/a/a/ae;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/ddtaxi/a/a/ae;->c(Lcom/ddtaxi/a/a/ae;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/ae;->c(Lcom/ddtaxi/a/a/ae;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/ddtaxi/a/a/ag;->a:I

    sget-boolean v1, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->D()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/ae;->c(Lcom/ddtaxi/a/a/ae;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_2
.end method

.method public a(Lcom/ddtaxi/a/a/ai;)Lcom/ddtaxi/a/a/ag;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hq;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/ak;)Lcom/ddtaxi/a/a/ag;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ak;->o()Lcom/ddtaxi/a/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ak;->o()Lcom/ddtaxi/a/a/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/hq;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/am;)Lcom/ddtaxi/a/a/ag;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/ao;)Lcom/ddtaxi/a/a/ag;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ao;->p()Lcom/ddtaxi/a/a/am;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ao;->p()Lcom/ddtaxi/a/a/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ag;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/ae;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/ae;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ag;->a(Lcom/ddtaxi/a/a/ae;)Lcom/ddtaxi/a/a/ag;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/ag;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/ag;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ag;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/a/a/ae;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ag;->a(Lcom/ddtaxi/a/a/ae;)Lcom/ddtaxi/a/a/ag;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ae;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/ag;->a(Lcom/ddtaxi/a/a/ae;)Lcom/ddtaxi/a/a/ag;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/ag;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/ag;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/ag;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    return-object p0
.end method

.method public a(I)Lcom/ddtaxi/a/a/am;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/am;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/am;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/am;)Lcom/ddtaxi/a/a/ag;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/ao;)Lcom/ddtaxi/a/a/ag;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ao;->p()Lcom/ddtaxi/a/a/am;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ao;->p()Lcom/ddtaxi/a/a/am;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(Lcom/ddtaxi/a/a/ai;)Lcom/ddtaxi/a/a/ag;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    invoke-static {}, Lcom/ddtaxi/a/a/ai;->a()Lcom/ddtaxi/a/a/ai;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ai;->a(Lcom/ddtaxi/a/a/ai;)Lcom/ddtaxi/a/a/ak;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/ak;->a(Lcom/ddtaxi/a/a/ai;)Lcom/ddtaxi/a/a/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ak;->p()Lcom/ddtaxi/a/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_1
    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hq;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_1
.end method

.method public b(I)Lcom/ddtaxi/a/a/ap;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ap;

    goto :goto_0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ag;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ag;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/ddtaxi/a/a/ag;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ag;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ag;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->o()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/ae;

    const-class v2, Lcom/ddtaxi/a/a/ag;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/ag;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ddtaxi/a/a/ai;->a()Lcom/ddtaxi/a/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    :goto_1
    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->g()Lcom/ddtaxi/a/a/hq;

    goto :goto_1
.end method

.method public d(I)Lcom/ddtaxi/a/a/ao;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->D()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ao;

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ag;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/ag;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/ag;->B()Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->r()Lcom/ddtaxi/a/a/ae;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/ag;->a(Lcom/ddtaxi/a/a/ae;)Lcom/ddtaxi/a/a/ag;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/ddtaxi/a/a/ao;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->D()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/am;->a()Lcom/ddtaxi/a/a/am;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ao;

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->n()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/ag;->a:I

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/ag;->b:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

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

.method public n()Lcom/ddtaxi/a/a/ai;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->c()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ai;

    goto :goto_0
.end method

.method public o()Lcom/ddtaxi/a/a/al;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->f()Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/al;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    goto :goto_0
.end method

.method public p()Lcom/ddtaxi/a/a/ae;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ae;->a()Lcom/ddtaxi/a/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/ddtaxi/a/a/ae;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->r()Lcom/ddtaxi/a/a/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ae;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/a/a/ag;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public r()Lcom/ddtaxi/a/a/ae;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/a/a/ae;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/a/a/ae;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/ae;)V

    iget v3, p0, Lcom/ddtaxi/a/a/ag;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/ag;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/ae;->a(Lcom/ddtaxi/a/a/ae;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/ddtaxi/a/a/ag;->a:I

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/ae;->a(Lcom/ddtaxi/a/a/ae;Ljava/util/List;)V

    :goto_1
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    or-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/ae;->a(Lcom/ddtaxi/a/a/ae;Lcom/ddtaxi/a/a/ai;)V

    :goto_3
    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/ae;->a(Lcom/ddtaxi/a/a/ae;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->ax()V

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/ae;->a(Lcom/ddtaxi/a/a/ae;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->d()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ai;

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/ae;->a(Lcom/ddtaxi/a/a/ae;Lcom/ddtaxi/a/a/ai;)V

    goto :goto_3

    :cond_3
    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public s()Lcom/ddtaxi/a/a/ag;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/ae;->a()Lcom/ddtaxi/a/a/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ae;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    return-object p0
.end method

.method public t()Lcom/ddtaxi/a/a/ag;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->d:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public u()Lcom/ddtaxi/a/a/ao;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->D()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/am;->a()Lcom/ddtaxi/a/a/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ao;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->D()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/ddtaxi/a/a/ag;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/ai;->a()Lcom/ddtaxi/a/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ag;->e:Lcom/ddtaxi/a/a/ai;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ag;->f:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->g()Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public x()Lcom/ddtaxi/a/a/ak;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/ag;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->aB()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ag;->E()Lcom/ddtaxi/a/a/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->e()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ak;

    return-object v0
.end method

.method public final z()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->l()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ag;->n()Lcom/ddtaxi/a/a/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ai;->z()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ag;->a(I)Lcom/ddtaxi/a/a/am;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/am;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method
