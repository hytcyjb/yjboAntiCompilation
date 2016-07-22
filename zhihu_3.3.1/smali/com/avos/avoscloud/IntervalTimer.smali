.class abstract Lcom/avos/avoscloud/IntervalTimer;
.super Ljava/lang/Object;
.source "IntervalTimer.java"


# static fields
.field private static final MSG:I = 0x1

.field private static final SKIP:I = -0x1


# instance fields
.field private volatile mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private volatile mTriggerTimeInFuture:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/avos/avoscloud/IntervalTimer;-><init>(Landroid/os/Looper;J)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avos/avoscloud/IntervalTimer;->mCancelled:Z

    .line 31
    iput-wide p2, p0, Lcom/avos/avoscloud/IntervalTimer;->mCountdownInterval:J

    .line 32
    new-instance v0, Lcom/avos/avoscloud/IntervalTimer$1;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/IntervalTimer$1;-><init>(Lcom/avos/avoscloud/IntervalTimer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/avos/avoscloud/IntervalTimer;->mHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/avos/avoscloud/IntervalTimer;)Z
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/avos/avoscloud/IntervalTimer;->mCancelled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/IntervalTimer;)J
    .locals 2
    .parameter

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/avos/avoscloud/IntervalTimer;->mTriggerTimeInFuture:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/avos/avoscloud/IntervalTimer;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/avos/avoscloud/IntervalTimer;->mTriggerTimeInFuture:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/IntervalTimer;)J
    .locals 2
    .parameter

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/avos/avoscloud/IntervalTimer;->mCountdownInterval:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/avos/avoscloud/IntervalTimer;->mCancelled:Z

    .line 71
    iget-object v0, p0, Lcom/avos/avoscloud/IntervalTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    iget-object v0, p0, Lcom/avos/avoscloud/IntervalTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onTrigger()V
.end method

.method public final skip()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avos/avoscloud/IntervalTimer;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    return-void
.end method

.method protected final declared-synchronized start()Lcom/avos/avoscloud/IntervalTimer;
    .locals 4

    .prologue
    .line 85
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/avos/avoscloud/IntervalTimer;->mCancelled:Z

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/avos/avoscloud/IntervalTimer;->mCountdownInterval:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avos/avoscloud/IntervalTimer;->mTriggerTimeInFuture:J

    .line 87
    iget-object v0, p0, Lcom/avos/avoscloud/IntervalTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/avos/avoscloud/IntervalTimer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-object p0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
