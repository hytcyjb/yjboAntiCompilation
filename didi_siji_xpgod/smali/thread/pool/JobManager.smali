.class public Lthread/pool/JobManager;
.super Lthread/pool/ThreadPool;
.source "JobManager.java"


# static fields
.field private static final MAX_THREAD_COUNT:I = 0x8

.field protected static final TAG:Ljava/lang/String;

.field private static instance:Lthread/pool/JobManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lthread/pool/JobManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lthread/pool/JobManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 36
    const/4 v1, 0x2

    const/16 v2, 0x8

    const-wide/16 v3, 0x3

    const/4 v5, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lthread/pool/ThreadPool;-><init>(IIJI)V

    .line 37
    return-void
.end method

.method public static getInstance()Lthread/pool/JobManager;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lthread/pool/JobManager;->instance:Lthread/pool/JobManager;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lthread/pool/JobManager;->instance:Lthread/pool/JobManager;

    .line 48
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const-class v1, Lthread/pool/JobManager;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lthread/pool/JobManager;->instance:Lthread/pool/JobManager;

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lthread/pool/JobManager;

    invoke-direct {v0}, Lthread/pool/JobManager;-><init>()V

    sput-object v0, Lthread/pool/JobManager;->instance:Lthread/pool/JobManager;

    .line 47
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    sget-object v0, Lthread/pool/JobManager;->instance:Lthread/pool/JobManager;

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lthread/pool/JobManager;->getInstance()Lthread/pool/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lthread/pool/JobManager;->shutdown()V

    .line 57
    return-void
.end method

.method public static submit(Lthread/Job;)V
    .locals 1
    .parameter "job"

    .prologue
    .line 52
    invoke-static {}, Lthread/pool/JobManager;->getInstance()Lthread/pool/JobManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lthread/pool/JobManager;->put(Lthread/Job;)V

    .line 53
    return-void
.end method
