.class public Lcom/didi/taxi/model/TaxiProfile;
.super Lcom/didi/common/model/BaseObject;
.source "TaxiProfile.java"


# static fields
.field private static final serialVersionUID:J = -0x2af10a0a43dcb7ffL


# instance fields
.field private avatar:Ljava/lang/String;

.field private level:I

.field private levelName:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiProfile;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/didi/taxi/model/TaxiProfile;->level:I

    return v0
.end method

.method public getLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiProfile;->levelName:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiProfile;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/didi/taxi/model/TaxiProfile;->pid:Ljava/lang/String;

    return-object v0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 26
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiProfile;->pid:Ljava/lang/String;

    .line 27
    const-string v0, "levelName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiProfile;->levelName:Ljava/lang/String;

    .line 28
    const-string v0, "avatar"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiProfile;->avatar:Ljava/lang/String;

    .line 29
    const-string v0, "nick"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/model/TaxiProfile;->nick:Ljava/lang/String;

    .line 30
    const-string v0, "level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/didi/taxi/model/TaxiProfile;->level:I

    .line 31
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .parameter "avatarUrl"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiProfile;->avatar:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 70
    iput p1, p0, Lcom/didi/taxi/model/TaxiProfile;->level:I

    .line 71
    return-void
.end method

.method public setLevelName(Ljava/lang/String;)V
    .locals 0
    .parameter "levelName"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiProfile;->levelName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .parameter "nick"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiProfile;->nick:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0
    .parameter "pid"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiProfile;->pid:Ljava/lang/String;

    .line 39
    return-void
.end method
