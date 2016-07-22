.class public final Lcom/ddtaxi/a/a/be;
.super Lcom/ddtaxi/a/a/ex;

# interfaces
.implements Lcom/ddtaxi/a/a/bh;


# instance fields
.field private a:I

.field private b:Lcom/ddtaxi/a/a/bf;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Object;

.field private g:Z

.field private h:Ljava/util/List;

.field private i:Lcom/ddtaxi/a/a/gy;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ex;-><init>()V

    sget-object v0, Lcom/ddtaxi/a/a/bf;->a:Lcom/ddtaxi/a/a/bf;

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->b:Lcom/ddtaxi/a/a/bf;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->f:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->N()V

    return-void
.end method

.method private constructor <init>(Lcom/ddtaxi/a/a/ev;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ex;-><init>(Lcom/ddtaxi/a/a/ev;)V

    sget-object v0, Lcom/ddtaxi/a/a/bf;->a:Lcom/ddtaxi/a/a/bf;

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->b:Lcom/ddtaxi/a/a/bf;

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->f:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->N()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ev;Lcom/ddtaxi/a/a/be;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/be;-><init>(Lcom/ddtaxi/a/a/ev;)V

    return-void
.end method

.method static synthetic M()Lcom/ddtaxi/a/a/be;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/be;->O()Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method private N()V
    .locals 1

    sget-boolean v0, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->aa()Lcom/ddtaxi/a/a/gy;

    :cond_0
    return-void
.end method

.method private static O()Lcom/ddtaxi/a/a/be;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/be;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/be;-><init>()V

    return-object v0
.end method

.method private P()V
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    :cond_0
    return-void
.end method

.method public static final a()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->z()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method private aa()Lcom/ddtaxi/a/a/gy;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/gy;

    iget-object v2, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aA()Lcom/ddtaxi/a/a/ev;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->az()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ddtaxi/a/a/gy;-><init>(Ljava/util/List;ZLcom/ddtaxi/a/a/ev;Z)V

    iput-object v1, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public A()Lcom/ddtaxi/a/a/bc;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/ddtaxi/a/a/bc;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/ddtaxi/a/a/bc;-><init>(Lcom/ddtaxi/a/a/ex;Lcom/ddtaxi/a/a/bc;)V

    iget v3, p0, Lcom/ddtaxi/a/a/be;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/be;->b:Lcom/ddtaxi/a/a/bf;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/bc;->a(Lcom/ddtaxi/a/a/bc;Lcom/ddtaxi/a/a/bf;)V

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-boolean v1, p0, Lcom/ddtaxi/a/a/be;->c:Z

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/bc;->a(Lcom/ddtaxi/a/a/bc;Z)V

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-boolean v1, p0, Lcom/ddtaxi/a/a/be;->d:Z

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/bc;->b(Lcom/ddtaxi/a/a/bc;Z)V

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-boolean v1, p0, Lcom/ddtaxi/a/a/be;->e:Z

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/bc;->c(Lcom/ddtaxi/a/a/bc;Z)V

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lcom/ddtaxi/a/a/be;->f:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/bc;->a(Lcom/ddtaxi/a/a/bc;Ljava/lang/Object;)V

    and-int/lit8 v1, v3, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-boolean v1, p0, Lcom/ddtaxi/a/a/be;->g:Z

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/bc;->d(Lcom/ddtaxi/a/a/bc;Z)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_6

    iget v1, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v1, v1, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/ddtaxi/a/a/be;->a:I

    :cond_5
    iget-object v1, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/bc;->a(Lcom/ddtaxi/a/a/bc;Ljava/util/List;)V

    :goto_1
    invoke-static {v2, v0}, Lcom/ddtaxi/a/a/bc;->a(Lcom/ddtaxi/a/a/bc;I)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->ax()V

    return-object v2

    :cond_6
    iget-object v1, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ddtaxi/a/a/bc;->a(Lcom/ddtaxi/a/a/bc;Ljava/util/List;)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public B()Lcom/ddtaxi/a/a/be;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    sget-object v0, Lcom/ddtaxi/a/a/bf;->a:Lcom/ddtaxi/a/a/bf;

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->b:Lcom/ddtaxi/a/a/bf;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public C()Lcom/ddtaxi/a/a/be;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/be;->c:Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public D()Lcom/ddtaxi/a/a/be;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/be;->d:Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public E()Lcom/ddtaxi/a/a/be;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/be;->e:Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public F()Lcom/ddtaxi/a/a/be;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    invoke-static {}, Lcom/ddtaxi/a/a/bc;->a()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bc;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public G()Lcom/ddtaxi/a/a/be;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/be;->g:Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->x()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->x()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/ddtaxi/a/a/be;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public K()Lcom/ddtaxi/a/a/de;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/dc;->a()Lcom/ddtaxi/a/a/dc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->b(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/de;

    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->A()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->A()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->e()Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->e()Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->d()Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->d()Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->y()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->y()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ddtaxi/a/a/dc;)Lcom/ddtaxi/a/a/be;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(ILcom/ddtaxi/a/a/de;)Lcom/ddtaxi/a/a/be;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/de;->y()Lcom/ddtaxi/a/a/dc;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/de;->y()Lcom/ddtaxi/a/a/dc;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->a(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/bc;)Lcom/ddtaxi/a/a/be;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/ddtaxi/a/a/bc;->a()Lcom/ddtaxi/a/a/bc;

    move-result-object v1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bc;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bc;->h()Lcom/ddtaxi/a/a/bf;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/bf;)Lcom/ddtaxi/a/a/be;

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bc;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bc;->j()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/be;->a(Z)Lcom/ddtaxi/a/a/be;

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bc;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bc;->l()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/be;->b(Z)Lcom/ddtaxi/a/a/be;

    :cond_3
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bc;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bc;->n()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/be;->c(Z)Lcom/ddtaxi/a/a/be;

    :cond_4
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bc;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/ddtaxi/a/a/be;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/ddtaxi/a/a/be;->a:I

    invoke-static {p1}, Lcom/ddtaxi/a/a/bc;->b(Lcom/ddtaxi/a/a/bc;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/be;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    :cond_5
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bc;->r()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bc;->s()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/be;->d(Z)Lcom/ddtaxi/a/a/be;

    :cond_6
    iget-object v1, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v1, :cond_9

    invoke-static {p1}, Lcom/ddtaxi/a/a/bc;->c(Lcom/ddtaxi/a/a/bc;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/ddtaxi/a/a/bc;->c(Lcom/ddtaxi/a/a/bc;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    :goto_1
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/ey;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/bc;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/be;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/et;

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/ddtaxi/a/a/bc;->c(Lcom/ddtaxi/a/a/bc;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_9
    invoke-static {p1}, Lcom/ddtaxi/a/a/bc;->c(Lcom/ddtaxi/a/a/bc;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/gy;->b()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/bc;->c(Lcom/ddtaxi/a/a/bc;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    iget v1, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/ddtaxi/a/a/be;->a:I

    sget-boolean v1, Lcom/ddtaxi/a/a/ep;->p:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-static {p1}, Lcom/ddtaxi/a/a/bc;->c(Lcom/ddtaxi/a/a/bc;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_2
.end method

.method public a(Lcom/ddtaxi/a/a/bf;)Lcom/ddtaxi/a/a/be;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/be;->b:Lcom/ddtaxi/a/a/bf;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/dc;)Lcom/ddtaxi/a/a/be;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/de;)Lcom/ddtaxi/a/a/be;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/de;->y()Lcom/ddtaxi/a/a/dc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/de;->y()Lcom/ddtaxi/a/a/dc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/gy;->a(Lcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/be;
    .locals 1

    instance-of v0, p1, Lcom/ddtaxi/a/a/bc;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ddtaxi/a/a/bc;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/bc;)Lcom/ddtaxi/a/a/be;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/ex;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/be;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/be;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/be;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/ddtaxi/a/a/bc;->a:Lcom/ddtaxi/a/a/gv;

    invoke-interface {v0, p1, p2}, Lcom/ddtaxi/a/a/gv;->b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/ddtaxi/a/a/fz; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/bc;)Lcom/ddtaxi/a/a/be;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/fz;->a()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/bc;
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

    invoke-virtual {p0, v1}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/bc;)Lcom/ddtaxi/a/a/be;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/be;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/ddtaxi/a/a/d;->a(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(Ljava/lang/Iterable;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/ddtaxi/a/a/be;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/be;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public a(Z)Lcom/ddtaxi/a/a/be;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/be;->c:Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public a(I)Lcom/ddtaxi/a/a/dc;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dc;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dc;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/dc;)Lcom/ddtaxi/a/a/be;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(ILcom/ddtaxi/a/a/de;)Lcom/ddtaxi/a/a/be;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/de;->y()Lcom/ddtaxi/a/a/dc;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/de;->y()Lcom/ddtaxi/a/a/dc;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->b(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/gy;

    goto :goto_0
.end method

.method public b(Z)Lcom/ddtaxi/a/a/be;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/be;->d:Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public b(I)Lcom/ddtaxi/a/a/dj;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dj;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->c(I)Lcom/ddtaxi/a/a/gp;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dj;

    goto :goto_0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/ddtaxi/a/a/be;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->P()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->d(I)V

    goto :goto_0
.end method

.method public c(Z)Lcom/ddtaxi/a/a/be;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/be;->e:Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method protected c_()Lcom/ddtaxi/a/a/fc;
    .locals 3

    invoke-static {}, Lcom/ddtaxi/a/a/u;->A()Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    const-class v1, Lcom/ddtaxi/a/a/bc;

    const-class v2, Lcom/ddtaxi/a/a/be;

    invoke-virtual {v0, v1, v2}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/be;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/ddtaxi/a/a/ex;->w()Lcom/ddtaxi/a/a/ex;

    sget-object v0, Lcom/ddtaxi/a/a/bf;->a:Lcom/ddtaxi/a/a/bf;

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->b:Lcom/ddtaxi/a/a/bf;

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/be;->c:Z

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/be;->d:Z

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/be;->e:Z

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->f:Ljava/lang/Object;

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    iput-boolean v1, p0, Lcom/ddtaxi/a/a/be;->g:Z

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->e()V

    goto :goto_0
.end method

.method public d(Z)Lcom/ddtaxi/a/a/be;
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/ddtaxi/a/a/be;->a:I

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/be;->g:Z

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->aB()V

    return-object p0
.end method

.method public d(I)Lcom/ddtaxi/a/a/de;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->b(I)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/de;

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/be;
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/be;->O()Lcom/ddtaxi/a/a/be;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->A()Lcom/ddtaxi/a/a/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/be;->a(Lcom/ddtaxi/a/a/bc;)Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/ddtaxi/a/a/de;
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/be;->aa()Lcom/ddtaxi/a/a/gy;

    move-result-object v0

    invoke-static {}, Lcom/ddtaxi/a/a/dc;->a()Lcom/ddtaxi/a/a/dc;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ddtaxi/a/a/gy;->c(ILcom/ddtaxi/a/a/ep;)Lcom/ddtaxi/a/a/et;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/de;

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/u;->z()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ddtaxi/a/a/be;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/ddtaxi/a/a/bf;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->b:Lcom/ddtaxi/a/a/bf;

    return-object v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

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

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/be;->c:Z

    return v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

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

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/be;->d:Z

    return v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

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

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/be;->e:Z

    return v0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

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

.method public p()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/ddtaxi/a/a/k;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/ddtaxi/a/a/be;->f:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public q()Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->f:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ddtaxi/a/a/k;->a(Ljava/lang/String;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/be;->f:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/k;

    goto :goto_0
.end method

.method public r()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/be;->a:I

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

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/be;->g:Z

    return v0
.end method

.method public t()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public u()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->i()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public u_()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/be;->i:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic v()Lcom/ddtaxi/a/a/ex;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->e()Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method public synthetic w()Lcom/ddtaxi/a/a/ex;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->d()Lcom/ddtaxi/a/a/be;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/ddtaxi/a/a/bc;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/bc;->a()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/ddtaxi/a/a/bc;
    .locals 2

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->A()Lcom/ddtaxi/a/a/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bc;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ddtaxi/a/a/be;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

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
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->u_()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/be;->am()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/be;->a(I)Lcom/ddtaxi/a/a/dc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/dc;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method
