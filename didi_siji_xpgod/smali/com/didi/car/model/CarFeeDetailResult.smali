.class public Lcom/didi/car/model/CarFeeDetailResult;
.super Lcom/didi/common/model/BaseObject;
.source "CarFeeDetailResult.java"


# static fields
.field private static final serialVersionUID:J = 0x6696838786ed730L


# instance fields
.field public feeDetail:Lcom/didi/car/model/FeeDetail;

.field public payMark:I

.field public pricingModel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 27
    const-string v1, "isPay"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/car/model/CarFeeDetailResult;->payMark:I

    .line 29
    const-string v1, "pricingModel"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/car/model/CarFeeDetailResult;->pricingModel:I

    .line 31
    const-string v1, "feeDetail"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 32
    .local v0, feeDetailJson:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lcom/didi/car/model/CarFeeDetail;

    invoke-direct {v1}, Lcom/didi/car/model/CarFeeDetail;-><init>()V

    iput-object v1, p0, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 34
    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-virtual {v1, v0}, Lcom/didi/car/model/FeeDetail;->parse(Lorg/json/JSONObject;)V

    .line 37
    :cond_0
    const-string v1, "feeInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 38
    new-instance v1, Lcom/didi/car/model/CarNewFeeDetail;

    invoke-direct {v1}, Lcom/didi/car/model/CarNewFeeDetail;-><init>()V

    iput-object v1, p0, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 39
    iget-object v1, p0, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    const-string v2, "feeInfo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/car/model/FeeDetail;->parse(Lorg/json/JSONObject;)V

    .line 42
    :cond_1
    return-void
.end method
