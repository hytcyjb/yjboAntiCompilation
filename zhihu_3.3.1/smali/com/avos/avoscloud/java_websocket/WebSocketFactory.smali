.class public interface abstract Lcom/avos/avoscloud/java_websocket/WebSocketFactory;
.super Ljava/lang/Object;
.source "WebSocketFactory.java"


# virtual methods
.method public abstract createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocket;
.end method

.method public abstract createWebSocket(Lcom/avos/avoscloud/java_websocket/WebSocketAdapter;Ljava/util/List;Ljava/net/Socket;)Lcom/avos/avoscloud/java_websocket/WebSocket;
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
.end method
