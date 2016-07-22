.class public Lcom/didi/taxi/model/TaxiPayWay;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiPayWay.java"


# static fields
.field public static final PAY_CHANNEL_ID_ENTERPRISE:I = 0x7d

.field public static final PAY_CHANNEL_ID_QQ:I = 0x84

.field public static final PAY_CHANNEL_ID_SQQ:I = 0x82

.field public static final PAY_CHANNEL_ID_WEIXIN:I = 0x7f

.field public static final PAY_CHANNEL_ID_ZHIFUBAO:I = 0x80

.field private static final serialVersionUID:J = -0x5958f561593d2768L


# instance fields
.field private activityText:Ljava/lang/String;

.field private channelId:I

.field private checked:I

.field private name:Ljava/lang/String;

.field private showType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiPayWay;->activityText:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/didi/taxi/model/TaxiPayWay;->channelId:I

    return v0
.end method

.method public getChecked()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/didi/taxi/model/TaxiPayWay;->checked:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiPayWay;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShowType()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/didi/taxi/model/TaxiPayWay;->showType:I

    return v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 27
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiPayWay;->name:Ljava/lang/String;

    .line 28
    const-string v0, "activity_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiPayWay;->activityText:Ljava/lang/String;

    .line 29
    const-string v0, "checked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/didi/taxi/model/TaxiPayWay;->checked:I

    .line 30
    const-string v0, "channel_id"

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/didi/taxi/model/TaxiPayWay;->channelId:I

    .line 31
    const-string v0, "show_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/didi/taxi/model/TaxiPayWay;->showType:I

    .line 33
    return-void
.end method

.method public setActivityText(Ljava/lang/String;)V
    .locals 0
    .parameter "activityText"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiPayWay;->activityText:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setChannelId(I)V
    .locals 0
    .parameter "channelId"

    .prologue
    .line 56
    iput p1, p0, Lcom/didi/taxi/model/TaxiPayWay;->channelId:I

    .line 57
    return-void
.end method

.method public setChecked(I)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 72
    iput p1, p0, Lcom/didi/taxi/model/TaxiPayWay;->checked:I

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiPayWay;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setShowType(I)V
    .locals 0
    .parameter "showType"

    .prologue
    .line 64
    iput p1, p0, Lcom/didi/taxi/model/TaxiPayWay;->showType:I

    .line 65
    return-void
.end method
