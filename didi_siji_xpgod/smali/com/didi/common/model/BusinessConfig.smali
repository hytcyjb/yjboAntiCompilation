.class public Lcom/didi/common/model/BusinessConfig;
.super Lcom/didi/common/model/BaseObject;
.source "BusinessConfig.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public open:I

.field public product:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/model/BusinessConfig;->open:I

    return-void
.end method


# virtual methods
.method protected parse(Lorg/json/JSONObject;)V
    .locals 13
    .parameter "obj"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 34
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BusinessConfig: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 35
    const-string v11, "status"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/didi/common/model/BusinessConfig;->status:I

    .line 36
    const-string v11, "product"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/didi/common/model/BusinessConfig;->product:Ljava/lang/String;

    .line 38
    const-string v11, "smooth"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 39
    const-string v11, "smooth"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 40
    .local v10, smoothObj:Lorg/json/JSONObject;
    if-eqz v10, :cond_4

    .line 41
    const-string v11, "open"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/didi/common/model/BusinessConfig;->open:I

    .line 42
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    .line 43
    .local v8, preferences:Lcom/didi/common/config/Preferences;
    iget v11, p0, Lcom/didi/common/model/BusinessConfig;->open:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 44
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/didi/common/config/Preferences;->setSmooth(Z)V

    .line 45
    const-string v11, "home_frequency"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    invoke-virtual {v8, v11}, Lcom/didi/common/config/Preferences;->setSmoothHomeFrequency(I)V

    .line 46
    const-string v11, "going_frequency"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    invoke-virtual {v8, v11}, Lcom/didi/common/config/Preferences;->setSmoothGoingFrequency(I)V

    .line 47
    const-string v4, "middle_icon"

    .line 48
    .local v4, iconSize:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowHeight()I

    move-result v11

    const/16 v12, 0x3e8

    if-ge v11, v12, :cond_1

    .line 49
    const-string v4, "small_icon"

    .line 56
    :goto_0
    const-string v11, "icon"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 57
    const-string v11, "icon"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 58
    .local v6, jsonArray:Lorg/json/JSONArray;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 59
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 60
    .local v0, actLength:I
    new-instance v7, Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v7, listIcon:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    const/4 v2, 0x0

    .local v2, iAct:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 63
    :try_start_0
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 64
    .local v1, businessObj:Lorg/json/JSONObject;
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, iconUrl:Ljava/lang/String;
    const-string v11, "product_id"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, productId:Ljava/lang/String;
    const-string v11, "product_id"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v5}, Lcom/didi/common/config/Preferences;->setDriverIcon(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 69
    new-instance v3, Lcom/didi/common/model/Icon;

    invoke-direct {v3}, Lcom/didi/common/model/Icon;-><init>()V

    .line 70
    .local v3, icon:Lcom/didi/common/model/Icon;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "smooth_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/didi/common/model/Icon;->type:Ljava/lang/String;

    .line 71
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BusinessConfig: smooth_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 72
    iput-object v5, v3, Lcom/didi/common/model/Icon;->urlNormal:Ljava/lang/String;

    .line 73
    invoke-static {v5}, Lcom/didi/common/util/MD5;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/didi/common/model/Icon;->md5Normal:Ljava/lang/String;

    .line 74
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1           #businessObj:Lorg/json/JSONObject;
    .end local v3           #icon:Lcom/didi/common/model/Icon;
    .end local v5           #iconUrl:Ljava/lang/String;
    .end local v9           #productId:Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    .end local v0           #actLength:I
    .end local v2           #iAct:I
    .end local v6           #jsonArray:Lorg/json/JSONArray;
    .end local v7           #listIcon:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    :cond_1
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowHeight()I

    move-result v11

    const/16 v12, 0x578

    if-ge v11, v12, :cond_2

    .line 51
    const-string v4, "middle_icon"

    goto/16 :goto_0

    .line 53
    :cond_2
    const-string v4, "big_icon"

    goto/16 :goto_0

    .line 80
    .restart local v0       #actLength:I
    .restart local v2       #iAct:I
    .restart local v6       #jsonArray:Lorg/json/JSONArray;
    .restart local v7       #listIcon:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    :cond_3
    invoke-static {v7}, Lcom/didi/activity/ActivityIconHelper;->saveIcons(Ljava/util/List;)V

    .line 89
    .end local v0           #actLength:I
    .end local v2           #iAct:I
    .end local v4           #iconSize:Ljava/lang/String;
    .end local v6           #jsonArray:Lorg/json/JSONArray;
    .end local v7           #listIcon:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    .end local v8           #preferences:Lcom/didi/common/config/Preferences;
    .end local v10           #smoothObj:Lorg/json/JSONObject;
    :cond_4
    :goto_3
    return-void

    .line 85
    .restart local v8       #preferences:Lcom/didi/common/config/Preferences;
    .restart local v10       #smoothObj:Lorg/json/JSONObject;
    :cond_5
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/didi/common/config/Preferences;->setSmooth(Z)V

    goto :goto_3

    .line 78
    .restart local v0       #actLength:I
    .restart local v2       #iAct:I
    .restart local v4       #iconSize:Ljava/lang/String;
    .restart local v6       #jsonArray:Lorg/json/JSONArray;
    .restart local v7       #listIcon:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Icon;>;"
    :catch_0
    move-exception v11

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BusinessConfig{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/model/BusinessConfig;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", product=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/BusinessConfig;->product:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
