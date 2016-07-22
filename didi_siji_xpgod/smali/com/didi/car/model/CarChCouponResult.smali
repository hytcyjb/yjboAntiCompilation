.class public Lcom/didi/car/model/CarChCouponResult;
.super Lcom/didi/common/model/BaseObject;
.source "CarChCouponResult.java"


# static fields
.field private static final serialVersionUID:J = -0x6650d79d2ed90730L


# instance fields
.field public balancePayTip:Ljava/lang/String;

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

.field public getPayButtonTitleLabel:Ljava/lang/String;

.field public payButtonTitle:Ljava/lang/String;

.field public payButtonTitleLabel:Ljava/lang/String;

.field public pricingModel:I

.field public specialTitle:Ljava/lang/String;

.field public specialValue:Ljava/lang/String;

.field public voucherPay:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarChCouponResult;->favourFeeItemInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "obj"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 41
    const-string v4, "balance_pay_tip"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarChCouponResult;->balancePayTip:Ljava/lang/String;

    .line 42
    const-string v4, "pay_button_title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarChCouponResult;->payButtonTitle:Ljava/lang/String;

    .line 43
    const-string v4, "pay_button_title_label"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarChCouponResult;->getPayButtonTitleLabel:Ljava/lang/String;

    .line 44
    const-string v4, "voucher_pay"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarChCouponResult;->voucherPay:Ljava/lang/String;

    .line 45
    const-string v4, "sp_title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarChCouponResult;->specialTitle:Ljava/lang/String;

    .line 46
    const-string v4, "sp_msg"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarChCouponResult;->specialValue:Ljava/lang/String;

    .line 48
    const-string v4, "pricingModel"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/didi/car/model/CarChCouponResult;->pricingModel:I

    .line 51
    iget v4, p0, Lcom/didi/car/model/CarChCouponResult;->pricingModel:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 52
    const-string v4, "favour_fee_info_list"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 53
    .local v0, favourArray:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 55
    .local v1, favourLength:I
    const/4 v2, 0x0

    .local v2, iFavour:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 56
    new-instance v3, Lcom/didi/car/model/CarFeeItemInfo;

    invoke-direct {v3}, Lcom/didi/car/model/CarFeeItemInfo;-><init>()V

    .line 58
    .local v3, info:Lcom/didi/car/model/CarFeeItemInfo;
    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/car/model/CarFeeItemInfo;->parse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_1
    iget-object v4, p0, Lcom/didi/car/model/CarChCouponResult;->favourFeeItemInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v0           #favourArray:Lorg/json/JSONArray;
    .end local v1           #favourLength:I
    .end local v2           #iFavour:I
    .end local v3           #info:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_0
    const-string v4, "pay_button_title_label"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarChCouponResult;->payButtonTitleLabel:Ljava/lang/String;

    .line 66
    return-void

    .line 59
    .restart local v0       #favourArray:Lorg/json/JSONArray;
    .restart local v1       #favourLength:I
    .restart local v2       #iFavour:I
    .restart local v3       #info:Lcom/didi/car/model/CarFeeItemInfo;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
