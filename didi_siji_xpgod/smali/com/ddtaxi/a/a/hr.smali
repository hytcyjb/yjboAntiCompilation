.class Lcom/ddtaxi/a/a/hr;
.super Ljava/util/AbstractMap;


# instance fields
.field private final a:I

.field private b:Ljava/util/List;

.field private c:Ljava/util/Map;

.field private d:Z

.field private volatile e:Lcom/ddtaxi/a/a/hy;


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p1, p0, Lcom/ddtaxi/a/a/hr;->a:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(ILcom/ddtaxi/a/a/hr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/hr;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Comparable;)I
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_4

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hw;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hw;->a()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v1, 0x2

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_1
    add-int v0, v3, v2

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hw;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hw;->a()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-le v3, v2, :cond_1

    add-int/lit8 v0, v3, 0x1

    neg-int v0, v0

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v3, v2

    move v2, v1

    goto :goto_1
.end method

.method static a(I)Lcom/ddtaxi/a/a/hr;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/hs;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/hs;-><init>(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/hr;I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/hr;->d(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/hr;)V
    .locals 0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/hr;->f()V

    return-void
.end method

.method static b(I)Lcom/ddtaxi/a/a/hr;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/hr;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/hr;-><init>(I)V

    return-object v0
.end method

.method static synthetic b(Lcom/ddtaxi/a/a/hr;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/ddtaxi/a/a/hr;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    return-object v0
.end method

.method private d(I)Ljava/lang/Object;
    .locals 5

    invoke-direct {p0}, Lcom/ddtaxi/a/a/hr;->f()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hw;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hw;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/hr;->g()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    new-instance v4, Lcom/ddtaxi/a/a/hw;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v4, p0, v0}, Lcom/ddtaxi/a/a/hw;-><init>(Lcom/ddtaxi/a/a/hr;Ljava/util/Map$Entry;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object v1
.end method

.method private f()V
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/hr;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private g()Ljava/util/SortedMap;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/hr;->f()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private h()V
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/hr;->f()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/ddtaxi/a/a/hr;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-direct {p0}, Lcom/ddtaxi/a/a/hr;->f()V

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/hr;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hw;

    invoke-virtual {v0, p2}, Lcom/ddtaxi/a/a/hw;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/hr;->h()V

    add-int/lit8 v0, v0, 0x1

    neg-int v1, v0

    iget v0, p0, Lcom/ddtaxi/a/a/hr;->a:I

    if-lt v1, v0, :cond_1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/hr;->g()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/ddtaxi/a/a/hr;->a:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    iget v2, p0, Lcom/ddtaxi/a/a/hr;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hw;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/hr;->g()Ljava/util/SortedMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hw;->a()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hw;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    new-instance v2, Lcom/ddtaxi/a/a/hw;

    invoke-direct {v2, p0, p1, p2}, Lcom/ddtaxi/a/a/hw;-><init>(Lcom/ddtaxi/a/a/hr;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/hr;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/hr;->d:Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/hr;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(I)Ljava/util/Map$Entry;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public clear()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/hr;->f()V

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/hr;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ddtaxi/a/a/ht;->a()Ljava/lang/Iterable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->e:Lcom/ddtaxi/a/a/hy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ddtaxi/a/a/hy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ddtaxi/a/a/hy;-><init>(Lcom/ddtaxi/a/a/hr;Lcom/ddtaxi/a/a/hy;)V

    iput-object v0, p0, Lcom/ddtaxi/a/a/hr;->e:Lcom/ddtaxi/a/a/hy;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->e:Lcom/ddtaxi/a/a/hy;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/hr;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hw;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/hw;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/hr;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/hr;->f()V

    check-cast p1, Ljava/lang/Comparable;

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/hr;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/hr;->d(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/hr;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/ddtaxi/a/a/hr;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
