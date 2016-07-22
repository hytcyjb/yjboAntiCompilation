.class public Lcom/didi/taxi/model/TaxiOrder;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiOrder.java"

# interfaces
.implements Lcom/didi/frame/Sendable;


# instance fields
.field private arrivedTime:I

.field private cityId:Ljava/lang/String;

.field public closed:I

.field private commonAttri:Lcom/didi/common/model/CommonAttributes;

.field private complaintContent:Ljava/lang/String;

.field private complaintState:I

.field private coupon:Lcom/didi/taxi/model/TaxiCoupon;

.field private createTime:J

.field private creditTxt:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private dlat:Ljava/lang/String;

.field private dlng:Ljava/lang/String;

.field private driverCountNotified:I

.field private driverNum:I

.field private endPlace:Lcom/didi/common/model/Address;

.field private evaluateContent:Ljava/lang/String;

.field private evaluateMark:I

.field private evaluateScore:I

.field private feeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

.field public foundUrl:Ljava/lang/String;

.field public foundVersion:I

.field private imSwitch:I

.field private isFromRecovery:Z

.field private isOrderFinished:I

.field private isTimeOut:Z

.field private isUseDepart:Z

.field private isVip:I

.field private lastRemark:Ljava/lang/String;

.field private lastTip:I

.field private lastWaitTime:I

.field private last_trip_type:I

.field private lat:Ljava/lang/String;

.field private lng:Ljava/lang/String;

.field public mLove:Lcom/didi/taxi/model/TaxiLove;

.field public noneed:I

.field private oid:Ljava/lang/String;

.field private otype:I

.field public redRecord:Lcom/didi/taxi/model/TaxiRedRecordInfo;

.field private remark:Ljava/lang/String;

.field private setupTime:J

.field public share:Lcom/didi/taxi/model/TaxiPayShare;

.field private sid:Ljava/lang/String;

.field private startPlace:Lcom/didi/common/model/Address;

.field private striverTime:J

.field private taxiDriver:Lcom/didi/taxi/model/TaxiDriver;

.field private taxiMsg:Lcom/didi/taxi/model/TaxiServiceMessage;

.field private timeout:Z

.field private tip:I

.field private tipFee:Ljava/lang/String;

.field private toastMsg:Ljava/lang/String;

.field public trip_friend_status:I

.field public trip_type:I

.field private type:I

.field private vipPayStatus:I

.field private waitTime:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 35
    iput v0, p0, Lcom/didi/taxi/model/TaxiOrder;->tip:I

    .line 37
    iput v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lastTip:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->tipFee:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->dlng:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->dlat:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lng:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lat:Ljava/lang/String;

    .line 118
    iput v2, p0, Lcom/didi/taxi/model/TaxiOrder;->isVip:I

    .line 121
    iput v2, p0, Lcom/didi/taxi/model/TaxiOrder;->vipPayStatus:I

    .line 124
    iput v1, p0, Lcom/didi/taxi/model/TaxiOrder;->imSwitch:I

    .line 127
    iput v2, p0, Lcom/didi/taxi/model/TaxiOrder;->isOrderFinished:I

    .line 129
    iput v1, p0, Lcom/didi/taxi/model/TaxiOrder;->trip_type:I

    .line 369
    iput-boolean v2, p0, Lcom/didi/taxi/model/TaxiOrder;->isFromRecovery:Z

    .line 372
    iput-boolean v2, p0, Lcom/didi/taxi/model/TaxiOrder;->isTimeOut:Z

    .line 375
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/taxi/model/TaxiOrder;->createTime:J

    .line 378
    iput v2, p0, Lcom/didi/taxi/model/TaxiOrder;->driverNum:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 811
    :goto_0
    return-void

    .line 810
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/taxi/model/TaxiOrder;->setOid(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 911
    const-string v0, ""

    .line 912
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    goto :goto_0
.end method

.method public getArrivedTime()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->arrivedTime:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commonAttri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 918
    const-string v0, ""

    .line 919
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->cityId:Ljava/lang/String;

    return-object v0
.end method

.method public getClosed()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->closed:I

    return v0
.end method

.method public getCommonAttri()Lcom/didi/common/model/CommonAttributes;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    return-object v0
.end method

.method public getComplaintContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->complaintContent:Ljava/lang/String;

    return-object v0
.end method

.method public getComplaintState()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->complaintState:I

    return v0
.end method

.method public getCoupon()Lcom/didi/taxi/model/TaxiCoupon;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 389
    iget-wide v0, p0, Lcom/didi/taxi/model/TaxiOrder;->createTime:J

    return-wide v0
.end method

.method public getCreditTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->creditTxt:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 905
    const-string v0, ""

    .line 906
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getDlat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->dlat:Ljava/lang/String;

    return-object v0
.end method

.method public getDlng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->dlng:Ljava/lang/String;

    return-object v0
.end method

.method public getDriverCountNotified()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->driverCountNotified:I

    return v0
.end method

.method public getDriverNum()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->driverNum:I

    return v0
.end method

.method public getEndAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 863
    const/4 v0, 0x0

    .line 864
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 857
    const/4 v0, 0x0

    .line 858
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndLatDouble()D
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 881
    const-wide/16 v0, 0x0

    .line 882
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getEndLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 899
    const/4 v0, 0x0

    .line 900
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndLngDouble()D
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 887
    const-wide/16 v0, 0x0

    .line 888
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getEndPlace()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public getEvaluateContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->evaluateContent:Ljava/lang/String;

    return-object v0
.end method

.method public getEvaluateMark()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->evaluateMark:I

    return v0
.end method

.method public getEvaluateScore()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->evaluateScore:I

    return v0
.end method

.method public getFeeDetail()Lcom/didi/taxi/model/TaxiFeeDetail;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->feeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    return-object v0
.end method

.method public getImSwitch()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->imSwitch:I

    return v0
.end method

.method public getInputType()Lcom/didi/frame/business/InputType;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 717
    const/4 v0, 0x0

    .line 718
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    goto :goto_0
.end method

.method public getInputTypeInt()I
    .locals 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->getInputType()Lcom/didi/frame/business/InputType;

    move-result-object v0

    .line 723
    .local v0, type:Lcom/didi/frame/business/InputType;
    if-nez v0, :cond_0

    .line 724
    const/4 v1, -0x1

    .line 725
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/business/InputType;->getIndexValue()I

    move-result v1

    goto :goto_0
.end method

.method public getIsOrderFinished()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->isOrderFinished:I

    return v0
.end method

.method public getIsVip()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->isVip:I

    return v0
.end method

.method public getLastRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lastRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTip()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lastTip:I

    return v0
.end method

.method public getLastWaitTime()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lastWaitTime:I

    return v0
.end method

.method public getLast_trip_type()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->last_trip_type:I

    return v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public getLove()Lcom/didi/taxi/model/TaxiLove;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    return-object v0
.end method

.method public getNoneed()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->noneed:I

    return v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderStatus()I
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 766
    const/4 v0, -0x1

    .line 767
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    goto :goto_0
.end method

.method public getOrderType()Lcom/didi/frame/business/OrderType;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 704
    const/4 v0, 0x0

    .line 705
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    goto :goto_0
.end method

.method public getOrderTypeInt()I
    .locals 2

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    .line 710
    .local v0, type:Lcom/didi/frame/business/OrderType;
    if-nez v0, :cond_0

    .line 711
    const/4 v1, -0x1

    .line 712
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/business/OrderType;->getIntValue()I

    move-result v1

    goto :goto_0
.end method

.method public getOtype()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->otype:I

    return v0
.end method

.method public getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->redRecord:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getSetupTime()J
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/didi/taxi/model/TaxiOrder;->setupTime:J

    return-wide v0
.end method

.method public getShare()Lcom/didi/taxi/model/TaxiPayShare;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->share:Lcom/didi/taxi/model/TaxiPayShare;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 945
    const-string v0, "didi"

    .line 946
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->source:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStartAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 851
    const/4 v0, 0x0

    .line 852
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 845
    const/4 v0, 0x0

    .line 846
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartLatDouble()D
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 869
    const-wide/16 v0, 0x0

    .line 870
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 893
    const/4 v0, 0x0

    .line 894
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartLngDouble()D
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 875
    const-wide/16 v0, 0x0

    .line 876
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getStartPlace()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public getStriverTime()J
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/didi/taxi/model/TaxiOrder;->striverTime:J

    return-wide v0
.end method

.method public getStrivertime()J
    .locals 2

    .prologue
    .line 258
    iget-wide v0, p0, Lcom/didi/taxi/model/TaxiOrder;->striverTime:J

    return-wide v0
.end method

.method public getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->taxiDriver:Lcom/didi/taxi/model/TaxiDriver;

    return-object v0
.end method

.method public getTaxiMsg()Lcom/didi/taxi/model/TaxiServiceMessage;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->taxiMsg:Lcom/didi/taxi/model/TaxiServiceMessage;

    return-object v0
.end method

.method public getTerminator()Lcom/didi/frame/business/terminator/OrderTerminator;
    .locals 1

    .prologue
    .line 772
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderTerminator;->getInstance()Lcom/didi/frame/business/terminator/OrderTerminator;

    move-result-object v0

    return-object v0
.end method

.method public getTip()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->tip:I

    return v0
.end method

.method public getTipFee()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->tipFee:Ljava/lang/String;

    return-object v0
.end method

.method public getTipParam()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->tip:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->tip:I

    goto :goto_0
.end method

.method public getToastMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->toastMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportTime()J
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 438
    const-wide/16 v0, 0x0

    .line 439
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget-wide v0, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    goto :goto_0
.end method

.method public getTrip_type()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->trip_type:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->type:I

    return v0
.end method

.method public getUseDepart()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/didi/taxi/model/TaxiOrder;->isUseDepart:Z

    return v0
.end method

.method public getVipPayStatus()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->vipPayStatus:I

    return v0
.end method

.method public getVoiceFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 736
    const/4 v0, 0x0

    .line 737
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    invoke-virtual {v0}, Lcom/didi/common/model/CommonAttributes;->getVoiceFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceTime()F
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 730
    const/high16 v0, -0x4080

    .line 731
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iget v0, v0, Lcom/didi/common/model/CommonAttributes;->voiceTime:F

    goto :goto_0
.end method

.method public getWaitTime()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->waitTime:I

    return v0
.end method

.method public hasAddressBeenSet()Z
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

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
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->oid:Ljava/lang/String;

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
    .line 794
    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    .line 795
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

.method public isCarPoolOrder()Z
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->trip_type:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromRecovery()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/didi/taxi/model/TaxiOrder;->isFromRecovery:Z

    return v0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->isTipModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->isWaitTimeModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->isRemarkModified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->isTripTypeModified()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemarkModified()Z
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->remark:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->lastRemark:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->remark:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lastRemark:Ljava/lang/String;

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

.method public isTimeout()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/didi/taxi/model/TaxiOrder;->timeout:Z

    return v0
.end method

.method public isTipModified()Z
    .locals 2

    .prologue
    .line 639
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->tip:I

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->lastTip:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->tip:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lastTip:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTripTypeModified()Z
    .locals 2

    .prologue
    .line 651
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->trip_type:I

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->last_trip_type:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWaitTimeModified()Z
    .locals 2

    .prologue
    .line 643
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->waitTime:I

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->lastWaitTime:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->waitTime:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lastWaitTime:I

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
    .locals 12
    .parameter "obj"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 506
    const-string v8, "is_vip"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrder;->isVip:I

    .line 507
    const-string v8, "vip_pay_status"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrder;->vipPayStatus:I

    .line 508
    const-string v8, "tip"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrder;->tip:I

    .line 509
    const-string v8, "toastMsg"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->toastMsg:Ljava/lang/String;

    .line 510
    const-string v8, "extraInfo"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->remark:Ljava/lang/String;

    .line 511
    const-string v8, "driver_num"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrder;->driverCountNotified:I

    .line 512
    const-string v8, "timeout"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/didi/taxi/model/TaxiOrder;->timeout:Z

    .line 513
    const-string v8, "tip_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->tipFee:Ljava/lang/String;

    .line 514
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v8, :cond_0

    .line 515
    new-instance v8, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v8}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 516
    :cond_0
    const-string v8, "time"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 517
    .local v5, time:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GoTime="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 518
    invoke-static {v5}, Lcom/didi/common/util/Utils;->converDateToMillisecond(Ljava/lang/String;)J

    move-result-wide v6

    .line 519
    .local v6, transportTime:J
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-wide v6, v8, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 520
    const-string v8, "oid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/didi/taxi/model/TaxiOrder;->setOid(Ljava/lang/String;)V

    .line 521
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v11, "time"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/didi/common/model/CommonAttributes;->departureTime:Ljava/lang/String;

    .line 522
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v11, "area"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 523
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const-string v11, "isArrivedLimited"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_8

    :goto_1
    iput-boolean v9, v8, Lcom/didi/common/model/CommonAttributes;->isArrived:Z

    .line 524
    const-string v8, "status"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 525
    .local v4, status:I
    if-gtz v4, :cond_1

    .line 526
    const-string v8, "status"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 527
    :cond_1
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput v4, v8, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 528
    const-string v8, "type"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/taxi/model/TaxiOrder;->otype:I

    .line 529
    new-instance v3, Lcom/didi/common/model/Address;

    invoke-direct {v3}, Lcom/didi/common/model/Address;-><init>()V

    .line 530
    .local v3, startPlace:Lcom/didi/common/model/Address;
    const-string v8, "from_name"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 531
    const-string v8, "from_address"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 532
    const-string v8, "flng"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 533
    const-string v8, "flat"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 535
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 536
    .local v0, endPlace:Lcom/didi/common/model/Address;
    const-string v8, "to_name"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 537
    const-string v8, "to_address"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 538
    const-string v8, "tlng"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 539
    const-string v8, "tlat"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 541
    invoke-virtual {p0, v3}, Lcom/didi/taxi/model/TaxiOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 542
    invoke-virtual {p0, v0}, Lcom/didi/taxi/model/TaxiOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 544
    const-string v8, "driver"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 545
    new-instance v8, Lcom/didi/taxi/model/TaxiDriver;

    invoke-direct {v8}, Lcom/didi/taxi/model/TaxiDriver;-><init>()V

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->taxiDriver:Lcom/didi/taxi/model/TaxiDriver;

    .line 546
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->taxiDriver:Lcom/didi/taxi/model/TaxiDriver;

    const-string v9, "driver"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/taxi/model/TaxiDriver;->parse(Lorg/json/JSONObject;)V

    .line 549
    :cond_2
    const-string v8, "coupon"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 550
    new-instance v8, Lcom/didi/taxi/model/TaxiCoupon;

    invoke-direct {v8}, Lcom/didi/taxi/model/TaxiCoupon;-><init>()V

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    .line 551
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    const-string v9, "coupon"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/taxi/model/TaxiCoupon;->parse(Lorg/json/JSONObject;)V

    .line 554
    :cond_3
    const-string v8, "share"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 555
    new-instance v8, Lcom/didi/taxi/model/TaxiPayShare;

    invoke-direct {v8}, Lcom/didi/taxi/model/TaxiPayShare;-><init>()V

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->share:Lcom/didi/taxi/model/TaxiPayShare;

    .line 556
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->share:Lcom/didi/taxi/model/TaxiPayShare;

    const-string v9, "share"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/taxi/model/TaxiPayShare;->parse(Lorg/json/JSONObject;)V

    .line 558
    :cond_4
    const-string v8, "hongbaoinfo"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 559
    .local v1, jb:Lorg/json/JSONObject;
    if-eqz v1, :cond_5

    .line 560
    new-instance v8, Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-direct {v8}, Lcom/didi/taxi/model/TaxiRedRecordInfo;-><init>()V

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->redRecord:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    .line 561
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->redRecord:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-virtual {v8, v1}, Lcom/didi/taxi/model/TaxiRedRecordInfo;->parse(Lorg/json/JSONObject;)V

    .line 563
    :cond_5
    const-string v8, "share_love"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 564
    .local v2, love:Lorg/json/JSONObject;
    if-eqz v2, :cond_6

    .line 565
    new-instance v8, Lcom/didi/taxi/model/TaxiLove;

    invoke-direct {v8}, Lcom/didi/taxi/model/TaxiLove;-><init>()V

    iput-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    .line 566
    iget-object v8, p0, Lcom/didi/taxi/model/TaxiOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    invoke-virtual {v8, v2}, Lcom/didi/taxi/model/TaxiLove;->parse(Lorg/json/JSONObject;)V

    .line 568
    :cond_6
    return-void

    .end local v0           #endPlace:Lcom/didi/common/model/Address;
    .end local v1           #jb:Lorg/json/JSONObject;
    .end local v2           #love:Lorg/json/JSONObject;
    .end local v3           #startPlace:Lcom/didi/common/model/Address;
    .end local v4           #status:I
    .end local v5           #time:Ljava/lang/String;
    .end local v6           #transportTime:J
    :cond_7
    move v8, v10

    .line 512
    goto/16 :goto_0

    .restart local v5       #time:Ljava/lang/String;
    .restart local v6       #transportTime:J
    :cond_8
    move v9, v10

    .line 523
    goto/16 :goto_1
.end method

.method public retreiveLatestAddress()V
    .locals 3

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiOrder;->hasBeenSent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 968
    :goto_0
    return-void

    .line 961
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 962
    .local v1, startAddress:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 963
    .local v0, endAddress:Lcom/didi/common/model/Address;
    if-eqz v1, :cond_1

    .line 964
    invoke-virtual {v1}, Lcom/didi/common/model/Address;->clone()Lcom/didi/common/model/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    .line 965
    :cond_1
    if-eqz v0, :cond_2

    .line 966
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->clone()Lcom/didi/common/model/Address;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    .line 967
    :cond_2
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v2

    iput-boolean v2, p0, Lcom/didi/taxi/model/TaxiOrder;->isUseDepart:Z

    goto :goto_0
.end method

.method public setArrivedTime(I)V
    .locals 0
    .parameter "arrivedTime"

    .prologue
    .line 294
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->arrivedTime:I

    .line 295
    return-void
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 0
    .parameter "cityId"

    .prologue
    .line 254
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->cityId:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setClosed(I)V
    .locals 0
    .parameter "closed"

    .prologue
    .line 409
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->closed:I

    .line 410
    return-void
.end method

.method public setCommonAttri(Lcom/didi/common/model/CommonAttributes;)V
    .locals 0
    .parameter "commonAttri"

    .prologue
    .line 683
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 684
    return-void
.end method

.method public setComplaintContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 489
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->complaintContent:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public setComplaintState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 481
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->complaintState:I

    .line 482
    return-void
.end method

.method public setCoupon(Lcom/didi/taxi/model/TaxiCoupon;)V
    .locals 0
    .parameter "coupon"

    .prologue
    .line 453
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    .line 454
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .parameter "createTime"

    .prologue
    .line 393
    iput-wide p1, p0, Lcom/didi/taxi/model/TaxiOrder;->createTime:J

    .line 394
    return-void
.end method

.method public setCreditTxt(Ljava/lang/String;)V
    .locals 0
    .parameter "creditTxt"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->creditTxt:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->distance:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setDlat(Ljava/lang/String;)V
    .locals 0
    .parameter "dlat"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->dlat:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setDlng(Ljava/lang/String;)V
    .locals 0
    .parameter "dlng"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->dlng:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setDriverCountNotified(I)V
    .locals 0
    .parameter "driverCountNotified"

    .prologue
    .line 671
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->driverCountNotified:I

    .line 672
    return-void
.end method

.method public setDriverNum(I)V
    .locals 0
    .parameter "driverNum"

    .prologue
    .line 385
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->driverNum:I

    .line 386
    return-void
.end method

.method public setEndPlace(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "endPlace"

    .prologue
    .line 840
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    .line 841
    return-void
.end method

.method public setEvaluateContent(Ljava/lang/String;)V
    .locals 0
    .parameter "evaluateContent"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->evaluateContent:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setEvaluateMark(I)V
    .locals 0
    .parameter "evaluateMark"

    .prologue
    .line 417
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->evaluateMark:I

    .line 418
    return-void
.end method

.method public setEvaluateScore(I)V
    .locals 0
    .parameter "evaluateScore"

    .prologue
    .line 433
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->evaluateScore:I

    .line 434
    return-void
.end method

.method public setFeeDetail(Lcom/didi/taxi/model/TaxiFeeDetail;)V
    .locals 0
    .parameter "feeDetail"

    .prologue
    .line 939
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->feeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    .line 940
    return-void
.end method

.method public setFromRecovery(Z)V
    .locals 0
    .parameter "isFromRecovery"

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/didi/taxi/model/TaxiOrder;->isFromRecovery:Z

    .line 402
    return-void
.end method

.method public setImSwitch(I)V
    .locals 0
    .parameter "imSwitch"

    .prologue
    .line 180
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->imSwitch:I

    .line 181
    return-void
.end method

.method public setInputType(Lcom/didi/frame/business/InputType;)V
    .locals 1
    .parameter "inputType"

    .prologue
    .line 753
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    goto :goto_0
.end method

.method public setIsOrderFinished(I)V
    .locals 0
    .parameter "isOrderFinished"

    .prologue
    .line 156
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->isOrderFinished:I

    .line 157
    return-void
.end method

.method public setIsVip(I)V
    .locals 0
    .parameter "isVip"

    .prologue
    .line 164
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->isVip:I

    .line 165
    return-void
.end method

.method public setLastRemark(Ljava/lang/String;)V
    .locals 0
    .parameter "lastRemark"

    .prologue
    .line 635
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->lastRemark:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public setLastTip(I)V
    .locals 0
    .parameter "lastTip"

    .prologue
    .line 598
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->lastTip:I

    .line 599
    return-void
.end method

.method public setLastWaitTime(I)V
    .locals 0
    .parameter "lastWaitTime"

    .prologue
    .line 619
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->lastWaitTime:I

    .line 620
    return-void
.end method

.method public setLast_trip_type(I)V
    .locals 0
    .parameter "last_trip_type"

    .prologue
    .line 148
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->last_trip_type:I

    .line 149
    return-void
.end method

.method public setLat(Ljava/lang/String;)V
    .locals 0
    .parameter "lat"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->lat:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setLng(Ljava/lang/String;)V
    .locals 0
    .parameter "lng"

    .prologue
    .line 246
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->lng:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setLove(Lcom/didi/taxi/model/TaxiLove;)V
    .locals 0
    .parameter "mLove"

    .prologue
    .line 469
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    .line 470
    return-void
.end method

.method public setNoneed(I)V
    .locals 0
    .parameter "noneed"

    .prologue
    .line 343
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->noneed:I

    .line 344
    return-void
.end method

.method public setOid(Ljava/lang/String;)V
    .locals 0
    .parameter "oid"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->oid:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setOrderType(Lcom/didi/frame/business/OrderType;)V
    .locals 1
    .parameter "orderType"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 762
    :goto_0
    return-void

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    goto :goto_0
.end method

.method public setRedRecord(Lcom/didi/taxi/model/TaxiRedRecordInfo;)V
    .locals 0
    .parameter "redRecord"

    .prologue
    .line 461
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->redRecord:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    .line 462
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .locals 0
    .parameter "remark"

    .prologue
    .line 627
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->remark:Ljava/lang/String;

    .line 628
    return-void
.end method

.method public setSendable(Lcom/didi/frame/Sendable;)V
    .locals 1
    .parameter "sendable"

    .prologue
    .line 501
    invoke-interface {p1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    .line 502
    return-void
.end method

.method public setSent()V
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->tip:I

    iput v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lastTip:I

    .line 782
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->remark:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lastRemark:Ljava/lang/String;

    .line 783
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->waitTime:I

    iput v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lastWaitTime:I

    .line 784
    iget v0, p0, Lcom/didi/taxi/model/TaxiOrder;->trip_type:I

    iput v0, p0, Lcom/didi/taxi/model/TaxiOrder;->last_trip_type:I

    .line 785
    return-void
.end method

.method public setSetupTime(J)V
    .locals 0
    .parameter "setupTime"

    .prologue
    .line 222
    iput-wide p1, p0, Lcom/didi/taxi/model/TaxiOrder;->setupTime:J

    .line 223
    return-void
.end method

.method public setShare(Lcom/didi/taxi/model/TaxiPayShare;)V
    .locals 0
    .parameter "share"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->share:Lcom/didi/taxi/model/TaxiPayShare;

    .line 478
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .parameter "sid"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->sid:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1
    .parameter "sou"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 953
    :goto_0
    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->source:Ljava/lang/String;

    goto :goto_0
.end method

.method public setStartPlace(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "startPlace"

    .prologue
    .line 825
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    .line 826
    return-void
.end method

.method public setStriverTime(J)V
    .locals 0
    .parameter "striverTime"

    .prologue
    .line 230
    iput-wide p1, p0, Lcom/didi/taxi/model/TaxiOrder;->striverTime:J

    .line 231
    return-void
.end method

.method public setStrivertime(J)V
    .locals 0
    .parameter "strivertime"

    .prologue
    .line 262
    iput-wide p1, p0, Lcom/didi/taxi/model/TaxiOrder;->striverTime:J

    .line 263
    return-void
.end method

.method public setTaxiDriver(Lcom/didi/taxi/model/TaxiDriver;)V
    .locals 0
    .parameter "taxiDriver"

    .prologue
    .line 679
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->taxiDriver:Lcom/didi/taxi/model/TaxiDriver;

    .line 680
    return-void
.end method

.method public setTaxiMsg(Lcom/didi/taxi/model/TaxiServiceMessage;)V
    .locals 0
    .parameter "taxiMsg"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->taxiMsg:Lcom/didi/taxi/model/TaxiServiceMessage;

    .line 199
    return-void
.end method

.method public setTimeout(Z)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/didi/taxi/model/TaxiOrder;->timeout:Z

    .line 664
    return-void
.end method

.method public setTip(I)V
    .locals 0
    .parameter "tip"

    .prologue
    .line 575
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->tip:I

    .line 576
    return-void
.end method

.method public setTipFee(Ljava/lang/String;)V
    .locals 0
    .parameter "tipFee"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->tipFee:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setToastMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "toastMsg"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrder;->toastMsg:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setTransportTime(J)V
    .locals 1
    .parameter "transportTime"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-wide p1, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    goto :goto_0
.end method

.method public setTrip_type(I)V
    .locals 0
    .parameter "trip_type"

    .prologue
    .line 140
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->trip_type:I

    .line 141
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 302
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->type:I

    .line 303
    return-void
.end method

.method public setUnSent()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 788
    iput v1, p0, Lcom/didi/taxi/model/TaxiOrder;->lastTip:I

    .line 789
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->lastRemark:Ljava/lang/String;

    .line 790
    iput v1, p0, Lcom/didi/taxi/model/TaxiOrder;->lastWaitTime:I

    .line 791
    return-void
.end method

.method public setUseDepart(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 927
    iput-boolean p1, p0, Lcom/didi/taxi/model/TaxiOrder;->isUseDepart:Z

    .line 928
    return-void
.end method

.method public setVipPayStatus(I)V
    .locals 0
    .parameter "vipPayStatus"

    .prologue
    .line 172
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->vipPayStatus:I

    .line 173
    return-void
.end method

.method public setVoicePath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 744
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    iput-object p1, v0, Lcom/didi/common/model/CommonAttributes;->voiceFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVoiceTime(J)V
    .locals 2
    .parameter "voiceTime"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    if-nez v0, :cond_0

    .line 750
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    long-to-float v1, p1

    iput v1, v0, Lcom/didi/common/model/CommonAttributes;->voiceTime:F

    goto :goto_0
.end method

.method public setWaitTime(I)V
    .locals 0
    .parameter "waitTime"

    .prologue
    .line 615
    iput p1, p0, Lcom/didi/taxi/model/TaxiOrder;->waitTime:I

    .line 616
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiOrder [oid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->tip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->lastTip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tipFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->tipFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastRemark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->lastRemark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastWaitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->lastWaitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->waitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startPlace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->startPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endPlace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->endPlace:Lcom/didi/common/model/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/taxi/model/TaxiOrder;->timeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverCountNotified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->driverCountNotified:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commonAttri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taxiDriver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->taxiDriver:Lcom/didi/taxi/model/TaxiDriver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coupon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", share="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->share:Lcom/didi/taxi/model/TaxiPayShare;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", redRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->redRecord:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creditTxt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->creditTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noneed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->noneed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", foundUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->foundUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", foundVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->foundVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->cityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setupTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/taxi/model/TaxiOrder;->setupTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", striverTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/taxi/model/TaxiOrder;->striverTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dlng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->dlng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->dlat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->distance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", arrivedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->arrivedTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->sid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toastMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->toastMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->otype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taxiMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->taxiMsg:Lcom/didi/taxi/model/TaxiServiceMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evaluateMark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->evaluateMark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evaluateContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->evaluateContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evaluateScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->evaluateScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", complaintState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->complaintState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", complaintContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiOrder;->complaintContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->closed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFromRecovery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/taxi/model/TaxiOrder;->isFromRecovery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/taxi/model/TaxiOrder;->isTimeOut:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/taxi/model/TaxiOrder;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiOrder;->driverNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
