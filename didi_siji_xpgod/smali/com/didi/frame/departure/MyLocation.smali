.class public Lcom/didi/frame/departure/MyLocation;
.super Lcom/didi/common/model/BaseObject;
.source "MyLocation.java"


# instance fields
.field public address:Ljava/lang/String;

.field public click:I

.field public cotype:I

.field public displayName:Ljava/lang/String;

.field public hotName:Ljava/lang/String;

.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field public oldAddr:Ljava/lang/String;

.field public score:I

.field public srctag:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/didi/frame/departure/MyLocation;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/didi/frame/departure/MyLocation;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/didi/frame/departure/MyLocation;->lat:Ljava/lang/String;

    return-object v0
.end method

.method public getLng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/didi/frame/departure/MyLocation;->lng:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 31
    const-string v0, "oldaddr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/departure/MyLocation;->oldAddr:Ljava/lang/String;

    .line 32
    const-string v0, "address"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/departure/MyLocation;->address:Ljava/lang/String;

    .line 33
    const-string v0, "score"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/frame/departure/MyLocation;->score:I

    .line 34
    const-string v0, "click"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/frame/departure/MyLocation;->click:I

    .line 35
    const-string v0, "lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/departure/MyLocation;->lat:Ljava/lang/String;

    .line 36
    const-string v0, "lng"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/departure/MyLocation;->lng:Ljava/lang/String;

    .line 37
    const-string v0, "cotype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/frame/departure/MyLocation;->cotype:I

    .line 38
    const-string v0, "srctag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/departure/MyLocation;->srctag:Ljava/lang/String;

    .line 39
    const-string v0, "displayname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/departure/MyLocation;->displayName:Ljava/lang/String;

    .line 40
    return-void
.end method
