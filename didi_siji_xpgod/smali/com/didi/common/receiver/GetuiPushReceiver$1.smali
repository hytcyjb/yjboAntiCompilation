.class Lcom/didi/common/receiver/GetuiPushReceiver$1;
.super Landroid/os/Handler;
.source "GetuiPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/common/receiver/GetuiPushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/common/receiver/GetuiPushReceiver;


# direct methods
.method constructor <init>(Lcom/didi/common/receiver/GetuiPushReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/didi/common/receiver/GetuiPushReceiver$1;->this$0:Lcom/didi/common/receiver/GetuiPushReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----------------handler msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/receiver/GetuiPushReceiver$1;->this$0:Lcom/didi/common/receiver/GetuiPushReceiver;

    #getter for: Lcom/didi/common/receiver/GetuiPushReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/didi/common/receiver/GetuiPushReceiver;->access$000(Lcom/didi/common/receiver/GetuiPushReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getClientIdString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/didi/common/receiver/GetuiPushReceiver$1;->this$0:Lcom/didi/common/receiver/GetuiPushReceiver;

    #getter for: Lcom/didi/common/receiver/GetuiPushReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/common/receiver/GetuiPushReceiver;->access$000(Lcom/didi/common/receiver/GetuiPushReceiver;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/common/receiver/GetuiPushReceiver$1;->this$0:Lcom/didi/common/receiver/GetuiPushReceiver;

    #getter for: Lcom/didi/common/receiver/GetuiPushReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/common/receiver/GetuiPushReceiver;->access$000(Lcom/didi/common/receiver/GetuiPushReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/didi/common/service/UploadCidService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, myIntent:Landroid/content/Intent;
    sget-object v1, Lcom/didi/common/service/UploadCidService;->UPLOAD_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/didi/common/service/UploadCidService;->UPLOAD_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/didi/common/receiver/GetuiPushReceiver$1;->this$0:Lcom/didi/common/receiver/GetuiPushReceiver;

    #getter for: Lcom/didi/common/receiver/GetuiPushReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/common/receiver/GetuiPushReceiver;->access$000(Lcom/didi/common/receiver/GetuiPushReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 52
    .end local v0           #myIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
