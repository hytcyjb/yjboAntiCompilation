.class public Lcom/didi/common/model/PayParams;
.super Lcom/didi/common/model/BaseObject;
.source "PayParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/model/PayParams$QQParams;,
        Lcom/didi/common/model/PayParams$WXParams;
    }
.end annotation


# instance fields
.field public appkey:Ljava/lang/String;

.field public channelId:I

.field public enterpriseDesc:Ljava/lang/String;

.field public enterpriseStatus:I

.field public mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

.field public mLove:Lcom/didi/taxi/model/TaxiLove;

.field public mRedInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;

.field public nonceStr:Ljava/lang/String;

.field public packageValue:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public prepayId:Ljava/lang/String;

.field public qqParams:Lcom/didi/common/model/PayParams$QQParams;

.field public reimburseStatus:I

.field public share:Lcom/didi/taxi/model/TaxiPayShare;

.field public sign:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;

.field public wxParams:Lcom/didi/common/model/PayParams$WXParams;

.field public zfbParams:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 168
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "obj"

    .prologue
    .line 61
    const-string v5, "partnerid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->partnerId:Ljava/lang/String;

    .line 62
    const-string v5, "noncestr"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->nonceStr:Ljava/lang/String;

    .line 63
    const-string v5, "prepayid"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->prepayId:Ljava/lang/String;

    .line 64
    const-string v5, "timestamp"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->timeStamp:Ljava/lang/String;

    .line 65
    const-string v5, "appkey"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->appkey:Ljava/lang/String;

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sign="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->packageValue:Ljava/lang/String;

    .line 67
    const-string v5, "sign"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->sign:Ljava/lang/String;

    .line 70
    const-string v5, "share"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 71
    new-instance v5, Lcom/didi/taxi/model/TaxiPayShare;

    invoke-direct {v5}, Lcom/didi/taxi/model/TaxiPayShare;-><init>()V

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->share:Lcom/didi/taxi/model/TaxiPayShare;

    .line 72
    iget-object v5, p0, Lcom/didi/common/model/PayParams;->share:Lcom/didi/taxi/model/TaxiPayShare;

    const-string v6, "share"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/didi/taxi/model/TaxiPayShare;->parse(Lorg/json/JSONObject;)V

    .line 75
    :cond_0
    const-string v5, "hongbaoinfo"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 76
    .local v3, red:Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 77
    new-instance v5, Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-direct {v5}, Lcom/didi/taxi/model/TaxiRedRecordInfo;-><init>()V

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->mRedInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    .line 78
    iget-object v5, p0, Lcom/didi/common/model/PayParams;->mRedInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-virtual {v5, v3}, Lcom/didi/taxi/model/TaxiRedRecordInfo;->parse(Lorg/json/JSONObject;)V

    .line 81
    :cond_1
    const-string v5, "share_love"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 82
    .local v1, love:Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 83
    new-instance v5, Lcom/didi/taxi/model/TaxiLove;

    invoke-direct {v5}, Lcom/didi/taxi/model/TaxiLove;-><init>()V

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->mLove:Lcom/didi/taxi/model/TaxiLove;

    .line 84
    iget-object v5, p0, Lcom/didi/common/model/PayParams;->mLove:Lcom/didi/taxi/model/TaxiLove;

    invoke-virtual {v5, v1}, Lcom/didi/taxi/model/TaxiLove;->parse(Lorg/json/JSONObject;)V

    .line 87
    :cond_2
    const-string v5, "enterprise_info"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    .local v0, enter:Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 89
    const-string v5, "status"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/didi/common/model/PayParams;->enterpriseStatus:I

    .line 90
    const-string v5, "description"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->enterpriseDesc:Ljava/lang/String;

    .line 91
    const-string v5, "reimburse_status"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/didi/common/model/PayParams;->reimburseStatus:I

    .line 94
    :cond_3
    new-instance v5, Lcom/didi/taxi/model/TaxiPayInfo;

    invoke-direct {v5}, Lcom/didi/taxi/model/TaxiPayInfo;-><init>()V

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    .line 95
    iget-object v5, p0, Lcom/didi/common/model/PayParams;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    invoke-virtual {v5, p1}, Lcom/didi/taxi/model/TaxiPayInfo;->parse(Lorg/json/JSONObject;)V

    .line 100
    const-string v5, "pay_param"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 101
    .local v2, paramObj:Lorg/json/JSONObject;
    if-eqz v2, :cond_4

    const-string v5, "sdk_param"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 102
    const-string v5, "channel_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/didi/common/model/PayParams;->channelId:I

    .line 103
    const-string v5, "sdk_param"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 105
    .local v4, sdkObj:Lorg/json/JSONObject;
    if-eqz v4, :cond_4

    .line 106
    iget v5, p0, Lcom/didi/common/model/PayParams;->channelId:I

    packed-switch v5, :pswitch_data_0

    .line 124
    .end local v4           #sdkObj:Lorg/json/JSONObject;
    :cond_4
    :goto_0
    :pswitch_0
    return-void

    .line 108
    .restart local v4       #sdkObj:Lorg/json/JSONObject;
    :pswitch_1
    new-instance v5, Lcom/didi/common/model/PayParams$WXParams;

    invoke-direct {v5}, Lcom/didi/common/model/PayParams$WXParams;-><init>()V

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->wxParams:Lcom/didi/common/model/PayParams$WXParams;

    .line 109
    iget-object v5, p0, Lcom/didi/common/model/PayParams;->wxParams:Lcom/didi/common/model/PayParams$WXParams;

    invoke-virtual {v5, v4}, Lcom/didi/common/model/PayParams$WXParams;->parse(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 112
    :pswitch_2
    new-instance v5, Lcom/didi/common/model/PayParams$QQParams;

    invoke-direct {v5}, Lcom/didi/common/model/PayParams$QQParams;-><init>()V

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    .line 113
    iget-object v5, p0, Lcom/didi/common/model/PayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    invoke-virtual {v5, v4}, Lcom/didi/common/model/PayParams$QQParams;->parse(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 116
    :pswitch_3
    const-string v5, "pay_string"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/PayParams;->zfbParams:Ljava/lang/String;

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x7f
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PayParams [partnerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/PayParams;->partnerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonceStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/PayParams;->nonceStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prepayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/PayParams;->prepayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/PayParams;->appkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/PayParams;->timeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/PayParams;->packageValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/PayParams;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/PayParams;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", share="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/PayParams;->share:Lcom/didi/taxi/model/TaxiPayShare;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRedInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/PayParams;->mRedInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/PayParams;->mLove:Lcom/didi/taxi/model/TaxiLove;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
