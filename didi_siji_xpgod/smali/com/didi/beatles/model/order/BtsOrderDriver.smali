.class public Lcom/didi/beatles/model/order/BtsOrderDriver;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsOrderDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;
    }
.end annotation


# static fields
.field private static final ALERT_MSG_SHOW:I = 0x520d

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public alert_cancel_text:Ljava/lang/String;

.field public alert_go_text:Ljava/lang/String;

.field public alert_msg:Ljava/lang/String;

.field public alterCancleStr:Ljava/lang/String;

.field public alterGoStr:Ljava/lang/String;

.field public alterGoUrl:Ljava/lang/String;

.field public alterMessage:Ljava/lang/String;

.field public auth_status:Ljava/lang/String;

.field public btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

.field public btsRankInfo:Lcom/didi/beatles/model/order/BtsRankInfo;

.field public btsShare:Lcom/didi/beatles/model/order/BtsShare;

.field public call_disabled_msg:Ljava/lang/String;

.field public can_call:Z

.field public can_im:Z

.field public cancelTime:Ljava/lang/String;

.field public car_auth_status:Ljava/lang/String;

.field public commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

.field public extra_info:Ljava/lang/String;

.field public freePayDescription:Ljava/lang/String;

.field public from_address:Ljava/lang/String;

.field public from_lat:D

.field public from_lng:D

.field public from_name:Ljava/lang/String;

.field public gender:I

.field public header_url:Ljava/lang/String;

.field public im_disabled_msg:Ljava/lang/String;

.field public im_remind:Ljava/lang/String;

.field public isFree:Z

.field public is_verified:I

.field public mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

.field public minutesLeft:I

.field public minutesToGo:I

.field public nick_name:Ljava/lang/String;

.field public orderCancelDesc:Ljava/lang/String;

.field public order_id:Ljava/lang/String;

.field public order_terminate_by:Ljava/lang/String;

.field public passenger_id:Ljava/lang/String;

.field public paySuccessDetailUrl:Ljava/lang/String;

.field public paySuccessPrice:Ljava/lang/String;

.field public phone_num:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public priceDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;",
            ">;"
        }
    .end annotation
.end field

.field public route_from_address:Ljava/lang/String;

.field public route_from_lat:D

.field public route_from_lng:D

.field public route_from_name:Ljava/lang/String;

.field public route_id:Ljava/lang/String;

.field public route_strive_lat:D

.field public route_strive_lng:D

.field public route_to_address:Ljava/lang/String;

.field public route_to_lat:D

.field public route_to_lng:D

.field public route_to_name:Ljava/lang/String;

.field public serial:J

.field public session_id:Ljava/lang/String;

.field public setup_time:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public sub_title1:Ljava/lang/String;

.field public sub_title2:Ljava/lang/String;

.field public substatus:Ljava/lang/String;

.field public text_setup_time:Ljava/lang/String;

.field public to_address:Ljava/lang/String;

.field public to_lat:D

.field public to_lng:D

.field public to_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 113
    return-void
.end method

.method private doParseAlterContent(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 300
    const-string v1, "terminate_alert"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 301
    .local v0, alterJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 302
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->alterMessage:Ljava/lang/String;

    .line 303
    const-string v1, "cancel_text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->alterCancleStr:Ljava/lang/String;

    .line 304
    const-string v1, "go_text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->alterGoStr:Ljava/lang/String;

    .line 306
    :cond_0
    return-void
.end method

.method private doParseArriveAlertInfo(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 309
    const-string v1, "alert_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 310
    .local v0, orderJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 311
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->alert_msg:Ljava/lang/String;

    .line 312
    const-string v1, "cancel_text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->alert_cancel_text:Ljava/lang/String;

    .line 313
    const-string v1, "go_text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->alert_go_text:Ljava/lang/String;

    .line 314
    const-string v1, "go_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->alterGoUrl:Ljava/lang/String;

    .line 316
    :cond_0
    return-void
.end method

.method private doParseOrderInfo(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    .line 267
    const-string v3, "order_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 268
    .local v0, orderJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 269
    const-string v3, "order_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    .line 270
    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->status:Ljava/lang/String;

    .line 271
    const-string v3, "substatus"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->substatus:Ljava/lang/String;

    .line 272
    const-string v3, "passenger_id"

    iget-object v4, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->passenger_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->passenger_id:Ljava/lang/String;

    .line 273
    const-string v3, "setup_time"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->setup_time:Ljava/lang/String;

    .line 274
    const-string v3, "text_setup_time"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->text_setup_time:Ljava/lang/String;

    .line 275
    const-string v3, "from_lng"

    invoke-virtual {v0, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->from_lng:D

    .line 276
    const-string v3, "from_lat"

    invoke-virtual {v0, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->from_lat:D

    .line 277
    const-string v3, "from_name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->from_name:Ljava/lang/String;

    .line 278
    const-string v3, "from_address"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->from_address:Ljava/lang/String;

    .line 279
    const-string v3, "to_lng"

    invoke-virtual {v0, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->to_lng:D

    .line 280
    const-string v3, "to_lat"

    invoke-virtual {v0, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->to_lat:D

    .line 281
    const-string v3, "to_name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->to_name:Ljava/lang/String;

    .line 282
    const-string v3, "to_address"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->to_address:Ljava/lang/String;

    .line 283
    const-string v3, "extra_info"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->extra_info:Ljava/lang/String;

    .line 284
    const-string v3, "minutes_to_go"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->minutesToGo:I

    .line 285
    const-string v3, "left_minutes"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->minutesLeft:I

    .line 286
    const-string v3, "serial"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->serial:J

    .line 287
    const-string v3, "cancel_time"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->cancelTime:Ljava/lang/String;

    .line 288
    const-string v3, "order_cancel_desc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->orderCancelDesc:Ljava/lang/String;

    .line 289
    const-string v3, "terminate_by"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_terminate_by:Ljava/lang/String;

    .line 290
    const-string v3, "free"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->isFree:Z

    .line 291
    const-string v1, "do_free_text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->freePayDescription:Ljava/lang/String;

    .line 292
    invoke-direct {p0, v0}, Lcom/didi/beatles/model/order/BtsOrderDriver;->doParseAlterContent(Lorg/json/JSONObject;)V

    .line 293
    invoke-direct {p0, v0}, Lcom/didi/beatles/model/order/BtsOrderDriver;->doParsePriceInfo(Lorg/json/JSONObject;)V

    .line 294
    const-string v1, "pay_success_price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->doParsePaySuccess(Lorg/json/JSONObject;)V

    .line 295
    invoke-direct {p0, v0}, Lcom/didi/beatles/model/order/BtsOrderDriver;->doParsePassangerInfo(Lorg/json/JSONObject;)V

    .line 297
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 290
    goto :goto_0
.end method

.method private doParsePassangerInfo(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 245
    const-string v1, "passenger_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 246
    .local v0, psgJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 247
    const-string v1, "head_img_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->header_url:Ljava/lang/String;

    .line 248
    const-string v1, "nick_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->nick_name:Ljava/lang/String;

    .line 249
    const-string v1, "phone_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->phone_num:Ljava/lang/String;

    .line 250
    const-string v1, "1"

    const-string v2, "can_call"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->can_call:Z

    .line 251
    const-string v1, "call_disabled_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->call_disabled_msg:Ljava/lang/String;

    .line 252
    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->session_id:Ljava/lang/String;

    .line 253
    const-string v1, "1"

    const-string v2, "can_im"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->can_im:Z

    .line 254
    const-string v1, "im_disabled_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->im_disabled_msg:Ljava/lang/String;

    .line 255
    const-string v1, "im_remind"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->im_remind:Ljava/lang/String;

    .line 256
    const-string v1, "passenger_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->passenger_id:Ljava/lang/String;

    .line 257
    const-string v1, "is_verified"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->is_verified:I

    .line 258
    const-string v1, "gender"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->gender:I

    .line 259
    const-string v1, "auth_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->auth_status:Ljava/lang/String;

    .line 260
    const-string v1, "car_auth_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->car_auth_status:Ljava/lang/String;

    .line 261
    const-string v1, "sub_title1"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->sub_title1:Ljava/lang/String;

    .line 262
    const-string v1, "sub_title2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->sub_title2:Ljava/lang/String;

    .line 264
    :cond_0
    return-void
.end method

.method private doParsePaySuccess(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->paySuccessPrice:Ljava/lang/String;

    .line 160
    const-string v0, "detail_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->paySuccessDetailUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private doParsePriceInfo(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "obj"

    .prologue
    .line 207
    const-string v5, "price"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->price:Ljava/lang/String;

    .line 208
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->priceDetails:Ljava/util/ArrayList;

    .line 210
    const-string v5, "price_detail"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 211
    .local v0, arrayPriceInfo:Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 213
    .local v4, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 214
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 215
    .local v3, jsonItem:Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 216
    new-instance v2, Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;

    invoke-direct {v2}, Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;-><init>()V

    .line 217
    .local v2, item:Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;->name:Ljava/lang/String;

    .line 218
    const-string v5, "price"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;->price:Ljava/lang/String;

    .line 219
    iget-object v5, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->priceDetails:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v2           #item:Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    .end local v1           #i:I
    .end local v3           #jsonItem:Lorg/json/JSONObject;
    .end local v4           #len:I
    :cond_1
    return-void
.end method

.method private doParseRouteInfo(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "obj"

    .prologue
    const-wide/16 v3, 0x0

    .line 226
    const-string v1, "route_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 227
    .local v0, routeJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 228
    const-string v1, "route_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_id:Ljava/lang/String;

    .line 229
    const-string v1, "from_lng"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_from_lng:D

    .line 230
    const-string v1, "from_lat"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_from_lat:D

    .line 231
    const-string v1, "from_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_from_name:Ljava/lang/String;

    .line 232
    const-string v1, "from_address"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_from_address:Ljava/lang/String;

    .line 233
    const-string v1, "to_lng"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_to_lng:D

    .line 234
    const-string v1, "to_lat"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_to_lat:D

    .line 235
    const-string v1, "to_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_to_name:Ljava/lang/String;

    .line 236
    const-string v1, "to_address"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_to_address:Ljava/lang/String;

    .line 238
    const-string v1, "strive_lat"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_strive_lat:D

    .line 239
    const-string v1, "strive_lng"

    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->route_strive_lng:D

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public doParseComment(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 164
    const-string v1, "comment_detail"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 165
    .local v0, commentJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 166
    new-instance v1, Lcom/didi/beatles/model/order/BtsCommentDetail;

    invoke-direct {v1, v0}, Lcom/didi/beatles/model/order/BtsCommentDetail;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    .line 168
    :cond_0
    return-void
.end method

.method public doParseUserRates(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "obj"

    .prologue
    .line 171
    const-string v4, "user_rates"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 172
    .local v0, array:Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 184
    :cond_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 175
    .local v2, len:I
    new-array v4, v2, [Lcom/didi/beatles/model/order/BtsUserRate;

    iput-object v4, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    .line 176
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 178
    :try_start_0
    new-instance v3, Lcom/didi/beatles/model/order/BtsUserRate;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/didi/beatles/model/order/BtsUserRate;-><init>(Ljava/lang/String;)V

    .line 179
    .local v3, userRate:Lcom/didi/beatles/model/order/BtsUserRate;
    iget-object v4, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    aput-object v3, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v3           #userRate:Lcom/didi/beatles/model/order/BtsUserRate;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 121
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/didi/beatles/model/order/BtsOrderDriver;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 122
    check-cast v0, Lcom/didi/beatles/model/order/BtsOrderDriver;

    .line 123
    .local v0, other:Lcom/didi/beatles/model/order/BtsOrderDriver;
    iget-object v2, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    .end local v0           #other:Lcom/didi/beatles/model/order/BtsOrderDriver;
    :cond_0
    :goto_0
    return v1

    .line 127
    .restart local v0       #other:Lcom/didi/beatles/model/order/BtsOrderDriver;
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    iget-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->order_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isAlertMsgShow()Z
    .locals 2

    .prologue
    .line 319
    iget v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->errno:I

    const/16 v1, 0x520d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommentDriver()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsCommentDetail;->toDriverComment:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsCommentDetail;->toDriverComment:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommentPassenger()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsCommentDetail;->toPassengerComment:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsCommentDetail;->toPassengerComment:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->doParseOrderInfo(Lorg/json/JSONObject;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->doParsePassangerInfo(Lorg/json/JSONObject;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->doParseRouteInfo(Lorg/json/JSONObject;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->doParseComment(Lorg/json/JSONObject;)V

    .line 143
    invoke-direct {p0, p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->doParseArriveAlertInfo(Lorg/json/JSONObject;)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/didi/beatles/model/order/BtsOrderDriver;->doParseUserRates(Lorg/json/JSONObject;)V

    .line 145
    new-instance v0, Lcom/didi/beatles/model/order/BtsShare;

    const-string v1, "share"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/beatles/model/order/BtsShare;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    .line 146
    new-instance v0, Lcom/didi/beatles/model/order/BtsHongBao;

    const-string v1, "hongbao"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/beatles/model/order/BtsHongBao;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    .line 147
    new-instance v0, Lcom/didi/beatles/model/order/BtsRankInfo;

    const-string v1, "rank_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/beatles/model/order/BtsRankInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriver;->btsRankInfo:Lcom/didi/beatles/model/order/BtsRankInfo;

    .line 148
    return-void
.end method
