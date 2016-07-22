.class public final Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$1;,
        Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$Stream;,
        Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;,
        Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;
    }
.end annotation


# instance fields
.field private allocationLimit:I

.field private final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;",
            ">;"
        }
    .end annotation
.end field

.field idleAt:J

.field private noNewAllocations:Z

.field private final pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/okhttp/ConnectionPool;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocationLimit:I

    .line 54
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->idleAt:J

    .line 57
    iput-object p1, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    .line 58
    return-void
.end method

.method static synthetic access$400(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;)Lcom/avos/avoscloud/okhttp/ConnectionPool;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->remove(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;)V

    return-void
.end method

.method private remove(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;)V
    .locals 3
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 91
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;

    .line 92
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->idleAt:J

    .line 100
    :cond_0
    return-void

    .line 90
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 103
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected allocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public noNewStreams()V
    .locals 3

    .prologue
    .line 111
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    monitor-enter v2

    .line 112
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->noNewAllocations:Z

    .line 113
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;->rescind()V

    .line 113
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_0
    monitor-exit v2

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pruneLeakedAllocations()V
    .locals 6

    .prologue
    .line 139
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;

    .line 142
    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 143
    sget-object v3, Lcom/avos/avoscloud/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;->access$300(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " leaked a connection. Did you forget to close a response body?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->noNewAllocations:Z

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 147
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->idleAt:J

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    return-void
.end method

.method public release(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;)V
    .locals 3
    .parameter

    .prologue
    .line 79
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    monitor-enter v1

    .line 80
    :try_start_0
    #getter for: Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;->released:Z
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;->access$100(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already released"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 82
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    #setter for: Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;->released:Z
    invoke-static {p1, v0}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;->access$102(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;Z)Z

    .line 83
    #getter for: Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;->stream:Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$Stream;
    invoke-static {p1}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;->access$200(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;)Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$Stream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 84
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->remove(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;)V

    .line 86
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    return-void
.end method

.method public reserve(Ljava/lang/String;)Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-boolean v2, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->noNewAllocations:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocationLimit:I

    if-lt v2, v3, :cond_1

    :cond_0
    monitor-exit v1

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_1
    new-instance v0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;-><init>(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$1;)V

    .line 69
    iget-object v2, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    new-instance v3, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;

    invoke-direct {v3, v0, p1}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;-><init>(Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocation;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    monitor-exit v1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllocationLimit(I)V
    .locals 2
    .parameter

    .prologue
    .line 124
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    monitor-enter v1

    .line 125
    if-gez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 126
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocationLimit:I

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;

    invoke-virtual {v0}, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection$StreamAllocationReference;->rescind()V

    .line 127
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    return-void
.end method

.method size()I
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->pool:Lcom/avos/avoscloud/okhttp/ConnectionPool;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/okhttp/internal/allocations/Connection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
