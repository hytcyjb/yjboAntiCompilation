.class Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;
.super Landroid/os/HandlerThread;
.source "AsyncEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simple/eventbus/handler/AsyncEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DispatcherThread"
.end annotation


# instance fields
.field protected mAsyncHandler:Landroid/os/Handler;

.field final synthetic this$0:Lorg/simple/eventbus/handler/AsyncEventHandler;


# direct methods
.method public constructor <init>(Lorg/simple/eventbus/handler/AsyncEventHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;->this$0:Lorg/simple/eventbus/handler/AsyncEventHandler;

    .line 76
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 83
    iget-object v0, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;->mAsyncHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mAsyncHandler == null, please call start() first."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/simple/eventbus/handler/AsyncEventHandler$DispatcherThread;->mAsyncHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
