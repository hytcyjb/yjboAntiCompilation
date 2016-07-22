.class Lcom/avos/avoscloud/AVPushConnectionManager;
.super Ljava/lang/Object;
.source "AVPushConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AVPushConnectionManager"

.field private static final PING_PONG_INTERVAL:J = 0xea60L

.field private static final PING_THRESHOLD:J = 0x2bf20L

.field private static final PING_TIMEOUT_CODE:I = 0xbb8

.field public static final PUSH_INTENT_KEY:Ljava/lang/String; = "com.avoscloud.push"

.field private static final PUSH_MESSAGE_DEPOT:Ljava/lang/String; = "com.avos.push.message"

.field protected static final PUSH_PING_PONG_ACTION:Ljava/lang/String; = "com.avoscloud.ping.action"

.field private static instance:Lcom/avos/avoscloud/AVPushConnectionManager;

.field private static final peerIdEnabledSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/AVSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field connectionCallback:Lcom/avos/avoscloud/AVCallback;

.field private final ctx:Landroid/content/Context;

.field private final depot:Lcom/avos/avospush/session/StaleMessageDepot;

.field private isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile lastPongTimestamps:J

.field private pingAlarmIntent:Landroid/content/Intent;

.field pingPongTask:Ljava/lang/Runnable;

.field private final pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

.field private final retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

.field sendingPing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->instance:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->lastPongTimestamps:J

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 543
    new-instance v0, Lcom/avos/avoscloud/AVPushConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVPushConnectionManager$2;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingPongTask:Ljava/lang/Runnable;

    .line 559
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->sendingPing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    .line 77
    new-instance v0, Lcom/avos/avospush/session/StaleMessageDepot;

    const-string v1, "com.avos.push.message"

    invoke-direct {v0, v1}, Lcom/avos/avospush/session/StaleMessageDepot;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    .line 78
    new-instance v0, Lcom/avos/avoscloud/PushConnectionRetryController;

    new-instance v1, Lcom/avos/avoscloud/AVPushConnectionManager$1;

    invoke-direct {v1, p0, p3, p4}, Lcom/avos/avoscloud/AVPushConnectionManager$1;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, p4, v1}, Lcom/avos/avoscloud/PushConnectionRetryController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    .line 98
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->initSessionsIfExists()V

    .line 100
    :try_start_0
    const-string v0, "com.avos.avoscloud.AVGcmManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101
    const-string v1, "getGcmTokenInBackground"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 102
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v0, "statistics library not started since not included"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVPushConnectionManager;->createNewWebSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/AVPushConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/AVPushConnectionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->triggerPingTask()V

    return-void
.end method

.method static synthetic access$300()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/PushConnectionRetryController;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVPushConnectionManager;->processPushMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/avos/avoscloud/AVPushConnectionManager;)Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    return-object v0
.end method

.method static synthetic access$702(Lcom/avos/avoscloud/AVPushConnectionManager;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->lastPongTimestamps:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/avos/avoscloud/AVPushConnectionManager;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$802(Lcom/avos/avoscloud/AVPushConnectionManager;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingAlarmIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$900(Lcom/avos/avoscloud/AVPushConnectionManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 455
    if-eqz p3, :cond_0

    .line 456
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    :cond_0
    const-string v1, "com.avoscloud.push"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 459
    const-string v1, "com.avos.avoscloud.Channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v1, "com.avoscloud.Channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string v1, "com.parse.Channel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const-string v1, "com.avos.avoscloud.Data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v1, "com.avoscloud.Data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v1, "com.parse.Data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    return-object v0
.end method

.method private declared-synchronized createNewWebSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->lastPongTimestamps:J

    .line 204
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->isOnlyPushCount()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    new-instance v0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const-string v2, "lc.json.2"

    invoke-direct {v0, p0, v1, v2}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/net/URI;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->setAppId(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->setInstallationId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    const-string v0, "AVPushConnectionManager"

    const-string v1, "About to connect to server."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 207
    :cond_3
    :try_start_2
    new-instance v0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/net/URI;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    :try_start_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 220
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    invoke-virtual {v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->onSocketFailure()V

    .line 221
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    invoke-virtual {v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect()V

    .line 222
    const-string v1, "AVPushConnectionManager"

    const-string v2, "Create socket client failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private getAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 484
    const-string v0, "action"

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 480
    const-string v0, "_channel"

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExpiration(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter

    .prologue
    .line 488
    const-string v0, ""

    .line 490
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 491
    const-string v2, "_expiration_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 497
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    const/4 v0, 0x0

    .line 501
    :goto_1
    return-object v0

    .line 500
    :cond_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_1

    .line 492
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVPushConnectionManager;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const-class v1, Lcom/avos/avoscloud/AVPushConnectionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->instance:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/avos/avoscloud/AVPushConnectionManager;-><init>(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->instance:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 126
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->instance:Lcom/avos/avoscloud/AVPushConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initSessionsIfExists()V
    .locals 6

    .prologue
    .line 109
    invoke-static {}, Lcom/avos/avoscloud/AVSessionCacheHelper;->getAllSession()Ljava/util/List;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/SessionManager;

    .line 111
    invoke-virtual {v0}, Lcom/avos/avoscloud/SessionManager;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v3

    .line 112
    iget-object v4, v3, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    iget-boolean v4, v0, Lcom/avos/avoscloud/SessionManager;->v2Session:Z

    iput-boolean v4, v3, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    .line 114
    iget-object v0, v0, Lcom/avos/avoscloud/SessionManager;->tag:Ljava/lang/String;

    iput-object v0, v3, Lcom/avos/avoscloud/AVSession;->tag:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sessions recovered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private processPushMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    :try_start_0
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v1, v0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->containsDefaultPushCallback(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 522
    :cond_0
    :goto_0
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getExpiration(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_2

    .line 524
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    const-string v0, "AVPushConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message expired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_1
    :goto_1
    return-void

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    invoke-virtual {v0, p3}, Lcom/avos/avospush/session/StaleMessageDepot;->putStableMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_3

    .line 533
    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 538
    :catch_0
    move-exception v0

    .line 539
    const-string v1, "AVPushConnectionManager"

    const-string v2, "Process notification failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 535
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    move-object p1, v0

    goto :goto_0
.end method

.method private sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-direct {p0, p1, p2, p3}, Lcom/avos/avoscloud/AVPushConnectionManager;->buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 470
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    const-string v1, "AVPushConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 474
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    const-string v0, "AVPushConnectionManager"

    const-string v1, "sent broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_1
    return-void
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->buildUpdateIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v1, p1, p2, v0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->sendNotification(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 451
    return-void
.end method

.method private triggerPingTask()V
    .locals 4

    .prologue
    .line 555
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingPongTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 556
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pingPongTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 557
    return-void
.end method


# virtual methods
.method protected checkPong()V
    .locals 8

    .prologue
    .line 586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 587
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check pong resp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->lastPongTimestamps:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->lastPongTimestamps:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->isConnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->lastPongTimestamps:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    invoke-virtual {v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->onSocketFailure()V

    .line 594
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    const/16 v0, 0xbb8

    const-string v1, "No response for ping"

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection(ILjava/lang/String;)V

    .line 600
    :cond_1
    :goto_0
    return-void

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect(I)V

    goto :goto_0
.end method

.method public cleanupSocketConnection()V
    .locals 2

    .prologue
    .line 186
    const/16 v0, 0x3e8

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection(ILjava/lang/String;)V

    .line 187
    return-void
.end method

.method public cleanupSocketConnection(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0, p1, p2}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->close(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "AVPushConnectionManager"

    const-string v2, "Close socket client failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forceTriggerReconnection()V
    .locals 2

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 604
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect(I)V

    .line 605
    return-void
.end method

.method public getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 158
    :goto_0
    if-eqz v0, :cond_2

    .line 159
    new-instance v0, Lcom/avos/avoscloud/AVSession;

    new-instance v3, Lcom/avos/avoscloud/AVDefaultSessionListener;

    invoke-direct {v3, p0}, Lcom/avos/avoscloud/AVDefaultSessionListener;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;)V

    invoke-direct {v0, p1, v3}, Lcom/avos/avoscloud/AVSession;-><init>(Ljava/lang/String;Lcom/avos/avoscloud/AVInternalSessionListener;)V

    .line 160
    sget-object v3, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-interface {v3, v1}, Lcom/avos/avospush/push/AVWebSocketListener;->onListenerAdded(Z)V

    .line 168
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0

    :cond_1
    move v1, v2

    .line 161
    goto :goto_1

    .line 164
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public initConnection()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->initConnection(Lcom/avos/avoscloud/AVCallback;)V

    .line 131
    return-void
.end method

.method public initConnection(Lcom/avos/avoscloud/AVCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "push connection is open"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    if-eqz p1, :cond_1

    .line 140
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionCallback:Lcom/avos/avoscloud/AVCallback;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->retryController:Lcom/avos/avoscloud/PushConnectionRetryController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect(I)V

    goto :goto_0
.end method

.method public isConnectedToPushServer()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method processGcmMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 505
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v0, p2}, Lcom/avos/avospush/push/AVPushServiceAppManager;->containsDefaultPushCallback(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    :cond_0
    if-eqz p3, :cond_2

    .line 508
    invoke-direct {p0, p1, p4, p3}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_1
    :goto_0
    return-void

    .line 510
    :cond_2
    invoke-direct {p0, p1, p4}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 173
    sget-object v0, Lcom/avos/avoscloud/AVPushConnectionManager;->peerIdEnabledSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVSession;

    .line 174
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getWebSocketListener()Lcom/avos/avospush/push/AVWebSocketListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/avos/avospush/push/AVWebSocketListener;->onListenerRemoved()V

    .line 177
    :cond_0
    return-void
.end method

.method public sendData(Lcom/avos/avospush/session/CommandPacket;)V
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->send(Lcom/avos/avospush/session/CommandPacket;)V

    .line 183
    :cond_0
    return-void
.end method

.method protected sendPing()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 562
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->sendingPing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 564
    iget-wide v6, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->lastPongTimestamps:J

    sub-long/2addr v4, v6

    .line 567
    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    const-wide/32 v6, 0x2bf20

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    move v0, v1

    .line 570
    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 571
    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;

    sget-object v3, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PING:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    invoke-direct {v0, v3}, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;-><init>(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;)V

    .line 572
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;->setFin(Z)V

    .line 573
    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->socketClient:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->sendFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V

    .line 574
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "ping"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 580
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->triggerPingTask()V

    .line 581
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager;->sendingPing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 583
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 567
    goto :goto_0

    .line 578
    :cond_3
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->checkPong()V

    goto :goto_1
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->cleanupSocketConnection()V

    .line 151
    return-void
.end method
