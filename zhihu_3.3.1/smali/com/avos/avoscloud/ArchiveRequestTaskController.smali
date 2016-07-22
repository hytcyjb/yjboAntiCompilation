.class public Lcom/avos/avoscloud/ArchiveRequestTaskController;
.super Ljava/lang/Object;
.source "ArchiveRequestTaskController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TIME_DELAY_FOR_ARCHIVEREQUEST:J = 0x1eL

.field static archiveRequestTask:Ljava/lang/Runnable;

.field private static lock:Ljava/util/concurrent/locks/Lock;

.field static scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field static scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/ArchiveRequestTaskController;->lock:Ljava/util/concurrent/locks/Lock;

    .line 35
    new-instance v0, Lcom/avos/avoscloud/ArchiveRequestTaskController$1;

    invoke-direct {v0}, Lcom/avos/avoscloud/ArchiveRequestTaskController$1;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/ArchiveRequestTaskController;->archiveRequestTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/avos/avoscloud/ArchiveRequestTaskController;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public static declared-synchronized schedule()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 20
    const-class v1, Lcom/avos/avoscloud/ArchiveRequestTaskController;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v2, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v2, :cond_0

    .line 22
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    sput-object v2, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    :cond_0
    sget-object v2, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 25
    sget-object v0, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result v0

    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    sget-object v0, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Lcom/avos/avoscloud/ArchiveRequestTaskController;->archiveRequestTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/ArchiveRequestTaskController;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_2
    monitor-exit v1

    return-void

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
