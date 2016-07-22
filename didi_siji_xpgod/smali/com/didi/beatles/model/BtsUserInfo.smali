.class public Lcom/didi/beatles/model/BtsUserInfo;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsUserInfo.java"


# instance fields
.field public car_brand:Ljava/lang/String;

.field public car_type:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public header_img_url:Ljava/lang/String;

.field public nick_name:Ljava/lang/String;

.field public signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsUserInfo;->gender:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsUserInfo;->signature:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsUserInfo;->nick_name:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsUserInfo;->header_img_url:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsUserInfo;->car_brand:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/beatles/model/BtsUserInfo;->car_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/didi/beatles/model/BtsBaseObject;->parse(Lorg/json/JSONObject;)V

    .line 17
    const-string v0, "gender"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsUserInfo;->gender:Ljava/lang/String;

    .line 18
    const-string v0, "signature"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsUserInfo;->signature:Ljava/lang/String;

    .line 19
    const-string v0, "nick_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsUserInfo;->nick_name:Ljava/lang/String;

    .line 20
    const-string v0, "car_brand"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsUserInfo;->car_brand:Ljava/lang/String;

    .line 21
    const-string v0, "car_type"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/model/BtsUserInfo;->car_type:Ljava/lang/String;

    .line 22
    return-void
.end method
