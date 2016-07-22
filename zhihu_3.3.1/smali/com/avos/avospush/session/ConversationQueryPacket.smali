.class public Lcom/avos/avospush/session/ConversationQueryPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationQueryPacket.java"


# instance fields
.field limit:I

.field skip:I

.field sort:Ljava/lang/String;

.field where:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 11
    const/16 v0, 0xa

    iput v0, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->limit:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->skip:I

    .line 17
    const-string v0, "conv"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/ConversationQueryPacket;->setCmd(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static getConversationQueryPacket(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;III)Lcom/avos/avospush/session/ConversationQueryPacket;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v0, Lcom/avos/avospush/session/ConversationQueryPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationQueryPacket;-><init>()V

    .line 77
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationQueryPacket;->setAppId(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationQueryPacket;->setPeerId(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p4}, Lcom/avos/avospush/session/ConversationQueryPacket;->setLimit(I)V

    .line 81
    invoke-virtual {v0, p3}, Lcom/avos/avospush/session/ConversationQueryPacket;->setSkip(I)V

    .line 82
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationQueryPacket;->setSort(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationQueryPacket;->setWhere(Lcom/alibaba/fastjson/JSONObject;)V

    .line 84
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/ConversationQueryPacket;->setRequestId(I)V

    .line 86
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
    .line 55
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 56
    const-string v1, "op"

    const-string v2, "query"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->where:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "where"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->where:Lcom/alibaba/fastjson/JSONObject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->sort:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    const-string v1, "sort"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->sort:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    iget v1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->skip:I

    if-lez v1, :cond_2

    .line 64
    const-string v1, "skip"

    iget v2, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->skip:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    iget v1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->limit:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    .line 68
    const-string v1, "limit"

    iget v2, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_3
    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->limit:I

    return v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->skip:I

    return v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public getWhere()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->where:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public setLimit(I)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->limit:I

    .line 26
    return-void
.end method

.method public setSkip(I)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput p1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->skip:I

    .line 34
    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->sort:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setWhere(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationQueryPacket;->where:Lcom/alibaba/fastjson/JSONObject;

    .line 50
    return-void
.end method
