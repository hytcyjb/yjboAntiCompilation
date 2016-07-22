.class public Lcom/didi/map/modle/SoSoGeoCoder;
.super Lcom/didi/common/model/BaseObject;
.source "SoSoGeoCoder.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public lat:D

.field public lng:D

.field public msg:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/didi/map/modle/SoSoGeoCoder;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 6
    .parameter "json"

    .prologue
    const/16 v5, -0x384

    .line 25
    invoke-static {p1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 26
    iput v5, p0, Lcom/didi/map/modle/SoSoGeoCoder;->status:I

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .local v2, obj:Lorg/json/JSONObject;
    sget-object v4, Lcom/didi/common/net/NetConstant;->ERROR_CODE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 37
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/didi/map/modle/SoSoGeoCoder;->status:I

    .line 39
    :cond_2
    sget-object v4, Lcom/didi/common/net/NetConstant;->ERROR_MSG:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 40
    const-string v4, "message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/map/modle/SoSoGeoCoder;->msg:Ljava/lang/String;

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/didi/map/modle/SoSoGeoCoder;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 44
    .local v3, result:Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 46
    const-string v4, "location"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 47
    .local v1, loc:Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 49
    const-string v4, "lat"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/didi/map/modle/SoSoGeoCoder;->lat:D

    .line 50
    const-string v4, "lng"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/didi/map/modle/SoSoGeoCoder;->lng:D

    goto :goto_0

    .line 32
    .end local v1           #loc:Lorg/json/JSONObject;
    .end local v2           #obj:Lorg/json/JSONObject;
    .end local v3           #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Lorg/json/JSONException;
    iput v5, p0, Lcom/didi/map/modle/SoSoGeoCoder;->status:I

    goto :goto_0
.end method
