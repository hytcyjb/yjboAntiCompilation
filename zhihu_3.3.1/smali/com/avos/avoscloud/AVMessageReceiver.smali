.class public abstract Lcom/avos/avoscloud/AVMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVMessageReceiver.java"

# interfaces
.implements Lcom/avos/avoscloud/SessionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    :try_start_0
    const-class v2, Lcom/avos/avoscloud/AVMessage;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Session;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    if-eqz p4, :cond_0

    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_0
    if-eqz v0, :cond_1

    .line 145
    :try_start_0
    const-class v2, Ljava/util/List;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    return-object v0

    .line 137
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    invoke-interface {p2}, Lcom/avos/avoscloud/Session;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p3, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->getPersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {p0, p1, p2, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 14
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AV_APPLICATION_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 30
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.avoscloud.session.action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AV_SESSION_INTENT_STATUS_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {v1}, Lcom/avos/avoscloud/SessionManager;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/SessionManager;

    move-result-object v1

    .line 37
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 39
    :pswitch_0
    :try_start_1
    const-string v0, "AV_SESSION_INTENT_SELFID_KEY"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    iget-object v2, v1, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AVMessageReceiver;->onSessionOpen(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "on Message Receiver"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 25
    :catch_1
    move-exception v0

    .line 26
    const-string v1, "Receive other apps custom exception"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 48
    :pswitch_1
    :try_start_2
    sget-object v0, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 49
    iget-object v0, v1, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 50
    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AVMessageReceiver;->onSessionPaused(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AVMessageReceiver;->onSessionResumed(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V

    goto :goto_0

    .line 56
    :pswitch_3
    invoke-direct {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVMessageReceiver;->readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto/16 :goto_0

    .line 62
    :pswitch_4
    invoke-direct {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVMessageReceiver;->readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/avos/avoscloud/SessionManager;->getSelfPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/avos/avoscloud/AVMessage;->setFromPeerId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto/16 :goto_0

    .line 69
    :pswitch_5
    invoke-direct {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVMessageReceiver;->readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto/16 :goto_0

    .line 75
    :pswitch_6
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    iget-object v2, v1, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->onStatusOnline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    goto/16 :goto_0

    .line 82
    :pswitch_7
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    iget-object v2, v1, Lcom/avos/avoscloud/SessionManager;->onlinePeersId:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 85
    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->onStatusOffline(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    goto/16 :goto_0

    .line 89
    :pswitch_8
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "AV_SESSION_INTENT_THROWABLE_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 92
    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 95
    :pswitch_9
    const-class v0, Ljava/util/List;

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 96
    sget-object v1, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lcom/avos/avoscloud/SessionManager;->peerQueryListeners:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avos/avoscloud/OnlinePeerQueryListener;

    .line 98
    if-eqz v1, :cond_0

    .line 99
    invoke-interface {v1, v0}, Lcom/avos/avoscloud/OnlinePeerQueryListener;->onResults(Ljava/util/List;)V

    goto/16 :goto_0

    .line 104
    :pswitch_a
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 105
    iget-object v2, v1, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->onPeersWatched(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    goto/16 :goto_0

    .line 111
    :pswitch_b
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->readPeerIdsMessage(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 112
    iget-object v2, v1, Lcom/avos/avoscloud/SessionManager;->allPeersId:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 113
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->onPeersUnwatched(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/util/List;)V

    goto/16 :goto_0

    .line 118
    :pswitch_c
    invoke-direct {p0, p1, v1, v2}, Lcom/avos/avoscloud/AVMessageReceiver;->readMessageMap(Landroid/content/Context;Lcom/avos/avoscloud/Session;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVMessageReceiver;->onMessageDelivered(Landroid/content/Context;Lcom/avos/avoscloud/Session;Lcom/avos/avoscloud/AVMessage;)V

    goto/16 :goto_0

    .line 124
    :pswitch_d
    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AVMessageReceiver;->onSessionClose(Landroid/content/Context;Lcom/avos/avoscloud/Session;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x4e20
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
