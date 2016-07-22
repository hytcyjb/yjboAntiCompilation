.class public Lcom/didi/car/helper/CarClickHelper;
.super Ljava/lang/Object;
.source "CarClickHelper.java"


# static fields
.field private static final MIN_CLICK_INTERVAL:I = 0x3e8

.field private static mInstance:Lcom/didi/car/helper/CarClickHelper;


# instance fields
.field private ignoreMe:Z

.field private lastClickTime:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/helper/CarClickHelper;->ignoreMe:Z

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/didi/car/helper/CarClickHelper;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/didi/car/helper/CarClickHelper;->mInstance:Lcom/didi/car/helper/CarClickHelper;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/didi/car/helper/CarClickHelper;

    invoke-direct {v0}, Lcom/didi/car/helper/CarClickHelper;-><init>()V

    sput-object v0, Lcom/didi/car/helper/CarClickHelper;->mInstance:Lcom/didi/car/helper/CarClickHelper;

    .line 18
    :cond_0
    sget-object v0, Lcom/didi/car/helper/CarClickHelper;->mInstance:Lcom/didi/car/helper/CarClickHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized ignoreController()V
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/didi/car/helper/CarClickHelper;->ignoreMe:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFastDoubleClick()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 22
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/didi/car/helper/CarClickHelper;->ignoreMe:Z

    if-eqz v5, :cond_0

    .line 23
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/didi/car/helper/CarClickHelper;->ignoreMe:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :goto_0
    monitor-exit p0

    return v4

    .line 27
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 28
    .local v0, time:J
    iget-wide v5, p0, Lcom/didi/car/helper/CarClickHelper;->lastClickTime:J

    sub-long v2, v0, v5

    .line 29
    .local v2, timeD:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    const-wide/16 v5, 0x3e8

    cmp-long v5, v2, v5

    if-gez v5, :cond_1

    .line 30
    const/4 v4, 0x1

    goto :goto_0

    .line 33
    :cond_1
    iput-wide v0, p0, Lcom/didi/car/helper/CarClickHelper;->lastClickTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    .end local v0           #time:J
    .end local v2           #timeD:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
