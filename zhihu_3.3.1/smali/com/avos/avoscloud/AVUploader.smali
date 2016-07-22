.class abstract Lcom/avos/avoscloud/AVUploader;
.super Ljava/lang/Object;
.source "AVUploader.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CORE_POOL_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CPU_COUNT:I = 0x0

.field private static final KEEP_ALIVE_TIME:J = 0x1L

#the value of this static final field might be set in the static constructor
.field private static final MAX_POOL_SIZE:I = 0x0

.field protected static final defaultFileKeyLength:I = 0x28

.field private static executor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private volatile cancelled:Z

.field private volatile complete:Z

.field private volatile future:Ljava/util/concurrent/Future;

.field protected final parseFile:Lcom/avos/avoscloud/AVFile;

.field protected progressCallback:Lcom/avos/avoscloud/ProgressCallback;

.field protected saveCallback:Lcom/avos/avoscloud/SaveCallback;

.field protected totalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 22
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/avos/avoscloud/AVUploader;->CPU_COUNT:I

    .line 23
    sget v0, Lcom/avos/avoscloud/AVUploader;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/avos/avoscloud/AVUploader;->CORE_POOL_SIZE:I

    .line 24
    sget v0, Lcom/avos/avoscloud/AVUploader;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/avos/avoscloud/AVUploader;->MAX_POOL_SIZE:I

    .line 30
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/avos/avoscloud/AVUploader;->CORE_POOL_SIZE:I

    sget v3, Lcom/avos/avoscloud/AVUploader;->MAX_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/avos/avoscloud/AVUploader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 39
    sget-object v0, Lcom/avos/avoscloud/AVUploader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 41
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcom/avos/avoscloud/AVFile;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/ProgressCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVUploader;->cancelled:Z

    .line 19
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVUploader;->complete:Z

    .line 49
    iput-object p1, p0, Lcom/avos/avoscloud/AVUploader;->parseFile:Lcom/avos/avoscloud/AVFile;

    .line 50
    iput-object p2, p0, Lcom/avos/avoscloud/AVUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    .line 51
    iput-object p3, p0, Lcom/avos/avoscloud/AVUploader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    .line 52
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVUploader;->cancelled:Z

    .line 53
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVUploader;->complete:Z

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/AVUploader;)Z
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVUploader;->cancelled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/avos/avoscloud/AVUploader;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVUploader;->complete:Z

    return p1
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    iget-boolean v2, p0, Lcom/avos/avoscloud/AVUploader;->cancelled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVUploader;->complete:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 115
    :goto_0
    return v0

    .line 106
    :cond_1
    iput-boolean v0, p0, Lcom/avos/avoscloud/AVUploader;->cancelled:Z

    .line 107
    if-eqz p1, :cond_3

    .line 108
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUploader;->interruptImmediately()V

    .line 114
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUploader;->onCancelled()V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/avos/avoscloud/AVUploader;->future:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/avos/avoscloud/AVUploader;->future:Ljava/util/concurrent/Future;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/avos/avoscloud/AVException;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVUploader;->doWork()Lcom/avos/avoscloud/AVException;

    move-result-object v0

    return-object v0
.end method

.method abstract doWork()Lcom/avos/avoscloud/AVException;
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/avos/avoscloud/AVUploader$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVUploader$1;-><init>(Lcom/avos/avoscloud/AVUploader;)V

    .line 74
    sget-object v1, Lcom/avos/avoscloud/AVUploader;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVUploader;->future:Ljava/util/concurrent/Future;

    .line 75
    return-void
.end method

.method public interruptImmediately()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->future:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 123
    :cond_0
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVUploader;->cancelled:Z

    return v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "upload cancel"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected onPostExecute(Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->saveCallback:Lcom/avos/avoscloud/SaveCallback;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected onProgressUpdate(Ljava/lang/Integer;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVUploader;->progressCallback:Lcom/avos/avoscloud/ProgressCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/ProgressCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 85
    :cond_0
    return-void
.end method

.method public publishProgress(I)V
    .locals 1
    .parameter

    .prologue
    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVUploader;->onProgressUpdate(Ljava/lang/Integer;)V

    .line 131
    return-void
.end method
