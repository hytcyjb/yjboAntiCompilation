.class public Lcom/didi/common/helper/PLocationHelper;
.super Ljava/lang/Object;
.source "PLocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/helper/PLocationHelper$RelationTask;
    }
.end annotation


# static fields
.field public static final MSG_CLOSE_CONN:I = 0x335

.field public static final TIME_CLOSE_DELAY:I = 0x927c0

.field private static sInstance:Lcom/didi/common/helper/PLocationHelper;


# instance fields
.field private mCdntDown:Lcom/didi/frame/protobuffer/CdntSvrDownReq;

.field private mHasBuildedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasCanceledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRelationUpdateExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mRelationUpdateExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mHasCanceledList:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mHasBuildedList:Ljava/util/List;

    .line 89
    return-void
.end method

.method public static buildRelationIfNeed(Lcom/didi/taxi/model/TaxiOrderState;Lcom/didi/taxi/model/TaxiDriver;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "d"
    .parameter "oid"

    .prologue
    .line 40
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/didi/taxi/model/TaxiDriver;->pushRelationFlag:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0, p2}, Lcom/didi/common/helper/PLocationHelper;->buildRelationIfNeed(Lcom/didi/taxi/model/TaxiOrderState;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method public static buildRelationIfNeed(Lcom/didi/taxi/model/TaxiOrderState;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "oid"

    .prologue
    .line 52
    invoke-static {}, Lcom/didi/common/helper/PLocationHelper;->obtain()Lcom/didi/common/helper/PLocationHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/didi/common/helper/PLocationHelper;->buildRelationIfNeed(Ljava/lang/String;Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 53
    return-void
.end method

.method public static declared-synchronized obtain()Lcom/didi/common/helper/PLocationHelper;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/didi/common/helper/PLocationHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/common/helper/PLocationHelper;->sInstance:Lcom/didi/common/helper/PLocationHelper;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/didi/common/helper/PLocationHelper;

    invoke-direct {v0}, Lcom/didi/common/helper/PLocationHelper;-><init>()V

    sput-object v0, Lcom/didi/common/helper/PLocationHelper;->sInstance:Lcom/didi/common/helper/PLocationHelper;

    .line 62
    :cond_0
    sget-object v0, Lcom/didi/common/helper/PLocationHelper;->sInstance:Lcom/didi/common/helper/PLocationHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized release()V
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcom/didi/common/helper/PLocationHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/common/helper/PLocationHelper;->sInstance:Lcom/didi/common/helper/PLocationHelper;

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/helper/PLocationHelper;->sInstance:Lcom/didi/common/helper/PLocationHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit v1

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized buildRelationIfNeed(Ljava/lang/String;Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 8
    .parameter "oid"
    .parameter "state"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mHasCanceledList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mHasBuildedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mHasBuildedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-boolean v0, p2, Lcom/didi/taxi/model/TaxiOrderState;->isArrieved:Z

    if-nez v0, :cond_0

    .line 116
    new-instance v1, Lcom/didi/common/helper/PLocationHelper$RelationTask;

    const/4 v0, 0x1

    invoke-direct {v1, p0, p1, v0}, Lcom/didi/common/helper/PLocationHelper$RelationTask;-><init>(Lcom/didi/common/helper/PLocationHelper;Ljava/lang/String;I)V

    .line 117
    .local v1, task:Lcom/didi/common/helper/PLocationHelper$RelationTask;
    iget-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mRelationUpdateExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    .line 118
    .local v7, future:Ljava/util/concurrent/ScheduledFuture;
    #setter for: Lcom/didi/common/helper/PLocationHelper$RelationTask;->mFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1, v7}, Lcom/didi/common/helper/PLocationHelper$RelationTask;->access$002(Lcom/didi/common/helper/PLocationHelper$RelationTask;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    .end local v1           #task:Lcom/didi/common/helper/PLocationHelper$RelationTask;
    .end local v7           #future:Ljava/util/concurrent/ScheduledFuture;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelRelationIfNeed(Ljava/lang/String;)V
    .locals 8
    .parameter "oid"

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mHasCanceledList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mHasCanceledList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/didi/common/helper/PLocationHelper$RelationTask;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Lcom/didi/common/helper/PLocationHelper$RelationTask;-><init>(Lcom/didi/common/helper/PLocationHelper;Ljava/lang/String;I)V

    .line 140
    .local v1, task:Lcom/didi/common/helper/PLocationHelper$RelationTask;
    iget-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mRelationUpdateExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    .line 141
    .local v7, future:Ljava/util/concurrent/ScheduledFuture;
    #setter for: Lcom/didi/common/helper/PLocationHelper$RelationTask;->mFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static {v1, v7}, Lcom/didi/common/helper/PLocationHelper$RelationTask;->access$002(Lcom/didi/common/helper/PLocationHelper$RelationTask;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    .end local v1           #task:Lcom/didi/common/helper/PLocationHelper$RelationTask;
    .end local v7           #future:Ljava/util/concurrent/ScheduledFuture;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetScheduleExecutor()V
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mRelationUpdateExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mRelationUpdateExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 150
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/helper/PLocationHelper;->mRelationUpdateExecutor:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
