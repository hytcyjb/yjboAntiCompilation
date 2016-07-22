.class public Lcom/avos/avoscloud/AVOperationQueue;
.super Ljava/lang/Object;
.source "AVOperationQueue.java"


# instance fields
.field private volatile currentSequence:I

.field private queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/avos/avoscloud/AVOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVOperationQueue;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 18
    return-void
.end method


# virtual methods
.method public addPendingOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)Lcom/avos/avoscloud/AVOperation;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVOperation;->pendingOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)Lcom/avos/avoscloud/AVOperation;

    move-result-object v0

    .line 33
    iget v1, p0, Lcom/avos/avoscloud/AVOperationQueue;->currentSequence:I

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVOperation;->setSequence(I)V

    .line 34
    iget-object v1, p0, Lcom/avos/avoscloud/AVOperationQueue;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 35
    return-object v0
.end method

.method public addSnapshotOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)Lcom/avos/avoscloud/AVOperation;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVOperation;->snapshotOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)Lcom/avos/avoscloud/AVOperation;

    move-result-object v0

    .line 26
    iget v1, p0, Lcom/avos/avoscloud/AVOperationQueue;->currentSequence:I

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVOperation;->setSequence(I)V

    .line 27
    iget-object v1, p0, Lcom/avos/avoscloud/AVOperationQueue;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 28
    return-object v0
.end method

.method public clearOperationWithSequence(I)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avos/avoscloud/AVOperationQueue;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 48
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVOperation;

    .line 50
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVOperation;->getSequence()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method

.method public declared-synchronized increaseSequence()V
    .locals 1

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/avos/avoscloud/AVOperationQueue;->currentSequence:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/avos/avoscloud/AVOperationQueue;->currentSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public noPendingRequest()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/avos/avoscloud/AVOperationQueue;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public popHead()Lcom/avos/avoscloud/AVOperation;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avos/avoscloud/AVOperationQueue;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVOperation;

    return-object v0
.end method
