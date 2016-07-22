.class public Lcom/avos/avoscloud/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/avos/avoscloud/Session;


# static fields
.field static cachedSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/SessionManager;",
            ">;"
        }
    .end annotation
.end field

.field static final peerQueryListeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/avos/avoscloud/OnlinePeerQueryListener;",
            ">;"
        }
    .end annotation
.end field

.field static final signatureFactoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/SignatureFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allPeersId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field onlinePeersId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selfId:Ljava/lang/String;

.field signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

.field tag:Ljava/lang/String;

.field v2Session:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/SessionManager;->signatureFactoryMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    .line 39
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    const-class v2, Ljava/util/List;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AV_SESSION_PREFERENCE_PEERIDS_KEY"

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    .line 46
    if-eqz v0, :cond_1

    .line 47
    iget-object v1, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    const-class v2, Ljava/util/List;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/SessionManager;->signatureFactoryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/SignatureFactory;

    iput-object v0, p0, Lcom/avos/avoscloud/SessionManager;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    .line 50
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/SessionManager;
    .locals 2
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/SessionManager;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/SessionManager;-><init>(Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/SessionManager;->cachedSessions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/SessionManager;

    return-object v0
.end method

.method private sendErrorBroadcast(Ljava/lang/Exception;)V
    .locals 4
    .parameter

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 344
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 347
    const-string v2, "AV_SESSION_INTENT_THROWABLE_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 348
    const-string v2, "AV_APPLICATION_ID"

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v2, "AV_SESSION_INTENT_STATUS_KEY"

    const/16 v3, 0x4e28

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 353
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 354
    return-void
.end method

.method private validateNullablePeerIds(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 358
    :try_start_0
    const-string v0, "Null id in session id list."

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 361
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 362
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validatePeerIds(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 369
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    :cond_0
    const-string v1, "empty peersId Exception"

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 371
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "empty peersId Exception"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 382
    :goto_0
    return v0

    .line 375
    :cond_1
    :try_start_0
    const-string v1, "Null id in session id list."

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    const/4 v0, 0x1

    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    .line 377
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 378
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v1, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v2, 0x2715

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 138
    return-void
.end method

.method public getAllPeers()Ljava/util/List;
    .locals 2
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
    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 319
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGroup()Lcom/avos/avoscloud/Group;
    .locals 2

    .prologue
    .line 392
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVGroup;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVGroup;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;
    .locals 1
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVGroup;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVGroup;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .locals 1

    .prologue
    .line 407
    new-instance v0, Lcom/avos/avoscloud/AVHistoryMessageQuery;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVHistoryMessageQuery;-><init>()V

    return-object v0
.end method

.method public getOnlinePeers()Ljava/util/List;
    .locals 2
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
    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    iget-object v1, p0, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelfPeerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureFactory()Lcom/avos/avoscloud/SignatureFactory;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    return-object v0
.end method

.method public isOnline(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->isSessionOpen(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWatching(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public open(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/SessionManager;->open(Ljava/util/List;)V

    .line 68
    return-void
.end method

.method public open(Ljava/util/List;)V
    .locals 5
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
    .line 72
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/SessionManager;->validateNullablePeerIds(Ljava/util/List;)Z

    move-result v0

    .line 73
    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 78
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 80
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 81
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "too many peers to watch.Maximum is 100"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v1, "too many peers to watch.Maximum is 100"

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 93
    const-string v0, "PARAM_SESSION_PEERIDS"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v1

    const-string v3, "open"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 100
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open packet lenght is :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 107
    :cond_2
    const/16 v1, 0x1388

    if-le v0, v1, :cond_4

    .line 108
    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 110
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 111
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/avos/avoscloud/SessionManager;->open(Ljava/lang/String;Ljava/util/List;)V

    .line 115
    invoke-virtual {p0, v1}, Lcom/avos/avoscloud/SessionManager;->watchPeers(Ljava/util/List;)Z

    goto/16 :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 118
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your peerId is too long for session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 122
    :cond_4
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v2, 0x2714

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public queryOnlinePeers(Ljava/util/List;Lcom/avos/avoscloud/OnlinePeerQueryListener;)V
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
            "Lcom/avos/avoscloud/OnlinePeerQueryListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 284
    if-nez p2, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v1, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v1, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v2, 0x2716

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 294
    sget-object v0, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/AVMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->validatePeerIds(Ljava/util/List;)Z

    move-result v0

    .line 164
    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    const-string v0, "msg is empty"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can\'t send empty msg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getToPeerIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    if-eqz v0, :cond_2

    .line 174
    const-string v0, "Message receipt only support for one receiver message"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Message receipt only support for one receiver message"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0

    .line 180
    :cond_2
    iget-boolean v0, p1, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/avos/avoscloud/AVMessage;->isTransient:Z

    if-eqz v0, :cond_3

    .line 181
    const-string v0, "Message receipt only support for non-transient message"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Message receipt only support for non-transient message"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0

    .line 187
    :cond_3
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method protected setAllPeers(Ljava/util/List;)V
    .locals 1
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
    .line 308
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 310
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 312
    :cond_0
    return-void
.end method

.method public setMessageTimeout(I)V
    .locals 3
    .parameter

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v2, 0x2713

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 148
    return-void
.end method

.method public setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 1
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/avos/avoscloud/SessionManager;->signatureFactory:Lcom/avos/avoscloud/SignatureFactory;

    .line 332
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 333
    invoke-static {p1}, Lcom/avos/avoscloud/AVSession;->setStaticSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V

    .line 335
    :cond_0
    return-void
.end method

.method public unwatchPeers(Ljava/util/List;)V
    .locals 3
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
    .line 263
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/SessionManager;->validatePeerIds(Ljava/util/List;)Z

    move-result v0

    .line 264
    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 267
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    const-string v1, "com.avoscloud.session.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v1, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v2, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v1, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v2, 0x2712

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 273
    iget-object v0, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public watchPeers(Ljava/util/List;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/SessionManager;->validatePeerIds(Ljava/util/List;)Z

    move-result v0

    .line 203
    if-nez v0, :cond_0

    .line 257
    :goto_0
    return v2

    .line 206
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 207
    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 209
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    .line 210
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "too many peers to watch.Maximum is 100"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 212
    const-string v1, "too many peers to watch.Maximum is 100"

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0

    .line 216
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 217
    const/4 v0, 0x0

    .line 218
    const-string v3, "PARAM_SESSION_PEERIDS"

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 221
    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/avos/avoscloud/SessionManager;->getAllPeers()Ljava/util/List;

    move-result-object v5

    const-string v6, "add"

    invoke-static {v3, v5, v6, v0}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 228
    :try_start_0
    const-string v5, "utf-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "watch packet lenght is :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 236
    :cond_2
    const/16 v3, 0x1388

    if-le v0, v3, :cond_5

    .line 238
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 239
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 240
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-interface {p1, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/SessionManager;->watchPeers(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/SessionManager;->watchPeers(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    move v2, v0

    goto/16 :goto_0

    .line 229
    :catch_0
    move-exception v3

    .line 230
    invoke-direct {p0, v3}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 244
    goto :goto_2

    .line 246
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your peerId is too long for session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, v0}, Lcom/avos/avoscloud/SessionManager;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 251
    :cond_5
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v3, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    const-string v2, "com.avoscloud.session.action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v2, "AV_SESSION_INTENT_DATA_KEY"

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    iget-object v3, p0, Lcom/avos/avoscloud/SessionManager;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v2, "AV_SESSION_INTENT_OPERATION_KEY"

    const/16 v3, 0x2711

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v2, v1

    .line 257
    goto/16 :goto_0
.end method
