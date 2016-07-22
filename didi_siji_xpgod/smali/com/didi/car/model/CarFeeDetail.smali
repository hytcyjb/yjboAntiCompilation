.class public Lcom/didi/car/model/CarFeeDetail;
.super Lcom/didi/car/model/FeeDetail;
.source "CarFeeDetail.java"


# static fields
.field private static final serialVersionUID:J = -0x2dd3ae0d99ce6dbdL


# instance fields
.field public balancePayTip:Ljava/lang/String;

.field public balancePayTipForDetail:Ljava/lang/String;

.field public bridgeFee:Ljava/lang/String;

.field public cancelReparationFee:Ljava/lang/String;

.field public couponFee:Ljava/lang/String;

.field public couponTip:Ljava/lang/String;

.field public driverLateTime:Ljava/lang/String;

.field public drivingDistance:Ljava/lang/String;

.field public drivingFee:Ljava/lang/String;

.field public dynamicPriceTitle:Ljava/lang/String;

.field public dynamicPriceValue:Ljava/lang/String;

.field public emptyDistance:Ljava/lang/String;

.field public emptyFee:Ljava/lang/String;

.field public extraFee:Ljava/lang/String;

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

.field public paymentName:Ljava/lang/String;

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
    .line 23
    invoke-direct {p0}, Lcom/didi/car/model/FeeDetail;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarFeeDetail;->mCouponInfos:Ljava/util/List;

    return-void
.end method

.method private isValidNew(Ljava/lang/String;)Z
    .locals 3
    .parameter "fee"

    .prologue
    .line 194
    invoke-static {p1}, Lcom/didi/common/util/NumberUtil;->strToFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 196
    .local v0, value:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "obj"

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/didi/car/model/FeeDetail;->parse(Lorg/json/JSONObject;)V

    .line 103
    const-string v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->oid:Ljava/lang/String;

    .line 104
    const-string v4, "pay_title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->payTitle:Ljava/lang/String;

    .line 105
    const-string v4, "start_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->startFee:Ljava/lang/String;

    .line 106
    const-string v4, "driving_distance"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->drivingDistance:Ljava/lang/String;

    .line 107
    const-string v4, "driving_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->drivingFee:Ljava/lang/String;

    .line 108
    const-string v4, "highway_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->highwayFee:Ljava/lang/String;

    .line 109
    const-string v4, "slow_speed_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->slowSpeedFee:Ljava/lang/String;

    .line 110
    const-string v4, "slow_speed_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->lowSpeedTime:Ljava/lang/String;

    .line 111
    const-string v4, "park_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->parkFee:Ljava/lang/String;

    .line 112
    const-string v4, "extra_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->extraFee:Ljava/lang/String;

    .line 113
    const-string v4, "other_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->otherFee:Ljava/lang/String;

    .line 114
    const-string v4, "wx_pay_tip"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->wxPayTip:Ljava/lang/String;

    .line 115
    const-string v4, "coupon_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->couponFee:Ljava/lang/String;

    .line 116
    const-string v4, "coupon_tip"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->couponTip:Ljava/lang/String;

    .line 117
    const-string v4, "fixed_price_tip"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->fixedPriceTip:Ljava/lang/String;

    .line 118
    const-string v4, "balance_pay_tip"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->balancePayTip:Ljava/lang/String;

    .line 119
    const-string v4, "balance_pay_tip"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->balancePayTipForDetail:Ljava/lang/String;

    .line 121
    iget-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->balancePayTip:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/didi/car/model/CarFeeDetail;->isValidNew(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    new-instance v4, Lcom/didi/car/model/CarPayment;

    invoke-direct {v4}, Lcom/didi/car/model/CarPayment;-><init>()V

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    .line 123
    iget-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    const/4 v5, 0x1

    iput v5, v4, Lcom/didi/car/model/CarPayment;->paymentMode:I

    .line 124
    iget-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    const v5, 0x7f0b02c7

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/didi/car/model/CarPayment;->paymentName:Ljava/lang/String;

    .line 125
    iget-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->balancePayment:Lcom/didi/car/model/CarPayment;

    iget-object v5, p0, Lcom/didi/car/model/CarFeeDetail;->balancePayTip:Ljava/lang/String;

    iput-object v5, v4, Lcom/didi/car/model/CarPayment;->paymentExtMsg:Ljava/lang/String;

    .line 126
    const-string v4, "0"

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->balancePayTip:Ljava/lang/String;

    .line 130
    :cond_0
    const-string v4, "pay_button_title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->payButtonTitle:Ljava/lang/String;

    .line 131
    const-string v4, "pay_button_title_label"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->payButtonTitleLabel:Ljava/lang/String;

    .line 132
    const-string v4, "cancle_reparation_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->cancelReparationFee:Ljava/lang/String;

    .line 133
    const-string v4, "reparation_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->reparationFee:Ljava/lang/String;

    .line 134
    const-string v4, "driver_late_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->driverLateTime:Ljava/lang/String;

    .line 135
    const-string v4, "empty_distance"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->emptyDistance:Ljava/lang/String;

    .line 136
    const-string v4, "empty_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->emptyFee:Ljava/lang/String;

    .line 137
    const-string v4, "night_distance"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->nightDistance:Ljava/lang/String;

    .line 138
    const-string v4, "night_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->nightFee:Ljava/lang/String;

    .line 139
    const-string v4, "bridge_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->bridgeFee:Ljava/lang/String;

    .line 141
    const-string v4, "voucher_cnt"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/didi/car/model/CarFeeDetail;->voucherCnt:I

    .line 142
    const-string v4, "voucher_url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->voucherUrl:Ljava/lang/String;

    .line 143
    const-string v4, "voucher_desc"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->voucherDesc:Ljava/lang/String;

    .line 144
    const-string v4, "penny_flag"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/didi/car/model/CarFeeDetail;->pennyFlag:I

    .line 145
    const-string v4, "voucher_pay"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->voucherPay:Ljava/lang/String;

    .line 147
    const-string v4, "pay_type"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/didi/car/model/CarFeeDetail;->payType:I

    .line 148
    const-string v4, "ext_msg"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->extraMsg:Ljava/lang/String;

    .line 150
    const-string v4, "sp_title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->specialTitle:Ljava/lang/String;

    .line 151
    const-string v4, "sp_msg"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->specialValue:Ljava/lang/String;

    .line 153
    const-string v4, "dynamic_price_title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->dynamicPriceTitle:Ljava/lang/String;

    .line 154
    const-string v4, "dynamic_price_msg"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->dynamicPriceValue:Ljava/lang/String;

    .line 157
    const-string v4, "coupon_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "coupon_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 158
    new-instance v4, Lcom/didi/car/model/CarVoucherInfo;

    invoke-direct {v4}, Lcom/didi/car/model/CarVoucherInfo;-><init>()V

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    .line 159
    iget-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    const-string v5, "coupon_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/didi/car/model/CarVoucherInfo;->ticketId:Ljava/lang/String;

    .line 160
    iget-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    const-string v5, "coupon_money"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/didi/car/model/CarVoucherInfo;->ticketAmount:Ljava/lang/String;

    .line 163
    :cond_1
    const-string v4, "payment_name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->paymentName:Ljava/lang/String;

    .line 165
    const-string v4, "refund_info"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "refund_info"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 166
    new-instance v4, Lcom/didi/car/model/CarRefund;

    invoke-direct {v4}, Lcom/didi/car/model/CarRefund;-><init>()V

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    .line 167
    iget-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    const-string v5, "refund_info"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/car/model/CarRefund;->parse(Lorg/json/JSONObject;)V

    .line 169
    :cond_2
    const-string v4, "refund_tip"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    const-string v4, "refund_tip"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->refundTip:Ljava/lang/String;

    .line 174
    :cond_3
    const-string v4, "opera_act"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 175
    .local v1, array:Lorg/json/JSONArray;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 176
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 177
    .local v0, actLength:I
    const/4 v2, 0x0

    .local v2, iAct:I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 178
    new-instance v3, Lcom/didi/car/model/CarOpreratActInfo;

    invoke-direct {v3}, Lcom/didi/car/model/CarOpreratActInfo;-><init>()V

    .line 180
    .local v3, info:Lcom/didi/car/model/CarOpreratActInfo;
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/car/model/CarOpreratActInfo;->parse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    invoke-virtual {v3}, Lcom/didi/car/model/CarOpreratActInfo;->getCouponText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/didi/car/model/CarOpreratActInfo;->getCoupenValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 183
    iget-object v4, p0, Lcom/didi/car/model/CarFeeDetail;->mCouponInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v0           #actLength:I
    .end local v2           #iAct:I
    .end local v3           #info:Lcom/didi/car/model/CarOpreratActInfo;
    :cond_5
    return-void

    .line 181
    .restart local v0       #actLength:I
    .restart local v2       #iAct:I
    .restart local v3       #info:Lcom/didi/car/model/CarOpreratActInfo;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarFeeDetail [payMark=, oid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->payTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->startFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drivingDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->drivingDistance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drivingFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->drivingFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", highwayFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->highwayFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowSpeedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->lowSpeedTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slowSpeedFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->slowSpeedFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->waitTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waitFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->waitFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extraFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->extraFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parkFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->parkFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otherFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->otherFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reparationFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->reparationFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cancelReparationFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->cancelReparationFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wxPayTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->wxPayTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", balancePayTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->balancePayTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fixedPriceTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->fixedPriceTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", couponTip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->couponTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->totalFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarFeeDetail;->payType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", couponFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->couponFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payButtonTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->payButtonTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverLateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->driverLateTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarFeeDetail;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarFeeDetail;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voucherCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarFeeDetail;->voucherCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voucherUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->voucherUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voucherDesc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->voucherDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pennyFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarFeeDetail;->pennyFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", specialTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->specialTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", specialValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetail;->specialValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
