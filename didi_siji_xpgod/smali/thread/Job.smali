.class public abstract Lthread/Job;
.super Ljava/lang/Object;
.source "Job.java"


# static fields
.field private static final MSG_FINISHED:I = 0x1

.field protected static final TAG:Ljava/lang/String;

.field private static count:I

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mCanceled:Z

.field private mFinished:Z

.field private mMaxTime:J

.field private mName:Ljava/lang/String;

.field private mRunnable:Ljava/lang/Runnable;

.field private mThreadPool:Lthread/pool/ThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lthread/Job;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lthread/Job;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput v0, Lthread/Job;->count:I

    .line 47
    new-instance v0, Lthread/Job$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lthread/Job$2;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lthread/Job;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lthread/Job;->count:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lthread/Job;->count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lthread/Job;->mName:Ljava/lang/String;

    .line 26
    invoke-static {}, Lthread/pool/JobManager;->getInstance()Lthread/pool/JobManager;

    move-result-object v0

    iput-object v0, p0, Lthread/Job;->mThreadPool:Lthread/pool/ThreadPool;

    .line 30
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lthread/Job;->mMaxTime:J

    .line 32
    new-instance v0, Lthread/Job$1;

    invoke-direct {v0, p0}, Lthread/Job$1;-><init>(Lthread/Job;)V

    iput-object v0, p0, Lthread/Job;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lthread/Job;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lthread/Job;->mFinished:Z

    return p1
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lthread/Job;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lthread/Job;)Lthread/pool/ThreadPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lthread/Job;->mThreadPool:Lthread/pool/ThreadPool;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lthread/Job;->mThreadPool:Lthread/pool/ThreadPool;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lthread/Job;->mThreadPool:Lthread/pool/ThreadPool;

    invoke-virtual {v0, p0}, Lthread/pool/ThreadPool;->remove(Lthread/Job;)V

    .line 71
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lthread/Job;->mCanceled:Z

    .line 72
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lthread/Job;->mThreadPool:Lthread/pool/ThreadPool;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lthread/Job;->mThreadPool:Lthread/pool/ThreadPool;

    invoke-virtual {v0, p0}, Lthread/pool/ThreadPool;->remove(Lthread/Job;)V

    .line 177
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 178
    return-void
.end method

.method public getMaxTime()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lthread/Job;->mMaxTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lthread/Job;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lthread/Job;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lthread/Job;->mCanceled:Z

    return v0
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lthread/Job;->mFinished:Z

    return v0
.end method

.method protected onPostRun()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onTimeOut()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method protected abstract run()V
.end method

.method public setMaxTime(J)V
    .locals 0
    .parameter "maxTime"

    .prologue
    .line 110
    iput-wide p1, p0, Lthread/Job;->mMaxTime:J

    .line 111
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 152
    iput-object p1, p0, Lthread/Job;->mName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public final setThreadPool(Lthread/pool/ThreadPool;)V
    .locals 0
    .parameter "pool"

    .prologue
    .line 162
    iput-object p1, p0, Lthread/Job;->mThreadPool:Lthread/pool/ThreadPool;

    .line 163
    return-void
.end method

.method public start()Lthread/Job;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lthread/Job;->mThreadPool:Lthread/pool/ThreadPool;

    if-nez v0, :cond_0

    .line 88
    const/4 p0, 0x0

    .line 91
    :goto_0
    return-object p0

    .line 90
    :cond_0
    iget-object v0, p0, Lthread/Job;->mThreadPool:Lthread/pool/ThreadPool;

    invoke-virtual {v0, p0}, Lthread/pool/ThreadPool;->put(Lthread/Job;)V

    goto :goto_0
.end method
