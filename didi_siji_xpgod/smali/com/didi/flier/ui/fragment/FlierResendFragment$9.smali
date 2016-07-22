.class Lcom/didi/flier/ui/fragment/FlierResendFragment$9;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierResendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierResendFragment;->getEstimatePriceCoupon(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarExModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

.field final synthetic val$popWin:Z


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$9;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    iput-boolean p2, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$9;->val$popWin:Z

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarExModel;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/flier/business/FlierOrderLooper;

    if-nez v0, :cond_0

    .line 531
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 533
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 534
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 494
    check-cast p1, Lcom/didi/car/model/CarExModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierResendFragment$9;->onError(Lcom/didi/car/model/CarExModel;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarExModel;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/flier/business/FlierOrderLooper;

    if-nez v0, :cond_0

    .line 522
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 524
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 525
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 494
    check-cast p1, Lcom/didi/car/model/CarExModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierResendFragment$9;->onFail(Lcom/didi/car/model/CarExModel;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarExModel;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 497
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 498
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v1

    instance-of v1, v1, Lcom/didi/flier/business/FlierOrderLooper;

    if-nez v1, :cond_1

    .line 499
    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 500
    .local v0, car:Lcom/didi/car/model/CarOrder;
    iget-boolean v1, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$9;->val$popWin:Z

    if-eqz v1, :cond_2

    .line 501
    iget-object v1, p1, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    invoke-static {v1}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 508
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v1, :cond_1

    .line 509
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget v2, p1, Lcom/didi/car/model/CarExModel;->dynamicTag:I

    iput v2, v1, Lcom/didi/car/model/CarEstimatePrice;->dynamicTag:I

    .line 510
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget v2, p1, Lcom/didi/car/model/CarExModel;->confirmShow:I

    iput v2, v1, Lcom/didi/car/model/CarEstimatePrice;->confirmShow:I

    .line 511
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, p1, Lcom/didi/car/model/CarExModel;->confirmTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarEstimatePrice;->confirmTitle:Ljava/lang/String;

    .line 512
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, p1, Lcom/didi/car/model/CarExModel;->confirmDesc:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarEstimatePrice;->confirmDesc:Ljava/lang/String;

    .line 513
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, p1, Lcom/didi/car/model/CarExModel;->confirmPriceTip:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarEstimatePrice;->confirmPriceTip:Ljava/lang/String;

    .line 516
    .end local v0           #car:Lcom/didi/car/model/CarOrder;
    :cond_1
    return-void

    .line 503
    .restart local v0       #car:Lcom/didi/car/model/CarOrder;
    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v1, v1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, v2, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    invoke-virtual {v1, v2}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v1

    if-lez v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$9;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    iget-object v3, p1, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    #calls: Lcom/didi/flier/ui/fragment/FlierResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v1, v2, v3}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$000(Lcom/didi/flier/ui/fragment/FlierResendFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 494
    check-cast p1, Lcom/didi/car/model/CarExModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierResendFragment$9;->onSuccess(Lcom/didi/car/model/CarExModel;)V

    return-void
.end method
