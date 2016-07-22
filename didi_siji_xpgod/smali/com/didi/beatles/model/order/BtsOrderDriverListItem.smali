.class public Lcom/didi/beatles/model/order/BtsOrderDriverListItem;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsOrderDriverListItem.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public auth_status:Ljava/lang/String;

.field public car_auth_status:Ljava/lang/String;

.field public create_time:Ljava/lang/String;

.field public extra_info:Ljava/lang/String;

.field public from_address:Ljava/lang/String;

.field public from_lat:Ljava/lang/String;

.field public from_lng:Ljava/lang/String;

.field public from_name:Ljava/lang/String;

.field public navi_distance:Ljava/lang/String;

.field public order_id:Ljava/lang/String;

.field public passenger_gender:Ljava/lang/String;

.field public passenger_head_img_url:Ljava/lang/String;

.field public passenger_id:Ljava/lang/String;

.field public passenger_nick_name:Ljava/lang/String;

.field public passenger_tag_num:Ljava/lang/String;

.field public passenger_trip_num:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public route_id:Ljava/lang/String;

.field public setup_time:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public substatus:Ljava/lang/String;

.field public text_setup_time:Ljava/lang/String;

.field public to_address:Ljava/lang/String;

.field public to_lat:Ljava/lang/String;

.field public to_lng:Ljava/lang/String;

.field public to_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 79
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;

    .line 81
    .local v0, other:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;
    iget-object v2, v0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    .end local v0           #other:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;
    :cond_0
    :goto_0
    return v1

    .line 85
    .restart local v0       #other:Lcom/didi/beatles/model/order/BtsOrderDriverListItem;
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iget-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 44
    const-string v1, "status"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->status:Ljava/lang/String;

    .line 45
    const-string v1, "substatus"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->substatus:Ljava/lang/String;

    .line 46
    const-string v1, "order_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->order_id:Ljava/lang/String;

    .line 47
    const-string v1, "route_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->route_id:Ljava/lang/String;

    .line 48
    const-string v1, "from_lng"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->from_lng:Ljava/lang/String;

    .line 49
    const-string v1, "from_lat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->from_lat:Ljava/lang/String;

    .line 50
    const-string v1, "from_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->from_name:Ljava/lang/String;

    .line 51
    const-string v1, "from_address"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->from_address:Ljava/lang/String;

    .line 52
    const-string v1, "to_lng"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->to_lng:Ljava/lang/String;

    .line 53
    const-string v1, "to_lat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->to_lat:Ljava/lang/String;

    .line 54
    const-string v1, "to_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->to_name:Ljava/lang/String;

    .line 55
    const-string v1, "to_address"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->to_address:Ljava/lang/String;

    .line 56
    const-string v1, "create_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->create_time:Ljava/lang/String;

    .line 57
    const-string v1, "setup_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->setup_time:Ljava/lang/String;

    .line 58
    const-string v1, "text_setup_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->text_setup_time:Ljava/lang/String;

    .line 59
    const-string v1, "navi_distance"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->navi_distance:Ljava/lang/String;

    .line 60
    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->price:Ljava/lang/String;

    .line 61
    const-string v1, "extra_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->extra_info:Ljava/lang/String;

    .line 63
    const-string v1, "passenger_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    .local v0, psgObj:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 65
    const-string v1, "passenger_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_id:Ljava/lang/String;

    .line 66
    const-string v1, "head_img_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_head_img_url:Ljava/lang/String;

    .line 67
    const-string v1, "nick_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_nick_name:Ljava/lang/String;

    .line 68
    const-string v1, "gender"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_gender:Ljava/lang/String;

    .line 69
    const-string v1, "trip_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_trip_num:Ljava/lang/String;

    .line 70
    const-string v1, "tag_num"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->passenger_tag_num:Ljava/lang/String;

    .line 72
    const-string v1, "auth_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->auth_status:Ljava/lang/String;

    .line 73
    const-string v1, "car_auth_status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverListItem;->car_auth_status:Ljava/lang/String;

    .line 75
    :cond_0
    return-void
.end method
