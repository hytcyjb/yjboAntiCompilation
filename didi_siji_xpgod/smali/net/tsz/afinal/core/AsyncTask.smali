.class public abstract Lnet/tsz/afinal/core/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tsz/afinal/core/AsyncTask$AsyncTaskResult;,
        Lnet/tsz/afinal/core/AsyncTask$InternalHandler;,
        Lnet/tsz/afinal/core/AsyncTask$SerialExecutor;,
        Lnet/tsz/afinal/core/AsyncTask$Status;,
        Lnet/tsz/afinal/core/AsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$tsz$afinal$core$AsyncTask$Status:[I = null

.field private static final CORE_POOL_SIZE:I = 0x5

.field public static final DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor; = null

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lnet/tsz/afinal/core/AsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lnet/tsz/afinal/core/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lnet/tsz/afinal/core/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/tsz/afinal/core/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$net$tsz$afinal$core$AsyncTask$Status()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lnet/tsz/afinal/core/AsyncTask;->$SWITCH_TABLE$net$tsz$afinal$core$AsyncTask$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/tsz/afinal/core/AsyncTask$Status;->values()[Lnet/tsz/afinal/core/AsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/tsz/afinal/core/AsyncTask$Status;->FINISHED:Lnet/tsz/afinal/core/AsyncTask$Status;

    invoke-virtual {v1}, Lnet/tsz/afinal/core/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lnet/tsz/afinal/core/AsyncTask$Status;->PENDING:Lnet/tsz/afinal/core/AsyncTask$Status;

    invoke-virtual {v1}, Lnet/tsz/afinal/core/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lnet/tsz/afinal/core/AsyncTask$Status;->RUNNING:Lnet/tsz/afinal/core/AsyncTask$Status;

    invoke-virtual {v1}, Lnet/tsz/afinal/core/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lnet/tsz/afinal/core/AsyncTask;->$SWITCH_TABLE$net$tsz$afinal$core$AsyncTask$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 40
    new-instance v0, Lnet/tsz/afinal/core/AsyncTask$1;

    invoke-direct {v0}, Lnet/tsz/afinal/core/AsyncTask$1;-><init>()V

    sput-object v0, Lnet/tsz/afinal/core/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lnet/tsz/afinal/core/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 54
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    .line 55
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lnet/tsz/afinal/core/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lnet/tsz/afinal/core/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 56
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    .line 54
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lnet/tsz/afinal/core/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 63
    new-instance v0, Lnet/tsz/afinal/core/AsyncTask$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/tsz/afinal/core/AsyncTask$SerialExecutor;-><init>(Lnet/tsz/afinal/core/AsyncTask$SerialExecutor;)V

    sput-object v0, Lnet/tsz/afinal/core/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 65
    const/4 v0, 0x3

    sget-object v1, Lnet/tsz/afinal/core/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lnet/tsz/afinal/core/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 70
    new-instance v0, Lnet/tsz/afinal/core/AsyncTask$InternalHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/tsz/afinal/core/AsyncTask$InternalHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lnet/tsz/afinal/core/AsyncTask;->sHandler:Lnet/tsz/afinal/core/AsyncTask$InternalHandler;

    .line 72
    sget-object v0, Lnet/tsz/afinal/core/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lnet/tsz/afinal/core/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 139
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lnet/tsz/afinal/core/AsyncTask$Status;->PENDING:Lnet/tsz/afinal/core/AsyncTask$Status;

    iput-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mStatus:Lnet/tsz/afinal/core/AsyncTask$Status;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    new-instance v0, Lnet/tsz/afinal/core/AsyncTask$2;

    invoke-direct {v0, p0}, Lnet/tsz/afinal/core/AsyncTask$2;-><init>(Lnet/tsz/afinal/core/AsyncTask;)V

    iput-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mWorker:Lnet/tsz/afinal/core/AsyncTask$WorkerRunnable;

    .line 150
    new-instance v0, Lnet/tsz/afinal/core/AsyncTask$3;

    iget-object v1, p0, Lnet/tsz/afinal/core/AsyncTask;->mWorker:Lnet/tsz/afinal/core/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lnet/tsz/afinal/core/AsyncTask$3;-><init>(Lnet/tsz/afinal/core/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 165
    return-void
.end method

.method static synthetic access$0(Lnet/tsz/afinal/core/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lnet/tsz/afinal/core/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lnet/tsz/afinal/core/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2(Lnet/tsz/afinal/core/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lnet/tsz/afinal/core/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lnet/tsz/afinal/core/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lnet/tsz/afinal/core/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 460
    sget-object v0, Lnet/tsz/afinal/core/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Lnet/tsz/afinal/core/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/core/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 490
    :goto_0
    sget-object v0, Lnet/tsz/afinal/core/AsyncTask$Status;->FINISHED:Lnet/tsz/afinal/core/AsyncTask$Status;

    iput-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mStatus:Lnet/tsz/afinal/core/AsyncTask$Status;

    .line 491
    return-void

    .line 488
    :cond_0
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/core/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lnet/tsz/afinal/core/AsyncTask;->sHandler:Lnet/tsz/afinal/core/AsyncTask$InternalHandler;

    invoke-virtual {v0}, Lnet/tsz/afinal/core/AsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 129
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    const/4 v5, 0x1

    .line 176
    sget-object v1, Lnet/tsz/afinal/core/AsyncTask;->sHandler:Lnet/tsz/afinal/core/AsyncTask$InternalHandler;

    .line 177
    new-instance v2, Lnet/tsz/afinal/core/AsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lnet/tsz/afinal/core/AsyncTask$AsyncTaskResult;-><init>(Lnet/tsz/afinal/core/AsyncTask;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v1, v5, v2}, Lnet/tsz/afinal/core/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 178
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 179
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v1, p0, Lnet/tsz/afinal/core/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 169
    .local v0, wasTaskInvoked:Z
    if-nez v0, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lnet/tsz/afinal/core/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter "exec"

    .prologue
    .line 133
    sput-object p0, Lnet/tsz/afinal/core/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 134
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 322
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 323
    iget-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;
    .locals 1
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lnet/tsz/afinal/core/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 390
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    sget-object v0, Lnet/tsz/afinal/core/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lnet/tsz/afinal/core/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lnet/tsz/afinal/core/AsyncTask;
    .locals 2
    .parameter "exec"
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lnet/tsz/afinal/core/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mStatus:Lnet/tsz/afinal/core/AsyncTask$Status;

    sget-object v1, Lnet/tsz/afinal/core/AsyncTask$Status;->PENDING:Lnet/tsz/afinal/core/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 430
    invoke-static {}, Lnet/tsz/afinal/core/AsyncTask;->$SWITCH_TABLE$net$tsz$afinal$core$AsyncTask$Status()[I

    move-result-object v0

    iget-object v1, p0, Lnet/tsz/afinal/core/AsyncTask;->mStatus:Lnet/tsz/afinal/core/AsyncTask$Status;

    invoke-virtual {v1}, Lnet/tsz/afinal/core/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 441
    :cond_0
    sget-object v0, Lnet/tsz/afinal/core/AsyncTask$Status;->RUNNING:Lnet/tsz/afinal/core/AsyncTask$Status;

    iput-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mStatus:Lnet/tsz/afinal/core/AsyncTask$Status;

    .line 443
    invoke-virtual {p0}, Lnet/tsz/afinal/core/AsyncTask;->onPreExecute()V

    .line 445
    iget-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mWorker:Lnet/tsz/afinal/core/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Lnet/tsz/afinal/core/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 448
    return-object p0

    .line 432
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 338
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 358
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lnet/tsz/afinal/core/AsyncTask$Status;
    .locals 1

    .prologue
    .line 188
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mStatus:Lnet/tsz/afinal/core/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 289
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lnet/tsz/afinal/core/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 276
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Lnet/tsz/afinal/core/AsyncTask;->onCancelled()V

    .line 261
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 216
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, this:Lnet/tsz/afinal/core/AsyncTask;,"Lnet/tsz/afinal/core/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lnet/tsz/afinal/core/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    sget-object v0, Lnet/tsz/afinal/core/AsyncTask;->sHandler:Lnet/tsz/afinal/core/AsyncTask$InternalHandler;

    const/4 v1, 0x2

    .line 480
    new-instance v2, Lnet/tsz/afinal/core/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lnet/tsz/afinal/core/AsyncTask$AsyncTaskResult;-><init>(Lnet/tsz/afinal/core/AsyncTask;[Ljava/lang/Object;)V

    .line 479
    invoke-virtual {v0, v1, v2}, Lnet/tsz/afinal/core/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 482
    :cond_0
    return-void
.end method
