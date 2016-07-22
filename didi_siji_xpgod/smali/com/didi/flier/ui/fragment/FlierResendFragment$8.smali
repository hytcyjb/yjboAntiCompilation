.class Lcom/didi/flier/ui/fragment/FlierResendFragment$8;
.super Lcom/didi/common/net/ResponseListener;
.source "FlierResendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/flier/ui/fragment/FlierResendFragment;->getEstimateFare()V
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
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$8;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 466
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

    .line 467
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/flier/business/FlierOrderLooper;

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 469
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    .line 470
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarPriceLayout()V

    .line 472
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onError(Lcom/didi/common/model/BaseObject;)V

    .line 473
    return-void
.end method

.method public bridge synthetic onError(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 380
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierResendFragment$8;->onError(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method public onFail(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 455
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

    .line 456
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v0

    instance-of v0, v0, Lcom/didi/flier/business/FlierOrderLooper;

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 458
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->checkCarModel()V

    .line 459
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarPriceLayout()V

    .line 461
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 462
    return-void
.end method

.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 380
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierResendFragment$8;->onFail(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method

.method public onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V
    .locals 12
    .parameter "t"

    .prologue
    const/4 v11, 0x1

    .line 383
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onSuccess(Lcom/didi/common/model/BaseObject;)V

    .line 384
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

    .line 385
    if-eqz p1, :cond_0

    .line 386
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v8

    sget-object v9, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-eq v8, v9, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    sget-object v8, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v8}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/flier/model/FlierOrder;

    .line 389
    .local v0, car:Lcom/didi/flier/model/FlierOrder;
    iget-object v8, v0, Lcom/didi/flier/model/FlierOrder;->carModelList:Ljava/util/List;

    if-eqz v8, :cond_6

    .line 390
    iget-object v8, v0, Lcom/didi/flier/model/FlierOrder;->carModelList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    .line 391
    .local v6, oldSize:I
    iget-object v8, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 392
    iget-object v8, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 393
    .local v5, newSize:I
    new-array v2, v5, [I

    .line 395
    .local v2, carListArray:[I
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    if-ge v4, v5, :cond_4

    .line 396
    const/4 v7, 0x0

    .local v7, sInt:I
    :goto_2
    if-ge v7, v6, :cond_2

    .line 397
    iget-object v8, v0, Lcom/didi/flier/model/FlierOrder;->carModelList:Ljava/util/List;

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

    .line 398
    aput v11, v2, v4

    .line 395
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 396
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 403
    .end local v7           #sInt:I
    :cond_4
    iput-object v2, p1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 431
    .end local v2           #carListArray:[I
    .end local v4           #index:I
    .end local v5           #newSize:I
    .end local v6           #oldSize:I
    :cond_5
    :goto_3
    iput-object p1, v0, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 432
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v8

    sget-object v9, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v8, v9, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getInstance()Lcom/didi/frame/business/looper/OrderLooper;

    move-result-object v8

    instance-of v8, v8, Lcom/didi/flier/business/FlierOrderLooper;

    if-nez v8, :cond_0

    .line 433
    iget-object v8, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment$8;->this$0:Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v9

    iget-object v9, v9, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    iget-object v10, p1, Lcom/didi/car/model/CarEstimatePrice;->markerFare:Lcom/didi/common/model/MarkerFare;

    #calls: Lcom/didi/flier/ui/fragment/FlierResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    invoke-static {v8, v9, v10}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->access$000(Lcom/didi/flier/ui/fragment/FlierResendFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 434
    iget-object v8, v0, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v8, v8, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v8, v8, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v11, :cond_0

    .line 435
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 436
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/frame/price/PriceOperator;->hideContentPins()V

    .line 437
    new-instance v8, Lcom/didi/flier/ui/fragment/FlierResendFragment$8$1;

    invoke-direct {v8, p0, v0}, Lcom/didi/flier/ui/fragment/FlierResendFragment$8$1;-><init>(Lcom/didi/flier/ui/fragment/FlierResendFragment$8;Lcom/didi/flier/model/FlierOrder;)V

    const-wide/16 v9, 0x3e8

    invoke-static {v8, v9, v10}, Lutil/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 406
    :cond_6
    iget-object v1, v0, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 407
    .local v1, carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    if-eqz v1, :cond_5

    .line 408
    iget-object v8, v1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 411
    iget-object v3, v1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 412
    .local v3, carModelIndexArray:[I
    invoke-virtual {v1, v3}, Lcom/didi/car/model/CarEstimatePrice;->countSelectedNum([I)I

    move-result v8

    if-lez v8, :cond_5

    .line 413
    iget-object v8, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    if-eqz v8, :cond_5

    .line 414
    iget-object v8, p1, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 415
    .restart local v5       #newSize:I
    new-array v2, v5, [I

    .line 416
    .restart local v2       #carListArray:[I
    const/4 v4, 0x0

    .restart local v4       #index:I
    :goto_4
    if-ge v4, v5, :cond_9

    .line 417
    const/4 v7, 0x0

    .restart local v7       #sInt:I
    :goto_5
    array-length v8, v3

    if-ge v7, v8, :cond_8

    .line 418
    aget v8, v3, v7

    if-ne v11, v8, :cond_7

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

    .line 420
    aput v11, v2, v4

    .line 417
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 416
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 424
    .end local v7           #sInt:I
    :cond_9
    iput-object v2, p1, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    goto/16 :goto_3

    .line 445
    .end local v1           #carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;
    .end local v2           #carListArray:[I
    .end local v3           #carModelIndexArray:[I
    .end local v4           #index:I
    .end local v5           #newSize:I
    :cond_a
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarModelLayout()V

    .line 446
    iget-object v8, v0, Lcom/didi/flier/model/FlierOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v8, v8, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    invoke-static {v8}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->updateCarModelView(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onSuccess(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 380
    check-cast p1, Lcom/didi/car/model/CarEstimatePrice;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/flier/ui/fragment/FlierResendFragment$8;->onSuccess(Lcom/didi/car/model/CarEstimatePrice;)V

    return-void
.end method
