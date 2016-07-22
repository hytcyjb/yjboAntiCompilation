.class public Lcom/avos/avospush/session/ConversationDirectMessagePacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationDirectMessagePacket.java"


# instance fields
.field conversationId:Ljava/lang/String;

.field isReceipt:Z

.field isTransient:Z

.field message:Ljava/lang/String;

.field messageToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 16
    const-string v0, "direct"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setCmd(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static getConversationMessagePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/avos/avospush/session/ConversationDirectMessagePacket;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->getConversationMessagePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/avos/avospush/session/ConversationDirectMessagePacket;

    move-result-object v0

    .line 86
    iput-object p3, v0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageToken:Ljava/lang/String;

    .line 87
    return-object v0
.end method

.method public static getConversationMessagePacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/avos/avospush/session/ConversationDirectMessagePacket;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;-><init>()V

    .line 71
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setAppId(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setPeerId(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setConversationId(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setRequestId(I)V

    .line 75
    invoke-virtual {v0, p4}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setTransient(Z)V

    .line 76
    invoke-virtual {v0, p3}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setReceipt(Z)V

    .line 77
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->setMessage(Ljava/lang/String;)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public genDataMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 54
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isReceipt:Z

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "r"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isTransient:Z

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "transient"

    iget-boolean v2, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isTransient:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1
    const-string v1, "msg"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "cid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->conversationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    const-string v1, "dt"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->messageToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_2
    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isReceipt()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isReceipt:Z

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isTransient:Z

    return v0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->conversationId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->message:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setReceipt(Z)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isReceipt:Z

    .line 33
    return-void
.end method

.method public setTransient(Z)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationDirectMessagePacket;->isTransient:Z

    .line 41
    return-void
.end method
