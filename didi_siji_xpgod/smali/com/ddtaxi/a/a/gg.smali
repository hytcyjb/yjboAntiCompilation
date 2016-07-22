.class Lcom/ddtaxi/a/a/gg;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/gg;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/gg;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/ge;->b(Ljava/lang/Object;)Lcom/ddtaxi/a/a/k;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gg;->a:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public a(ILcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/gg;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/gg;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ddtaxi/a/a/gg;->modCount:I

    invoke-static {v0}, Lcom/ddtaxi/a/a/ge;->b(Ljava/lang/Object;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/ddtaxi/a/a/k;

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/gg;->b(ILcom/ddtaxi/a/a/k;)V

    return-void
.end method

.method public b(I)Lcom/ddtaxi/a/a/k;
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/gg;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/gg;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ddtaxi/a/a/gg;->modCount:I

    invoke-static {v0}, Lcom/ddtaxi/a/a/ge;->b(Ljava/lang/Object;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public b(ILcom/ddtaxi/a/a/k;)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gg;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/ddtaxi/a/a/gg;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/gg;->modCount:I

    return-void
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/gg;->a(I)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/gg;->b(I)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Lcom/ddtaxi/a/a/k;

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/gg;->a(ILcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gg;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
