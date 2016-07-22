.class public Lcom/didi/game/model/GameInfo;
.super Lcom/didi/common/model/BaseObject;
.source "GameInfo.java"


# static fields
.field public static final GAME_TYPE_H5:I = 0x2

.field public static final GAME_TYPE_NATIVE:I = 0x1

.field private static final serialVersionUID:J = -0x34d44fbcdf27a8dcL


# instance fields
.field public detailUrl:Ljava/lang/String;

.field public downOrPlayUrl:Ljava/lang/String;

.field public gameVersionCode:I

.field public gameVersionName:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public position:Ljava/lang/String;

.field public position1:Ljava/lang/String;

.field public shareContent:Ljava/lang/String;

.field public shareIcon:Ljava/lang/String;

.field public shareTitle:Ljava/lang/String;

.field public shareType:Ljava/lang/String;

.field public shareUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "jsonObj"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 99
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 102
    :cond_0
    :try_start_0
    const-string v1, "gameId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/model/GameInfo;->id:Ljava/lang/String;

    .line 103
    const-string v1, "gameName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/model/GameInfo;->name:Ljava/lang/String;

    .line 104
    const-string v1, "gameType"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/didi/game/model/GameInfo;->type:I

    .line 105
    const-string v1, "iconUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/model/GameInfo;->iconUrl:Ljava/lang/String;

    .line 106
    const-string v1, "shareUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/model/GameInfo;->shareUrl:Ljava/lang/String;

    .line 107
    const-string v1, "gameInfoUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/model/GameInfo;->detailUrl:Ljava/lang/String;

    .line 108
    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/model/GameInfo;->packageName:Ljava/lang/String;

    .line 109
    const-string v1, "gameVersionCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/game/model/GameInfo;->gameVersionCode:I

    .line 110
    const-string v1, "gameVersionName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/model/GameInfo;->gameVersionName:Ljava/lang/String;

    .line 111
    const-string v1, "downOrPlayUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/model/GameInfo;->downOrPlayUrl:Ljava/lang/String;

    .line 112
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/model/GameInfo;->title:Ljava/lang/String;

    .line 113
    const-string v1, "position"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/model/GameInfo;->position:Ljava/lang/String;

    .line 114
    const-string v1, "position1"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/game/model/GameInfo;->position1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public convertToH5Game()Lcom/didi/game/model/H5game;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Lcom/didi/game/model/H5game;

    invoke-direct {v0}, Lcom/didi/game/model/H5game;-><init>()V

    .line 126
    .local v0, game:Lcom/didi/game/model/H5game;
    iget-object v1, p0, Lcom/didi/game/model/GameInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setID(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/didi/game/model/GameInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setName(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/didi/game/model/GameInfo;->downOrPlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setUrl(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/didi/game/model/GameInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setIconUrl(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/didi/game/model/GameInfo;->shareUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/game/model/H5game;->setShareUrl(Ljava/lang/String;)V

    .line 131
    return-object v0
.end method

.method public isNative()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 137
    iget v1, p0, Lcom/didi/game/model/GameInfo;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
