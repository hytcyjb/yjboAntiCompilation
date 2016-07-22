.class Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;
.super Lcom/didi/common/net/ResponseListener;
.source "CarWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->switchPayTypeClick(IIZ)V
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

.field final synthetic val$refreshPayTypeView:Z


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2718
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iput-boolean p2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->val$refreshPayTypeView:Z

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/didi/car/model/CarFeeDetailResult;)V
    .locals 6
    .parameter "carUpdatedFeeDetail"

    .prologue
    const/4 v1, 0x1

    .line 2721
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFinish(Lcom/didi/common/model/BaseObject;)V

    .line 2722
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 2723
    invoke-virtual {p1}, Lcom/didi/car/model/CarFeeDetailResult;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_3

    .line 2724
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget-object v3, p1, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v3, v3, Lcom/didi/car/model/FeeDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    invoke-static {v2, v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3202(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarVoucherInfo;)Lcom/didi/car/model/CarVoucherInfo;

    .line 2727
    iget v2, p1, Lcom/didi/car/model/CarFeeDetailResult;->pricingModel:I

    if-nez v2, :cond_1

    .line 2728
    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    check-cast v0, Lcom/didi/car/model/CarFeeDetail;

    .line 2729
    .local v0, updatedDetail:Lcom/didi/car/model/CarFeeDetail;
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget v3, v0, Lcom/didi/car/model/CarFeeDetail;->payType:I

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I
    invoke-static {v2, v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3302(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;I)I

    .line 2730
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v2

    iput-object v0, v2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 2736
    .end local v0           #updatedDetail:Lcom/didi/car/model/CarFeeDetail;
    :goto_0
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carRefund:Lcom/didi/car/model/CarRefund;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3400(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarRefund;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2737
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carRefund:Lcom/didi/car/model/CarRefund;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3400(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarRefund;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    .line 2741
    :cond_0
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$1800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarVoucherInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v4}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v5, p1, Lcom/didi/car/model/CarFeeDetailResult;->pricingModel:I

    if-ne v5, v1, :cond_2

    :goto_1
    iget-boolean v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->val$refreshPayTypeView:Z

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->updateCostDetailView(Lcom/didi/car/model/CarVoucherInfo;Lcom/didi/car/model/FeeDetail;ZZ)V

    .line 2742
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNotificationHelper:Lcom/didi/car/helper/CarNotificationCountHelper;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$2700(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/helper/CarNotificationCountHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarVoucherInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-virtual {v1, v2, v3}, Lcom/didi/car/helper/CarNotificationCountHelper;->costDetail(Lcom/didi/car/model/CarVoucherInfo;Lcom/didi/car/model/FeeDetail;)V

    .line 2751
    :goto_2
    return-void

    .line 2732
    :cond_1
    iget-object v0, p1, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    check-cast v0, Lcom/didi/car/model/CarNewFeeDetail;

    .line 2733
    .local v0, updatedDetail:Lcom/didi/car/model/CarNewFeeDetail;
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget v3, v0, Lcom/didi/car/model/CarNewFeeDetail;->payType:I

    #setter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I
    invoke-static {v2, v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$3302(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;I)I

    .line 2734
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->this$0:Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;

    move-result-object v2

    iput-object v0, v2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    goto :goto_0

    .line 2741
    .end local v0           #updatedDetail:Lcom/didi/car/model/CarNewFeeDetail;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2744
    :cond_3
    invoke-virtual {p1}, Lcom/didi/car/model/CarFeeDetailResult;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2745
    const v1, 0x7f0b0526

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_2

    .line 2747
    :cond_4
    invoke-virtual {p1}, Lcom/didi/car/model/CarFeeDetailResult;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2718
    check-cast p1, Lcom/didi/car/model/CarFeeDetailResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;->onFinish(Lcom/didi/car/model/CarFeeDetailResult;)V

    return-void
.end method
