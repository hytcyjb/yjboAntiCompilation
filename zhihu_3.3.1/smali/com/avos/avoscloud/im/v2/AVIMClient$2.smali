.class Lcom/avos/avoscloud/im/v2/AVIMClient$2;
.super Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;->getOnlineClients(Ljava/util/List;Lcom/avos/avoscloud/im/v2/callback/AVIMOnlineClientsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/im/v2/AVIMClient;Lcom/avos/avoscloud/AVCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$2;->this$0:Lcom/avos/avoscloud/im/v2/AVIMClient;

    invoke-direct {p0, p2}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;-><init>(Lcom/avos/avoscloud/AVCallback;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 184
    if-eqz p2, :cond_0

    .line 185
    iget-object v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$2;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-static {p2}, Lcom/avos/avoscloud/im/v2/AVIMException;->wrapperAVException(Ljava/lang/Throwable;)Lcom/avos/avoscloud/im/v2/AVIMException;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 191
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "callbackOnlineClient"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$2;->callback:Lcom/avos/avoscloud/AVCallback;

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
