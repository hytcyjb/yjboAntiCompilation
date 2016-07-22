.class public Lcom/didi/car/model/CarOrder;
.super Lcom/didi/common/model/BaseObject;
.source "CarOrder.java"

# interfaces
.implements Lcom/didi/frame/Sendable;


# instance fields
.field public bubbleInfo:Ljava/lang/String;

.field public cancelOrderTip:Ljava/lang/String;

.field public carConsultInfo:Lcom/didi/car/model/CarConsultInfo;

.field public carDriver:Lcom/didi/car/model/CarDriver;

.field public carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

.field public carModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarModel;",
            ">;"
        }
    .end annotation
.end field

.field public carServiceMessage:Lcom/didi/car/model/CarServiceMessage;

.field public carType:I

.field public carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

.field public closeTips:Ljava/lang/String;

.field public commonAttri:Lcom/didi/common/model/CommonAttributes;

.field public complaintContent:Ljava/lang/String;

.field public complaintState:I

.field public createTime:J

.field public driverCountNotified:I

.field public driverNum:I

.field public endPlace:Lcom/didi/common/model/Address;

.field public evaluateContent:Ljava/lang/String;

.field public evaluateMark:I

.field public evaluateScore:I

.field public feeDetail:Lcom/didi/car/model/FeeDetail;

.field public feedback:I

.field public feedbackTips:Ljava/lang/String;

.field public feedbackTitle:Ljava/lang/String;

.field public historyDistrict:Ljava/lang/String;

.field public isCancel:I

.field public isFromRecovery:Z

.field public isPay:I

.field public isUseDepart:Z

.field public lastRemark:Ljava/lang/String;

.field public lastTip:I

.field public newRealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

.field public oid:Ljava/lang/String;

.field public orderState:Lcom/didi/car/model/CarOrderState;

.field public overdraftOid:Ljava/lang/String;

.field public payResult:Lcom/didi/car/model/CarPayResult;

.field public payType:I

.field public pricingModel:I

.field public productid:I

.field public pushTips:Ljava/lang/String;

.field public realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

.field public redRecord:Lcom/didi/car/model/CarRedRecordInfo;

.field public remark:Ljava/lang/String;

.field public share:Lcom/didi/car/model/CarPayShare;

.field public sid:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public startPlace:Lcom/didi/common/model/Address;

.field public statusTitle:Ljava/lang/String;

.field public substatus:I

.field public timeout:Z

.field public tip:I

.field public waitTime:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 36
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/car/model/CarOrder;->productid:I

    .line 43
    iput v1, p0, Lcom/didi/car/model/CarOrder;->tip:I

    .line 46
    iput v1, p0, Lcom/didi/car/model/CarOrder;->lastTip:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarOrder;->historyDistrict:Ljava/lang/String;

    .line 78
    iput v1, p0, Lcom/didi/car/model/CarOrder;->waitTime:I

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarOrder;->pushTips:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarOrder;->bubbleInfo:Ljava/lang/String;

    .line 132
    iput v2, p0, Lcom/didi/car/model/CarOrder;->substatus:I

    .line 134
    iput v2, p0, Lcom/didi/car/model/CarOrder;->driverNum:I

    .line 136
    iput-boolean v2, p0, Lcom/didi/car/model/CarOrder;->isFromRecovery:Z

    .line 138
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/car/model/CarOrder;->createTime:J

    .line 146
    const-string v0, "didi"

    iput-object v0, p0, Lcom/didi/car/model/CarOrder;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/model/CarOrder;->oid:Ljava/lang/String;

    goto :goto_0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 482
    const-string v0, ""

    .line 483
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCarLevel()I
    .locals 11

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->getCarTypeBySplit()Ljava/lang/String;

    move-result-object v5

    .line 573
    .local v5, carTypes:Ljava/lang/String;
    const-string v9, "\\|"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 574
    .local v4, carTypeList:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 575
    .local v8, resultCarType:I
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v0, v6

    .line 576
    .local v2, carType:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/common/util/NumberUtil;->strToInt(Ljava/lang/String;)I

    move-result v3

    .line 577
    .local v3, carTypeInt:I
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/didi/car/config/CarPreferences;->getCarLevelType(I)I

    move-result v1

    .line 578
    .local v1, carLevel:I
    or-int/2addr v8, v1

    .line 579
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getNearbyDriversByCarType cartype: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " resultCarType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cartype: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cartypeInt: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " carlevel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 575
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 583
    .end local v1           #carLevel:I
    .end local v2           #carType:Ljava/lang/String;
    .end local v3           #carTypeInt:I
    :cond_0
    if-nez v8, :cond_1

    .line 584
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v9

    sget-object v10, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v9, v10, :cond_2

    .line 585
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/car/config/CarPreferences;->getCarConfigLevelType()I

    move-result v8

    .line 591
    :cond_1
    :goto_1
    return v8

    .line 587
    :cond_2
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/car/config/CarPreferences;->getFlierConfigLevelType()I

    move-result v8

    goto :goto_1
.end method

.method public getCarTypeBySplit()Ljava/lang/String;
    .locals 9

    .prologue
    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v4, sBuild:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-static {v6}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 553
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarModel;

    .line 554
    .local v0, carModel:Lcom/didi/car/model/CarModel;
    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/didi/car/model/CarModel;->cLevel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 556
    .end local v0           #carModel:Lcom/didi/car/model/CarModel;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v6, :cond_2

    .line 557
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v1, v6, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 558
    .local v1, carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 559
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v5, v6, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 560
    .local v5, selectedIndex:[I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_2

    .line 561
    const/4 v6, 0x1

    aget v7, v5, v3

    if-ne v6, v7, :cond_1

    .line 562
    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/car/model/CarModel;

    iget v6, v6, Lcom/didi/car/model/CarModel;->cLevel:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 567
    .end local v1           #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v3           #index:I
    .end local v5           #selectedIndex:[I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCarTypeBySplit ->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\|"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 488
    const-string v0, ""

    .line 489
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCommonAttri()Lcom/didi/common/model/CommonAttributes;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    return-object v0
.end method

.method public getDepartureTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 476
    const-string v0, ""

    .line 477
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEndAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 435
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 429
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndLatDouble()D
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 452
    const-wide/16 v0, 0x0

    .line 453
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getEndLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndLngDouble()D
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 458
    const-wide/16 v0, 0x0

    .line 459
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getEndPlace()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public getHistoryDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->historyDistrict:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()Lcom/didi/frame/business/InputType;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    goto :goto_0
.end method

.method public getInputTypeInt()I
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->getInputType()Lcom/didi/frame/business/InputType;

    move-result-object v0

    .line 297
    .local v0, type:Lcom/didi/frame/business/InputType;
    if-nez v0, :cond_0

    .line 298
    const/4 v1, -0x1

    .line 299
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/business/InputType;->getIndexValue()I

    move-result v1

    goto :goto_0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderType()Lcom/didi/frame/business/OrderType;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    goto :goto_0
.end method

.method public getOrderTypeInt()I
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    .line 275
    .local v0, type:Lcom/didi/frame/business/OrderType;
    if-nez v0, :cond_0

    .line 276
    const/4 v1, -0x1

    .line 277
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/business/OrderType;->getIntValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 535
    const-string v0, "didi"

    .line 536
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->source:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStartAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    .line 423
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 417
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartLatDouble()D
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 440
    const-wide/16 v0, 0x0

    .line 441
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 465
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartLngDouble()D
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 446
    const-wide/16 v0, 0x0

    .line 447
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartPlace()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public getTerminator()Lcom/didi/frame/business/terminator/OrderTerminator;
    .locals 1

    .prologue
    .line 337
    invoke-static {}, Lcom/didi/car/business/CarOrderTerminator;->getInstance()Lcom/didi/frame/business/terminator/OrderTerminator;

    move-result-object v0

    return-object v0
.end method

.method public getTipParam()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/didi/car/model/CarOrder;->tip:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/didi/car/model/CarOrder;->tip:I

    goto :goto_0
.end method

.method public getTransportTime()J
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 248
    const-wide/16 v0, 0x0

    .line 249
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-wide v0, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    goto :goto_0
.end method

.method public getUseDepart()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/didi/car/model/CarOrder;->isUseDepart:Z

    return v0
.end method

.method public getVoiceFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    invoke-virtual {v0}, Lcom/didi/common/model/CommonAttributes;->getVoiceFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceTime()F
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 305
    const/high16 v0, -0x4080

    .line 306
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->voiceTime:F

    goto :goto_0
.end method

.method public hasAddressBeenSet()Z
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasBeenSent()Z
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasBeenSent : oid  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBooking()Z
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    .line 370
    .local v0, type:Lcom/didi/frame/business/OrderType;
    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isModified()Z
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->isTipModified()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->remark:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->lastRemark:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->remark:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->lastRemark:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTipModified()Z
    .locals 2

    .prologue
    .line 234
    iget v0, p0, Lcom/didi/car/model/CarOrder;->tip:I

    iget v1, p0, Lcom/didi/car/model/CarOrder;->lastTip:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/didi/car/model/CarOrder;->tip:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/didi/car/model/CarOrder;->lastTip:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 10
    .parameter "obj"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 159
    const-string v6, "overdraftOid"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarOrder;->overdraftOid:Ljava/lang/String;

    .line 160
    const-string v6, "product_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/didi/car/model/CarOrder;->productid:I

    .line 161
    const-string v6, "tip"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/didi/car/model/CarOrder;->tip:I

    .line 162
    const-string v6, "carType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/didi/car/model/CarOrder;->carType:I

    .line 163
    const-string v6, "extraInfo"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarOrder;->remark:Ljava/lang/String;

    .line 164
    const-string v6, "isCancel"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/didi/car/model/CarOrder;->isCancel:I

    .line 165
    const-string v6, "clostTips"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarOrder;->cancelOrderTip:Ljava/lang/String;

    .line 166
    const-string v6, "feedback"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/didi/car/model/CarOrder;->feedback:I

    .line 167
    const-string v6, "feedbackTitle"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarOrder;->feedbackTitle:Ljava/lang/String;

    .line 168
    const-string v6, "feedbackTips"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarOrder;->feedbackTips:Ljava/lang/String;

    .line 169
    const-string v6, "payType"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/didi/car/model/CarOrder;->payType:I

    .line 170
    const-string v6, "driverNum"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/didi/car/model/CarOrder;->driverCountNotified:I

    .line 171
    const-string v6, "timeout"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/didi/car/model/CarOrder;->timeout:Z

    .line 172
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v6, :cond_0

    .line 173
    new-instance v6, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v6}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    iput-object v6, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 174
    :cond_0
    const-string v6, "time"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/Utils;->converDateToMillisecond(Ljava/lang/String;)J

    move-result-wide v4

    .line 175
    .local v4, transportTime:J
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-wide v4, v6, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 176
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v9, "countdown"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/didi/common/model/CommonAttributes;->countDown:I

    .line 177
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v9, "countdown_time"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/didi/common/model/CommonAttributes;->countDownTime:I

    .line 178
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v9, "countdown_msg"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/didi/common/model/CommonAttributes;->countDownMsg:Ljava/lang/String;

    .line 179
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v9, "change_time"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/didi/common/model/CommonAttributes;->changeTime:I

    .line 180
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v9, "cancel_countdown_req"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/didi/common/model/CommonAttributes;->cancelCountdownReq:I

    .line 181
    const-string v6, "oid"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarOrder;->oid:Ljava/lang/String;

    .line 182
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v9, "time"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    .line 183
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v9, "area"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 184
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v9, "isArrivedLimited"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_6

    :goto_1
    iput-boolean v7, v6, Lcom/didi/common/model/CommonAttributes;->isArrived:Z

    .line 185
    const-string v6, "status"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 186
    .local v3, status:I
    if-gtz v3, :cond_1

    .line 187
    const-string v6, "status"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 188
    :cond_1
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput v3, v6, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 190
    new-instance v2, Lcom/didi/common/model/Address;

    invoke-direct {v2}, Lcom/didi/common/model/Address;-><init>()V

    .line 191
    .local v2, startPlace:Lcom/didi/common/model/Address;
    const-string v6, "fromName"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 192
    const-string v6, "fromAddress"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 193
    const-string v6, "flng"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 194
    const-string v6, "flat"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 196
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 197
    .local v0, endPlace:Lcom/didi/common/model/Address;
    const-string v6, "toName"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 198
    const-string v6, "toAddress"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 199
    const-string v6, "tlng"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 200
    const-string v6, "tlat"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 202
    invoke-virtual {p0, v2}, Lcom/didi/car/model/CarOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 203
    invoke-virtual {p0, v0}, Lcom/didi/car/model/CarOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 205
    const-string v6, "driver"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 206
    new-instance v6, Lcom/didi/car/model/CarDriver;

    invoke-direct {v6}, Lcom/didi/car/model/CarDriver;-><init>()V

    iput-object v6, p0, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    .line 207
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    const-string v7, "driver"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/didi/car/model/CarDriver;->parse(Lorg/json/JSONObject;)V

    .line 210
    :cond_2
    const-string v6, "share"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 211
    new-instance v6, Lcom/didi/car/model/CarPayShare;

    invoke-direct {v6}, Lcom/didi/car/model/CarPayShare;-><init>()V

    iput-object v6, p0, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    .line 212
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    const-string v7, "share"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/didi/car/model/CarPayShare;->parse(Lorg/json/JSONObject;)V

    .line 214
    :cond_3
    const-string v6, "hongbaoinfo"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 215
    .local v1, jb:Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 216
    new-instance v6, Lcom/didi/car/model/CarRedRecordInfo;

    invoke-direct {v6}, Lcom/didi/car/model/CarRedRecordInfo;-><init>()V

    iput-object v6, p0, Lcom/didi/car/model/CarOrder;->redRecord:Lcom/didi/car/model/CarRedRecordInfo;

    .line 217
    iget-object v6, p0, Lcom/didi/car/model/CarOrder;->redRecord:Lcom/didi/car/model/CarRedRecordInfo;

    invoke-virtual {v6, v1}, Lcom/didi/car/model/CarRedRecordInfo;->parse(Lorg/json/JSONObject;)V

    .line 220
    :cond_4
    const-string v6, "pushTips"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarOrder;->pushTips:Ljava/lang/String;

    .line 221
    const-string v6, "driverBubbleInfo"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarOrder;->bubbleInfo:Ljava/lang/String;

    .line 223
    const-string v6, "pricingModel"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/didi/car/model/CarOrder;->pricingModel:I

    .line 225
    return-void

    .end local v0           #endPlace:Lcom/didi/common/model/Address;
    .end local v1           #jb:Lorg/json/JSONObject;
    .end local v2           #startPlace:Lcom/didi/common/model/Address;
    .end local v3           #status:I
    .end local v4           #transportTime:J
    :cond_5
    move v6, v8

    .line 171
    goto/16 :goto_0

    .restart local v4       #transportTime:J
    :cond_6
    move v7, v8

    .line 184
    goto/16 :goto_1
.end method

.method public retreiveLatestAddress()V
    .locals 3

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/didi/car/model/CarOrder;->hasBeenSent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 503
    .local v1, startAddress:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 504
    .local v0, endAddress:Lcom/didi/common/model/Address;
    if-eqz v1, :cond_1

    .line 505
    invoke-virtual {v1}, Lcom/didi/common/model/Address;->clone()Lcom/didi/common/model/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    .line 506
    :cond_1
    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->clone()Lcom/didi/common/model/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    .line 508
    :cond_2
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v2

    iput-boolean v2, p0, Lcom/didi/car/model/CarOrder;->isUseDepart:Z

    goto :goto_0
.end method

.method public setEndPlace(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "endPlace"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/didi/car/model/CarOrder;->endPlace:Lcom/didi/common/model/Address;

    .line 412
    return-void
.end method

.method public setHistoryDistrict(Ljava/lang/String;)V
    .locals 0
    .parameter "historyDistrict"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/didi/car/model/CarOrder;->historyDistrict:Ljava/lang/String;

    .line 517
    return-void
.end method

.method public setInputType(Lcom/didi/frame/business/InputType;)V
    .locals 1
    .parameter "inputType"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    goto :goto_0
.end method

.method public setOrderType(Lcom/didi/frame/business/OrderType;)V
    .locals 1
    .parameter "orderType"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    goto :goto_0
.end method

.method public setOverdraftOid(Ljava/lang/String;)V
    .locals 0
    .parameter "overdraftOid"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/didi/car/model/CarOrder;->overdraftOid:Ljava/lang/String;

    .line 230
    iput-object p1, p0, Lcom/didi/car/model/CarOrder;->oid:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setSent()V
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/didi/car/model/CarOrder;->tip:I

    iput v0, p0, Lcom/didi/car/model/CarOrder;->lastTip:I

    .line 360
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->remark:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/car/model/CarOrder;->lastRemark:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1
    .parameter "sou"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 543
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->source:Ljava/lang/String;

    goto :goto_0
.end method

.method public setStartPlace(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "startPlace"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/didi/car/model/CarOrder;->startPlace:Lcom/didi/common/model/Address;

    .line 397
    return-void
.end method

.method public setTransportTime(J)V
    .locals 1
    .parameter "transportTime"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-wide p1, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    goto :goto_0
.end method

.method public setUnSent()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/car/model/CarOrder;->lastTip:I

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/model/CarOrder;->lastRemark:Ljava/lang/String;

    .line 366
    return-void
.end method

.method public setUseDepart(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 520
    iput-boolean p1, p0, Lcom/didi/car/model/CarOrder;->isUseDepart:Z

    .line 521
    return-void
.end method

.method public setVoicePath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->voiceFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVoiceTime(J)V
    .locals 2
    .parameter "voiceTime"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    long-to-float v1, p1

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->voiceTime:F

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarOrder [overdraftOid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->overdraftOid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrder;->tip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrder;->lastTip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastRemark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->lastRemark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/car/model/CarOrder;->timeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverCountNotified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrder;->driverCountNotified:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commonAttri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrder;->carType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carDriver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feeDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", share="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->redRecord:Lcom/didi/car/model/CarRedRecordInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evaluateMark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrder;->evaluateMark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evaluateContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->evaluateContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evaluateScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrder;->evaluateScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carEstimatePrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", complaintState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrder;->complaintState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", complaintContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->complaintContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->orderState:Lcom/didi/car/model/CarOrderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrder;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrder;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrder;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
