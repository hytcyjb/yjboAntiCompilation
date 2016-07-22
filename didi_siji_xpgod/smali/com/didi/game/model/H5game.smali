.class public Lcom/didi/game/model/H5game;
.super Ljava/lang/Object;
.source "H5game.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2a1162b27dd38758L


# instance fields
.field private ID:Ljava/lang/String;

.field private egret_GamezipUrl:Ljava/lang/String;

.field private egret_game_load_url:Ljava/lang/String;

.field private egret_game_update_url:Ljava/lang/String;

.field private gameId:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pluginName:Ljava/lang/String;

.field private scrrenOrientation:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/didi/game/model/H5game;
    .locals 3
    .parameter "json"

    .prologue
    .line 22
    new-instance v0, Lcom/didi/game/model/H5game;

    invoke-direct {v0}, Lcom/didi/game/model/H5game;-><init>()V

    .line 23
    .local v0, game:Lcom/didi/game/model/H5game;
    const-string v1, "ID"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/model/H5game;->ID:Ljava/lang/String;

    .line 24
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/model/H5game;->name:Ljava/lang/String;

    .line 25
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/model/H5game;->url:Ljava/lang/String;

    .line 26
    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/model/H5game;->iconUrl:Ljava/lang/String;

    .line 27
    const-string v1, "shareUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/model/H5game;->shareUrl:Ljava/lang/String;

    .line 30
    const-string v1, "gameId"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/model/H5game;->gameId:Ljava/lang/String;

    .line 31
    const-string v1, "plugin_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/model/H5game;->pluginName:Ljava/lang/String;

    .line 32
    const-string v1, "orientation"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/model/H5game;->scrrenOrientation:Ljava/lang/String;

    .line 33
    const-string v1, "egret_game_load_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/model/H5game;->egret_game_load_url:Ljava/lang/String;

    .line 34
    const-string v1, "egret_game_update_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/game/model/H5game;->egret_game_update_url:Ljava/lang/String;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---game shareUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/didi/game/model/H5game;->shareUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/didi/game/model/H5game;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 37
    return-object v0
.end method


# virtual methods
.method public getEgretGameLoadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/didi/game/model/H5game;->egret_game_load_url:Ljava/lang/String;

    return-object v0
.end method

.method public getEgretGameUpdateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/didi/game/model/H5game;->egret_game_update_url:Ljava/lang/String;

    return-object v0
.end method

.method public getEgretGameZIPUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/didi/game/model/H5game;->egret_GamezipUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/didi/game/model/H5game;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/game/model/H5game;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/game/model/H5game;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/didi/game/model/H5game;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/didi/game/model/H5game;->pluginName:Ljava/lang/String;

    return-object v0
.end method

.method public getScrrenOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/game/model/H5game;->scrrenOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/game/model/H5game;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/didi/game/model/H5game;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/game/model/H5game;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setEgretGameLoadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "egret_game_load_url"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/didi/game/model/H5game;->egret_game_load_url:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setEgretGameUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "egret_game_update_url"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/didi/game/model/H5game;->egret_game_update_url:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setEgretGamezipUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "egret_GamezipUrl"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/didi/game/model/H5game;->egret_GamezipUrl:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0
    .parameter "gameId"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/didi/game/model/H5game;->gameId:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .parameter "iD"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/didi/game/model/H5game;->ID:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "iconUrl"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/game/model/H5game;->iconUrl:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/didi/game/model/H5game;->name:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPluginName(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginName"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/didi/game/model/H5game;->pluginName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setScrrenOrientation(Ljava/lang/String;)V
    .locals 0
    .parameter "scrrenOrientation"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/didi/game/model/H5game;->scrrenOrientation:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "shareUrl"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/game/model/H5game;->shareUrl:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/didi/game/model/H5game;->source:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/didi/game/model/H5game;->url:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "H5game [ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/H5game;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/H5game;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/H5game;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/H5game;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/H5game;->shareUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pluginName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/H5game;->pluginName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scrrenOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/H5game;->scrrenOrientation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", egret_GamezipUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/H5game;->egret_GamezipUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", egret_game_load_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/H5game;->egret_game_load_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", egret_game_update_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/H5game;->egret_game_update_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/game/model/H5game;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
