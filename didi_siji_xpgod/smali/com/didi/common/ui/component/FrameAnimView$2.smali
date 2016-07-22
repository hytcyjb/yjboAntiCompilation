.class Lcom/didi/common/ui/component/FrameAnimView$2;
.super Ljava/lang/Thread;
.source "FrameAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/ui/component/FrameAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/ui/component/FrameAnimView;


# direct methods
.method constructor <init>(Lcom/didi/common/ui/component/FrameAnimView;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mStart:Z
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$300(Lcom/didi/common/ui/component/FrameAnimView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mReverse:Z
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$400(Lcom/didi/common/ui/component/FrameAnimView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$000(Lcom/didi/common/ui/component/FrameAnimView;)I

    move-result v1

    iget-object v2, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mTotalFrame:I
    invoke-static {v2}, Lcom/didi/common/ui/component/FrameAnimView;->access$500(Lcom/didi/common/ui/component/FrameAnimView;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 114
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$600(Lcom/didi/common/ui/component/FrameAnimView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mInterval:J
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$700(Lcom/didi/common/ui/component/FrameAnimView;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$008(Lcom/didi/common/ui/component/FrameAnimView;)I

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mStart:Z
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$300(Lcom/didi/common/ui/component/FrameAnimView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mReverse:Z
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$400(Lcom/didi/common/ui/component/FrameAnimView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mFrameCount:I
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$000(Lcom/didi/common/ui/component/FrameAnimView;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$600(Lcom/didi/common/ui/component/FrameAnimView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    :try_start_1
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mInterval:J
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$700(Lcom/didi/common/ui/component/FrameAnimView;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :goto_2
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$010(Lcom/didi/common/ui/component/FrameAnimView;)I

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 131
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mReverse:Z
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$400(Lcom/didi/common/ui/component/FrameAnimView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    #getter for: Lcom/didi/common/ui/component/FrameAnimView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/common/ui/component/FrameAnimView;->access$600(Lcom/didi/common/ui/component/FrameAnimView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/didi/common/ui/component/FrameAnimView$2;->this$0:Lcom/didi/common/ui/component/FrameAnimView;

    const/4 v2, 0x0

    #setter for: Lcom/didi/common/ui/component/FrameAnimView;->mStart:Z
    invoke-static {v1, v2}, Lcom/didi/common/ui/component/FrameAnimView;->access$302(Lcom/didi/common/ui/component/FrameAnimView;Z)Z

    .line 137
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_2 .. :try_end_2} :catch_3

    .line 138
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 139
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 140
    :catch_2
    move-exception v0

    .line 141
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 142
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/IllegalMonitorStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalMonitorStateException;->printStackTrace()V

    goto/16 :goto_0
.end method
