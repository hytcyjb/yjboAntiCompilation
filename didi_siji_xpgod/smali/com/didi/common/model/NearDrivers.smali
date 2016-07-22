.class public Lcom/didi/common/model/NearDrivers;
.super Lcom/didi/common/model/BaseObject;
.source "NearDrivers.java"


# instance fields
.field public drivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/model/Driver;",
            ">;"
        }
    .end annotation
.end field

.field public eta:I

.field public etaDistance:I

.field public etaStr:Ljava/lang/String;

.field public productId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 18
    iput v1, p0, Lcom/didi/common/model/NearDrivers;->productId:I

    .line 20
    iput v1, p0, Lcom/didi/common/model/NearDrivers;->eta:I

    .line 23
    iput v1, p0, Lcom/didi/common/model/NearDrivers;->etaDistance:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/NearDrivers;->etaStr:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "obj"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 33
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 34
    .local v1, dataObj:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 35
    const-string v5, "product_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/didi/common/model/NearDrivers;->productId:I

    .line 36
    const-string v5, "eta"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/didi/common/model/NearDrivers;->eta:I

    .line 37
    const-string v5, "eta_distance"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/didi/common/model/NearDrivers;->etaDistance:I

    .line 38
    const-string v5, "eta_str"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/NearDrivers;->etaStr:Ljava/lang/String;

    .line 40
    const-string v5, "loc"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 41
    const-string v5, "loc"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 42
    .local v4, jsonArray:Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 43
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 44
    .local v0, actLength:I
    const/4 v2, 0x0

    .local v2, iAct:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 45
    new-instance v3, Lcom/didi/common/model/Driver;

    invoke-direct {v3}, Lcom/didi/common/model/Driver;-><init>()V

    .line 47
    .local v3, info:Lcom/didi/common/model/Driver;
    :try_start_0
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/didi/common/model/Driver;->parse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_1
    iget-object v5, p0, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    iget-object v6, v3, Lcom/didi/common/model/Driver;->did:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v0           #actLength:I
    .end local v2           #iAct:I
    .end local v3           #info:Lcom/didi/common/model/Driver;
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    :cond_0
    return-void

    .line 48
    .restart local v0       #actLength:I
    .restart local v2       #iAct:I
    .restart local v3       #info:Lcom/didi/common/model/Driver;
    .restart local v4       #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NearDrivers{productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/model/NearDrivers;->productId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/model/NearDrivers;->eta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", etaDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/model/NearDrivers;->etaDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", etaStr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/NearDrivers;->etaStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drivers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
