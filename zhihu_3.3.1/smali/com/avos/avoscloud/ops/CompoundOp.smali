.class public Lcom/avos/avoscloud/ops/CompoundOp;
.super Lcom/avos/avoscloud/ops/CollectionOp;
.source "CompoundOp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/avos/avoscloud/ops/CollectionOp;-><init>()V

    .line 19
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/avos/avoscloud/ops/AVOp;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 22
    sget-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->Compound:Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/ops/CollectionOp;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    .line 24
    if-eqz p2, :cond_0

    .line 25
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 26
    iget-object v3, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public addFirst(Lcom/avos/avoscloud/ops/AVOp;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public addLast(Lcom/avos/avoscloud/ops/AVOp;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    .line 53
    invoke-interface {v0, p1}, Lcom/avos/avoscloud/ops/AVOp;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 55
    :cond_0
    return-object p1
.end method

.method public encodeOp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic getValues()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/CompoundOp;->getValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValues()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/CompoundOp;->getValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/ops/AVOp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    return-object v0
.end method

.method public removeFirst()Lcom/avos/avoscloud/ops/AVOp;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    return-object v0
.end method

.method public removeLast()Lcom/avos/avoscloud/ops/AVOp;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avos/avoscloud/ops/CompoundOp;->ops:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AVOp;

    return-object v0
.end method
