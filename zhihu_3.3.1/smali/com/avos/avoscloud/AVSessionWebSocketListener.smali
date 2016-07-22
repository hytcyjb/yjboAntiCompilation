.class Lcom/avos/avoscloud/AVSessionWebSocketListener;
.super Ljava/lang/Object;
.source "AVSessionWebSocketListener.java"

# interfaces
.implements Lcom/avos/avospush/push/AVWebSocketListener;


# static fields
.field private static final CMD_STATUS_OFF:Ljava/lang/String; = "off"

.field private static final CMD_STATUS_ON:Ljava/lang/String; = "on"

.field private static final CODE_SESSION_SIGNATURE_FAILURE:I = 0x1006

.field private static final CODE_SESSION_TOKEN_FAILURE:I = 0x1010

.field private static final FROM_PEER_ID:Ljava/lang/String; = "fromPeerId"

.field private static final MSG:Ljava/lang/String; = "msg"

.field private static final ONLINE_SESSION_PEER_IDS:Ljava/lang/String; = "onlineSessionPeerIds"

.field private static final SESSION_MESSASGE_DEPOT:Ljava/lang/String; = "com.avos.push.session.message."

.field private static final SESSION_PEER_IDS:Ljava/lang/String; = "sessionPeerIds"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private final depot:Lcom/avos/avospush/session/StaleMessageDepot;

.field session:Lcom/avos/avoscloud/AVSession;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVSession;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    .line 40
    new-instance v0, Lcom/avos/avospush/session/StaleMessageDepot;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.avos.push.session.message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avospush/session/StaleMessageDepot;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    .line 41
    return-void
.end method

.method private genSessionAckPacket(Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;
    .locals 2
    .parameter

    .prologue
    .line 556
    new-instance v0, Lcom/avos/avospush/session/SessionAckPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/SessionAckPacket;-><init>()V

    .line 557
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionAckPacket;->setAppId(Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionAckPacket;->setPeerId(Ljava/lang/String;)V

    .line 559
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 560
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/SessionAckPacket;->setMessageId(Ljava/lang/String;)V

    .line 563
    :cond_0
    return-object v0
.end method

.method private onAckError(Ljava/util/HashMap;Lcom/avos/avoscloud/PendingMessageCache$Message;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/PendingMessageCache$Message;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-boolean v0, v0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-eqz v0, :cond_2

    .line 365
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 367
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v3

    .line 368
    iget v0, v3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 369
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 370
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 372
    :cond_0
    iget v0, v3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v4

    .line 373
    const-string v0, "code"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 375
    const-string v0, "appCode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    const-string v0, "appCode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 378
    :cond_1
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    new-instance v6, Lcom/avos/avoscloud/im/v2/AVIMException;

    invoke-direct {v6, v5, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(IILjava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v6, v4}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 399
    :goto_0
    return-void

    .line 384
    :cond_2
    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 385
    iget-object v0, p2, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v4, p2, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVInternalGroup;

    .line 388
    new-instance v4, Lcom/avos/avoscloud/AVMessage;

    iget-object v5, p2, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Z)V

    .line 389
    invoke-virtual {v4, v2, v3}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 390
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v0, v4}, Lcom/avos/avoscloud/AVInternalGroup;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 393
    :cond_3
    new-instance v0, Lcom/avos/avoscloud/AVMessage;

    iget-object v4, p2, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    iget-object v5, p2, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    invoke-direct {v0, v4, v5, v1}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 394
    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 395
    iput-wide v2, p2, Lcom/avos/avoscloud/PendingMessageCache$Message;->timestamp:J

    .line 396
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0
.end method

.method private sendClearUnreadAck(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 645
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->isOnlyPushCount()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 646
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 647
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;->getUnreadClearPacket(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;

    move-result-object v0

    .line 649
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    goto :goto_0

    .line 652
    :cond_0
    return-void
.end method


# virtual methods
.method public onAckCommand(Ljava/util/HashMap;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 403
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/AVSession;->setServerAckReceived(J)V

    .line 404
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 405
    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 406
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/PendingMessageCache;->poll(Ljava/lang/String;)Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 407
    const-string v1, "code"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVSessionWebSocketListener;->onAckError(Ljava/util/HashMap;Lcom/avos/avoscloud/PendingMessageCache$Message;)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-boolean v1, v1, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v3

    .line 413
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 414
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 415
    invoke-virtual {v3, v2, v1, v4, v5}, Lcom/avos/avoscloud/AVInternalConversation;->onMessageSent(ILjava/lang/String;J)V

    .line 416
    iget-boolean v2, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->requestReceipt:Z

    if-eqz v2, :cond_0

    .line 417
    iput-wide v4, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->timestamp:J

    .line 418
    iput-object v1, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    .line 419
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/avos/avospush/session/MessageReceiptCache;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-boolean v1, v1, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-nez v1, :cond_0

    .line 422
    iget-object v1, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 423
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVInternalGroup;

    .line 424
    new-instance v2, Lcom/avos/avoscloud/AVMessage;

    iget-object v0, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    invoke-direct {v2, v0, v6}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Z)V

    .line 425
    invoke-virtual {v2, v4, v5}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 426
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v1, v2}, Lcom/avos/avoscloud/AVInternalGroup;->onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 429
    :cond_3
    :try_start_0
    new-instance v1, Lcom/avos/avoscloud/AVMessage;

    iget-object v2, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    iget-object v3, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v3, v6}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 430
    invoke-virtual {v1, v4, v5}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 431
    iput-wide v4, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->timestamp:J

    .line 432
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2, v3, v4, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    .line 433
    iget-boolean v1, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->requestReceipt:Z

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    const-string v1, "uid"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/avos/avospush/session/MessageReceiptCache;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onAckReqCommand(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 361
    return-void
.end method

.method public onConversationCommand(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v2, -0x10001

    .line 504
    const-string v0, "results"

    const-string v1, "op"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 509
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v0

    .line 510
    iget v0, v0, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 511
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVSessionWebSocketListener;->onConversationQuery(Ljava/util/Map;)V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 517
    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 519
    :goto_1
    const-string v0, "op"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 521
    const/4 v3, 0x0

    .line 522
    const-string v4, "added"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "removed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "updated"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "result"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-eq v1, v2, :cond_3

    .line 529
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v2

    .line 530
    iget v0, v2, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v0

    .line 531
    iget-object v2, v2, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    .line 539
    :goto_2
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 540
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v2

    .line 541
    invoke-virtual {v2, v0, v1, p1}, Lcom/avos/avoscloud/AVInternalConversation;->processConversationCommandFromServer(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;ILjava/util/Map;)V

    goto :goto_0

    .line 533
    :cond_3
    const-string v2, "started"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 534
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    .line 536
    :cond_4
    const-string v0, "cid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    move-object v0, v3

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public onConversationQuery(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 549
    const-string v0, "results"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 551
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v2, v3, v1, v0, v4}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 553
    return-void
.end method

.method public onDirectCommand(Ljava/util/HashMap;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 202
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    const-string v1, "fromPeerId"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 204
    const-string v1, "roomId"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    const-string v2, "cid"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    const-string v4, "timestamp"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 208
    const-string v5, "id"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .line 209
    const-string v5, "transient"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "transient"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v9, v5

    .line 211
    :goto_0
    const-string v5, "offline"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "offline"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 212
    :cond_0
    const-string v5, "hasMore"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "hasMore"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move v10, v6

    .line 215
    :goto_1
    if-nez v9, :cond_1

    .line 216
    :try_start_0
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 217
    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v5}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v8}, Lcom/avos/avospush/session/ConversationAckPacket;->getConversationAckPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avospush/session/ConversationAckPacket;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 224
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->depot:Lcom/avos/avospush/session/StaleMessageDepot;

    invoke-virtual {v5, v8}, Lcom/avos/avospush/session/StaleMessageDepot;->putStableMessage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 226
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v11

    .line 227
    new-instance v1, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    invoke-direct/range {v1 .. v7}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 228
    invoke-virtual {v1, v8}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v11, v1, v10, v9}, Lcom/avos/avoscloud/AVInternalConversation;->onMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;ZZ)V

    .line 250
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v9, v6

    .line 209
    goto :goto_0

    :cond_4
    move v10, v6

    .line 212
    goto :goto_1

    .line 220
    :cond_5
    const-string v5, "id"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/avos/avoscloud/AVSessionWebSocketListener;->genSessionAckPacket(Ljava/lang/String;)Lcom/avos/avospush/session/SessionAckPacket;

    move-result-object v5

    invoke-static {v5}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 247
    :catch_0
    move-exception v0

    .line 248
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 232
    :cond_6
    :try_start_1
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 233
    new-instance v1, Lcom/avos/avoscloud/AVMessage;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1, v3}, Lcom/avos/avoscloud/AVMessage;->setFromPeerId(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 236
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_3

    .line 239
    :cond_7
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVInternalGroup;

    .line 240
    new-instance v2, Lcom/avos/avoscloud/AVMessage;

    invoke-direct {v2, v0}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/avos/avoscloud/AVMessage;->setTimestamp(J)V

    .line 242
    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVMessage;->setFromPeerId(Ljava/lang/String;)V

    .line 243
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v1, v2}, Lcom/avos/avoscloud/AVInternalGroup;->onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public onError(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 568
    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v2, -0x10001

    if-eq v0, v2, :cond_2

    .line 572
    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 574
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v3

    .line 575
    iget v0, v3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v4}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 576
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 577
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 579
    :cond_0
    const-string v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 581
    const-string v0, "appCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    const-string v0, "appCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 584
    :cond_1
    const-string v0, "reason"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 586
    iget v3, v3, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v3

    .line 588
    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v5}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/avos/avoscloud/im/v2/AVIMException;

    invoke-direct {v7, v4, v1, v0}, Lcom/avos/avoscloud/im/v2/AVIMException;-><init>(IILjava/lang/String;)V

    invoke-static {v5, v6, v2, v7, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 593
    :cond_2
    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 594
    const-string v0, "code"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 596
    const/16 v1, 0x1006

    if-ne v1, v0, :cond_4

    .line 597
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-boolean v1, v1, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVSessionCacheHelper;->removeSession(Ljava/lang/String;Z)V

    .line 604
    :cond_3
    :goto_0
    return-void

    .line 598
    :cond_4
    const/16 v1, 0x1010

    if-ne v1, v0, :cond_3

    .line 600
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVSessionCacheHelper;->removeIMSessionToken(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSessionWebSocketListener;->onWebSocketOpen()V

    goto :goto_0
.end method

.method public onGroupCommand(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-static {p1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/util/Map;)V

    .line 460
    :cond_0
    const-string v0, "roomId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVInternalGroup;

    .line 463
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVInternalGroup;->processGroupCommand(Ljava/util/Map;)V

    .line 464
    return-void
.end method

.method public onHistoryMessageQuery(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, -0x10001

    if-eq v0, v1, :cond_0

    .line 612
    const-string v0, "i"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 614
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v1

    .line 615
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v1

    .line 616
    const-string v2, "op"

    const-string v3, "logs"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v1, v2, v0, p1}, Lcom/avos/avoscloud/AVInternalConversation;->processConversationCommandFromServer(Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;ILjava/util/Map;)V

    .line 621
    :cond_0
    return-void
.end method

.method public onListenerAdded(Z)V
    .locals 1
    .parameter

    .prologue
    .line 446
    if-eqz p1, :cond_1

    .line 447
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const-string v0, "web socket opened, send session open."

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avoscloud/AVSessionWebSocketListener;->onWebSocketOpen()V

    .line 452
    :cond_1
    return-void
.end method

.method public onListenerRemoved()V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public onMessageReceipt(Ljava/util/HashMap;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    :try_start_0
    const-string v2, "t"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 475
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v4

    const-string v3, "id"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/avos/avospush/session/MessageReceiptCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 478
    if-nez v3, :cond_0

    .line 500
    :goto_0
    return-void

    .line 481
    :cond_0
    move-object v0, v3

    check-cast v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    move-object v10, v0

    .line 482
    iget-object v3, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 484
    iget-object v4, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    .line 485
    new-instance v3, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v5}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->timestamp:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lcom/avos/avoscloud/im/v2/AVIMMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 487
    iget-object v2, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageId(Ljava/lang/String;)V

    .line 488
    iget-object v2, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setContent(Ljava/lang/String;)V

    .line 489
    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;->AVIMMessageStatusReceipt:Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;

    invoke-virtual {v3, v2}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setMessageStatus(Lcom/avos/avoscloud/im/v2/AVIMMessage$AVIMMessageStatus;)V

    .line 490
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2, v4}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v2

    .line 491
    invoke-virtual {v2, v3}, Lcom/avos/avoscloud/AVInternalConversation;->onMessageReceipt(Lcom/avos/avoscloud/im/v2/AVIMMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v2

    .line 498
    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3, v4, v5, v2}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 493
    :cond_1
    :try_start_1
    new-instance v3, Lcom/avos/avoscloud/AVMessage;

    iget-object v4, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    iget-object v5, v10, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 494
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/avos/avoscloud/AVMessage;->setReceiptTimestamp(J)V

    .line 495
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v4, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2, v4, v5, v3}, Lcom/avos/avoscloud/AVInternalSessionListener;->onMessageDelivered(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onOfflineMessageUnread(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 625
    invoke-static {}, Lcom/avos/avoscloud/AVSession;->isOnlyPushCount()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "convs"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    const-string v0, "convs"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 627
    if-eqz v0, :cond_1

    .line 628
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 629
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 630
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "cid"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "unread"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 632
    iget-object v4, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v4, v0}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v4

    .line 633
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/avos/avoscloud/AVInternalConversation;->onOfflineMessagesUnread(I)V

    .line 634
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 636
    :cond_0
    invoke-direct {p0, v2}, Lcom/avos/avoscloud/AVSessionWebSocketListener;->sendClearUnreadAck(Ljava/util/List;)V

    .line 639
    :cond_1
    return-void
.end method

.method public onPresenceCommand(Ljava/util/HashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    const-string v0, "status"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    const-string v1, "sessionPeerIds"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 180
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onStatusOnline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 189
    :cond_1
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onStatusOffline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 194
    :catch_1
    move-exception v0

    .line 195
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSessionCommand(Ljava/util/HashMap;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v1, -0x10001

    .line 254
    const-string v0, "op"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    const-string v2, "opened"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 256
    const-string v0, "onlineSessionPeerIds"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "onlineSessionPeerIds"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 258
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 261
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2, v3, v4, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onStatusOnline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    .line 266
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 267
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 269
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 271
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 274
    if-eq v0, v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    :cond_1
    move v1, v0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V

    .line 279
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-boolean v0, v0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-eqz v0, :cond_3

    const-string v0, "st"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "stTtl"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    const-string v0, "st"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "stTtl"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v2, v0, v1}, Lcom/avos/avoscloud/AVSessionCacheHelper;->addIMSessionToken(Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    :cond_3
    :goto_0
    return-void

    .line 288
    :cond_4
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 289
    const-string v0, "session resumed"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 291
    :cond_5
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionResumed(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 296
    :cond_6
    const-string v2, "added"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 297
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 298
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/PendingMessageCache;->poll(Ljava/lang/String;)Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 300
    const-string v1, "onlineSessionPeerIds"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 301
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->onlinePeerIdSet:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 304
    :try_start_1
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onPeersWatched(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    .line 306
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onStatusOnline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 308
    :catch_1
    move-exception v0

    .line 309
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 312
    :cond_7
    const-string v2, "query-result"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 313
    const-string v0, "onlineSessionPeerIds"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 316
    const-string v2, "i"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "i"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 317
    const-string v1, "i"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 319
    :cond_8
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onOnlineQuery(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;I)V

    goto/16 :goto_0

    .line 322
    :cond_9
    const-string v2, "removed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 323
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 324
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/PendingMessageCache;->poll(Ljava/lang/String;)Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 327
    :try_start_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v4, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4}, Lcom/avos/avoscloud/AVInternalSessionListener;->onPeersUnwatched(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    .line 329
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onStatusOffline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 331
    :catch_2
    move-exception v0

    .line 332
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 334
    :cond_a
    const-string v2, "closed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    const-string v0, "code"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 336
    const-string v0, "code"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionClosedFromServer(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V

    goto/16 :goto_0

    .line 341
    :cond_b
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 342
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 344
    if-eq v0, v1, :cond_c

    .line 345
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    :cond_c
    move v1, v0

    .line 348
    :cond_d
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0, v2, v3, v1}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V

    goto/16 :goto_0
.end method

.method public onWebSocketClose()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->clearOnlinePeerIds()V

    .line 136
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVInternalSessionListener;->onSessionPaused(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V

    .line 141
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/PendingMessageCache;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/PendingMessageCache;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->pendingMessages:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/PendingMessageCache;->poll()Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/PendingMessageCache$Message;

    .line 144
    iget-object v1, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->roomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVInternalGroup;

    .line 146
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    new-instance v3, Lcom/avos/avoscloud/AVMessage;

    iget-object v0, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2, v1, v3}, Lcom/avos/avoscloud/AVInternalGroup;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avos/avoscloud/AVInternalSessionListener;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    .line 174
    :cond_0
    return-void

    .line 148
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/avos/avoscloud/AVInternalConversation;->conversationId:Ljava/lang/String;

    iget-object v0, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Connection Lost"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v2, v1, v0, v3, v4}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->sessionListener:Lcom/avos/avoscloud/AVInternalSessionListener;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    new-instance v4, Lcom/avos/avoscloud/AVMessage;

    iget-object v5, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->msg:Ljava/lang/String;

    iget-object v0, v0, Lcom/avos/avoscloud/PendingMessageCache$Message;->peerIds:Ljava/util/List;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v0, v6}, Lcom/avos/avoscloud/AVMessage;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/avos/avoscloud/AVInternalSessionListener;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto/16 :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVIMOperationQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    iget-object v1, v1, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v1, v1, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    iget-object v1, v1, Lcom/avos/avoscloud/AVIMOperationQueue;->cache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 164
    iget-object v2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v2, v2, Lcom/avos/avoscloud/AVSession;->conversationOperationCache:Lcom/avos/avoscloud/AVIMOperationQueue;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/AVIMOperationQueue;->poll(I)Lcom/avos/avoscloud/AVIMOperationQueue$Operation;

    move-result-object v2

    .line 165
    iget-object v3, v2, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->sessionId:Ljava/lang/String;

    iget-object v4, v2, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->conversationId:Ljava/lang/String;

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Connection Lost"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget v2, v2, Lcom/avos/avoscloud/AVIMOperationQueue$Operation;->operation:I

    invoke-static {v2}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v2

    invoke-static {v3, v4, v1, v5, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onWebSocketOpen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 55
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionResume:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-string v0, "web socket opened, send session open."

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->d(Ljava/lang/String;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    iget-boolean v0, v0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVSessionCacheHelper;->getIMSessionToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 67
    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "open"

    invoke-static {v1, v2, v0}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v3}, Lcom/avos/avospush/session/SessionControlPacket;->setReconnectionRequest(Z)V

    .line 71
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 131
    :cond_2
    :goto_1
    return-void

    .line 61
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_4
    new-instance v0, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVSessionWebSocketListener$1;-><init>(Lcom/avos/avoscloud/AVSessionWebSocketListener;)V

    .line 119
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_5

    .line 120
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/avos/avoscloud/AVSessionWebSocketListener$2;

    invoke-direct {v2, p0, v0}, Lcom/avos/avoscloud/AVSessionWebSocketListener$2;-><init>(Lcom/avos/avoscloud/AVSessionWebSocketListener;Lcom/avos/avoscloud/SignatureCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 127
    :cond_5
    new-instance v1, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    new-array v0, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
