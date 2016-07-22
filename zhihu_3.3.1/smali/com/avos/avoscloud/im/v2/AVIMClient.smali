.class public Lcom/avos/avoscloud/im/v2/AVIMClient;
.super Ljava/lang/Object;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;
    }
.end annotation


# static fields
.field static clientEventHandler:Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

.field static clients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/im/v2/AVIMClient;",
            ">;"
        }
    .end annotation
.end field

.field static factory:Lcom/avos/avoscloud/SignatureFactory;

.field static messageQueryCacheEnabled:Z


# instance fields
.field clientId:Ljava/lang/String;

.field conversationCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/im/v2/AVIMConversation;",
            ">;"
        }
    .end annotation
.end field

.field storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

.field tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    .line 549
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;-><init>(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    .line 96
    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    .line 97
    if-nez p2, :cond_0

    .line 98
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->getAllCachedConversations()Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 100
    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method protected static assembleConversationAttributes(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 515
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 516
    const-string v0, "name"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    const-string v0, "name"

    const-string v2, "name"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 521
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 522
    const-string v4, "attr."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 523
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 524
    :cond_2
    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 525
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 528
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 529
    const-string v0, "attr"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 532
    const/4 v0, 0x0

    .line 534
    :goto_1
    return-object v0

    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_1
.end method

.method protected static getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientEventHandler:Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    return-object v0
.end method

.method protected static getConversationWhereQuery(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .prologue
    .line 499
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 500
    const-string v0, "name"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const-string v0, "name"

    const-string v2, "name"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 505
    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation;->CONVERSATION_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "attr."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attr."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 511
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;
    .locals 2
    .parameter

    .prologue
    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "clientId cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 119
    if-eqz v0, :cond_2

    .line 124
    :cond_1
    :goto_0
    return-object v0

    .line 122
    :cond_2
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/im/v2/AVIMClient;-><init>(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 124
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-static {p0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    .line 137
    iput-object p1, v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->tag:Ljava/lang/String;

    .line 138
    return-object v0
.end method

.method public static setClientEventHandler(Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    sput-object p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientEventHandler:Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    .line 355
    return-void
.end method

.method public static setMessageQueryCacheEnable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 557
    sput-boolean p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->messageQueryCacheEnabled:Z

    .line 558
    return-void
.end method

.method public static setOfflineMessagePush(Z)V
    .locals 0
    .parameter

    .prologue
    .line 366
    invoke-static {p0}, Lcom/avos/avoscloud/AVSession;->setOfflineMessagePush(Z)V

    .line 367
    return-void
.end method

.method public static setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 5
    .parameter

    .prologue
    .line 64
    sput-object p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->factory:Lcom/avos/avoscloud/SignatureFactory;

    .line 66
    :try_start_0
    const-string v0, "com.avos.avoscloud.PushService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    const-string v1, "setSignatureFactory"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/avos/avoscloud/SignatureFactory;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 70
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "error during v2 IM Client signature factory setting"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setTimeoutInSecs(I)V
    .locals 0
    .parameter

    .prologue
    .line 87
    invoke-static {p0}, Lcom/avos/avoscloud/AVSession;->setTimeoutInSecs(I)V

    .line 88
    return-void
.end method

.method static validateNonEmptyConversationMembers(Ljava/util/List;)Lcom/avos/avoscloud/AVException;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avos/avoscloud/AVException;"
        }
    .end annotation

    .prologue
    .line 481
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVException;

    const/16 v1, 0x3e7

    const-string v2, "Conversation can\'t be created with empty members"

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    .line 490
    :goto_0
    return-object v0

    .line 486
    :cond_1
    :try_start_0
    const-string v0, "Null id in session id list."

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    const/4 v0, 0x0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 488
    new-instance v0, Lcom/avos/avoscloud/AVException;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected close()V
    .locals 2

    .prologue
    .line 393
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clients:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 395
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->storage:Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageStorage;->deleteClientData()V

    .line 396
    return-void
.end method

.method public close(Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 376
    .line 377
    if-eqz p1, :cond_0

    .line 378
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$4;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient$4;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V

    .line 386
    :goto_0
    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v1, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 387
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 222
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V

    .line 223
    return-void
.end method

.method public createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V

    .line 237
    return-void
.end method

.method public createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 256
    :try_start_0
    const-string v1, "Null id in session id list."

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 265
    if-eqz p3, :cond_0

    .line 266
    invoke-virtual {v4, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 268
    :cond_0
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 269
    const-string v1, "name"

    invoke-virtual {v4, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 277
    const-string v1, "conversation.member"

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string v1, "conversation.unique"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 280
    invoke-static {v4}, Lcom/avos/avoscloud/im/v2/AVIMClient;->assembleConversationAttributes(Ljava/util/Map;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_3

    .line 282
    const-string v2, "conversation.attributes"

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_3
    const-string v1, "conversation.transient"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_4
    if-eqz p6, :cond_5

    .line 289
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$3;

    move-object v1, p0

    move-object v2, p6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMClient$3;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;Ljava/util/List;Ljava/util/HashMap;Z)V

    .line 311
    :cond_5
    invoke-static {v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v1, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 313
    :cond_6
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v1

    .line 258
    if-eqz p6, :cond_6

    .line 259
    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object v1

    invoke-virtual {p6, v0, v1}, Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method

.method public createConversation(Ljava/util/List;Ljava/util/Map;Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/im/v2/AVIMClient;->createConversation(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLcom/avos/avoscloud/im/v2/callback/AVIMConversationCreatedCallback;)V

    .line 218
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 539
    if-nez p1, :cond_1

    .line 546
    :cond_0
    :goto_0
    return v0

    .line 542
    :cond_1
    check-cast p1, Lcom/avos/avoscloud/im/v2/AVIMClient;

    .line 543
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 544
    iget-object v1, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    iget-object v1, p1, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientStatus(Lcom/avos/avoscloud/im/v2/callback/AVIMClientStatusCallback;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 440
    .line 441
    if-eqz p1, :cond_0

    .line 442
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$5;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient$5;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V

    .line 456
    :goto_0
    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_STATUS:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v1, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 457
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;
    .locals 2
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 324
    if-eqz v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-object v0

    .line 327
    :cond_1
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    invoke-direct {v1, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMConversation;

    .line 330
    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public getOnlineClients(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMOnlineClientsCallback;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/avos/avoscloud/im/v2/callback/AVIMOnlineClientsCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 176
    const-string v0, "client.oneline"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    .line 180
    if-eqz p2, :cond_0

    .line 181
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$2;

    invoke-direct {v0, p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMClient$2;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V

    .line 194
    :cond_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v1, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 196
    return-void
.end method

.method public getQuery()Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/im/v2/AVIMConversationQuery;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    return-object v0
.end method

.method public getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient;->factory:Lcom/avos/avoscloud/SignatureFactory;

    return-object v0
.end method

.method public open(Lcom/avos/avoscloud/im/v2/callback/AVIMClientCallback;)V
    .locals 3
    .parameter

    .prologue
    .line 148
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 149
    const-string v0, "PARAM_SESSION_PEERIDS"

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const-string v0, "PARAM_SESSION_TAG"

    iget-object v2, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->tag:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 155
    if-eqz p1, :cond_1

    .line 156
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$1;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/im/v2/AVIMClient$1;-><init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V

    .line 163
    :cond_1
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {p0, v1, v0, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 164
    return-void
.end method

.method protected removeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V
    .locals 2
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->conversationCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMConversation;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    return-void
.end method

.method protected sendClientCMDToPushService(Ljava/lang/String;Landroid/content/BroadcastReceiver;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v0

    .line 464
    if-eqz p2, :cond_0

    .line 465
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/j;->a(Landroid/content/Context;)Landroid/support/v4/content/j;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getOperation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/content/j;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 468
    :cond_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    const-string v2, "com.avoscloud.im.v2.action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 471
    const-string v2, "conversation.data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    :cond_1
    const-string v2, "conversation.client"

    iget-object v3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v2, "conversation.requestId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    const-string v0, "conversation.operation"

    invoke-virtual {p3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 478
    return-void
.end method
