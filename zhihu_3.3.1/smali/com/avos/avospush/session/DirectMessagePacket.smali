.class public Lcom/avos/avospush/session/DirectMessagePacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "DirectMessagePacket.java"


# instance fields
.field private msg:Ljava/lang/String;

.field private receipt:Z

.field private roomId:Ljava/lang/String;

.field private toPeerIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transi:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 25
    const-string v0, "direct"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/DirectMessagePacket;->setCmd(Ljava/lang/String;)V

    .line 26
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
    .line 70
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 72
    const-string v1, "msg"

    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getToPeerIds()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getToPeerIds()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const-string v1, "toPeerIds"

    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getToPeerIds()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    const-string v1, "roomId"

    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->isTransient()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    const-string v1, "transient"

    invoke-virtual {p0}, Lcom/avos/avospush/session/DirectMessagePacket;->isTransient()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    iget-boolean v1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->receipt:Z

    if-eqz v1, :cond_3

    .line 85
    const-string v1, "r"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_3
    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getToPeerIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->toPeerIds:Ljava/util/Collection;

    return-object v0
.end method

.method public isReceipt()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->receipt:Z

    return v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/avos/avospush/session/DirectMessagePacket;->transi:Z

    return v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->roomId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->msg:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setReceipt(Z)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->receipt:Z

    .line 66
    return-void
.end method

.method public setToPeerIds(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->toPeerIds:Ljava/util/Collection;

    .line 42
    return-void
.end method

.method public setTransient(Z)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/avos/avospush/session/DirectMessagePacket;->transi:Z

    .line 50
    return-void
.end method
