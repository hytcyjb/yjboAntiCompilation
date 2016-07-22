.class Lcom/didi/beatles/push/MiPushReceiver$1;
.super Landroid/os/Handler;
.source "MiPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/push/MiPushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/push/MiPushReceiver;


# direct methods
.method constructor <init>(Lcom/didi/beatles/push/MiPushReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/didi/beatles/push/MiPushReceiver$1;->this$0:Lcom/didi/beatles/push/MiPushReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 22
    iget-object v1, p0, Lcom/didi/beatles/push/MiPushReceiver$1;->this$0:Lcom/didi/beatles/push/MiPushReceiver;

    #getter for: Lcom/didi/beatles/push/MiPushReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/beatles/push/MiPushReceiver;->access$000(Lcom/didi/beatles/push/MiPushReceiver;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 23
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/beatles/push/MiPushReceiver$1;->this$0:Lcom/didi/beatles/push/MiPushReceiver;

    #getter for: Lcom/didi/beatles/push/MiPushReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/beatles/push/MiPushReceiver;->access$000(Lcom/didi/beatles/push/MiPushReceiver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/didi/common/service/UploadCidService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v0, myIntent:Landroid/content/Intent;
    sget-object v1, Lcom/didi/common/service/UploadCidService;->UPLOAD_TYPE:Ljava/lang/String;

    sget-object v2, Lcom/didi/common/service/UploadCidService;->UPLOAD_MID_ACTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    iget-object v1, p0, Lcom/didi/beatles/push/MiPushReceiver$1;->this$0:Lcom/didi/beatles/push/MiPushReceiver;

    #getter for: Lcom/didi/beatles/push/MiPushReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/beatles/push/MiPushReceiver;->access$000(Lcom/didi/beatles/push/MiPushReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    .end local v0           #myIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
