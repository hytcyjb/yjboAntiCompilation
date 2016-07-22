.class public Lcom/didi/car/model/CarPayParams;
.super Lcom/didi/common/model/BaseObject;
.source "CarPayParams.java"


# static fields
.field public static final PAY_CHANNEL_ID_ENTERPRISE:I = 0x7d

.field public static final PAY_CHANNEL_ID_SQQ:I = 0x81

.field public static final PAY_CHANNEL_ID_WEIXIN:I = 0x7f

.field public static final PAY_CHANNEL_ID_WEIXIN_NO_PWD:I = 0x80

.field public static final PAY_CHANNEL_ID_ZHIFUBAO:I = 0x89


# instance fields
.field public appkey:Ljava/lang/String;

.field public carWxAgentFailReason:Lcom/didi/car/model/CarWxAgentFailReason;

.field public carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

.field public didiBillId:Ljava/lang/String;

.field public nonceStr:Ljava/lang/String;

.field public packageValue:Ljava/lang/String;

.field public partnerId:Ljava/lang/String;

.field public payCloseMark:I

.field public payMentMode:I

.field public payModel:I

.field public payType:I

.field public pollingFreguency:I

.field public pollingTimes:I

.field public prepayId:Ljava/lang/String;

.field public prepayStr:Ljava/lang/String;

.field public qqParams:Lcom/didi/common/model/PayParams$QQParams;

.field public rechargeCloseMark:I

.field public shareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

.field public sign:Ljava/lang/String;

.field public timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 53
    const/16 v0, 0x1388

    iput v0, p0, Lcom/didi/car/model/CarPayParams;->pollingFreguency:I

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/didi/car/model/CarPayParams;->pollingTimes:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/model/CarPayParams;->carWxAgentFailReason:Lcom/didi/car/model/CarWxAgentFailReason;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/model/CarPayParams;->payMentMode:I

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x2

    .line 70
    const-string v2, "partnerid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->partnerId:Ljava/lang/String;

    .line 71
    const-string v2, "noncestr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->nonceStr:Ljava/lang/String;

    .line 72
    const-string v2, "prepayid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->prepayId:Ljava/lang/String;

    .line 73
    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->timeStamp:Ljava/lang/String;

    .line 74
    const-string v2, "appkey"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->appkey:Ljava/lang/String;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sign="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "package"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->packageValue:Ljava/lang/String;

    .line 76
    const-string v2, "sign"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->sign:Ljava/lang/String;

    .line 78
    const-string v2, "payCloseMark"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarPayParams;->payCloseMark:I

    .line 79
    const-string v2, "chargeCloseMark"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarPayParams;->rechargeCloseMark:I

    .line 80
    const-string v2, "didibillid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->didiBillId:Ljava/lang/String;

    .line 82
    const-string v2, "pay_mode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarPayParams;->payModel:I

    .line 84
    const-string v2, "share_coupon"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    .local v0, shareObj:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 86
    new-instance v2, Lcom/didi/car/model/CarShareCouponInfo;

    invoke-direct {v2}, Lcom/didi/car/model/CarShareCouponInfo;-><init>()V

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->shareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    .line 87
    iget-object v2, p0, Lcom/didi/car/model/CarPayParams;->shareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    invoke-virtual {v2, v0}, Lcom/didi/car/model/CarShareCouponInfo;->parse(Lorg/json/JSONObject;)V

    .line 91
    :cond_0
    const-string v2, "polling_frequency"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/didi/car/model/CarPayParams;->pollingFreguency:I

    .line 92
    const-string v2, "polling_times"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarPayParams;->pollingTimes:I

    .line 95
    const-string v2, "order_pay_status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 96
    new-instance v2, Lcom/didi/car/model/CarWxAgentPayStatus;

    invoke-direct {v2}, Lcom/didi/car/model/CarWxAgentPayStatus;-><init>()V

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    .line 97
    iget-object v2, p0, Lcom/didi/car/model/CarPayParams;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    iput v4, v2, Lcom/didi/car/model/CarWxAgentPayStatus;->status:I

    .line 98
    iget-object v2, p0, Lcom/didi/car/model/CarPayParams;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    const-string v3, "order_pay_title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentTitle:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/didi/car/model/CarPayParams;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    const-string v3, "order_pay_subject"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentSubject:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/didi/car/model/CarPayParams;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    const-string v3, "order_pay_msg"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentMsg:Ljava/lang/String;

    .line 103
    :cond_1
    const-string v2, "pay_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarPayParams;->payType:I

    .line 109
    const-string v2, "sub_err_info"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    const-string v2, "sub_err_info"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 111
    .local v1, subErrObj:Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    .line 112
    new-instance v2, Lcom/didi/car/model/CarWxAgentFailReason;

    invoke-direct {v2}, Lcom/didi/car/model/CarWxAgentFailReason;-><init>()V

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->carWxAgentFailReason:Lcom/didi/car/model/CarWxAgentFailReason;

    .line 113
    iget-object v2, p0, Lcom/didi/car/model/CarPayParams;->carWxAgentFailReason:Lcom/didi/car/model/CarWxAgentFailReason;

    invoke-virtual {v2, v1}, Lcom/didi/car/model/CarWxAgentFailReason;->parse(Lorg/json/JSONObject;)V

    .line 117
    .end local v1           #subErrObj:Lorg/json/JSONObject;
    :cond_2
    const-string v2, "payment_mode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/car/model/CarPayParams;->payMentMode:I

    .line 119
    const-string v2, "prepaystr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->prepayStr:Ljava/lang/String;

    .line 121
    const-string v2, "token_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    new-instance v2, Lcom/didi/common/model/PayParams$QQParams;

    invoke-direct {v2}, Lcom/didi/common/model/PayParams$QQParams;-><init>()V

    iput-object v2, p0, Lcom/didi/car/model/CarPayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    .line 123
    iget-object v2, p0, Lcom/didi/car/model/CarPayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    const-string v3, "sig"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/model/PayParams$QQParams;->sign:Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lcom/didi/car/model/CarPayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    const-string v3, "bargainorId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/model/PayParams$QQParams;->bargainorId:Ljava/lang/String;

    .line 125
    iget-object v2, p0, Lcom/didi/car/model/CarPayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    const-string v3, "token_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/model/PayParams$QQParams;->tokenId:Ljava/lang/String;

    .line 126
    iget-object v2, p0, Lcom/didi/car/model/CarPayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    const-string v3, "nonce"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/model/PayParams$QQParams;->nonce:Ljava/lang/String;

    .line 127
    iget-object v2, p0, Lcom/didi/car/model/CarPayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    const-string v3, "appId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/model/PayParams$QQParams;->appid:Ljava/lang/String;

    .line 130
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarPayParams{partnerId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->partnerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonceStr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->nonceStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prepayId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->prepayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appkey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->appkey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->timeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->packageValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->sign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payCloseMark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarPayParams;->payCloseMark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rechargeCloseMark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarPayParams;->rechargeCloseMark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", didiBillId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->didiBillId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarPayParams;->payModel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareCouponInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->shareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarPayParams;->payType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pollingFreguency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarPayParams;->pollingFreguency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pollingTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarPayParams;->pollingTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carWxAgentPayStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carWxAgentFailReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->carWxAgentFailReason:Lcom/didi/car/model/CarWxAgentFailReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payMentMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarPayParams;->payMentMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prepayStr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->prepayStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qqParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarPayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
