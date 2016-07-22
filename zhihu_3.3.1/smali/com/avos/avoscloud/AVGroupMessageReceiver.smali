.class public abstract Lcom/avos/avoscloud/AVGroupMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVGroupMessageReceiver.java"

# interfaces
.implements Lcom/avos/avoscloud/GroupListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private readInformation(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Group;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-object v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {p0, p1, p3, v0}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readMessage(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v0

    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p4, v1}, Lcom/avos/avoscloud/AVPersistenceUtils;->removePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    :try_start_0
    const-class v2, Lcom/avos/avoscloud/AVMessage;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {p0, p1, p3, v0}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 17
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "AV_APPLICATION_ID"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.avoscloud.group.action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AV_SESSION_INTENT_SELFID_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AV_SESSION_INTENT_STATUS_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 26
    invoke-static {v3}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const-class v0, Ljava/util/HashMap;

    invoke-static {v3, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 28
    const-string v1, "sessionId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    const-string v5, "groupId"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    invoke-static {v1}, Lcom/avos/avoscloud/SessionManager;->getInstance(Ljava/lang/String;)Lcom/avos/avoscloud/SessionManager;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/SessionManager;->getGroup(Ljava/lang/String;)Lcom/avos/avoscloud/Group;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVGroup;

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "AV_SESSION_INTENT_DATA_KEY"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    packed-switch v4, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 37
    :pswitch_1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onJoined(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "on Group Message Receiver"

    invoke-static {v1, v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 42
    :pswitch_2
    :try_start_1
    const-class v3, Ljava/util/List;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    :goto_1
    :try_start_2
    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onInvited(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0

    .line 43
    :catch_1
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    goto :goto_1

    .line 51
    :pswitch_3
    :try_start_3
    const-class v3, Ljava/util/List;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 55
    :goto_2
    :try_start_4
    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onKicked(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0

    .line 52
    :catch_2
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_2

    .line 59
    :pswitch_4
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->readMessage(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v1

    .line 60
    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 63
    :pswitch_5
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->readMessage(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v1

    .line 65
    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 69
    :pswitch_6
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->readMessage(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;Ljava/lang/String;)Lcom/avos/avoscloud/AVMessage;

    move-result-object v1

    .line 70
    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V

    goto :goto_0

    .line 73
    :pswitch_7
    invoke-virtual {p0, p1, v0}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onQuit(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V

    goto :goto_0

    .line 76
    :pswitch_8
    invoke-direct {p0, p1, v1, v0}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->readInformation(Landroid/content/Context;Ljava/lang/String;Lcom/avos/avoscloud/Group;)Ljava/util/Map;

    move-result-object v3

    .line 77
    if-nez v3, :cond_1

    move-object v1, v2

    :goto_3
    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    if-nez v3, :cond_2

    :goto_4
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onReject(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const-string v1, "groupOperation"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_2
    const-string v2, "GROUP_PARAM_FROMPEERID"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    .line 86
    :pswitch_9
    const-class v2, Ljava/util/List;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 87
    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMemberJoin(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto/16 :goto_0

    .line 90
    :pswitch_a
    const-class v2, Ljava/util/List;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 91
    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onMemberLeft(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto/16 :goto_0

    .line 94
    :pswitch_b
    invoke-virtual {p0, p1, v0, v1}, Lcom/avos/avoscloud/AVGroupMessageReceiver;->onInviteToGroup(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
