.class final Lcom/avos/avoscloud/PushService$5;
.super Lcom/avos/avoscloud/SaveCallback;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalChannel:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$5;->val$finalChannel:Ljava/lang/String;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 5
    .parameter

    .prologue
    .line 376
    if-nez p1, :cond_1

    .line 377
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    const-string v1, "channels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avos/avoscloud/PushService$5;->val$finalChannel:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/AVInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 379
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$400()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-static {}, Lcom/avos/avoscloud/AVOSCloud;->showInternalDebugLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVException;->printStackTrace()V

    goto :goto_0
.end method
