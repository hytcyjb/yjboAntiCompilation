.class public Lcom/didi/car/model/CarChangeEnterpriseDetail;
.super Lcom/didi/car/model/FeeDetail;
.source "CarChangeEnterpriseDetail.java"


# static fields
.field private static final serialVersionUID:J = -0x2dd3ae0d99ce6dbdL


# instance fields
.field public balancePayTip:Ljava/lang/String;

.field public bridgeFee:Ljava/lang/String;

.field public cancelReparationFee:Ljava/lang/String;

.field public couponFee:Ljava/lang/String;

.field public couponTip:Ljava/lang/String;

.field public driverLateTime:Ljava/lang/String;

.field public drivingDistance:Ljava/lang/String;

.field public drivingFee:Ljava/lang/String;

.field public emptyDistance:Ljava/lang/String;

.field public emptyFee:Ljava/lang/String;

.field public extraFee:Ljava/lang/String;

.field public favourFeeItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarFeeItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public fixedPriceTip:Ljava/lang/String;

.field public highwayFee:Ljava/lang/String;

.field public lowSpeedTime:Ljava/lang/String;

.field public mCouponInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarOpreratActInfo;",
            ">;"
        }
    .end annotation
.end field

.field public nightDistance:Ljava/lang/String;

.field public nightFee:Ljava/lang/String;

.field public otherFee:Ljava/lang/String;

.field public parkFee:Ljava/lang/String;

.field public payRealMoney:Ljava/lang/Double;

.field public pricingModel:I

.field public reparationFee:Ljava/lang/String;

.field public slowSpeedFee:Ljava/lang/String;

.field public specialTitle:Ljava/lang/String;

.field public specialValue:Ljava/lang/String;

.field public startFee:Ljava/lang/String;

.field public totalFee:Ljava/lang/String;

.field public voucherCnt:I

.field public voucherDesc:Ljava/lang/String;

.field public voucherPay:Ljava/lang/String;

.field public waitFee:Ljava/lang/String;

.field public waitTime:Ljava/lang/String;

.field public wxPayTip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/didi/car/model/FeeDetail;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->mCouponInfos:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->favourFeeItemInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 10
    .parameter "obj"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/didi/car/model/FeeDetail;->parse(Lorg/json/JSONObject;)V

    .line 99
    const-string v8, "id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->oid:Ljava/lang/String;

    .line 100
    const-string v8, "pay_title"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->payTitle:Ljava/lang/String;

    .line 101
    const-string v8, "start_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->startFee:Ljava/lang/String;

    .line 102
    const-string v8, "driving_distance"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->drivingDistance:Ljava/lang/String;

    .line 103
    const-string v8, "driving_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->drivingFee:Ljava/lang/String;

    .line 104
    const-string v8, "highway_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->highwayFee:Ljava/lang/String;

    .line 105
    const-string v8, "slow_speed_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->slowSpeedFee:Ljava/lang/String;

    .line 106
    const-string v8, "slow_speed_time"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->lowSpeedTime:Ljava/lang/String;

    .line 107
    const-string v8, "park_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->parkFee:Ljava/lang/String;

    .line 108
    const-string v8, "extra_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->extraFee:Ljava/lang/String;

    .line 109
    const-string v8, "other_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->otherFee:Ljava/lang/String;

    .line 110
    const-string v8, "wx_pay_tip"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->wxPayTip:Ljava/lang/String;

    .line 111
    const-string v8, "coupon_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->couponFee:Ljava/lang/String;

    .line 112
    const-string v8, "coupon_tip"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->couponTip:Ljava/lang/String;

    .line 113
    const-string v8, "fixed_price_tip"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->fixedPriceTip:Ljava/lang/String;

    .line 114
    const-string v8, "balance_pay_tip"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->balancePayTip:Ljava/lang/String;

    .line 115
    const-string v8, "pay_button_title"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->payButtonTitle:Ljava/lang/String;

    .line 116
    const-string v8, "pay_button_title_label"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->payButtonTitleLabel:Ljava/lang/String;

    .line 117
    const-string v8, "cancle_reparation_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->cancelReparationFee:Ljava/lang/String;

    .line 118
    const-string v8, "reparation_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->reparationFee:Ljava/lang/String;

    .line 119
    const-string v8, "driver_late_time"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->driverLateTime:Ljava/lang/String;

    .line 120
    const-string v8, "empty_distance"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->emptyDistance:Ljava/lang/String;

    .line 121
    const-string v8, "empty_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->emptyFee:Ljava/lang/String;

    .line 122
    const-string v8, "night_distance"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->nightDistance:Ljava/lang/String;

    .line 123
    const-string v8, "night_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->nightFee:Ljava/lang/String;

    .line 124
    const-string v8, "bridge_fee"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->bridgeFee:Ljava/lang/String;

    .line 126
    const-string v8, "voucher_cnt"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->voucherCnt:I

    .line 127
    const-string v8, "voucher_url"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->voucherUrl:Ljava/lang/String;

    .line 128
    const-string v8, "voucher_desc"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->voucherDesc:Ljava/lang/String;

    .line 129
    const-string v8, "penny_flag"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->pennyFlag:I

    .line 130
    const-string v8, "voucher_pay"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->voucherPay:Ljava/lang/String;

    .line 132
    const-string v8, "pay_type"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->payType:I

    .line 133
    const-string v8, "ext_msg"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->extraMsg:Ljava/lang/String;

    .line 135
    const-string v8, "sp_title"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->specialTitle:Ljava/lang/String;

    .line 136
    const-string v8, "sp_msg"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->specialValue:Ljava/lang/String;

    .line 138
    const-string v8, "coupon_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "coupon_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 139
    new-instance v8, Lcom/didi/car/model/CarVoucherInfo;

    invoke-direct {v8}, Lcom/didi/car/model/CarVoucherInfo;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    .line 140
    iget-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    const-string v9, "coupon_id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/didi/car/model/CarVoucherInfo;->ticketId:Ljava/lang/String;

    .line 141
    iget-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    const-string v9, "coupon_money"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/didi/car/model/CarVoucherInfo;->ticketAmount:Ljava/lang/String;

    .line 144
    :cond_0
    const-string v8, "refund_info"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "refund_info"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 145
    new-instance v8, Lcom/didi/car/model/CarRefund;

    invoke-direct {v8}, Lcom/didi/car/model/CarRefund;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    .line 146
    iget-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    const-string v9, "refund_info"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/car/model/CarRefund;->parse(Lorg/json/JSONObject;)V

    .line 148
    :cond_1
    const-string v8, "refund_tip"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 149
    const-string v8, "refund_tip"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->refundTip:Ljava/lang/String;

    .line 153
    :cond_2
    const-string v8, "opera_act"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 154
    .local v1, array:Lorg/json/JSONArray;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 155
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 156
    .local v0, actLength:I
    const/4 v5, 0x0

    .local v5, iAct:I
    :goto_0
    if-ge v5, v0, :cond_4

    .line 157
    new-instance v7, Lcom/didi/car/model/CarOpreratActInfo;

    invoke-direct {v7}, Lcom/didi/car/model/CarOpreratActInfo;-><init>()V

    .line 159
    .local v7, info:Lcom/didi/car/model/CarOpreratActInfo;
    :try_start_0
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/didi/car/model/CarOpreratActInfo;->parse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :goto_1
    invoke-virtual {v7}, Lcom/didi/car/model/CarOpreratActInfo;->getCouponText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Lcom/didi/car/model/CarOpreratActInfo;->getCoupenValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 162
    iget-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->mCouponInfos:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 167
    .end local v0           #actLength:I
    .end local v5           #iAct:I
    .end local v7           #info:Lcom/didi/car/model/CarOpreratActInfo;
    :cond_4
    const-string v8, "pricingModel"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->pricingModel:I

    .line 170
    iget v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->pricingModel:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 171
    const-string v8, "favour_fee_info_list"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 172
    .local v3, favourArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 173
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 174
    .local v4, favourLength:I
    const/4 v6, 0x0

    .local v6, iFavour:I
    :goto_2
    if-ge v6, v4, :cond_6

    .line 175
    new-instance v7, Lcom/didi/car/model/CarFeeItemInfo;

    invoke-direct {v7}, Lcom/didi/car/model/CarFeeItemInfo;-><init>()V

    .line 177
    .local v7, info:Lcom/didi/car/model/CarFeeItemInfo;
    :try_start_1
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/didi/car/model/CarFeeItemInfo;->parse(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    :goto_3
    iget v8, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeType:I

    const/16 v9, 0x3ed

    if-ne v8, v9, :cond_5

    .line 181
    new-instance v2, Lcom/didi/car/model/CarVoucherInfo;

    invoke-direct {v2}, Lcom/didi/car/model/CarVoucherInfo;-><init>()V

    .line 182
    .local v2, carVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    iget-object v8, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeId:Ljava/lang/String;

    iput-object v8, v2, Lcom/didi/car/model/CarVoucherInfo;->ticketId:Ljava/lang/String;

    .line 184
    iput-object v2, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    .line 185
    iget-object v8, v7, Lcom/didi/car/model/CarFeeItemInfo;->feeUrl:Ljava/lang/String;

    iput-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->voucherUrl:Ljava/lang/String;

    .line 188
    .end local v2           #carVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    :cond_5
    iget-object v8, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->favourFeeItemInfos:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 196
    .end local v3           #favourArray:Lorg/json/JSONArray;
    .end local v4           #favourLength:I
    .end local v6           #iFavour:I
    .end local v7           #info:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_6
    return-void

    .line 178
    .restart local v3       #favourArray:Lorg/json/JSONArray;
    .restart local v4       #favourLength:I
    .restart local v6       #iFavour:I
    .restart local v7       #info:Lcom/didi/car/model/CarFeeItemInfo;
    :catch_0
    move-exception v8

    goto :goto_3

    .line 160
    .end local v3           #favourArray:Lorg/json/JSONArray;
    .end local v4           #favourLength:I
    .end local v6           #iFavour:I
    .restart local v0       #actLength:I
    .restart local v5       #iAct:I
    .local v7, info:Lcom/didi/car/model/CarOpreratActInfo;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarFeeDetail [payMark=, oid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->payTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->startFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drivingDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->drivingDistance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drivingFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->drivingFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", highwayFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->highwayFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowSpeedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->lowSpeedTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slowSpeedFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->slowSpeedFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->waitTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waitFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->waitFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->extraFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parkFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->parkFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otherFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->otherFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reparationFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->reparationFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancelReparationFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->cancelReparationFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wxPayTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->wxPayTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", balancePayTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->balancePayTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fixedPriceTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->fixedPriceTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", couponTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->couponTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->totalFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->payType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", couponFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->couponFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payButtonTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->payButtonTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverLateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->driverLateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voucherCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->voucherCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voucherUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->voucherUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voucherDesc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->voucherDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pennyFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->pennyFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", specialTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->specialTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", specialValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarChangeEnterpriseDetail;->specialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
