.class public Lcom/avos/avoscloud/java_websocket/client/DefaultWebSocketClientFactory;
.super Ljava/lang/Object;
.source "DefaultWebSocketClientFactory.java"

# interfaces
.implements Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$WebSocketClientFactory;


# instance fields
.field private final webSocketClient:Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/DefaultWebSocketClientFactory;->webSocketClient:Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;

    .line 24
    return-void
.end method


# virtual methods
.method public createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocket;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/DefaultWebSocketClientFactory;->webSocketClient:Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;

    invoke-direct {v0, v1, p2}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;-><init>(Lcom/avos/avoscloud/java_websocket/WebSocketListener;Lcom/avos/avoscloud/java_websocket/drafts/Draft;)V

    return-object v0
.end method

.method public createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocket;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;",
            "Ljava/util/List",
            "<",
            "Lcom/avos/avoscloud/java_websocket/drafts/Draft;",
            ">;",
            "Ljava/net/Socket;",
            ")",
            "Lcom/avos/avoscloud/java_websocket/WebSocket;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/DefaultWebSocketClientFactory;->webSocketClient:Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;

    invoke-direct {v0, v1, p2}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;-><init>(Lcom/avos/avoscloud/java_websocket/WebSocketListener;Ljava/util/List;)V

    return-object v0
.end method

.method public wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;Ljava/lang/String;I)Ljava/nio/channels/ByteChannel;
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    if-nez p2, :cond_0

    .line 37
    :cond_0
    return-object p1
.end method
