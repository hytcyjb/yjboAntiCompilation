.class public Lcom/didi/taxi/model/TaxiHistoryOrder;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiHistoryOrder.java"


# instance fields
.field public area:Ljava/lang/String;

.field public carPoolType:I

.field public cityId:Ljava/lang/String;

.field public cityName:Ljava/lang/String;

.field public closed:I

.field public coupon:Lcom/didi/taxi/model/TaxiCoupon;

.field public cpncontent:Ljava/lang/String;

.field public cpnstate:I

.field public createTime:J

.field public departureTime:J

.field public dlat:Ljava/lang/String;

.field public dlng:Ljava/lang/String;

.field public driverNum:I

.field public evacontent:Ljava/lang/String;

.field public evastar:Ljava/lang/String;

.field public extra_info:Ljava/lang/String;

.field public foundUrl:Ljava/lang/String;

.field public foundVersion:I

.field public fromAddress:Ljava/lang/String;

.field public fromName:Ljava/lang/String;

.field public fromlat:Ljava/lang/String;

.field public fromlng:Ljava/lang/String;

.field public id:I

.field public imSwitch:I

.field public input:I

.field public inputType:Lcom/didi/frame/business/InputType;

.field public isMmt:I

.field public isOrderFinished:I

.field public isVip:I

.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field public mLove:Lcom/didi/taxi/model/TaxiLove;

.field public mRed:Lcom/didi/taxi/model/TaxiRedRecordInfo;

.field public noneed:I

.field public oid:Ljava/lang/String;

.field public score1:I

.field public setupTime:J

.field public status:I

.field public strivertime:J

.field public taxiDriver:Lcom/didi/taxi/model/TaxiDriver;

.field public taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

.field public taxiPayShare:Lcom/didi/taxi/model/TaxiPayShare;

.field public tip:I

.field public tipFee:Ljava/lang/String;

.field public toAddress:Ljava/lang/String;

.field public toName:Ljava/lang/String;

.field public tolat:Ljava/lang/String;

.field public tolng:Ljava/lang/String;

.field public type:I

.field public vipPayStatus:I

.field public waitTime:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromlng:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromlat:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->tolng:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->tolat:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->tipFee:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->dlng:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->dlat:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->lng:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->lat:Ljava/lang/String;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->input:I

    .line 116
    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->imSwitch:I

    .line 120
    iput v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->isVip:I

    .line 123
    iput v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->vipPayStatus:I

    .line 128
    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->carPoolType:I

    .line 134
    iput v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->isOrderFinished:I

    return-void
.end method

.method private parseDepartueTime(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 3
    .parameter "jsonObject"
    .parameter "key"

    .prologue
    .line 255
    const-string v1, "time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, time:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const-wide/16 v1, 0x0

    .line 258
    :goto_0
    return-wide v1

    :cond_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/didi/common/util/Utils;->converDateToMillisecond(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->paseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/didi/common/model/BaseObject;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiHistoryOrder;->clone()Lcom/didi/taxi/model/TaxiHistoryOrder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/didi/taxi/model/TaxiHistoryOrder;
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, obj:Lcom/didi/taxi/model/TaxiHistoryOrder;
    invoke-super {p0}, Lcom/didi/common/model/BaseObject;->clone()Lcom/didi/common/model/BaseObject;

    move-result-object v0

    .end local v0           #obj:Lcom/didi/taxi/model/TaxiHistoryOrder;
    check-cast v0, Lcom/didi/taxi/model/TaxiHistoryOrder;

    .line 265
    .restart local v0       #obj:Lcom/didi/taxi/model/TaxiHistoryOrder;
    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->timeoffset:I

    iput v1, v0, Lcom/didi/taxi/model/TaxiHistoryOrder;->timeoffset:I

    .line 266
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/didi/taxi/model/TaxiHistoryOrder;->clone()Lcom/didi/taxi/model/TaxiHistoryOrder;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 138
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 139
    const-string v2, "is_order_finish"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->isOrderFinished:I

    .line 140
    const-string v2, "is_vip"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->isVip:I

    .line 141
    const-string v2, "vip_pay_status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->vipPayStatus:I

    .line 144
    const-string v2, "discovery_html"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->foundUrl:Ljava/lang/String;

    .line 145
    const-string v2, "discovery_version"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->foundVersion:I

    .line 147
    const-string v2, "open_im"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    const-string v2, "open_im"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->imSwitch:I

    .line 151
    :cond_0
    const-string v2, "orderinfo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 152
    const-string v2, "orderinfo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 156
    :cond_1
    const-string v2, "base"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 157
    const-string v2, "base"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 158
    .local v0, baseObj:Lorg/json/JSONObject;
    const-string v2, "oid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->oid:Ljava/lang/String;

    .line 159
    const-string v2, "from_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromName:Ljava/lang/String;

    .line 160
    const-string v2, "to_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->toName:Ljava/lang/String;

    .line 161
    const-string v2, "from_address"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromAddress:Ljava/lang/String;

    .line 162
    const-string v2, "to_address"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->toAddress:Ljava/lang/String;

    .line 163
    const-string v2, "flng"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromlng:Ljava/lang/String;

    .line 164
    const-string v2, "flat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromlat:Ljava/lang/String;

    .line 165
    const-string v2, "tlng"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->tolng:Ljava/lang/String;

    .line 166
    const-string v2, "tlat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->tolat:Ljava/lang/String;

    .line 167
    const-string v2, "tip"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->tip:I

    .line 168
    const-string v2, "tip_fee"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->tipFee:Ljava/lang/String;

    .line 169
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->status:I

    .line 170
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->type:I

    .line 171
    const-string v2, "time"

    invoke-direct {p0, v0, v2}, Lcom/didi/taxi/model/TaxiHistoryOrder;->parseDepartueTime(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->departureTime:J

    .line 172
    const-string v2, "input"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    const-string v2, "input"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->input:I

    .line 175
    :cond_2
    const-string v2, "area"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->area:Ljava/lang/String;

    .line 176
    const-string v2, "city_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->cityName:Ljava/lang/String;

    .line 178
    const-string v2, "city_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->cityId:Ljava/lang/String;

    .line 179
    const-string v2, "dlat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->dlat:Ljava/lang/String;

    .line 180
    const-string v2, "dlng"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->dlng:Ljava/lang/String;

    .line 181
    const-string v2, "lng"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->lng:Ljava/lang/String;

    .line 182
    const-string v2, "lat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->lat:Ljava/lang/String;

    .line 183
    const-string v2, "createTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-wide v2, v4

    :goto_0
    iput-wide v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->createTime:J

    .line 185
    const-string v2, "setupTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-wide v2, v4

    :goto_1
    iput-wide v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->setupTime:J

    .line 187
    const-string v2, "strivertime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_2
    iput-wide v4, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->strivertime:J

    .line 189
    const-string v2, "extra_info"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->extra_info:Ljava/lang/String;

    .line 190
    const-string v2, "extra_waittime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->waitTime:I

    .line 191
    const-string v2, "inputType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    :goto_3
    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->inputType:Lcom/didi/frame/business/InputType;

    .line 192
    const-string v2, "driver_num"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->driverNum:I

    .line 196
    .end local v0           #baseObj:Lorg/json/JSONObject;
    :cond_3
    const-string v2, "driver"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 197
    new-instance v2, Lcom/didi/taxi/model/TaxiDriver;

    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiDriver;-><init>()V

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiDriver:Lcom/didi/taxi/model/TaxiDriver;

    .line 198
    iget-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiDriver:Lcom/didi/taxi/model/TaxiDriver;

    const-string v3, "driver"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/taxi/model/TaxiDriver;->parse(Lorg/json/JSONObject;)V

    .line 201
    :cond_4
    const-string v2, "share"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 202
    new-instance v2, Lcom/didi/taxi/model/TaxiPayShare;

    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiPayShare;-><init>()V

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiPayShare:Lcom/didi/taxi/model/TaxiPayShare;

    .line 203
    iget-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiPayShare:Lcom/didi/taxi/model/TaxiPayShare;

    const-string v3, "share"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/taxi/model/TaxiPayShare;->parse(Lorg/json/JSONObject;)V

    .line 206
    :cond_5
    const-string v2, "coupon"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 207
    new-instance v2, Lcom/didi/taxi/model/TaxiCoupon;

    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiCoupon;-><init>()V

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    .line 208
    iget-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    const-string v3, "coupon"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/taxi/model/TaxiCoupon;->parse(Lorg/json/JSONObject;)V

    .line 211
    :cond_6
    const-string v2, "hongbaoinfo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 212
    new-instance v2, Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiRedRecordInfo;-><init>()V

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->mRed:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    .line 213
    iget-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->mRed:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    const-string v3, "hongbaoinfo"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/taxi/model/TaxiRedRecordInfo;->parse(Lorg/json/JSONObject;)V

    .line 216
    :cond_7
    const-string v2, "share_love"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 217
    new-instance v2, Lcom/didi/taxi/model/TaxiLove;

    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiLove;-><init>()V

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    .line 218
    iget-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    const-string v3, "share_love"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/taxi/model/TaxiLove;->parse(Lorg/json/JSONObject;)V

    .line 221
    :cond_8
    const-string v2, "cmt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 222
    const-string v2, "cmt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 223
    .local v1, cmtObj:Lorg/json/JSONObject;
    const-string v2, "pcomplainttype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->cpnstate:I

    .line 224
    const-string v2, "close"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->closed:I

    .line 225
    const-string v2, "is_cmt"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->isMmt:I

    .line 226
    const-string v2, "cmt_content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->evacontent:Ljava/lang/String;

    .line 227
    const-string v2, "cmt_style"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->noneed:I

    .line 228
    const-string v2, "pcomplaint"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->cpncontent:Ljava/lang/String;

    .line 229
    const-string v2, "score1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->evastar:Ljava/lang/String;

    .line 234
    .end local v1           #cmtObj:Lorg/json/JSONObject;
    :cond_9
    const-string v2, "driver_let_pay"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 235
    new-instance v2, Lcom/didi/taxi/model/TaxiFeeDetail;

    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiFeeDetail;-><init>()V

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    .line 236
    iget-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    const-string v3, "driver_let_pay"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/taxi/model/TaxiFeeDetail;->parse(Lorg/json/JSONObject;)V

    .line 239
    :cond_a
    const-string v2, "trip_pay_info"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 240
    new-instance v2, Lcom/didi/taxi/model/TaxiFeeDetail;

    invoke-direct {v2}, Lcom/didi/taxi/model/TaxiFeeDetail;-><init>()V

    iput-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    .line 241
    iget-object v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiFeeDetail:Lcom/didi/taxi/model/TaxiFeeDetail;

    const-string v3, "trip_pay_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/taxi/model/TaxiFeeDetail;->parse(Lorg/json/JSONObject;)V

    .line 244
    :cond_b
    const-string v2, "trip_type"

    invoke-virtual {p1, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->carPoolType:I

    .line 245
    const-string v2, "is_share_trip"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 246
    const-string v2, "is_share_trip"

    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_11

    .line 247
    const/4 v2, 0x2

    iput v2, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->carPoolType:I

    .line 252
    :cond_c
    :goto_4
    return-void

    .line 183
    .restart local v0       #baseObj:Lorg/json/JSONObject;
    :cond_d
    const-string v2, "createTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/Utils;->converDateToMillisecond(Ljava/lang/String;)J

    move-result-wide v2

    goto/16 :goto_0

    .line 185
    :cond_e
    const-string v2, "setupTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/Utils;->converDateToMillisecond(Ljava/lang/String;)J

    move-result-wide v2

    goto/16 :goto_1

    .line 187
    :cond_f
    const-string v2, "strivertime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/Utils;->converDateToMillisecond(Ljava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_2

    .line 191
    :cond_10
    sget-object v2, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    goto/16 :goto_3

    .line 249
    .end local v0           #baseObj:Lorg/json/JSONObject;
    :cond_11
    iput v6, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->carPoolType:I

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiHistoryOrder [oid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->toName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->toAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromlng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromlng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->fromlat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tolng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->tolng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tolat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->tolat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->tip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tipFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->tipFee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", departureTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->departureTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->cityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setupTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->setupTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strivertime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->strivertime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra_info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->extra_info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->waitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inputType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->inputType:Lcom/didi/frame/business/InputType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dlng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->dlng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->dlat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->isMmt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpnstate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->cpnstate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpncontent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->cpncontent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evastar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->evastar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evacontent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->evacontent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->closed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->score1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", noneed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->noneed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taxiDriver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiDriver:Lcom/didi/taxi/model/TaxiDriver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coupon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taxiPayShare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->taxiPayShare:Lcom/didi/taxi/model/TaxiPayShare;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->mRed:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", input="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->input:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", foundUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->foundUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", foundVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->foundVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driverNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->driverNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/model/TaxiHistoryOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
