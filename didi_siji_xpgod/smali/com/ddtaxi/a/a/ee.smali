.class public final Lcom/ddtaxi/a/a/ee;
.super Lcom/ddtaxi/a/a/b;


# instance fields
.field private final a:Lcom/ddtaxi/a/a/dl;

.field private b:Lcom/ddtaxi/a/a/en;

.field private final c:[Lcom/ddtaxi/a/a/dt;

.field private d:Lcom/ddtaxi/a/a/im;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/dl;)V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/b;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/ee;->a:Lcom/ddtaxi/a/a/dl;

    invoke-static {}, Lcom/ddtaxi/a/a/en;->a()Lcom/ddtaxi/a/a/en;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ee;->d:Lcom/ddtaxi/a/a/im;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dl;->b()Lcom/ddtaxi/a/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/w;->D()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/dt;

    iput-object v0, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/ee;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;-><init>(Lcom/ddtaxi/a/a/dl;)V

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ee;)Lcom/ddtaxi/a/a/ec;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ee;->i()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    instance-of v0, p2, Lcom/ddtaxi/a/a/ds;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DynamicMessage should use EnumValueDescriptor to set Enum Value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->z()Lcom/ddtaxi/a/a/dr;

    move-result-object v0

    check-cast p2, Lcom/ddtaxi/a/a/ds;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ds;->g()Lcom/ddtaxi/a/a/dr;

    move-result-object v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor doesn\'t much Enum Field."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private f(Lcom/ddtaxi/a/a/ea;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ea;->e()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->a:Lcom/ddtaxi/a/a/dl;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OneofDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private h(Lcom/ddtaxi/a/a/dt;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->a:Lcom/ddtaxi/a/a/dl;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private i()Lcom/ddtaxi/a/a/ec;
    .locals 5

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->z()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/ec;

    iget-object v2, p0, Lcom/ddtaxi/a/a/ee;->a:Lcom/ddtaxi/a/a/dl;

    iget-object v3, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    iget-object v4, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    array-length v4, v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ddtaxi/a/a/dt;

    iget-object v4, p0, Lcom/ddtaxi/a/a/ee;->d:Lcom/ddtaxi/a/a/im;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/ddtaxi/a/a/ec;-><init>(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/en;[Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/im;)V

    invoke-static {v1}, Lcom/ddtaxi/a/a/ee;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/il;->b()Lcom/ddtaxi/a/a/fz;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->e()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->e()Lcom/ddtaxi/a/a/en;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->h()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic I()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->h()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Q()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->e()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic R()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->e()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->g()Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public synthetic T()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->g()Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->a()Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public synthetic W()Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->a()Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Y()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->d()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic Z()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->d()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ee;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/ddtaxi/a/a/ee;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/en;->a()Lcom/ddtaxi/a/a/en;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    :goto_0
    invoke-static {}, Lcom/ddtaxi/a/a/im;->b()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ee;->d:Lcom/ddtaxi/a/a/im;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->f()V

    goto :goto_0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;ILjava/lang/Object;)Lcom/ddtaxi/a/a/ee;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;->h(Lcom/ddtaxi/a/a/dt;)V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ee;->j()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;ILjava/lang/Object;)V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/ee;
    .locals 3

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;->h(Lcom/ddtaxi/a/a/dt;)V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ee;->j()V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/dv;->n:Lcom/ddtaxi/a/a/dv;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/ee;->e(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->w()Lcom/ddtaxi/a/a/ea;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ea;->a()I

    move-result v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    iget-object v2, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v2, v1}, Lcom/ddtaxi/a/a/en;->c(Lcom/ddtaxi/a/a/eo;)V

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    aput-object p1, v1, v0

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)V

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ee;
    .locals 3

    instance-of v0, p1, Lcom/ddtaxi/a/a/ec;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/ddtaxi/a/a/ec;

    invoke-static {p1}, Lcom/ddtaxi/a/a/ec;->a(Lcom/ddtaxi/a/a/ec;)Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->a:Lcom/ddtaxi/a/a/dl;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mergeFrom(Message) can only merge messages of the same type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/ee;->j()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-static {p1}, Lcom/ddtaxi/a/a/ec;->b(Lcom/ddtaxi/a/a/ec;)Lcom/ddtaxi/a/a/en;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/en;)V

    invoke-static {p1}, Lcom/ddtaxi/a/a/ec;->c(Lcom/ddtaxi/a/a/ec;)Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ee;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/ee;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :goto_1
    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    invoke-static {p1}, Lcom/ddtaxi/a/a/ec;->d(Lcom/ddtaxi/a/a/ec;)[Lcom/ddtaxi/a/a/dt;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/ddtaxi/a/a/ec;->d(Lcom/ddtaxi/a/a/ec;)[Lcom/ddtaxi/a/a/dt;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    aget-object v1, v1, v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/ec;->d(Lcom/ddtaxi/a/a/ec;)[Lcom/ddtaxi/a/a/dt;

    move-result-object v2

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    iget-object v2, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/ddtaxi/a/a/en;->c(Lcom/ddtaxi/a/a/eo;)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    invoke-static {p1}, Lcom/ddtaxi/a/a/ec;->d(Lcom/ddtaxi/a/a/ec;)[Lcom/ddtaxi/a/a/dt;

    move-result-object v2

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Lcom/ddtaxi/a/a/b;->c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ee;

    move-object p0, v0

    goto :goto_1
.end method

.method public a(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/gl;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getFieldBuilder() called on a dynamic message type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/ddtaxi/a/a/dt;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;->h(Lcom/ddtaxi/a/a/dt;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/ea;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;->f(Lcom/ddtaxi/a/a/ea;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

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

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;->h(Lcom/ddtaxi/a/a/dt;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;)Z

    move-result v0

    return v0
.end method

.method public synthetic an()Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->g()Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ao()Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->a()Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/dt;
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;->f(Lcom/ddtaxi/a/a/ea;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ea;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/ee;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;->h(Lcom/ddtaxi/a/a/dt;)V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ee;->j()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1, p2}, Lcom/ddtaxi/a/a/en;->b(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;)V

    return-object p0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/dt;ILjava/lang/Object;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/dt;ILjava/lang/Object;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ee;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/ddtaxi/a/a/dt;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;->h(Lcom/ddtaxi/a/a/dt;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

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

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/ddtaxi/a/a/dt;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;->h(Lcom/ddtaxi/a/a/dt;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/en;->d(Lcom/ddtaxi/a/a/eo;)I

    move-result v0

    return v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ee;->e(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/ee;
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/ee;->d:Lcom/ddtaxi/a/a/im;

    return-object p0
.end method

.method public synthetic c(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ee;->a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/ddtaxi/a/a/im;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->d:Lcom/ddtaxi/a/a/im;

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/ec;
    .locals 5

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->z()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/ddtaxi/a/a/ec;

    iget-object v2, p0, Lcom/ddtaxi/a/a/ee;->a:Lcom/ddtaxi/a/a/dl;

    iget-object v3, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    iget-object v4, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    array-length v4, v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ddtaxi/a/a/dt;

    iget-object v4, p0, Lcom/ddtaxi/a/a/ee;->d:Lcom/ddtaxi/a/a/im;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/ddtaxi/a/a/ec;-><init>(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/en;[Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/im;)V

    invoke-static {v1}, Lcom/ddtaxi/a/a/ee;->d(Lcom/ddtaxi/a/a/gk;)Lcom/ddtaxi/a/a/il;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ee;->e()Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/ee;
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;->h(Lcom/ddtaxi/a/a/dt;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newBuilderForField is only valid for fields with message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/ddtaxi/a/a/ee;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->y()Lcom/ddtaxi/a/a/dl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/ee;-><init>(Lcom/ddtaxi/a/a/dl;)V

    return-object v0
.end method

.method public d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/ee;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->d:Lcom/ddtaxi/a/a/im;

    invoke-static {v0}, Lcom/ddtaxi/a/a/im;->a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/in;->a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/in;->a()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ee;->d:Lcom/ddtaxi/a/a/im;

    return-object p0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/ee;->b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ee;->e(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/ec;
    .locals 5

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->c()V

    new-instance v1, Lcom/ddtaxi/a/a/ec;

    iget-object v2, p0, Lcom/ddtaxi/a/a/ee;->a:Lcom/ddtaxi/a/a/dl;

    iget-object v3, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    iget-object v4, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    array-length v4, v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ddtaxi/a/a/dt;

    iget-object v4, p0, Lcom/ddtaxi/a/a/ee;->d:Lcom/ddtaxi/a/a/im;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/ddtaxi/a/a/ec;-><init>(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/en;[Lcom/ddtaxi/a/a/dt;Lcom/ddtaxi/a/a/im;)V

    return-object v1
.end method

.method public e(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/ee;
    .locals 3

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;->h(Lcom/ddtaxi/a/a/dt;)V

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ee;->j()V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->w()Lcom/ddtaxi/a/a/ea;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ea;->a()I

    move-result v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/en;->c(Lcom/ddtaxi/a/a/eo;)V

    return-object p0
.end method

.method public e(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/ee;
    .locals 2

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ee;->f(Lcom/ddtaxi/a/a/ea;)V

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ea;->a()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ee;->e(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/ee;

    :cond_0
    return-object p0
.end method

.method public synthetic e(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ee;->c(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/dl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->a:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method public synthetic f(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ee;->d(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/ddtaxi/a/a/ee;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/ddtaxi/a/a/ee;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->a:Lcom/ddtaxi/a/a/dl;

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/ee;-><init>(Lcom/ddtaxi/a/a/dl;)V

    iget-object v1, v0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    iget-object v2, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-virtual {v1, v2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/en;)V

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->d:Lcom/ddtaxi/a/a/im;

    invoke-virtual {v0, v1}, Lcom/ddtaxi/a/a/ee;->d(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/ee;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    iget-object v2, v0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    iget-object v3, p0, Lcom/ddtaxi/a/a/ee;->c:[Lcom/ddtaxi/a/a/dt;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public synthetic g(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/gl;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ee;->e(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/ee;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/ddtaxi/a/a/ec;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->a:Lcom/ddtaxi/a/a/dl;

    invoke-static {v0}, Lcom/ddtaxi/a/a/ec;->a(Lcom/ddtaxi/a/a/dl;)Lcom/ddtaxi/a/a/ec;

    move-result-object v0

    return-object v0
.end method

.method public z()Z
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ee;->a:Lcom/ddtaxi/a/a/dl;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ee;->b:Lcom/ddtaxi/a/a/en;

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/ec;->a(Lcom/ddtaxi/a/a/dl;Lcom/ddtaxi/a/a/en;)Z

    move-result v0

    return v0
.end method
