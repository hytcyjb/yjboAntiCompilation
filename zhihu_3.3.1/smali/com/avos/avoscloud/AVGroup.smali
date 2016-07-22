.class public Lcom/avos/avoscloud/AVGroup;
.super Ljava/lang/Object;
.source "AVGroup.java"

# interfaces
.implements Lcom/avos/avoscloud/Group;


# static fields
.field private static final GROUP_TABLE_NAME:Ljava/lang/String; = "AVOSRealtimeGroups"


# instance fields
.field roomId:Ljava/lang/String;

.field selfId:Ljava/lang/String;

.field session:Lcom/avos/avoscloud/SessionManager;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    .line 23
    return-void
.end method

.method protected static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avoscloud/AVGroup;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/avos/avoscloud/AVGroup;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private sendErrorBroadcast(Ljava/lang/Exception;)V
    .locals 4
    .parameter

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 118
    const-string v2, "AV_SESSION_INTENT_THROWABLE_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 119
    const-string v2, "AV_APPLICATION_ID"

    sget-object v3, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v2, "AV_GROUP_INTENT_STATUS_KEY"

    const/16 v3, 0x7538

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v2, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v3, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method private validatePeerIds(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 97
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    const-string v1, "empty peersId Exception in group"

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v2}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 99
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "empty peersId Exception in group"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/avos/avoscloud/AVGroup;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 110
    :goto_0
    return v0

    .line 103
    :cond_1
    :try_start_0
    const-string v1, "Null id in session id list."

    invoke-static {p1, v1}, Lcom/avos/avoscloud/AVUtils;->ensureElementsNotNull(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 106
    invoke-direct {p0, v1}, Lcom/avos/avoscloud/AVGroup;->sendErrorBroadcast(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/avos/avoscloud/AVHistoryMessageQuery;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVHistoryMessageQuery;-><init>()V

    .line 145
    iget-object v1, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVHistoryMessageQuery;->setGroupId(Ljava/lang/String;)V

    .line 146
    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be groupId before query group members"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "AVOSRealtimeGroups"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "m"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVQuery;->selectKeys(Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;

    .line 156
    iget-object v1, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVQuery;->get(Ljava/lang/String;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    .line 157
    const-string v1, "m"

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVObject;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMembersInBackground(Lcom/avos/avoscloud/GroupMemberQueryCallback;)V
    .locals 4
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 163
    const/4 v0, 0x0

    new-instance v1, Lcom/avos/avoscloud/AVException;

    const/4 v2, -0x1

    const-string v3, "There must be groupId before query group members"

    invoke-direct {v1, v2, v3}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/avos/avoscloud/GroupMemberQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 182
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-string v1, "AVOSRealtimeGroups"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 168
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "m"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVQuery;->selectKeys(Ljava/util/Collection;)Lcom/avos/avoscloud/AVQuery;

    .line 169
    iget-object v1, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    new-instance v2, Lcom/avos/avoscloud/AVGroup$1;

    invoke-direct {v2, p0, p1}, Lcom/avos/avoscloud/AVGroup$1;-><init>(Lcom/avos/avoscloud/AVGroup;Lcom/avos/avoscloud/GroupMemberQueryCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVQuery;->getInBackground(Ljava/lang/String;Lcom/avos/avoscloud/GetCallback;)V

    goto :goto_0
.end method

.method public getSelfId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    return-object v0
.end method

.method public inviteMember(Ljava/util/List;)V
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
    .line 75
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVGroup;->validatePeerIds(Ljava/util/List;)Z

    .line 76
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "AV_GROUP_INTENT_TARGET_PEERS"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    return-void
.end method

.method public join()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    :cond_0
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 39
    return-void
.end method

.method public kickMember(Ljava/util/List;)V
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
    .line 63
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVGroup;->validatePeerIds(Ljava/util/List;)Z

    .line 64
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "AV_GROUP_INTENT_TARGET_PEERS"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    return-void
.end method

.method public quit()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    return-void
.end method

.method public sendMessage(Lcom/avos/avoscloud/AVMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p1, Lcom/avos/avoscloud/AVMessage;->isRequestReceipt:Z

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "Message receipt is not supported in group messages"

    invoke-static {v0}, Lcom/avos/avoscloud/LogUtil$log;->e(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Message receipt is not supported in group messages"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVGroup;->sendErrorBroadcast(Ljava/lang/Exception;)V

    .line 59
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/avos/avoscloud/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string v1, "com.avoscloud.group.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "AV_GROUP_INTENT_SESSIONID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "AV_GROUP_INTENT_GROUP_ID"

    iget-object v2, p0, Lcom/avos/avoscloud/AVGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "AV_GROUP_INTENT_MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    const-string v1, "AV_GROUP_INTENT_OPERATION_KEY"

    const/16 v2, 0x271b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/avos/avoscloud/IntentUtil;->setupIntentFlags(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
