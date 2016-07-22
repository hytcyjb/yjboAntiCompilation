.class public Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lcom/didi/ddrive/net/tcp/network/NetworkObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;
    }
.end annotation


# static fields
.field public static final BASE_INTERVAL:J = 0x1388L

.field public static final MAX_RETRY_TIME_LIMIT:I = 0x3c

.field public static final NOTIFY_CREATE:I = 0x1

.field public static final NOTIFY_RECREATE:I = 0x2

.field private static final POOL_SIZE:I = 0x2

.field public static final RESET_THREHOLD:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "ConnectionManager"

.field private static sExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static sInstance:Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;


# instance fields
.field private mConfigProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/ddrive/net/tcp/tcp/ConfigProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/ddrive/net/tcp/tcp/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMessageReceiver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageSender:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/ddrive/net/tcp/tcp/MessageSender;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const/4 v0, 0x2

    new-instance v1, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$1;

    invoke-direct {v1}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->sExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConnectionPool:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mListeners:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageReceiver:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConfigProviders:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageSender:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->sInstance:Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;

    invoke-direct {v0}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->sInstance:Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;

    .line 71
    :cond_0
    sget-object v0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->sInstance:Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private notifyLifeCycleListener(Lcom/didi/ddrive/net/tcp/tcp/Connection;I)V
    .locals 7
    .parameter "conn"
    .parameter "type"

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    :cond_0
    return-void

    .line 109
    :cond_1
    iget-object v4, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mListeners:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mListeners:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 111
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;>;"
    if-eqz v2, :cond_0

    .line 114
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;

    .line 115
    .local v3, listener:Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 117
    :pswitch_0
    iget-object v4, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageSender:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getSender()Lcom/didi/ddrive/net/tcp/tcp/MessageSender;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;->onConnectionCreate(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 261
    iget-object v3, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageSender:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 263
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConnectionPool:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/tcp/tcp/Connection;

    .line 264
    .local v0, connection:Lcom/didi/ddrive/net/tcp/tcp/Connection;
    invoke-virtual {v0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->disconnect()V

    goto :goto_0

    .line 270
    .end local v0           #connection:Lcom/didi/ddrive/net/tcp/tcp/Connection;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 266
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConnectionPool:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 267
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConfigProviders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 268
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 269
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageReceiver:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 270
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    return-void
.end method

.method public destroy(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 273
    iget-object v3, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 274
    :try_start_0
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageSender:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConnectionPool:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/tcp/tcp/Connection;

    .line 276
    .local v0, connection:Lcom/didi/ddrive/net/tcp/tcp/Connection;
    invoke-virtual {v0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->disconnect()V

    goto :goto_0

    .line 284
    .end local v0           #connection:Lcom/didi/ddrive/net/tcp/tcp/Connection;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 280
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConnectionPool:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConfigProviders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageReceiver:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConnectionPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConnectionPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/tcp/tcp/Connection;

    invoke-virtual {v0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->disconnect()V

    .line 290
    :cond_0
    return-void
.end method

.method public doConnect(Lcom/didi/ddrive/net/tcp/tcp/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 236
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->doConnectionDelayed(Lcom/didi/ddrive/net/tcp/tcp/Connection;J)V

    .line 237
    return-void
.end method

.method public doConnectionDelayed(Lcom/didi/ddrive/net/tcp/tcp/Connection;J)V
    .locals 4
    .parameter "connection"
    .parameter "delay"

    .prologue
    .line 240
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConfigProviders:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConfigProviders:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/net/tcp/tcp/ConfigProvider;

    invoke-interface {v1}, Lcom/didi/ddrive/net/tcp/tcp/ConfigProvider;->getConfig()Lcom/didi/ddrive/net/tcp/tcp/Config;

    move-result-object v0

    .line 242
    .local v0, config:Lcom/didi/ddrive/net/tcp/tcp/Config;
    invoke-virtual {p1, v0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->setConfig(Lcom/didi/ddrive/net/tcp/tcp/Config;)V

    .line 243
    sget-object v1, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->sExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p2, p3, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 247
    .end local v0           #config:Lcom/didi/ddrive/net/tcp/tcp/Config;
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v1, "ConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No config provider found for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMessageReceiver(Ljava/lang/String;)Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver;
    .locals 1
    .parameter "tag"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageReceiver:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageReceiver:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver;

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMessageSender(Ljava/lang/String;)Lcom/didi/ddrive/net/tcp/tcp/MessageSender;
    .locals 1
    .parameter "tag"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageSender:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/tcp/tcp/MessageSender;

    return-object v0
.end method

.method public newConnection(Ljava/lang/String;)Lcom/didi/ddrive/net/tcp/tcp/Connection;
    .locals 5
    .parameter "tag"

    .prologue
    .line 149
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 150
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->verifyTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "ConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection already has been scheduled. \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    monitor-exit v2

    .line 160
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->destroy(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionImpl;

    invoke-direct {v0}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionImpl;-><init>()V

    .line 158
    .local v0, connection:Lcom/didi/ddrive/net/tcp/tcp/Connection;
    invoke-virtual {v0, p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->setTag(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConnectionPool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    monitor-exit v2

    goto :goto_0

    .line 161
    .end local v0           #connection:Lcom/didi/ddrive/net/tcp/tcp/Connection;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCreated(Lcom/didi/ddrive/net/tcp/tcp/Connection;)V
    .locals 1
    .parameter "conn"

    .prologue
    .line 250
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->notifyLifeCycleListener(Lcom/didi/ddrive/net/tcp/tcp/Connection;I)V

    .line 251
    return-void
.end method

.method public onNetworkChanged(Z)V
    .locals 6
    .parameter "connected"

    .prologue
    .line 127
    iget-object v3, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 128
    :try_start_0
    iput-boolean p1, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mNetworkConnected:Z

    .line 129
    const-string v2, "ConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network changed : connected ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-boolean v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mNetworkConnected:Z

    if-eqz v2, :cond_1

    .line 131
    const-string v2, "ConnectionManager"

    const-string v4, "Check pending connections."

    invoke-static {v2, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConnectionPool:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/tcp/tcp/Connection;

    .line 133
    .local v0, conn:Lcom/didi/ddrive/net/tcp/tcp/Connection;
    invoke-virtual {v0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    invoke-virtual {p0, v0}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->doConnect(Lcom/didi/ddrive/net/tcp/tcp/Connection;)V

    .line 135
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->notifyLifeCycleListener(Lcom/didi/ddrive/net/tcp/tcp/Connection;I)V

    goto :goto_0

    .line 139
    .end local v0           #conn:Lcom/didi/ddrive/net/tcp/tcp/Connection;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    return-void
.end method

.method public recreate(Lcom/didi/ddrive/net/tcp/tcp/Connection;)V
    .locals 11
    .parameter "conn"

    .prologue
    .line 80
    iget-object v6, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 82
    if-eqz p1, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->disconnect()V

    .line 87
    :cond_0
    iget-boolean v5, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mNetworkConnected:Z

    if-eqz v5, :cond_2

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 89
    .local v0, current:J
    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getLastTryTimeStamp()J

    move-result-wide v7

    sub-long v7, v0, v7

    const-wide/16 v9, 0x4e20

    cmp-long v5, v7, v9

    if-lez v5, :cond_3

    .line 90
    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->resetRetryTimes()V

    .line 97
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getRetryTimes()I

    move-result v5

    int-to-long v7, v5

    const-wide/16 v9, 0x1388

    mul-long v2, v7, v9

    .line 98
    .local v2, delay:J
    const-string v5, "ConnectionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "schedule recreate after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1, v2, v3}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->doConnectionDelayed(Lcom/didi/ddrive/net/tcp/tcp/Connection;J)V

    .line 101
    .end local v0           #current:J
    .end local v2           #delay:J
    :cond_2
    monitor-exit v6

    .line 102
    return-void

    .line 92
    .restart local v0       #current:J
    :cond_3
    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->getRetryTimes()I

    move-result v4

    .line 93
    .local v4, retryTimes:I
    const/16 v5, 0x3c

    if-ge v4, v5, :cond_1

    .line 94
    invoke-virtual {p1}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->increaseRetryTimes()V

    goto :goto_0

    .line 101
    .end local v0           #current:J
    .end local v4           #retryTimes:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public registerConfigProvider(Lcom/didi/ddrive/net/tcp/tcp/ConfigProvider;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConfigProviders:Ljava/util/Map;

    invoke-interface {p1}, Lcom/didi/ddrive/net/tcp/tcp/ConfigProvider;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConfigProviders:Ljava/util/Map;

    invoke-interface {p1}, Lcom/didi/ddrive/net/tcp/tcp/ConfigProvider;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    return-void
.end method

.method public registerLifeCycleListener(Ljava/lang/String;Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;)V
    .locals 2
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;>;"
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;>;"
    check-cast v0, Ljava/util/List;

    .line 197
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;>;"
    :cond_0
    if-nez v0, :cond_1

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;>;"
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_2
    return-void
.end method

.method public registerMessageReceiver(Ljava/lang/String;Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver;)V
    .locals 1
    .parameter "tag"
    .parameter "handler"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageReceiver:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageReceiver:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_0
    return-void
.end method

.method public unregisterConfigProvider(Lcom/didi/ddrive/net/tcp/tcp/ConfigProvider;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConfigProviders:Ljava/util/Map;

    invoke-interface {p1}, Lcom/didi/ddrive/net/tcp/tcp/ConfigProvider;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConfigProviders:Ljava/util/Map;

    invoke-interface {p1}, Lcom/didi/ddrive/net/tcp/tcp/ConfigProvider;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_0
    return-void
.end method

.method public unregisterLifeCycleListener(Ljava/lang/String;Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;)V
    .locals 2
    .parameter "key"
    .parameter "listener"

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;>;"
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;>;"
    check-cast v0, Ljava/util/List;

    .line 182
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;>;"
    :cond_0
    if-nez v0, :cond_1

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;>;"
    iget-object v1, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    :cond_2
    return-void
.end method

.method public unregisterResponseHandler(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageReceiver:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageReceiver:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    return-void
.end method

.method public verifyTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConnectionPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageReceiver:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mConfigProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->mMessageSender:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
