.class public final Lcom/ddtaxi/a/a/cz;
.super Lcom/ddtaxi/a/a/et;

# interfaces
.implements Lcom/ddtaxi/a/a/da;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/et;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->d:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->e:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cz;->y()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/et;-><init>(Lcom/ddtaxi/a/a/ev;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->d:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->e:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cz;->y()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/cz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/cz;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method private static A()Lcom/ddtaxi/a/a/cz;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/cz;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/cz;-><init>()V

    return-object v0
.end method

.method private B()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    :cond_0
    return-void
.end method

.method private C()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    :cond_0
    return-void
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->N()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic x()Lcom/ddtaxi/a/a/cz;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cz;->A()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method private y()V
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    return-void
.end method


# virtual methods
.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->q()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->q()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->s()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->s()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->e()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->e()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic U()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->e()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->d()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->d()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic X()Lcom/ddtaxi/a/a/et;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->d()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->r()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->r()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    return-object v0
.end method

.method public a(I)I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(II)Lcom/ddtaxi/a/a/cz;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cz;->B()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/cx;)Lcom/ddtaxi/a/a/cz;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/cx;->a()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/ddtaxi/a/a/cx;->b(Lcom/ddtaxi/a/a/cx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/ddtaxi/a/a/cx;->b(Lcom/ddtaxi/a/a/cx;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    :cond_1
    invoke-static {p1}, Lcom/ddtaxi/a/a/cx;->c(Lcom/ddtaxi/a/a/cx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/ddtaxi/a/a/cx;->c(Lcom/ddtaxi/a/a/cx;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    :goto_2
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/cx;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/cx;->d(Lcom/ddtaxi/a/a/cx;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    :cond_3
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/cx;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/cx;->e(Lcom/ddtaxi/a/a/cx;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    :cond_4
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/cx;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/cz;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/ddtaxi/a/a/cz;->B()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/a/a/cx;->b(Lcom/ddtaxi/a/a/cx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/ddtaxi/a/a/cz;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/a/a/cx;->c(Lcom/ddtaxi/a/a/cx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/cz;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/cx;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/cx;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/cz;->a(Lcom/ddtaxi/a/a/cx;)Lcom/ddtaxi/a/a/cz;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/et;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/cz;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/cz;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cz;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/a/a/cx;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/cz;->a(Lcom/ddtaxi/a/a/cx;)Lcom/ddtaxi/a/a/cz;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/cx;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/cz;->a(Lcom/ddtaxi/a/a/cx;)Lcom/ddtaxi/a/a/cz;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/cz;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cz;->B()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/cz;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/cz;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public b(II)Lcom/ddtaxi/a/a/cz;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cz;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public b(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/cz;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/cz;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public b(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/cz;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cz;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ddtaxi/a/a/cz;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/cz;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/cz;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/cz;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/cz;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/ddtaxi/a/a/cz;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cz;->B()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/cz;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->O()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/cx;

    const-class v2, Lcom/ddtaxi/a/a/cz;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/cz;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/cz;
    .locals 1

    invoke-super {p0}, Lcom/ddtaxi/a/a/et;->X()Lcom/ddtaxi/a/a/et;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->d:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->e:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    return-object p0
.end method

.method public d(I)Lcom/ddtaxi/a/a/cz;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/cz;->C()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public e()Lcom/ddtaxi/a/a/cz;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/cz;->A()Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->s()Lcom/ddtaxi/a/a/cx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/cz;->a(Lcom/ddtaxi/a/a/cx;)Lcom/ddtaxi/a/a/cz;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->N()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

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

.method public l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/cz;->d:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public m()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->d:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public n()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

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

.method public o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/cz;->e:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public p()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/cz;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->e:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public q()Lcom/ddtaxi/a/a/cx;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/cx;->a()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/ddtaxi/a/a/cx;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->s()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/cx;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/a/a/cz;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public s()Lcom/ddtaxi/a/a/cx;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/a/a/cx;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/a/a/cx;-><init>(Lcom/ddtaxi/a/a/et;Lcom/ddtaxi/a/a/cx;)V

    iget v3, p0, Lcom/ddtaxi/a/a/cz;->a:I

    const/4 v1, 0x0

    iget v4, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    iget v4, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/ddtaxi/a/a/cz;->a:I

    :cond_0
    iget-object v4, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/ddtaxi/a/a/cx;->a(Lcom/ddtaxi/a/a/cx;Ljava/util/List;)V

    iget v4, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    iget v4, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/ddtaxi/a/a/cz;->a:I

    :cond_1
    iget-object v4, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/ddtaxi/a/a/cx;->b(Lcom/ddtaxi/a/a/cx;Ljava/util/List;)V

    and-int/lit8 v4, v3, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/cz;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/cx;->a(Lcom/ddtaxi/a/a/cx;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object v1, p0, Lcom/ddtaxi/a/a/cz;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/cx;->b(Lcom/ddtaxi/a/a/cx;Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/cx;->a(Lcom/ddtaxi/a/a/cx;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->ax()V

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public t()Lcom/ddtaxi/a/a/cz;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->b:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public u()Lcom/ddtaxi/a/a/cz;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->c:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public v()Lcom/ddtaxi/a/a/cz;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/cx;->a()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/cx;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public w()Lcom/ddtaxi/a/a/cz;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/cz;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/cx;->a()Lcom/ddtaxi/a/a/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/cx;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/cz;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/cz;->aB()V

    return-object p0
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
