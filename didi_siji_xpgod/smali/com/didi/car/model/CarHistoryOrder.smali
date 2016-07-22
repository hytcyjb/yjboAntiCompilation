.class public Lcom/didi/car/model/CarHistoryOrder;
.super Lcom/didi/common/model/BaseObject;
.source "CarHistoryOrder.java"


# static fields
.field public static final STATUS_CANCEL_TRIP:I = 0x2

.field public static final STATUS_CANCEL_TRIP_PAID:I = 0x6

.field public static final STATUS_CONSULT:I = 0x8

.field public static final STATUS_DOING:I = 0x4

.field public static final STATUS_FINISH:I = 0x3

.field public static final STATUS_NOT_PAY:I = 0x5

.field public static final STATUS_WAIT:I = 0x7

.field public static final STATUS_WAIT_ARRRIVAL:I = 0x1

.field public static final SUBSTATUS_DOING_DISPATCHING:I = 0xfa0

.field public static final SUBSTATUS_DOING_DRIVER_ARRIVAL:I = 0xfa3

.field public static final SUBSTATUS_DOING_DRIVER_LATE:I = 0xfa2

.field public static final SUBSTATUS_DOING_PSNG_LATE:I = 0xfa4

.field public static final SUBSTATUS_DOING_PSNG_LATE_FEE:I = 0xfa5

.field public static final SUBSTATUS_DOING_SERVICE:I = 0xfa6

.field public static final SUBSTATUS_DOING_WAITING:I = 0xfa1

.field public static final SUBSTATUS_WAIT_CONSULT:I = 0x1b5a

.field public static final SUBSTATUS_WAIT_YUYING:I = 0x1b59


# instance fields
.field public area:Ljava/lang/String;

.field public bubbleInfo:Ljava/lang/String;

.field public carConsultInfo:Lcom/didi/car/model/CarConsultInfo;

.field public carModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarModel;",
            ">;"
        }
    .end annotation
.end field

.field public carPosition:Lcom/didi/car/model/CarPosition;

.field public carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

.field public cityName:Ljava/lang/String;

.field public closeTips:Ljava/lang/String;

.field public cpncontent:Ljava/lang/String;

.field public cpnstate:I

.field public createTime:J

.field public departureTime:J

.field public disTrict:Ljava/lang/String;

.field public driver:Lcom/didi/car/model/CarDriver;

.field public driverNum:I

.field public evacontent:Ljava/lang/String;

.field public evastar:I

.field public extraInfo:Ljava/lang/String;

.field public fName:Ljava/lang/String;

.field public feeDetail:Lcom/didi/car/model/FeeDetail;

.field public feedback:I

.field public feedbackTips:Ljava/lang/String;

.field public feedbackTitle:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public fromlat:Ljava/lang/String;

.field public fromlng:Ljava/lang/String;

.field public input:I

.field public isCancel:I

.field public isCmt:I

.field public isPay:I

.field public isTimeout:Z

.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field public newRealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

.field public oid:Ljava/lang/String;

.field public payResult:Lcom/didi/car/model/CarPayResult;

.field public payType:I

.field public pkDriverNums:I

.field public pkMsg:Ljava/lang/String;

.field public pkWaitTime:I

.field public pricingModel:I

.field public pushTips:Ljava/lang/String;

.field public realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

.field public score1:I

.field public share:Lcom/didi/car/model/CarPayShare;

.field public status:I

.field public statusTitle:Ljava/lang/String;

.field public substatus:I

.field public tName:Ljava/lang/String;

.field public timeOutMsg:Ljava/lang/String;

.field public tip:Ljava/lang/String;

.field public to:Ljava/lang/String;

.field public tolat:Ljava/lang/String;

.field public tolng:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->fromlat:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->tolng:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->tolat:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->lng:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->lat:Ljava/lang/String;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/car/model/CarHistoryOrder;->input:I

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->pushTips:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->bubbleInfo:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->disTrict:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->fName:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->tName:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/didi/car/model/CarHistoryOrder;->isTimeout:Z

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->timeOutMsg:Ljava/lang/String;

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/car/model/CarHistoryOrder;->extraInfo:Ljava/lang/String;

    .line 122
    iput v1, p0, Lcom/didi/car/model/CarHistoryOrder;->substatus:I

    .line 143
    iput v1, p0, Lcom/didi/car/model/CarHistoryOrder;->driverNum:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/didi/car/model/CarHistoryOrder;
    .locals 2

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, obj:Lcom/didi/car/model/CarHistoryOrder;
    invoke-super {p0}, Lcom/didi/common/model/BaseObject;->clone()Lcom/didi/common/model/BaseObject;

    move-result-object v0

    .end local v0           #obj:Lcom/didi/car/model/CarHistoryOrder;
    check-cast v0, Lcom/didi/car/model/CarHistoryOrder;

    .line 313
    .restart local v0       #obj:Lcom/didi/car/model/CarHistoryOrder;
    iget v1, p0, Lcom/didi/car/model/CarHistoryOrder;->timeoffset:I

    iput v1, v0, Lcom/didi/car/model/CarHistoryOrder;->timeoffset:I

    .line 314
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/didi/common/model/BaseObject;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/didi/car/model/CarHistoryOrder;->clone()Lcom/didi/car/model/CarHistoryOrder;

    move-result-object v0

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
    .line 18
    invoke-virtual {p0}, Lcom/didi/car/model/CarHistoryOrder;->clone()Lcom/didi/car/model/CarHistoryOrder;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 12
    .parameter "obj"

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 168
    const-string v8, "order"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const-string v8, "order"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 171
    const-string v8, "order"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 172
    .local v4, jObject:Lorg/json/JSONObject;
    const-string v8, "oid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->oid:Ljava/lang/String;

    .line 173
    const-string v8, "fromAddress"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->from:Ljava/lang/String;

    .line 174
    const-string v8, "toAddress"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->to:Ljava/lang/String;

    .line 175
    const-string v8, "flng"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    .line 176
    const-string v8, "flat"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->fromlat:Ljava/lang/String;

    .line 177
    const-string v8, "tlng"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->tolng:Ljava/lang/String;

    .line 178
    const-string v8, "tlat"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->tolat:Ljava/lang/String;

    .line 179
    const-string v8, "tip"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->tip:Ljava/lang/String;

    .line 180
    const-string v8, "status"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->status:I

    .line 181
    const-string v8, "type"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->type:I

    .line 182
    const-string v8, "departureTime"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iput-wide v8, p0, Lcom/didi/car/model/CarHistoryOrder;->departureTime:J

    .line 183
    const-string v8, "createTime"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    iput-wide v8, p0, Lcom/didi/car/model/CarHistoryOrder;->createTime:J

    .line 184
    const-string v8, "isCmt"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->isCmt:I

    .line 185
    const-string v8, "isComplaint"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->cpnstate:I

    .line 186
    const-string v8, "complaintContent"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->cpncontent:Ljava/lang/String;

    .line 187
    const-string v8, "area"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->area:Ljava/lang/String;

    .line 188
    const-string v8, "cityName"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u5e02"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->cityName:Ljava/lang/String;

    .line 189
    const-string v8, "isPay"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->isPay:I

    .line 190
    const-string v8, "isCancel"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->isCancel:I

    .line 191
    const-string v8, "feedback"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->feedback:I

    .line 192
    const-string v8, "closeTips"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->closeTips:Ljava/lang/String;

    .line 193
    const-string v8, "feedbackTitle"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->feedbackTitle:Ljava/lang/String;

    .line 194
    const-string v8, "feedbackTips"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->feedbackTips:Ljava/lang/String;

    .line 195
    const-string v8, "payType"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->payType:I

    .line 196
    const-string v8, "district"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->disTrict:Ljava/lang/String;

    .line 197
    const-string v8, "statusTitle"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->statusTitle:Ljava/lang/String;

    .line 198
    const-string v8, "input"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 199
    const-string v8, "input"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->input:I

    .line 201
    :cond_2
    new-instance v8, Lcom/didi/car/model/CarConsultInfo;

    invoke-direct {v8}, Lcom/didi/car/model/CarConsultInfo;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->carConsultInfo:Lcom/didi/car/model/CarConsultInfo;

    .line 202
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->carConsultInfo:Lcom/didi/car/model/CarConsultInfo;

    invoke-virtual {v8, v4}, Lcom/didi/car/model/CarConsultInfo;->parse(Lorg/json/JSONObject;)V

    .line 204
    const-string v8, "fname"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->fName:Ljava/lang/String;

    .line 205
    const-string v8, "tname"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->tName:Ljava/lang/String;

    .line 207
    const-string v8, "timeout"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/didi/car/model/CarHistoryOrder;->isTimeout:Z

    .line 208
    const-string v8, "timeoutMsg"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->timeOutMsg:Ljava/lang/String;

    .line 209
    const-string v8, "extraInfo"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->extraInfo:Ljava/lang/String;

    .line 210
    const-string v8, "substatus"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->substatus:I

    .line 212
    const-string v8, "lng"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->lng:Ljava/lang/String;

    .line 213
    const-string v8, "lat"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->lat:Ljava/lang/String;

    .line 215
    const-string v8, "c_multi_level"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, cLevel:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 217
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->carModelList:Ljava/util/List;

    .line 218
    const-string v8, "c_multi_level_name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, cLevelName:Ljava/lang/String;
    const-string v8, "icon_multi_car_android"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, multiIconUrl:Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    .line 221
    const-string v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, strArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_2
    array-length v8, v7

    if-ge v3, v8, :cond_5

    .line 223
    new-instance v2, Lcom/didi/car/model/CarModel;

    invoke-direct {v2}, Lcom/didi/car/model/CarModel;-><init>()V

    .line 224
    .local v2, carModel:Lcom/didi/car/model/CarModel;
    aget-object v8, v7, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v2, Lcom/didi/car/model/CarModel;->cLevel:I

    .line 225
    iput-object v1, v2, Lcom/didi/car/model/CarModel;->cTypeName:Ljava/lang/String;

    .line 227
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->carModelList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 207
    .end local v0           #cLevel:Ljava/lang/String;
    .end local v1           #cLevelName:Ljava/lang/String;
    .end local v2           #carModel:Lcom/didi/car/model/CarModel;
    .end local v3           #index:I
    .end local v6           #multiIconUrl:Ljava/lang/String;
    .end local v7           #strArray:[Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 230
    .restart local v0       #cLevel:Ljava/lang/String;
    .restart local v1       #cLevelName:Ljava/lang/String;
    .restart local v6       #multiIconUrl:Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/didi/car/model/CarModel;

    invoke-direct {v2}, Lcom/didi/car/model/CarModel;-><init>()V

    .line 231
    .restart local v2       #carModel:Lcom/didi/car/model/CarModel;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v2, Lcom/didi/car/model/CarModel;->cLevel:I

    .line 232
    iput-object v1, v2, Lcom/didi/car/model/CarModel;->cTypeName:Ljava/lang/String;

    .line 233
    iput-object v6, v2, Lcom/didi/car/model/CarModel;->androidIcon:Ljava/lang/String;

    .line 234
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->carModelList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v1           #cLevelName:Ljava/lang/String;
    .end local v2           #carModel:Lcom/didi/car/model/CarModel;
    .end local v6           #multiIconUrl:Ljava/lang/String;
    :cond_5
    const-string v8, "pricingModel"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->pricingModel:I

    .line 242
    .end local v0           #cLevel:Ljava/lang/String;
    .end local v4           #jObject:Lorg/json/JSONObject;
    :cond_6
    const-string v8, "driver"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 243
    new-instance v8, Lcom/didi/car/model/CarDriver;

    invoke-direct {v8}, Lcom/didi/car/model/CarDriver;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->driver:Lcom/didi/car/model/CarDriver;

    .line 244
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->driver:Lcom/didi/car/model/CarDriver;

    const-string v9, "driver"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/car/model/CarDriver;->parse(Lorg/json/JSONObject;)V

    .line 247
    :cond_7
    const-string v8, "feeDetail"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 248
    new-instance v8, Lcom/didi/car/model/CarFeeDetail;

    invoke-direct {v8}, Lcom/didi/car/model/CarFeeDetail;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 249
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    const-string v9, "feeDetail"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/car/model/FeeDetail;->parse(Lorg/json/JSONObject;)V

    .line 252
    :cond_8
    const-string v8, "feeInfo"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 253
    new-instance v8, Lcom/didi/car/model/CarNewFeeDetail;

    invoke-direct {v8}, Lcom/didi/car/model/CarNewFeeDetail;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 254
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    const-string v9, "feeInfo"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/car/model/FeeDetail;->parse(Lorg/json/JSONObject;)V

    .line 257
    :cond_9
    const-string v8, "comment"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 258
    const-string v8, "comment"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 259
    .local v5, jsonObject:Lorg/json/JSONObject;
    const-string v8, "level"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->evastar:I

    .line 260
    const-string v8, "content"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->evacontent:Ljava/lang/String;

    .line 263
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    :cond_a
    const-string v8, "share"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 264
    new-instance v8, Lcom/didi/car/model/CarPayShare;

    invoke-direct {v8}, Lcom/didi/car/model/CarPayShare;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->share:Lcom/didi/car/model/CarPayShare;

    .line 265
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->share:Lcom/didi/car/model/CarPayShare;

    const-string v9, "share"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/car/model/CarPayShare;->parse(Lorg/json/JSONObject;)V

    .line 268
    :cond_b
    const-string v8, "payResult"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 269
    new-instance v8, Lcom/didi/car/model/CarPayResult;

    invoke-direct {v8}, Lcom/didi/car/model/CarPayResult;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    .line 270
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    const-string v9, "payResult"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/car/model/CarPayResult;->parse(Lorg/json/JSONObject;)V

    .line 273
    :cond_c
    const-string v8, "pushTips"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->pushTips:Ljava/lang/String;

    .line 274
    const-string v8, "driverBubbleInfo"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->bubbleInfo:Ljava/lang/String;

    .line 276
    iget v8, p0, Lcom/didi/car/model/CarHistoryOrder;->status:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_10

    const-string v8, "driver_pos"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 277
    new-instance v8, Lcom/didi/car/model/CarPosition;

    invoke-direct {v8}, Lcom/didi/car/model/CarPosition;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->carPosition:Lcom/didi/car/model/CarPosition;

    .line 278
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->carPosition:Lcom/didi/car/model/CarPosition;

    const-string v9, "driver_pos"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/car/model/CarPosition;->parse(Lorg/json/JSONObject;)V

    .line 285
    :cond_d
    :goto_3
    const-string v8, "RealtimePricing"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 286
    new-instance v8, Lcom/didi/car/model/CarOrderRealtimeCount;

    invoke-direct {v8}, Lcom/didi/car/model/CarOrderRealtimeCount;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

    .line 287
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

    const-string v9, "RealtimePricing"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/car/model/CarOrderRealtimeCount;->parse(Lorg/json/JSONObject;)V

    .line 290
    :cond_e
    const-string v8, "RealtimeFeeInfo"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 291
    new-instance v8, Lcom/didi/car/model/CarOrderNewRealtimeCount;

    invoke-direct {v8}, Lcom/didi/car/model/CarOrderNewRealtimeCount;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->newRealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    .line 292
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->newRealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    const-string v9, "RealtimeFeeInfo"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/didi/car/model/CarOrderNewRealtimeCount;->parse(Lorg/json/JSONObject;)V

    .line 295
    :cond_f
    const-string v8, "driver_num"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->driverNum:I

    .line 298
    const-string v8, "order_pay_status"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 299
    new-instance v8, Lcom/didi/car/model/CarWxAgentPayStatus;

    invoke-direct {v8}, Lcom/didi/car/model/CarWxAgentPayStatus;-><init>()V

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    .line 300
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    const/4 v9, 0x2

    iput v9, v8, Lcom/didi/car/model/CarWxAgentPayStatus;->status:I

    .line 301
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    const-string v9, "order_pay_title"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentTitle:Ljava/lang/String;

    .line 302
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    const-string v9, "order_pay_subject"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentSubject:Ljava/lang/String;

    .line 303
    iget-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    const-string v9, "order_pay_msg"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 279
    :cond_10
    iget v8, p0, Lcom/didi/car/model/CarHistoryOrder;->status:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_d

    .line 280
    const-string v8, "strive_order_driver_num"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->pkDriverNums:I

    .line 281
    const-string v8, "count_down_time"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/didi/car/model/CarHistoryOrder;->pkWaitTime:I

    .line 282
    const-string v8, "push_passenger_msg"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/didi/car/model/CarHistoryOrder;->pkMsg:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarHistoryOrder [oid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromlng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->fromlng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromlat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->fromlat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tolng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->tolng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tolat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->tolat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarHistoryOrder;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarHistoryOrder;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", departureTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/didi/car/model/CarHistoryOrder;->departureTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCmt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarHistoryOrder;->isCmt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->cityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feeDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpnstate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarHistoryOrder;->cpnstate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpncontent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->cpncontent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evastar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarHistoryOrder;->evastar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evacontent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->evacontent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarHistoryOrder;->score1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->driver:Lcom/didi/car/model/CarDriver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", share="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->share:Lcom/didi/car/model/CarPayShare;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarHistoryOrder;->isPay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", closeTips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->closeTips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarHistoryOrder;->payType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",disTrict="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->disTrict:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarHistoryOrder;->errno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarHistoryOrder;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarHistoryOrder;->timeoffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
