.class public Lcom/didi/common/model/AddressList;
.super Lcom/didi/common/model/BaseObject;
.source "AddressList.java"


# instance fields
.field public city:Ljava/lang/String;

.field private cityId:Ljava/lang/String;

.field public currentTimeMills:J

.field private delAddr:Lcom/didi/common/model/Address;

.field public isReveseTop:Z

.field public isWanliuAvailable:Z

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation
.end field

.field public location:Lcom/didi/frame/departure/MyLocation;

.field public mAddressDeparture:Lcom/didi/common/model/Address;

.field public mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

.field public mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

.field public mSubPoiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation
.end field

.field public serverManageMent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/didi/common/model/AddressList;->isReveseTop:Z

    .line 36
    iput v0, p0, Lcom/didi/common/model/AddressList;->serverManageMent:I

    .line 38
    iput-boolean v0, p0, Lcom/didi/common/model/AddressList;->isWanliuAvailable:Z

    return-void
.end method

.method private clean()V
    .locals 3

    .prologue
    .line 200
    iget-object v2, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    :cond_0
    return-void

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/didi/common/model/Address;>;"
    const/4 v0, 0x0

    .line 204
    .local v0, address:Lcom/didi/common/model/Address;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #address:Lcom/didi/common/model/Address;
    check-cast v0, Lcom/didi/common/model/Address;

    .line 206
    .restart local v0       #address:Lcom/didi/common/model/Address;
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 207
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private isEqual(Lcom/didi/common/model/Address;Lcom/didi/common/model/Address;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 252
    :cond_0
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/didi/common/model/Address;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 187
    return-void
.end method

.method public addrContains(Lcom/didi/common/model/Address;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v4, 0x1

    .line 230
    iget-object v0, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    .line 231
    .local v0, a:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Address;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 232
    .local v2, s:I
    if-eqz p1, :cond_1

    .line 233
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 234
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/Address;

    invoke-direct {p0, p1, v3}, Lcom/didi/common/model/AddressList;->isEqual(Lcom/didi/common/model/Address;Lcom/didi/common/model/Address;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/Address;

    iput-object v3, p0, Lcom/didi/common/model/AddressList;->delAddr:Lcom/didi/common/model/Address;

    move v3, v4

    .line 246
    :goto_1
    return v3

    .line 233
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v1           #i:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 241
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v4

    .line 242
    goto :goto_1

    .line 240
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 246
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public contains(Lcom/didi/common/model/Address;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/didi/common/model/AddressList;->addrContains(Lcom/didi/common/model/Address;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/didi/common/model/AddressList;->cityId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "0"

    iput-object v0, p0, Lcom/didi/common/model/AddressList;->cityId:Ljava/lang/String;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/AddressList;->cityId:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public locToAddress()Lcom/didi/common/model/Address;
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lcom/didi/common/model/AddressList;->location:Lcom/didi/frame/departure/MyLocation;

    if-nez v1, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 278
    :goto_0
    return-object v0

    .line 270
    :cond_0
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    .line 271
    .local v0, addr:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/common/model/AddressList;->location:Lcom/didi/frame/departure/MyLocation;

    invoke-virtual {v1}, Lcom/didi/frame/departure/MyLocation;->getLat()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 272
    iget-object v1, p0, Lcom/didi/common/model/AddressList;->location:Lcom/didi/frame/departure/MyLocation;

    invoke-virtual {v1}, Lcom/didi/frame/departure/MyLocation;->getLng()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/didi/common/model/AddressList;->location:Lcom/didi/frame/departure/MyLocation;

    invoke-virtual {v1}, Lcom/didi/frame/departure/MyLocation;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/didi/common/model/AddressList;->location:Lcom/didi/frame/departure/MyLocation;

    invoke-virtual {v1}, Lcom/didi/frame/departure/MyLocation;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setCustom(Z)V

    .line 276
    iget-object v1, p0, Lcom/didi/common/model/AddressList;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DepartureLoca="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/model/AddressList;->location:Lcom/didi/frame/departure/MyLocation;

    invoke-virtual {v2}, Lcom/didi/frame/departure/MyLocation;->getLat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/model/AddressList;->location:Lcom/didi/frame/departure/MyLocation;

    invoke-virtual {v2}, Lcom/didi/frame/departure/MyLocation;->getLng()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 27
    .parameter "obj"

    .prologue
    .line 55
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "DepartureObj="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 57
    const-string v24, "city_open"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    const/16 v24, 0x1

    :goto_0
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/didi/common/model/AddressList;->isWanliuAvailable:Z

    .line 59
    const-string v24, "guankong"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/didi/common/model/AddressList;->serverManageMent:I

    .line 60
    const-string v24, "cityid"

    const-string v25, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/AddressList;->cityId:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/didi/common/model/AddressList;->serverManageMent:I

    move/from16 v24, v0

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    const/16 v24, 0x1

    :goto_1
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setNewServerManageMent(Z)V

    .line 63
    const-string v24, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/AddressList;->city:Ljava/lang/String;

    .line 64
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "cityid"

    const/16 v26, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/AddressList;->cityId:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->cityId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/didi/common/config/Preferences;->setCurrentCityId(Ljava/lang/String;)V

    .line 66
    const-string v24, "location"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 67
    .local v19, loc:Lorg/json/JSONObject;
    if-eqz v19, :cond_0

    .line 68
    new-instance v24, Lcom/didi/frame/departure/MyLocation;

    invoke-direct/range {v24 .. v24}, Lcom/didi/frame/departure/MyLocation;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/AddressList;->location:Lcom/didi/frame/departure/MyLocation;

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->location:Lcom/didi/frame/departure/MyLocation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/didi/frame/departure/MyLocation;->parse(Lorg/json/JSONObject;)V

    .line 71
    :cond_0
    const-string v24, "addrlist"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 72
    .local v5, array:Lorg/json/JSONArray;
    if-nez v5, :cond_1

    .line 73
    const-string v24, "result"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 75
    :cond_1
    if-nez v5, :cond_5

    .line 183
    :cond_2
    :goto_2
    return-void

    .line 57
    .end local v5           #array:Lorg/json/JSONArray;
    .end local v19           #loc:Lorg/json/JSONObject;
    :cond_3
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 61
    :cond_4
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 78
    .restart local v5       #array:Lorg/json/JSONArray;
    .restart local v19       #loc:Lorg/json/JSONObject;
    :cond_5
    new-instance v3, Lcom/didi/common/model/Address;

    invoke-direct {v3}, Lcom/didi/common/model/Address;-><init>()V

    .line 79
    .local v3, addr:Lcom/didi/common/model/Address;
    const/16 v24, 0x5

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/didi/common/model/Address;->setType(I)V

    .line 80
    new-instance v24, Lcom/didi/common/model/JSONHelper;

    invoke-direct/range {v24 .. v24}, Lcom/didi/common/model/JSONHelper;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/didi/common/model/Address;->clone()Lcom/didi/common/model/Address;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->mAddressDeparture:Lcom/didi/common/model/Address;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->cityId:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 83
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "DepartureList="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/didi/common/model/AddressList;->clean()V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/model/AddressList;->updateCity()V

    .line 87
    const-string v24, "overlap"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 88
    .local v20, mJsonObject:Lorg/json/JSONObject;
    if-eqz v20, :cond_6

    .line 89
    new-instance v24, Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    invoke-direct/range {v24 .. v24}, Lcom/didi/common/model/CommonHotDragAddress$OverLap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/AddressList;->mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    move-object/from16 v25, v0

    const-string v24, "is_overlap"

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    const/16 v24, 0x1

    :goto_3
    move/from16 v0, v24

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/didi/common/model/CommonHotDragAddress$OverLap;->isOverLap:Z

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->mOverLap:Lcom/didi/common/model/CommonHotDragAddress$OverLap;

    move-object/from16 v24, v0

    const-string v25, "title"

    const-string v26, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/didi/common/model/CommonHotDragAddress$OverLap;->title:Ljava/lang/String;

    .line 94
    :cond_6
    const-string v24, "dragtips"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 95
    if-eqz v20, :cond_7

    .line 96
    new-instance v24, Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    invoke-direct/range {v24 .. v24}, Lcom/didi/common/model/CommonHotDragAddress$DragTip;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/AddressList;->mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    move-object/from16 v25, v0

    const-string v24, "is_out"

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    const/16 v24, 0x1

    :goto_4
    move/from16 v0, v24

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/didi/common/model/CommonHotDragAddress$DragTip;->isOut:Z

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->mDrapTip:Lcom/didi/common/model/CommonHotDragAddress$DragTip;

    move-object/from16 v24, v0

    const-string v25, "title"

    const-string v26, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/didi/common/model/CommonHotDragAddress$DragTip;->title:Ljava/lang/String;

    .line 101
    :cond_7
    const-string v24, "subpoilist"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 102
    .local v17, jsonArray:Lorg/json/JSONArray;
    if-eqz v17, :cond_b

    .line 103
    new-instance v4, Lcom/didi/common/model/Address;

    invoke-direct {v4}, Lcom/didi/common/model/Address;-><init>()V

    .line 104
    .local v4, address:Lcom/didi/common/model/Address;
    new-instance v24, Lcom/didi/common/model/JSONHelper;

    invoke-direct/range {v24 .. v24}, Lcom/didi/common/model/JSONHelper;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/didi/common/model/JSONHelper;->parseJSONArray(Lorg/json/JSONArray;Lcom/didi/common/model/BaseObject;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/AddressList;->mSubPoiList:Ljava/util/ArrayList;

    .line 105
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/model/AddressList;->isReveseTop:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->mSubPoiList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/didi/common/model/Address;

    .line 107
    .local v23, temp:Lcom/didi/common/model/Address;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/didi/common/model/Address;->hotName:Ljava/lang/String;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->cityId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    goto :goto_5

    .line 90
    .end local v4           #address:Lcom/didi/common/model/Address;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #jsonArray:Lorg/json/JSONArray;
    .end local v23           #temp:Lcom/didi/common/model/Address;
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 97
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 112
    .restart local v4       #address:Lcom/didi/common/model/Address;
    .restart local v17       #jsonArray:Lorg/json/JSONArray;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->mSubPoiList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/didi/common/model/Address;

    .line 113
    .restart local v23       #temp:Lcom/didi/common/model/Address;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->cityId:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    goto :goto_6

    .line 119
    .end local v4           #address:Lcom/didi/common/model/Address;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v23           #temp:Lcom/didi/common/model/Address;
    :cond_b
    const-string v24, "project_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 120
    const-string v24, "project_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 121
    .local v22, prObj:Lorg/json/JSONObject;
    const-string v24, "fast_car"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 122
    const-string v24, "fast_car"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 123
    .local v11, flierObj:Lorg/json/JSONObject;
    if-eqz v11, :cond_2

    .line 126
    const-string v24, "open"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    const/16 v16, 0x1

    .line 127
    .local v16, isOpen:Z
    :goto_7
    const-string v24, "bill_ability"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    const/4 v15, 0x1

    .line 129
    .local v15, isAbility:Z
    :goto_8
    const-string v24, "enter_name"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 130
    .local v10, enterName:Ljava/lang/String;
    const-string v24, "msg"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 132
    .local v21, msg:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setFlierOpen(Z)V

    .line 133
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/didi/common/config/Preferences;->setFlierAbility(Z)V

    .line 134
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/didi/common/config/Preferences;->setFlierName(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setFlierMsg(Ljava/lang/String;)V

    .line 137
    .end local v10           #enterName:Ljava/lang/String;
    .end local v11           #flierObj:Lorg/json/JSONObject;
    .end local v15           #isAbility:Z
    .end local v16           #isOpen:Z
    .end local v21           #msg:Ljava/lang/String;
    :cond_c
    const-string v24, "topic_car"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 138
    const-string v24, "topic_car"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 139
    .restart local v11       #flierObj:Lorg/json/JSONObject;
    if-eqz v11, :cond_2

    .line 140
    const-string v24, "open"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    const/16 v16, 0x1

    .line 142
    .restart local v16       #isOpen:Z
    :goto_9
    const-string v24, "enter_name"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 143
    .restart local v10       #enterName:Ljava/lang/String;
    const-string v24, "home_url"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, homeUrl:Ljava/lang/String;
    const-string v24, "icon_url"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 145
    .local v14, iconUrl:Ljava/lang/String;
    const-string v24, "button_info"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 146
    .local v9, buttonInfo:Lorg/json/JSONArray;
    if-eqz v9, :cond_d

    .line 147
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v18

    .line 148
    .local v18, length:I
    packed-switch v18, :pswitch_data_0

    .line 165
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Lcom/didi/common/config/Preferences;->setTopicButtonText1(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Lcom/didi/common/config/Preferences;->setTopicButtonText2(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Lcom/didi/common/config/Preferences;->setTopicButtonUrl1(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Lcom/didi/common/config/Preferences;->setTopicButtonUrl2(Ljava/lang/String;)V

    .line 173
    .end local v18           #length:I
    :cond_d
    :goto_a
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setTopicOpen(Z)V

    .line 174
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/didi/common/config/Preferences;->setTopicName(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/didi/common/config/Preferences;->setTopicHomeUrl(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/didi/common/config/Preferences;->setTopicIconUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 126
    .end local v9           #buttonInfo:Lorg/json/JSONArray;
    .end local v10           #enterName:Ljava/lang/String;
    .end local v12           #homeUrl:Ljava/lang/String;
    .end local v14           #iconUrl:Ljava/lang/String;
    .end local v16           #isOpen:Z
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 127
    .restart local v16       #isOpen:Z
    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 140
    .end local v16           #isOpen:Z
    :cond_10
    const/16 v16, 0x0

    goto :goto_9

    .line 150
    .restart local v9       #buttonInfo:Lorg/json/JSONArray;
    .restart local v10       #enterName:Ljava/lang/String;
    .restart local v12       #homeUrl:Ljava/lang/String;
    .restart local v14       #iconUrl:Ljava/lang/String;
    .restart local v16       #isOpen:Z
    .restart local v18       #length:I
    :pswitch_0
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 151
    .local v6, button:Lorg/json/JSONObject;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v25

    if-nez v6, :cond_11

    const-string v24, ""

    :goto_b
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setTopicButtonText1(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v25

    if-nez v6, :cond_12

    const-string v24, ""

    :goto_c
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setTopicButtonUrl1(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Lcom/didi/common/config/Preferences;->setTopicButtonText2(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Lcom/didi/common/config/Preferences;->setTopicButtonUrl2(Ljava/lang/String;)V

    goto :goto_a

    .line 151
    :cond_11
    const-string v24, "button_text"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_b

    .line 152
    :cond_12
    const-string v24, "button_url"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_c

    .line 157
    .end local v6           #button:Lorg/json/JSONObject;
    :pswitch_1
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 158
    .local v7, button1:Lorg/json/JSONObject;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v25

    if-nez v7, :cond_13

    const-string v24, ""

    :goto_d
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setTopicButtonText1(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v25

    if-nez v7, :cond_14

    const-string v24, ""

    :goto_e
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setTopicButtonUrl1(Ljava/lang/String;)V

    .line 160
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 161
    .local v8, button2:Lorg/json/JSONObject;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v25

    if-nez v8, :cond_15

    const-string v24, ""

    :goto_f
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setTopicButtonText2(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v25

    if-nez v8, :cond_16

    const-string v24, ""

    :goto_10
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setTopicButtonUrl2(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 158
    .end local v8           #button2:Lorg/json/JSONObject;
    :cond_13
    const-string v24, "button_text"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_d

    .line 159
    :cond_14
    const-string v24, "button_url"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_e

    .line 161
    .restart local v8       #button2:Lorg/json/JSONObject;
    :cond_15
    const-string v24, "button_text"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_f

    .line 162
    :cond_16
    const-string v24, "button_url"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto :goto_10

    .line 178
    .end local v7           #button1:Lorg/json/JSONObject;
    .end local v8           #button2:Lorg/json/JSONObject;
    .end local v9           #buttonInfo:Lorg/json/JSONArray;
    .end local v10           #enterName:Ljava/lang/String;
    .end local v11           #flierObj:Lorg/json/JSONObject;
    .end local v12           #homeUrl:Ljava/lang/String;
    .end local v14           #iconUrl:Ljava/lang/String;
    .end local v16           #isOpen:Z
    .end local v18           #length:I
    :cond_17
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/didi/common/config/Preferences;->isTopicOpen()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 179
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/didi/common/config/Preferences;->setTopicOpen(Z)V

    goto/16 :goto_2

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public peek()Lcom/didi/common/model/Address;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    goto :goto_0
.end method

.method public reorderToFirst(Lcom/didi/common/model/Address;)Lcom/didi/common/model/Address;
    .locals 2
    .parameter "address"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/didi/common/model/AddressList;->delAddr:Lcom/didi/common/model/Address;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 264
    return-object p1
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    iput-object p1, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddressList [city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/AddressList;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCity()V
    .locals 3

    .prologue
    .line 190
    iget-object v2, p0, Lcom/didi/common/model/AddressList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 191
    .local v0, address:Lcom/didi/common/model/Address;
    iget-object v2, p0, Lcom/didi/common/model/AddressList;->city:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/didi/common/model/AddressList;->cityId:Ljava/lang/String;

    iput-object v2, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    goto :goto_0

    .line 194
    .end local v0           #address:Lcom/didi/common/model/Address;
    :cond_0
    return-void
.end method
