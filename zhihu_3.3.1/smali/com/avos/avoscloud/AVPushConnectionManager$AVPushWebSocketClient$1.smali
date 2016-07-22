.class Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$1;
.super Ljava/util/HashMap;
.source "AVPushConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient;-><init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/net/URI;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$subProtocol:Ljava/lang/String;

.field final synthetic val$this$0:Lcom/avos/avoscloud/AVPushConnectionManager;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPushConnectionManager;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$1;->val$this$0:Lcom/avos/avoscloud/AVPushConnectionManager;

    iput-object p2, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$1;->val$subProtocol:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 246
    const-string v0, "Sec-WebSocket-Protocol"

    iget-object v1, p0, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$1;->val$subProtocol:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/avos/avoscloud/AVPushConnectionManager$AVPushWebSocketClient$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method
