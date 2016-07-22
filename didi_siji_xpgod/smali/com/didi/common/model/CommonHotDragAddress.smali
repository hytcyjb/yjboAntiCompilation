.class public Lcom/didi/common/model/CommonHotDragAddress;
.super Lcom/didi/common/model/BaseObject;
.source "CommonHotDragAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/model/CommonHotDragAddress$DragTip;,
        Lcom/didi/common/model/CommonHotDragAddress$OverLap;
    }
.end annotation


# instance fields
.field public city:Ljava/lang/String;

.field private cityId:Ljava/lang/String;

.field public isWanliuAvailable:Z

.field public location:Lcom/didi/frame/departure/MyLocation;

.field public mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

.field public mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

.field public mSubPoiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/frame/departure/MyLocation;",
            ">;"
        }
    .end annotation
.end field

.field public serverManageMent:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 15
    new-instance v0, Lcom/didi/frame/departure/MyLocation;

    invoke-direct {v0}, Lcom/didi/frame/departure/MyLocation;-><init>()V

    iput-object v0, p0, Lcom/didi/common/model/CommonHotDragAddress;->location:Lcom/didi/frame/departure/MyLocation;

    .line 19
    iput v1, p0, Lcom/didi/common/model/CommonHotDragAddress;->serverManageMent:I

    .line 21
    iput-boolean v1, p0, Lcom/didi/common/model/CommonHotDragAddress;->isWanliuAvailable:Z

    .line 120
    return-void
.end method

.method private parseLocation(Lorg/json/JSONObject;Z)Lcom/didi/frame/departure/MyLocation;
    .locals 3
    .parameter "temp"
    .parameter "parLatlng"

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Lcom/didi/frame/departure/MyLocation;

    invoke-direct {v0}, Lcom/didi/frame/departure/MyLocation;-><init>()V

    .line 32
    .local v0, myLocation:Lcom/didi/frame/departure/MyLocation;
    const-string v1, "displayname"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/frame/departure/MyLocation;->displayName:Ljava/lang/String;

    .line 33
    const-string v1, "address"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/frame/departure/MyLocation;->address:Ljava/lang/String;

    .line 36
    const-string v1, "lng"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/frame/departure/MyLocation;->lng:Ljava/lang/String;

    .line 37
    const-string v1, "lat"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/frame/departure/MyLocation;->lat:Ljava/lang/String;

    .line 39
    const-string v1, "cotype"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/didi/frame/departure/MyLocation;->cotype:I

    .line 40
    const-string v1, "uid"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/frame/departure/MyLocation;->uid:Ljava/lang/String;

    .line 41
    const-string v1, "srctag"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/frame/departure/MyLocation;->srctag:Ljava/lang/String;

    .line 42
    const-string v1, "oldaddr"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/frame/departure/MyLocation;->oldAddr:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAddress4Location()Lcom/didi/common/model/Address;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 48
    .local v0, address:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/common/model/CommonHotDragAddress;->location:Lcom/didi/frame/departure/MyLocation;

    iget-object v1, v1, Lcom/didi/frame/departure/MyLocation;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/didi/common/model/CommonHotDragAddress;->location:Lcom/didi/frame/departure/MyLocation;

    iget-object v1, v1, Lcom/didi/frame/departure/MyLocation;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/didi/common/model/CommonHotDragAddress;->location:Lcom/didi/frame/departure/MyLocation;

    iget-object v1, v1, Lcom/didi/frame/departure/MyLocation;->lat:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/didi/common/model/CommonHotDragAddress;->location:Lcom/didi/frame/departure/MyLocation;

    iget-object v1, v1, Lcom/didi/frame/departure/MyLocation;->lng:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lcom/didi/common/model/CommonHotDragAddress;->location:Lcom/didi/frame/departure/MyLocation;

    iget-object v1, v1, Lcom/didi/frame/departure/MyLocation;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/didi/common/model/CommonHotDragAddress;->location:Lcom/didi/frame/departure/MyLocation;

    iget-object v1, v1, Lcom/didi/frame/departure/MyLocation;->hotName:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->hotName:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/didi/common/model/CommonHotDragAddress;->location:Lcom/didi/frame/departure/MyLocation;

    iget v1, v1, Lcom/didi/frame/departure/MyLocation;->cotype:I

    iput v1, v0, Lcom/didi/common/model/Address;->cotype:I

    .line 55
    iget-object v1, p0, Lcom/didi/common/model/CommonHotDragAddress;->location:Lcom/didi/frame/departure/MyLocation;

    iget-object v1, v1, Lcom/didi/frame/departure/MyLocation;->srctag:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    .line 57
    return-object v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 10
    .parameter "obj"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 62
    invoke-super {p0, p1}, Lcom/didi/common/model/BaseObject;->parse(Lorg/json/JSONObject;)V

    .line 64
    const-string v5, "city_open"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->isWanliuAvailable:Z

    .line 66
    const-string v5, "guankong"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->serverManageMent:I

    .line 67
    const-string v5, "cityid"

    const-string v8, ""

    invoke-virtual {p1, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->cityId:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    iget v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->serverManageMent:I

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Lcom/didi/common/config/Preferences;->setNewServerManageMent(Z)V

    .line 70
    const-string v5, "city"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->city:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    const-string v8, "cityid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/didi/common/config/Preferences;->setCurrentCityId(Ljava/lang/String;)V

    .line 74
    const-string v5, "result"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 75
    .local v1, jsonArray:Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 77
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 78
    .local v4, temp:Lorg/json/JSONObject;
    if-eqz v4, :cond_4

    .line 79
    invoke-direct {p0, v4, v7}, Lcom/didi/common/model/CommonHotDragAddress;->parseLocation(Lorg/json/JSONObject;Z)Lcom/didi/frame/departure/MyLocation;

    move-result-object v5

    iput-object v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->location:Lcom/didi/frame/departure/MyLocation;

    .line 85
    .end local v0           #i:I
    .end local v4           #temp:Lorg/json/JSONObject;
    :cond_0
    const-string v5, "subpoilist"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_5

    .line 87
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->mSubPoiList:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 89
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcom/didi/common/model/CommonHotDragAddress;->parseLocation(Lorg/json/JSONObject;Z)Lcom/didi/frame/departure/MyLocation;

    move-result-object v3

    .line 90
    .local v3, myLocation:Lcom/didi/frame/departure/MyLocation;
    iget-object v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->location:Lcom/didi/frame/departure/MyLocation;

    if-eqz v5, :cond_1

    .line 91
    iget-object v5, v3, Lcom/didi/frame/departure/MyLocation;->displayName:Ljava/lang/String;

    iput-object v5, v3, Lcom/didi/frame/departure/MyLocation;->hotName:Ljava/lang/String;

    .line 92
    iget-object v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->location:Lcom/didi/frame/departure/MyLocation;

    iget-object v5, v5, Lcom/didi/frame/departure/MyLocation;->displayName:Ljava/lang/String;

    iput-object v5, v3, Lcom/didi/frame/departure/MyLocation;->displayName:Ljava/lang/String;

    .line 95
    :cond_1
    iget-object v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->mSubPoiList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0           #i:I
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #myLocation:Lcom/didi/frame/departure/MyLocation;
    :cond_2
    move v5, v7

    .line 64
    goto/16 :goto_0

    :cond_3
    move v5, v7

    .line 68
    goto :goto_1

    .line 76
    .restart local v0       #i:I
    .restart local v1       #jsonArray:Lorg/json/JSONArray;
    .restart local v4       #temp:Lorg/json/JSONObject;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 99
    .end local v0           #i:I
    .end local v4           #temp:Lorg/json/JSONObject;
    :cond_5
    const-string v5, "overlap"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 100
    .local v2, mJsonObject:Lorg/json/JSONObject;
    if-eqz v2, :cond_6

    .line 101
    new-instance v5, Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    invoke-direct {v5}, Lcom/didi/common/model/CommonHotDragAddress$OverLap;-><init>()V

    iput-object v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    .line 102
    iget-object v8, p0, Lcom/didi/common/model/CommonHotDragAddress;->mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    const-string v5, "is_overlap"

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_8

    move v5, v6

    :goto_4
    iput-boolean v5, v8, Lcom/didi/common/model/CommonHotDragAddress$OverLap;->isOverLap:Z

    .line 103
    iget-object v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    const-string v8, "title"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/didi/common/model/CommonHotDragAddress$OverLap;->title:Ljava/lang/String;

    .line 106
    :cond_6
    const-string v5, "dragtips"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_7

    .line 108
    new-instance v5, Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    invoke-direct {v5}, Lcom/didi/common/model/CommonHotDragAddress$DragTip;-><init>()V

    iput-object v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    .line 109
    iget-object v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    const-string v8, "is_out"

    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_9

    :goto_5
    iput-boolean v6, v5, Lcom/didi/common/model/CommonHotDragAddress$DragTip;->isOut:Z

    .line 110
    iget-object v5, p0, Lcom/didi/common/model/CommonHotDragAddress;->mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    const-string v6, "title"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/didi/common/model/CommonHotDragAddress$DragTip;->title:Ljava/lang/String;

    .line 113
    :cond_7
    return-void

    :cond_8
    move v5, v7

    .line 102
    goto :goto_4

    :cond_9
    move v6, v7

    .line 109
    goto :goto_5
.end method
