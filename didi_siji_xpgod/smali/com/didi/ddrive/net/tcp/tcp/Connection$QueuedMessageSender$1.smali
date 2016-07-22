.class Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender$1;
.super Landroid/os/Handler;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender$1;->this$1:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 252
    iget-object v3, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender$1;->this$1:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    iget-object v3, v3, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->this$0:Lcom/didi/ddrive/net/tcp/tcp/Connection;

    #getter for: Lcom/didi/ddrive/net/tcp/tcp/Connection;->mActive:Z
    invoke-static {v3}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->access$000(Lcom/didi/ddrive/net/tcp/tcp/Connection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 276
    :goto_0
    return-void

    .line 256
    :cond_0
    const/4 v2, 0x0

    .line 257
    .local v2, message:Ljava/lang/String;
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_2

    .line 258
    const-string v3, "Connection"

    const-string v4, "send heartbeat"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender$1;->removeMessages(I)V

    .line 260
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender$1;->this$1:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    iget-object v4, v4, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->this$0:Lcom/didi/ddrive/net/tcp/tcp/Connection;

    #getter for: Lcom/didi/ddrive/net/tcp/tcp/Connection;->mHeartbeatInterval:J
    invoke-static {v4}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->access$100(Lcom/didi/ddrive/net/tcp/tcp/Connection;)J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender$1;->sendEmptyMessageDelayed(IJ)Z

    .line 261
    iget-object v3, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender$1;->this$1:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    iget-object v3, v3, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->this$0:Lcom/didi/ddrive/net/tcp/tcp/Connection;

    #getter for: Lcom/didi/ddrive/net/tcp/tcp/Connection;->mHeartbeatMessage:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->access$200(Lcom/didi/ddrive/net/tcp/tcp/Connection;)Ljava/lang/String;

    move-result-object v2

    .line 270
    :cond_1
    :goto_1
    const-string v3, "Connection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender$1;->this$1:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    iget-object v3, v3, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->this$0:Lcom/didi/ddrive/net/tcp/tcp/Connection;

    #getter for: Lcom/didi/ddrive/net/tcp/tcp/Connection;->mChannel:Lcom/didi/ddrive/net/tcp/tcp/Channel;
    invoke-static {v3}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->access$400(Lcom/didi/ddrive/net/tcp/tcp/Connection;)Lcom/didi/ddrive/net/tcp/tcp/Channel;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/didi/ddrive/net/tcp/tcp/Channel;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    iget-object v3, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender$1;->this$1:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    iget-object v3, v3, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->this$0:Lcom/didi/ddrive/net/tcp/tcp/Connection;

    #calls: Lcom/didi/ddrive/net/tcp/tcp/Connection;->recreate()V
    invoke-static {v3}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->access$500(Lcom/didi/ddrive/net/tcp/tcp/Connection;)V

    goto :goto_0

    .line 262
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_3

    .line 263
    const-string v3, "Connection"

    const-string v4, "send message"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto :goto_1

    .line 265
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 266
    const-string v3, "Connection"

    const-string v4, "recreate"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender$1;->this$1:Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;

    iget-object v3, v3, Lcom/didi/ddrive/net/tcp/tcp/Connection$QueuedMessageSender;->this$0:Lcom/didi/ddrive/net/tcp/tcp/Connection;

    #calls: Lcom/didi/ddrive/net/tcp/tcp/Connection;->notifyRecreate()V
    invoke-static {v3}, Lcom/didi/ddrive/net/tcp/tcp/Connection;->access$300(Lcom/didi/ddrive/net/tcp/tcp/Connection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
