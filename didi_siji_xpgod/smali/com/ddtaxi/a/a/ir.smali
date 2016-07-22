.class public Lcom/ddtaxi/a/a/ir;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/ddtaxi/a/a/gh;
.implements Ljava/util/RandomAccess;


# instance fields
.field private final a:Lcom/ddtaxi/a/a/gh;


# direct methods
.method public constructor <init>(Lcom/ddtaxi/a/a/gh;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/ir;->a:Lcom/ddtaxi/a/a/gh;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ir;)Lcom/ddtaxi/a/a/gh;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ir;->a:Lcom/ddtaxi/a/a/gh;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ir;->a:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gh;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ir;->a:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gh;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/ddtaxi/a/a/k;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(I[B)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lcom/ddtaxi/a/a/gh;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Lcom/ddtaxi/a/a/k;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a([B)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Ljava/util/Collection;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ir;->a:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gh;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Collection;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c(I)Lcom/ddtaxi/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ir;->a:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gh;->c(I)Lcom/ddtaxi/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ir;->a:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gh;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/ddtaxi/a/a/gh;
    .locals 0

    return-object p0
.end method

.method public d(I)[B
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ir;->a:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v0, p1}, Lcom/ddtaxi/a/a/gh;->d(I)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ir;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/it;

    invoke-direct {v0, p0}, Lcom/ddtaxi/a/a/it;-><init>(Lcom/ddtaxi/a/a/ir;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/ddtaxi/a/a/is;

    invoke-direct {v0, p0, p1}, Lcom/ddtaxi/a/a/is;-><init>(Lcom/ddtaxi/a/a/ir;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ir;->a:Lcom/ddtaxi/a/a/gh;

    invoke-interface {v0}, Lcom/ddtaxi/a/a/gh;->size()I

    move-result v0

    return v0
.end method
