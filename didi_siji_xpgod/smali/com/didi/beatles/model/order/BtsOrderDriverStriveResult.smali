.class public Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsOrderDriverStriveResult.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public alterCancleStr:Ljava/lang/String;

.field public alterGoStr:Ljava/lang/String;

.field public alterGoUrl:Ljava/lang/String;

.field public alterMessage:Ljava/lang/String;

.field public btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

.field public call_disabled_msg:Ljava/lang/String;

.field public can_call:Z

.field public can_im:Z

.field public im_disabled_msg:Ljava/lang/String;

.field public minutes_to_go:I

.field public order_id:Ljava/lang/String;

.field public passenger_id:Ljava/lang/String;

.field public phone_num:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public price_details:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;",
            ">;"
        }
    .end annotation
.end field

.field public session_id:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public substatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    return-void
.end method

.method private doParseAlterContent(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "jsonObject"

    .prologue
    .line 84
    const-string v1, "terminate_alert"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 85
    .local v0, alterJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 86
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->alterMessage:Ljava/lang/String;

    .line 87
    const-string v1, "cancel_text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->alterCancleStr:Ljava/lang/String;

    .line 88
    const-string v1, "go_text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->alterGoStr:Ljava/lang/String;

    .line 90
    :cond_0
    return-void
.end method

.method private doParseOrderCheck(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 94
    const-string v1, "order_check_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    .local v0, orderCheckJsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 96
    new-instance v1, Lcom/didi/beatles/model/order/BtsOrderCheck;

    invoke-direct {v1, v0}, Lcom/didi/beatles/model/order/BtsOrderCheck;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->btsOrderCheck:Lcom/didi/beatles/model/order/BtsOrderCheck;

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "obj"

    .prologue
    .line 44
    const-string v6, "order_info"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 45
    .local v3, order_info:Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    .line 47
    const-string v6, "order_id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->order_id:Ljava/lang/String;

    .line 48
    const-string v6, "status"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->status:Ljava/lang/String;

    .line 49
    const-string v6, "substatus"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->substatus:Ljava/lang/String;

    .line 50
    const-string v6, "price"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->price:Ljava/lang/String;

    .line 51
    const-string v6, "minutes_to_go"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->minutes_to_go:I

    .line 54
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->price_details:Ljava/util/ArrayList;

    .line 55
    const-string v6, "price_detail"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 56
    .local v4, priceDetailArray:Lorg/json/JSONArray;
    if-eqz v4, :cond_1

    .line 57
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 58
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 59
    .local v2, jsonItem:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 60
    new-instance v1, Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;

    invoke-direct {v1}, Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;-><init>()V

    .line 61
    .local v1, item:Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;
    const-string v6, "name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;->name:Ljava/lang/String;

    .line 62
    const-string v6, "price"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;->price:Ljava/lang/String;

    .line 63
    iget-object v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->price_details:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v1           #item:Lcom/didi/beatles/model/order/BtsOrderDriver$PriceDetail;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0           #i:I
    .end local v2           #jsonItem:Lorg/json/JSONObject;
    :cond_1
    const-string v6, "passenger_info"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 70
    .local v5, psgObj:Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 71
    const-string v6, "passenger_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->passenger_id:Ljava/lang/String;

    .line 72
    const-string v6, "phone_num"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->phone_num:Ljava/lang/String;

    .line 73
    const-string v6, "session_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->session_id:Ljava/lang/String;

    .line 74
    const-string v6, "1"

    const-string v7, "can_call"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->can_call:Z

    .line 75
    const-string v6, "1"

    const-string v7, "can_im"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->can_im:Z

    .line 76
    const-string v6, "im_disabled_msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->im_disabled_msg:Ljava/lang/String;

    .line 77
    const-string v6, "call_disabled_msg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->call_disabled_msg:Ljava/lang/String;

    .line 79
    :cond_2
    invoke-direct {p0, v3}, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->doParseAlterContent(Lorg/json/JSONObject;)V

    .line 81
    .end local v4           #priceDetailArray:Lorg/json/JSONArray;
    .end local v5           #psgObj:Lorg/json/JSONObject;
    :cond_3
    invoke-direct {p0, p1}, Lcom/didi/beatles/model/order/BtsOrderDriverStriveResult;->doParseOrderCheck(Lorg/json/JSONObject;)V

    .line 82
    return-void
.end method
