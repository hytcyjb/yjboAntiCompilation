.class Lcom/avos/avoscloud/AVInternalConversation;
.super Ljava/lang/Object;
.source "AVInternalConversation.java"


# instance fields
.field private conversationGene:Ljava/lang/String;

.field conversationId:Ljava/lang/String;

.field session:Lcom/avos/avoscloud/AVSession;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationGene:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    .line 37
    iput-object p1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalConversation;->getConversationGeneString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationGene:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Connection Lost"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v2, p2, v0, p1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 242
    const/4 v0, 0x0

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getConversationGeneString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationGene:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 504
    const-string v1, "conversation.client"

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v1, "convesration.id"

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationGene:Ljava/lang/String;

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationGene:Ljava/lang/String;

    return-object v0
.end method

.method private onInfoUpdated(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 391
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    const-string v1, "callbackUpdatedAt"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v1, v2, p1, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 395
    return-void
.end method


# virtual methods
.method public addMembers(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVInternalConversation$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVInternalConversation$1;-><init>(Lcom/avos/avoscloud/AVInternalConversation;ILjava/util/List;)V

    .line 72
    new-instance v1, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public getMemberCount(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 226
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v3, v4, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 233
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    const-string v3, "count"

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0
.end method

.method public join(I)V
    .locals 4
    .parameter

    .prologue
    .line 111
    new-instance v0, Lcom/avos/avoscloud/AVInternalConversation$3;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVInternalConversation$3;-><init>(Lcom/avos/avoscloud/AVInternalConversation;I)V

    .line 139
    new-instance v1, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method

.method public kickMembers(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVInternalConversation$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/avos/avoscloud/AVInternalConversation$2;-><init>(Lcom/avos/avoscloud/AVInternalConversation;ILjava/util/List;)V

    .line 106
    new-instance v1, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public mute(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 204
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v3, v4, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 210
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    const-string v3, "mute"

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0
.end method

.method onConversationCreated(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 364
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 365
    const-string v1, "callbackCreatedAt"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v1, v2, p1, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 368
    return-void
.end method

.method onHistoryMessageQuery(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avos/avoscloud/im/v2/AVIMMessage;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 423
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 424
    const-string v1, "callbackHistoryMessages"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 425
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v1, v2, p2, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 427
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/avos/avoscloud/AVSession;->sendUnreadMessagesAck(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method onInvited(I)V
    .locals 3
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 378
    return-void
.end method

.method onInvitedToConversation(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 432
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_0

    .line 434
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    .line 436
    const v2, 0xc358

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 438
    :cond_0
    return-void
.end method

.method onJoined(I)V
    .locals 3
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 373
    return-void
.end method

.method onKicked(I)V
    .locals 3
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 383
    return-void
.end method

.method onKickedFromConversation(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 441
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v1

    .line 443
    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    .line 444
    if-eqz v0, :cond_0

    .line 445
    const v2, 0xc359

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVSession;->removeConversation(Ljava/lang/String;)V

    .line 449
    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->removeConversationCache(Lcom/avos/avoscloud/im/v2/AVIMConversation;)V

    .line 450
    return-void
.end method

.method onMemberCount(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 409
    const-string v1, "callbackMemberCount"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v1, v2, p2, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 412
    return-void
.end method

.method onMembersJoined(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_0

    .line 456
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v1

    .line 457
    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    .line 458
    const v2, 0xc355

    invoke-virtual {v0, v2, p2, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 460
    :cond_0
    return-void
.end method

.method onMembersLeft(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 464
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v1

    .line 467
    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    .line 469
    const v2, 0xc354

    invoke-virtual {v0, v2, p2, p1, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 471
    :cond_0
    return-void
.end method

.method onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 474
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;->AVIMMessageIOTypeIn:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageIOType(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageIOType;)V

    .line 475
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusSent:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 477
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    invoke-static {p1, v0, p2, p3}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->processMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;ZZ)V

    .line 479
    return-void
.end method

.method onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    .locals 1
    .parameter

    .prologue
    .line 482
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->processMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;Lcom/avos/avoscloud/im/v2/AVIMClient;)V

    .line 484
    return-void
.end method

.method onMessageSent(ILjava/lang/String;J)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 416
    const-string v1, "callbackMessageTimeStamp"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 417
    const-string v1, "callbackMessageId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v1, v2, p1, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 420
    return-void
.end method

.method onMuted(I)V
    .locals 3
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 400
    return-void
.end method

.method onOfflineMessagesUnread(I)V
    .locals 5
    .parameter

    .prologue
    .line 491
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getConversationEventHandler()Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_0

    .line 493
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v1

    .line 494
    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMConversation;

    move-result-object v1

    .line 495
    const v2, 0xc35a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/avos/avoscloud/im/v2/AVIMConversationEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 497
    :cond_0
    return-void
.end method

.method onQuit(I)V
    .locals 3
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 388
    return-void
.end method

.method onUnmuted(I)V
    .locals 3
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p1, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 405
    return-void
.end method

.method public processConversationCommandFromClient(ILjava/util/Map;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 250
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 251
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->join(I)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 253
    const-string v0, "conversation.member"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 254
    invoke-virtual {p0, v0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->addMembers(Ljava/util/List;I)V

    goto :goto_0

    .line 255
    :cond_2
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 256
    const-string v0, "conversation.member"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 257
    invoke-virtual {p0, v0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->kickMembers(Ljava/util/List;I)V

    goto :goto_0

    .line 258
    :cond_3
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 259
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->quit(I)V

    goto :goto_0

    .line 260
    :cond_4
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 261
    const-string v0, "conversation.attributes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 263
    invoke-virtual {p0, v0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->updateInfo(Ljava/util/Map;I)V

    goto :goto_0

    .line 264
    :cond_5
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 266
    const-string v0, "mid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v0, "ts"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-string v0, "limit"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v0, "tmid"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v0, "tt"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    move-object v0, p0

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/avos/avoscloud/AVInternalConversation;->queryHistoryMessages(Ljava/lang/String;JILjava/lang/String;JI)V

    goto/16 :goto_0

    .line 272
    :cond_6
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 273
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->mute(I)V

    goto/16 :goto_0

    .line 274
    :cond_7
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 275
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->unmute(I)V

    goto/16 :goto_0

    .line 276
    :cond_8
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MEMBER_COUNT_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 277
    invoke-virtual {p0, p3}, Lcom/avos/avoscloud/AVInternalConversation;->getMemberCount(I)V

    goto/16 :goto_0
.end method

.method public processConversationCommandFromServer(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;ILjava/util/Map;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v2, -0x10001

    .line 283
    const-string v0, "op"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    const-string v1, "started"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    const-string v0, "cdate"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/avos/avoscloud/AVInternalConversation;->onConversationCreated(ILjava/lang/String;)V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const-string v1, "joined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    const-string v0, "initBy"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVInternalConversation;->onInvitedToConversation(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_2
    const-string v1, "removed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 296
    if-eq p2, v2, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 298
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->onQuit(I)V

    goto :goto_0

    .line 299
    :cond_3
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_RM_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 300
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->onKicked(I)V

    goto :goto_0

    .line 303
    :cond_4
    const-string v1, "added"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 305
    if-eq p2, v2, :cond_0

    .line 306
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_JOIN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 307
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->onJoined(I)V

    goto :goto_0

    .line 308
    :cond_5
    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_ADD_MEMBER:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 309
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->onInvited(I)V

    goto :goto_0

    .line 312
    :cond_6
    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 313
    const-string v0, "initBy"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVInternalConversation;->onKickedFromConversation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    :cond_7
    const-string v1, "updated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 318
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 319
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->onMuted(I)V

    goto/16 :goto_0

    .line 320
    :cond_8
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 321
    invoke-virtual {p0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->onUnmuted(I)V

    goto/16 :goto_0

    .line 322
    :cond_9
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 323
    const-string v0, "udate"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/avos/avoscloud/AVInternalConversation;->onInfoUpdated(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :cond_a
    const-string v1, "result"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 326
    const-string v0, "count"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 327
    invoke-virtual {p0, v0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->onMemberCount(II)V

    goto/16 :goto_0

    .line 330
    :cond_b
    const-string v1, "members-joined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 331
    const-string v0, "initBy"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 332
    const-string v1, "m"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 334
    invoke-virtual {p0, v1, v0}, Lcom/avos/avoscloud/AVInternalConversation;->onMembersJoined(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :cond_c
    const-string v1, "members-left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 336
    const-string v0, "initBy"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    const-string v1, "m"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 339
    invoke-virtual {p0, v1, v0}, Lcom/avos/avoscloud/AVInternalConversation;->onMembersLeft(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :cond_d
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 341
    const-string v0, "logs"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 342
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 344
    const-string v1, "from"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 345
    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 346
    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 347
    const-string v1, "msgId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    const-wide/16 v6, -0x1

    invoke-direct/range {v1 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 349
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 350
    instance-of v0, v10, Ljava/lang/String;

    if-nez v0, :cond_f

    instance-of v0, v10, Lcom/alibaba/fastjson/JSON;

    if-eqz v0, :cond_e

    .line 351
    :cond_f
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 355
    invoke-static {v1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->parseTypedMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Lcom/avos/avoscloud/im/v2/AVIMMessage;

    move-result-object v0

    .line 356
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 358
    :cond_10
    invoke-virtual {p0, v8, p2}, Lcom/avos/avoscloud/AVInternalConversation;->onHistoryMessageQuery(Ljava/util/ArrayList;I)V

    goto/16 :goto_0
.end method

.method public queryHistoryMessages(Ljava/lang/String;JILjava/lang/String;JI)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move/from16 v0, p8

    invoke-direct {p0, v2, v0}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    move/from16 v0, p8

    invoke-static {v3, v4, v5, v0}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 198
    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    move-object v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    invoke-static/range {v3 .. v12}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->getConversationMessageQueryPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JI)Lcom/avos/avospush/session/ConversationMessageQueryPacket;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0
.end method

.method public quit(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 179
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUIT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 185
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v5}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "remove"

    move-object v5, v4

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;II)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x11

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 154
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getMessageToken(Lcom/avos/avoscloud/im/v2/AVIMMessage;)Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, p3, 0x11

    if-ne v4, v9, :cond_1

    move v4, v7

    :goto_1
    and-int/lit8 v5, p3, 0x1

    if-nez v5, :cond_2

    move v5, v7

    :goto_2
    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->getConversationMessagePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/avos/avospush/session/ConversationDirectMessagePacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 167
    and-int/lit8 v0, p3, 0x1

    if-lez v0, :cond_4

    .line 168
    iget-object v6, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v1, p3, 0x11

    if-ne v1, v9, :cond_3

    move v4, v7

    :goto_3
    iget-object v5, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    move-object v1, v10

    move-object v2, v10

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/PendingMessageCache$Message;->getMessage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/avos/avoscloud/PendingMessageCache$Message;

    move-result-object v0

    invoke-virtual {v6, v0, p2}, Lcom/avos/avoscloud/AVSession;->storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;I)V

    goto :goto_0

    :cond_1
    move v4, v8

    .line 157
    goto :goto_1

    :cond_2
    move v5, v8

    goto :goto_2

    :cond_3
    move v4, v8

    .line 168
    goto :goto_3

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p2, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0
.end method

.method public unmute(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 215
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p1}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UNMUTE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v3, v4, p1}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 221
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    const-string v3, "unmute"

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0
.end method

.method public updateInfo(Ljava/util/Map;I)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 143
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-direct {p0, v0, p2}, Lcom/avos/avoscloud/AVInternalConversation;->checkSessionStatus(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_UPDATE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    invoke-static {v1, v3, v4, p2}, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->getOperation(ILjava/lang/String;Ljava/lang/String;I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->offer(Lcom/avos/avoscloud/AVIMOperationQueue$Operation;)V

    .line 149
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalConversation;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    const-string v3, "update"

    move-object v4, p1

    move-object v5, v2

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0
.end method
