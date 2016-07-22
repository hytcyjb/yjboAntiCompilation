.class public final Lcom/ddtaxi/a/a/fc;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/ddtaxi/a/a/dl;

.field private final b:[Lcom/ddtaxi/a/a/fd;

.field private c:[Ljava/lang/String;

.field private final d:[Lcom/ddtaxi/a/a/fe;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/ddtaxi/a/a/dl;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/fc;->a:Lcom/ddtaxi/a/a/dl;

    iput-object p2, p0, Lcom/ddtaxi/a/a/fc;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dl;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/fd;

    iput-object v0, p0, Lcom/ddtaxi/a/a/fc;->b:[Lcom/ddtaxi/a/a/fd;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dl;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ddtaxi/a/a/fe;

    iput-object v0, p0, Lcom/ddtaxi/a/a/fc;->d:[Lcom/ddtaxi/a/a/fe;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/fc;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/ddtaxi/a/a/dl;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/fc;-><init>(Lcom/ddtaxi/a/a/dl;[Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lcom/ddtaxi/a/a/fc;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/fc;)Lcom/ddtaxi/a/a/dl;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fc;->a:Lcom/ddtaxi/a/a/dl;

    return-object v0
.end method

.method private a(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/fc;->a:Lcom/ddtaxi/a/a/dl;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "FieldDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type does not have extensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/fc;->b:[Lcom/ddtaxi/a/a/fd;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/dt;)Lcom/ddtaxi/a/a/fd;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/fe;
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ea;->e()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/fc;->a:Lcom/ddtaxi/a/a/dl;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OneofDescriptor does not match message type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/fc;->d:[Lcom/ddtaxi/a/a/fe;

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/ea;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/fc;Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/fe;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/fc;->a(Lcom/ddtaxi/a/a/ea;)Lcom/ddtaxi/a/a/fe;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/dw;)Z
    .locals 1

    invoke-static {p0}, Lcom/ddtaxi/a/a/fc;->b(Lcom/ddtaxi/a/a/dw;)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/ddtaxi/a/a/dw;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/ddtaxi/a/a/fc;
    .locals 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/fc;->e:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ddtaxi/a/a/fc;->e:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/fc;->b:[Lcom/ddtaxi/a/a/fd;

    array-length v9, v0

    move v8, v6

    :goto_1
    if-lt v8, v9, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/fc;->d:[Lcom/ddtaxi/a/a/fe;

    array-length v1, v0

    move v0, v6

    :goto_2
    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/fc;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fc;->c:[Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/fc;->a:Lcom/ddtaxi/a/a/dl;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/dt;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->w()Lcom/ddtaxi/a/a/ea;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ddtaxi/a/a/fc;->c:[Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->w()Lcom/ddtaxi/a/a/ea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ddtaxi/a/a/ea;->a()I

    move-result v2

    add-int/2addr v2, v9

    aget-object v5, v0, v2

    :goto_3
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v2, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/fc;->b:[Lcom/ddtaxi/a/a/fd;

    new-instance v2, Lcom/ddtaxi/a/a/fh;

    iget-object v3, p0, Lcom/ddtaxi/a/a/fc;->c:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-direct {v2, v1, v3, p1, p2}, Lcom/ddtaxi/a/a/fh;-><init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v2, v0, v8

    :goto_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v2, Lcom/ddtaxi/a/a/du;->h:Lcom/ddtaxi/a/a/du;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/a/a/fc;->b:[Lcom/ddtaxi/a/a/fd;

    new-instance v2, Lcom/ddtaxi/a/a/ff;

    iget-object v3, p0, Lcom/ddtaxi/a/a/fc;->c:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-direct {v2, v1, v3, p1, p2}, Lcom/ddtaxi/a/a/ff;-><init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v2, v0, v8

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/fc;->b:[Lcom/ddtaxi/a/a/fd;

    new-instance v2, Lcom/ddtaxi/a/a/fg;

    iget-object v3, p0, Lcom/ddtaxi/a/a/fc;->c:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-direct {v2, v1, v3, p1, p2}, Lcom/ddtaxi/a/a/fg;-><init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v2, v0, v8

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v2, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v0, v2, :cond_6

    iget-object v10, p0, Lcom/ddtaxi/a/a/fc;->b:[Lcom/ddtaxi/a/a/fd;

    new-instance v0, Lcom/ddtaxi/a/a/fk;

    iget-object v2, p0, Lcom/ddtaxi/a/a/fc;->c:[Ljava/lang/String;

    aget-object v2, v2, v8

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/fk;-><init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v0, v10, v8

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v2, Lcom/ddtaxi/a/a/du;->h:Lcom/ddtaxi/a/a/du;

    if-ne v0, v2, :cond_7

    iget-object v10, p0, Lcom/ddtaxi/a/a/fc;->b:[Lcom/ddtaxi/a/a/fd;

    new-instance v0, Lcom/ddtaxi/a/a/fi;

    iget-object v2, p0, Lcom/ddtaxi/a/a/fc;->c:[Ljava/lang/String;

    aget-object v2, v2, v8

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/fi;-><init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v0, v10, v8

    goto :goto_4

    :cond_7
    iget-object v10, p0, Lcom/ddtaxi/a/a/fc;->b:[Lcom/ddtaxi/a/a/fd;

    new-instance v0, Lcom/ddtaxi/a/a/fj;

    iget-object v2, p0, Lcom/ddtaxi/a/a/fc;->c:[Ljava/lang/String;

    aget-object v2, v2, v8

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ddtaxi/a/a/fj;-><init>(Lcom/ddtaxi/a/a/dt;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v0, v10, v8

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/ddtaxi/a/a/fc;->d:[Lcom/ddtaxi/a/a/fe;

    new-instance v3, Lcom/ddtaxi/a/a/fe;

    iget-object v4, p0, Lcom/ddtaxi/a/a/fc;->a:Lcom/ddtaxi/a/a/dl;

    iget-object v5, p0, Lcom/ddtaxi/a/a/fc;->c:[Ljava/lang/String;

    add-int v6, v0, v9

    aget-object v5, v5, v6

    invoke-direct {v3, v4, v5, p1, p2}, Lcom/ddtaxi/a/a/fe;-><init>(Lcom/ddtaxi/a/a/dl;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v3, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_9
    move-object v5, v7

    goto/16 :goto_3
.end method
