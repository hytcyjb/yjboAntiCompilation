.class public abstract Lcom/avos/avospush/session/CommandPacket;
.super Ljava/lang/Object;
.source "CommandPacket.java"


# static fields
.field public static final MESSAGEID:Ljava/lang/String; = "i"

.field public static final OPERATION_KEY:Ljava/lang/String; = "op"

.field public static final UNSUPPORTED_OPERATION:I = -0x10001


# instance fields
.field private appId:Ljava/lang/String;

.field private cmd:Ljava/lang/String;

.field private installationId:Ljava/lang/String;

.field private requestId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, -0x10001

    iput v0, p0, Lcom/avos/avospush/session/CommandPacket;->requestId:I

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
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    const-string v1, "cmd"

    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getCmd()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "appId"

    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getInstallationId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "installationId"

    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    iget v1, p0, Lcom/avos/avospush/session/CommandPacket;->requestId:I

    const v2, -0x10001

    if-le v1, v2, :cond_1

    .line 63
    const-string v1, "i"

    iget v2, p0, Lcom/avos/avospush/session/CommandPacket;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/avos/avospush/session/CommandPacket;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avos/avospush/session/CommandPacket;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avos/avospush/session/CommandPacket;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/avos/avospush/session/CommandPacket;->requestId:I

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/avos/avospush/session/CommandPacket;->appId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setCmd(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/avos/avospush/session/CommandPacket;->cmd:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setInstallationId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/avos/avospush/session/CommandPacket;->installationId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setRequestId(I)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/avos/avospush/session/CommandPacket;->requestId:I

    .line 28
    return-void
.end method

.method public final toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/avos/avospush/session/CommandPacket;->genDataMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
