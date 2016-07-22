.class public Lcom/didi/beatles/model/BtsUserAround;
.super Lcom/didi/beatles/model/BtsBaseObject;
.source "BtsUserAround.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/model/BtsUserAround$UserInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public drivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/BtsUserAround$UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field public passengers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/BtsUserAround$UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public server_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/didi/beatles/model/BtsBaseObject;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 9
    .parameter "obj"

    .prologue
    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BtsUserAround="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 56
    const-string v7, "server_time"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/didi/beatles/model/BtsUserAround;->server_time:Ljava/lang/String;

    .line 57
    const-string v7, "lat"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/didi/beatles/model/BtsUserAround;->lat:Ljava/lang/String;

    .line 58
    const-string v7, "lng"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/didi/beatles/model/BtsUserAround;->lng:Ljava/lang/String;

    .line 59
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/didi/beatles/model/BtsUserAround;->drivers:Ljava/util/ArrayList;

    .line 60
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/didi/beatles/model/BtsUserAround;->passengers:Ljava/util/ArrayList;

    .line 62
    const-string v7, "drivers"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 63
    .local v2, jsonArrayDrivers:Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 65
    .local v5, lenth:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 66
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 67
    .local v4, jsonItem:Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 68
    new-instance v0, Lcom/didi/beatles/model/BtsUserAround$UserInfo;

    invoke-direct {v0}, Lcom/didi/beatles/model/BtsUserAround$UserInfo;-><init>()V

    .line 69
    .local v0, driverInfo:Lcom/didi/beatles/model/BtsUserAround$UserInfo;
    const-string v7, "car_num"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->car_num:Ljava/lang/String;

    .line 70
    const-string v7, "gender"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->gender:Ljava/lang/String;

    .line 71
    const-string v7, "head_img_url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->head_img_url:Ljava/lang/String;

    .line 72
    const-string v7, "lat"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->lat:Ljava/lang/String;

    .line 73
    const-string v7, "lng"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->lng:Ljava/lang/String;

    .line 74
    const-string v7, "nick_name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->nick_name:Ljava/lang/String;

    .line 75
    const-string v7, "user_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->user_id:Ljava/lang/String;

    .line 77
    iget-object v7, p0, Lcom/didi/beatles/model/BtsUserAround;->drivers:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v0           #driverInfo:Lcom/didi/beatles/model/BtsUserAround$UserInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v1           #i:I
    .end local v4           #jsonItem:Lorg/json/JSONObject;
    .end local v5           #lenth:I
    :cond_1
    const-string v7, "passengers"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 83
    .local v3, jsonArrayPassanger:Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    .line 84
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 85
    .restart local v5       #lenth:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 86
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 87
    .restart local v4       #jsonItem:Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 88
    new-instance v6, Lcom/didi/beatles/model/BtsUserAround$UserInfo;

    invoke-direct {v6}, Lcom/didi/beatles/model/BtsUserAround$UserInfo;-><init>()V

    .line 89
    .local v6, psgInfo:Lcom/didi/beatles/model/BtsUserAround$UserInfo;
    const-string v7, "car_num"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->car_num:Ljava/lang/String;

    .line 90
    const-string v7, "gender"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->gender:Ljava/lang/String;

    .line 91
    const-string v7, "head_img_url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->head_img_url:Ljava/lang/String;

    .line 92
    const-string v7, "lat"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->lat:Ljava/lang/String;

    .line 93
    const-string v7, "lng"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->lng:Ljava/lang/String;

    .line 94
    const-string v7, "nick_name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->nick_name:Ljava/lang/String;

    .line 95
    const-string v7, "user_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->user_id:Ljava/lang/String;

    .line 97
    iget-object v7, p0, Lcom/didi/beatles/model/BtsUserAround;->passengers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v6           #psgInfo:Lcom/didi/beatles/model/BtsUserAround$UserInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    .end local v1           #i:I
    .end local v4           #jsonItem:Lorg/json/JSONObject;
    .end local v5           #lenth:I
    :cond_3
    return-void
.end method
