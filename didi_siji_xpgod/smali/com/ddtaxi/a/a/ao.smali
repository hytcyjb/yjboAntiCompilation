.class public final Lcom/ddtaxi/a/a/ao;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/a/a/ap;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:I

.field private d:Lcom/ddtaxi/a/a/aq;

.field private e:Lcom/ddtaxi/a/a/hq;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/ddtaxi/a/a/aq;->a()Lcom/ddtaxi/a/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ao;->w()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->b:Ljava/lang/Object;

    invoke-static {}, Lcom/ddtaxi/a/a/aq;->a()Lcom/ddtaxi/a/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ao;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/ao;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ao;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->p()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v()Lcom/ddtaxi/a/a/ao;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ao;->x()Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method private w()V
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ao;->y()Lcom/ddtaxi/a/a/hq;

    :cond_0
    return-void
.end method

.method private static x()Lcom/ddtaxi/a/a/ao;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/ao;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/ao;-><init>()V

    return-object v0
.end method

.method private y()Lcom/ddtaxi/a/a/hq;
    .locals 4

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/hq;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->m()Lcom/ddtaxi/a/a/aq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->az()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ddtaxi/a/a/hq;-><init>(Lcom/ddtaxi/a/a/ep;Lcom/ddtaxi/a/a/ev;Z)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    return-object v0
.end method


# virtual methods
.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->o()Lcom/ddtaxi/a/a/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->o()Lcom/ddtaxi/a/a/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->q()Lcom/ddtaxi/a/a/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->q()Lcom/ddtaxi/a/a/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->e()Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->e()Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->e()Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->d()Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->d()Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->d()Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->p()Lcom/ddtaxi/a/a/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->p()Lcom/ddtaxi/a/a/am;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/ddtaxi/a/a/ao;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    iput p1, p0, Lcom/ddtaxi/a/a/ao;->c:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/am;)Lcom/ddtaxi/a/a/ao;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/am;->a()Lcom/ddtaxi/a/a/am;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/am;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/am;->b(Lcom/ddtaxi/a/a/am;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->aB()V

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/am;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/am;->k()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ao;->a(I)Lcom/ddtaxi/a/a/ao;

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/am;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/am;->m()Lcom/ddtaxi/a/a/aq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ao;->b(Lcom/ddtaxi/a/a/aq;)Lcom/ddtaxi/a/a/ao;

    :cond_3
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/am;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ao;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/aq;)Lcom/ddtaxi/a/a/ao;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hq;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/as;)Lcom/ddtaxi/a/a/ao;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/as;->m()Lcom/ddtaxi/a/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/as;->m()Lcom/ddtaxi/a/a/aq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/hq;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ao;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/am;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/am;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ao;->a(Lcom/ddtaxi/a/a/am;)Lcom/ddtaxi/a/a/ao;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/ao;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/ao;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ao;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/a/a/am;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ao;->a(Lcom/ddtaxi/a/a/am;)Lcom/ddtaxi/a/a/ao;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/am;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/ao;->a(Lcom/ddtaxi/a/a/am;)Lcom/ddtaxi/a/a/ao;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/ao;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/ao;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->aB()V

    return-object p0
.end method

.method public b(Lcom/ddtaxi/a/a/aq;)Lcom/ddtaxi/a/a/ao;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    invoke-static {}, Lcom/ddtaxi/a/a/aq;->a()Lcom/ddtaxi/a/a/aq;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    invoke-static {v0}, Lcom/ddtaxi/a/a/aq;->a(Lcom/ddtaxi/a/a/aq;)Lcom/ddtaxi/a/a/as;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/as;->a(Lcom/ddtaxi/a/a/aq;)Lcom/ddtaxi/a/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/as;->n()Lcom/ddtaxi/a/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->aB()V

    :goto_1
    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/hq;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/hq;

    goto :goto_1
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ao;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ao;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ao;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ao;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->q()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/am;

    const-class v2, Lcom/ddtaxi/a/a/ao;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/ao;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->c:I

    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/aq;->a()Lcom/ddtaxi/a/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->g()Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ao;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/ao;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/ao;->x()Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->q()Lcom/ddtaxi/a/a/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/ao;->a(Lcom/ddtaxi/a/a/am;)Lcom/ddtaxi/a/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->p()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/ao;->a:I

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/ao;->b:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

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

    iget v0, p0, Lcom/ddtaxi/a/a/ao;->c:I

    return v0
.end method

.method public l()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

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

.method public m()Lcom/ddtaxi/a/a/aq;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->c()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/aq;

    goto :goto_0
.end method

.method public n()Lcom/ddtaxi/a/a/at;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->f()Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/at;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    goto :goto_0
.end method

.method public o()Lcom/ddtaxi/a/a/am;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/am;->a()Lcom/ddtaxi/a/a/am;

    move-result-object v0

    return-object v0
.end method

.method public p()Lcom/ddtaxi/a/a/am;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->q()Lcom/ddtaxi/a/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/am;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/a/a/ao;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public q()Lcom/ddtaxi/a/a/am;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/a/a/am;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/a/a/am;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/am;)V

    iget v3, p0, Lcom/ddtaxi/a/a/ao;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/ao;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/am;->a(Lcom/ddtaxi/a/a/am;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/ddtaxi/a/a/ao;->c:I

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/am;->a(Lcom/ddtaxi/a/a/am;I)V

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x4

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/am;->a(Lcom/ddtaxi/a/a/am;Lcom/ddtaxi/a/a/aq;)V

    :goto_2
    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/am;->b(Lcom/ddtaxi/a/a/am;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->ax()V

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->d()Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/aq;

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/am;->a(Lcom/ddtaxi/a/a/am;Lcom/ddtaxi/a/a/aq;)V

    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public r()Lcom/ddtaxi/a/a/ao;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/am;->a()Lcom/ddtaxi/a/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/am;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->aB()V

    return-object p0
.end method

.method public s()Lcom/ddtaxi/a/a/ao;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->c:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->aB()V

    return-object p0
.end method

.method public t()Lcom/ddtaxi/a/a/ao;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/aq;->a()Lcom/ddtaxi/a/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ao;->d:Lcom/ddtaxi/a/a/aq;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->aB()V

    :goto_0
    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ao;->e:Lcom/ddtaxi/a/a/hq;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->g()Lcom/ddtaxi/a/a/hq;

    goto :goto_0
.end method

.method public u()Lcom/ddtaxi/a/a/as;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/ao;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->aB()V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ao;->y()Lcom/ddtaxi/a/a/hq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hq;->e()Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/as;

    return-object v0
.end method

.method public final z()Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ao;->m()Lcom/ddtaxi/a/a/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/aq;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
