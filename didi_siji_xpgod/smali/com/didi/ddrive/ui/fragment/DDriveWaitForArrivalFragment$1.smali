.class Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;
.super Landroid/os/Handler;
.source "DDriveWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-wide/16 v4, 0x7530

    const-wide/16 v2, 0x2710

    .line 202
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 203
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/managers/DriverComingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriverComingManager;->queryDriverPosition()V

    .line 204
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$100(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/model/DDriveOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/ddrive/model/DDriveOrder;->driver:Lcom/didi/ddrive/model/Driver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$100(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/model/DDriveOrder;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/ddrive/model/DDriveOrder;->driver:Lcom/didi/ddrive/model/Driver;

    iget-object v0, v0, Lcom/didi/ddrive/model/Driver;->mob:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/managers/DriverComingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriverComingManager;->loadDriverInfo()V

    .line 207
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;->sendEmptyMessageDelayed(IJ)Z

    .line 224
    :cond_2
    :goto_0
    return-void

    .line 209
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 210
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/managers/DriverComingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriverComingManager;->queryDriverWaitingFee()V

    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 213
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 214
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/OrderStateManager;->queryOrderState()V

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 217
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 218
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/managers/DriverComingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriverComingManager;->queryDrivingFee()V

    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 221
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    #calls: Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showShareDialog()V
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->access$200(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V

    goto :goto_0
.end method
