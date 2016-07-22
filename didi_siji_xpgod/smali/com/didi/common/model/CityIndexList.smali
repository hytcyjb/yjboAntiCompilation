.class public Lcom/didi/common/model/CityIndexList;
.super Lcom/didi/common/model/BaseObject;
.source "CityIndexList.java"


# static fields
.field public static final serialVersionUID:J = 0x384eb9e0328ab74cL


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/CityGroup;",
            ">;"
        }
    .end annotation
.end field

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public hasUpdate()Z
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lcom/didi/common/model/CityIndexList;->version:I

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCityListVersion()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parse(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "obj"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, array:Lorg/json/JSONArray;
    const-string v2, "version"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/didi/common/model/CityIndexList;->version:I

    .line 27
    iget v2, p0, Lcom/didi/common/model/CityIndexList;->version:I

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getCityListVersion()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v2, "groups"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    const-string v2, "groups"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/didi/common/model/CityGroup;

    invoke-direct {v1}, Lcom/didi/common/model/CityGroup;-><init>()V

    .line 33
    .local v1, cityGroup:Lcom/didi/common/model/CityGroup;
    new-instance v2, Lcom/didi/common/model/JSONHelper;

    invoke-direct {v2}, Lcom/didi/common/model/JSONHelper;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/common/model/CityIndexList;->list:Ljava/util/ArrayList;

    goto :goto_0
.end method
