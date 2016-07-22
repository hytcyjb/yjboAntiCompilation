.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static head:Lokio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    .line 263
    return-void
.end method

.method static synthetic access$000()Lokio/AsyncTimeout;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Lokio/AsyncTimeout;->awaitTimeout()Lokio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized awaitTimeout()Lokio/AsyncTimeout;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/32 v9, 0xf4240

    const/4 v5, 0x0

    .line 293
    const-class v6, Lokio/AsyncTimeout;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v0, v7, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 296
    .local v0, node:Lokio/AsyncTimeout;
    if-nez v0, :cond_0

    .line 297
    const-class v7, Lokio/AsyncTimeout;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 316
    .end local v0           #node:Lokio/AsyncTimeout;
    .local v3, waitNanos:J
    :goto_0
    monitor-exit v6

    return-object v0

    .line 301
    .end local v3           #waitNanos:J
    .restart local v0       #node:Lokio/AsyncTimeout;
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    .line 304
    .restart local v3       #waitNanos:J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_1

    .line 307
    const-wide/32 v7, 0xf4240

    div-long v1, v3, v7

    .line 308
    .local v1, waitMillis:J
    mul-long v7, v1, v9

    sub-long/2addr v3, v7

    .line 309
    const-class v7, Lokio/AsyncTimeout;

    long-to-int v8, v3

    invoke-virtual {v7, v1, v2, v8}, Ljava/lang/Object;->wait(JI)V

    move-object v0, v5

    .line 310
    goto :goto_0

    .line 314
    .end local v1           #waitMillis:J
    :cond_1
    sget-object v5, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v7, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v7, v5, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 315
    const/4 v5, 0x0

    iput-object v5, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    .end local v3           #waitNanos:J
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .locals 3
    .parameter "node"

    .prologue
    .line 117
    const-class v2, Lokio/AsyncTimeout;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .local v0, prev:Lokio/AsyncTimeout;
    :goto_0
    if-eqz v0, :cond_1

    .line 118
    iget-object v1, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-ne v1, p0, :cond_0

    .line 119
    iget-object v1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v1, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    const/4 v1, 0x0

    .line 126
    :goto_1
    monitor-exit v2

    return v1

    .line 117
    :cond_0
    :try_start_1
    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 117
    .end local v0           #prev:Lokio/AsyncTimeout;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private remainingNanos(J)J
    .locals 2
    .parameter "now"

    .prologue
    .line 134
    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .locals 9
    .parameter "node"
    .parameter "timeoutNanos"
    .parameter "hasDeadline"

    .prologue
    const-wide/16 v7, 0x0

    .line 75
    const-class v6, Lokio/AsyncTimeout;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-nez v5, :cond_0

    .line 76
    new-instance v5, Lokio/AsyncTimeout;

    invoke-direct {v5}, Lokio/AsyncTimeout;-><init>()V

    sput-object v5, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 77
    new-instance v5, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v5}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v5}, Lokio/AsyncTimeout$Watchdog;->start()V

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 81
    .local v0, now:J
    cmp-long v5, p1, v7

    if-eqz v5, :cond_3

    if-eqz p3, :cond_3

    .line 84
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {p1, p2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v0

    iput-wide v7, p0, Lokio/AsyncTimeout;->timeoutAt:J

    .line 94
    :goto_0
    invoke-direct {p0, v0, v1}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    .line 95
    .local v3, remainingNanos:J
    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 96
    .local v2, prev:Lokio/AsyncTimeout;
    :goto_1
    iget-object v5, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-eqz v5, :cond_1

    iget-object v5, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    invoke-direct {v5, v0, v1}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v7

    cmp-long v5, v3, v7

    if-gez v5, :cond_6

    .line 97
    :cond_1
    iget-object v5, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v5, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 98
    iput-object p0, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 99
    sget-object v5, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne v2, v5, :cond_2

    .line 100
    const-class v5, Lokio/AsyncTimeout;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_2
    monitor-exit v6

    return-void

    .line 85
    .end local v2           #prev:Lokio/AsyncTimeout;
    .end local v3           #remainingNanos:J
    :cond_3
    cmp-long v5, p1, v7

    if-eqz v5, :cond_4

    .line 86
    add-long v7, v0, p1

    :try_start_1
    iput-wide v7, p0, Lokio/AsyncTimeout;->timeoutAt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0           #now:J
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 87
    .restart local v0       #now:J
    :cond_4
    if-eqz p3, :cond_5

    .line 88
    :try_start_2
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v7

    iput-wide v7, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    .line 90
    :cond_5
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 95
    .restart local v2       #prev:Lokio/AsyncTimeout;
    .restart local v3       #remainingNanos:J
    :cond_6
    iget-object v2, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final enter()V
    .locals 5

    .prologue
    .line 62
    iget-boolean v3, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unbalanced enter/exit"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_0
    invoke-virtual {p0}, Lokio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v1

    .line 64
    .local v1, timeoutNanos:J
    invoke-virtual {p0}, Lokio/AsyncTimeout;->hasDeadline()Z

    move-result v0

    .line 65
    .local v0, hasDeadline:Z
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 69
    invoke-static {p0, v1, v2, v0}, Lokio/AsyncTimeout;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    goto :goto_0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .parameter "cause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    .end local p1
    :goto_0
    return-object p1

    .line 258
    .restart local p1
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, e:Ljava/io/InterruptedIOException;
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object p1, v0

    .line 260
    goto :goto_0
.end method

.method final exit(Z)V
    .locals 3
    .parameter "throwOnTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    .line 249
    .local v0, timedOut:Z
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/io/InterruptedIOException;

    const-string v2, "timeout"

    invoke-direct {v1, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_0
    return-void
.end method

.method public final exit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 109
    iget-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-nez v1, :cond_0

    .line 111
    :goto_0
    return v0

    .line 110
    :cond_0
    iput-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 111
    invoke-static {p0}, Lokio/AsyncTimeout;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result v0

    goto :goto_0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .locals 1
    .parameter "sink"

    .prologue
    .line 150
    new-instance v0, Lokio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .locals 1
    .parameter "source"

    .prologue
    .line 206
    new-instance v0, Lokio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method
