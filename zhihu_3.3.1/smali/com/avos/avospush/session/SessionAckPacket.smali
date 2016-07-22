.class public Lcom/avos/avospush/session/SessionAckPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "SessionAckPacket.java"


# instance fields
.field ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 18
    const-string v0, "ack"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/SessionAckPacket;->setCmd(Ljava/lang/String;)V

    .line 19
    return-void
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
    .line 28
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/avos/avospush/session/SessionAckPacket;->ids:Ljava/util/List;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const-string v1, "ids"

    iget-object v2, p0, Lcom/avos/avospush/session/SessionAckPacket;->ids:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    return-object v0
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/avos/avospush/session/SessionAckPacket;->ids:Ljava/util/List;

    .line 23
    iget-object v0, p0, Lcom/avos/avospush/session/SessionAckPacket;->ids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method
