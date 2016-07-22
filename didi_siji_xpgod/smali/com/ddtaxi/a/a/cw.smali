.class public final Lcom/ddtaxi/a/a/cw;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/a/a/db;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Lcom/ddtaxi/a/a/gy;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->q()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->q()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/cw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/cw;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->P()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p()Lcom/ddtaxi/a/a/cw;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cw;->r()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->t()Lcom/ddtaxi/a/a/gy;

    :cond_0
    return-void
.end method

.method private static r()Lcom/ddtaxi/a/a/cw;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/cw;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/cw;-><init>()V

    return-object v0
.end method

.method private s()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/cw;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/cw;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/cw;->a:I

    :cond_0
    return-void
.end method

.method private t()Lcom/ddtaxi/a/a/gy;
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    iget v3, p0, Lcom/ddtaxi/a/a/cw;->a:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->j()Lcom/ddtaxi/a/a/cu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->j()Lcom/ddtaxi/a/a/cu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->l()Lcom/ddtaxi/a/a/cu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->l()Lcom/ddtaxi/a/a/cu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->e()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->e()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->e()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->d()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->d()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->d()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->k()Lcom/ddtaxi/a/a/cu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->k()Lcom/ddtaxi/a/a/cu;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ddtaxi/a/a/cx;)Lcom/ddtaxi/a/a/cw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->s()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/cz;)Lcom/ddtaxi/a/a/cw;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->s()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/cz;->r()Lcom/ddtaxi/a/a/cx;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/cz;->r()Lcom/ddtaxi/a/a/cx;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/cu;)Lcom/ddtaxi/a/a/cw;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/ddtaxi/a/a/cu;->a()Lcom/ddtaxi/a/a/cu;

    move-result-object v1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/ddtaxi/a/a/cu;->b(Lcom/ddtaxi/a/a/cu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/ddtaxi/a/a/cu;->b(Lcom/ddtaxi/a/a/cu;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/cw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/cw;->a:I

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->aB()V

    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/cu;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/cw;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->s()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/a/a/cu;->b(Lcom/ddtaxi/a/a/cu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/ddtaxi/a/a/cu;->b(Lcom/ddtaxi/a/a/cu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/cu;->b(Lcom/ddtaxi/a/a/cu;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/cw;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ddtaxi/a/a/cw;->a:I

    sget-boolean v1, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->t()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/cu;->b(Lcom/ddtaxi/a/a/cu;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_2
.end method

.method public a(Lcom/ddtaxi/a/a/cx;)Lcom/ddtaxi/a/a/cw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->s()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/cz;)Lcom/ddtaxi/a/a/cw;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->s()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/cz;->r()Lcom/ddtaxi/a/a/cx;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/cz;->r()Lcom/ddtaxi/a/a/cx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/cw;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/cu;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/cu;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/cw;->a(Lcom/ddtaxi/a/a/cu;)Lcom/ddtaxi/a/a/cw;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cw;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/a/a/cu;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/cw;->a(Lcom/ddtaxi/a/a/cu;)Lcom/ddtaxi/a/a/cw;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cu;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/cw;->a(Lcom/ddtaxi/a/a/cu;)Lcom/ddtaxi/a/a/cw;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/cw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->s()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(I)Lcom/ddtaxi/a/a/cx;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/cx;)Lcom/ddtaxi/a/a/cw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->s()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/cz;)Lcom/ddtaxi/a/a/cw;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->s()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/cz;->r()Lcom/ddtaxi/a/a/cx;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/cz;->r()Lcom/ddtaxi/a/a/cx;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(I)Lcom/ddtaxi/a/a/da;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/da;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/da;

    goto :goto_0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/cw;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/cw;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/cw;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/ddtaxi/a/a/cw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->s()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/cw;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->Q()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/cu;

    const-class v2, Lcom/ddtaxi/a/a/cw;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/cw;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/cw;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/cw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/cw;->a:I

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public d(I)Lcom/ddtaxi/a/a/cz;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->t()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cz;

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/cw;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/cw;->r()Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->l()Lcom/ddtaxi/a/a/cu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/cw;->a(Lcom/ddtaxi/a/a/cu;)Lcom/ddtaxi/a/a/cw;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/ddtaxi/a/a/cz;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->t()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/cx;->a()Lcom/ddtaxi/a/a/cx;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cz;

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->P()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public j()Lcom/ddtaxi/a/a/cu;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cu;->a()Lcom/ddtaxi/a/a/cu;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/ddtaxi/a/a/cu;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->l()Lcom/ddtaxi/a/a/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/cu;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/a/a/cw;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public l()Lcom/ddtaxi/a/a/cu;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/cu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/a/a/cu;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/cu;)V

    iget v1, p0, Lcom/ddtaxi/a/a/cw;->a:I

    iget-object v1, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/ddtaxi/a/a/cw;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/cw;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/ddtaxi/a/a/cw;->a:I

    :cond_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/cu;->a(Lcom/ddtaxi/a/a/cu;Ljava/util/List;)V

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->ax()V

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/cu;->a(Lcom/ddtaxi/a/a/cu;Ljava/util/List;)V

    goto :goto_0
.end method

.method public m()Lcom/ddtaxi/a/a/cw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cw;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/cw;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/cw;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cw;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/cw;->c:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public n()Lcom/ddtaxi/a/a/cz;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->t()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/cx;->a()Lcom/ddtaxi/a/a/cx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cz;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cw;->t()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
