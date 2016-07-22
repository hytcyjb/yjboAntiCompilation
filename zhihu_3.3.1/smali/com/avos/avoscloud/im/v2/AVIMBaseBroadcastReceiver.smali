.class abstract Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVIMBaseBroadcastReceiver.java"


# instance fields
.field callback:Lcom/avos/avoscloud/AVCallback;


# direct methods
.method public constructor <init>(Lcom/avos/avoscloud/AVCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;->callback:Lcom/avos/avoscloud/AVCallback;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract execute(Landroid/content/Intent;Ljava/lang/Throwable;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callbackException"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 27
    invoke-virtual {p0, p2, v0}, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;->execute(Landroid/content/Intent;Ljava/lang/Throwable;)V

    .line 28
    sget-object v0, Lcom/avos/avoscloud/AVOSCloud;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/j;->a(Landroid/content/Context;)Landroid/support/v4/content/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/j;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;->callback:Lcom/avos/avoscloud/AVCallback;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/avos/avoscloud/im/v2/AVIMBaseBroadcastReceiver;->callback:Lcom/avos/avoscloud/AVCallback;

    const/4 v2, 0x0

    new-instance v3, Lcom/avos/avoscloud/AVException;

    invoke-direct {v3, v0}, Lcom/avos/avoscloud/AVException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2, v3}, Lcom/avos/avoscloud/AVCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
