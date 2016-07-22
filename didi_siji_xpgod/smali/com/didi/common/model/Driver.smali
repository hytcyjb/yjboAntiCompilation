.class public Lcom/didi/common/model/Driver;
.super Lcom/didi/common/model/BaseObject;
.source "Driver.java"


# instance fields
.field public did:Ljava/lang/String;

.field public locationInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/Driver;->did:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/model/Driver;->type:I

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "obj"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 24
    const-string v4, "dirverId"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/common/model/Driver;->did:Ljava/lang/String;

    .line 25
    const-string v4, "type"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/didi/common/model/Driver;->type:I

    .line 26
    const-string v4, "coords"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    const-string v4, "coords"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 28
    .local v3, jsonArray:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 29
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 30
    .local v0, actLength:I
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    .line 31
    const/4 v1, 0x0

    .local v1, iAct:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 32
    new-instance v2, Lcom/didi/common/model/LocationInfo;

    invoke-direct {v2}, Lcom/didi/common/model/LocationInfo;-><init>()V

    .line 34
    .local v2, info:Lcom/didi/common/model/LocationInfo;
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/didi/common/model/LocationInfo;->parse(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_1
    iget-object v4, p0, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v0           #actLength:I
    .end local v1           #iAct:I
    .end local v2           #info:Lcom/didi/common/model/LocationInfo;
    .end local v3           #jsonArray:Lorg/json/JSONArray;
    :cond_0
    return-void

    .line 35
    .restart local v0       #actLength:I
    .restart local v1       #iAct:I
    .restart local v2       #info:Lcom/didi/common/model/LocationInfo;
    .restart local v3       #jsonArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Driver{did=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Driver;->did:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/model/Driver;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
