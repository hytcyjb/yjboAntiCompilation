.class public Lcom/avos/avospush/session/SessionControlPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "SessionControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/session/SessionControlPacket$SessionControlOp;
    }
.end annotation


# static fields
.field public static final USERAGENT:Ljava/lang/String; = "android/v3.12.3"


# instance fields
.field private nonce:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private reconnectionRequest:Z

.field private sessionPeerIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sessionToken:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field private timestamp:J

.field v2Session:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->reconnectionRequest:Z

    .line 70
    iput-boolean v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->v2Session:Z

    .line 47
    const-string v0, "session"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/SessionControlPacket;->setCmd(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static genSessionCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-static {p0, v0, p1, v0}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/SessionControlPacket;->setSessionToken(Ljava/lang/String;)V

    .line 209
    return-object v0
.end method

.method public static genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            ")",
            "Lcom/avos/avospush/session/SessionControlPacket;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lcom/avos/avospush/session/SessionControlPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/SessionControlPacket;-><init>()V

    .line 163
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionControlPacket;->setAppId(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/SessionControlPacket;->setPeerId(Ljava/lang/String;)V

    .line 165
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/SessionControlPacket;->setSessionPeerIds(Ljava/util/Collection;)V

    .line 168
    :cond_0
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/SessionControlPacket;->setOp(Ljava/lang/String;)V

    .line 169
    const v1, -0x10001

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionControlPacket;->setRequestId(I)V

    .line 171
    if-eqz p3, :cond_2

    .line 172
    const-string v1, "open"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "add"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    :cond_1
    invoke-virtual {p3}, Lcom/avos/avoscloud/Signature;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionControlPacket;->setSignature(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p3}, Lcom/avos/avoscloud/Signature;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/SessionControlPacket;->setNonce(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p3}, Lcom/avos/avoscloud/Signature;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/avos/avospush/session/SessionControlPacket;->setTimestamp(J)V

    .line 179
    :cond_2
    return-object v0
.end method

.method public static genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            "I)",
            "Lcom/avos/avospush/session/SessionControlPacket;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p0, p1, p2, p3}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p4}, Lcom/avos/avospush/session/SessionControlPacket;->setRequestId(I)V

    .line 186
    return-object v0
.end method

.method public static genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;IZ)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 1
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            "IZ)",
            "Lcom/avos/avospush/session/SessionControlPacket;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p0, p1, p2, p3}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 192
    invoke-virtual {v0, p4}, Lcom/avos/avospush/session/SessionControlPacket;->setRequestId(I)V

    .line 193
    iput-boolean p5, v0, Lcom/avos/avospush/session/SessionControlPacket;->v2Session:Z

    .line 194
    return-object v0
.end method

.method public static genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/avos/avoscloud/Signature;IZ)Lcom/avos/avospush/session/SessionControlPacket;
    .locals 1
    .parameter
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avos/avoscloud/Signature;",
            "IZ)",
            "Lcom/avos/avospush/session/SessionControlPacket;"
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {p0, p1, p3, p4}, Lcom/avos/avospush/session/SessionControlPacket;->genSessionCommand(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/avos/avoscloud/Signature;)Lcom/avos/avospush/session/SessionControlPacket;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p5}, Lcom/avos/avospush/session/SessionControlPacket;->setRequestId(I)V

    .line 201
    iput-boolean p6, v0, Lcom/avos/avospush/session/SessionControlPacket;->v2Session:Z

    .line 202
    iput-object p2, v0, Lcom/avos/avospush/session/SessionControlPacket;->tag:Ljava/lang/String;

    .line 203
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
    .line 125
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 127
    const-string v1, "op"

    iget-object v2, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    const-string v1, "sessionPeerIds"

    iget-object v2, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getRequestId()I

    move-result v1

    const v2, -0x10001

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->v2Session:Z

    if-eqz v1, :cond_2

    .line 133
    :cond_1
    const-string v1, "ua"

    const-string v2, "android/v3.12.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->tag:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    const-string v1, "tag"

    iget-object v2, p0, Lcom/avos/avospush/session/SessionControlPacket;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "deviceId"

    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avos/avoscloud/AVInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 142
    const-string v1, "s"

    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "t"

    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "n"

    invoke-virtual {p0}, Lcom/avos/avospush/session/SessionControlPacket;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_3
    iget-boolean v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->reconnectionRequest:Z

    if-eqz v1, :cond_4

    .line 148
    const-string v1, "r"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_4
    iget-object v1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 152
    const-string v1, "st"

    iget-object v2, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_5
    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionPeerIds()Ljava/util/Collection;
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
    .line 108
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->timestamp:J

    return-wide v0
.end method

.method public isReconnectionRequest()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/avos/avospush/session/SessionControlPacket;->reconnectionRequest:Z

    return v0
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->nonce:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->op:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setReconnectionRequest(Z)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->reconnectionRequest:Z

    .line 121
    return-void
.end method

.method public setSessionPeerIds(Ljava/util/Collection;)V
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
    .line 112
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionPeerIds:Ljava/util/Collection;

    .line 113
    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->sessionToken:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->signature:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/avos/avospush/session/SessionControlPacket;->timestamp:J

    .line 81
    return-void
.end method
