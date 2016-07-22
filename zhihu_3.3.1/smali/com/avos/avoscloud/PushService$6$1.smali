.class Lcom/avos/avoscloud/PushService$6$1;
.super Lcom/avos/avoscloud/SaveCallback;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/PushService$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/PushService$6;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/PushService$6;)V
    .locals 0
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/avos/avoscloud/PushService$6$1;->this$0:Lcom/avos/avoscloud/PushService$6;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 699
    if-eqz p1, :cond_0

    const-string v0, "already has one request sending"

    invoke-virtual {p1}, Lcom/avos/avoscloud/AVException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$400()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 701
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 702
    iput v2, v0, Landroid/os/Message;->what:I

    .line 703
    invoke-static {}, Lcom/avos/avoscloud/PushService;->access$400()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 705
    :cond_0
    return-void
.end method
