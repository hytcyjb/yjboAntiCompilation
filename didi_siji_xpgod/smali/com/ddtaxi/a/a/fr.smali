.class public Lcom/ddtaxi/a/a/fr;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/ddtaxi/a/a/fq;

.field private final b:Ljava/util/Iterator;

.field private c:Ljava/util/Map$Entry;

.field private final d:Z


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/fq;Z)V
    .locals 1

    iput-object p1, p0, Lcom/ddtaxi/a/a/fr;->a:Lcom/ddtaxi/a/a/fq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/ddtaxi/a/a/fq;->a(Lcom/ddtaxi/a/a/fq;)Lcom/ddtaxi/a/a/en;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/en;->h()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fr;->b:Ljava/util/Iterator;

    iget-object v0, p0, Lcom/ddtaxi/a/a/fr;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/fr;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/ddtaxi/a/a/fr;->c:Ljava/util/Map$Entry;

    :cond_0
    iput-boolean p2, p0, Lcom/ddtaxi/a/a/fr;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/fq;ZLcom/ddtaxi/a/a/fr;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ddtaxi/a/a/fr;-><init>(Lcom/ddtaxi/a/a/fq;Z)V

    return-void
.end method


# virtual methods
.method public a(ILcom/ddtaxi/a/a/r;)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/fr;->c:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/fr;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ft;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->f()I

    move-result v0

    if-lt v0, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/fr;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/ft;

    iget-boolean v1, p0, Lcom/ddtaxi/a/a/fr;->d:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->h()Lcom/ddtaxi/a/a/jb;

    move-result-object v1

    sget-object v2, Lcom/ddtaxi/a/a/jb;->i:Lcom/ddtaxi/a/a/jb;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->o()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/ft;->f()I

    move-result v1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fr;->c:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p2, v1, v0}, Lcom/ddtaxi/a/a/r;->d(ILcom/ddtaxi/a/a/gm;)V

    :goto_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/fr;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ddtaxi/a/a/fr;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/ddtaxi/a/a/fr;->c:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ddtaxi/a/a/fr;->c:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/ddtaxi/a/a/en;->a(Lcom/ddtaxi/a/a/eo;Ljava/lang/Object;Lcom/ddtaxi/a/a/r;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ddtaxi/a/a/fr;->c:Ljava/util/Map$Entry;

    goto :goto_0
.end method
