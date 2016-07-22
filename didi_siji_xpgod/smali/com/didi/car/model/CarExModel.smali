.class public Lcom/didi/car/model/CarExModel;
.super Lcom/didi/common/model/BaseObject;
.source "CarExModel.java"


# instance fields
.field public cCouponTips:Ljava/lang/String;

.field public cMinEstimate:Ljava/lang/String;

.field public confirmDesc:Ljava/lang/String;

.field public confirmPriceTip:Ljava/lang/String;

.field public confirmShow:I

.field public confirmTitle:Ljava/lang/String;

.field public dynamicTag:I

.field public fare:Lcom/didi/common/model/MarkerFare;

.field public specailMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/model/CarExModel;->confirmShow:I

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "obj"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 40
    const-string v6, "c_min_estimate"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarExModel;->cMinEstimate:Ljava/lang/String;

    .line 41
    const-string v6, "c_coupon_tips"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarExModel;->cCouponTips:Ljava/lang/String;

    .line 42
    const-string v6, "min_fee_tip"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarExModel;->specailMessage:Ljava/lang/String;

    .line 44
    new-instance v6, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v6}, Lcom/didi/common/model/MarkerFare;-><init>()V

    iput-object v6, p0, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    .line 45
    iget-object v6, p0, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    const-string v7, "estimateFee"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    .line 46
    iget-object v6, p0, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    const-string v7, "arriveTimeTips"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/didi/common/model/MarkerFare;->estimateTime:Ljava/lang/String;

    .line 48
    const-string v6, "priceTag"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 49
    const-string v6, "priceTag"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 50
    .local v0, carTagArray:Lorg/json/JSONArray;
    if-eqz v0, :cond_2

    .line 51
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v5, tagList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/MarkerFareTag;>;"
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 53
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 54
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 55
    .local v1, carTagObj:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 56
    new-instance v4, Lcom/didi/common/model/MarkerFareTag;

    invoke-direct {v4}, Lcom/didi/common/model/MarkerFareTag;-><init>()V

    .line 57
    .local v4, tag:Lcom/didi/common/model/MarkerFareTag;
    invoke-virtual {v4, v1}, Lcom/didi/common/model/MarkerFareTag;->parse(Lorg/json/JSONObject;)V

    .line 58
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v4           #tag:Lcom/didi/common/model/MarkerFareTag;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v1           #carTagObj:Lorg/json/JSONObject;
    :cond_1
    iget-object v6, p0, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    iput-object v5, v6, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    .line 67
    .end local v0           #carTagArray:Lorg/json/JSONArray;
    .end local v2           #index:I
    .end local v3           #length:I
    .end local v5           #tagList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/MarkerFareTag;>;"
    :cond_2
    :goto_1
    const-string v6, "dynamic_flag"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/didi/car/model/CarExModel;->dynamicTag:I

    .line 68
    const-string v6, "confirm_show"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/didi/car/model/CarExModel;->confirmShow:I

    .line 69
    const-string v6, "confirm_title"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarExModel;->confirmTitle:Ljava/lang/String;

    .line 70
    const-string v6, "confirm_desc"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarExModel;->confirmDesc:Ljava/lang/String;

    .line 71
    const-string v6, "confirm_price_tip"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/car/model/CarExModel;->confirmPriceTip:Ljava/lang/String;

    .line 72
    return-void

    .line 64
    :cond_3
    iget-object v6, p0, Lcom/didi/car/model/CarExModel;->fare:Lcom/didi/common/model/MarkerFare;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    goto :goto_1
.end method
