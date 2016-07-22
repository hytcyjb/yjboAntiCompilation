.class public abstract Lthread/pool/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static final MSG_TIMEOUT:I = 0x1

.field protected static final TAG:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mBlockQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mThreads:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lthread/Job;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-class v0, Lthread/pool/ThreadPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lthread/pool/ThreadPool;->TAG:Ljava/lang/String;

    .line 62
    new-instance v0, Lthread/pool/ThreadPool$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lthread/pool/ThreadPool$3;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lthread/pool/ThreadPool;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lthread/pool/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    .line 29
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lthread/pool/ThreadPool;->mBlockQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 34
    return-void
.end method

.method public constructor <init>(IIJI)V
    .locals 7
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "keepAliveTime"
    .parameter "threadPriority"

    .prologue
    .line 37
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lthread/pool/ThreadPool;-><init>(IIZJI)V

    .line 38
    return-void
.end method

.method public constructor <init>(IIZJI)V
    .locals 9
    .parameter "corePoolSize"
    .parameter "maximumPoolSize"
    .parameter "allowCoreThreadTimeOut"
    .parameter "keepAliveTime"
    .parameter "threadPriority"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lthread/pool/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    .line 29
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lthread/pool/ThreadPool;->mBlockQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 41
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lthread/pool/ThreadPool;->mBlockQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v7, Lthread/pool/ThreadPool$1;

    invoke-direct {v7, p0, p6}, Lthread/pool/ThreadPool$1;-><init>(Lthread/pool/ThreadPool;I)V

    new-instance v8, Lthread/pool/ThreadPool$2;

    invoke-direct {v8, p0}, Lthread/pool/ThreadPool$2;-><init>(Lthread/pool/ThreadPool;)V

    move v1, p1

    move v2, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lthread/pool/ThreadPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lthread/pool/ThreadPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized purge()V
    .locals 5

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lthread/pool/ThreadPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    .line 120
    iget-object v4, p0, Lthread/pool/ThreadPool;->mBlockQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 121
    iget-object v4, p0, Lthread/pool/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 122
    iget-object v4, p0, Lthread/pool/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 123
    .local v3, jobs:Ljava/util/Set;,"Ljava/util/Set<Lthread/Job;>;"
    const/4 v0, 0x0

    .line 125
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 126
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lthread/Job;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lthread/Job;

    .line 128
    .local v2, job:Lthread/Job;
    iget-object v4, p0, Lthread/pool/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    check-cast v0, Ljava/util/concurrent/Future;

    .line 129
    .restart local v0       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 130
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lthread/Job;>;"
    .end local v2           #job:Lthread/Job;
    .end local v3           #jobs:Ljava/util/Set;,"Ljava/util/Set<Lthread/Job;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 133
    .restart local v0       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lthread/Job;>;"
    .restart local v3       #jobs:Ljava/util/Set;,"Ljava/util/Set<Lthread/Job;>;"
    :cond_1
    :try_start_1
    iget-object v4, p0, Lthread/pool/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lthread/Job;>;"
    .end local v3           #jobs:Ljava/util/Set;,"Ljava/util/Set<Lthread/Job;>;"
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public put(Lthread/Job;)V
    .locals 7
    .parameter "job"

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Lthread/Job;->getMaxTime()J

    move-result-wide v2

    .line 89
    .local v2, time:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 90
    sget-object v4, Lthread/pool/ThreadPool;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 91
    .local v1, msg:Landroid/os/Message;
    sget-object v4, Lthread/pool/ThreadPool;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lthread/Job;->getMaxTime()J

    move-result-wide v5

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    iget-object v4, p0, Lthread/pool/ThreadPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Lthread/Job;->getRunnable()Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 94
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    invoke-virtual {p1, p0}, Lthread/Job;->setThreadPool(Lthread/pool/ThreadPool;)V

    .line 95
    iget-object v4, p0, Lthread/pool/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Lthread/Job;)V
    .locals 3
    .parameter "job"

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lthread/pool/ThreadPool;->mThreads:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 108
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_1

    .line 109
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 111
    :cond_1
    iget-object v1, p0, Lthread/pool/ThreadPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Lthread/Job;->getRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected resetInstance()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lthread/pool/ThreadPool;->shutdown()V

    .line 147
    invoke-virtual {p0}, Lthread/pool/ThreadPool;->resetInstance()V

    .line 148
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lthread/pool/ThreadPool;->purge()V

    .line 142
    iget-object v0, p0, Lthread/pool/ThreadPool;->mPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 143
    return-void
.end method
