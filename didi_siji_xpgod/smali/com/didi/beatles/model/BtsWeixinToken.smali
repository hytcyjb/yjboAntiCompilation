.class public Lcom/didi/beatles/model/BtsWeixinToken;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsWeixinToken.java"


# instance fields
.field public access_token:Ljava/lang/String;

.field public expires_in:I

.field public openid:Ljava/lang/String;

.field public refresh_token:Ljava/lang/String;

.field public scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsWeixinToken;->openid:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/beatles/model/BtsWeixinToken;->expires_in:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsWeixinToken;->scope:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsWeixinToken;->refresh_token:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsWeixinToken;->access_token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 9
    .parameter "json"

    .prologue
    const/4 v8, 0x0

    const/16 v7, -0x384

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "weixin token json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {p0, v7}, Lcom/didi/beatles/model/BtsWeixinToken;->setErrorCode(I)V

    .line 59
    :goto_0
    return-void

    .line 31
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v1, obj:Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsons: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 38
    const-string v2, "weixin token to jsonobject "

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 40
    const-string v2, "openid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/BtsWeixinToken;->openid:Ljava/lang/String;

    .line 41
    const-string v2, "expires_in"

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/didi/beatles/model/BtsWeixinToken;->expires_in:I

    .line 43
    const-string v2, "scope"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/BtsWeixinToken;->scope:Ljava/lang/String;

    .line 44
    const-string v2, "refresh_token"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/BtsWeixinToken;->refresh_token:Ljava/lang/String;

    .line 45
    const-string v2, "access_token"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/BtsWeixinToken;->access_token:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/didi/beatles/model/BtsWeixinToken;->openid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/didi/beatles/model/BtsWeixinToken;->access_token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/didi/beatles/model/BtsWeixinToken;->refresh_token:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 49
    :cond_1
    const-string v2, "weixin token: null openid "

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v7}, Lcom/didi/beatles/model/BtsWeixinToken;->setErrorCode(I)V

    goto :goto_0

    .line 32
    .end local v1           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {p0, v7}, Lcom/didi/beatles/model/BtsWeixinToken;->setErrorCode(I)V

    goto :goto_0

    .line 55
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #obj:Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {p0, v8}, Lcom/didi/beatles/model/BtsWeixinToken;->setErrorCode(I)V

    .line 57
    invoke-static {}, Lcom/didi/common/util/TraceDebugLog;->saveDebugLog()V

    goto/16 :goto_0
.end method
