.class Lcom/didi/car/ui/fragment/CarConfirmFragment$9;
.super Ljava/lang/Object;
.source "CarConfirmFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/car/ui/fragment/CarConfirmFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 438
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #setter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->mConfirmBtn:Landroid/view/View;
    invoke-static {v1, p1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1002(Lcom/didi/car/ui/fragment/CarConfirmFragment;Landroid/view/View;)Landroid/view/View;

    .line 439
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 440
    .local v0, carOrder:Lcom/didi/car/model/CarOrder;
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget v1, v1, Lcom/didi/car/model/CarEstimatePrice;->confirmShow:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 442
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$900(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$900(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v1

    iget-object v2, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, v2, Lcom/didi/car/model/CarEstimatePrice;->confirmTitle:Ljava/lang/String;

    iget-object v3, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, v3, Lcom/didi/car/model/CarEstimatePrice;->confirmDesc:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget v4, v4, Lcom/didi/car/model/CarEstimatePrice;->dynamicTag:I

    iget-object v5, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v5, v5, Lcom/didi/car/model/CarEstimatePrice;->confirmPriceTip:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/didi/car/helper/CarPopupHelper;->initData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$900(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->dynamicPriceListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;
    invoke-static {v2}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$1100(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/car/listener/DynamicUpdatePriceListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/car/helper/CarPopupHelper;->setListeners(Lcom/didi/car/listener/DynamicUpdatePriceListener;)V

    .line 446
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #getter for: Lcom/didi/car/ui/fragment/CarConfirmFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$900(Lcom/didi/car/ui/fragment/CarConfirmFragment;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/car/helper/CarPopupHelper;->showPopupWindow(Landroid/view/View;)V

    .line 451
    :cond_0
    :goto_0
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    const-string v2, "pgxwfrdynamic01_ck"

    invoke-static {v1, v2}, Lcom/didi/car/helper/CarDynamicLogHelper;->createDynamicLog(Lcom/didi/frame/business/Business;Ljava/lang/String;)V

    .line 452
    return-void

    .line 449
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarConfirmFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarConfirmFragment;

    #calls: Lcom/didi/car/ui/fragment/CarConfirmFragment;->confirmSendOrder()V
    invoke-static {v1}, Lcom/didi/car/ui/fragment/CarConfirmFragment;->access$500(Lcom/didi/car/ui/fragment/CarConfirmFragment;)V

    goto :goto_0
.end method
