.class final Lthread/pool/ThreadPool$3;
.super Landroid/os/Handler;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lthread/pool/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 65
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 67
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lthread/Job;

    .line 68
    .local v0, job:Lthread/Job;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lthread/Job;->isFinish()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {v0}, Lthread/Job;->onTimeOut()V

    .line 72
    :cond_1
    invoke-virtual {v0}, Lthread/Job;->cancel()V

    goto :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
