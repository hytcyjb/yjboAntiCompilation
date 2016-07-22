.class Lcom/didi/car/ui/fragment/CarResendFragment$9;
.super Lcom/didi/common/net/ResponseListener;
.source "CarResendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/car/ui/fragment/CarResendFragment;->getEstimateFare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/car/model/CarEstimatePrice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/car/ui/fragment/CarResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarResendFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 489
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

    .line 490
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/car/business/CarOrderLooper;

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 492
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    .line 494
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 495
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 417
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment$9;->onError(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 479
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

    .line 480
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/car/business/CarOrderLooper;

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 482
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    .line 484
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 485
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 417
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment$9;->onFail(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 11
    .parameter "t"

    .prologue
    const/4 v10, 0x1

    .line 420
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 421
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fare="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/didi/car/model/CarEstimatePrice;->discountPrice:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 422
    if-eqz p1, :cond_0

    .line 423
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v8

    sget-object v9, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v8, v9, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 426
    .local v0, car:Lcom/didi/car/model/CarOrder;
    iget-object v8, v0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    if-eqz v8, :cond_6

    .line 427
    iget-object v8, v0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 428
    .local v6, oldSize:I
    iget-object v8, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 429
    iget-object v8, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 430
    .local v5, newSize:I
    new-array v2, v5, [I

    .line 432
    .local v2, carListArray:[I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    if-ge v4, v5, :cond_4

    .line 433
    const/4 v7, 0x0

    .local v7, sInt:I
    :goto_2
    if-ge v7, v6, :cond_2

    .line 434
    iget-object v8, v0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/car/model/CarModel;

    iget v9, v8, Lcom/didi/car/model/CarModel;->cLevel:I

    iget-object v8, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/car/model/CarModel;

    iget v8, v8, Lcom/didi/car/model/CarModel;->cLevel:I

    if-ne v9, v8, :cond_3

    .line 435
    aput v10, v2, v4

    .line 432
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 433
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 440
    .end local v7           #sInt:I
    :cond_4
    iput-object v2, p1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 469
    .end local v2           #carListArray:[I
    .end local v4           #index:I
    .end local v5           #newSize:I
    .end local v6           #oldSize:I
    :cond_5
    :goto_3
    iput-object p1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 470
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v8

    sget-object v9, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v8, v9, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v8

    instance-of v8, v8, Lcom/didi/car/business/CarOrderLooper;

    if-nez v8, :cond_0

    .line 471
    iget-object v8, p0, Lcom/didi/car/ui/fragment/CarResendFragment$9;->this$0:Lcom/didi/car/ui/fragment/CarResendFragment;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v9

    iget-object v9, v9, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    iget-object v10, p1, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    #calls: Lcom/didi/car/ui/fragment/CarResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v8, v9, v10}, Lcom/didi/car/ui/fragment/CarResendFragment;->access$000(Lcom/didi/car/ui/fragment/CarResendFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 472
    iget-object v8, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v8, v8, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-static {v8}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->updateCarModelView(Ljava/util/List;)V

    goto :goto_0

    .line 443
    :cond_6
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 444
    .local v1, carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    if-eqz v1, :cond_5

    .line 445
    iget-object v8, v1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 448
    iget-object v3, v1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 449
    .local v3, carModelIndexArray:[I
    invoke-virtual {v1, v3}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v8

    if-lez v8, :cond_5

    .line 450
    iget-object v8, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 451
    iget-object v8, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 452
    .restart local v5       #newSize:I
    new-array v2, v5, [I

    .line 453
    .restart local v2       #carListArray:[I
    const/4 v4, 0x0

    .restart local v4       #index:I
    :goto_4
    if-ge v4, v5, :cond_9

    .line 454
    const/4 v7, 0x0

    .restart local v7       #sInt:I
    :goto_5
    array-length v8, v3

    if-ge v7, v8, :cond_8

    .line 455
    aget v8, v3, v7

    if-ne v10, v8, :cond_7

    iget-object v8, v1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/car/model/CarModel;

    iget v9, v8, Lcom/didi/car/model/CarModel;->cLevel:I

    iget-object v8, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/car/model/CarModel;

    iget v8, v8, Lcom/didi/car/model/CarModel;->cLevel:I

    if-ne v9, v8, :cond_7

    .line 457
    aput v10, v2, v4

    .line 454
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 453
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 461
    .end local v7           #sInt:I
    :cond_9
    iput-object v2, p1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    goto :goto_3
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 417
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment$9;->onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method
