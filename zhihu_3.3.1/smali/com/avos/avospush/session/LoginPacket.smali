.class public Lcom/avos/avospush/session/LoginPacket;
.super Lcom/avos/avospush/session/CommandPacket;
.source "LoginPacket.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/avos/avospush/session/CommandPacket;-><init>()V

    .line 9
    const-string v0, "login"

    invoke-virtual {p0, v0}, Lcom/avos/avospush/session/LoginPacket;->setCmd(Ljava/lang/String;)V

    .line 10
    return-void
.end method
