.class public Lcom/didi/car/ui/fragment/CarResendFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CarResendFragment.java"


# instance fields
.field private cancelListener:Landroid/view/View$OnClickListener;

.field private carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

.field private carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

.field private countReEstimateNum:I

.field private dynamicPriceListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

.field private placeListener:Lcom/didi/car/listener/PlaceInterface;

.field private pollEstimateRunn:Ljava/lang/Runnable;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/didi/car/ui/fragment/CarResendFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarResendFragment$1;-><init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    .line 147
    new-instance v0, Lcom/didi/car/ui/fragment/CarResendFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarResendFragment$2;-><init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    .line 172
    new-instance v0, Lcom/didi/car/ui/fragment/CarResendFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarResendFragment$3;-><init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->dynamicPriceListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

    .line 216
    new-instance v0, Lcom/didi/car/ui/fragment/CarResendFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarResendFragment$5;-><init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    .line 252
    new-instance v0, Lcom/didi/car/ui/fragment/CarResendFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarResendFragment$6;-><init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 499
    new-instance v0, Lcom/didi/car/ui/fragment/CarResendFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarResendFragment$10;-><init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->cancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/fragment/CarResendFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/didi/car/ui/fragment/CarResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/car/ui/fragment/CarResendFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment;->getEstimatePriceCoupon(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/car/ui/fragment/CarResendFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/car/ui/fragment/CarResendFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->countReEstimateNum:I

    return v0
.end method

.method static synthetic access$308(Lcom/didi/car/ui/fragment/CarResendFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->countReEstimateNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->countReEstimateNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/didi/car/ui/fragment/CarResendFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarResendFragment;->getEstimateFare()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/car/ui/fragment/CarResendFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarResendFragment;->resend()V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/car/ui/fragment/CarResendFragment;)Lcom/didi/car/helper/CarPopupHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/car/ui/fragment/CarResendFragment;)Lcom/didi/car/listener/DynamicUpdatePriceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->dynamicPriceListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/car/ui/fragment/CarResendFragment;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment;->onResend(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method private getEstimateFare()V
    .locals 12

    .prologue
    .line 406
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v11

    .line 407
    .local v11, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    .line 408
    .local v8, end:Lcom/didi/common/model/Address;
    if-eqz v11, :cond_0

    if-nez v8, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v10

    .line 411
    .local v10, sendable:Lcom/didi/frame/Sendable;
    if-eqz v10, :cond_2

    .line 412
    new-instance v9, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v9}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 413
    .local v9, fare:Lcom/didi/common/model/MarkerFare;
    const v0, 0x7f0b032a

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    .line 415
    invoke-interface {v10}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    invoke-direct {p0, v0, v9}, Lcom/didi/car/ui/fragment/CarResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 417
    .end local v9           #fare:Lcom/didi/common/model/MarkerFare;
    :cond_2
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    iget-object v1, v11, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v2, v11, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget-object v3, v8, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v4, v8, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/didi/car/ui/fragment/CarResendFragment$9;

    invoke-direct {v7, p0}, Lcom/didi/car/ui/fragment/CarResendFragment$9;-><init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/car/net/CarRequest;->getEstimatePrice(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private getEstimatePriceCoupon(Z)V
    .locals 14
    .parameter "popWin"

    .prologue
    .line 273
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v10

    .line 274
    .local v10, sendable:Lcom/didi/frame/Sendable;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    instance-of v0, v10, Lcom/didi/car/model/CarOrder;

    if-eqz v0, :cond_1

    .line 280
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v11

    .line 281
    .local v11, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v9

    .line 282
    .local v9, end:Lcom/didi/common/model/Address;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 283
    if-eqz v11, :cond_1

    if-eqz v9, :cond_1

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    move-object v8, v10

    .line 287
    check-cast v8, Lcom/didi/car/model/CarOrder;

    .line 288
    .local v8, carOrder:Lcom/didi/car/model/CarOrder;
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    iget-object v1, v11, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v2, v11, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget-object v3, v9, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v4, v9, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/didi/car/model/CarOrder;->getTransportTime()J

    move-result-wide v5

    const-wide/16 v12, 0x3e8

    div-long/2addr v5, v12

    new-instance v7, Lcom/didi/car/ui/fragment/CarResendFragment$7;

    invoke-direct {v7, p0, p1}, Lcom/didi/car/ui/fragment/CarResendFragment$7;-><init>(Lcom/didi/car/ui/fragment/CarResendFragment;Z)V

    invoke-static/range {v0 .. v7}, Lcom/didi/car/net/CarRequest;->getEstimatePriceCoupon(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private onResend(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 388
    if-eqz p1, :cond_0

    .line 389
    const v1, 0x7f0b035d

    invoke-virtual {p1, v1}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 390
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 403
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    .line 394
    .local v0, attributes:Lcom/didi/common/model/CommonAttributes;
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v1, v1, Lcom/didi/common/model/CommonAttributes;->countDown:I

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->countDown:I

    .line 395
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/CommonAttributes;->countDownMsg:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/CommonAttributes;->countDownMsg:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v1, v1, Lcom/didi/common/model/CommonAttributes;->countDownTime:I

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->countDownTime:I

    .line 397
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v1, v1, Lcom/didi/common/model/CommonAttributes;->changeTime:I

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->changeTime:I

    .line 398
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v1, v1, Lcom/didi/common/model/CommonAttributes;->cancelCountdownReq:I

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->cancelCountdownReq:I

    .line 399
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/frame/carmodel/CarModelOperator;->setIsOpen(Z)V

    .line 400
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v1}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 401
    sget v1, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 402
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->backward()V

    goto :goto_0
.end method

.method private resend()V
    .locals 9

    .prologue
    .line 333
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 334
    .local v1, carOrder:Lcom/didi/car/model/CarOrder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "carresend click create order ,oid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 336
    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v5, :cond_2

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    iget-object v5, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, v5, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 339
    .local v3, selectCarArray:[I
    if-eqz v3, :cond_2

    .line 340
    iget-object v5, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v4, v5, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 341
    .local v4, totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 342
    const/4 v5, 0x1

    aget v6, v3, v2

    if-ne v5, v6, :cond_0

    .line 343
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 347
    iput-object v0, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    .line 352
    .end local v0           #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v2           #index:I
    .end local v3           #selectCarArray:[I
    .end local v4           #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarResendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0b04bd

    invoke-static {v6}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 353
    new-instance v5, Lcom/didi/car/ui/fragment/CarResendFragment$8;

    invoke-direct {v5, p0, v1}, Lcom/didi/car/ui/fragment/CarResendFragment$8;-><init>(Lcom/didi/car/ui/fragment/CarResendFragment;Lcom/didi/car/model/CarOrder;)V

    invoke-static {v1, v5}, Lcom/didi/car/net/CarRequest;->resendOrder(Lcom/didi/car/model/CarOrder;Lcom/didi/common/net/ResponseListener;)V

    .line 385
    return-void
.end method

.method private setControlPanel()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->addCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 121
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmUpDelayed()V

    .line 122
    return-void
.end method

.method private setPlaceListener()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->addPlaceLister(Lcom/didi/car/listener/PlaceInterface;)V

    .line 214
    return-void
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 210
    return-void
.end method

.method private setSwitcher()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/didi/car/ui/fragment/CarResendFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarResendFragment$4;-><init>(Lcom/didi/car/ui/fragment/CarResendFragment;)V

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 167
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b020b

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 168
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b04bc

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 169
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    .line 170
    return-void
.end method

.method private showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    .locals 1
    .parameter "type"
    .parameter "text"

    .prologue
    .line 243
    sget-object v0, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    if-ne p1, v0, :cond_0

    .line 244
    invoke-static {p2}, Lcom/didi/map/marker/MarkerController;->updateTextFareMarker(Lcom/didi/common/model/MarkerFare;)V

    .line 245
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->showTextFareInfoWindow()V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-static {p2}, Lcom/didi/map/marker/MarkerController;->updateVoiceFareMarker(Lcom/didi/common/model/MarkerFare;)V

    .line 248
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->showVoiceFareInfoWindow()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarResendFragment;->setTitleBar()V

    .line 110
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarResendFragment;->setRedirectListener()V

    .line 111
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarResendFragment;->setSwitcher()V

    .line 112
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarResendFragment;->setControlPanel()V

    .line 113
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showResendMapView()V

    .line 114
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarResendFragment;->setPlaceListener()V

    .line 115
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    .line 116
    new-instance v0, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 128
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    invoke-virtual {v0}, Lcom/didi/car/helper/CarPopupHelper;->disMissPopupWindow()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    .line 132
    :cond_0
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/carmodel/CarModelOperator;->setIsOpen(Z)V

    .line 133
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 134
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->removePlaceListener(Lcom/didi/car/listener/PlaceInterface;)V

    .line 135
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 136
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStart()V

    .line 141
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarResendFragment;->getEstimateFare()V

    .line 142
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/config/CarPreferences;->getCarPollDynamicPriceTime()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarResendFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/config/CarPreferences;->getCarPollDynamicPriceTime()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    :cond_0
    return-void
.end method
