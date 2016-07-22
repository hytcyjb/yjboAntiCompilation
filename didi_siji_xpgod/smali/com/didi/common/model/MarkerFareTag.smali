.class public Lcom/didi/common/model/MarkerFareTag;
.super Lcom/didi/common/model/BaseObject;
.source "MarkerFareTag.java"


# instance fields
.field public priceTagDesc:Ljava/lang/String;

.field public priceTagId:I

.field public priceTagTips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 24
    const-string v0, "priceTagId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/common/model/MarkerFareTag;->priceTagId:I

    .line 25
    const-string v0, "priceTagTips"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/MarkerFareTag;->priceTagTips:Ljava/lang/String;

    .line 26
    const-string v0, "priceTagDesc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/MarkerFareTag;->priceTagDesc:Ljava/lang/String;

    .line 27
    return-void
.end method
