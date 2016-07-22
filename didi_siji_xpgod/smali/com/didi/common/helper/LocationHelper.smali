.class public Lcom/didi/common/helper/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/helper/LocationHelper$CityChangeListener;
    }
.end annotation


# static fields
.field private static addressList:Lcom/didi/common/model/AddressList;

.field private static btsEndAddress:Lcom/didi/common/model/Address;

.field private static btsStartAddress:Lcom/didi/common/model/Address;

.field private static cityListeners:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/common/helper/LocationHelper$CityChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static companyAddress:Lcom/didi/common/model/Address;

.field private static cotype:I

.field private static currentAddress:Lcom/didi/common/model/Address;

.field private static currentCityId:Ljava/lang/String;

.field private static currentPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private static endAddress:Lcom/didi/common/model/Address;

.field private static homeAddress:Lcom/didi/common/model/Address;

.field private static isOnPushOpenBeatles:Z

.field private static isOnPushOpenCar:Z

.field private static lastModifiedAddress:Lcom/didi/common/model/Address;

.field private static lastModifiedPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private static orderCityId:Ljava/lang/String;

.field private static startAddress:Lcom/didi/common/model/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/common/helper/LocationHelper;->cityListeners:Ljava/util/HashMap;

    .line 76
    const/4 v0, -0x1

    sput v0, Lcom/didi/common/helper/LocationHelper;->cotype:I

    .line 470
    sput-boolean v1, Lcom/didi/common/helper/LocationHelper;->isOnPushOpenCar:Z

    .line 471
    sput-boolean v1, Lcom/didi/common/helper/LocationHelper;->isOnPushOpenBeatles:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    return-void
.end method

.method public static addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 609
    if-nez p0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCityListener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 612
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->cityListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static addressGot()Z
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addressGot() currentAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 347
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkMoved(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Z
    .locals 4
    .parameter "latlng"

    .prologue
    .line 410
    sget-object v2, Lcom/didi/common/helper/LocationHelper;->currentPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-static {v2, p0}, Lcom/didi/map/MapController;->lineDistance(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v2

    float-to-double v0, v2

    .line 411
    .local v0, distance:D
    const-wide v2, 0x406f400000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getBtsEndAddress()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 427
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->btsEndAddress:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public static getBtsStartAddress()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->btsStartAddress:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public static getCompanyAddress()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->companyAddress:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public static getCompanyAddressTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->companyAddress:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 163
    const-string v0, ""

    .line 164
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->companyAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCotype()I
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    iget v0, v0, Lcom/didi/common/model/Address;->cotype:I

    .line 84
    :goto_0
    return v0

    .line 81
    :cond_0
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->startAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_1

    .line 82
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->startAddress:Lcom/didi/common/model/Address;

    iget v0, v0, Lcom/didi/common/model/Address;->cotype:I

    goto :goto_0

    .line 84
    :cond_1
    sget v0, Lcom/didi/common/helper/LocationHelper;->cotype:I

    goto :goto_0
.end method

.method public static getCurrentAddress()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public static getCurrentAddressDetail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 214
    .local v0, address:Lcom/didi/common/model/Address;
    if-nez v0, :cond_0

    .line 215
    const-string v1, ""

    .line 216
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCurrentAddressList()Lcom/didi/common/model/AddressList;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    return-object v0
.end method

.method public static getCurrentAddressTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 238
    .local v0, address:Lcom/didi/common/model/Address;
    if-nez v0, :cond_0

    .line 239
    const-string v1, ""

    .line 241
    :goto_0
    return-object v1

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCurrentCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    if-nez v0, :cond_0

    .line 299
    const-string v0, ""

    .line 300
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->city:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCurrentCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentCityId:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentLatitudeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentLongitudeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    return-object v0
.end method

.method public static getEndAddress()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->endAddress:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public static getEndAddressString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 597
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 598
    .local v0, address:Lcom/didi/common/model/Address;
    if-nez v0, :cond_0

    .line 599
    const/4 v1, 0x0

    .line 600
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getEndAddressTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 404
    .local v0, end:Lcom/didi/common/model/Address;
    if-nez v0, :cond_0

    .line 405
    const-string v1, ""

    .line 406
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getEndLatitude()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 109
    .local v0, address:Lcom/didi/common/model/Address;
    if-nez v0, :cond_0

    .line 110
    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getEndLongitude()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 116
    .local v0, address:Lcom/didi/common/model/Address;
    if-nez v0, :cond_0

    .line 117
    const/4 v1, 0x0

    .line 118
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getHomeAddress()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->homeAddress:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public static getHomeAddressTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->homeAddress:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 139
    const-string v0, ""

    .line 140
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->homeAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastModifiedAddress()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->lastModifiedAddress:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public static getLatitudeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 567
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, lat:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 569
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getLatitudeString()Ljava/lang/String;

    move-result-object v0

    .line 572
    .end local v0           #lat:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getLongitudeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 581
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, lng:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 583
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getLongitudeString()Ljava/lang/String;

    move-result-object v0

    .line 586
    .end local v0           #lng:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getOrderCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->orderCityId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/Utils;->getCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOrderCityId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->orderCityId:Ljava/lang/String;

    return-object v0
.end method

.method public static getStartAddress()Lcom/didi/common/model/Address;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->startAddress:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 89
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/LocationHelper;->startAddress:Lcom/didi/common/model/Address;

    .line 90
    :cond_0
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->startAddress:Lcom/didi/common/model/Address;

    return-object v0
.end method

.method public static getStartAddressString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 590
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 591
    .local v0, address:Lcom/didi/common/model/Address;
    if-nez v0, :cond_0

    .line 592
    const/4 v1, 0x0

    .line 593
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getStartAddressTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 396
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 397
    .local v0, start:Lcom/didi/common/model/Address;
    if-nez v0, :cond_0

    .line 398
    const-string v1, ""

    .line 399
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getStartLatitude()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 95
    .local v0, address:Lcom/didi/common/model/Address;
    if-nez v0, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 97
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getStartLongitude()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 102
    .local v0, address:Lcom/didi/common/model/Address;
    if-nez v0, :cond_0

    .line 103
    const/4 v1, 0x0

    .line 104
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    goto :goto_0
.end method

.method public static hasStartAddressSelected()Z
    .locals 3

    .prologue
    .line 351
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getStartAddressTitle()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, startAddress:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasStartAddressSelected() getStartAddress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 353
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLocated()Z
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static modifyCurrentAddress(Lcom/didi/common/model/Address;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 371
    if-eqz p0, :cond_0

    sget-object v1, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    invoke-virtual {v1}, Lcom/didi/common/model/AddressList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    sget-object v1, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    invoke-virtual {v1, p0}, Lcom/didi/common/model/AddressList;->contains(Lcom/didi/common/model/Address;)Z

    move-result v0

    .line 374
    .local v0, flag:Z
    if-eqz v0, :cond_2

    .line 375
    sget-object v1, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    invoke-virtual {v1, p0}, Lcom/didi/common/model/AddressList;->reorderToFirst(Lcom/didi/common/model/Address;)Lcom/didi/common/model/Address;

    move-result-object v1

    sput-object v1, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    .line 384
    :goto_1
    sget-object v1, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    invoke-virtual {v1}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v1

    sput-object v1, Lcom/didi/common/helper/LocationHelper;->lastModifiedAddress:Lcom/didi/common/model/Address;

    .line 385
    sget-object v1, Lcom/didi/common/helper/LocationHelper;->currentPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    sput-object v1, Lcom/didi/common/helper/LocationHelper;->lastModifiedPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->isCustom()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    sget-object v1, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 378
    sget-object v1, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/model/Address;->setAddress(Ljava/lang/String;)V

    .line 379
    sget-object v1, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/didi/common/model/Address;->setType(I)V

    goto :goto_1

    .line 381
    :cond_3
    sget-object v1, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    invoke-virtual {v1, p0}, Lcom/didi/common/model/AddressList;->add(Lcom/didi/common/model/Address;)V

    .line 382
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    goto :goto_1
.end method

.method public static notifyCityChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "sourceCityId"
    .parameter "targetCityId"

    .prologue
    .line 627
    sget-object v3, Lcom/didi/common/helper/LocationHelper;->cityListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 630
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/didi/common/helper/LocationHelper$CityChangeListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 631
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 632
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/common/helper/LocationHelper$CityChangeListener;>;"
    if-eqz v2, :cond_0

    .line 634
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 635
    .local v1, listener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;
    if-eqz v1, :cond_0

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCityChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 638
    invoke-interface {v1, p0, p1}, Lcom/didi/common/helper/LocationHelper$CityChangeListener;->onChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 640
    .end local v1           #listener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/common/helper/LocationHelper$CityChangeListener;>;"
    :cond_1
    return-void
.end method

.method public static removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 621
    if-nez p0, :cond_0

    .line 624
    :goto_0
    return-void

    .line 623
    :cond_0
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->cityListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 415
    const-string v0, "reset"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 416
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    sput-object v0, Lcom/didi/common/helper/LocationHelper;->startAddress:Lcom/didi/common/model/Address;

    .line 417
    return-void
.end method

.method public static resetOrderCityId()V
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->orderCityId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/helper/LocationHelper;->orderCityId:Ljava/lang/String;

    .line 451
    :cond_0
    return-void
.end method

.method public static saveCurrentPoint()V
    .locals 4

    .prologue
    .line 554
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, lng:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "latlng="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/common/config/Preferences;->setLatitudeString(Ljava/lang/String;)V

    .line 558
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/common/config/Preferences;->setLongitudeString(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public static seSwitchPannel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 510
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->getInstance()Lcom/didi/frame/recovery/RecoveryHelper;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/recovery/RecoveryHelper;->startRecoveryDelayed(J)V

    .line 511
    sget-boolean v0, Lcom/didi/common/helper/LocationHelper;->isOnPushOpenCar:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0, v1}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 513
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 514
    sput-boolean v3, Lcom/didi/common/helper/LocationHelper;->isOnPushOpenCar:Z

    .line 522
    :goto_0
    return-void

    .line 515
    :cond_0
    sget-boolean v0, Lcom/didi/common/helper/LocationHelper;->isOnPushOpenBeatles:Z

    if-eqz v0, :cond_1

    .line 516
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-static {v0, v1}, Lcom/didi/frame/business/redirector/RedirectEngine;->switchForOut(Lcom/didi/frame/business/Business;Lcom/didi/frame/business/Business;)V

    .line 517
    sget-object v0, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 518
    sput-boolean v3, Lcom/didi/common/helper/LocationHelper;->isOnPushOpenBeatles:Z

    goto :goto_0

    .line 520
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/BusinessHelper;->toBusiness()V

    goto :goto_0
.end method

.method public static setBtsEndAddress(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "btsEndAddress"

    .prologue
    .line 431
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->btsEndAddress:Lcom/didi/common/model/Address;

    .line 432
    return-void
.end method

.method public static setBtsStartAddress(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "btsStartAddress"

    .prologue
    .line 423
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->btsStartAddress:Lcom/didi/common/model/Address;

    .line 424
    return-void
.end method

.method public static setCompanyAddress(Lcom/didi/common/model/Address;)V
    .locals 2
    .parameter "companyAddress"

    .prologue
    .line 168
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->companyAddress:Lcom/didi/common/model/Address;

    .line 170
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setCompanyAddr(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setCompanyName(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setCompanyLongitude(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setCompanyLatitude(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static setCompanyAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "addressName"

    .prologue
    .line 177
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->companyAddress:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    sput-object v0, Lcom/didi/common/helper/LocationHelper;->companyAddress:Lcom/didi/common/model/Address;

    .line 179
    :cond_0
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->companyAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0, p0}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public static setCurrentAddress(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 250
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    .line 251
    return-void
.end method

.method public static setCurrentCity()V
    .locals 1

    .prologue
    .line 658
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentCityId:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setOrderCityIdReal(Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public static setCurrentPoint(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter "latlng"

    .prologue
    .line 183
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->currentPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 184
    return-void
.end method

.method public static setEndAddress(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "endAddress"

    .prologue
    .line 130
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->endAddress:Lcom/didi/common/model/Address;

    .line 131
    return-void
.end method

.method public static setHomeAddress(Lcom/didi/common/model/Address;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 144
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->homeAddress:Lcom/didi/common/model/Address;

    .line 145
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setHomeAddr(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setHomeName(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setHomeLongitude(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setHomeLatitude(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static setHomeDisplayName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 152
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->homeAddress:Lcom/didi/common/model/Address;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/didi/common/model/Address;

    invoke-direct {v0}, Lcom/didi/common/model/Address;-><init>()V

    sput-object v0, Lcom/didi/common/helper/LocationHelper;->homeAddress:Lcom/didi/common/model/Address;

    .line 154
    :cond_0
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->homeAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v0, p0}, Lcom/didi/common/model/Address;->setName(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static setOnPushOpenBeatles(Z)V
    .locals 0
    .parameter "open"

    .prologue
    .line 478
    sput-boolean p0, Lcom/didi/common/helper/LocationHelper;->isOnPushOpenBeatles:Z

    .line 479
    return-void
.end method

.method public static setOnPushOpenCar(Z)V
    .locals 0
    .parameter "open"

    .prologue
    .line 474
    sput-boolean p0, Lcom/didi/common/helper/LocationHelper;->isOnPushOpenCar:Z

    .line 475
    return-void
.end method

.method public static setOrderCityId(Ljava/lang/String;)V
    .locals 2
    .parameter "orderCity"

    .prologue
    .line 440
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->orderCityId:Ljava/lang/String;

    .line 441
    .local v0, oldCity:Ljava/lang/String;
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->orderCityId:Ljava/lang/String;

    .line 442
    invoke-static {v0, p0}, Lcom/didi/common/util/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    sget-object v1, Lcom/didi/common/helper/LocationHelper;->orderCityId:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/didi/common/helper/LocationHelper;->notifyCityChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_0
    return-void
.end method

.method private static setOrderCityIdReal(Ljava/lang/String;)V
    .locals 2
    .parameter "orderCityid"

    .prologue
    .line 454
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->orderCityId:Ljava/lang/String;

    .line 455
    .local v0, oldCityid:Ljava/lang/String;
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->orderCityId:Ljava/lang/String;

    .line 456
    invoke-static {v0, p0}, Lcom/didi/common/util/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    sget-boolean v1, Lcom/didi/frame/MainActivity;->isFromHtml:Z

    if-eqz v1, :cond_1

    .line 459
    const/4 v1, 0x0

    sput-boolean v1, Lcom/didi/frame/MainActivity;->isFromHtml:Z

    .line 464
    :goto_0
    invoke-static {p0}, Lcom/didi/common/helper/LocationHelper;->setTaxiBottomStyle(Ljava/lang/String;)V

    .line 465
    sget-object v1, Lcom/didi/common/helper/LocationHelper;->orderCityId:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/didi/common/helper/LocationHelper;->notifyCityChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    return-void

    .line 461
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->seSwitchPannel()V

    goto :goto_0
.end method

.method public static setStartAddress(Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "startAddress"

    .prologue
    .line 122
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->startAddress:Lcom/didi/common/model/Address;

    .line 123
    return-void
.end method

.method private static setTaxiBottomStyle(Ljava/lang/String;)V
    .locals 5
    .parameter "orderCityId"

    .prologue
    const/4 v4, 0x1

    .line 484
    invoke-static {p0}, Lcom/didi/common/util/Utils;->getCityType(Ljava/lang/String;)I

    move-result v1

    .line 486
    .local v1, style:I
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getCreateOrderStyle()I

    move-result v0

    .line 487
    .local v0, se:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orderStyleServer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orderStyleLocal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_4

    .line 490
    if-ne v1, v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->isFirstBoot()Z

    move-result v2

    if-nez v2, :cond_2

    if-eq v1, v4, :cond_2

    if-ne v0, v4, :cond_3

    if-eq v1, v4, :cond_3

    .line 495
    :cond_2
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/common/config/Preferences;->setCreateOrderStyle(I)V

    .line 497
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orderStyleNew="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 498
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getCreateOrderStyle()I

    move-result v2

    invoke-static {v2}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->resetBottomStyle(I)V

    goto :goto_0

    .line 499
    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_5

    .line 500
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->checkBottomBarToCar()V

    goto :goto_0

    .line 501
    :cond_5
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 503
    invoke-static {}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->refreshTab()V

    goto :goto_0
.end method

.method public static shouldUpdateAddress()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 389
    sget-object v3, Lcom/didi/common/helper/LocationHelper;->lastModifiedAddress:Lcom/didi/common/model/Address;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/didi/common/helper/LocationHelper;->lastModifiedPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isOnlyUpdateName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    .local v0, distance:D
    :cond_0
    :goto_0
    return v2

    .line 391
    .end local v0           #distance:D
    :cond_1
    sget-object v3, Lcom/didi/common/helper/LocationHelper;->currentPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    sget-object v4, Lcom/didi/common/helper/LocationHelper;->lastModifiedPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-static {v3, v4}, Lcom/didi/map/MapController;->lineDistance(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v3

    float-to-double v0, v3

    .line 392
    .restart local v0       #distance:D
    const-wide/high16 v3, 0x4049

    cmpl-double v3, v0, v3

    if-gtz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static toLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 5

    .prologue
    .line 257
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method public static updateAddress(Lcom/didi/common/model/CommonHotDragAddress;)V
    .locals 3
    .parameter "commonHotDragAddress"

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/didi/common/model/CommonHotDragAddress;->getAddress4Location()Lcom/didi/common/model/Address;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/LocationHelper;->lastModifiedAddress:Lcom/didi/common/model/Address;

    .line 330
    iget-boolean v0, p0, Lcom/didi/common/model/CommonHotDragAddress;->isWanliuAvailable:Z

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->setCarAvailable(Z)V

    .line 332
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->checkFlierIsOpen()V

    .line 333
    invoke-static {}, Lcom/didi/ddrive/helper/DriveAbilityHelper;->checkDDriveIsOpen()V

    .line 334
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->checkTopicIsOpen()V

    .line 336
    iget-object v0, p0, Lcom/didi/common/model/CommonHotDragAddress;->city:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->updateCity(Ljava/lang/String;)V

    .line 337
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    invoke-virtual {v0}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    .line 338
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    sget-object v1, Lcom/didi/common/helper/LocationHelper;->currentPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 341
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    sget-object v1, Lcom/didi/common/helper/LocationHelper;->currentPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 343
    :cond_0
    return-void
.end method

.method public static updateAddressList(Lcom/didi/common/model/AddressList;)V
    .locals 3
    .parameter "list"

    .prologue
    .line 304
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->shouldUpdateAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isOnlyUpdateName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    invoke-virtual {v0}, Lcom/didi/common/model/AddressList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    invoke-virtual {v0}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/LocationHelper;->lastModifiedAddress:Lcom/didi/common/model/Address;

    .line 310
    :cond_2
    iget-boolean v0, p0, Lcom/didi/common/model/AddressList;->isWanliuAvailable:Z

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->setCarAvailable(Z)V

    .line 312
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->checkFlierIsOpen()V

    .line 313
    invoke-static {}, Lcom/didi/ddrive/helper/DriveAbilityHelper;->checkDDriveIsOpen()V

    .line 314
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->checkTopicIsOpen()V

    .line 316
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    .line 317
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    iget-object v0, v0, Lcom/didi/common/model/AddressList;->city:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->updateCity(Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->addressList:Lcom/didi/common/model/AddressList;

    invoke-virtual {v0}, Lcom/didi/common/model/AddressList;->peek()Lcom/didi/common/model/Address;

    move-result-object v0

    sput-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    .line 319
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    sget-object v1, Lcom/didi/common/helper/LocationHelper;->currentPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 322
    sget-object v0, Lcom/didi/common/helper/LocationHelper;->currentAddress:Lcom/didi/common/model/Address;

    sget-object v1, Lcom/didi/common/helper/LocationHelper;->currentPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    goto :goto_0
.end method

.method public static updateCity(Ljava/lang/String;)V
    .locals 5
    .parameter "city"

    .prologue
    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SwitcherCity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationHelper updateCity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 267
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-static {p0}, Lcom/didi/common/util/Utils;->getSimpleCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setCurrentCity(Ljava/lang/String;)V

    .line 271
    invoke-static {p0}, Lcom/didi/common/util/Utils;->getCityIdString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, cityId:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Not Found"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 273
    :cond_2
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v3, p0}, Lcom/didi/common/database/CityListHelper;->getCityByName(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v1

    .line 274
    .local v1, city2:Lcom/didi/common/model/City;
    if-eqz v1, :cond_3

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/didi/common/model/City;->cityID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .end local v1           #city2:Lcom/didi/common/model/City;
    :cond_3
    sput-object v2, Lcom/didi/common/helper/LocationHelper;->currentCityId:Ljava/lang/String;

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocationHelper updateCity ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/didi/common/helper/LocationHelper;->currentCityId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SwitcherCityId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 281
    sget-boolean v3, Lcom/didi/common/util/Constant;->isFromO2o:Z

    if-eqz v3, :cond_4

    .line 282
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 283
    .local v0, bun:Landroid/os/Bundle;
    const-string v3, "isFromO2O"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    const-string v3, "O2Ourl"

    sget-object v4, Lcom/didi/frame/O2OWebToActivity;->URL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/didi/frame/FragmentMgr;->showLoginFragment(Landroid/os/Bundle;)V

    .line 286
    const/4 v3, 0x0

    sput-boolean v3, Lcom/didi/common/util/Constant;->isFromO2o:Z

    goto/16 :goto_0

    .line 289
    .end local v0           #bun:Landroid/os/Bundle;
    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isBooking()Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    invoke-static {v2}, Lcom/didi/common/helper/LocationHelper;->setOrderCityIdReal(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static updateCurrentAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 254
    return-void
.end method

.method public static updateCurrentPoint(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter "latlng"

    .prologue
    .line 195
    sput-object p0, Lcom/didi/common/helper/LocationHelper;->currentPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 196
    return-void
.end method
