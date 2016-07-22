.class public Lthread/pool/ImageThreadPool;
.super Lthread/pool/ThreadPool;
.source "ImageThreadPool.java"


# static fields
.field private static final CORE_THREAD_COUNT:I = 0xa

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_THREAD_COUNT:I = 0x64

.field protected static final TAG:Ljava/lang/String;

.field private static instance:Lthread/pool/ImageThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lthread/pool/ImageThreadPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lthread/pool/ImageThreadPool;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    .line 23
    const/16 v1, 0xa

    const/16 v2, 0x64

    const/4 v3, 0x0

    const-wide/16 v4, 0xa

    const/4 v6, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lthread/pool/ThreadPool;-><init>(IIZJI)V

    .line 24
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lthread/pool/ImageThreadPool;->getInstance()Lthread/pool/ImageThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lthread/pool/ImageThreadPool;->purge()V

    .line 63
    return-void
.end method

.method public static getInstance()Lthread/pool/ImageThreadPool;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lthread/pool/ImageThreadPool;->instance:Lthread/pool/ImageThreadPool;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lthread/pool/ImageThreadPool;->instance:Lthread/pool/ImageThreadPool;

    .line 35
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-class v1, Lthread/pool/ImageThreadPool;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lthread/pool/ImageThreadPool;->instance:Lthread/pool/ImageThreadPool;

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Lthread/pool/ImageThreadPool;

    invoke-direct {v0}, Lthread/pool/ImageThreadPool;-><init>()V

    sput-object v0, Lthread/pool/ImageThreadPool;->instance:Lthread/pool/ImageThreadPool;

    .line 34
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sget-object v0, Lthread/pool/ImageThreadPool;->instance:Lthread/pool/ImageThreadPool;

    goto :goto_0

    .line 34
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
    .line 58
    invoke-static {}, Lthread/pool/ImageThreadPool;->getInstance()Lthread/pool/ImageThreadPool;

    move-result-object v0

    invoke-virtual {v0}, Lthread/pool/ImageThreadPool;->shutdown()V

    .line 59
    return-void
.end method

.method public static submit(Lthread/Job;)V
    .locals 1
    .parameter "job"

    .prologue
    .line 51
    invoke-static {}, Lthread/pool/ImageThreadPool;->getInstance()Lthread/pool/ImageThreadPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lthread/pool/ImageThreadPool;->put(Lthread/Job;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected resetInstance()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lthread/pool/ThreadPool;->resetInstance()V

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lthread/pool/ImageThreadPool;->instance:Lthread/pool/ImageThreadPool;

    .line 42
    invoke-static {}, Lthread/pool/ImageThreadPool;->getInstance()Lthread/pool/ImageThreadPool;

    .line 43
    return-void
.end method
