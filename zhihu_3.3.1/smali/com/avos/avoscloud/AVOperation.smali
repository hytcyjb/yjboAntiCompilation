.class public Lcom/avos/avoscloud/AVOperation;
.super Ljava/lang/Object;
.source "AVOperation.java"


# instance fields
.field private batchRequest:Ljava/util/List;

.field private callback:Lcom/avos/avoscloud/SaveCallback;

.field private last:Z

.field private sequence:I

.field private type:Lcom/avos/avoscloud/AVOperationType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVOperation;->batchRequest:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/AVOperation;->callback:Lcom/avos/avoscloud/SaveCallback;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avos/avoscloud/AVOperation;->last:Z

    .line 23
    return-void
.end method

.method private static cloneOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/AVOperationType;)Lcom/avos/avoscloud/AVOperation;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    new-instance v0, Lcom/avos/avoscloud/AVOperation;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVOperation;-><init>()V

    .line 73
    iget-object v1, v0, Lcom/avos/avoscloud/AVOperation;->batchRequest:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    iput-object p1, v0, Lcom/avos/avoscloud/AVOperation;->callback:Lcom/avos/avoscloud/SaveCallback;

    .line 75
    iput-object p2, v0, Lcom/avos/avoscloud/AVOperation;->type:Lcom/avos/avoscloud/AVOperationType;

    .line 76
    return-object v0
.end method

.method static pendingOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)Lcom/avos/avoscloud/AVOperation;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 80
    sget-object v0, Lcom/avos/avoscloud/AVOperationType;->kAVOperationPendingOperation:Lcom/avos/avoscloud/AVOperationType;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVOperation;->cloneOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/AVOperationType;)Lcom/avos/avoscloud/AVOperation;

    move-result-object v0

    return-object v0
.end method

.method static snapshotOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;)Lcom/avos/avoscloud/AVOperation;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    sget-object v0, Lcom/avos/avoscloud/AVOperationType;->kAVOperationSnapshot:Lcom/avos/avoscloud/AVOperationType;

    invoke-static {p0, p1, v0}, Lcom/avos/avoscloud/AVOperation;->cloneOperation(Ljava/util/List;Lcom/avos/avoscloud/SaveCallback;Lcom/avos/avoscloud/AVOperationType;)Lcom/avos/avoscloud/AVOperation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBatchRequest()Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avos/avoscloud/AVOperation;->batchRequest:Ljava/util/List;

    return-object v0
.end method

.method public getCallback()Lcom/avos/avoscloud/SaveCallback;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avos/avoscloud/AVOperation;->callback:Lcom/avos/avoscloud/SaveCallback;

    return-object v0
.end method

.method public getLast()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVOperation;->last:Z

    return v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/avos/avoscloud/AVOperation;->sequence:I

    return v0
.end method

.method public invokeCallback(Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVOperation;->getCallback()Lcom/avos/avoscloud/SaveCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVOperation;->getCallback()Lcom/avos/avoscloud/SaveCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/SaveCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 65
    :cond_0
    return-void
.end method

.method public isPendingRequest()Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avos/avoscloud/AVOperation;->type:Lcom/avos/avoscloud/AVOperationType;

    sget-object v1, Lcom/avos/avoscloud/AVOperationType;->kAVOperationPendingOperation:Lcom/avos/avoscloud/AVOperationType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSnapshotRequest()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/AVOperation;->type:Lcom/avos/avoscloud/AVOperationType;

    sget-object v1, Lcom/avos/avoscloud/AVOperationType;->kAVOperationSnapshot:Lcom/avos/avoscloud/AVOperationType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/avos/avoscloud/AVOperation;->callback:Lcom/avos/avoscloud/SaveCallback;

    .line 47
    return-void
.end method

.method public setLast(Z)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/avos/avoscloud/AVOperation;->last:Z

    .line 27
    return-void
.end method

.method public setSequence(I)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/avos/avoscloud/AVOperation;->sequence:I

    .line 55
    return-void
.end method
