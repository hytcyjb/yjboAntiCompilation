.class public interface abstract Lcom/avos/avoscloud/java_websocket/WebSocketListener;
.super Ljava/lang/Object;
.source "WebSocketListener.java"


# virtual methods
.method public abstract getFlashPolicy(Lcom/avos/avoscloud/java_websocket/WebSocket;)Ljava/lang/String;
.end method

.method public abstract getLocalSocketAddress(Lcom/avos/avoscloud/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
.end method

.method public abstract getRemoteSocketAddress(Lcom/avos/avoscloud/java_websocket/WebSocket;)Ljava/net/InetSocketAddress;
.end method

.method public abstract onWebsocketClose(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketCloseInitiated(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;)V
.end method

.method public abstract onWebsocketClosing(Lcom/avos/avoscloud/java_websocket/WebSocket;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketError(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/Exception;)V
.end method

.method public abstract onWebsocketHandshakeReceivedAsClient(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;)V
.end method

.method public abstract onWebsocketHandshakeReceivedAsServer(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/drafts/Draft;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;)Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshakeBuilder;
.end method

.method public abstract onWebsocketHandshakeSentAsClient(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/handshake/ClientHandshake;)V
.end method

.method public abstract onWebsocketMessage(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/lang/String;)V
.end method

.method public abstract onWebsocketMessage(Lcom/avos/avoscloud/java_websocket/WebSocket;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onWebsocketMessageFragment(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
.end method

.method public abstract onWebsocketOpen(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/handshake/Handshakedata;)V
.end method

.method public abstract onWebsocketPing(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
.end method

.method public abstract onWebsocketPong(Lcom/avos/avoscloud/java_websocket/WebSocket;Lcom/avos/avoscloud/java_websocket/framing/Framedata;)V
.end method

.method public abstract onWriteDemand(Lcom/avos/avoscloud/java_websocket/WebSocket;)V
.end method
