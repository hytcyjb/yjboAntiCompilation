.class public Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;
.super Lcom/avos/avospush/session/PeerBasedCommandPacket;
.source "OfflineMessagesUnreadClearPacket.java"


# instance fields
.field conversationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;-><init>()V

    .line 16
    const-string v0, "read"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;->setCmd(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static getUnreadClearPacket(Ljava/lang/String;Ljava/lang/String;)Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;

    invoke-direct {v0}, Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;-><init>()V

    .line 37
    sget-object v1, Lcom/avos/avoscloud/AVOSCloud;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;->setAppId(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p0}, Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;->setPeerId(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p1}, Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;->setConversationId(Ljava/lang/String;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public genDataMap()Ljava/util/Map;
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
    .line 29
    invoke-super {p0}, Lcom/avos/avospush/session/PeerBasedCommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    .line 30
    const-string v1, "cid"

    iget-object v2, p0, Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;->conversationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;->conversationId:Ljava/lang/String;

    return-object v0
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/avos/avospush/session/OfflineMessagesUnreadClearPacket;->conversationId:Ljava/lang/String;

    .line 25
    return-void
.end method
