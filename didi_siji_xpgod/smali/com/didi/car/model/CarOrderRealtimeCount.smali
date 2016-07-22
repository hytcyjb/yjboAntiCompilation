.class public Lcom/didi/car/model/CarOrderRealtimeCount;
.super Lcom/didi/common/model/BaseObject;
.source "CarOrderRealtimeCount.java"


# static fields
.field private static final serialVersionUID:J = 0x5a5aea33bd9da190L


# instance fields
.field public distance:F

.field public drivingFee:F

.field public dynamicPriceTitle:Ljava/lang/String;

.field public dynamicPriceValue:F

.field public emptyDistance:F

.field public emptyFee:F

.field public fee:F

.field public isInit:Z

.field public nightDistance:F

.field public nightFee:F

.field public oid:Ljava/lang/String;

.field public slow:F

.field public speedSlowFee:F

.field public startFee:F

.field public track:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public waitTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->isInit:Z

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v6, 0x1

    .line 62
    const/4 v2, 0x1

    .line 63
    .local v2, scale:I
    const-string v4, "oid"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->oid:Ljava/lang/String;

    .line 64
    const-string v4, "normal_distance"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4, v6}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v4

    iput v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->distance:F

    .line 65
    const-string v4, "slow_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4, v6}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v4

    iput v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->slow:F

    .line 66
    const-string v4, "start_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4, v6}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v4

    iput v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->startFee:F

    .line 67
    const-string v4, "normal_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4, v6}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v4

    iput v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->drivingFee:F

    .line 68
    const-string v4, "slow_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4, v6}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v4

    iput v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->speedSlowFee:F

    .line 69
    const-string v4, "empty_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4, v6}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v4

    iput v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->emptyFee:F

    .line 70
    const-string v4, "night_fee"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4, v6}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v4

    iput v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->nightFee:F

    .line 71
    const-string v4, "dynamic_price_title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->dynamicPriceTitle:Ljava/lang/String;

    .line 72
    const-string v4, "dynamic_price_msg"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4, v6}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v4

    iput v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->dynamicPriceValue:F

    .line 73
    iget v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->startFee:F

    iget v5, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->drivingFee:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->speedSlowFee:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->emptyFee:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->nightFee:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->dynamicPriceValue:F

    add-float/2addr v4, v5

    iput v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->fee:F

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, info:Lcom/didi/common/model/LocationInfo;
    const-string v4, "driving_track"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    const-string v4, "driving_track"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 77
    .local v0, array:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 78
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 79
    .local v3, tmpObject:Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    const-string v4, "x"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 80
    new-instance v1, Lcom/didi/common/model/LocationInfo;

    .end local v1           #info:Lcom/didi/common/model/LocationInfo;
    invoke-direct {v1}, Lcom/didi/common/model/LocationInfo;-><init>()V

    .line 81
    .restart local v1       #info:Lcom/didi/common/model/LocationInfo;
    const-string v4, "x"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/didi/common/model/LocationInfo;->x:D

    .line 82
    const-string v4, "y"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v1, Lcom/didi/common/model/LocationInfo;->y:D

    .line 86
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #tmpObject:Lorg/json/JSONObject;
    :cond_0
    if-nez v1, :cond_1

    .line 87
    new-instance v1, Lcom/didi/common/model/LocationInfo;

    .end local v1           #info:Lcom/didi/common/model/LocationInfo;
    invoke-direct {v1}, Lcom/didi/common/model/LocationInfo;-><init>()V

    .line 88
    .restart local v1       #info:Lcom/didi/common/model/LocationInfo;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v4

    iput-wide v4, v1, Lcom/didi/common/model/LocationInfo;->x:D

    .line 89
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v4

    iput-wide v4, v1, Lcom/didi/common/model/LocationInfo;->y:D

    .line 91
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    .line 92
    iget-object v4, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarOrderRealtimeCount{oid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->slow:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->fee:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->startFee:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drivingFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->drivingFee:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speedSlowFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->speedSlowFee:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emptyFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->emptyFee:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emptyDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->emptyDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nightFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->nightFee:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nightDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->nightDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", track="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", waitTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->waitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
