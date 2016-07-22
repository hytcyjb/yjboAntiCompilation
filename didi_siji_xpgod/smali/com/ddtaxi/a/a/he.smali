.class Lcom/ddtaxi/a/a/he;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/util/Stack;

.field private b:Lcom/ddtaxi/a/a/gi;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/ddtaxi/a/a/he;->a:Ljava/util/Stack;

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/he;->a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/gi;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/he;->b:Lcom/ddtaxi/a/a/gi;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/k;Lcom/ddtaxi/a/a/he;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/he;-><init>(Lcom/ddtaxi/a/a/k;)V

    return-void
.end method

.method private a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/gi;
    .locals 2

    move-object v0, p1

    :goto_0
    instance-of v1, v0, Lcom/ddtaxi/a/a/hc;

    if-nez v1, :cond_0

    check-cast v0, Lcom/ddtaxi/a/a/gi;

    return-object v0

    :cond_0
    check-cast v0, Lcom/ddtaxi/a/a/hc;

    iget-object v1, p0, Lcom/ddtaxi/a/a/he;->a:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/ddtaxi/a/a/hc;->a(Lcom/ddtaxi/a/a/hc;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    goto :goto_0
.end method

.method private b()Lcom/ddtaxi/a/a/gi;
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/he;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/ddtaxi/a/a/he;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ddtaxi/a/a/hc;

    invoke-static {v0}, Lcom/ddtaxi/a/a/hc;->b(Lcom/ddtaxi/a/a/hc;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ddtaxi/a/a/he;->a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gi;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/ddtaxi/a/a/gi;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/he;->b:Lcom/ddtaxi/a/a/gi;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ddtaxi/a/a/he;->b:Lcom/ddtaxi/a/a/gi;

    invoke-direct {p0}, Lcom/ddtaxi/a/a/he;->b()Lcom/ddtaxi/a/a/gi;

    move-result-object v1

    iput-object v1, p0, Lcom/ddtaxi/a/a/he;->b:Lcom/ddtaxi/a/a/gi;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/he;->b:Lcom/ddtaxi/a/a/gi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/he;->a()Lcom/ddtaxi/a/a/gi;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
