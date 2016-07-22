.class Lcom/ddtaxi/a/a/gf;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/gf;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)[B
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/gf;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/ddtaxi/a/a/ge;->a(Ljava/lang/Object;)[B

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/gf;->a:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public a(I[B)[B
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/gf;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/gf;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ddtaxi/a/a/gf;->modCount:I

    invoke-static {v0}, Lcom/ddtaxi/a/a/ge;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/gf;->b(I[B)V

    return-void
.end method

.method public b(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gf;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/ddtaxi/a/a/gf;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/gf;->modCount:I

    return-void
.end method

.method public b(I)[B
    .locals 2

    iget-object v0, p0, Lcom/ddtaxi/a/a/gf;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/ddtaxi/a/a/gf;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ddtaxi/a/a/gf;->modCount:I

    invoke-static {v0}, Lcom/ddtaxi/a/a/ge;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/gf;->a(I)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/gf;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/ddtaxi/a/a/gf;->a(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/gf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
