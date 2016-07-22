.class public Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$DefaultClientProxyChannel;
.super Lcom/avos/avoscloud/java_websocket/client/AbstractClientProxyChannel;
.source "WebSocketClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultClientProxyChannel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;Ljava/nio/channels/ByteChannel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$DefaultClientProxyChannel;->this$0:Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;

    .line 412
    invoke-direct {p0, p2}, Lcom/avos/avoscloud/java_websocket/client/AbstractClientProxyChannel;-><init>(Ljava/nio/channels/ByteChannel;)V

    .line 413
    return-void
.end method


# virtual methods
.method public buildHandShake()Ljava/lang/String;
    .locals 3

    .prologue
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    iget-object v1, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$DefaultClientProxyChannel;->this$0:Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;

    iget-object v1, v1, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 418
    const-string v2, "CONNECT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    iget-object v2, p0, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient$DefaultClientProxyChannel;->this$0:Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;

    invoke-static {v2}, Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;->access$100(Lcom/avos/avoscloud/java_websocket/client/WebSocketClient;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    const-string v2, " HTTP/1.1\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v2, "Host: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
