.class public interface abstract Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$WebSocketClientFactory;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Lcom/avos/avoscloud/java_websocket/WebSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebSocketClientFactory"
.end annotation


# virtual methods
.method public abstract wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;Ljava/lang/String;I)Ljava/nio/channels/ByteChannel;
.end method
