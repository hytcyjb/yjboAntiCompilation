.class Lcom/avos/avoscloud/AVSession$3;
.super Lcom/avos/avoscloud/SignatureCallback;
.source "AVSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSession;->createConversation(Ljava/util/List;Ljava/util/Map;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSession;

.field final synthetic val$attributes:Ljava/util/Map;

.field final synthetic val$isTransient:Z

.field final synthetic val$isUnique:Z

.field final synthetic val$members:Ljava/util/List;

.field final synthetic val$requestId:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSession;ILjava/util/List;Ljava/util/Map;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    iput p2, p0, Lcom/avos/avoscloud/AVSession$3;->val$requestId:I

    iput-object p3, p0, Lcom/avos/avoscloud/AVSession$3;->val$members:Ljava/util/List;

    iput-object p4, p0, Lcom/avos/avoscloud/AVSession$3;->val$attributes:Ljava/util/Map;

    iput-boolean p5, p0, Lcom/avos/avoscloud/AVSession$3;->val$isTransient:Z

    iput-boolean p6, p0, Lcom/avos/avoscloud/AVSession$3;->val$isUnique:Z

    invoke-direct {p0}, Lcom/avos/avoscloud/SignatureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignature()Lcom/avos/avoscloud/Signature;
    .locals 3

    .prologue
    .line 613
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->access$200()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->access$200()Lcom/avos/avoscloud/SignatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    #getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v1}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$3;->val$members:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/avos/avoscloud/SignatureFactory;->createSignature(Ljava/lang/String;Ljava/util/List;)Lcom/avos/avoscloud/Signature;

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSignatureReady(Lcom/avos/avoscloud/Signature;Lcom/avos/avoscloud/AVException;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 599
    if-nez p2, :cond_0

    .line 600
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/avos/avoscloud/AVSession$3;->val$requestId:I

    invoke-static {v2, v3, v1, v4}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 602
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    #getter for: Lcom/avos/avoscloud/AVSession;->selfId:Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVSession;->access$100(Lcom/avos/avoscloud/AVSession;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/avos/avoscloud/AVSession$3;->val$members:Ljava/util/List;

    const-string v3, "start"

    iget-object v4, p0, Lcom/avos/avoscloud/AVSession$3;->val$attributes:Ljava/util/Map;

    iget-boolean v6, p0, Lcom/avos/avoscloud/AVSession$3;->val$isTransient:Z

    iget-boolean v7, p0, Lcom/avos/avoscloud/AVSession$3;->val$isUnique:Z

    iget v8, p0, Lcom/avos/avoscloud/AVSession$3;->val$requestId:I

    move-object v5, p1

    invoke-static/range {v0 .. v8}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZZI)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 609
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSession$3;->this$0:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/avos/avoscloud/AVSession$3;->val$requestId:I

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, v2, p2, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0
.end method
