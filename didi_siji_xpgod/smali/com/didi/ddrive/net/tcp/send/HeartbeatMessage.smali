.class public Lcom/didi/ddrive/net/tcp/send/HeartbeatMessage;
.super Lcom/didi/ddrive/net/tcp/send/OutMessage;
.source "HeartbeatMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/send/OutMessage;-><init>()V

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/ddrive/net/tcp/send/HeartbeatMessage;->cmd:I

    .line 14
    return-void
.end method
