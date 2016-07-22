.class public Lcom/didi/beatles/model/order/BtsOrderPassengerPending;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsOrderPassengerPending.java"


# static fields
.field private static final serialVersionUID:J = 0x14d16bf45b92607eL


# instance fields
.field public auth_status:Ljava/lang/String;

.field public call_disabled_msg:Ljava/lang/String;

.field public can_call:Z

.field public can_im:Z

.field public car_auth_status:Ljava/lang/String;

.field public driver_id:Ljava/lang/String;

.field public from_address:Ljava/lang/String;

.field public from_city_id:Ljava/lang/String;

.field public from_lat:Ljava/lang/String;

.field public from_lng:Ljava/lang/String;

.field public from_name:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public head_img_url:Ljava/lang/String;

.field public im_disabled_msg:Ljava/lang/String;

.field public isHasMessage:Z

.field public message:Ljava/lang/String;

.field public nick_name:Ljava/lang/String;

.field public order_id:Ljava/lang/String;

.field public phone_num:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public session_id:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public sub_status:Ljava/lang/String;

.field public sub_title:Ljava/lang/String;

.field public text_setup_time:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public to_address:Ljava/lang/String;

.field public to_city_id:Ljava/lang/String;

.field public to_lat:Ljava/lang/String;

.field public to_lng:Ljava/lang/String;

.field public to_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->isHasMessage:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 105
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 106
    check-cast v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;

    .line 107
    .local v0, other:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;
    iget-object v2, v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    .end local v0           #other:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;
    :cond_0
    :goto_0
    return v1

    .line 111
    .restart local v0       #other:Lcom/didi/beatles/model/order/BtsOrderPassengerPending;
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    iget-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 68
    const-string v0, "order_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    .line 69
    const-string v0, "driver_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->driver_id:Ljava/lang/String;

    .line 70
    const-string v0, "nick_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->nick_name:Ljava/lang/String;

    .line 71
    const-string v0, "head_img_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->head_img_url:Ljava/lang/String;

    .line 72
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->gender:Ljava/lang/String;

    .line 73
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->title:Ljava/lang/String;

    .line 74
    const-string v0, "sub_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->sub_title:Ljava/lang/String;

    .line 75
    const-string v0, "text_setup_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->text_setup_time:Ljava/lang/String;

    .line 76
    const-string v0, "from_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->from_name:Ljava/lang/String;

    .line 77
    const-string v0, "to_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->to_name:Ljava/lang/String;

    .line 78
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->price:Ljava/lang/String;

    .line 79
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->message:Ljava/lang/String;

    .line 80
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->status:Ljava/lang/String;

    .line 81
    const-string v0, "sub_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->sub_status:Ljava/lang/String;

    .line 82
    const-string v0, "auth_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->auth_status:Ljava/lang/String;

    .line 83
    const-string v0, "car_auth_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->car_auth_status:Ljava/lang/String;

    .line 84
    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->session_id:Ljava/lang/String;

    .line 85
    const-string v0, "from_lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->from_lat:Ljava/lang/String;

    .line 86
    const-string v0, "from_lng"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->from_lng:Ljava/lang/String;

    .line 87
    const-string v0, "from_address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->from_address:Ljava/lang/String;

    .line 88
    const-string v0, "from_area_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->from_city_id:Ljava/lang/String;

    .line 89
    const-string v0, "to_lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->to_lat:Ljava/lang/String;

    .line 90
    const-string v0, "to_lng"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->to_lng:Ljava/lang/String;

    .line 91
    const-string v0, "to_address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->to_address:Ljava/lang/String;

    .line 92
    const-string v0, "to_area_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->to_city_id:Ljava/lang/String;

    .line 93
    const-string v0, "1"

    const-string v1, "can_im"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->can_im:Z

    .line 94
    const-string v0, "im_disabled_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->im_disabled_msg:Ljava/lang/String;

    .line 95
    const-string v0, "1"

    const-string v1, "can_call"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->can_call:Z

    .line 96
    const-string v0, "call_disabled_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->call_disabled_msg:Ljava/lang/String;

    .line 97
    const-string v0, "phone_num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->phone_num:Ljava/lang/String;

    .line 98
    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->sub_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderPassengerPending;->order_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/beatles/database/BtsOrderWaitingTable;->deleteItem(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    :cond_1
    return-void
.end method
