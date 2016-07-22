.class public Lcom/didi/taxi/model/TaxiPayResult;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiPayResult.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mLove:Lcom/didi/taxi/model/TaxiLove;

.field public mPayInfo:Lcom/didi/taxi/model/TaxiPayInfo;

.field public mRedInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;

.field public orderId:Ljava/lang/String;

.field public orgPrice:I

.field public payInfo:Ljava/lang/String;

.field public payPrice:I

.field public payState:I

.field public payTime:Ljava/lang/String;

.field public reimburseDesc:Ljava/lang/String;

.field public reimburseStatus:I

.field public salePrice:I

.field public totalFee:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "obj"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 45
    const-string v3, "orderId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->orderId:Ljava/lang/String;

    .line 46
    const-string v3, "discount_fee"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->salePrice:I

    .line 47
    const-string v3, "total_fee"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->payPrice:I

    .line 48
    const-string v3, "pay_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->payInfo:Ljava/lang/String;

    .line 49
    const-string v3, "trade_stat"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->payState:I

    .line 50
    const-string v3, "cost"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->orgPrice:I

    .line 51
    const-string v3, "pay_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->payTime:Ljava/lang/String;

    .line 52
    const-string v3, "total_fee"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->totalFee:I

    .line 53
    const-string v3, "hongbaoinfo"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 54
    .local v2, red:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 55
    new-instance v3, Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiRedRecordInfo;-><init>()V

    iput-object v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->mRedInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    .line 56
    iget-object v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->mRedInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-virtual {v3, v2}, Lcom/didi/taxi/model/TaxiRedRecordInfo;->parse(Lorg/json/JSONObject;)V

    .line 59
    :cond_0
    const-string v3, "share_love"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 60
    .local v1, love:Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 61
    new-instance v3, Lcom/didi/taxi/model/TaxiLove;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiLove;-><init>()V

    iput-object v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->mLove:Lcom/didi/taxi/model/TaxiLove;

    .line 62
    iget-object v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->mLove:Lcom/didi/taxi/model/TaxiLove;

    invoke-virtual {v3, v1}, Lcom/didi/taxi/model/TaxiLove;->parse(Lorg/json/JSONObject;)V

    .line 65
    :cond_1
    new-instance v3, Lcom/didi/taxi/model/TaxiPayInfo;

    invoke-direct {v3}, Lcom/didi/taxi/model/TaxiPayInfo;-><init>()V

    iput-object v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->mPayInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    .line 66
    iget-object v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->mPayInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    invoke-virtual {v3, p1}, Lcom/didi/taxi/model/TaxiPayInfo;->parse(Lorg/json/JSONObject;)V

    .line 68
    const-string v3, "enterprise_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 69
    .local v0, enterprise:Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 70
    const-string v3, "reimburse_status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->reimburseStatus:I

    .line 71
    const-string v3, "description"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/taxi/model/TaxiPayResult;->reimburseDesc:Ljava/lang/String;

    .line 74
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiPayResult [salePrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiPayResult;->salePrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiPayResult;->payPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiPayResult;->payState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiPayResult;->payInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiPayResult;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orgPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiPayResult;->orgPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiPayResult;->payTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiPayResult;->mPayInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRedInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiPayResult;->mRedInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiPayResult;->mLove:Lcom/didi/taxi/model/TaxiLove;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiPayResult;->totalFee:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
