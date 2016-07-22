.class public Lcom/didi/flier/ui/fragment/FlierResendFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "FlierResendFragment.java"


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
    .line 62
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierResendFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment$1;-><init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    .line 155
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierResendFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment$2;-><init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    .line 180
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierResendFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment$3;-><init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->dynamicPriceListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

    .line 222
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierResendFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment$5;-><init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    .line 273
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierResendFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment$6;-><init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 539
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierResendFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment$10;-><init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->cancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/flier/ui/fragment/FlierResendFragment;Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/flier/ui/fragment/FlierResendFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->getEstimatePriceCoupon(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/flier/ui/fragment/FlierResendFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/flier/ui/fragment/FlierResendFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->countReEstimateNum:I

    return v0
.end method

.method static synthetic access$308(Lcom/didi/flier/ui/fragment/FlierResendFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->countReEstimateNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->countReEstimateNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->getEstimateFare()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->resend()V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/flier/ui/fragment/FlierResendFragment;)Lcom/didi/car/helper/CarPopupHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/flier/ui/fragment/FlierResendFragment;)Lcom/didi/car/listener/DynamicUpdatePriceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->dynamicPriceListener:Lcom/didi/car/listener/DynamicUpdatePriceListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/flier/ui/fragment/FlierResendFragment;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->onResend(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/flier/ui/fragment/FlierResendFragment;)Lcom/didi/frame/carmodel/CarModelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    return-object v0
.end method

.method private getEstimateFare()V
    .locals 12

    .prologue
    .line 369
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v11

    .line 370
    .local v11, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v8

    .line 371
    .local v8, end:Lcom/didi/common/model/Address;
    if-eqz v11, :cond_0

    if-nez v8, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v10

    .line 374
    .local v10, sendable:Lcom/didi/frame/Sendable;
    if-eqz v10, :cond_2

    .line 375
    new-instance v9, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v9}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 376
    .local v9, fare:Lcom/didi/common/model/MarkerFare;
    const v0, 0x7f0b032a

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    .line 377
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    .line 378
    invoke-interface {v10}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    invoke-direct {p0, v0, v9}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 380
    .end local v9           #fare:Lcom/didi/common/model/MarkerFare;
    :cond_2
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    iget-object v1, v11, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v2, v11, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget-object v3, v8, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v4, v8, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/didi/flier/ui/fragment/FlierResendFragment$8;

    invoke-direct {v7, p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment$8;-><init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/car/net/CarRequest;->getEstimatePrice(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private getEstimatePriceCoupon(Z)V
    .locals 14
    .parameter "popWin"

    .prologue
    .line 478
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v10

    .line 479
    .local v10, sendable:Lcom/didi/frame/Sendable;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v0

    if-nez v0, :cond_2

    .line 480
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 484
    :cond_2
    instance-of v0, v10, Lcom/didi/car/model/CarOrder;

    if-eqz v0, :cond_1

    .line 485
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v11

    .line 486
    .local v11, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v9

    .line 487
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

    .line 488
    if-eqz v11, :cond_1

    if-eqz v9, :cond_1

    .line 490
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

    .line 491
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

    .line 492
    check-cast v8, Lcom/didi/car/model/CarOrder;

    .line 493
    .local v8, carOrder:Lcom/didi/car/model/CarOrder;
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    iget-object v1, v11, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v2, v11, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget-object v3, v9, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v4, v9, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/didi/car/model/CarOrder;->getTransportTime()J

    move-result-wide v5

    const-wide/16 v12, 0x3e8

    div-long/2addr v5, v12

    new-instance v7, Lcom/didi/flier/ui/fragment/FlierResendFragment$9;

    invoke-direct {v7, p0, p1}, Lcom/didi/flier/ui/fragment/FlierResendFragment$9;-><init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;Z)V

    invoke-static/range {v0 .. v7}, Lcom/didi/car/net/CarRequest;->getEstimatePriceCoupon(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private onResend(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 350
    if-eqz p1, :cond_0

    .line 351
    const v1, 0x7f0b035d

    invoke-virtual {p1, v1}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 352
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 366
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    .line 356
    .local v0, attributes:Lcom/didi/common/model/CommonAttributes;
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v1, v1, Lcom/didi/common/model/CommonAttributes;->countDown:I

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->countDown:I

    .line 357
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/CommonAttributes;->countDownMsg:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/CommonAttributes;->countDownMsg:Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v1, v1, Lcom/didi/common/model/CommonAttributes;->countDownTime:I

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->countDownTime:I

    .line 359
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v1, v1, Lcom/didi/common/model/CommonAttributes;->changeTime:I

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->changeTime:I

    .line 360
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v1, v1, Lcom/didi/common/model/CommonAttributes;->cancelCountdownReq:I

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->cancelCountdownReq:I

    .line 362
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v1}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 363
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/frame/carmodel/CarModelOperator;->setIsOpen(Z)V

    .line 364
    sget v1, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 365
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->backward()V

    goto :goto_0
.end method

.method private resend()V
    .locals 9

    .prologue
    .line 295
    sget-object v5, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 296
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

    .line 298
    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    if-eqz v5, :cond_2

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    iget-object v5, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v3, v5, Lcom/didi/car/model/CarEstimatePrice;->currentSelectedIndexArray:[I

    .line 301
    .local v3, selectCarArray:[I
    if-eqz v3, :cond_2

    .line 302
    iget-object v5, v1, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    iget-object v4, v5, Lcom/didi/car/model/CarEstimatePrice;->carModelList:Ljava/util/List;

    .line 303
    .local v4, totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 304
    const/4 v5, 0x1

    aget v6, v3, v2

    if-ne v5, v6, :cond_0

    .line 305
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 309
    iput-object v0, v1, Lcom/didi/car/model/CarOrder;->carModelList:Ljava/util/List;

    .line 314
    .end local v0           #carModelList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    .end local v2           #index:I
    .end local v3           #selectCarArray:[I
    .end local v4           #totalList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/car/model/CarModel;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0b04bd

    invoke-static {v6}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 315
    new-instance v5, Lcom/didi/flier/ui/fragment/FlierResendFragment$7;

    invoke-direct {v5, p0, v1}, Lcom/didi/flier/ui/fragment/FlierResendFragment$7;-><init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;Lcom/didi/car/model/CarOrder;)V

    invoke-static {v1, v5}, Lcom/didi/car/net/CarRequest;->resendOrder(Lcom/didi/car/model/CarOrder;Lcom/didi/common/net/ResponseListener;)V

    .line 347
    return-void
.end method

.method private setControlPanel()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 125
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->addCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 126
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->showCarPriceLayout()V

    .line 127
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmUpDelayed()V

    .line 128
    return-void
.end method

.method private setPlaceListener()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->addPlaceLister(Lcom/didi/car/listener/PlaceInterface;)V

    .line 220
    return-void
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 216
    return-void
.end method

.method private setSwitcher()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierResendFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment$4;-><init>(Lcom/didi/flier/ui/fragment/FlierResendFragment;)V

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 175
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b020b

    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 176
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b04bc

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 177
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    .line 178
    return-void
.end method

.method private showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    .locals 1
    .parameter "type"
    .parameter "fare"

    .prologue
    .line 264
    sget-object v0, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    if-ne p1, v0, :cond_0

    .line 265
    invoke-static {p2}, Lcom/didi/map/marker/MarkerController;->updateTextFareMarker(Lcom/didi/common/model/MarkerFare;)V

    .line 266
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->showTextFareInfoWindow()V

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {p2}, Lcom/didi/map/marker/MarkerController;->updateVoiceFareMarker(Lcom/didi/common/model/MarkerFare;)V

    .line 269
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->showVoiceFareInfoWindow()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->setTitleBar()V

    .line 114
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->setRedirectListener()V

    .line 115
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->setSwitcher()V

    .line 116
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->setControlPanel()V

    .line 117
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showResendMapView()V

    .line 118
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->setPlaceListener()V

    .line 119
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/car/helper/CarPopupHelper;->getDialogHelper(Landroid/content/Context;)Lcom/didi/car/helper/CarPopupHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    .line 120
    new-instance v0, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 134
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    invoke-virtual {v0}, Lcom/didi/car/helper/CarPopupHelper;->disMissPopupWindow()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->carPopupHelper:Lcom/didi/car/helper/CarPopupHelper;

    .line 138
    :cond_0
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-static {}, Lcom/didi/frame/carmodel/CarModelOperator;->getInstance()Lcom/didi/frame/carmodel/CarModelOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/carmodel/CarModelOperator;->hideContentPins()V

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->carModelListener:Lcom/didi/frame/carmodel/CarModelListener;

    invoke-static {v0}, Lcom/didi/frame/carmodel/CarModelHelper;->removeCarModelListener(Lcom/didi/frame/carmodel/CarModelListener;)V

    .line 142
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 143
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->removePlaceListener(Lcom/didi/car/listener/PlaceInterface;)V

    .line 144
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 171
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStart()V

    .line 149
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierResendFragment;->getEstimateFare()V

    .line 150
    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/car/config/CarPreferences;->getFlierPollDynamicPriceTime()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierResendFragment;->pollEstimateRunn:Ljava/lang/Runnable;

    invoke-static {}, Lcom/didi/car/config/CarPreferences;->getInstance()Lcom/didi/car/config/CarPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/car/config/CarPreferences;->getFlierPollDynamicPriceTime()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    :cond_0
    return-void
.end method
