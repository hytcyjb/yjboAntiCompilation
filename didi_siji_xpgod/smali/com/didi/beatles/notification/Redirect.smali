.class public Lcom/didi/beatles/notification/Redirect;
.super Ljava/lang/Object;
.source "Redirect.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/notification/Redirect$1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x53293e3ee83842b9L


# instance fields
.field public content:Ljava/lang/String;

.field public extraJson:Ljava/lang/String;

.field public isShowDialog:Z

.field public messageType:I

.field public msgId:Ljava/lang/String;

.field public oid:Ljava/lang/String;

.field public orderListType:I

.field public orderStatus:Lcom/didi/beatles/model/order/BtsOrderStatus;

.field public pushType:I

.field public roadId:Ljava/lang/String;

.field public role:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/didi/beatles/push/model/BtsPushOrderStatus;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/notification/Redirect;->isShowDialog:Z

    .line 46
    const-string v0, "0"

    iput-object v0, p0, Lcom/didi/beatles/notification/Redirect;->msgId:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/beatles/notification/Redirect;->pushType:I

    .line 66
    const-string v0, "\u6ef4\u6ef4\u6253\u8f66"

    iput-object v0, p0, Lcom/didi/beatles/notification/Redirect;->title:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/notification/Redirect;->content:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->oid:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/notification/Redirect;->oid:Ljava/lang/String;

    .line 69
    iget v0, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->orderListType:I

    iput v0, p0, Lcom/didi/beatles/notification/Redirect;->orderListType:I

    .line 70
    iget v0, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->role:I

    iput v0, p0, Lcom/didi/beatles/notification/Redirect;->role:I

    .line 71
    iget v0, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->status:I

    iget v1, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->subStatus:I

    invoke-static {v0, v1}, Lcom/didi/beatles/model/order/BtsOrderStatus;->mapToTypeByInt(II)Lcom/didi/beatles/model/order/BtsOrderStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/notification/Redirect;->orderStatus:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 73
    iget-object v0, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/notification/Redirect;->content:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Lcom/didi/beatles/push/model/BtsPushOrderStatus;->routeId:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/beatles/notification/Redirect;->roadId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "jsonObject"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/didi/beatles/notification/Redirect;->isShowDialog:Z

    .line 46
    const-string v2, "0"

    iput-object v2, p0, Lcom/didi/beatles/notification/Redirect;->msgId:Ljava/lang/String;

    .line 47
    const/4 v2, 0x1

    iput v2, p0, Lcom/didi/beatles/notification/Redirect;->pushType:I

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const-string v2, "\u6ef4\u6ef4\u6253\u8f66"

    iput-object v2, p0, Lcom/didi/beatles/notification/Redirect;->title:Ljava/lang/String;

    .line 52
    const-string v2, "tx"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/notification/Redirect;->content:Ljava/lang/String;

    .line 53
    const-string v2, "oid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/notification/Redirect;->oid:Ljava/lang/String;

    .line 54
    const-string v2, "rid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/notification/Redirect;->roadId:Ljava/lang/String;

    .line 55
    const-string v2, "st"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, status:I
    const-string v2, "sbt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, subStatus:I
    invoke-static {v0, v1}, Lcom/didi/beatles/model/order/BtsOrderStatus;->mapToTypeByInt(II)Lcom/didi/beatles/model/order/BtsOrderStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/notification/Redirect;->orderStatus:Lcom/didi/beatles/model/order/BtsOrderStatus;

    .line 58
    const-string v2, "ty"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/notification/Redirect;->messageType:I

    .line 59
    const-string v2, "rl"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/beatles/notification/Redirect;->role:I

    .line 60
    const-string v2, "msgid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/notification/Redirect;->msgId:Ljava/lang/String;

    .line 63
    .end local v0           #status:I
    .end local v1           #subStatus:I
    :cond_0
    return-void
.end method

.method public static buildRedirect(Ljava/lang/Object;)Lcom/didi/beatles/notification/Redirect;
    .locals 2
    .parameter "object"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, redirect:Lcom/didi/beatles/notification/Redirect;
    if-eqz p0, :cond_0

    .line 80
    instance-of v1, p0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;

    if-eqz v1, :cond_1

    .line 81
    new-instance v0, Lcom/didi/beatles/notification/Redirect;

    .end local v0           #redirect:Lcom/didi/beatles/notification/Redirect;
    check-cast p0, Lcom/didi/beatles/push/model/BtsPushOrderStatus;

    .end local p0
    invoke-direct {v0, p0}, Lcom/didi/beatles/notification/Redirect;-><init>(Lcom/didi/beatles/push/model/BtsPushOrderStatus;)V

    .line 86
    .restart local v0       #redirect:Lcom/didi/beatles/notification/Redirect;
    :cond_0
    :goto_0
    return-object v0

    .line 82
    .restart local p0
    :cond_1
    instance-of v1, p0, Lcom/didi/beatles/notification/Redirect;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 83
    check-cast v0, Lcom/didi/beatles/notification/Redirect;

    goto :goto_0
.end method

.method private getOrderStatusOfDriverHandler(Lcom/didi/beatles/model/order/BtsOrderStatus;)Ljava/lang/Class;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/model/order/BtsOrderStatus;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, handlerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/didi/beatles/notification/Redirect$1;->$SwitchMap$com$didi$beatles$model$order$BtsOrderStatus:[I

    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 182
    const-class v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    .line 186
    :goto_0
    return-object v0

    .line 154
    :pswitch_0
    const-string v1, "pbdxwporder01_sw"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 155
    const-class v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    .line 156
    goto :goto_0

    .line 158
    :pswitch_1
    const-class v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    .line 159
    goto :goto_0

    .line 161
    :pswitch_2
    const-class v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    .line 162
    goto :goto_0

    .line 164
    :pswitch_3
    const-class v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    .line 165
    iput-boolean v3, p0, Lcom/didi/beatles/notification/Redirect;->isShowDialog:Z

    goto :goto_0

    .line 168
    :pswitch_4
    const-class v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    .line 169
    iput-boolean v3, p0, Lcom/didi/beatles/notification/Redirect;->isShowDialog:Z

    goto :goto_0

    .line 172
    :pswitch_5
    const-class v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    .line 173
    iput-boolean v3, p0, Lcom/didi/beatles/notification/Redirect;->isShowDialog:Z

    goto :goto_0

    .line 176
    :pswitch_6
    const-class v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    .line 177
    goto :goto_0

    .line 179
    :pswitch_7
    const-class v0, Lcom/didi/beatles/ui/activity/driver/BtsDriverHoldOrderActivity;

    .line 180
    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getOrderStatusOfPassangerHandler(Lcom/didi/beatles/model/order/BtsOrderStatus;)Ljava/lang/Class;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/beatles/model/order/BtsOrderStatus;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, handlerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v1, Lcom/didi/beatles/notification/Redirect$1;->$SwitchMap$com$didi$beatles$model$order$BtsOrderStatus:[I

    invoke-virtual {p1}, Lcom/didi/beatles/model/order/BtsOrderStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 141
    const-class v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    .line 146
    :goto_0
    return-object v0

    .line 122
    :pswitch_0
    const-class v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForCarActivity;

    .line 123
    goto :goto_0

    .line 125
    :pswitch_1
    const-class v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    .line 126
    goto :goto_0

    .line 128
    :pswitch_2
    const-class v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    .line 129
    goto :goto_0

    .line 131
    :pswitch_3
    const-class v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    .line 132
    goto :goto_0

    .line 134
    :pswitch_4
    const-class v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    .line 135
    goto :goto_0

    .line 137
    :pswitch_5
    const-class v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerWaitingForDriverActivity;

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/didi/beatles/notification/Redirect;->isShowDialog:Z

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static payloadToRedirect(Ljava/lang/String;)Lcom/didi/beatles/notification/Redirect;
    .locals 5
    .parameter "payload"

    .prologue
    .line 90
    invoke-static {p0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    const/4 v2, 0x0

    .line 93
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .local v3, jsonObject:Lorg/json/JSONObject;
    move-object v2, v3

    .line 97
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :goto_0
    const-string v4, "lt"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    const-string v4, "c"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    .local v0, content:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 100
    new-instance v4, Lcom/didi/beatles/notification/Redirect;

    invoke-direct {v4, v0}, Lcom/didi/beatles/notification/Redirect;-><init>(Lorg/json/JSONObject;)V

    .line 105
    .end local v0           #content:Lorg/json/JSONObject;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 94
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getActionActivity()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, target:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget v1, p0, Lcom/didi/beatles/notification/Redirect;->role:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 110
    iget-object v1, p0, Lcom/didi/beatles/notification/Redirect;->orderStatus:Lcom/didi/beatles/model/order/BtsOrderStatus;

    invoke-direct {p0, v1}, Lcom/didi/beatles/notification/Redirect;->getOrderStatusOfDriverHandler(Lcom/didi/beatles/model/order/BtsOrderStatus;)Ljava/lang/Class;

    move-result-object v0

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 111
    :cond_1
    iget v1, p0, Lcom/didi/beatles/notification/Redirect;->role:I

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/didi/beatles/notification/Redirect;->orderStatus:Lcom/didi/beatles/model/order/BtsOrderStatus;

    invoke-direct {p0, v1}, Lcom/didi/beatles/notification/Redirect;->getOrderStatusOfPassangerHandler(Lcom/didi/beatles/model/order/BtsOrderStatus;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
