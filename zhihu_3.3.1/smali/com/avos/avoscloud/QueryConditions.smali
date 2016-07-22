.class public Lcom/avos/avoscloud/QueryConditions;
.super Ljava/lang/Object;
.source "QueryConditions.java"


# instance fields
.field private include:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I

.field private order:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skip:I

.field private trace:Z

.field where:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    .line 30
    return-void
.end method

.method private removeDuplications(Lcom/avos/avoscloud/QueryOperation;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 242
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/QueryOperation;

    .line 244
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryOperation;->sameOp(Lcom/avos/avoscloud/QueryOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method


# virtual methods
.method public addAndItems(Lcom/avos/avoscloud/QueryConditions;)V
    .locals 4
    .parameter

    .prologue
    .line 269
    invoke-virtual {p1}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v0

    .line 271
    new-instance v2, Lcom/avos/avoscloud/QueryOperation;

    const-string v1, "$and"

    const-string v3, "$and"

    invoke-direct {v2, v1, v3, v0}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    const-string v1, "$and"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 274
    if-nez v0, :cond_2

    .line 275
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 276
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    const-string v3, "$and"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 279
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 280
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/QueryOperation;

    .line 282
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/QueryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 286
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public addAscendingOrder(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByAscending(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v0, "%s,%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public addDescendingOrder(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByDescending(Ljava/lang/String;)V

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v0, "%s,-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public addOrItems(Lcom/avos/avoscloud/QueryOperation;)V
    .locals 3
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    const-string v1, "$or"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 252
    if-nez v0, :cond_2

    .line 253
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 254
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    const-string v2, "$or"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 257
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 258
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/QueryOperation;

    .line 260
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 265
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V
    .locals 3
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    iget-object v1, p1, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 228
    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    iget-object v2, p1, Lcom/avos/avoscloud/QueryOperation;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/QueryConditions;->removeDuplications(Lcom/avos/avoscloud/QueryOperation;Ljava/util/List;)V

    .line 233
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    new-instance v0, Lcom/avos/avoscloud/QueryOperation;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    .line 238
    return-void
.end method

.method public assembleParameters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v1, "where"

    invoke-virtual {p0}, Lcom/avos/avoscloud/QueryConditions;->compileWhereOperationMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->restfulServerData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/QueryConditions;->limit:I

    if-lez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v1, "limit"

    iget v2, p0, Lcom/avos/avoscloud/QueryConditions;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_1
    iget v0, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    if-ltz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v1, "skip"

    iget v2, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v1, "order"

    iget-object v2, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v2, "include"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 220
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->joinCollection(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    const-string v2, "keys"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public compileWhereOperationMap()Ljava/util/Map;
    .locals 10
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
    .line 134
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 135
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    const-string v2, "$or"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/QueryOperation;

    .line 141
    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    :cond_1
    const-string v0, "$or"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 144
    if-eqz v0, :cond_2

    .line 145
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 147
    :cond_2
    const-string v0, "$or"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    :cond_3
    const-string v2, "$and"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/QueryOperation;

    .line 152
    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryOperation;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 154
    :cond_4
    const-string v0, "$and"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    if-eqz v0, :cond_5

    .line 156
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 158
    :cond_5
    const-string v0, "$and"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 161
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 172
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 174
    const/4 v2, 0x0

    .line 175
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/QueryOperation;

    .line 176
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/QueryOperation;->toResult(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v8, "__eq"

    iget-object v9, v1, Lcom/avos/avoscloud/QueryOperation;->op:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 178
    const/4 v2, 0x1

    .line 180
    :cond_8
    if-nez v2, :cond_7

    .line 181
    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_3

    .line 165
    :pswitch_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 166
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/QueryOperation;

    .line 168
    invoke-virtual {v1}, Lcom/avos/avoscloud/QueryOperation;->toResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 184
    :cond_9
    if-eqz v2, :cond_b

    .line 185
    const-string v0, "$and"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 186
    if-eqz v0, :cond_a

    .line 187
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 189
    :cond_a
    const-string v0, "$and"

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 192
    :cond_b
    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 199
    :cond_c
    return-object v3

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getInclude()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/avos/avoscloud/QueryConditions;->limit:I

    return v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getSelectedKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    return v0
.end method

.method public getWhere()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    return-object v0
.end method

.method public include(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public isTrace()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/avos/avoscloud/QueryConditions;->trace:Z

    return v0
.end method

.method public orderByAscending(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public orderByDescending(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 119
    const-string v0, "-%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public selectKeys(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 131
    return-void
.end method

.method public setInclude(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->include:Ljava/util/List;

    .line 62
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/avos/avoscloud/QueryConditions;->limit:I

    .line 38
    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->order:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->parameters:Ljava/util/Map;

    .line 86
    return-void
.end method

.method public setSelectedKeys(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->selectedKeys:Ljava/util/Set;

    .line 70
    return-void
.end method

.method public setSkip(I)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/avos/avoscloud/QueryConditions;->skip:I

    .line 46
    return-void
.end method

.method public setTrace(Z)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/avos/avoscloud/QueryConditions;->trace:Z

    .line 94
    return-void
.end method

.method public setWhere(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/QueryOperation;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, Lcom/avos/avoscloud/QueryConditions;->where:Ljava/util/Map;

    .line 78
    return-void
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    const-string v0, "$in"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    return-void
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 408
    const-string v0, ".*%s.*"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 417
    const-string v0, "$all"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 418
    return-void
.end method

.method public whereDoesNotExist(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 421
    const-string v0, "$exists"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 422
    return-void
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 404
    const-string v0, ".*%s$"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 351
    instance-of v0, p2, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "__eq"

    check-cast p2, Lcom/avos/avoscloud/AVObject;

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v0, "__eq"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public whereExists(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 314
    const-string v0, "$exists"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 318
    const-string v0, "$gt"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 306
    new-instance v0, Lcom/avos/avoscloud/QueryOperation;

    const-string v1, "$gte"

    invoke-direct {v0, p1, v1, p2}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    .line 307
    return-void
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 322
    const-string v0, "$lt"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    return-void
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 326
    const-string v0, "$lte"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    return-void
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 330
    const-string v0, "$regex"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    const-string v0, "$regex"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    const-string v0, "$options"

    invoke-virtual {p0, p1, v0, p3}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    return-void
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 339
    const-string v0, "$nearSphere"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 343
    const-string v0, "$nin"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 347
    const-string v0, "$ne"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    return-void
.end method

.method public whereSizeEqual(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 413
    const-string v0, "$size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 359
    const-string v0, "^%s.*"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 364
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-static {p3}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    const-string v1, "$box"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 367
    const-string v1, "$within"

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    const-wide/high16 v6, -0x4010

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/avos/avoscloud/QueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V

    .line 372
    return-void
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 376
    const-string v0, "$nearSphere"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 377
    cmpl-double v1, p3, v4

    if-ltz v1, :cond_0

    .line 378
    const-string v1, "$maxDistanceInKilometers"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_0
    cmpl-double v1, p5, v4

    if-ltz v1, :cond_1

    .line 381
    const-string v1, "$minDistanceInKilometers"

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    const-wide/high16 v6, -0x4010

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/avos/avoscloud/QueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V

    .line 388
    return-void
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 393
    const-string v0, "$nearSphere"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 394
    cmpl-double v1, p3, v4

    if-ltz v1, :cond_0

    .line 395
    const-string v1, "$maxDistanceInMiles"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_0
    cmpl-double v1, p5, v4

    if-ltz v1, :cond_1

    .line 398
    const-string v1, "$minDistanceInMiles"

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    const-wide/high16 v6, -0x4010

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/avos/avoscloud/QueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V

    .line 291
    return-void
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;DD)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 295
    const-string v0, "$nearSphere"

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromGeoPoint(Lcom/avos/avoscloud/AVGeoPoint;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVUtils;->createMap(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 296
    cmpl-double v1, p3, v4

    if-ltz v1, :cond_0

    .line 297
    const-string v1, "$maxDistanceInRadians"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    cmpl-double v1, p5, v4

    if-ltz v1, :cond_1

    .line 300
    const-string v1, "$minDistanceInRadians"

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_1
    new-instance v1, Lcom/avos/avoscloud/QueryOperation;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    .line 303
    return-void
.end method
