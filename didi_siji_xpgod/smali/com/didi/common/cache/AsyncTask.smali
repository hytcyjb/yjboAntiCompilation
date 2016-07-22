.class public abstract Lcom/didi/common/cache/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/cache/AsyncTask$4;,
        Lcom/didi/common/cache/AsyncTask$AsyncTaskResult;,
        Lcom/didi/common/cache/AsyncTask$WorkerRunnable;,
        Lcom/didi/common/cache/AsyncTask$InternalHandler;,
        Lcom/didi/common/cache/AsyncTask$Status;,
        Lcom/didi/common/cache/AsyncTask$SerialExecutor;
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

.field private static final sHandler:Lcom/didi/common/cache/AsyncTask$InternalHandler;

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

.field private volatile mStatus:Lcom/didi/common/cache/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/didi/common/cache/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/common/cache/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 204
    new-instance v0, Lcom/didi/common/cache/AsyncTask$1;

    invoke-direct {v0}, Lcom/didi/common/cache/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/didi/common/cache/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 212
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/didi/common/cache/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 218
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/didi/common/cache/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/didi/common/cache/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/didi/common/cache/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 227
    invoke-static {}, Lcom/didi/common/cache/CacheUtils;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/didi/common/cache/AsyncTask$SerialExecutor;

    invoke-direct {v0, v9}, Lcom/didi/common/cache/AsyncTask$SerialExecutor;-><init>(Lcom/didi/common/cache/AsyncTask$1;)V

    :goto_0
    sput-object v0, Lcom/didi/common/cache/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 230
    const/4 v0, 0x2

    sget-object v1, Lcom/didi/common/cache/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/didi/common/cache/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 236
    new-instance v0, Lcom/didi/common/cache/AsyncTask$InternalHandler;

    invoke-direct {v0, v9}, Lcom/didi/common/cache/AsyncTask$InternalHandler;-><init>(Lcom/didi/common/cache/AsyncTask$1;)V

    sput-object v0, Lcom/didi/common/cache/AsyncTask;->sHandler:Lcom/didi/common/cache/AsyncTask$InternalHandler;

    .line 238
    sget-object v0, Lcom/didi/common/cache/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/didi/common/cache/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/didi/common/cache/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 306
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    sget-object v0, Lcom/didi/common/cache/AsyncTask$Status;->PENDING:Lcom/didi/common/cache/AsyncTask$Status;

    iput-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mStatus:Lcom/didi/common/cache/AsyncTask$Status;

    .line 244
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 307
    new-instance v0, Lcom/didi/common/cache/AsyncTask$2;

    invoke-direct {v0, p0}, Lcom/didi/common/cache/AsyncTask$2;-><init>(Lcom/didi/common/cache/AsyncTask;)V

    iput-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mWorker:Lcom/didi/common/cache/AsyncTask$WorkerRunnable;

    .line 317
    new-instance v0, Lcom/didi/common/cache/AsyncTask$3;

    iget-object v1, p0, Lcom/didi/common/cache/AsyncTask;->mWorker:Lcom/didi/common/cache/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/didi/common/cache/AsyncTask$3;-><init>(Lcom/didi/common/cache/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 332
    return-void
.end method

.method static synthetic access$300(Lcom/didi/common/cache/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/common/cache/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/didi/common/cache/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/common/cache/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/didi/common/cache/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/common/cache/AsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/didi/common/cache/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 629
    sget-object v0, Lcom/didi/common/cache/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 630
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
    .line 654
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Lcom/didi/common/cache/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0, p1}, Lcom/didi/common/cache/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 659
    :goto_0
    sget-object v0, Lcom/didi/common/cache/AsyncTask$Status;->FINISHED:Lcom/didi/common/cache/AsyncTask$Status;

    iput-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mStatus:Lcom/didi/common/cache/AsyncTask$Status;

    .line 660
    return-void

    .line 657
    :cond_0
    invoke-virtual {p0, p1}, Lcom/didi/common/cache/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/didi/common/cache/AsyncTask;->sHandler:Lcom/didi/common/cache/AsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcom/didi/common/cache/AsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 296
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
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    const/4 v5, 0x1

    .line 343
    sget-object v1, Lcom/didi/common/cache/AsyncTask;->sHandler:Lcom/didi/common/cache/AsyncTask$InternalHandler;

    new-instance v2, Lcom/didi/common/cache/AsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/didi/common/cache/AsyncTask$AsyncTaskResult;-><init>(Lcom/didi/common/cache/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v2}, Lcom/didi/common/cache/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 346
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
    .line 335
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v1, p0, Lcom/didi/common/cache/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 336
    .local v0, wasTaskInvoked:Z
    if-nez v0, :cond_0

    .line 337
    invoke-direct {p0, p1}, Lcom/didi/common/cache/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .parameter "exec"

    .prologue
    .line 300
    sput-object p0, Lcom/didi/common/cache/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 301
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 492
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 493
    iget-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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

.method public final varargs execute([Ljava/lang/Object;)Lcom/didi/common/cache/AsyncTask;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/didi/common/cache/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    sget-object v0, Lcom/didi/common/cache/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/didi/common/cache/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/didi/common/cache/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/didi/common/cache/AsyncTask;
    .locals 2
    .parameter "exec"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/didi/common/cache/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 598
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    .local p2, params:[Ljava/lang/Object;,"[TParams;"
    iget-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mStatus:Lcom/didi/common/cache/AsyncTask$Status;

    sget-object v1, Lcom/didi/common/cache/AsyncTask$Status;->PENDING:Lcom/didi/common/cache/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 599
    sget-object v0, Lcom/didi/common/cache/AsyncTask$4;->$SwitchMap$com$didi$common$cache$AsyncTask$Status:[I

    iget-object v1, p0, Lcom/didi/common/cache/AsyncTask;->mStatus:Lcom/didi/common/cache/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/didi/common/cache/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 610
    :cond_0
    sget-object v0, Lcom/didi/common/cache/AsyncTask$Status;->RUNNING:Lcom/didi/common/cache/AsyncTask$Status;

    iput-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mStatus:Lcom/didi/common/cache/AsyncTask$Status;

    .line 612
    invoke-virtual {p0}, Lcom/didi/common/cache/AsyncTask;->onPreExecute()V

    .line 614
    iget-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mWorker:Lcom/didi/common/cache/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/didi/common/cache/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 615
    iget-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 617
    return-object p0

    .line 601
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
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
    .line 508
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

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
    .line 528
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/didi/common/cache/AsyncTask$Status;
    .locals 1

    .prologue
    .line 355
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mStatus:Lcom/didi/common/cache/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 459
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/didi/common/cache/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 446
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
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
    .line 430
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Lcom/didi/common/cache/AsyncTask;->onCancelled()V

    .line 431
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
    .line 399
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 383
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, values:[Ljava/lang/Object;,"[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, this:Lcom/didi/common/cache/AsyncTask;,"Lcom/didi/common/cache/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, values:[Ljava/lang/Object;,"[TProgress;"
    invoke-virtual {p0}, Lcom/didi/common/cache/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    sget-object v0, Lcom/didi/common/cache/AsyncTask;->sHandler:Lcom/didi/common/cache/AsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/didi/common/cache/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/didi/common/cache/AsyncTask$AsyncTaskResult;-><init>(Lcom/didi/common/cache/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/cache/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 651
    :cond_0
    return-void
.end method
