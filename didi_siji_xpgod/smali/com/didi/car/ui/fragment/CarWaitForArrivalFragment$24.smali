.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$24;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doTripCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarCancelTrip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1792
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$24;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarCancelTrip;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 1796
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$24;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 1797
    iget v1, p1, Lcom/didi/car/model/CarCancelTrip;->errno:I

    if-nez v1, :cond_0

    .line 1798
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$24;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/didi/car/ui/activity/CarCancelTripActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1799
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cancel_trip_driver_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1800
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$24;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1809
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1801
    :cond_0
    iget v1, p1, Lcom/didi/car/model/CarCancelTrip;->errno:I

    const/16 v2, 0x406

    if-ne v1, v2, :cond_1

    .line 1802
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$24;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget-object v2, p1, Lcom/didi/car/model/CarCancelTrip;->errmsg:Ljava/lang/String;

    #calls: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showOrderCanceledDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1803
    :cond_1
    iget v1, p1, Lcom/didi/car/model/CarCancelTrip;->errno:I

    const/16 v2, 0x40b

    if-ne v1, v2, :cond_2

    .line 1804
    iget-object v1, p1, Lcom/didi/car/model/CarCancelTrip;->errmsg:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 1805
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    goto :goto_0

    .line 1807
    :cond_2
    iget-object v1, p1, Lcom/didi/car/model/CarCancelTrip;->errmsg:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1792
    check-cast p1, Lcom/didi/car/model/CarCancelTrip;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$24;->onFinish(Lcom/didi/car/model/CarCancelTrip;)V

    return-void
.end method
