.class public Lcom/didi/frame/departure/DepartureHelper;
.super Ljava/lang/Object;
.source "DepartureHelper.java"


# static fields
.field private static depart:Lcom/didi/common/model/Address;

.field private static isDepart:Z

.field private static isOnlyUpdateName:Z

.field private static lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private static mFirstFsource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/frame/departure/DepartureHelper;->isDepart:Z

    .line 26
    const-string v0, "5"

    sput-object v0, Lcom/didi/frame/departure/DepartureHelper;->mFirstFsource:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDepart()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 62
    :cond_0
    return-void
.end method

.method public static getDefaultFSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->mFirstFsource:Ljava/lang/String;

    return-object v0
.end method

.method public static getDepart()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public static getDepartAddressDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 124
    const-string v0, ""

    .line 125
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDepartName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 118
    const-string v0, ""

    .line 119
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFSource()Ljava/lang/String;
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v2

    if-nez v2, :cond_1

    .line 80
    const-string v0, "5"

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v2

    iget-object v0, v2, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    .line 83
    .local v0, fSource:Ljava/lang/String;
    sget-object v2, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    if-eqz v2, :cond_2

    .line 84
    sget-object v2, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    iget-object v1, v2, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    .line 85
    .local v1, srcTag:Ljava/lang/String;
    const-string v2, "ps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    const-string v0, "9"

    .line 105
    .end local v1           #srcTag:Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 87
    .restart local v1       #srcTag:Ljava/lang/String;
    :cond_3
    const-string v2, "cf_first"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    const-string v0, "10"

    goto :goto_1

    .line 89
    :cond_4
    const-string v2, "cf_first_other"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 90
    const-string v0, "11"

    goto :goto_1

    .line 91
    :cond_5
    const-string v2, "rengong"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 92
    const-string v0, "12"

    goto :goto_1

    .line 93
    :cond_6
    const-string v2, "chongxin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 94
    const-string v0, "13"

    goto :goto_1

    .line 95
    :cond_7
    const-string v2, "penguinrgeo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 96
    const-string v0, "5"

    goto :goto_1

    .line 97
    :cond_8
    const-string v2, "sug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 98
    const-string v0, "1"

    goto :goto_1

    .line 99
    :cond_9
    const-string v2, "input"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 100
    const-string v0, "2"

    goto :goto_1

    .line 101
    :cond_a
    const-string v2, "near_default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    const-string v0, "0"

    goto :goto_1
.end method

.method public static getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    return-object v0
.end method

.method public static getLat()D
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 131
    const-wide/16 v0, 0x0

    .line 132
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public static getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 143
    const-string v0, ""

    .line 144
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    iget-object v0, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getLng()D
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 137
    const-wide/16 v0, 0x0

    .line 138
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v0

    goto :goto_0
.end method

.method public static getLngString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 149
    const-string v0, ""

    .line 150
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    iget-object v0, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isOnlyUpdateName()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/didi/frame/departure/DepartureHelper;->isOnlyUpdateName:Z

    return v0
.end method

.method public static isUseDepart()Z
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DepartUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 66
    sget-boolean v0, Lcom/didi/frame/departure/DepartureHelper;->isDepart:Z

    return v0
.end method

.method public static setDefaultFSource(Ljava/lang/String;)V
    .locals 0
    .parameter "fsource"

    .prologue
    .line 29
    sput-object p0, Lcom/didi/frame/departure/DepartureHelper;->mFirstFsource:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static setDepart(Lcom/didi/common/model/Address;)V
    .locals 4
    .parameter "addr"

    .prologue
    const-wide/16 v2, 0x0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 45
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->getCityIdString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 52
    :cond_2
    sput-object p0, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    .line 53
    return-void
.end method

.method public static setDepartOnMap()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 175
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->shouldGetDrivers()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    .line 177
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showTaxiDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_2

    .line 179
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showCarDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_3

    .line 181
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showFlierDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 182
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 183
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showDDriveDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 185
    :cond_4
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    goto :goto_0
.end method

.method public static setLastLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter "latlng"

    .prologue
    .line 160
    sput-object p0, Lcom/didi/frame/departure/DepartureHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 161
    return-void
.end method

.method public static setOnlyUpdateName(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 113
    sput-boolean p0, Lcom/didi/frame/departure/DepartureHelper;->isOnlyUpdateName:Z

    .line 114
    return-void
.end method

.method public static setUseDepart(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DepartUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/didi/frame/departure/DepartureHelper;->isDepart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 71
    sput-boolean p0, Lcom/didi/frame/departure/DepartureHelper;->isDepart:Z

    .line 72
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    .line 73
    .local v0, send:Lcom/didi/frame/Sendable;
    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p0}, Lcom/didi/frame/Sendable;->setUseDepart(Z)V

    .line 75
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->resetMyMarkerTitle()V

    .line 76
    return-void
.end method

.method public static shouldGetDrivers()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 168
    sget-object v1, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/didi/frame/departure/DepartureHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_1

    .line 171
    .local v0, flag:Z
    :cond_0
    :goto_0
    return v0

    .line 170
    .end local v0           #flag:Z
    :cond_1
    sget-object v1, Lcom/didi/frame/departure/DepartureHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    sget-object v2, Lcom/didi/frame/departure/DepartureHelper;->depart:Lcom/didi/common/model/Address;

    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/map/MapController;->lineDistance(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v1

    const/high16 v2, 0x447a

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 171
    .restart local v0       #flag:Z
    :cond_2
    goto :goto_0
.end method
