.class Lcom/avos/avoscloud/AVSessionWebSocketListener$2;
.super Ljava/lang/Object;
.source "AVSessionWebSocketListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVSessionWebSocketListener;->onWebSocketOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

.field final synthetic val$callback:Lcom/avos/avoscloud/SignatureCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVSessionWebSocketListener;Lcom/avos/avoscloud/SignatureCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$2;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iput-object p2, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$2;->val$callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    new-instance v0, Lcom/avos/avoscloud/AVSession$SignatureTask;

    iget-object v1, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$2;->val$callback:Lcom/avos/avoscloud/SignatureCallback;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVSession$SignatureTask;-><init>(Lcom/avos/avoscloud/SignatureCallback;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avos/avoscloud/AVSessionWebSocketListener$2;->this$0:Lcom/avos/avoscloud/AVSessionWebSocketListener;

    iget-object v3, v3, Lcom/avos/avoscloud/AVSessionWebSocketListener;->session:Lcom/avos/avoscloud/AVSession;

    invoke-virtual {v3}, Lcom/avos/avoscloud/AVSession;->getSelfPeerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVSession$SignatureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void
.end method
