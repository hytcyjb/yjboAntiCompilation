.class public Lcom/avos/avoscloud/ops/AddRelationOp;
.super Lcom/avos/avoscloud/ops/CollectionAddOp;
.source "AddRelationOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/ops/AddRelationOp$1;
    }
.end annotation


# instance fields
.field private values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/avos/avoscloud/ops/CollectionAddOp;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    .line 16
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/avos/avoscloud/AVObject;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 23
    sget-object v0, Lcom/avos/avoscloud/ops/AVOp$OpType;->AddRelation:Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/ops/CollectionAddOp;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/ops/AVOp$OpType;)V

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    .line 24
    if-eqz p2, :cond_0

    .line 25
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 26
    iget-object v3, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter

    .prologue
    .line 35
    return-object p1
.end method

.method public encodeOp()Ljava/util/Map;
    .locals 3
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
    .line 40
    iget-object v0, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->type:Lcom/avos/avoscloud/ops/AVOp$OpType;

    invoke-virtual {v1}, Lcom/avos/avoscloud/ops/AVOp$OpType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/AddRelationOp;->getValues()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/avos/avoscloud/AVUtils;->createPointerArrayOpMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValues()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/AddRelationOp;->getValues()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValues()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/avos/avoscloud/ops/AddRelationOp;->getValues()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/avos/avoscloud/AVObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    return-object v0
.end method

.method public merge(Lcom/avos/avoscloud/ops/AVOp;)Lcom/avos/avoscloud/ops/AVOp;
    .locals 4
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/ops/AddRelationOp;->assertKeyEquals(Lcom/avos/avoscloud/ops/AVOp;)V

    .line 46
    sget-object v0, Lcom/avos/avoscloud/ops/AddRelationOp$1;->$SwitchMap$com$avos$avoscloud$ops$AVOp$OpType:[I

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/ops/AVOp$OpType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow op type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/avos/avoscloud/ops/AVOp;->type()Lcom/avos/avoscloud/ops/AVOp$OpType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object p1, p0

    .line 65
    :goto_0
    :pswitch_1
    return-object p1

    .line 52
    :pswitch_2
    iget-object v1, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    const-class v0, Lcom/avos/avoscloud/ops/AddRelationOp;

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/AddRelationOp;

    iget-object v0, v0, Lcom/avos/avoscloud/ops/AddRelationOp;->values:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p1, p0

    .line 53
    goto :goto_0

    .line 58
    :pswitch_3
    new-instance v0, Lcom/avos/avoscloud/ops/CompoundOp;

    iget-object v1, p0, Lcom/avos/avoscloud/ops/AddRelationOp;->key:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/avos/avoscloud/ops/AVOp;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/CompoundOp;-><init>(Ljava/lang/String;[Lcom/avos/avoscloud/ops/AVOp;)V

    move-object p1, v0

    goto :goto_0

    .line 60
    :pswitch_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Could not increment an non-numberic value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_5
    const-class v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-interface {p1, v0}, Lcom/avos/avoscloud/ops/AVOp;->cast(Ljava/lang/Class;)Lcom/avos/avoscloud/ops/AVOp;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/ops/CompoundOp;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/ops/CompoundOp;->addFirst(Lcom/avos/avoscloud/ops/AVOp;)V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
