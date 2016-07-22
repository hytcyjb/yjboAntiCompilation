.class final Lcom/ddtaxi/a/a/ii;
.super Ljava/lang/Object;


# static fields
.field private static synthetic c:[I


# instance fields
.field a:Z

.field b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/ii;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/ii;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/ii;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/ii;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ii;Z)Lcom/ddtaxi/a/a/ii;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ii;->a(Z)Lcom/ddtaxi/a/a/ii;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)Lcom/ddtaxi/a/a/ii;
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/ii;->a:Z

    return-object p0
.end method

.method private a(IILjava/util/List;Lcom/ddtaxi/a/a/ij;)V
    .locals 3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    const-string v2, ": "

    invoke-virtual {p4, v2}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    invoke-static {p2, v0, p4}, Lcom/ddtaxi/a/a/hz;->a(ILjava/lang/Object;Lcom/ddtaxi/a/a/ij;)V

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/ii;->a:Z

    if-eqz v0, :cond_1

    const-string v0, " "

    :goto_1
    invoke-virtual {p4, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "\n"

    goto :goto_1
.end method

.method private a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lcom/ddtaxi/a/a/ii;->b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/ii;->b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V

    goto :goto_1
.end method

.method private a(Lcom/ddtaxi/a/a/gp;Lcom/ddtaxi/a/a/ij;)V
    .locals 3

    invoke-interface {p1}, Lcom/ddtaxi/a/a/gp;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/ddtaxi/a/a/gp;->c()Lcom/ddtaxi/a/a/im;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/im;Lcom/ddtaxi/a/a/ij;)V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/dt;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/gp;Lcom/ddtaxi/a/a/ij;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/gp;Lcom/ddtaxi/a/a/ij;)V

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/im;Lcom/ddtaxi/a/a/ij;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/im;Lcom/ddtaxi/a/a/ij;)V

    return-void
.end method

.method private a(Lcom/ddtaxi/a/a/im;Lcom/ddtaxi/a/a/ij;)V
    .locals 6

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/im;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/io;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/io;->c()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/ddtaxi/a/a/ii;->a(IILjava/util/List;Lcom/ddtaxi/a/a/ij;)V

    const/4 v4, 0x5

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/io;->d()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/ddtaxi/a/a/ii;->a(IILjava/util/List;Lcom/ddtaxi/a/a/ij;)V

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/io;->e()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/ddtaxi/a/a/ii;->a(IILjava/util/List;Lcom/ddtaxi/a/a/ij;)V

    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/io;->f()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5, p2}, Lcom/ddtaxi/a/a/ii;->a(IILjava/util/List;Lcom/ddtaxi/a/a/ij;)V

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/io;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ddtaxi/a/a/im;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/ddtaxi/a/a/ii;->a:Z

    if-eqz v2, :cond_2

    const-string v2, " { "

    invoke-virtual {p2, v2}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-direct {p0, v1, p2}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/im;Lcom/ddtaxi/a/a/ij;)V

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/ii;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "} "

    invoke-virtual {p2, v1}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v2, " {\n"

    invoke-virtual {p2, v2}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ij;->a()V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ij;->b()V

    const-string v1, "}\n"

    invoke-virtual {p2, v1}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/ddtaxi/a/a/ii;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ddtaxi/a/a/dv;->c()[Lcom/ddtaxi/a/a/dv;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ddtaxi/a/a/dv;->h:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ddtaxi/a/a/dv;->l:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ddtaxi/a/a/dv;->a:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ddtaxi/a/a/dv;->n:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ddtaxi/a/a/dv;->g:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ddtaxi/a/a/dv;->f:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ddtaxi/a/a/dv;->b:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ddtaxi/a/a/dv;->j:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_8
    :try_start_8
    sget-object v1, Lcom/ddtaxi/a/a/dv;->e:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_9
    :try_start_9
    sget-object v1, Lcom/ddtaxi/a/a/dv;->c:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_a
    :try_start_a
    sget-object v1, Lcom/ddtaxi/a/a/dv;->k:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_b
    :try_start_b
    sget-object v1, Lcom/ddtaxi/a/a/dv;->o:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_c
    :try_start_c
    sget-object v1, Lcom/ddtaxi/a/a/dv;->p:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_d
    :try_start_d
    sget-object v1, Lcom/ddtaxi/a/a/dv;->q:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    :goto_e
    :try_start_e
    sget-object v1, Lcom/ddtaxi/a/a/dv;->r:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_f
    :try_start_f
    sget-object v1, Lcom/ddtaxi/a/a/dv;->i:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_10
    :try_start_10
    sget-object v1, Lcom/ddtaxi/a/a/dv;->m:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_11
    :try_start_11
    sget-object v1, Lcom/ddtaxi/a/a/dv;->d:Lcom/ddtaxi/a/a/dv;

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_12
    sput-object v0, Lcom/ddtaxi/a/a/ii;->c:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_12

    :catch_1
    move-exception v1

    goto :goto_11

    :catch_2
    move-exception v1

    goto :goto_10

    :catch_3
    move-exception v1

    goto :goto_f

    :catch_4
    move-exception v1

    goto :goto_e

    :catch_5
    move-exception v1

    goto :goto_d

    :catch_6
    move-exception v1

    goto :goto_c

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_a

    :catch_9
    move-exception v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_8

    :catch_b
    move-exception v1

    goto/16 :goto_7

    :catch_c
    move-exception v1

    goto/16 :goto_6

    :catch_d
    move-exception v1

    goto/16 :goto_5

    :catch_e
    move-exception v1

    goto/16 :goto_4

    :catch_f
    move-exception v1

    goto/16 :goto_3

    :catch_10
    move-exception v1

    goto/16 :goto_2

    :catch_11
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/ii;Z)Lcom/ddtaxi/a/a/ii;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ii;->b(Z)Lcom/ddtaxi/a/a/ii;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)Lcom/ddtaxi/a/a/ii;
    .locals 0

    iput-boolean p1, p0, Lcom/ddtaxi/a/a/ii;->b:Z

    return-object p0
.end method

.method private b(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V
    .locals 2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "["

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->v()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->g()Lcom/ddtaxi/a/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/bw;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/dv;->k:Lcom/ddtaxi/a/a/dv;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->x()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->y()Lcom/ddtaxi/a/a/dl;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->y()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "]"

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/ii;->a:Z

    if-eqz v0, :cond_3

    const-string v0, " { "

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/ii;->c(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->g()Lcom/ddtaxi/a/a/du;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/du;->i:Lcom/ddtaxi/a/a/du;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/ii;->a:Z

    if-eqz v0, :cond_5

    const-string v0, "} "

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    :goto_3
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v0

    sget-object v1, Lcom/ddtaxi/a/a/dv;->j:Lcom/ddtaxi/a/a/dv;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->y()Lcom/ddtaxi/a/a/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/dl;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string v0, " {\n"

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/ddtaxi/a/a/ij;->a()V

    goto :goto_2

    :cond_4
    const-string v0, ": "

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Lcom/ddtaxi/a/a/ij;->b()V

    const-string v0, "}\n"

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/ddtaxi/a/a/ii;->a:Z

    if-eqz v0, :cond_7

    const-string v0, " "

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/ii;Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ddtaxi/a/a/ii;->c(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V

    return-void
.end method

.method private c(Lcom/ddtaxi/a/a/dt;Ljava/lang/Object;Lcom/ddtaxi/a/a/ij;)V
    .locals 2

    invoke-static {}, Lcom/ddtaxi/a/a/ii;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/dt;->i()Lcom/ddtaxi/a/a/dv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ddtaxi/a/a/dv;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/hz;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/hz;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_7
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/ii;->b:Z

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/ddtaxi/a/a/hz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/ddtaxi/a/a/hz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_8
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    instance-of v0, p2, Lcom/ddtaxi/a/a/k;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/ddtaxi/a/a/k;

    invoke-static {p2}, Lcom/ddtaxi/a/a/hz;->a(Lcom/ddtaxi/a/a/k;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    :goto_2
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    check-cast p2, [B

    invoke-static {p2}, Lcom/ddtaxi/a/a/hz;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_9
    check-cast p2, Lcom/ddtaxi/a/a/ds;

    invoke-virtual {p2}, Lcom/ddtaxi/a/a/ds;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ddtaxi/a/a/ij;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_a
    check-cast p2, Lcom/ddtaxi/a/a/gk;

    invoke-direct {p0, p2, p3}, Lcom/ddtaxi/a/a/ii;->a(Lcom/ddtaxi/a/a/gp;Lcom/ddtaxi/a/a/ij;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
