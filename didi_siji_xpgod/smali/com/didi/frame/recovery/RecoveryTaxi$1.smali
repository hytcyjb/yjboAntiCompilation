.class Lcom/didi/frame/recovery/RecoveryTaxi$1;
.super Lcom/didi/common/net/ResponseListener;
.source "RecoveryTaxi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/recovery/RecoveryTaxi;->recoveryByOid(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/didi/common/net/ResponseListener",
        "<",
        "Lcom/didi/taxi/model/TaxiHistoryOrder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/recovery/RecoveryTaxi;


# direct methods
.method constructor <init>(Lcom/didi/frame/recovery/RecoveryTaxi;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/didi/frame/recovery/RecoveryTaxi$1;->this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

    invoke-direct {p0}, Lcom/didi/common/net/ResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFail(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Lcom/didi/taxi/model/TaxiHistoryOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/recovery/RecoveryTaxi$1;->onFail(Lcom/didi/taxi/model/TaxiHistoryOrder;)V

    return-void
.end method

.method public onFail(Lcom/didi/taxi/model/TaxiHistoryOrder;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 182
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 183
    const v0, 0x7f0b035c

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 184
    invoke-super {p0, p1}, Lcom/didi/common/net/ResponseListener;->onFail(Lcom/didi/common/model/BaseObject;)V

    .line 185
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    check-cast p1, Lcom/didi/taxi/model/TaxiHistoryOrder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/frame/recovery/RecoveryTaxi$1;->onFinish(Lcom/didi/taxi/model/TaxiHistoryOrder;)V

    return-void
.end method

.method public onFinish(Lcom/didi/taxi/model/TaxiHistoryOrder;)V
    .locals 9
    .parameter "t"

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x10

    const/4 v6, 0x1

    .line 59
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiHistoryOrder;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 60
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v3, Lcom/didi/taxi/model/TaxiOrder;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiOrder;-><init>()V

    .line 66
    .local v3, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->isMmt:I

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setEvaluateMark(I)V

    .line 67
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->evacontent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setEvaluateContent(Ljava/lang/String;)V

    .line 68
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->evastar:Ljava/lang/String;

    invoke-static {v4}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 69
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->evastar:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setEvaluateScore(I)V

    .line 71
    :cond_2
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiPayShare:Lcom/didi/taxi/model/TaxiPayShare;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setShare(Lcom/didi/taxi/model/TaxiPayShare;)V

    .line 72
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->mRed:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setRedRecord(Lcom/didi/taxi/model/TaxiRedRecordInfo;)V

    .line 73
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->tip:I

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setTip(I)V

    .line 74
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->tipFee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setTipFee(Ljava/lang/String;)V

    .line 75
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiDriver:Lcom/didi/taxi/model/TaxiDriver;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setTaxiDriver(Lcom/didi/taxi/model/TaxiDriver;)V

    .line 77
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->closed:I

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setClosed(I)V

    .line 78
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setCoupon(Lcom/didi/taxi/model/TaxiCoupon;)V

    .line 79
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->noneed:I

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setNoneed(I)V

    .line 80
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->cpnstate:I

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setComplaintState(I)V

    .line 81
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->cpncontent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setComplaintContent(Ljava/lang/String;)V

    .line 83
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->foundUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/didi/taxi/model/TaxiOrder;->foundUrl:Ljava/lang/String;

    .line 84
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->foundVersion:I

    iput v4, v3, Lcom/didi/taxi/model/TaxiOrder;->foundVersion:I

    .line 85
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setLove(Lcom/didi/taxi/model/TaxiLove;)V

    .line 86
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->cityId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setCityId(Ljava/lang/String;)V

    .line 87
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->dlat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setDlat(Ljava/lang/String;)V

    .line 88
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->dlng:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setDlng(Ljava/lang/String;)V

    .line 89
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->lat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setLat(Ljava/lang/String;)V

    .line 90
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->lng:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setLng(Ljava/lang/String;)V

    .line 91
    iget-wide v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->createTime:J

    invoke-virtual {v3, v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setCreateTime(J)V

    .line 92
    iget-wide v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->setupTime:J

    invoke-virtual {v3, v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setSetupTime(J)V

    .line 93
    iget-wide v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->strivertime:J

    invoke-virtual {v3, v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setStrivertime(J)V

    .line 94
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->extra_info:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setRemark(Ljava/lang/String;)V

    .line 95
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->waitTime:I

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setWaitTime(I)V

    .line 96
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->driverNum:I

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setDriverNum(I)V

    .line 97
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->imSwitch:I

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setImSwitch(I)V

    .line 98
    iget-object v4, p0, Lcom/didi/frame/recovery/RecoveryTaxi$1;->this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

    #calls: Lcom/didi/frame/recovery/RecoveryTaxi;->isOrderTimeOut(Lcom/didi/taxi/model/TaxiOrder;)Z
    invoke-static {v4, v3}, Lcom/didi/frame/recovery/RecoveryTaxi;->access$000(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    invoke-virtual {v3, v6}, Lcom/didi/taxi/model/TaxiOrder;->setTimeout(Z)V

    .line 102
    :cond_3
    new-instance v0, Lcom/didi/common/model/CommonAttributes;

    invoke-direct {v0}, Lcom/didi/common/model/CommonAttributes;-><init>()V

    .line 103
    .local v0, commonAttri:Lcom/didi/common/model/CommonAttributes;
    iget-wide v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->departureTime:J

    iput-wide v4, v0, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 104
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->type:I

    if-nez v4, :cond_4

    sget-object v4, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    :goto_1
    iput-object v4, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    .line 105
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->oid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setOid(Ljava/lang/String;)V

    .line 106
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->cityName:Ljava/lang/String;

    iput-object v4, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    .line 107
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->status:I

    iput v4, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 108
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->area:Ljava/lang/String;

    iput-object v4, v0, Lcom/didi/common/model/CommonAttributes;->area:Ljava/lang/String;

    .line 109
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->cityName:Ljava/lang/String;

    iput-object v4, v0, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    .line 110
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->input:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    sget-object v4, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    :goto_2
    iput-object v4, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 111
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->inputType:Lcom/didi/frame/business/InputType;

    iput-object v4, v0, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 112
    invoke-virtual {v3, v0}, Lcom/didi/taxi/model/TaxiOrder;->setCommonAttri(Lcom/didi/common/model/CommonAttributes;)V

    .line 113
    new-instance v2, Lcom/didi/common/model/Address;

    invoke-direct {v2}, Lcom/didi/common/model/Address;-><init>()V

    .line 114
    .local v2, startAddress:Lcom/didi/common/model/Address;
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 115
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 116
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->area:Ljava/lang/String;

    iput-object v4, v2, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 117
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->cityName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 119
    iget-object v4, p0, Lcom/didi/frame/recovery/RecoveryTaxi$1;->this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

    #calls: Lcom/didi/frame/recovery/RecoveryTaxi;->isSetUserDepart(Lcom/didi/taxi/model/TaxiHistoryOrder;)Z
    invoke-static {v4, p1}, Lcom/didi/frame/recovery/RecoveryTaxi;->access$100(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiHistoryOrder;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->isBooking()Z

    move-result v4

    if-nez v4, :cond_7

    .line 120
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->lat:Ljava/lang/String;

    iput-object v4, v2, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 121
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->lng:Ljava/lang/String;

    iput-object v4, v2, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 122
    invoke-static {v6}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 123
    invoke-static {v2}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 124
    invoke-virtual {v3, v6}, Lcom/didi/taxi/model/TaxiOrder;->setUseDepart(Z)V

    .line 133
    :goto_3
    new-instance v1, Lcom/didi/common/model/Address;

    invoke-direct {v1}, Lcom/didi/common/model/Address;-><init>()V

    .line 134
    .local v1, endAddress:Lcom/didi/common/model/Address;
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->toAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 135
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->toName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 136
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->tolat:Ljava/lang/String;

    iput-object v4, v1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 137
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->tolng:Ljava/lang/String;

    iput-object v4, v1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 138
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->area:Ljava/lang/String;

    iput-object v4, v1, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 139
    invoke-virtual {v3, v2}, Lcom/didi/taxi/model/TaxiOrder;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 140
    invoke-virtual {v3, v1}, Lcom/didi/taxi/model/TaxiOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 141
    invoke-virtual {v3, v6}, Lcom/didi/taxi/model/TaxiOrder;->setFromRecovery(Z)V

    .line 145
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->isVip:I

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setIsVip(I)V

    .line 146
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->vipPayStatus:I

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setVipPayStatus(I)V

    .line 147
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setFeeDetail(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 148
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->isOrderFinished:I

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setIsOrderFinished(I)V

    .line 151
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->carPoolType:I

    invoke-virtual {v3, v4}, Lcom/didi/taxi/model/TaxiOrder;->setTrip_type(I)V

    .line 153
    invoke-static {v2}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 154
    invoke-static {v1}, Lcom/didi/common/helper/LocationHelper;->setEndAddress(Lcom/didi/common/model/Address;)V

    .line 156
    sget-object v4, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v4}, Lcom/didi/frame/switcher/SwitcherHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 158
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget v4, v4, Lcom/didi/common/model/CommonAttributes;->status:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_9

    .line 159
    iget-object v4, p0, Lcom/didi/frame/recovery/RecoveryTaxi$1;->this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

    #calls: Lcom/didi/frame/recovery/RecoveryTaxi;->redirectTaxiWaitForResponse(Lcom/didi/taxi/model/TaxiOrder;)V
    invoke-static {v4, v3}, Lcom/didi/frame/recovery/RecoveryTaxi;->access$200(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;)V

    goto/16 :goto_0

    .line 104
    .end local v1           #endAddress:Lcom/didi/common/model/Address;
    .end local v2           #startAddress:Lcom/didi/common/model/Address;
    :cond_4
    sget-object v4, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    goto/16 :goto_1

    .line 110
    :cond_5
    iget v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->input:I

    if-nez v4, :cond_6

    sget-object v4, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    goto/16 :goto_2

    :cond_6
    sget-object v4, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    goto/16 :goto_2

    .line 125
    .restart local v2       #startAddress:Lcom/didi/common/model/Address;
    :cond_7
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->isBooking()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 126
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromlat:Ljava/lang/String;

    iput-object v4, v2, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 127
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromlng:Ljava/lang/String;

    iput-object v4, v2, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    goto :goto_3

    .line 129
    :cond_8
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->lat:Ljava/lang/String;

    iput-object v4, v2, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 130
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiHistoryOrder;->lng:Ljava/lang/String;

    iput-object v4, v2, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    goto :goto_3

    .line 160
    .restart local v1       #endAddress:Lcom/didi/common/model/Address;
    :cond_9
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    iget v4, v4, Lcom/didi/common/model/CommonAttributes;->status:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getFeeDetail()Lcom/didi/taxi/model/TaxiFeeDetail;

    move-result-object v4

    if-nez v4, :cond_a

    .line 161
    iget-object v4, p0, Lcom/didi/frame/recovery/RecoveryTaxi$1;->this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

    #calls: Lcom/didi/frame/recovery/RecoveryTaxi;->redirectTaxiWaitForArrival(Lcom/didi/taxi/model/TaxiOrder;I)V
    invoke-static {v4, v3, v7}, Lcom/didi/frame/recovery/RecoveryTaxi;->access$300(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;I)V

    goto/16 :goto_0

    .line 163
    :cond_a
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getClosed()I

    move-result v4

    if-ne v4, v6, :cond_b

    .line 164
    iget-object v4, p0, Lcom/didi/frame/recovery/RecoveryTaxi$1;->this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

    #calls: Lcom/didi/frame/recovery/RecoveryTaxi;->redirectTaxiEndOrder()V
    invoke-static {v4}, Lcom/didi/frame/recovery/RecoveryTaxi;->access$400(Lcom/didi/frame/recovery/RecoveryTaxi;)V

    goto/16 :goto_0

    .line 166
    :cond_b
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v4, v5, :cond_c

    .line 167
    iget-object v4, p0, Lcom/didi/frame/recovery/RecoveryTaxi$1;->this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

    #calls: Lcom/didi/frame/recovery/RecoveryTaxi;->redirectTaxiWaitForArrival(Lcom/didi/taxi/model/TaxiOrder;I)V
    invoke-static {v4, v3, v8}, Lcom/didi/frame/recovery/RecoveryTaxi;->access$300(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;I)V

    goto/16 :goto_0

    .line 168
    :cond_c
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v4, v5, :cond_0

    .line 169
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v4

    iget v4, v4, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    if-nez v4, :cond_d

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getEvaluateMark()I

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getFeeDetail()Lcom/didi/taxi/model/TaxiFeeDetail;

    move-result-object v4

    if-nez v4, :cond_d

    .line 170
    iget-object v4, p0, Lcom/didi/frame/recovery/RecoveryTaxi$1;->this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

    #calls: Lcom/didi/frame/recovery/RecoveryTaxi;->redirectTaxiWaitForArrival(Lcom/didi/taxi/model/TaxiOrder;I)V
    invoke-static {v4, v3, v7}, Lcom/didi/frame/recovery/RecoveryTaxi;->access$300(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;I)V

    goto/16 :goto_0

    .line 172
    :cond_d
    iget-object v4, p0, Lcom/didi/frame/recovery/RecoveryTaxi$1;->this$0:Lcom/didi/frame/recovery/RecoveryTaxi;

    #calls: Lcom/didi/frame/recovery/RecoveryTaxi;->redirectTaxiWaitForArrival(Lcom/didi/taxi/model/TaxiOrder;I)V
    invoke-static {v4, v3, v8}, Lcom/didi/frame/recovery/RecoveryTaxi;->access$300(Lcom/didi/frame/recovery/RecoveryTaxi;Lcom/didi/taxi/model/TaxiOrder;I)V

    goto/16 :goto_0
.end method
