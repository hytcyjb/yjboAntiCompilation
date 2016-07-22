.class Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$2;
.super Ljava/lang/Object;
.source "AVPushConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->onOpen(Lcom/avos/avoscloud/java_websocket/handshake/ServerHandshake;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;)V
    .locals 0
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$2;->this$1:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$2;->this$1:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    iget-object v0, v0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    iget-object v0, v0, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionCallback:Lcom/avos/avoscloud/AVCallback;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$2;->this$1:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    iget-object v0, v0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    iget-object v0, v0, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionCallback:Lcom/avos/avoscloud/AVCallback;

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$2;->this$1:Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;

    iget-object v0, v0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;->this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    iput-object v1, v0, Lcom/avos/avoscloud/AVPushConnectionManager;->connectionCallback:Lcom/avos/avoscloud/AVCallback;

    .line 311
    return-void
.end method
