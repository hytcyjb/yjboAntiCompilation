.class final Lcom/avos/avoscloud/PushService$6;
.super Landroid/os/Handler;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter

    .prologue
    .line 692
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 696
    invoke-static {}, Lcom/avos/avoscloud/AVInstallation;->getCurrentInstallation()Lcom/avos/avoscloud/AVInstallation;

    move-result-object v0

    new-instance v1, Lcom/avos/avoscloud/PushService$6$1;

    invoke-direct {v1, p0}, Lcom/avos/avoscloud/PushService$6$1;-><init>(Lcom/avos/avoscloud/PushService$6;)V

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/AVInstallation;->saveInBackground(Lcom/avos/avoscloud/SaveCallback;)V

    .line 707
    return-void
.end method
