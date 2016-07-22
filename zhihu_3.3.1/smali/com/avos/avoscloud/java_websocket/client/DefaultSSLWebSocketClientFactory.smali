.class public Lcom/avos/avoscloud/java_websocket/client/DefaultSSLWebSocketClientFactory;
.super Ljava/lang/Object;
.source "DefaultSSLWebSocketClientFactory.java"

# interfaces
.implements Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$WebSocketClientFactory;


# instance fields
.field protected exec:Ljava/util/concurrent/ExecutorService;

.field protected sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/java_websocket/client/DefaultSSLWebSocketClientFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ExecutorService;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 32
    :cond_1
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/DefaultSSLWebSocketClientFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 33
    iput-object p2, p0, Lcom/avos/avoscloud/java_websocket/client/DefaultSSLWebSocketClientFactory;->exec:Ljava/util/concurrent/ExecutorService;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocket;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/java_websocket/client/DefaultSSLWebSocketClientFactory;->createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocket;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/avos/avoscloud/java_websocket/client/DefaultSSLWebSocketClientFactory;->createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    move-result-object v0

    return-object v0
.end method

.method public createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocketImpl;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;-><init>(Lcom/avos/avoscloud/java_websocket/WebSocketListener;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/net/Socket;)V

    return-object v0
.end method

.method public createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocketImpl;
    .locals 1
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
            "Lcom/avos/avoscloud/java_websocket/WebSocketImpl;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/avos/avoscloud/java_websocket/WebSocketImpl;-><init>(Lcom/avos/avoscloud/java_websocket/WebSocketListener;Ljava/util/List;Ljava/net/Socket;)V

    return-object v0
.end method

.method public wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;Ljava/lang/String;I)Ljava/nio/channels/ByteChannel;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/avos/avoscloud/java_websocket/client/DefaultSSLWebSocketClientFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0, p3, p4}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 40
    new-instance v1, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;

    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/client/DefaultSSLWebSocketClientFactory;->exec:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, p1, v0, v2, p2}, Lcom/avos/avoscloud/java_websocket/SSLSocketChannel2;-><init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/SelectionKey;)V

    return-object v1
.end method
