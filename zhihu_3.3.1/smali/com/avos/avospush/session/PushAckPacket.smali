.class public Lcom/avos/avospush/session/PushAckPacket;
.super Lcom/avos/avospush/session/CommandPacket;
.source "PushAckPacket.java"


# instance fields
.field ids:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/avos/avospush/session/CommandPacket;-><init>()V

    .line 13
    const-string v0, "ack"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/PushAckPacket;->setCmd(Ljava/lang/String;)V

    .line 14
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
    .line 22
    invoke-super {p0}, Lcom/avos/avospush/session/CommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/avos/avospush/session/PushAckPacket;->ids:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 24
    const-string v1, "ids"

    iget-object v2, p0, Lcom/avos/avospush/session/PushAckPacket;->ids:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_0
    return-object v0
.end method

.method public setMessageIds(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/avos/avospush/session/PushAckPacket;->ids:Ljava/lang/Object;

    .line 18
    return-void
.end method
