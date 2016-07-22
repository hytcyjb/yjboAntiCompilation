.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$29;
.super Ljava/lang/Object;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2110
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$29;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    .line 2113
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$29;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/common/receiver/NetReceiver$NetListener;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/receiver/NetReceiver;->setNetListener(Lcom/didi/common/receiver/NetReceiver$NetListener;)V

    .line 2114
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$29;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$29;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->isAppTopFront(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/push/PushHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$29;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagReqOrderStatusEnd:Z
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2300(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2116
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$29;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$29;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$29;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2119
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$29;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

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

    .line 2123
    :cond_0
    return-void
.end method
