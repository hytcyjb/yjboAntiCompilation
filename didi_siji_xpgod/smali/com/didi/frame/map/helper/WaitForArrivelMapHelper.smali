.class public Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;
.super Ljava/lang/Object;
.source "WaitForArrivelMapHelper.java"


# static fields
.field public static mCompassListener:Lcom/didi/map/CompassManager$CompassListener;

.field public static mLocationListener:Lcom/didi/soso/location/LocationInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 438
    new-instance v0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$6;

    invoke-direct {v0}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$6;-><init>()V

    sput-object v0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    .line 451
    new-instance v0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$7;

    invoke-direct {v0}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$7;-><init>()V

    sput-object v0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->mCompassListener:Lcom/didi/map/CompassManager$CompassListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->addLocLog()V

    return-void
.end method

.method private static addLocLog()V
    .locals 8

    .prologue
    .line 371
    const-string v1, ""

    .line 372
    .local v1, oid:Ljava/lang/String;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v2

    .line 373
    .local v2, send:Lcom/didi/frame/Sendable;
    if-eqz v2, :cond_0

    .line 374
    invoke-interface {v2}, Lcom/didi/frame/Sendable;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 375
    :cond_0
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    .line 376
    .local v0, con:Lcom/didi/soso/location/LocationController;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->isLog()Z

    move-result v3

    if-nez v3, :cond_2

    .line 381
    :cond_1
    :goto_0
    return-void

    .line 378
    :cond_2
    const-string v3, "LocationLog"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[GPSSource="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getProvider()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][Acurracy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getAccuracy()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][Speed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getSpeed()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][Direction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getBearing()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][Oid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addMapListener()V
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    invoke-static {v0}, Lcom/didi/soso/location/ListenerCollection;->addLocationLister(Lcom/didi/soso/location/LocationInterface;)V

    .line 397
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->registerCompssListener()V

    .line 398
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setLocatioMargin()V

    .line 399
    return-void
.end method

.method public static getNewRealtimeClickListener(Lcom/didi/car/model/CarOrderNewRealtimeCount;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "newRealtimeCount"

    .prologue
    .line 198
    new-instance v0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$2;-><init>(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V

    return-object v0
.end method

.method public static getRealtimeClickListener(Lcom/didi/car/model/CarOrderRealtimeCount;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "realtimeCount"

    .prologue
    .line 184
    new-instance v0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$1;-><init>(Lcom/didi/car/model/CarOrderRealtimeCount;)V

    return-object v0
.end method

.method public static isAvalibleLatLng()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    .line 339
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v4

    .line 340
    .local v4, send:Lcom/didi/frame/Sendable;
    if-nez v4, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v8

    .line 342
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v5

    .line 343
    .local v5, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    .line 344
    .local v1, end:Lcom/didi/common/model/Address;
    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {v5}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v10

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    invoke-virtual {v5}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v10

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v10

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v10

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    .line 349
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v10

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getArea()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/didi/common/database/CityListHelper;->getCityById(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v0

    .line 350
    .local v0, city:Lcom/didi/common/model/City;
    const/4 v2, 0x0

    .local v2, flat:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, flng:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, tlat:Ljava/lang/String;
    const/4 v7, 0x0

    .line 351
    .local v7, tlng:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 352
    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getCity()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/Utils;->getCityLat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getCity()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/didi/common/util/Utils;->getCityLng(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 359
    :goto_1
    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    move v8, v9

    .line 360
    goto :goto_0

    .line 355
    :cond_3
    iget-object v2, v0, Lcom/didi/common/model/City;->cityLat:Ljava/lang/String;

    .line 356
    iget-object v3, v0, Lcom/didi/common/model/City;->cityLng:Ljava/lang/String;

    goto :goto_1

    .line 362
    :cond_4
    move-object v6, v2

    .line 363
    move-object v7, v3

    .line 364
    iget-object v10, v5, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v5, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v1, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v1, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_5
    move v8, v9

    .line 366
    goto/16 :goto_0
.end method

.method public static registerCompssListener()V
    .locals 3

    .prologue
    .line 422
    new-instance v0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$5;

    invoke-direct {v0}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$5;-><init>()V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    return-void
.end method

.method public static removeBookingRoute()V
    .locals 0

    .prologue
    .line 248
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeStartMarker()V

    .line 249
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeEndMarker()V

    .line 250
    invoke-static {}, Lcom/didi/map/MapController;->removeRoute()V

    .line 251
    return-void
.end method

.method public static removeMapListener()V
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    invoke-static {v0}, Lcom/didi/soso/location/ListenerCollection;->removeLocationListener(Lcom/didi/soso/location/LocationInterface;)V

    .line 416
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->unregisterCompassListener()V

    .line 417
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->defaultLocationMargin()V

    .line 418
    return-void
.end method

.method public static resetMap()V
    .locals 0

    .prologue
    .line 385
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 386
    invoke-static {}, Lcom/didi/map/MapController;->resetMap()V

    .line 387
    invoke-static {}, Lcom/didi/map/MapController;->setMapNorth()V

    .line 388
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCarPoolRoutePointsMarker()V

    .line 389
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCarPoolPriceMarker()V

    .line 390
    return-void
.end method

.method public static setBookingMapViewZoom(DD)V
    .locals 8
    .parameter "flat"
    .parameter "flng"

    .prologue
    .line 273
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->isAvalibleLatLng()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    move-wide v4, p0

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/didi/map/MapController;->zoomCenterWithTwoMarkers(DDDD)V

    .line 276
    :cond_0
    return-void
.end method

.method private static setLocatioMargin()V
    .locals 3

    .prologue
    .line 402
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    .line 403
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->highLocationMargin()V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 407
    :cond_2
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/didi/soso/location/LocationController;->setLocationMargin(J)V

    goto :goto_0
.end method

.method public static setMapCenterByPoint(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 317
    new-instance v0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$3;-><init>(DD)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method

.method public static setMapCenterByPointNotZoom(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 328
    new-instance v0, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper$4;-><init>(DD)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method

.method public static setMapClick(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 59
    return-void
.end method

.method public static setMapViewZoom(DDDD)V
    .locals 1
    .parameter "flat"
    .parameter "flng"
    .parameter "tlat"
    .parameter "tlng"

    .prologue
    .line 264
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->isAvalibleLatLng()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static/range {p0 .. p7}, Lcom/didi/map/MapController;->zoomCenterWithTwoMarkers(DDDD)V

    .line 266
    :cond_0
    return-void
.end method

.method public static setRealtimeMapViewZoom(DD)V
    .locals 8
    .parameter "flat"
    .parameter "flng"

    .prologue
    const-wide/16 v1, 0x0

    .line 282
    cmpl-double v0, p0, v1

    if-eqz v0, :cond_0

    cmpl-double v0, p2, v1

    if-nez v0, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    move-wide v4, p0

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/didi/map/MapController;->zoomCenterWithTwoMarkers(DDDD)V

    goto :goto_0
.end method

.method public static setWaitForArrivalMapViewZoom(DD)V
    .locals 10
    .parameter "flat"
    .parameter "flng"

    .prologue
    const-wide/16 v8, 0x0

    .line 292
    cmpl-double v3, p0, v8

    if-eqz v3, :cond_0

    cmpl-double v3, p2, v8

    if-nez v3, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v2, listLatLng:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 299
    .local v0, centerLat:Ljava/lang/Double;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 300
    .local v1, centerLng:Ljava/lang/Double;
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 303
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v3

    cmpl-double v3, v3, v8

    if-lez v3, :cond_2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v3

    cmpl-double v3, v3, v8

    if-lez v3, :cond_2

    .line 304
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 305
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 306
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_2
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x3f50624dd2f1a9fcL

    add-double/2addr v4, v6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-static {v2, v3}, Lcom/didi/map/ZoomManager;->zoomToSpanForSmooth(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto/16 :goto_0
.end method

.method public static show3DMap()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public static showCarArrivedMarker(DDLjava/lang/String;)V
    .locals 7
    .parameter "lat"
    .parameter "lng"
    .parameter "title"

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArrivelMap CarArrived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushDistanceMarker()V

    .line 142
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isLoadingMarkerRemove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 144
    const v5, 0x7f0201ae

    const/4 v6, 0x6

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/didi/map/marker/MarkerController;->setLoadingMarker(DDLjava/lang/String;II)V

    .line 153
    :goto_0
    return-void

    .line 147
    :cond_0
    const v5, 0x7f0202e9

    const/4 v6, 0x3

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/didi/map/marker/MarkerController;->setLoadingMarker(DDLjava/lang/String;II)V

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/didi/map/marker/MarkerController;->updateLoadingMarker(DD)V

    goto :goto_0
.end method

.method public static showDistanceMarker(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "lat"
    .parameter "lng"
    .parameter "distance"
    .parameter "time"

    .prologue
    const v3, 0x7f020187

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushDistanceDistacne="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeLoadindMarker()V

    .line 96
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTimeDownMarker()V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrivelMap Distance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 98
    sget-boolean v1, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v1, :cond_6

    .line 99
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_2

    .line 100
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isPushDistanceMarkerRemove()Z

    move-result v0

    .line 101
    .local v0, flag:Z
    if-eqz v0, :cond_1

    .line 102
    invoke-static {p0, p1, p2, p3, v3}, Lcom/didi/map/marker/MarkerController;->setPushDistanceMarker(DDI)V

    .line 106
    :goto_0
    invoke-static {p4, p5}, Lcom/didi/map/marker/MarkerController;->updatePushDistanceTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v0           #flag:Z
    :cond_0
    :goto_1
    return-void

    .line 104
    .restart local v0       #flag:Z
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/didi/map/marker/MarkerController;->updatePushDistanceMarkerPos(DD)V

    goto :goto_0

    .line 109
    .end local v0           #flag:Z
    :cond_2
    invoke-static {p4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    invoke-static {p4}, Lcom/didi/common/util/Utils;->getFormattedDistance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 112
    :cond_3
    invoke-static {p5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const-string v1, "0"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "0.0"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 115
    :cond_4
    const-string p5, "1"

    .line 117
    :cond_5
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    const v2, 0x7f0b0400

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v3, v4

    const/4 v4, 0x1

    aput-object p5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarkerBubble(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_6
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isPushDistanceMarkerRemove()Z

    move-result v0

    .line 121
    .restart local v0       #flag:Z
    if-eqz v0, :cond_b

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrivelMap Distance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_8

    .line 124
    const v1, 0x7f0202f7

    invoke-static {p0, p1, p2, p3, v1}, Lcom/didi/map/marker/MarkerController;->setPushDistanceMarker(DDI)V

    .line 133
    :cond_7
    :goto_2
    invoke-static {p4, p5}, Lcom/didi/map/marker/MarkerController;->updatePushDistanceTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_8
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v1, v2, :cond_9

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_a

    .line 126
    :cond_9
    const v1, 0x7f0202e9

    invoke-static {p0, p1, p2, p3, v1}, Lcom/didi/map/marker/MarkerController;->setPushDistanceMarker(DDI)V

    goto :goto_2

    .line 127
    :cond_a
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_7

    .line 128
    invoke-static {p0, p1, p2, p3, v3}, Lcom/didi/map/marker/MarkerController;->setPushDistanceMarker(DDI)V

    goto :goto_2

    .line 131
    :cond_b
    invoke-static {p0, p1, p2, p3}, Lcom/didi/map/marker/MarkerController;->updatePushDistanceMarkerPos(DD)V

    goto :goto_2
.end method

.method public static showDriveArrivedMarker(DDLjava/lang/String;)V
    .locals 7
    .parameter "lat"
    .parameter "lng"
    .parameter "title"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArrivelMap DriveArrived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushDistanceMarker()V

    .line 159
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isLoadingMarkerRemove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 161
    const v5, 0x7f020187

    const/16 v6, 0x8

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/didi/map/marker/MarkerController;->setLoadingMarker(DDLjava/lang/String;II)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/didi/map/marker/MarkerController;->updateLoadingMarker(DD)V

    goto :goto_0
.end method

.method public static showDriveWaitMarker(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;DDZ)V
    .locals 0
    .parameter "waitFee"
    .parameter "lat"
    .parameter "lng"
    .parameter "isUpdateLocation"

    .prologue
    .line 239
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushDistanceMarker()V

    .line 240
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeLoadindMarker()V

    .line 242
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCommonMarker()V

    .line 243
    invoke-static/range {p0 .. p5}, Lcom/didi/map/marker/MarkerController;->setDriveWaitMarker(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;DDZ)V

    .line 244
    return-void
.end method

.method public static showMapLoadingMaker()V
    .locals 7

    .prologue
    .line 63
    const-string v0, "h,m="

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    const v4, 0x7f0b02f9

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0201c3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/didi/map/marker/MarkerController;->setLoadingMarker(DDLjava/lang/String;II)V

    .line 68
    return-void
.end method

.method public static showMyLocationMarker()V
    .locals 6

    .prologue
    .line 72
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTimeDownMarker()V

    .line 73
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushDriveTimeMarker()V

    .line 74
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 75
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/marker/MarkerController;->updateSimpleMarker(DD)V

    .line 76
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isBooking()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    .line 78
    .local v0, send:Lcom/didi/frame/Sendable;
    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v1

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v3

    const v5, 0x7f020253

    invoke-static {v1, v2, v3, v4, v5}, Lcom/didi/map/marker/MarkerController;->setCommonMarker(DDI)V

    goto :goto_0
.end method

.method public static showRealtimeMarker(Lcom/didi/car/model/CarOrderNewRealtimeCount;Z)V
    .locals 3
    .parameter "real"
    .parameter "isUpdateLocation"

    .prologue
    .line 213
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v1, v2}, Lcom/didi/soso/location/LocationController;->setLocationMargin(J)V

    .line 214
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushDistanceMarker()V

    .line 215
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeLoadindMarker()V

    .line 216
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeSimpleMarker()V

    .line 217
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCommonMarker()V

    .line 218
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-static {p0}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->getNewRealtimeClickListener(Lcom/didi/car/model/CarOrderNewRealtimeCount;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarkerBubble(Lcom/didi/car/model/CarOrderNewRealtimeCount;Landroid/view/View$OnClickListener;)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {p0, p1}, Lcom/didi/map/marker/MarkerController;->setLiveValuatingMarker(Lcom/didi/car/model/CarOrderNewRealtimeCount;Z)V

    goto :goto_0
.end method

.method public static showRealtimeMarker(Lcom/didi/car/model/CarOrderRealtimeCount;Z)V
    .locals 3
    .parameter "real"
    .parameter "isUpdateLocation"

    .prologue
    .line 171
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v1, v2}, Lcom/didi/soso/location/LocationController;->setLocationMargin(J)V

    .line 172
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushDistanceMarker()V

    .line 173
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeLoadindMarker()V

    .line 174
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeSimpleMarker()V

    .line 175
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCommonMarker()V

    .line 176
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-static {p0}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->getRealtimeClickListener(Lcom/didi/car/model/CarOrderRealtimeCount;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarkerBubble(Lcom/didi/car/model/CarOrderRealtimeCount;Landroid/view/View$OnClickListener;)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {p0, p1}, Lcom/didi/map/marker/MarkerController;->setLiveValuatingMarker(Lcom/didi/car/model/CarOrderRealtimeCount;Z)V

    goto :goto_0
.end method

.method public static showRealtimeMarker(Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;DDZ)V
    .locals 3
    .parameter "event"
    .parameter "lat"
    .parameter "lng"
    .parameter "isUpdateLocation"

    .prologue
    .line 228
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, v1, v2}, Lcom/didi/soso/location/LocationController;->setLocationMargin(J)V

    .line 229
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushDistanceMarker()V

    .line 230
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeLoadindMarker()V

    .line 231
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeSimpleMarker()V

    .line 232
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCommonMarker()V

    .line 233
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDriveWaitMarker()V

    .line 234
    invoke-static/range {p0 .. p5}, Lcom/didi/map/marker/MarkerController;->setLiveValuatingMarker(Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;DDZ)V

    .line 235
    return-void
.end method

.method public static showStartEndMarkerAndLine(Ljava/lang/String;DDDD)V
    .locals 1
    .parameter "city"
    .parameter "flat"
    .parameter "flng"
    .parameter "tlat"
    .parameter "tlng"

    .prologue
    .line 255
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->isAvalibleLatLng()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/didi/map/marker/MarkerController;->setStartMarker(DD)V

    .line 258
    invoke-static {p5, p6, p7, p8}, Lcom/didi/map/marker/MarkerController;->setEndMarker(DD)V

    .line 259
    invoke-static/range {p0 .. p8}, Lcom/didi/map/MapController;->addRoute(Ljava/lang/String;DDDD)V

    goto :goto_0
.end method

.method public static showTimeDownMarker(II)V
    .locals 6
    .parameter "h"
    .parameter "m"

    .prologue
    .line 86
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeLoadindMarker()V

    .line 87
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeSimpleMarker()V

    .line 88
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCommonMarker()V

    .line 89
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    move v4, p0

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/didi/map/marker/MarkerController;->setTimeDownMarker(DDII)V

    .line 90
    return-void
.end method

.method public static unregisterCompassListener()V
    .locals 1

    .prologue
    .line 434
    const-string v0, "stopCompass"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/didi/map/MapController;->stopCompass()V

    .line 436
    return-void
.end method
