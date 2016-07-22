.class public abstract Lcom/avos/avoscloud/ops/CollectionAddOp;
.super Lcom/avos/avoscloud/ops/CollectionOp;
.source "CollectionAddOp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/avos/avoscloud/ops/CollectionOp;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/ops/CollectionOp;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V

    .line 21
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 25
    if-eqz p1, :cond_0

    .line 26
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/CollectionAddOp;->getValues()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/CollectionAddOp;->getValues()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    :cond_1
    return-object v0
.end method
