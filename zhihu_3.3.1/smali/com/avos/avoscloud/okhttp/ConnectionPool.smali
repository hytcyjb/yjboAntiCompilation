.class public final Lcom/avos/avoscloud/okhttp/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field private static final DEFAULT_KEEP_ALIVE_DURATION_MS:J = 0x493e0L

.field private static final systemDefault:Lcom/avos/avoscloud/okhttp/ConnectionPool;


# instance fields
.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/avos/avoscloud/okhttp/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionsCleanupRunnable:Ljava/lang/Runnable;

.field private executor:Ljava/util/concurrent/Executor;

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    const-string v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v0, "http.keepAliveDuration"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "http.maxConnections"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 67
    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    new-instance v2, Lcom/avos/avoscloud/okhttp/ConnectionPool;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lcom/avos/avoscloud/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v2, Lcom/avos/avoscloud/okhttp/ConnectionPool;->systemDefault:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    .line 74
    :goto_1
    return-void

    .line 65
    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_0

    .line 69
    :cond_1
    if-eqz v3, :cond_2

    .line 70
    new-instance v2, Lcom/avos/avoscloud/okhttp/ConnectionPool;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3, v0, v1}, Lcom/avos/avoscloud/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v2, Lcom/avos/avoscloud/okhttp/ConnectionPool;->systemDefault:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    goto :goto_1

    .line 72
    :cond_2
    new-instance v2, Lcom/avos/avoscloud/okhttp/ConnectionPool;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0, v1}, Lcom/avos/avoscloud/okhttp/ConnectionPool;-><init>(IJ)V

    sput-object v2, Lcom/avos/avoscloud/okhttp/ConnectionPool;->systemDefault:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    goto :goto_1
.end method

.method public constructor <init>(IJ)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v3, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    .line 93
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp ConnectionPool"

    invoke-static {v0, v3}, Lcom/avos/avoscloud/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    .line 97
    new-instance v0, Lcom/avos/avoscloud/okhttp/ConnectionPool$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/okhttp/ConnectionPool$1;-><init>(Lcom/avos/avoscloud/okhttp/ConnectionPool;)V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connectionsCleanupRunnable:Ljava/lang/Runnable;

    .line 104
    iput p1, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->maxIdleConnections:I

    .line 105
    mul-long v0, p2, v10

    mul-long/2addr v0, v10

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->keepAliveDurationNs:J

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/okhttp/ConnectionPool;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/avos/avoscloud/okhttp/ConnectionPool;->runCleanupUntilPoolIsEmpty()V

    return-void
.end method

.method private addConnection(Lcom/avos/avoscloud/okhttp/Connection;)V
    .locals 2
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connectionsCleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method

.method public static getDefault()Lcom/avos/avoscloud/okhttp/ConnectionPool;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->systemDefault:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    return-object v0
.end method

.method private runCleanupUntilPoolIsEmpty()V
    .locals 1

    .prologue
    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/ConnectionPool;->performCleanup()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method public evictAll()V
    .locals 4

    .prologue
    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 234
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 237
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/Connection;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 236
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 239
    :cond_0
    return-void
.end method

.method public declared-synchronized get(Lcom/avos/avoscloud/okhttp/Address;)Lcom/avos/avoscloud/okhttp/Connection;
    .locals 8
    .parameter

    .prologue
    .line 139
    monitor-enter p0

    const/4 v2, 0x0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/Connection;

    .line 142
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->getRoute()Lcom/avos/avoscloud/okhttp/Route;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/okhttp/Route;->getAddress()Lcom/avos/avoscloud/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/avos/avoscloud/okhttp/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->getIdleStartTimeNs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 147
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 148
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->isFramed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 150
    :try_start_1
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/Platform;->get()Lcom/avos/avoscloud/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/avos/avoscloud/okhttp/internal/Platform;->tagSocket(Ljava/net/Socket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->isFramed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :cond_2
    monitor-exit p0

    return-object v0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    :try_start_3
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 154
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/Platform;->get()Lcom/avos/avoscloud/okhttp/internal/Platform;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to tagSocket(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/Platform;->logW(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public declared-synchronized getConnectionCount()I
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHttpConnectionCount()I
    .locals 2

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/ConnectionPool;->getMultiplexedConnectionCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMultiplexedConnectionCount()I
    .locals 3

    .prologue
    .line 125
    monitor-enter p0

    const/4 v1, 0x0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/Connection;

    .line 127
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/Connection;->isFramed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 128
    goto :goto_0

    .line 129
    :cond_0
    monitor-exit p0

    return v1

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized getSpdyConnectionCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/okhttp/ConnectionPool;->getMultiplexedConnectionCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method performCleanup()Z
    .locals 18

    .prologue
    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    monitor-exit p0

    .line 318
    :goto_0
    return v2

    .line 271
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 272
    const/4 v3, 0x0

    .line 273
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 274
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->keepAliveDurationNs:J

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/okhttp/Connection;

    .line 279
    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Connection;->getIdleStartTimeNs()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->keepAliveDurationNs:J

    add-long/2addr v12, v14

    sub-long/2addr v12, v8

    .line 280
    const-wide/16 v14, 0x0

    cmp-long v6, v12, v14

    if-lez v6, :cond_1

    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Connection;->isAlive()Z

    move-result v6

    if-nez v6, :cond_2

    .line 281
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 282
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v16, v4

    move v4, v3

    move-wide/from16 v2, v16

    :goto_2
    move-wide/from16 v16, v2

    move v3, v4

    move-wide/from16 v4, v16

    .line 287
    goto :goto_1

    .line 283
    :cond_2
    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Connection;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 284
    add-int/lit8 v6, v3, 0x1

    .line 285
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move v4, v6

    goto :goto_2

    .line 290
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v6

    .line 291
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->maxIdleConnections:I

    if-le v3, v2, :cond_4

    .line 292
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/okhttp/Connection;

    .line 293
    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Connection;->isIdle()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 294
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 296
    add-int/lit8 v2, v3, -0x1

    :goto_4
    move v3, v2

    .line 298
    goto :goto_3

    .line 301
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 303
    const-wide/32 v2, 0xf4240

    :try_start_1
    div-long v2, v4, v2

    .line 304
    const-wide/32 v8, 0xf4240

    mul-long/2addr v8, v2

    sub-long/2addr v4, v8

    .line 305
    long-to-int v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    const/4 v2, 0x1

    :try_start_2
    monitor-exit p0

    goto/16 :goto_0

    .line 310
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 307
    :catch_0
    move-exception v2

    .line 310
    :cond_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    const/4 v2, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_5
    if-ge v3, v4, :cond_6

    .line 314
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avos/avoscloud/okhttp/Connection;

    .line 315
    invoke-virtual {v2}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 313
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 318
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    move v2, v3

    goto :goto_4

    :cond_8
    move-wide/from16 v16, v4

    move v4, v3

    move-wide/from16 v2, v16

    goto :goto_2
.end method

.method recycle(Lcom/avos/avoscloud/okhttp/Connection;)V
    .locals 4
    .parameter

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->isFramed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->clearOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_0

    .line 190
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/Platform;->get()Lcom/avos/avoscloud/okhttp/internal/Platform;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/okhttp/internal/Platform;->untagSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    monitor-enter p0

    .line 199
    :try_start_1
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/ConnectionPool;->addConnection(Lcom/avos/avoscloud/okhttp/Connection;)V

    .line 200
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->incrementRecycleCount()V

    .line 201
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->resetIdleStartTime()V

    .line 202
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    invoke-static {}, Lcom/avos/avoscloud/okhttp/internal/Platform;->get()Lcom/avos/avoscloud/okhttp/internal/Platform;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to untagSocket(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    goto :goto_0
.end method

.method replaceCleanupExecutorForTests(Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/ConnectionPool;->executor:Ljava/util/concurrent/Executor;

    .line 327
    return-void
.end method

.method share(Lcom/avos/avoscloud/okhttp/Connection;)V
    .locals 1
    .parameter

    .prologue
    .line 220
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->isFramed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 221
    :cond_0
    invoke-virtual {p1}, Lcom/avos/avoscloud/okhttp/Connection;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_1
    monitor-enter p0

    .line 223
    :try_start_0
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/ConnectionPool;->addConnection(Lcom/avos/avoscloud/okhttp/Connection;)V

    .line 224
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
