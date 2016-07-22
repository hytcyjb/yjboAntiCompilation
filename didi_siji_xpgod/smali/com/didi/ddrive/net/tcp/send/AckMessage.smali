.class public Lcom/didi/ddrive/net/tcp/send/AckMessage;
.super Lcom/didi/ddrive/net/tcp/send/OutMessage;
.source "AckMessage.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/send/OutMessage;-><init>()V

    .line 13
    const/4 v0, 0x6

    iput v0, p0, Lcom/didi/ddrive/net/tcp/send/AckMessage;->cmd:I

    .line 14
    return-void
.end method
