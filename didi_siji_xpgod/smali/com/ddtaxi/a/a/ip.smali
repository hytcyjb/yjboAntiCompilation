.class public final Lcom/ddtaxi/a/a/ip;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/ddtaxi/a/a/io;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic c()Lcom/ddtaxi/a/a/ip;
    .locals 1

    invoke-static {}, Lcom/ddtaxi/a/a/ip;->d()Lcom/ddtaxi/a/a/ip;

    move-result-object v0

    return-object v0
.end method

.method private static d()Lcom/ddtaxi/a/a/ip;
    .locals 3

    new-instance v0, Lcom/ddtaxi/a/a/ip;

    invoke-direct {v0}, Lcom/ddtaxi/a/a/ip;-><init>()V

    new-instance v1, Lcom/ddtaxi/a/a/io;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ddtaxi/a/a/io;-><init>(Lcom/ddtaxi/a/a/io;)V

    iput-object v1, v0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/ddtaxi/a/a/io;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->b(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->a(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->c(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->b(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->d(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->c(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :goto_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->e(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->d(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :goto_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->f(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->e(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :goto_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v1}, Lcom/ddtaxi/a/a/io;->b(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->a(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v1}, Lcom/ddtaxi/a/a/io;->c(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->b(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v1}, Lcom/ddtaxi/a/a/io;->d(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->c(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v1}, Lcom/ddtaxi/a/a/io;->e(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->d(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v1}, Lcom/ddtaxi/a/a/io;->f(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->e(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    goto :goto_4
.end method

.method public a(I)Lcom/ddtaxi/a/a/ip;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->c(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->b(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->c(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(J)Lcom/ddtaxi/a/a/ip;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->b(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->a(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->b(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/im;)Lcom/ddtaxi/a/a/ip;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->f(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->e(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->f(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/io;)Lcom/ddtaxi/a/a/ip;
    .locals 2

    invoke-static {p1}, Lcom/ddtaxi/a/a/io;->b(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->b(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->a(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->b(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/io;->b(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-static {p1}, Lcom/ddtaxi/a/a/io;->c(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->c(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->b(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->c(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/io;->c(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-static {p1}, Lcom/ddtaxi/a/a/io;->d(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->d(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->c(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->d(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/io;->d(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-static {p1}, Lcom/ddtaxi/a/a/io;->e(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->e(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->d(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->e(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/io;->e(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-static {p1}, Lcom/ddtaxi/a/a/io;->f(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->f(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->e(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :cond_8
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->f(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/ddtaxi/a/a/io;->f(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    return-object p0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/ip;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->e(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->d(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->e(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lcom/ddtaxi/a/a/ip;
    .locals 2

    new-instance v0, Lcom/ddtaxi/a/a/io;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ddtaxi/a/a/io;-><init>(Lcom/ddtaxi/a/a/io;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    return-object p0
.end method

.method public b(J)Lcom/ddtaxi/a/a/ip;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->d(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/io;->c(Lcom/ddtaxi/a/a/io;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/ip;->a:Lcom/ddtaxi/a/a/io;

    invoke-static {v0}, Lcom/ddtaxi/a/a/io;->d(Lcom/ddtaxi/a/a/io;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
