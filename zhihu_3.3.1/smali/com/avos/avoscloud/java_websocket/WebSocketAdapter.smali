.class public abstract Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;
.super Ljava/lang/Object;
.source "WebSocketAdapter.java"

# interfaces
.implements Lcom/avos/avoscloud/java_websocket/WebSocketListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashPolicy(Lcom/avos/avoscloud/java_websocket/WebSocket;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 91
    invoke-interface {p1}, Lcom/avos/avoscloud/java_websocket/WebSocket;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidHandshakeException;

    const-string v1, "socket not bound"

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x5a

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    const-string v2, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    const-string v0, "\" /></cross-domain-policy>\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onWebsocketHandshakeReceivedAsClient(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;)Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Server;

    invoke-direct {v0}, Lcom/avos/avoscloud/java_websocket/handshake/HandshakeImpl1Server;-><init>()V

    return-object v0
.end method

.method public onWebsocketHandshakeSentAsClient(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    return-void
.end method

.method public onWebsocketMessageFragment(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method public onWebsocketPing(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    new-instance v0, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;

    invoke-direct {v0, p2}, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;-><init>(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V

    .line 62
    sget-object v1, Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;->PONG:Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/java_websocket/framing/FramedataImpl1;->setOptcode(Lcom/avos/avoscloud/java_websocket/framing/Framedata$Opcode;)V

    .line 63
    invoke-interface {p1, v0}, Lcom/avos/avoscloud/java_websocket/WebSocket;->sendFrame(Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V

    .line 64
    return-void
.end method

.method public onWebsocketPong(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    return-void
.end method
