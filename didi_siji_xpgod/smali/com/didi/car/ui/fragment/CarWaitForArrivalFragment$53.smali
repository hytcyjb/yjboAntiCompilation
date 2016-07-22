.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->updateCouponTicketId(Lcom/didi/car/model/CarVoucherInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarFeeDetailResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

.field final synthetic val$voucherInfo:Lcom/didi/car/model/CarVoucherInfo;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarVoucherInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3584
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iput-object p2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->val$voucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarFeeDetailResult;)V
    .locals 7
    .parameter "params"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3587
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 3588
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 3589
    invoke-virtual {p1}, Lcom/didi/car/model/CarFeeDetailResult;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 3590
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->val$voucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    invoke-static {v3, v4}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3202(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarVoucherInfo;)Lcom/didi/car/model/CarVoucherInfo;

    .line 3591
    iget v3, p1, Lcom/didi/car/model/CarFeeDetailResult;->pricingModel:I

    if-nez v3, :cond_0

    .line 3592
    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    check-cast v0, Lcom/didi/car/model/CarFeeDetail;

    .line 3593
    .local v0, updatedDetail:Lcom/didi/car/model/CarFeeDetail;
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iput-object v0, v3, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 3598
    .end local v0           #updatedDetail:Lcom/didi/car/model/CarFeeDetail;
    :goto_0
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    invoke-static {v4}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarVoucherInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v5}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v5

    iget-object v5, v5, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v6, p1, Lcom/didi/car/model/CarFeeDetailResult;->pricingModel:I

    if-ne v6, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->updateCostDetailView(Lcom/didi/car/model/CarVoucherInfo;Lcom/didi/car/model/FeeDetail;ZZ)V

    .line 3599
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNotificationHelper:Lcom/didi/car/helper/CarNotificationCountHelper;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2700(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/helper/CarNotificationCountHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarVoucherInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-virtual {v1, v2, v3}, Lcom/didi/car/helper/CarNotificationCountHelper;->costDetail(Lcom/didi/car/model/CarVoucherInfo;Lcom/didi/car/model/FeeDetail;)V

    .line 3608
    :goto_2
    return-void

    .line 3595
    :cond_0
    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    check-cast v0, Lcom/didi/car/model/CarNewFeeDetail;

    .line 3596
    .local v0, updatedDetail:Lcom/didi/car/model/CarNewFeeDetail;
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iput-object v0, v3, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    goto :goto_0

    .end local v0           #updatedDetail:Lcom/didi/car/model/CarNewFeeDetail;
    :cond_1
    move v1, v2

    .line 3598
    goto :goto_1

    .line 3601
    :cond_2
    invoke-virtual {p1}, Lcom/didi/car/model/CarFeeDetailResult;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3602
    const v1, 0x7f0b05a5

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_2

    .line 3604
    :cond_3
    invoke-virtual {p1}, Lcom/didi/car/model/CarFeeDetailResult;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3584
    check-cast p1, Lcom/didi/car/model/CarFeeDetailResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;->onFinish(Lcom/didi/car/model/CarFeeDetailResult;)V

    return-void
.end method
