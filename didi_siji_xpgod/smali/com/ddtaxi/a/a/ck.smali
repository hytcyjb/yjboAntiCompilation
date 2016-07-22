.class public final Lcom/ddtaxi/a/a/ck;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/a/a/cl;


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ck;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ck;->o()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ck;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ck;->o()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/ck;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ck;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->l()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()Lcom/ddtaxi/a/a/ck;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ck;->p()Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    return-void
.end method

.method private static p()Lcom/ddtaxi/a/a/ck;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/ck;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/ck;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->j()Lcom/ddtaxi/a/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->j()Lcom/ddtaxi/a/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->l()Lcom/ddtaxi/a/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->l()Lcom/ddtaxi/a/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->e()Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->e()Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->e()Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->d()Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->d()Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->d()Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->k()Lcom/ddtaxi/a/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->k()Lcom/ddtaxi/a/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/ci;)Lcom/ddtaxi/a/a/ck;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ci;->a()Lcom/ddtaxi/a/a/ci;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ci;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ddtaxi/a/a/ck;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ck;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/ci;->b(Lcom/ddtaxi/a/a/ci;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ck;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->aB()V

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ci;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ck;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ck;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/ci;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/ci;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ck;->a(Lcom/ddtaxi/a/a/ci;)Lcom/ddtaxi/a/a/ck;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/ck;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/ck;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ck;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/ck;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ck;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/a/a/ci;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ci;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ck;->a(Lcom/ddtaxi/a/a/ci;)Lcom/ddtaxi/a/a/ck;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ci;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/ck;->a(Lcom/ddtaxi/a/a/ci;)Lcom/ddtaxi/a/a/ck;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/ck;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/ck;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ck;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/ck;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->aB()V

    return-object p0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ck;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ck;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ck;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ck;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->m()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/ci;

    const-class v2, Lcom/ddtaxi/a/a/ck;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ck;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/ck;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/ck;->b:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/ck;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/ck;->a:I

    return-object p0
.end method

.method public e()Lcom/ddtaxi/a/a/ck;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/ck;->p()Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->l()Lcom/ddtaxi/a/a/ci;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/ck;->a(Lcom/ddtaxi/a/a/ci;)Lcom/ddtaxi/a/a/ck;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->l()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/ck;->a:I

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/ck;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/ck;->b:Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/ck;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ck;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public j()Lcom/ddtaxi/a/a/ci;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ci;->a()Lcom/ddtaxi/a/a/ci;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/ddtaxi/a/a/ci;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->l()Lcom/ddtaxi/a/a/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ci;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/a/a/ck;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public l()Lcom/ddtaxi/a/a/ci;
    .locals 4

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/a/a/ci;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/a/a/ci;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/ci;)V

    iget v3, p0, Lcom/ddtaxi/a/a/ck;->a:I

    const/4 v1, 0x0

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/ck;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/ci;->a(Lcom/ddtaxi/a/a/ci;Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/ci;->a(Lcom/ddtaxi/a/a/ci;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->ax()V

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public m()Lcom/ddtaxi/a/a/ck;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ck;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/ck;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/ci;->a()Lcom/ddtaxi/a/a/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ci;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ck;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ck;->aB()V

    return-object p0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
