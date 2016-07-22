.class public Lcom/didi/common/model/Address;
.super Lcom/didi/common/model/BaseObject;
.source "Address.java"


# static fields
.field public static final SRC_TYPE_CF_FIRST:Ljava/lang/String; = "cf_first"

.field public static final SRC_TYPE_CF_FIRST_OTHER:Ljava/lang/String; = "cf_first_other"

.field public static final SRC_TYPE_CHONGXIN:Ljava/lang/String; = "chongxin"

.field public static final SRC_TYPE_INPUT:Ljava/lang/String; = "input"

.field public static final SRC_TYPE_NEAR_DEFAULT:Ljava/lang/String; = "near_default"

.field public static final SRC_TYPE_PENGUIERGEO:Ljava/lang/String; = "penguinrgeo"

.field public static final SRC_TYPE_PS:Ljava/lang/String; = "ps"

.field public static final SRC_TYPE_RENGONG:Ljava/lang/String; = "rengong"

.field public static final SRC_TYPE_SUG:Ljava/lang/String; = "sug"

.field public static final TYPE_COMMON_COMPANY_POI:I = 0x8

.field public static final TYPE_COMMON_HOME_POI:I = 0x7

.field public static final TYPE_COMMON_POI:I = 0x6

.field public static final TYPE_CONFIRM_POI:I = 0x2

.field public static final TYPE_GEOCODING_POI:I = 0x5

.field public static final TYPE_HISTORY_POI:I = 0x4

.field public static final TYPE_RECOMMEND_POI:I = 0x3

.field public static final TYPE_SPLITTER:I = -0x1

.field public static final TYPE_SUGGESTION_POI:I = 0x1


# instance fields
.field public address:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public cityId:Ljava/lang/String;

.field public cotype:I

.field public displayName:Ljava/lang/String;

.field public hotName:Ljava/lang/String;

.field public isCustom:Z

.field public isSelect:Z

.field public keyword:Ljava/lang/String;

.field public lat:Ljava/lang/String;

.field public lng:Ljava/lang/String;

.field public mType:I

.field public modified:Z

.field public name:Ljava/lang/String;

.field public srctag:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/model/Address;->mType:I

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/common/model/Address;->cotype:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/didi/common/model/Address;
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/didi/common/model/BaseObject;->clone()Lcom/didi/common/model/BaseObject;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 253
    .local v0, address:Lcom/didi/common/model/Address;
    iget-object v1, p0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/didi/common/model/Address;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->city:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 258
    iget v1, p0, Lcom/didi/common/model/Address;->cotype:I

    iput v1, v0, Lcom/didi/common/model/Address;->cotype:I

    .line 259
    iget-boolean v1, p0, Lcom/didi/common/model/Address;->isCustom:Z

    iput-boolean v1, v0, Lcom/didi/common/model/Address;->isCustom:Z

    .line 260
    iget-object v1, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 262
    iget-boolean v1, p0, Lcom/didi/common/model/Address;->modified:Z

    iput-boolean v1, v0, Lcom/didi/common/model/Address;->modified:Z

    .line 263
    iget-object v1, p0, Lcom/didi/common/model/Address;->tag:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->tag:Ljava/lang/String;

    .line 264
    iget v1, p0, Lcom/didi/common/model/Address;->timeoffset:I

    iput v1, v0, Lcom/didi/common/model/Address;->timeoffset:I

    .line 265
    iget-object v1, p0, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/didi/common/model/Address;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/common/model/Address;->url:Ljava/lang/String;

    .line 267
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/didi/common/model/BaseObject;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->clone()Lcom/didi/common/model/Address;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->clone()Lcom/didi/common/model/Address;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v2

    .line 211
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 212
    goto :goto_0

    .line 213
    :cond_2
    instance-of v3, p1, Lcom/didi/common/model/Address;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 215
    check-cast v0, Lcom/didi/common/model/Address;

    .line 216
    .local v0, addr:Lcom/didi/common/model/Address;
    iget-object v3, p0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    :goto_1
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->trimText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/didi/common/model/Address;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/didi/common/model/Address;->isHomeOrCompany(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/didi/common/model/Address;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getLatDouble()D
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-wide/16 v0, 0x0

    .line 120
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 5

    .prologue
    .line 238
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 239
    .local v0, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    return-object v0
.end method

.method public getLngDouble()D
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-wide/16 v0, 0x0

    .line 126
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 276
    const-string v0, ""

    .line 277
    .local v0, src:Ljava/lang/String;
    iget v1, p0, Lcom/didi/common/model/Address;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 297
    :goto_0
    return-object v0

    .line 279
    :pswitch_0
    const-string v0, "p_addrrecomend"

    .line 280
    goto :goto_0

    .line 282
    :pswitch_1
    const-string v0, "history"

    .line 283
    goto :goto_0

    .line 285
    :pswitch_2
    const-string v0, "p_placesuggestion"

    .line 286
    goto :goto_0

    .line 288
    :pswitch_3
    const-string v0, "p_commonaddr"

    .line 289
    goto :goto_0

    .line 291
    :pswitch_4
    const-string v0, "p_reversegeocoding"

    .line 292
    goto :goto_0

    .line 294
    :pswitch_5
    const-string v0, "p_confirm"

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/didi/common/model/Address;->mType:I

    return v0
.end method

.method public isCompany()Z
    .locals 2

    .prologue
    .line 150
    const v1, 0x7f0b01d4

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, home:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isCustom()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/didi/common/model/Address;->isCustom:Z

    return v0
.end method

.method public isHome()Z
    .locals 2

    .prologue
    .line 145
    const v1, 0x7f0b01d6

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, home:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isHomeOrCompany(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 138
    const v0, 0x7f0b01d6

    invoke-static {v0}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b01d4

    invoke-static {v0}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelect()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/didi/common/model/Address;->isSelect:Z

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddressListNew="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 157
    const-string v1, "city"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->city:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 160
    .local v0, poiPrecentName:Ljava/lang/String;
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "displayname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    .line 165
    :cond_0
    const-string v1, "to_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 169
    :cond_1
    const-string v1, "to_address"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    const-string v1, "address"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    .line 174
    :cond_2
    const-string v1, "tag"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->tag:Ljava/lang/String;

    .line 175
    const-string v1, "pic_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->url:Ljava/lang/String;

    .line 176
    const-string v1, "lat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 177
    const-string v1, "lng"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 178
    const-string v1, "cotype"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/common/model/Address;->cotype:I

    .line 179
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    const-string v1, "driver_lat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    const-string v1, "driver_lng"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 184
    :cond_4
    const-string v1, "area"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 185
    const-string v1, "srctag"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public save()V
    .locals 2

    .prologue
    .line 192
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    .line 193
    .local v0, pref:Lcom/didi/common/config/Preferences;
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->isHome()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setHomeAddr(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setHomeName(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setHomeLongitude(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setHomeLatitude(Ljava/lang/String;)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->isCompany()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setCompanyAddr(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setCompanyName(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setCompanyLongitude(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setCompanyLatitude(Ljava/lang/String;)V

    .line 205
    :cond_1
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/model/Address;->modified:Z

    .line 107
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/didi/common/model/Address;->city:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setCustom(Z)V
    .locals 0
    .parameter "isCustom"

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/didi/common/model/Address;->isCustom:Z

    .line 222
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .parameter "keyword"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/didi/common/model/Address;->keyword:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 2
    .parameter "latLng"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 114
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "displayName"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/model/Address;->modified:Z

    .line 95
    return-void
.end method

.method public setSelect(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/didi/common/model/Address;->isSelect:Z

    .line 230
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 301
    iput p1, p0, Lcom/didi/common/model/Address;->mType:I

    .line 302
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/model/Address;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cityId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lng=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCustom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/model/Address;->isCustom:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/model/Address;->modified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cotype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/common/model/Address;->cotype:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSelect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/model/Address;->isSelect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
