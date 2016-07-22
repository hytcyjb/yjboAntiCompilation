.class public Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
.super Ljava/lang/Object;
.source "AVIMConversationQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$3;,
        Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;
    }
.end annotation


# static fields
.field private static final MAX_CONVERSATION_CACHE_TIME:J = 0x36ee80L


# instance fields
.field private client:Lcom/avos/avoscloud/im/v2/AVIMClient;

.field conditions:Lcom/avos/avoscloud/QueryConditions;

.field policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;


# direct methods
.method protected constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/avos/avoscloud/AVQuery$CachePolicy;->CACHE_ELSE_NETWORK:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 43
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 44
    new-instance v0, Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {v0}, Lcom/avos/avoscloud/QueryConditions;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->queryFromNetwork(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->parseQueryResult(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->cacheQueryResult(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private cacheQueryResult(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 509
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 511
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 512
    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    goto :goto_0

    .line 515
    :cond_0
    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->insertConversations(Ljava/util/List;)V

    .line 518
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v0

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/avos/avoscloud/AVCacheManager;->save(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 519
    return-void
.end method

.method private getAttributeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attr."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getColumnKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 415
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-object p1

    .line 417
    :cond_1
    const-string v0, "attr."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getAttributeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private parseQueryResult(Lcom/alibaba/fastjson/JSONArray;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 523
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 524
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 525
    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-static {v3, v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->parseFromJson(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/alibaba/fastjson/JSONObject;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v2

    .line 526
    if-eqz v2, :cond_0

    .line 527
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v3, v3, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_1
    return-object v1
.end method

.method private queryFromNetwork(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 459
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    if-eqz p1, :cond_0

    .line 461
    new-instance v1, Lcom/avos/avoscloud/AVException;

    const/16 v2, 0x64

    const-string v3, "Connection lost"

    invoke-direct {v1, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    if-eqz p1, :cond_2

    .line 469
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$2;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Ljava/lang/String;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V

    .line 504
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1, p2, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0
.end method


# virtual methods
.method public containsMembers(Ljava/util/List;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    const-string v1, "m"

    const-string v2, "$all"

    invoke-virtual {v0, v1, v2, p1}, Lcom/avos/avoscloud/QueryConditions;->addWhereItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    return-object p0
.end method

.method public findInBackground(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V
    .locals 10
    .parameter

    .prologue
    const-wide/32 v6, 0x36ee80

    const/4 v8, 0x0

    .line 425
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0}, Lcom/avos/avoscloud/QueryConditions;->assembleParameters()Ljava/util/Map;

    move-result-object v0

    .line 426
    sget-object v1, Lcom/avos/avoscloud/ObjectValueFilter;->instance:Lcom/avos/avoscloud/ObjectValueFilter;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v5

    .line 427
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$3;->$SwitchMap$com$avos$avoscloud$AVQuery$CachePolicy:[I

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVQuery$CachePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 455
    :goto_0
    return-void

    .line 430
    :pswitch_0
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v9

    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$1;

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-object v1, p0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V

    move-object v4, v9

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 439
    :pswitch_1
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0, p1, v5}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->queryFromNetwork(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v4

    new-instance v9, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {v9, v0, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V

    invoke-virtual/range {v4 .. v9}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 447
    :pswitch_2
    invoke-static {}, Lcom/avos/avoscloud/AVCacheManager;->sharedInstance()Lcom/avos/avoscloud/AVCacheManager;

    move-result-object v4

    new-instance v9, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;

    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {v9, v0, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery$CacheConversationQueryCallback;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;)V

    invoke-virtual/range {v4 .. v9}, Lcom/avos/avoscloud/AVCacheManager;->get(Ljava/lang/String;JLjava/lang/String;Lcom/avos/avoscloud/GenericObjectCallback;)V

    goto :goto_0

    .line 452
    :pswitch_3
    invoke-direct {p0, p1, v5}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->queryFromNetwork(Lcom/avos/avoscloud/im/v2/callback/AVIMConversationQueryCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public limit(I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1
    .parameter

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->setLimit(I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    move-result-object v0

    return-object v0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/QueryConditions;->orderByAscending(Ljava/lang/String;)V

    .line 383
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/QueryConditions;->orderByDescending(Ljava/lang/String;)V

    .line 395
    return-object p0
.end method

.method public setLimit(I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setLimit(I)V

    .line 341
    return-object p0
.end method

.method public setQueryPolicy(Lcom/avos/avoscloud/AVQuery$CachePolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->policy:Lcom/avos/avoscloud/AVQuery$CachePolicy;

    .line 579
    return-void
.end method

.method public setSkip(I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/QueryConditions;->setSkip(I)V

    .line 362
    return-object p0
.end method

.method public skip(I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1
    .parameter

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->setSkip(I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContains(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 197
    return-object p0
.end method

.method public whereContainsIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    .line 171
    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEndsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    return-object p0
.end method

.method public whereGreaterThanOrEqualsTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThan(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-object p0
.end method

.method public whereLessThanOrEqualsTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNear(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;)V

    .line 272
    return-object p0
.end method

.method public whereNotContainsIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)V

    .line 184
    return-object p0
.end method

.method public whereNotEqualsTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    return-object p0
.end method

.method public whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereSizeEqual(Ljava/lang/String;I)V

    .line 407
    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/QueryConditions;->whereStartsWith(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/avos/avoscloud/QueryConditions;->whereWithinGeoBox(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;Lcom/avos/avoscloud/AVGeoPoint;)V

    .line 286
    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinKilometers(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 302
    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinMiles(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 316
    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->conditions:Lcom/avos/avoscloud/QueryConditions;

    invoke-direct {p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->getColumnKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/avos/avoscloud/QueryConditions;->whereWithinRadians(Ljava/lang/String;Lcom/avos/avoscloud/AVGeoPoint;D)V

    .line 330
    return-object p0
.end method

.method public withMembers(Ljava/util/List;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->withMembers(Ljava/util/List;Z)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    move-result-object v0

    return-object v0
.end method

.method public withMembers(Ljava/util/List;Z)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 66
    if-eqz p2, :cond_0

    .line 67
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->client:Lcom/avos/avoscloud/im/v2/AVIMClient;

    iget-object v1, v1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->containsMembers(Ljava/util/List;)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    .line 70
    const-string v1, "m"

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;->whereSizeEqual(Ljava/lang/String;I)Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    .line 71
    return-object p0
.end method
