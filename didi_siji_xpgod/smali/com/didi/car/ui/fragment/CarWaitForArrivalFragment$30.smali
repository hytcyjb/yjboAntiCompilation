.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$30;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/common/receiver/NetReceiver$NetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2126
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$30;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 5

    .prologue
    const/16 v4, 0x1f

    const/16 v3, 0x1e

    .line 2129
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$30;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$30;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->isAppTopFront(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/push/PushHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$30;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagReqOrderStatusEnd:Z
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2300(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2131
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$30;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2132
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$30;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getQueryCarOrderStatus()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2140
    :cond_0
    :goto_0
    return-void

    .line 2134
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$30;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagPayResultQuery:Z
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2400(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$30;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2136
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$30;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getQueryCarOrderStatus()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
