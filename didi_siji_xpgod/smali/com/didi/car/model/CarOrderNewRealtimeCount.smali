.class public Lcom/didi/car/model/CarOrderNewRealtimeCount;
.super Lcom/didi/common/model/BaseObject;
.source "CarOrderNewRealtimeCount.java"


# static fields
.field private static final serialVersionUID:J = 0x5a5aea33bd9da190L


# instance fields
.field public feeItemInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/car/model/CarFeeItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field public oid:Ljava/lang/String;

.field public totalFee:F

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->feeItemInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 11
    .parameter "obj"

    .prologue
    .line 29
    const/4 v5, 0x1

    .line 30
    .local v5, scale:I
    const-string v7, "oid"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->oid:Ljava/lang/String;

    .line 32
    const-string v7, "total_fee"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/NumberUtil;->strToFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/didi/common/util/NumberUtil;->roundByDownMode(FI)F

    move-result v7

    iput v7, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->totalFee:F

    .line 35
    const-string v7, "basic_fee_info_list"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 36
    .local v2, basicArray:Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 37
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 38
    .local v0, actLength:I
    const/4 v3, 0x0

    .local v3, iAct:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 39
    new-instance v4, Lcom/didi/car/model/CarFeeItemInfo;

    invoke-direct {v4}, Lcom/didi/car/model/CarFeeItemInfo;-><init>()V

    .line 41
    .local v4, info:Lcom/didi/car/model/CarFeeItemInfo;
    :try_start_0
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/didi/car/model/CarFeeItemInfo;->parse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_1
    iget-object v7, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->feeItemInfos:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v0           #actLength:I
    .end local v3           #iAct:I
    .end local v4           #info:Lcom/didi/car/model/CarFeeItemInfo;
    :cond_0
    const/4 v4, 0x0

    .line 48
    .local v4, info:Lcom/didi/common/model/LocationInfo;
    const-string v7, "driving_track"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 49
    const-string v7, "driving_track"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 50
    .local v1, array:Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 51
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 52
    .local v6, tmpObject:Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    const-string v7, "x"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_1

    .line 53
    new-instance v4, Lcom/didi/common/model/LocationInfo;

    .end local v4           #info:Lcom/didi/common/model/LocationInfo;
    invoke-direct {v4}, Lcom/didi/common/model/LocationInfo;-><init>()V

    .line 54
    .restart local v4       #info:Lcom/didi/common/model/LocationInfo;
    const-string v7, "x"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v4, Lcom/didi/common/model/LocationInfo;->x:D

    .line 55
    const-string v7, "y"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v4, Lcom/didi/common/model/LocationInfo;->y:D

    .line 59
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v6           #tmpObject:Lorg/json/JSONObject;
    :cond_1
    if-nez v4, :cond_2

    .line 60
    new-instance v4, Lcom/didi/common/model/LocationInfo;

    .end local v4           #info:Lcom/didi/common/model/LocationInfo;
    invoke-direct {v4}, Lcom/didi/common/model/LocationInfo;-><init>()V

    .line 61
    .restart local v4       #info:Lcom/didi/common/model/LocationInfo;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v7

    iput-wide v7, v4, Lcom/didi/common/model/LocationInfo;->x:D

    .line 62
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v7

    iput-wide v7, v4, Lcom/didi/common/model/LocationInfo;->y:D

    .line 64
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    .line 65
    iget-object v7, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void

    .line 42
    .restart local v0       #actLength:I
    .restart local v3       #iAct:I
    .local v4, info:Lcom/didi/car/model/CarFeeItemInfo;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarOrderNewRealtimeCount{track="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feeItemInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->feeItemInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->totalFee:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
