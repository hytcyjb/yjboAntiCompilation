.class public Lcom/didi/beatles/model/order/BtsOrderDriverPending;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsOrderDriverPending.java"


# static fields
.field private static final serialVersionUID:J = 0x14d16bf45b92607eL


# instance fields
.field public auth_status:Ljava/lang/String;

.field public call_disabled_msg:Ljava/lang/String;

.field public can_call:Z

.field public can_im:Z

.field public car_auth_status:Ljava/lang/String;

.field public from_name:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public head_img_url:Ljava/lang/String;

.field public im_disabled_msg:Ljava/lang/String;

.field public isHasMessage:Z

.field public message:Ljava/lang/String;

.field public nick_name:Ljava/lang/String;

.field public order_id:Ljava/lang/String;

.field public passenger_id:Ljava/lang/String;

.field public phone_num:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public route_id:Ljava/lang/String;

.field public session_id:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public sub_status:Ljava/lang/String;

.field public sub_title:Ljava/lang/String;

.field public text_setup_time:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public to_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->isHasMessage:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 82
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;

    .line 84
    .local v0, other:Lcom/didi/beatles/model/order/BtsOrderDriverPending;
    iget-object v2, v0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->order_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    .end local v0           #other:Lcom/didi/beatles/model/order/BtsOrderDriverPending;
    :cond_0
    :goto_0
    return v1

    .line 88
    .restart local v0       #other:Lcom/didi/beatles/model/order/BtsOrderDriverPending;
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->order_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    iget-object v1, v0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->order_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->order_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 55
    const-string v0, "order_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->order_id:Ljava/lang/String;

    .line 56
    const-string v0, "route_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->route_id:Ljava/lang/String;

    .line 57
    const-string v0, "passenger_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->passenger_id:Ljava/lang/String;

    .line 58
    const-string v0, "nick_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->nick_name:Ljava/lang/String;

    .line 59
    const-string v0, "head_img_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->head_img_url:Ljava/lang/String;

    .line 60
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->gender:Ljava/lang/String;

    .line 61
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->title:Ljava/lang/String;

    .line 62
    const-string v0, "sub_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->sub_title:Ljava/lang/String;

    .line 63
    const-string v0, "text_setup_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->text_setup_time:Ljava/lang/String;

    .line 64
    const-string v0, "from_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->from_name:Ljava/lang/String;

    .line 65
    const-string v0, "to_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->to_name:Ljava/lang/String;

    .line 66
    const-string v0, "price"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->price:Ljava/lang/String;

    .line 67
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->message:Ljava/lang/String;

    .line 68
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->status:Ljava/lang/String;

    .line 69
    const-string v0, "sub_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->sub_status:Ljava/lang/String;

    .line 70
    const-string v0, "auth_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->auth_status:Ljava/lang/String;

    .line 71
    const-string v0, "car_auth_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->car_auth_status:Ljava/lang/String;

    .line 72
    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->session_id:Ljava/lang/String;

    .line 73
    const-string v0, "1"

    const-string v1, "can_im"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->can_im:Z

    .line 74
    const-string v0, "im_disabled_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->im_disabled_msg:Ljava/lang/String;

    .line 75
    const-string v0, "1"

    const-string v1, "can_call"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->can_call:Z

    .line 76
    const-string v0, "call_disabled_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->call_disabled_msg:Ljava/lang/String;

    .line 77
    const-string v0, "phone_num"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/order/BtsOrderDriverPending;->phone_num:Ljava/lang/String;

    .line 78
    return-void
.end method
