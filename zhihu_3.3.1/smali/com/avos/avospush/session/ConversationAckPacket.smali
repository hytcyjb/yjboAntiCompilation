.class public Lcom/avos/avospush/session/ConversationAckPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationAckPacket.java"


# instance fields
.field conversationId:Ljava/lang/String;

.field messageId:Ljava/lang/String;

.field timestampList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avos/avospush/session/ConversationAckPacket;->timestampList:Ljava/util/List;

    .line 14
    const-string v0, "ack"

    invoke-super {p0, v0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->setCmd(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static getConversationAckPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avospush/session/ConversationAckPacket;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v0, Lcom/avos/avospush/session/ConversationAckPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationAckPacket;-><init>()V

    .line 64
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationAckPacket;->setAppId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationAckPacket;->setPeerId(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationAckPacket;->setConversationId(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationAckPacket;->setMessageId(Ljava/lang/String;)V

    .line 68
    return-object v0
.end method

.method public static getConversationAckPacket(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/avos/avospush/session/ConversationAckPacket;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/avos/avospush/session/ConversationAckPacket;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/avos/avospush/session/ConversationAckPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationAckPacket;-><init>()V

    .line 83
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationAckPacket;->setAppId(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationAckPacket;->setPeerId(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationAckPacket;->setConversationId(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationAckPacket;->setTimestamps(Ljava/util/List;)V

    .line 87
    return-object v0
.end method


# virtual methods
.method protected genDataMap()Ljava/util/Map;
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
    .line 50
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 51
    const-string v1, "cid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationAckPacket;->conversationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->messageId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    const-string v1, "mid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationAckPacket;->messageId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->timestampList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->timestampList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 56
    const-string v1, "tots"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationAckPacket;->timestampList:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_1
    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationAckPacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationAckPacket;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->conversationId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationAckPacket;->messageId:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTimestamps(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationAckPacket;->timestampList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationAckPacket;->timestampList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_0
    return-void
.end method
