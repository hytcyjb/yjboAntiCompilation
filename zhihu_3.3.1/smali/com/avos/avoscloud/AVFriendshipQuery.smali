.class public Lcom/avos/avoscloud/AVFriendshipQuery;
.super Ljava/lang/Object;
.source "AVFriendshipQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avos/avoscloud/AVUser;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field conditions:Lcom/avos/avoscloud/QueryConditions;

.field userClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVFriendshipQuery;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 20
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->userId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    .line 25
    new-instance v0, Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {v0}, Lcom/avos/avoscloud/QueryConditions;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    .line 26
    return-void
.end method

.method private addOrItems(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addOrItems(Lcom/avos/avoscloud/QueryOperation;)V

    .line 378
    return-object p0
.end method

.method private addWhereItem(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/QueryOperation;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)V

    .line 373
    return-object p0
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addAscendingOrder(Ljava/lang/String;)V

    .line 215
    return-object p0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->addDescendingOrder(Ljava/lang/String;)V

    .line 227
    return-object p0
.end method

.method protected addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 384
    new-instance v0, Lcom/avos/avoscloud/QueryOperation;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVFriendshipQuery;->addWhereItem(Lcom/avos/avoscloud/QueryOperation;)Lcom/avos/avoscloud/AVFriendshipQuery;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/avos/avoscloud/AVFriendship;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v3

    .line 95
    iget-object v1, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->userId:Ljava/lang/String;

    new-instance v2, Lcom/avos/avoscloud/AVFriendshipQuery$2;

    invoke-direct {v2, p0, v0}, Lcom/avos/avoscloud/AVFriendshipQuery$2;-><init>(Lcom/avos/avoscloud/AVFriendshipQuery;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v4, v2}, Lcom/avos/avoscloud/AVFriendshipQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/callback/AVFriendshipCallback;)V

    .line 110
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {}, Lcom/avos/avoscloud/AVExceptionHolder;->remove()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    throw v0

    .line 113
    :cond_0
    aget-object v0, v0, v3

    check-cast v0, Lcom/avos/avoscloud/AVFriendship;

    return-object v0
.end method

.method public getInBackground(Lcom/avos/avoscloud/callback/AVFriendshipCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->userId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/callback/AVFriendshipCallback;)V

    .line 122
    return-void
.end method

.method protected getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/callback/AVFriendshipCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    const-string v0, "users/%s/followersAndFollowees"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 31
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    .line 32
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    new-instance v2, Lcom/avos/avoscloud/AVRequestParams;

    iget-object v3, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v3}, Lcom/avos/avoscloud/QueryConditions;->getParameters()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avos/avoscloud/AVRequestParams;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/avos/avoscloud/AVFriendshipQuery$1;

    invoke-direct {v5, p0, p3}, Lcom/avos/avoscloud/AVFriendshipQuery$1;-><init>(Lcom/avos/avoscloud/AVFriendshipQuery;Lcom/avos/avoscloud/callback/AVFriendshipCallback;)V

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/PaasClient;->getObject(Ljava/lang/String;Lcom/avos/avoscloud/AVRequestParams;ZLjava/util/Map;Lcom/avos/avoscloud/GenericObjectCallback;)V

    .line 91
    return-void
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getLimit()I

    move-result v0

    return v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->getSkip()I

    move-result v0

    return v0
.end method

.method public include(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->include(Ljava/lang/String;)V

    .line 238
    return-object p0
.end method

.method public limit(I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;->setLimit(I)Lcom/avos/avoscloud/AVFriendshipQuery;

    .line 150
    return-object p0
.end method

.method public order(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;->setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;

    .line 203
    return-object p0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByAscending(Ljava/lang/String;)V

    .line 260
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->orderByDescending(Ljava/lang/String;)V

    .line 271
    return-object p0
.end method

.method public selectKeys(Ljava/util/Collection;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->selectKeys(Ljava/util/Collection;)V

    .line 249
    return-object p0
.end method

.method public setLimit(I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setLimit(I)V

    .line 140
    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setOrder(Ljava/lang/String;)V

    .line 193
    return-object p0
.end method

.method public setSkip(I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setSkip(I)V

    .line 178
    return-object p0
.end method

.method public skip(I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVFriendshipQuery;->setSkip(I)Lcom/avos/avoscloud/AVFriendshipQuery;

    .line 160
    return-object p0
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVFriendshipQuery;
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
            ">;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    .line 284
    return-object p0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContains(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 326
    return-object p0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->whereDoesNotExist(Ljava/lang/String;)V

    .line 336
    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEndsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 363
    instance-of v0, p2, Lcom/avos/avoscloud/AVObject;

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "__eq"

    check-cast p2, Lcom/avos/avoscloud/AVObject;

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->mapFromPointerObject(Lcom/avos/avoscloud/AVObject;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVFriendshipQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;

    .line 368
    :goto_0
    return-object p0

    .line 366
    :cond_0
    const-string v0, "__eq"

    invoke-virtual {p0, p1, v0, p2}, Lcom/avos/avoscloud/AVFriendshipQuery;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;

    goto :goto_0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->whereExists(Ljava/lang/String;)V

    .line 394
    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    return-object p0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)V

    .line 433
    return-object p0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 446
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)V

    .line 487
    return-object p0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/AVFriendshipQuery;
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
            ">;)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    .line 500
    return-object p0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 513
    return-object p0
.end method

.method public whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereSizeEqual(Ljava/lang/String;I)V

    .line 310
    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereStartsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            ")",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)V

    .line 541
    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 555
    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 564
    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/AVFriendshipQuery;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVGeoPoint;",
            "D)",
            "Lcom/avos/avoscloud/AVFriendshipQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 578
    return-object p0
.end method
