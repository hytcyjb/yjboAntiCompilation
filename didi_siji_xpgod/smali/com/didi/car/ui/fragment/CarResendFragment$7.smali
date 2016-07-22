.class Lcom/didi/car/ui/fragment/CarResendFragment$7;
.super Lcom/didi/common/net/ResponseListener;
.source "CarResendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarResendFragment;->getEstimatePriceCoupon(Z)V
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
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

.field final synthetic val$popWin:Z


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarResendFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarResendFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    iput-boolean p2, p0, Lcom/didi/car/ui/fragment/CarResendFragment$7;->val$popWin:Z

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarExModel;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 321
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

    .line 322
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/car/business/CarOrderLooper;

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 325
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 326
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 289
    check-cast p1, Lcom/didi/car/model/CarExModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment$7;->onError(Lcom/didi/car/model/CarExModel;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarExModel;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 312
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

    .line 313
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/car/business/CarOrderLooper;

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 316
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 317
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 289
    check-cast p1, Lcom/didi/car/model/CarExModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment$7;->onFail(Lcom/didi/car/model/CarExModel;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarExModel;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 292
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 293
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v1

    instance-of v1, v1, Lcom/didi/car/business/CarOrderLooper;

    if-nez v1, :cond_0

    .line 294
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 295
    .local v0, car:Lcom/didi/car/model/CarOrder;
    iget-boolean v1, p0, Lcom/didi/car/ui/fragment/CarResendFragment$7;->val$popWin:Z

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p1, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    invoke-static {v1}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 300
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget v2, p1, Lcom/didi/car/model/CarExModel;->dynamicTag:I

    iput v2, v1, Lcom/didi/car/model/CarEstimatePrice;->dynamicTag:I

    .line 302
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget v2, p1, Lcom/didi/car/model/CarExModel;->confirmShow:I

    iput v2, v1, Lcom/didi/car/model/CarEstimatePrice;->confirmShow:I

    .line 303
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, p1, Lcom/didi/car/model/CarExModel;->confirmTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarEstimatePrice;->confirmTitle:Ljava/lang/String;

    .line 304
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, p1, Lcom/didi/car/model/CarExModel;->confirmDesc:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarEstimatePrice;->confirmDesc:Ljava/lang/String;

    .line 305
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v2, p1, Lcom/didi/car/model/CarExModel;->confirmPriceTip:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarEstimatePrice;->confirmPriceTip:Ljava/lang/String;

    .line 308
    .end local v0           #car:Lcom/didi/car/model/CarOrder;
    :cond_0
    return-void

    .line 298
    .restart local v0       #car:Lcom/didi/car/model/CarOrder;
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarResendFragment$7;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    iget-object v3, p1, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    #calls: Lcom/didi/car/ui/fragment/CarResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v1, v2, v3}, Lcom/didi/car/ui/fragment/CarResendFragment;->access$000(Lcom/didi/car/ui/fragment/CarResendFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 289
    check-cast p1, Lcom/didi/car/model/CarExModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment$7;->onSuccess(Lcom/didi/car/model/CarExModel;)V

    return-void
.end method
