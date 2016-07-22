.class public Lcom/avos/avoscloud/PushConnectionRetryController;
.super Ljava/lang/Object;
.source "PushConnectionRetryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;
    }
.end annotation


# static fields
.field public static final CODE_CONNECTION_INIT:I = 0x0

.field public static final CODE_MASTER_SERVER:I = 0x1

.field public static final CODE_ROUTER_ERROR:I = 0xf

.field public static final CODE_SECONDARY_SERVER:I = 0x2

.field static final MAX_RETRY_TIMES:I = 0xa

.field static final RETRY_INTERVAL:I = 0xea60


# instance fields
.field failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile nextRequestCode:I

.field private final reconnectTaskHandler:Landroid/os/Handler;

.field retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avospush/session/MessageQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field router:Lcom/avos/avospush/push/AVPushRouter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->nextRequestCode:I

    .line 59
    new-instance v0, Lcom/avos/avoscloud/PushConnectionRetryController$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avos/avoscloud/PushConnectionRetryController$2;-><init>(Lcom/avos/avoscloud/PushConnectionRetryController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->reconnectTaskHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/avos/avospush/session/MessageQueue;

    const-class v1, Ljava/lang/Long;

    invoke-direct {v0, p2, v1}, Lcom/avos/avospush/session/MessageQueue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v0, Lcom/avos/avospush/push/AVPushRouter;

    new-instance v1, Lcom/avos/avoscloud/PushConnectionRetryController$1;

    invoke-direct {v1, p0, p3}, Lcom/avos/avoscloud/PushConnectionRetryController$1;-><init>(Lcom/avos/avoscloud/PushConnectionRetryController;Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/avos/avospush/push/AVPushRouter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->router:Lcom/avos/avospush/push/AVPushRouter;

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/avos/avoscloud/PushConnectionRetryController;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    iput p1, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->nextRequestCode:I

    return p1
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/PushConnectionRetryController;)J
    .locals 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/avos/avoscloud/PushConnectionRetryController;->getInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/PushConnectionRetryController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->reconnectTaskHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized getInterval()J
    .locals 6

    .prologue
    const/16 v1, 0x8

    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 114
    if-gt v0, v1, :cond_0

    .line 115
    :goto_0
    const-wide v2, 0x408f400000000000L

    const-wide/high16 v4, 0x4000

    int-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :cond_0
    move v0, v1

    .line 114
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private triggerRouterRequest(J)V
    .locals 3
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/MessageQueue;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->router:Lcom/avos/avospush/push/AVPushRouter;

    iget v1, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->nextRequestCode:I

    invoke-virtual {v0, v1}, Lcom/avos/avospush/push/AVPushRouter;->fetchPushServer(I)V

    .line 106
    return-void
.end method


# virtual methods
.method public declared-synchronized clean()V
    .locals 2

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->clear()V

    .line 122
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSocketFailure()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 131
    iget v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->nextRequestCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->router:Lcom/avos/avospush/push/AVPushRouter;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->router:Lcom/avos/avospush/push/AVPushRouter;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushRouter;->cleanPushServerCache()V

    .line 134
    :cond_0
    iget v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->nextRequestCode:I

    xor-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->nextRequestCode:I

    .line 135
    return-void
.end method

.method public onSocketSuccess()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 127
    return-void
.end method

.method public tryConnect()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->tryConnect(I)V

    .line 110
    return-void
.end method

.method public tryConnect(I)V
    .locals 12
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 69
    if-eqz p1, :cond_4

    .line 70
    const-wide/32 v0, 0xea60

    sub-long v4, v2, v0

    .line 71
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 73
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 74
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 75
    invoke-direct {p0}, Lcom/avos/avoscloud/PushConnectionRetryController;->getInterval()J

    move-result-wide v10

    sub-long v10, v2, v10

    cmp-long v0, v8, v10

    if-lez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->reconnectTaskHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "try to reconnect to push server in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/avos/avoscloud/PushConnectionRetryController;->getInterval()J

    move-result-wide v4

    add-long/2addr v4, v8

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->reconnectTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->reconnectTaskHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0}, Lcom/avos/avoscloud/PushConnectionRetryController;->getInterval()J

    move-result-wide v4

    add-long/2addr v4, v8

    sub-long v2, v4, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 89
    cmp-long v0, v8, v4

    if-gez v0, :cond_2

    .line 90
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/MessageQueue;->removeAll(Ljava/util/Collection;)Z

    .line 94
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController;->retryTimeStamps:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 95
    invoke-direct {p0, v2, v3}, Lcom/avos/avoscloud/PushConnectionRetryController;->triggerRouterRequest(J)V

    goto :goto_0

    .line 98
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/avos/avoscloud/PushConnectionRetryController;->triggerRouterRequest(J)V

    goto :goto_0
.end method
