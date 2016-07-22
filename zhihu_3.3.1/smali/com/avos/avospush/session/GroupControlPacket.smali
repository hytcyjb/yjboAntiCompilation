.class public Lcom/avos/avospush/session/GroupControlPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "GroupControlPacket.java"

# interfaces
.implements Lcom/avos/avospush/session/MessageQueue$HasId;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/session/GroupControlPacket$GroupControlOp;
    }
.end annotation


# instance fields
.field private groupPeerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private roomId:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 82
    const-string v0, "room"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/GroupControlPacket;->setCmd(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static genGroupCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/GroupControlPacket;
    .locals 4
    .parameter
    .parameter
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
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            ")",
            "Lcom/avos/avospush/session/GroupControlPacket;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/avos/avospush/session/GroupControlPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/GroupControlPacket;-><init>()V

    .line 108
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/GroupControlPacket;->setAppId(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/GroupControlPacket;->setPeerId(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/GroupControlPacket;->setGroupPeerIds(Ljava/util/List;)V

    .line 111
    invoke-virtual {v0, p3}, Lcom/avos/avospush/session/GroupControlPacket;->setOp(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/GroupControlPacket;->setGroupId(Ljava/lang/String;)V

    .line 114
    if-eqz p4, :cond_0

    .line 115
    const-string v1, "leave"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-virtual {p4}, Lcom/avos/avoscloud/Signature;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/GroupControlPacket;->setSignature(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p4}, Lcom/avos/avoscloud/Signature;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/GroupControlPacket;->setNonce(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p4}, Lcom/avos/avoscloud/Signature;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/avos/avospush/session/GroupControlPacket;->setTimestamp(J)V

    .line 121
    :cond_0
    return-object v0
.end method

.method public static genGroupCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/GroupControlPacket;
    .locals 2
    .parameter
    .parameter
    .parameter
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
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            "I)",
            "Lcom/avos/avospush/session/GroupControlPacket;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {p0, p1, p2, p3, p4}, Lcom/avos/avospush/session/GroupControlPacket;->genGroupCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/GroupControlPacket;

    move-result-object v0

    .line 127
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/GroupControlPacket;->setId(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/GroupControlPacket;->setRequestId(I)V

    .line 129
    return-object v0
.end method


# virtual methods
.method protected genDataMap()Ljava/util/Map;
    .locals 4
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
    .line 87
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 88
    const-string v1, "op"

    iget-object v2, p0, Lcom/avos/avospush/session/GroupControlPacket;->op:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "roomId"

    iget-object v2, p0, Lcom/avos/avospush/session/GroupControlPacket;->roomId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "invite"

    iget-object v2, p0, Lcom/avos/avospush/session/GroupControlPacket;->op:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "kick"

    iget-object v2, p0, Lcom/avos/avospush/session/GroupControlPacket;->op:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    const-string v1, "roomPeerIds"

    invoke-virtual {p0}, Lcom/avos/avospush/session/GroupControlPacket;->getGroupPeerIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/avos/avospush/session/GroupControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 97
    const-string v1, "s"

    invoke-virtual {p0}, Lcom/avos/avospush/session/GroupControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "t"

    invoke-virtual {p0}, Lcom/avos/avospush/session/GroupControlPacket;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "n"

    invoke-virtual {p0}, Lcom/avos/avospush/session/GroupControlPacket;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_2
    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupPeerIds()Ljava/util/List;
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
    .line 74
    iget-object v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->groupPeerIds:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/avos/avospush/session/GroupControlPacket;->timestamp:J

    return-wide v0
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->roomId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setGroupPeerIds(Ljava/util/List;)V
    .locals 0
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
    .line 78
    iput-object p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->groupPeerIds:Ljava/util/List;

    .line 79
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->id:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->nonce:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->op:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->signature:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/avos/avospush/session/GroupControlPacket;->timestamp:J

    .line 55
    return-void
.end method
