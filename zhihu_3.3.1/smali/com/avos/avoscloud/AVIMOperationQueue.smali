.class Lcom/avos/avoscloud/AVIMOperationQueue;
.super Ljava/lang/Object;
.source "AVIMOperationQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    }
.end annotation


# static fields
.field static timeoutCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static timeoutHandler:Landroid/os/Handler;

.field static timeoutHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field cache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/avos/avoscloud/AVIMOperationQueue$Operation;",
            ">;"
        }
    .end annotation
.end field

.field operationQueue:Lcom/avos/avospush/session/MessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avospush/session/MessageQueue",
            "<",
            "Lcom/avos/avoscloud/AVIMOperationQueue$Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.avos.avoscloud.im.v2.timeoutHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutHandlerThread:Landroid/os/HandlerThread;

    .line 39
    sget-object v0, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Lcom/avos/avospush/session/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "operation.queue."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    invoke-direct {v0, v1, v2}, Lcom/avos/avospush/session/MessageQueue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    .line 50
    invoke-direct {p0}, Lcom/avos/avoscloud/AVIMOperationQueue;->setupCache()V

    .line 51
    return-void
.end method

.method private setupCache()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 55
    iget v2, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    const v3, -0x10001

    if-eq v2, v3, :cond_0

    .line 56
    iget-object v2, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    iget v3, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->clear()V

    .line 105
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 106
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V
    .locals 4
    .parameter

    .prologue
    .line 62
    iget v0, p1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    const v1, -0x10001

    if-eq v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    iget v1, p1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    new-instance v0, Lcom/avos/avoscloud/AVIMOperationQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$1;-><init>(Lcom/avos/avoscloud/AVIMOperationQueue;Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 78
    sget-object v1, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutHandler:Landroid/os/Handler;

    sget v2, Lcom/avos/avoscloud/AVSession;->timeoutInSecs:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/MessageQueue;->offer(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public poll()Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v0}, Lcom/avos/avospush/session/MessageQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    return-object v0
.end method

.method public poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;
    .locals 4
    .parameter

    .prologue
    .line 85
    const v0, -0x10001

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 87
    iget-object v1, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 88
    iget-object v1, p0, Lcom/avos/avoscloud/AVIMOperationQueue;->operationQueue:Lcom/avos/avospush/session/MessageQueue;

    invoke-virtual {v1, v0}, Lcom/avos/avospush/session/MessageQueue;->remove(Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 90
    sget-object v2, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    if-eqz v1, :cond_0

    .line 92
    sget-object v2, Lcom/avos/avoscloud/AVIMOperationQueue;->timeoutHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll()Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v0

    goto :goto_0
.end method
