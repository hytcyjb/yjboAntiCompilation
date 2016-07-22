.class public Lcom/avos/avospush/session/ConversationMessageQueryPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationMessageQueryPacket.java"


# instance fields
.field conversationId:Ljava/lang/String;

.field limit:I

.field msgId:Ljava/lang/String;

.field requestId:I

.field timestamp:J

.field toMsgId:Ljava/lang/String;

.field toTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 13
    const-string v0, "logs"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setCmd(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static getConversationMessageQueryPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;JI)Lcom/avos/avospush/session/ConversationMessageQueryPacket;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    new-instance v0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;-><init>()V

    .line 111
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setAppId(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setPeerId(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setConversationId(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setMsgId(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setLimit(I)V

    .line 117
    invoke-virtual {v0, p3, p4}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setTimestamp(J)V

    .line 118
    invoke-virtual {v0, p9}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setRequestId(I)V

    .line 120
    invoke-virtual {v0, p6}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setToMsgId(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p7, p8}, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->setToTimestamp(J)V

    .line 123
    return-object v0
.end method


# virtual methods
.method protected genDataMap()Ljava/util/Map;
    .locals 6
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
    const-wide/16 v4, 0x0

    .line 85
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 86
    const-string v1, "cid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->conversationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "i"

    iget v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "limit"

    iget v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    const-string v1, "mid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    iget-wide v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->timestamp:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 93
    const-string v1, "t"

    iget-wide v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toMsgId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    const-string v1, "tmid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toMsgId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_2
    iget-wide v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toTimestamp:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 101
    const-string v1, "tt"

    iget-wide v2, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_3
    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->limit:I

    return v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->requestId:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->timestamp:J

    return-wide v0
.end method

.method public getToMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public getToTimestamp()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toTimestamp:J

    return-wide v0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->conversationId:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->limit:I

    .line 46
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->msgId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->requestId:I

    .line 80
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->timestamp:J

    .line 54
    return-void
.end method

.method public setToMsgId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toMsgId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setToTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/avos/avospush/session/ConversationMessageQueryPacket;->toTimestamp:J

    .line 70
    return-void
.end method
