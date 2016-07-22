.class public Lcom/didi/ddrive/net/tcp/tcp/ConnectionImpl;
.super Lcom/didi/ddrive/net/tcp/tcp/Connection;
.source "ConnectionImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/didi/ddrive/net/tcp/tcp/Connection;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method protected createChannel(Ljava/lang/String;I)Lcom/didi/ddrive/net/tcp/tcp/Channel;
    .locals 1
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 15
    new-instance v0, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;

    invoke-direct {v0, p1, p2}, Lcom/didi/ddrive/net/tcp/tcp/ChannelImpl;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
