.class Lcom/avos/avoscloud/PushConnectionRetryController$1;
.super Ljava/lang/Object;
.source "PushConnectionRetryController.java"

# interfaces
.implements Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushConnectionRetryController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PushConnectionRetryController;

.field final synthetic val$handler:Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PushConnectionRetryController;Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/avos/avoscloud/PushConnectionRetryController$1;->this$0:Lcom/avos/avoscloud/PushConnectionRetryController;

    iput-object p2, p0, Lcom/avos/avoscloud/PushConnectionRetryController$1;->val$handler:Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController$1;->this$0:Lcom/avos/avoscloud/PushConnectionRetryController;

    #setter for: Lcom/avos/avoscloud/PushConnectionRetryController;->nextRequestCode:I
    invoke-static {v0, p1}, Lcom/avos/avoscloud/PushConnectionRetryController;->access$002(Lcom/avos/avoscloud/PushConnectionRetryController;I)I

    .line 39
    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    .line 40
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get push server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v4, p1, :cond_1

    const-string v0, "master server"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 54
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController$1;->val$handler:Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;

    invoke-interface {v0, p1, p2}, Lcom/avos/avoscloud/PushConnectionRetryController$ConnectionResponseHandler;->onResponse(ILjava/lang/String;)V

    .line 55
    return-void

    .line 41
    :cond_1
    const-string v0, "secondary server."

    goto :goto_0

    .line 45
    :cond_2
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "router failure. reconnect in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/PushConnectionRetryController$1;->this$0:Lcom/avos/avoscloud/PushConnectionRetryController;

    #calls: Lcom/avos/avoscloud/PushConnectionRetryController;->getInterval()J
    invoke-static {v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->access$100(Lcom/avos/avoscloud/PushConnectionRetryController;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController$1;->this$0:Lcom/avos/avoscloud/PushConnectionRetryController;

    iget-object v0, v0, Lcom/avos/avoscloud/PushConnectionRetryController;->failureTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 50
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController$1;->this$0:Lcom/avos/avoscloud/PushConnectionRetryController;

    iget-object v0, v0, Lcom/avos/avoscloud/PushConnectionRetryController;->router:Lcom/avos/avospush/push/AVPushRouter;

    invoke-virtual {v0}, Lcom/avos/avospush/push/AVPushRouter;->cleanPushServerCache()V

    .line 51
    iget-object v0, p0, Lcom/avos/avoscloud/PushConnectionRetryController$1;->this$0:Lcom/avos/avoscloud/PushConnectionRetryController;

    #getter for: Lcom/avos/avoscloud/PushConnectionRetryController;->reconnectTaskHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/avos/avoscloud/PushConnectionRetryController;->access$200(Lcom/avos/avoscloud/PushConnectionRetryController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/PushConnectionRetryController$1;->this$0:Lcom/avos/avoscloud/PushConnectionRetryController;

    #getter for: Lcom/avos/avoscloud/PushConnectionRetryController;->reconnectTaskHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/avos/avoscloud/PushConnectionRetryController;->access$200(Lcom/avos/avoscloud/PushConnectionRetryController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/PushConnectionRetryController$1;->this$0:Lcom/avos/avoscloud/PushConnectionRetryController;

    #calls: Lcom/avos/avoscloud/PushConnectionRetryController;->getInterval()J
    invoke-static {v2}, Lcom/avos/avoscloud/PushConnectionRetryController;->access$100(Lcom/avos/avoscloud/PushConnectionRetryController;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method
