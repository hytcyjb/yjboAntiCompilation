.class public final Lcom/ddtaxi/a/a/ec;
.super Lcom/ddtaxi/a/a/a;


# instance fields
.field private final a:Lcom/ddtaxi/a/a/dl;

.field private final b:Lcom/ddtaxi/a/a/en;

.field private final c:[Lcom/ddtaxi/a/a/dt;

.field private final d:Lcom/ddtaxi/a/a/im;

.field private e:I


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/en;[Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/im;)V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ec;->e:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/ec;->a:Lcom/ddtaxi/a/a/dl;

    iput-object p2, p0, Lcom/ddtaxi/a/a/ec;->b:Lcom/ddtaxi/a/a/en;

    iput-object p3, p0, Lcom/ddtaxi/a/a/ec;->c:[Lcom/ddtaxi/a/a/dt;

    iput-object p4, p0, Lcom/ddtaxi/a/a/ec;->d:Lcom/ddtaxi/a/a/im;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ec;)Lcom/ddtaxi/a/a/dl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->a:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ec;
    .locals 4

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dl;->b()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/w;->D()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/dt;

    new-instance v1, Lcom/ddtaxi/a/a/ec;

    invoke-static {}, Lcom/ddtaxi/a/a/en;->b()Lcom/ddtaxi/a/a/en;

    move-result-object v2

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v3

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/ddtaxi/a/a/ec;-><init>(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/en;[Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/im;)V

    return-object v1
.end method

.method public static a(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/ec;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/ec;->b(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/ee;->c(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ee;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/ee;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/ei;)Lcom/ddtaxi/a/a/ec;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/ec;->b(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ee;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/ee;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/ec;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/ec;->b(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/o;)Lcom/ddtaxi/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ee;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/ee;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/ei;)Lcom/ddtaxi/a/a/ec;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/ec;->b(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/ee;->d(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ee;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/ee;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/dl;Ljava/io/InputStream;)Lcom/ddtaxi/a/a/ec;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/ec;->b(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/ee;->a(Ljava/io/InputStream;)Lcom/ddtaxi/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ee;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/ee;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/dl;Ljava/io/InputStream;Lcom/ddtaxi/a/a/ei;)Lcom/ddtaxi/a/a/ec;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/ec;->b(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/ee;->a(Ljava/io/InputStream;Lcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ee;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/ee;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/dl;[B)Lcom/ddtaxi/a/a/ec;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/ec;->b(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/ee;->a([B)Lcom/ddtaxi/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ee;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/ee;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/dl;[BLcom/ddtaxi/a/a/ei;)Lcom/ddtaxi/a/a/ec;
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/ec;->b(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/ee;->a([BLcom/ddtaxi/a/a/el;)Lcom/ddtaxi/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ee;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/ee;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ee;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/ee;

    invoke-interface {p0}, Lcom/ddtaxi/a/a/gk;->f()Lcom/ddtaxi/a/a/dl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/ee;-><init>(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/ee;)V

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/en;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/dl;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/en;->i()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dt;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ee;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/ee;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/a/a/ee;-><init>(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/ee;)V

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/ec;)Lcom/ddtaxi/a/a/en;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->b:Lcom/ddtaxi/a/a/en;

    return-object v0
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/ec;)Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->d:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method private c(Lcom/ddtaxi/a/a/ea;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ea;->e()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ec;->a:Lcom/ddtaxi/a/a/dl;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OneofDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private d(Lcom/ddtaxi/a/a/dt;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ec;->a:Lcom/ddtaxi/a/a/dl;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/ddtaxi/a/a/ec;)[Lcom/ddtaxi/a/a/dt;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->c:[Lcom/ddtaxi/a/a/dt;

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/ec;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->a:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->g()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bw;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->k()I

    move-result v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ec;->d:Lcom/ddtaxi/a/a/im;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/im;->e()I

    move-result v1

    add-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/ddtaxi/a/a/ec;->e:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->j()I

    move-result v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ec;->d:Lcom/ddtaxi/a/a/im;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/im;->A()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public synthetic F()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ec;->e()Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public synthetic G()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ec;->e()Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ec;->a()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ec;->a()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ec;->d()Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public synthetic K()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ec;->d()Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/ddtaxi/a/a/ec;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->a:Lcom/ddtaxi/a/a/dl;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ec;->a(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ec;->d(Lcom/ddtaxi/a/a/dt;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/r;)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->a:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->g()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bw;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/r;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->d:Lcom/ddtaxi/a/a/im;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->b(Lcom/ddtaxi/a/a/r;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/r;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->d:Lcom/ddtaxi/a/a/im;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/r;)V

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/ea;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ec;->c(Lcom/ddtaxi/a/a/ea;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->c:[Lcom/ddtaxi/a/a/dt;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ea;->a()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a_(Lcom/ddtaxi/a/a/dt;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ec;->d(Lcom/ddtaxi/a/a/dt;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/dt;
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ec;->c(Lcom/ddtaxi/a/a/ea;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->c:[Lcom/ddtaxi/a/a/dt;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ea;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ec;->d(Lcom/ddtaxi/a/a/dt;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->y()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/ec;->a(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->s()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b_()Lcom/ddtaxi/a/a/gv;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/ed;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/ed;-><init>(Lcom/ddtaxi/a/a/ec;)V

    return-object v0
.end method

.method public c(Lcom/ddtaxi/a/a/dt;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ec;->d(Lcom/ddtaxi/a/a/dt;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/en;->d(Lcom/ddtaxi/a/a/eo;)I

    move-result v0

    return v0
.end method

.method public c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->d:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/ee;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/ee;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ec;->a:Lcom/ddtaxi/a/a/dl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ddtaxi/a/a/ee;-><init>(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/ee;)V

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/ee;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ec;->d()Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->a:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ec;->a:Lcom/ddtaxi/a/a/dl;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ec;->b:Lcom/ddtaxi/a/a/en;

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/ec;->a(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/en;)Z

    move-result v0

    return v0
.end method
