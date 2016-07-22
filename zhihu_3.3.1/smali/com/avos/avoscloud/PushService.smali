.class public Lcom/avos/avoscloud/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avoscloud/PushService$7;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static _installationSaveHandler:Landroid/os/Handler;

.field private static connecting:Ljava/lang/Object;

.field private static volatile isStarted:Z

.field static pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

.field private static sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;


# instance fields
.field connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

.field shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const-class v0, Lcom/avos/avoscloud/PushService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/avos/avospush/push/AVPushServiceAppManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/PushService;->connecting:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    .line 692
    new-instance v0, Lcom/avos/avoscloud/PushService$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/PushService$6;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/avos/avoscloud/PushService;->_installationSaveHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 663
    return-void
.end method

.method static synthetic access$000()Lcom/avos/avoscloud/AVPushConnectionManager;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/avos/avoscloud/PushService;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processIMRequests(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/avos/avoscloud/PushService;Landroid/content/Intent;Lcom/avos/avoscloud/AVException;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/avos/avoscloud/PushService;->reportRouterConnectionException(Landroid/content/Intent;Lcom/avos/avoscloud/AVException;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/avos/avoscloud/PushService;->_installationSaveHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static checkPushConnection()V
    .locals 2

    .prologue
    .line 482
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-nez v0, :cond_0

    .line 483
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/PushService;->startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->checkPong()V

    goto :goto_0
.end method

.method static getConnectionManagerInstance(Landroid/content/Context;)Lcom/avos/avoscloud/AVPushConnectionManager;
    .locals 3
    .parameter

    .prologue
    .line 683
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-nez v0, :cond_0

    .line 684
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Init push manager"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getInstance(Landroid/content/Context;Lcom/avos/avospush/push/AVPushServiceAppManager;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVPushConnectionManager;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 689
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    return-object v0
.end method

.method protected static isPushConnectionBroken()Z
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->isConnectedToPushServer()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isSessionOpen(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 465
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 466
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->isOpen()Z

    move-result v0

    .line 471
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processConversationEventsFromClient(Landroid/content/Intent;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 583
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conversation.operation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 584
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conversation.client"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 585
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "convesration.id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 586
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conversation.requestId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 587
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v0

    .line 588
    iput-boolean v9, v0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    .line 591
    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v8

    .line 592
    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    if-eq v8, v1, :cond_5

    .line 593
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "conversation.data"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 594
    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 595
    const-class v4, Ljava/util/Map;

    invoke-static {v1, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object v4, v1

    .line 599
    :goto_0
    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    if-eq v8, v1, :cond_1

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_MESSAGE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    if-eq v8, v1, :cond_1

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    if-eq v8, v1, :cond_1

    .line 602
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->checkSessionStatus()Lcom/avos/avoscloud/AVException;

    move-result-object v1

    .line 603
    if-eqz v1, :cond_1

    .line 604
    invoke-static {v6, v7, v5, v1, v8}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 606
    invoke-static {}, Lcom/avos/avoscloud/PushService;->checkPushConnection()V

    .line 667
    :cond_0
    :goto_1
    return-void

    .line 611
    :cond_1
    sget-object v1, Lcom/avos/avoscloud/PushService$7;->$SwitchMap$com$avos$avoscloud$im$v2$Conversation$AVIMOperation:[I

    invoke-virtual {v8}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->ordinal()I

    move-result v8

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_0

    .line 660
    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    invoke-virtual {v0, v7}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0, v3, v4, v5}, Lcom/avos/avoscloud/AVInternalConversation;->processConversationCommandFromClient(ILjava/util/Map;I)V

    goto :goto_1

    .line 613
    :pswitch_0
    const-string v1, "PARAM_SESSION_PEERIDS"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 615
    const-string v3, "PARAM_SESSION_TAG"

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 616
    const-string v2, "PARAM_SESSION_TAG"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 618
    :cond_2
    invoke-virtual {v0, v1, v2, v5}, Lcom/avos/avoscloud/AVSession;->open(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_1

    .line 621
    :pswitch_1
    invoke-virtual {v0, v5}, Lcom/avos/avoscloud/AVSession;->close(I)V

    goto :goto_1

    .line 624
    :pswitch_2
    const-string v1, "client.oneline"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 625
    invoke-virtual {v0, v1, v5}, Lcom/avos/avoscloud/AVSession;->queryOnlinePeers(Ljava/util/List;I)V

    goto :goto_1

    .line 628
    :pswitch_3
    const-string v1, "conversation.member"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 630
    const-string v3, "conversation.attributes"

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 631
    const-string v2, "conversation.attributes"

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 633
    :cond_3
    const/4 v3, 0x0

    .line 634
    const-string v6, "conversation.transient"

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 635
    const-string v3, "conversation.transient"

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 638
    :cond_4
    const-string v6, "conversation.unique"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 639
    invoke-virtual/range {v0 .. v5}, Lcom/avos/avoscloud/AVSession;->createConversation(Ljava/util/List;Ljava/util/Map;ZZI)V

    goto/16 :goto_1

    .line 642
    :pswitch_4
    invoke-virtual {v0, v4, v5}, Lcom/avos/avoscloud/AVSession;->conversationQuery(Ljava/util/Map;I)V

    goto/16 :goto_1

    .line 645
    :pswitch_5
    invoke-static {v7}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 646
    invoke-virtual {v0, v7}, Lcom/avos/avoscloud/AVSession;->getConversation(Ljava/lang/String;)Lcom/avos/avoscloud/AVInternalConversation;

    move-result-object v1

    .line 647
    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "conversation.data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMMessage;

    .line 649
    invoke-virtual {v0, v6}, Lcom/avos/avoscloud/im/v2/AVIMMessage;->setFrom(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "conversation.message.flag"

    invoke-virtual {v2, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 652
    invoke-virtual {v1, v0, v5, v2}, Lcom/avos/avoscloud/AVInternalConversation;->sendMessage(Lcom/avos/avoscloud/im/v2/AVIMMessage;II)V

    goto/16 :goto_1

    .line 657
    :pswitch_6
    invoke-direct {p0, v0, v5}, Lcom/avos/avoscloud/PushService;->processSessionConnectionStatus(Lcom/avos/avoscloud/AVSession;I)V

    goto/16 :goto_1

    :cond_5
    move-object v4, v2

    goto/16 :goto_0

    .line 611
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private processGroupEventsFromClient(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    .line 542
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "AV_GROUP_INTENT_SESSIONID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "AV_GROUP_INTENT_OPERATION_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 545
    if-eqz v1, :cond_1

    .line 546
    sget-object v2, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v1

    .line 547
    if-eqz v1, :cond_0

    .line 548
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    .line 549
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVSession;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVInternalGroup;

    .line 550
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "AV_GROUP_INTENT_TARGET_PEERS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    const/4 v1, 0x0

    .line 553
    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 554
    const-class v1, Ljava/util/List;

    invoke-static {v2, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v2, v1

    .line 556
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "AV_GROUP_INTENT_MESSAGE"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/AVMessage;

    .line 558
    packed-switch v3, :pswitch_data_0

    .line 579
    :cond_0
    :goto_1
    return-void

    .line 560
    :pswitch_0
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInternalGroup;->join()V

    goto :goto_1

    .line 563
    :pswitch_1
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVInternalGroup;->inviteMember(Ljava/util/List;)V

    goto :goto_1

    .line 566
    :pswitch_2
    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVInternalGroup;->kickMember(Ljava/util/List;)V

    goto :goto_1

    .line 569
    :pswitch_3
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInternalGroup;->quit()V

    goto :goto_1

    .line 572
    :pswitch_4
    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInternalGroup;->sendMessage(Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_1

    .line 577
    :cond_1
    const-string v0, "Session with null selfId is forbidden"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v1

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private processIMRequests(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    if-eqz p1, :cond_0

    const-string v0, "com.avoscloud.session.action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processSessionEventsFromClient(Landroid/content/Intent;)V

    .line 189
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "com.avoscloud.group.action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processGroupEventsFromClient(Landroid/content/Intent;)V

    .line 193
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "com.avoscloud.im.v2.action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processConversationEventsFromClient(Landroid/content/Intent;)V

    .line 197
    :cond_2
    return-void
.end method

.method private processPingRequest()V
    .locals 2

    .prologue
    .line 490
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-nez v0, :cond_0

    .line 491
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avos/avoscloud/PushService;->startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    :goto_0
    return-void

    .line 493
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendPing()V

    goto :goto_0
.end method

.method private processSessionCloseIntent(Lcom/avos/avoscloud/AVSession;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->close()V

    .line 201
    return-void
.end method

.method private processSessionConnectionStatus(Lcom/avos/avoscloud/AVSession;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 670
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusNone:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    .line 671
    iget-object v1, p1, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusPaused:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    .line 676
    :cond_0
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 677
    const-string v2, "callbackClientStatus"

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->getCode()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 678
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_STATUS:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v2, p2, v1, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 680
    return-void

    .line 673
    :cond_1
    iget-object v1, p1, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusOpened:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    goto :goto_0
.end method

.method private processSessionEventsFromClient(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 498
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "AV_SESSION_INTENT_OPERATION_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 503
    const/16 v0, 0x2710

    if-eq v3, v0, :cond_1

    .line 504
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 508
    :goto_0
    if-eqz v2, :cond_2

    .line 509
    sget-object v4, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->getOrCreateSession(Ljava/lang/String;)Lcom/avos/avoscloud/AVSession;

    move-result-object v2

    .line 510
    if-eqz v2, :cond_0

    .line 511
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    .line 512
    packed-switch v3, :pswitch_data_0

    .line 539
    :cond_0
    :goto_1
    return-void

    .line 506
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVMessage;

    goto :goto_0

    .line 514
    :pswitch_0
    invoke-direct {p0, v2, v1}, Lcom/avos/avoscloud/PushService;->processSessionOpenIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto :goto_1

    .line 517
    :pswitch_1
    invoke-direct {p0, v2, v1}, Lcom/avos/avoscloud/PushService;->processSessionWatchInten(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto :goto_1

    .line 520
    :pswitch_2
    invoke-direct {p0, v2, v1}, Lcom/avos/avoscloud/PushService;->processSessionUnwatchIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto :goto_1

    .line 523
    :pswitch_3
    invoke-direct {p0, v2, v0}, Lcom/avos/avoscloud/PushService;->processSessionSendMessageIntent(Lcom/avos/avoscloud/AVSession;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_1

    .line 526
    :pswitch_4
    invoke-direct {p0, v2, v1}, Lcom/avos/avoscloud/PushService;->processSessionTimoutSetIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto :goto_1

    .line 529
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/avos/avoscloud/PushService;->processSessionCloseIntent(Lcom/avos/avoscloud/AVSession;)V

    goto :goto_1

    .line 532
    :pswitch_6
    invoke-direct {p0, v2, v1}, Lcom/avos/avoscloud/PushService;->processSessionOnlineQueryIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V

    goto :goto_1

    .line 537
    :cond_2
    const-string v0, "Session with null selfId is forbidden"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$avlog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 512
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private processSessionOnlineQueryIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 206
    const-class v0, Ljava/util/List;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 207
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/AVSession;->queryOnlinePeers(Ljava/util/List;Lcom/avos/avoscloud/OnlinePeerQueryListener;)V

    .line 209
    return-void
.end method

.method private processSessionOpenIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 422
    const-class v0, Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 423
    const-string v1, "PARAM_SESSION_PEERIDS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 424
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/avos/avoscloud/AVSession;->open(Ljava/lang/String;Ljava/util/List;)V

    .line 425
    return-void
.end method

.method private processSessionSendMessageIntent(Lcom/avos/avoscloud/AVSession;Lcom/avos/avoscloud/AVMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-virtual {p1, p2}, Lcom/avos/avoscloud/AVSession;->sendMessage(Lcom/avos/avoscloud/AVMessage;)V

    .line 219
    return-void
.end method

.method private processSessionTimoutSetIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 214
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVSession;->setMessageTimeout(I)V

    .line 215
    return-void
.end method

.method private processSessionUnwatchIntent(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 434
    const-class v0, Ljava/util/List;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 435
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVSession;->unwatchPeers(Ljava/util/List;)V

    .line 436
    return-void
.end method

.method private processSessionWatchInten(Lcom/avos/avoscloud/AVSession;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 428
    const-class v0, Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 429
    const-string v1, "PARAM_SESSION_PEERIDS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 430
    invoke-virtual {p1, v0}, Lcom/avos/avoscloud/AVSession;->watchPeers(Ljava/util/List;)Z

    .line 431
    return-void
.end method

.method private reportRouterConnectionException(Landroid/content/Intent;Lcom/avos/avoscloud/AVException;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 172
    if-eqz p1, :cond_0

    const-string v0, "com.avoscloud.im.v2.action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conversation.operation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 175
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "conversation.client"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "convesration.id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "conversation.requestId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 179
    invoke-static {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getAVIMOperation(I)Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    move-result-object v0

    invoke-static {v1, v2, v3, p2, v0}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 182
    :cond_0
    return-void
.end method

.method static declared-synchronized sendData(Lcom/avos/avospush/session/CommandPacket;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    const-class v1, Lcom/avos/avoscloud/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v0, :cond_0

    .line 395
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    :cond_0
    monitor-exit v1

    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    invoke-static {p0, p1}, Lcom/avos/avoscloud/PushService;->startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avospush/push/AVPushServiceAppManager;->addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public static setNotificationIcon(I)V
    .locals 1
    .parameter

    .prologue
    .line 337
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v0, p0}, Lcom/avos/avospush/push/AVPushServiceAppManager;->setNotificationIcon(I)V

    .line 338
    return-void
.end method

.method protected static setSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    invoke-static {p0}, Lcom/avos/avoscloud/AVSession;->setStaticSignatureFactory(Lcom/avos/avoscloud/SignatureFactory;)V

    .line 417
    return-void
.end method

.method private static declared-synchronized startService(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 284
    const-class v1, Lcom/avos/avoscloud/PushService;

    monitor-enter v1

    .line 285
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/avos/avoscloud/PushService$4;

    invoke-direct {v2, p0, p1}, Lcom/avos/avoscloud/PushService$4;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit v1

    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    sget-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 256
    :cond_0
    if-nez p0, :cond_1

    .line 257
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_1
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Please add <uses-permission android:name=\"android.permission.INTERNET\"/> in your AndroidManifest file"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_2
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "No network available now"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_3
    const-class v0, Lcom/avos/avoscloud/PushService;

    invoke-static {p0, v0}, Lcom/avos/avoscloud/AVUtils;->isPushServiceAvailable(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 274
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "Please add <service android:name=\"com.avos.avoscloud.PushService\"/> in your AndroidManifest file"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_4
    invoke-static {p0, p1}, Lcom/avos/avoscloud/PushService;->startService(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public static declared-synchronized subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    const-class v1, Lcom/avos/avoscloud/PushService;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p2}, Lcom/avos/avoscloud/PushService;->startServiceIfRequired(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    const-string v2, "channels"

    invoke-virtual {v0, v2, p1}, Lcom/avos/avoscloud/AVInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    sget-object v0, Lcom/avos/avoscloud/PushService;->_installationSaveHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    if-eqz p2, :cond_0

    .line 320
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/avos/avospush/push/AVPushServiceAppManager;->addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/avos/avospush/push/AVPushServiceAppManager;->getDefaultPushCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 324
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/avos/avospush/push/AVPushServiceAppManager;->addDefaultPushCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :cond_0
    monitor-exit v1

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized triggerReconnect()V
    .locals 2

    .prologue
    .line 400
    const-class v1, Lcom/avos/avoscloud/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->forceTriggerReconnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit v1

    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized unbindSession(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 404
    const-class v1, Lcom/avos/avoscloud/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v0, :cond_0

    .line 405
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVPushConnectionManager;->removeSession(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_0
    monitor-exit v1

    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unsubscribe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 367
    const-class v1, Lcom/avos/avoscloud/PushService;

    monitor-enter v1

    if-nez p1, :cond_0

    .line 391
    :goto_0
    monitor-exit v1

    return-void

    .line 370
    :cond_0
    :try_start_0
    sget-object v0, Lcom/avos/avoscloud/PushService;->pushServiceAppManager:Lcom/avos/avospush/push/AVPushServiceAppManager;

    invoke-virtual {v0, p1}, Lcom/avos/avospush/push/AVPushServiceAppManager;->removeDefaultPushCallback(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    new-instance v2, Lcom/avos/avoscloud/PushService$5;

    invoke-direct {v2, p1}, Lcom/avos/avoscloud/PushService$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 388
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    const-string v2, "channels"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/avos/avoscloud/AVInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 389
    sget-object v0, Lcom/avos/avoscloud/PushService;->_installationSaveHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 246
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "On bind"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 88
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "On Create"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 90
    invoke-static {p0}, Lcom/avos/avoscloud/PushService;->getConnectionManagerInstance(Landroid/content/Context;)Lcom/avos/avoscloud/AVPushConnectionManager;

    move-result-object v0

    sput-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 92
    new-instance v0, Lcom/avos/avospush/push/AVConnectivityReceiver;

    new-instance v1, Lcom/avos/avoscloud/PushService$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/PushService$1;-><init>(Lcom/avos/avoscloud/PushService;)V

    invoke-direct {v0, v1}, Lcom/avos/avospush/push/AVConnectivityReceiver;-><init>(Lcom/avos/avospush/push/AVConnectivityListener;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushService;->connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

    .line 108
    iget-object v0, p0, Lcom/avos/avoscloud/PushService;->connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    new-instance v0, Lcom/avos/avospush/push/AVShutdownReceiver;

    new-instance v1, Lcom/avos/avoscloud/PushService$2;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/PushService$2;-><init>(Lcom/avos/avoscloud/PushService;)V

    invoke-direct {v0, v1}, Lcom/avos/avospush/push/AVShutdownReceiver;-><init>(Lcom/avos/avospush/push/AVShutdownListener;)V

    iput-object v0, p0, Lcom/avos/avoscloud/PushService;->shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;

    .line 117
    iget-object v0, p0, Lcom/avos/avoscloud/PushService;->shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    const/4 v0, 0x1

    sput-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    .line 119
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 226
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v1, "On Destroy"

    invoke-static {v0, v1}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVPushConnectionManager;->stop()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/PushService;->connectivityReceiver:Lcom/avos/avospush/push/AVConnectivityReceiver;

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 231
    iget-object v0, p0, Lcom/avos/avoscloud/PushService;->shutdownReceiver:Lcom/avos/avospush/push/AVShutdownReceiver;

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    const/4 v0, 0x0

    sput-boolean v0, Lcom/avos/avoscloud/PushService;->isStarted:Z

    .line 235
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/PushService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 238
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 239
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avos.avoscloud.notify.action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    :cond_0
    sget-object v0, Lcom/avos/avoscloud/NotifyUtil;->notifyHandler:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "com.avoscloud.ping.action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/avos/avoscloud/PushService;->processPingRequest()V

    .line 134
    :cond_2
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/avos/avoscloud/PushService;->isPushConnectionBroken()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    sget-object v1, Lcom/avos/avoscloud/PushService;->connecting:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 140
    invoke-virtual {v0}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground()V

    .line 142
    :cond_3
    sget-object v0, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start to connect to push server with installationId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/avos/avoscloud/PushService;->sPushConnectionManager:Lcom/avos/avoscloud/AVPushConnectionManager;

    new-instance v2, Lcom/avos/avoscloud/PushService$3;

    invoke-direct {v2, p0, p1}, Lcom/avos/avoscloud/PushService$3;-><init>(Lcom/avos/avoscloud/PushService;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->initConnection(Lcom/avos/avoscloud/AVCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 168
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    sget-object v2, Lcom/avos/avoscloud/PushService;->LOGTAG:Ljava/lang/String;

    const-string v3, "Exception when init connection, looks like you have not called AVOSCloud.initialized yet"

    invoke-static {v2, v3, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 165
    :cond_4
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/PushService;->processIMRequests(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 8
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 445
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const-string v0, "try to restart service on task Removed"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->d(Ljava/lang/String;)V

    .line 448
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 454
    invoke-virtual {p0}, Lcom/avos/avoscloud/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 456
    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 460
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 462
    :cond_1
    return-void
.end method
