.class public Lcom/didi/beatles/model/order/BtsOrderPassenger;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsOrderPassenger.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public auth_status:Ljava/lang/String;

.field public btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

.field public btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

.field public btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

.field public btsShare:Lcom/didi/beatles/model/order/BtsShare;

.field public call_disabled_msg:Ljava/lang/String;

.field public can_call:Z

.field public can_im:Z

.field public cancel_time:Ljava/lang/String;

.field public car_auth_status:Ljava/lang/String;

.field public car_brand:Ljava/lang/String;

.field public car_color:Ljava/lang/String;

.field public car_num:Ljava/lang/String;

.field public car_type:Ljava/lang/String;

.field public commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

.field public create_time:Ljava/lang/String;

.field public driver_id:Ljava/lang/String;

.field public extra_info:Ljava/lang/String;

.field public from_address:Ljava/lang/String;

.field public from_area_id:Ljava/lang/String;

.field public from_lat:D

.field public from_lng:D

.field public from_name:Ljava/lang/String;

.field public gender:I

.field public head_img_url:Ljava/lang/String;

.field public im_disabled_msg:Ljava/lang/String;

.field public im_remind:Ljava/lang/String;

.field public isFree:Z

.field public is_verified:I

.field public left_minutes:I

.field public mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

.field public nick_name:Ljava/lang/String;

.field public offset_time:I

.field public order_cancel_desc:Ljava/lang/String;

.field public order_id:Ljava/lang/String;

.field public order_terminate_by:Ljava/lang/String;

.field public passenger_id:Ljava/lang/String;

.field public paySuccessDetailUrl:Ljava/lang/String;

.field public paySuccessPrice:Ljava/lang/String;

.field public phone_num:Ljava/lang/String;

.field public serial:J

.field public session_id:Ljava/lang/String;

.field public setup_time:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public strive_time:Ljava/lang/String;

.field public sub_title1:Ljava/lang/String;

.field public sub_title2:Ljava/lang/String;

.field public substatus:Ljava/lang/String;

.field public text_create_time:Ljava/lang/String;

.field public text_setup_time:Ljava/lang/String;

.field public to_address:Ljava/lang/String;

.field public to_area_id:Ljava/lang/String;

.field public to_driver_num:I

.field public to_lat:D

.field public to_lng:D

.field public to_name:Ljava/lang/String;

.field public wait_op_string:Ljava/lang/String;

.field public wait_op_string2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    return-void
.end method

.method private doParseOrderCheck(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 149
    const-string v1, "order_check_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 150
    .local v0, orderCheckJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Lcom/didi/beatles/model/order/BtsOrderCheck;

    invoke-direct {v1, v0}, Lcom/didi/beatles/model/order/BtsOrderCheck;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    .line 153
    :cond_0
    return-void
.end method

.method private doParsePaySuccess(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->paySuccessPrice:Ljava/lang/String;

    .line 134
    const-string v0, "detail_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->paySuccessDetailUrl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public doParseComment(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 142
    const-string v1, "comment_detail"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 143
    .local v0, commentJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 144
    new-instance v1, Lcom/didi/beatles/model/order/BtsCommentDetail;

    invoke-direct {v1, v0}, Lcom/didi/beatles/model/order/BtsCommentDetail;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    .line 146
    :cond_0
    return-void
.end method

.method public doParseDriverInfo(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 176
    const-string v1, "driver_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 177
    .local v0, driverJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 178
    const-string v1, "driver_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->driver_id:Ljava/lang/String;

    .line 179
    const-string v1, "head_img_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->head_img_url:Ljava/lang/String;

    .line 180
    const-string v1, "nick_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->nick_name:Ljava/lang/String;

    .line 181
    const-string v1, "car_brand"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->car_brand:Ljava/lang/String;

    .line 182
    const-string v1, "car_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->car_type:Ljava/lang/String;

    .line 183
    const-string v1, "car_color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->car_color:Ljava/lang/String;

    .line 184
    const-string v1, "car_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->car_num:Ljava/lang/String;

    .line 185
    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->session_id:Ljava/lang/String;

    .line 186
    const-string v1, "1"

    const-string v2, "can_im"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->can_im:Z

    .line 187
    const-string v1, "im_disabled_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->im_disabled_msg:Ljava/lang/String;

    .line 188
    const-string v1, "im_remind"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->im_remind:Ljava/lang/String;

    .line 189
    const-string v1, "phone_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->phone_num:Ljava/lang/String;

    .line 190
    const-string v1, "1"

    const-string v2, "can_call"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->can_call:Z

    .line 191
    const-string v1, "call_disabled_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->call_disabled_msg:Ljava/lang/String;

    .line 192
    const-string v1, "is_verified"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->is_verified:I

    .line 193
    const-string v1, "gender"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->gender:I

    .line 194
    const-string v1, "auth_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->auth_status:Ljava/lang/String;

    .line 195
    const-string v1, "car_auth_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->car_auth_status:Ljava/lang/String;

    .line 196
    const-string v1, "sub_title1"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->sub_title1:Ljava/lang/String;

    .line 197
    const-string v1, "sub_title2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->sub_title2:Ljava/lang/String;

    .line 199
    :cond_0
    return-void
.end method

.method public doParseOrderInfo(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    .line 202
    const-string v3, "order_info"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 203
    .local v0, orderJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 204
    const-string v3, "order_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_id:Ljava/lang/String;

    .line 205
    const-string v3, "passenger_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->passenger_id:Ljava/lang/String;

    .line 206
    const-string v3, "status"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->status:Ljava/lang/String;

    .line 207
    const-string v3, "substatus"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->substatus:Ljava/lang/String;

    .line 208
    const-string v3, "setup_time"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->setup_time:Ljava/lang/String;

    .line 209
    const-string v3, "text_setup_time"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->text_setup_time:Ljava/lang/String;

    .line 210
    const-string v3, "from_lng"

    invoke-virtual {v0, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_lng:D

    .line 211
    const-string v3, "from_lat"

    invoke-virtual {v0, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_lat:D

    .line 212
    const-string v3, "from_name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_name:Ljava/lang/String;

    .line 213
    const-string v3, "from_address"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_address:Ljava/lang/String;

    .line 214
    const-string v3, "from_area_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->from_area_id:Ljava/lang/String;

    .line 215
    const-string v3, "to_lng"

    invoke-virtual {v0, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_lng:D

    .line 216
    const-string v3, "to_lat"

    invoke-virtual {v0, v3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_lat:D

    .line 217
    const-string v3, "to_name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_name:Ljava/lang/String;

    .line 218
    const-string v3, "to_address"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_address:Ljava/lang/String;

    .line 219
    const-string v3, "to_area_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_area_id:Ljava/lang/String;

    .line 220
    const-string v3, "create_time"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->create_time:Ljava/lang/String;

    .line 221
    const-string v3, "text_create_time"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->text_create_time:Ljava/lang/String;

    .line 222
    const-string v3, "extra_info"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->extra_info:Ljava/lang/String;

    .line 223
    const-string v3, "strive_time"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->strive_time:Ljava/lang/String;

    .line 224
    const-string v3, "cancel_time"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->cancel_time:Ljava/lang/String;

    .line 225
    const-string v3, "to_driver_num"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->to_driver_num:I

    .line 226
    const-string v3, "left_minutes"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->left_minutes:I

    .line 227
    const-string v3, "offset_time"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->offset_time:I

    .line 228
    const-string v3, "wait_op_string"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->wait_op_string:Ljava/lang/String;

    .line 229
    const-string v3, "wait_op_string2"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->wait_op_string2:Ljava/lang/String;

    .line 230
    const-string v3, "order_cancel_desc"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_cancel_desc:Ljava/lang/String;

    .line 231
    const-string v3, "terminate_by"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->order_terminate_by:Ljava/lang/String;

    .line 232
    const-string v3, "serial"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->serial:J

    .line 233
    const-string v3, "free"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->isFree:Z

    .line 234
    const-string v1, "pay_success_price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->doParsePaySuccess(Lorg/json/JSONObject;)V

    .line 235
    invoke-virtual {p0, v0}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->doParsePrice(Lorg/json/JSONObject;)V

    .line 237
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 233
    goto :goto_0
.end method

.method public doParsePrice(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 138
    new-instance v0, Lcom/didi/beatles/model/order/BtsPrice;

    const-string v1, "price_detail"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/beatles/model/order/BtsPrice;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsPrice:Lcom/didi/beatles/model/order/BtsPrice;

    .line 139
    return-void
.end method

.method public doParseUserRates(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "obj"

    .prologue
    .line 115
    const-string v4, "user_rates"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 116
    .local v0, array:Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 128
    :cond_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 119
    .local v2, len:I
    new-array v4, v2, [Lcom/didi/beatles/model/order/BtsUserRate;

    iput-object v4, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    .line 120
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 122
    :try_start_0
    new-instance v3, Lcom/didi/beatles/model/order/BtsUserRate;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/didi/beatles/model/order/BtsUserRate;-><init>(Ljava/lang/String;)V

    .line 123
    .local v3, userRate:Lcom/didi/beatles/model/order/BtsUserRate;
    iget-object v4, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->mUserRates:[Lcom/didi/beatles/model/order/BtsUserRate;

    aput-object v3, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v3           #userRate:Lcom/didi/beatles/model/order/BtsUserRate;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public isCommentDriver()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsCommentDetail;->toDriverComment:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

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
    .line 162
    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

    iget-object v0, v0, Lcom/didi/beatles/model/order/BtsCommentDetail;->toPassengerComment:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->commentDetail:Lcom/didi/beatles/model/order/BtsCommentDetail;

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
    .line 105
    invoke-virtual {p0, p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->doParseOrderInfo(Lorg/json/JSONObject;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->doParseDriverInfo(Lorg/json/JSONObject;)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->doParseComment(Lorg/json/JSONObject;)V

    .line 108
    new-instance v0, Lcom/didi/beatles/model/order/BtsShare;

    const-string v1, "share"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/beatles/model/order/BtsShare;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsShare:Lcom/didi/beatles/model/order/BtsShare;

    .line 109
    new-instance v0, Lcom/didi/beatles/model/order/BtsHongBao;

    const-string v1, "hongbao"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/beatles/model/order/BtsHongBao;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassenger;->btsHongBao:Lcom/didi/beatles/model/order/BtsHongBao;

    .line 110
    invoke-virtual {p0, p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->doParseUserRates(Lorg/json/JSONObject;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/didi/beatles/model/order/BtsOrderPassenger;->doParseOrderCheck(Lorg/json/JSONObject;)V

    .line 112
    return-void
.end method
