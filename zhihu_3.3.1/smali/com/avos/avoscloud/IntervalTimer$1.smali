.class Lcom/avos/avoscloud/IntervalTimer$1;
.super Landroid/os/Handler;
.source "IntervalTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/IntervalTimer;-><init>(Landroid/os/Looper;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/IntervalTimer;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/IntervalTimer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter

    .prologue
    .line 37
    iget-object v1, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    #getter for: Lcom/avos/avoscloud/IntervalTimer;->mCancelled:Z
    invoke-static {v0}, Lcom/avos/avoscloud/IntervalTimer;->access$000(Lcom/avos/avoscloud/IntervalTimer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    monitor-exit v1

    .line 62
    :goto_0
    return-void

    .line 42
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 61
    :cond_1
    :goto_1
    :pswitch_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 44
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    #getter for: Lcom/avos/avoscloud/IntervalTimer;->mTriggerTimeInFuture:J
    invoke-static {v0}, Lcom/avos/avoscloud/IntervalTimer;->access$100(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 45
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-virtual {v0}, Lcom/avos/avoscloud/IntervalTimer;->onTrigger()V

    .line 48
    iget-object v0, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    iget-object v4, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    #getter for: Lcom/avos/avoscloud/IntervalTimer;->mTriggerTimeInFuture:J
    invoke-static {v4}, Lcom/avos/avoscloud/IntervalTimer;->access$100(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    #getter for: Lcom/avos/avoscloud/IntervalTimer;->mCountdownInterval:J
    invoke-static {v6}, Lcom/avos/avoscloud/IntervalTimer;->access$200(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v6

    add-long/2addr v4, v6

    sub-long v2, v4, v2

    #setter for: Lcom/avos/avoscloud/IntervalTimer;->mTriggerTimeInFuture:J
    invoke-static {v0, v2, v3}, Lcom/avos/avoscloud/IntervalTimer;->access$102(Lcom/avos/avoscloud/IntervalTimer;J)J

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/IntervalTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    #getter for: Lcom/avos/avoscloud/IntervalTimer;->mCountdownInterval:J
    invoke-static {v2}, Lcom/avos/avoscloud/IntervalTimer;->access$200(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/avos/avoscloud/IntervalTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    #getter for: Lcom/avos/avoscloud/IntervalTimer;->mCountdownInterval:J
    invoke-static {v0}, Lcom/avos/avoscloud/IntervalTimer;->access$200(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/IntervalTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/avos/avoscloud/IntervalTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 57
    :pswitch_2
    iget-object v0, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/avos/avoscloud/IntervalTimer$1;->this$0:Lcom/avos/avoscloud/IntervalTimer;

    #getter for: Lcom/avos/avoscloud/IntervalTimer;->mCountdownInterval:J
    invoke-static {v4}, Lcom/avos/avoscloud/IntervalTimer;->access$200(Lcom/avos/avoscloud/IntervalTimer;)J

    move-result-wide v4

    add-long/2addr v2, v4

    #setter for: Lcom/avos/avoscloud/IntervalTimer;->mTriggerTimeInFuture:J
    invoke-static {v0, v2, v3}, Lcom/avos/avoscloud/IntervalTimer;->access$102(Lcom/avos/avoscloud/IntervalTimer;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 42
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
