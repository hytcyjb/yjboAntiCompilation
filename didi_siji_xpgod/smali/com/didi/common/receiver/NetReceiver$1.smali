.class Lcom/didi/common/receiver/NetReceiver$1;
.super Landroid/os/Handler;
.source "NetReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/receiver/NetReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/receiver/NetReceiver;


# direct methods
.method constructor <init>(Lcom/didi/common/receiver/NetReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/common/receiver/NetReceiver$1;->this$0:Lcom/didi/common/receiver/NetReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 102
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getPushReConnConfigResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    :cond_0
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->connPush()V

    .line 106
    return-void
.end method
