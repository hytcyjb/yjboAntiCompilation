.class Lcom/ddtaxi/a/a/hx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/ddtaxi/a/a/hr;

.field private b:I

.field private c:Z

.field private d:Ljava/util/Iterator;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/hr;)V
    .locals 1

    iput-object p1, p0, Lcom/ddtaxi/a/a/hx;->a:Lcom/ddtaxi/a/a/hr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ddtaxi/a/a/hx;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/hr;Lcom/ddtaxi/a/a/hx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/hx;-><init>(Lcom/ddtaxi/a/a/hr;)V

    return-void
.end method

.method private b()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hx;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hx;->a:Lcom/ddtaxi/a/a/hr;

    invoke-static {v0}, Lcom/ddtaxi/a/a/hr;->c(Lcom/ddtaxi/a/a/hr;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/hx;->d:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/hx;->d:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/hx;->c:Z

    iget v0, p0, Lcom/ddtaxi/a/a/hx;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/hx;->b:I

    iget-object v1, p0, Lcom/ddtaxi/a/a/hx;->a:Lcom/ddtaxi/a/a/hr;

    invoke-static {v1}, Lcom/ddtaxi/a/a/hr;->b(Lcom/ddtaxi/a/a/hr;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/hx;->a:Lcom/ddtaxi/a/a/hr;

    invoke-static {v0}, Lcom/ddtaxi/a/a/hr;->b(Lcom/ddtaxi/a/a/hr;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/hx;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/ddtaxi/a/a/hx;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/hx;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ddtaxi/a/a/hx;->a:Lcom/ddtaxi/a/a/hr;

    invoke-static {v1}, Lcom/ddtaxi/a/a/hr;->b(Lcom/ddtaxi/a/a/hr;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/ddtaxi/a/a/hx;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/hx;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/hx;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ddtaxi/a/a/hx;->c:Z

    iget-object v0, p0, Lcom/ddtaxi/a/a/hx;->a:Lcom/ddtaxi/a/a/hr;

    invoke-static {v0}, Lcom/ddtaxi/a/a/hr;->a(Lcom/ddtaxi/a/a/hr;)V

    iget v0, p0, Lcom/ddtaxi/a/a/hx;->b:I

    iget-object v1, p0, Lcom/ddtaxi/a/a/hx;->a:Lcom/ddtaxi/a/a/hr;

    invoke-static {v1}, Lcom/ddtaxi/a/a/hr;->b(Lcom/ddtaxi/a/a/hr;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/ddtaxi/a/a/hx;->a:Lcom/ddtaxi/a/a/hr;

    iget v1, p0, Lcom/ddtaxi/a/a/hx;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/ddtaxi/a/a/hx;->b:I

    invoke-static {v0, v1}, Lcom/ddtaxi/a/a/hr;->a(Lcom/ddtaxi/a/a/hr;I)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ddtaxi/a/a/hx;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
