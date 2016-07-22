.class public Lcom/avos/avoscloud/AVDefaultSessionListener;
.super Lcom/avos/avoscloud/AVInternalSessionListener;
.source "AVDefaultSessionListener.java"


# instance fields
.field manager:Lcom/avos/avoscloud/AVPushConnectionManager;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalSessionListener;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/avos/avoscloud/AVDefaultSessionListener;->manager:Lcom/avos/avoscloud/AVPushConnectionManager;

    .line 24
    return-void
.end method

.method private cleanSession(Lcom/avos/avoscloud/Session;)V
    .locals 2
    .parameter

    .prologue
    .line 204
    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/avos/avoscloud/AVSession;

    iget-boolean v0, v0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    invoke-static {v1, v0}, Lcom/avos/avoscloud/AVSessionCacheHelper;->removeSession(Ljava/lang/String;Z)V

    move-object v0, p1

    .line 205
    check-cast v0, Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v0, p1

    .line 207
    check-cast v0, Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->cleanUp()V

    .line 209
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultSessionListener;->manager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-interface {p1}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVPushConnectionManager;->removeSession(Ljava/lang/String;)V

    .line 210
    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->isDebugLogEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "session error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 136
    :cond_1
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.session.action"

    const/16 v2, 0x4e28

    invoke-static {v0, v1, p3, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 138
    const v0, -0x10001

    if-le p5, v0, :cond_2

    .line 139
    packed-switch p4, :pswitch_data_0

    .line 153
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-virtual {v0}, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->getCode()I

    move-result v0

    if-ne p4, v0, :cond_2

    .line 154
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_CREATION:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v3, p5, p3, v1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 158
    :cond_2
    return-void

    .line 141
    :pswitch_1
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v3, p5, p3, v1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0

    .line 145
    :pswitch_2
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v3, p5, p3, v1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0

    .line 149
    :pswitch_3
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CONVERSATION_SEND_MESSAGE:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v3, p5, p3, v1}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILjava/io/Serializable;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e23

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 90
    return-void
.end method

.method public onMessageDelivered(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e2c

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 188
    return-void
.end method

.method public onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e25

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 108
    return-void
.end method

.method public onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e24

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 99
    return-void
.end method

.method public onOnlineQuery(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 215
    const v0, -0x10001

    if-ne p4, v0, :cond_0

    .line 216
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.session.action"

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x4e29

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 221
    const-string v1, "callbackOnlineClient"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 223
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_ONLINE_QUERY:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v1, v2, p4, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    goto :goto_0
.end method

.method public onPeersUnwatched(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e2b

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 178
    return-void
.end method

.method public onPeersWatched(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e2a

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 168
    return-void
.end method

.method public onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/avos/avoscloud/AVDefaultSessionListener;->manager:Lcom/avos/avoscloud/AVPushConnectionManager;

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVPushConnectionManager;->removeSession(Ljava/lang/String;)V

    .line 195
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.avoscloud.session.action"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x4e2d

    invoke-static {v2, v3, v0, v4}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 197
    const v0, -0x10001

    if-le p3, v0, :cond_0

    .line 198
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_DISCONNECT:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p3, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 201
    :cond_0
    return-void
.end method

.method public onSessionClosedFromServer(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/AVDefaultSessionListener;->cleanSession(Lcom/avos/avoscloud/Session;)V

    .line 72
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    const v1, 0xc35a

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Lcom/avos/avoscloud/AVSession;

    iget-boolean v3, v0, Lcom/avos/avoscloud/AVSession;->v2Session:Z

    move-object v0, p2

    check-cast v0, Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->tag:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/avos/avoscloud/AVSessionCacheHelper;->addSession(Ljava/lang/String;ZLjava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getAllPeers()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.avoscloud.session.action"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x4e20

    invoke-static {v2, v3, v0, v4}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 39
    const v0, -0x10001

    if-le p3, v0, :cond_0

    .line 40
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;->CLIENT_OPEN:Lcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;

    invoke-static {v0, v1, p3, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendIMLocalBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/avos/avoscloud/im/v2/Conversation$AVIMOperation;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onSessionPaused(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.avoscloud.session.action"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x4e21

    invoke-static {v2, v3, v0, v4}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 50
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    const v2, 0xc356

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onSessionResumed(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.avoscloud.session.action"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x4e22

    invoke-static {v2, v3, v0, v4}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 62
    invoke-static {}, Lcom/avos/avoscloud/im/v2/AVIMMessageManagerHelper;->getClientEventHandler()Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    const v2, 0xc357

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avos/avoscloud/im/v2/AVIMClient;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/avos/avoscloud/im/v2/AVIMClientEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onStatusOffline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e27

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 128
    return-void
.end method

.method public onStatusOnline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v1

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.session.action"

    const/16 v3, 0x4e26

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 118
    return-void
.end method
