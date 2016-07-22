.class Lcom/avos/avoscloud/AVInternalGroup;
.super Ljava/lang/Object;
.source "AVInternalGroup.java"

# interfaces
.implements Lcom/avos/avoscloud/Group;
.implements Lcom/avos/avoscloud/GroupListener;


# instance fields
.field pendingCommand:Lcom/avos/avoscloud/PendingMessageCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/avos/avoscloud/PendingMessageCache",
            "<",
            "Lcom/avos/avospush/session/GroupControlPacket;",
            ">;"
        }
    .end annotation
.end field

.field roomId:Ljava/lang/String;

.field roomIdAsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selfId:Ljava/lang/String;

.field session:Lcom/avos/avoscloud/AVSession;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/AVSession;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p3, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    .line 30
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iput-object p2, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    .line 35
    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    .line 36
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iput-object p1, p0, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/avos/avoscloud/PendingMessageCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/avos/avospush/session/GroupControlPacket;

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/PendingMessageCache;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->pendingCommand:Lcom/avos/avoscloud/PendingMessageCache;

    .line 40
    return-void

    .line 33
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionOpened:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please open session first before Group operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    new-instance v0, Lcom/avos/avoscloud/SessionPausedException;

    invoke-direct {v0}, Lcom/avos/avoscloud/SessionPausedException;-><init>()V

    .line 209
    packed-switch p1, :pswitch_data_0

    .line 231
    :goto_0
    throw v0

    .line 211
    :pswitch_0
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->INVITE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 212
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    goto :goto_0

    .line 215
    :pswitch_1
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->JOIN:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 216
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    goto :goto_0

    .line 219
    :pswitch_2
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->KICK:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 220
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    goto :goto_0

    .line 223
    :pswitch_3
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->QUIT:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 224
    invoke-virtual {v0, p2}, Lcom/avos/avoscloud/SessionPausedException;->setPeerIds(Ljava/util/List;)V

    goto :goto_0

    .line 227
    :pswitch_4
    sget-object v1, Lcom/avos/avoscloud/SessionPausedException$Actions;->SEND_MESSAGE:Lcom/avos/avoscloud/SessionPausedException$Actions;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SessionPausedException;->setAction(Lcom/avos/avoscloud/SessionPausedException$Actions;)V

    .line 228
    invoke-virtual {v0, p3}, Lcom/avos/avoscloud/SessionPausedException;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    return-void

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getGroupGeneString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    const-string v1, "groupId"

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryMessageQuery()Lcom/avos/avoscloud/AVHistoryMessageQuery;
    .locals 1

    .prologue
    .line 395
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
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
    .line 400
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMembersInBackground(Lcom/avos/avoscloud/GroupMemberQueryCallback;)V
    .locals 1
    .parameter

    .prologue
    .line 405
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSelfId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v0}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inviteMember(Ljava/util/List;)V
    .locals 4
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
    .line 151
    const/16 v0, 0x271d

    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lcom/avos/avoscloud/AVInternalGroup$3;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVInternalGroup$3;-><init>(Lcom/avos/avoscloud/AVInternalGroup;Ljava/util/List;)V

    .line 180
    new-instance v1, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p0, v0}, Lcom/avos/avoscloud/AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public join()V
    .locals 4

    .prologue
    .line 45
    const/16 v0, 0x271a

    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/avos/avoscloud/AVInternalGroup$1;

    invoke-direct {v0, p0}, Lcom/avos/avoscloud/AVInternalGroup$1;-><init>(Lcom/avos/avoscloud/AVInternalGroup;)V

    .line 75
    new-instance v1, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p0, v0}, Lcom/avos/avoscloud/AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public kickMember(Ljava/util/List;)V
    .locals 4
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
    .line 113
    const/16 v0, 0x271c

    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/avos/avoscloud/AVInternalGroup$2;

    invoke-direct {v0, p0, p1}, Lcom/avos/avoscloud/AVInternalGroup$2;-><init>(Lcom/avos/avoscloud/AVInternalGroup;Ljava/util/List;)V

    .line 141
    new-instance v1, Lcom/avos/avoscloud/AVSession$SignatureTask;

    invoke-direct {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p0, v0}, Lcom/avos/avoscloud/AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/16 v2, 0x7538

    invoke-static {v0, v1, p3, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 375
    return-void
.end method

.method public onInviteToGroup(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/16 v2, 0x753d

    invoke-static {v0, v1, p3, v2}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 304
    return-void
.end method

.method public onInvited(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7532

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 298
    return-void
.end method

.method public onJoined(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/4 v2, 0x0

    const/16 v3, 0x7531

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 292
    return-void
.end method

.method public onKicked(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7533

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 310
    return-void
.end method

.method public onMemberJoin(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x753b

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 384
    return-void
.end method

.method public onMemberLeft(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x753c

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 391
    return-void
.end method

.method public onMessage(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v2, "com.avoscloud.group.action"

    const/16 v3, 0x7535

    invoke-static {v0, v2, v1, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 345
    return-void
.end method

.method public onMessageFailure(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v2, "com.avoscloud.group.action"

    const/16 v3, 0x753a

    invoke-static {v0, v2, v1, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 333
    return-void
.end method

.method public onMessageSent(Landroid/content/Context;Lcom/avos/avoscloud/Group;Lcom/avos/avoscloud/AVMessage;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {}, Lcom/avos/avoscloud/AVPersistenceUtils;->sharedInstance()Lcom/avos/avoscloud/AVPersistenceUtils;

    move-result-object v2

    invoke-static {v0}, Lcom/avos/avoscloud/AVUtils;->getSessionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/avos/avoscloud/AVPersistenceUtils;->savePersistentSettingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v2, "com.avoscloud.group.action"

    const/16 v3, 0x7539

    invoke-static {v0, v2, v1, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 322
    return-void
.end method

.method public onQuit(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    iget-object v0, v0, Lcom/avos/avoscloud/AVSession;->sessionGroupCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2}, Lcom/avos/avoscloud/Group;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.avoscloud.group.action"

    const/4 v2, 0x0

    const/16 v3, 0x7534

    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 356
    return-void
.end method

.method public onReject(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/avos/avoscloud/Group;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 363
    const-string v1, "groupOperation"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v1, "GROUP_PARAM_FROMPEERID"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-direct {p0}, Lcom/avos/avoscloud/AVInternalGroup;->getGroupGeneString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.avoscloud.group.action"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7536

    invoke-static {v1, v2, v0, v3}, Lcom/avos/avoscloud/BroadcastUtil;->sendSessionBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 369
    return-void
.end method

.method public processGroupCommand(Ljava/util/Map;)V
    .locals 3
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
    .line 255
    const-string v0, "op"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    const/4 v1, 0x0

    .line 257
    const-string v2, "i"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const-string v1, "i"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup;->pendingCommand:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v2, v1}, Lcom/avos/avoscloud/PendingMessageCache;->poll(Ljava/lang/String;)Lcom/avos/avospush/session/MessageQueue$HasId;

    move-result-object v1

    check-cast v1, Lcom/avos/avospush/session/GroupControlPacket;

    .line 261
    :cond_0
    const-string v2, "joined"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    const-string v0, "byPeerId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p0}, Lcom/avos/avoscloud/AVInternalGroup;->onJoined(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V

    .line 286
    :cond_1
    :goto_0
    return-void

    .line 266
    :cond_2
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p0, v0}, Lcom/avos/avoscloud/AVInternalGroup;->onInviteToGroup(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_3
    const-string v2, "invited"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 269
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/avos/avospush/session/GroupControlPacket;->getGroupPeerIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p0, v1}, Lcom/avos/avoscloud/AVInternalGroup;->onInvited(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0

    .line 270
    :cond_4
    const-string v2, "kicked"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 271
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/avos/avospush/session/GroupControlPacket;->getGroupPeerIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p0, v1}, Lcom/avos/avoscloud/AVInternalGroup;->onKicked(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0

    .line 272
    :cond_5
    const-string v2, "reject"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 273
    invoke-virtual {v1}, Lcom/avos/avospush/session/GroupControlPacket;->getGroupPeerIds()Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-virtual {v1}, Lcom/avos/avospush/session/GroupControlPacket;->getOp()Ljava/lang/String;

    move-result-object v1

    .line 275
    sget-object v2, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p0, v1, v0}, Lcom/avos/avoscloud/AVInternalGroup;->onReject(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 276
    :cond_6
    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 277
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->pendingCommand:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v0}, Lcom/avos/avoscloud/PendingMessageCache;->clear()V

    .line 278
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p0}, Lcom/avos/avoscloud/AVInternalGroup;->onQuit(Landroid/content/Context;Lcom/avos/avoscloud/Group;)V

    goto :goto_0

    .line 279
    :cond_7
    const-string v1, "members-joined"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 280
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v0, "roomPeerIds"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v1, p0, v0}, Lcom/avos/avoscloud/AVInternalGroup;->onMemberJoin(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0

    .line 282
    :cond_8
    const-string v1, "members-left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    const-string v0, "roomPeerIds"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v1, p0, v0}, Lcom/avos/avoscloud/AVInternalGroup;->onMemberLeft(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/util/List;)V

    goto :goto_0
.end method

.method public quit()V
    .locals 6

    .prologue
    .line 189
    const/16 v0, 0x271e

    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v5

    .line 191
    iget-object v0, p0, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const-string v3, "leave"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/avos/avospush/session/GroupControlPacket;->genGroupCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/GroupControlPacket;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->pendingCommand:Lcom/avos/avoscloud/PendingMessageCache;

    invoke-virtual {v1, v0}, Lcom/avos/avoscloud/PendingMessageCache;->offer(Lcom/avos/avospush/session/MessageQueue$HasId;)V

    .line 195
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p0, v0}, Lcom/avos/avoscloud/AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/avos/avoscloud/AVMessage;)V
    .locals 7
    .parameter

    .prologue
    .line 84
    const/16 v0, 0x271b

    :try_start_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomIdAsList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/avos/avoscloud/AVInternalGroup;->checkSessionStatus(ILjava/util/List;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/avos/avoscloud/AVUtils;->getNextIMRequestId()I

    move-result v3

    .line 86
    new-instance v0, Lcom/avos/avospush/session/DirectMessagePacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/DirectMessagePacket;-><init>()V

    .line 87
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/DirectMessagePacket;->setAppId(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->selfId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/DirectMessagePacket;->setPeerId(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/DirectMessagePacket;->setMsg(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->isTransient()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/DirectMessagePacket;->setTransient(Z)V

    .line 91
    iget-object v1, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/DirectMessagePacket;->setGroupId(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v3}, Lcom/avos/avospush/session/DirectMessagePacket;->setRequestId(I)V

    .line 95
    invoke-virtual {v0}, Lcom/avos/avospush/session/DirectMessagePacket;->toJson()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    .line 96
    const/16 v2, 0x1388

    if-le v1, v2, :cond_1

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Message exceeds message length maximum limit"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p0, v0}, Lcom/avos/avoscloud/AVInternalGroup;->onError(Landroid/content/Context;Lcom/avos/avoscloud/Group;Ljava/lang/Throwable;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/avos/avoscloud/PushService;->sendData(Lcom/avos/avospush/session/CommandPacket;)V

    .line 101
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->isTransient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v6, p0, Lcom/avos/avoscloud/AVInternalGroup;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/avos/avoscloud/AVInternalGroup;->roomId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/avos/avoscloud/PendingMessageCache$Message;->getMessage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/avos/avoscloud/PendingMessageCache$Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/avos/avoscloud/AVSession;->storeMessage(Lcom/avos/avoscloud/PendingMessageCache$Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
