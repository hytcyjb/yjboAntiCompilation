.class public Lcom/avos/avospush/session/ConversationControlPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "ConversationControlPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avos/avospush/session/ConversationControlPacket$ConversationResponseKey;,
        Lcom/avos/avospush/session/ConversationControlPacket$ConversationControlOp;
    }
.end annotation


# static fields
.field public static final CONVERSATION_CMD:Ljava/lang/String; = "conv"


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private conversationId:Ljava/lang/String;

.field isTransient:Z

.field isUnique:Z

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nonce:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 77
    const-string v0, "conv"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/ConversationControlPacket;->setCmd(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;I)Lcom/avos/avospush/session/ConversationControlPacket;
    .locals 8
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
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/Signature;",
            "I)",
            "Lcom/avos/avospush/session/ConversationControlPacket;"
        }
    .end annotation

    .prologue
    .line 223
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZI)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    return-object v0
.end method

.method public static genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZI)Lcom/avos/avospush/session/ConversationControlPacket;
    .locals 9
    .parameter
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
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/Signature;",
            "ZI)",
            "Lcom/avos/avospush/session/ConversationControlPacket;"
        }
    .end annotation

    .prologue
    .line 216
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/avos/avospush/session/ConversationControlPacket;->genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZZI)Lcom/avos/avospush/session/ConversationControlPacket;

    move-result-object v0

    return-object v0
.end method

.method public static genConversationCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lcom/avos/avoscloud/Signature;ZZI)Lcom/avos/avospush/session/ConversationControlPacket;
    .locals 4
    .parameter
    .parameter
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
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/avos/avoscloud/Signature;",
            "ZZI)",
            "Lcom/avos/avospush/session/ConversationControlPacket;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lcom/avos/avospush/session/ConversationControlPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/ConversationControlPacket;-><init>()V

    .line 187
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationControlPacket;->setAppId(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/ConversationControlPacket;->setPeerId(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/ConversationControlPacket;->setConversationId(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p8}, Lcom/avos/avospush/session/ConversationControlPacket;->setRequestId(I)V

    .line 191
    invoke-virtual {v0, p6}, Lcom/avos/avospush/session/ConversationControlPacket;->setTransient(Z)V

    .line 192
    invoke-virtual {v0, p7}, Lcom/avos/avospush/session/ConversationControlPacket;->setUnique(Z)V

    .line 194
    invoke-static {p2}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {v0, p2}, Lcom/avos/avospush/session/ConversationControlPacket;->setMembers(Ljava/util/List;)V

    .line 197
    :cond_0
    invoke-virtual {v0, p3}, Lcom/avos/avospush/session/ConversationControlPacket;->setOp(Ljava/lang/String;)V

    .line 199
    if-eqz p5, :cond_2

    .line 200
    const-string v1, "add"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "remove"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "start"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    :cond_1
    invoke-virtual {p5}, Lcom/avos/avoscloud/Signature;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationControlPacket;->setSignature(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p5}, Lcom/avos/avoscloud/Signature;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/ConversationControlPacket;->setNonce(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p5}, Lcom/avos/avoscloud/Signature;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/avos/avospush/session/ConversationControlPacket;->setTimestamp(J)V

    .line 207
    :cond_2
    invoke-virtual {v0, p8}, Lcom/avos/avospush/session/ConversationControlPacket;->setRequestId(I)V

    .line 208
    invoke-virtual {v0, p4}, Lcom/avos/avospush/session/ConversationControlPacket;->setAttributes(Ljava/util/Map;)V

    .line 210
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
    .line 154
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 156
    const-string v1, "op"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->op:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->members:Ljava/util/List;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isEmptyList(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const-string v1, "m"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->members:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    const-string v1, "s"

    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "t"

    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v1, "n"

    invoke-virtual {p0}, Lcom/avos/avospush/session/ConversationControlPacket;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    const-string v1, "attr"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->conversationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    const-string v1, "cid"

    iget-object v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->conversationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_3
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTransient:Z

    if-eqz v1, :cond_4

    .line 175
    const-string v1, "transient"

    iget-boolean v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTransient:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_4
    iget-boolean v1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isUnique:Z

    if-eqz v1, :cond_5

    .line 178
    const-string v1, "unique"

    iget-boolean v2, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isUnique:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_5
    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
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
    .line 129
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
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
    .line 97
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->members:Ljava/util/List;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->op:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->timestamp:J

    return-wide v0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTransient:Z

    return v0
.end method

.method public isUnique()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isUnique:Z

    return v0
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->attributes:Ljava/util/Map;

    .line 134
    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->conversationId:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setMembers(Ljava/util/List;)V
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
    .line 101
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->members:Ljava/util/List;

    .line 102
    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->nonce:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setOp(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->op:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->signature:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->timestamp:J

    .line 118
    return-void
.end method

.method public setTransient(Z)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isTransient:Z

    .line 142
    return-void
.end method

.method public setUnique(Z)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/avos/avospush/session/ConversationControlPacket;->isUnique:Z

    .line 150
    return-void
.end method
