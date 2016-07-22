.class public Lcom/avos/avospush/session/PeerBasedCommandPacket;
.super Lcom/avos/avospush/session/CommandPacket;
.source "PeerBasedCommandPacket.java"


# instance fields
.field private peerId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/avos/avospush/session/CommandPacket;-><init>()V

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

    .line 24
    invoke-virtual {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getPeerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 25
    const-string v1, "peerId"

    invoke-virtual {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->getPeerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    return-object v0
.end method

.method public getPeerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/avos/avospush/session/PeerBasedCommandPacket;->peerId:Ljava/lang/String;

    return-object v0
.end method

.method public setPeerId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/avos/avospush/session/PeerBasedCommandPacket;->peerId:Ljava/lang/String;

    .line 18
    return-void
.end method
