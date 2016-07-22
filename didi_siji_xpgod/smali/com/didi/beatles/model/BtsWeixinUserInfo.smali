.class public Lcom/didi/beatles/model/BtsWeixinUserInfo;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsWeixinUserInfo.java"


# instance fields
.field public gender:Ljava/lang/String;

.field public headUrl:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public openId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsWeixinUserInfo;->openId:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsWeixinUserInfo;->headUrl:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsWeixinUserInfo;->nickName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsWeixinUserInfo;->gender:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 5
    .parameter "json"

    .prologue
    const/16 v4, -0x384

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "weixin userinfo json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {p0, v4}, Lcom/didi/beatles/model/BtsWeixinUserInfo;->setErrorCode(I)V

    .line 49
    :goto_0
    return-void

    .line 29
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .local v1, obj:Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 37
    const-string v2, "openid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/BtsWeixinUserInfo;->openId:Ljava/lang/String;

    .line 38
    const-string v2, "nickname"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/BtsWeixinUserInfo;->nickName:Ljava/lang/String;

    .line 39
    const-string v2, "headimgurl"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/BtsWeixinUserInfo;->headUrl:Ljava/lang/String;

    .line 40
    const-string v2, "sex"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/model/BtsWeixinUserInfo;->gender:Ljava/lang/String;

    .line 47
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/didi/beatles/model/BtsWeixinUserInfo;->setErrorCode(I)V

    goto :goto_0

    .line 30
    .end local v1           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {p0, v4}, Lcom/didi/beatles/model/BtsWeixinUserInfo;->setErrorCode(I)V

    goto :goto_0
.end method
