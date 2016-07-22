.class Lcom/avos/avoscloud/AVIMOperationQueue$1;
.super Ljava/lang/Object;
.source "AVIMOperationQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVIMOperationQueue;

.field final synthetic val$op:Lcom/avos/avoscloud/AVIMOperationQueue$Operation;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVIMOperationQueue;Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/avos/avoscloud/AVIMOperationQueue$1;->this$0:Lcom/avos/avoscloud/AVIMOperationQueue;

    iput-object p2, p0, Lcom/avos/avoscloud/AVIMOperationQueue$1;->val$op:Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 68
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMOperationQueue$1;->this$0:Lcom/avos/avoscloud/AVIMOperationQueue;

    iget-object v1, p0, Lcom/avos/avoscloud/AVIMOperationQueue$1;->val$op:Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    iget v1, v1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    iget v1, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v1

    .line 71
    iget-object v2, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->sessionId:Ljava/lang/String;

    iget-object v3, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    iget v0, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->requestId:I

    new-instance v4, Lcom/avos/avoscloud/AVException;

    const/16 v5, 0x7c

    const-string v6, "Timeout Exception"

    invoke-direct {v4, v5, v6}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-static {v2, v3, v0, v4, v1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 74
    invoke-static {}, Lcom/avos/avoscloud/PushService;->checkPushConnection()V

    .line 76
    :cond_0
    return-void
.end method
