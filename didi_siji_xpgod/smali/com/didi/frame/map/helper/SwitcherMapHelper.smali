.class public Lcom/didi/frame/map/helper/SwitcherMapHelper;
.super Ljava/lang/Object;
.source "SwitcherMapHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLatLng(Lcom/didi/common/model/Address;Lcom/didi/common/model/Address;)Z
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    .line 508
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v2

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v3

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v3

    cmpl-double v3, v3, v5

    if-nez v3, :cond_3

    .line 517
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v3

    invoke-interface {v3}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v3

    iget-object v0, v3, Lcom/didi/common/model/CommonAttributes;->city:Ljava/lang/String;

    .line 518
    .local v0, city:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SwitcherMap1City="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 519
    invoke-static {v0}, Lcom/didi/common/util/Utils;->getLatLngByCity(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    .line 520
    .local v1, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SwitcherMap1Latlng="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0, v1}, Lcom/didi/common/model/Address;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 522
    invoke-static {v0}, Lcom/didi/common/util/Utils;->getLatLngByCity(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/didi/common/model/Address;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0

    .line 525
    .end local v0           #city:Ljava/lang/String;
    .end local v1           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static clearMap()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/didi/map/MapController;->resetMap()V

    .line 42
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->resetNearDrivers()V

    .line 43
    return-void
.end method

.method public static confirmToWaitMapView()V
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_0

    .line 250
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 256
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTextFareMarker()V

    .line 253
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTextOrderMarker()V

    .line 254
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTextSimpleFareMarker()V

    goto :goto_0
.end method

.method public static endBusinessMap()V
    .locals 0

    .prologue
    .line 47
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterDriversLocationMessageListener()V

    .line 48
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDriverArrivalMarker()V

    .line 49
    invoke-static {}, Lcom/didi/map/MapController;->resetMap()V

    .line 50
    invoke-static {}, Lcom/didi/map/MapController;->setMapNorth()V

    .line 51
    return-void
.end method

.method private static getEndLatlng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    if-nez v1, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :goto_0
    return-object v0

    .line 87
    .end local v0           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 88
    .restart local v0       #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    goto :goto_0
.end method

.method private static getLegalLatLng(Lcom/didi/common/model/Address;Lcom/didi/common/model/Address;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 10
    .parameter "start"
    .parameter "end"

    .prologue
    const-wide/high16 v8, 0x4000

    const-wide/16 v6, 0x0

    .line 497
    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v4

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 498
    :cond_0
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 502
    :goto_0
    return-object v4

    .line 500
    :cond_1
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double v0, v4, v8

    .line 501
    .local v0, lat:D
    invoke-virtual {p0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double v2, v4, v8

    .line 502
    .local v2, lng:D
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    goto :goto_0
.end method

.method private static getStartLatlng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    if-nez v1, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :goto_0
    return-object v0

    .line 79
    .end local v0           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 80
    .restart local v0       #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    goto :goto_0
.end method

.method public static resendToWaitMapView()V
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_0

    .line 208
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTextOrderMarker()V

    .line 209
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeVoiceMarker()V

    .line 210
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTextSimpleFareMarker()V

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    goto :goto_0
.end method

.method private static setStartEndRoute()V
    .locals 12

    .prologue
    .line 324
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v11

    .line 325
    .local v11, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v9

    .line 326
    .local v9, end:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, city:Ljava/lang/String;
    invoke-static {v11, v9}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->checkLatLng(Lcom/didi/common/model/Address;Lcom/didi/common/model/Address;)Z

    move-result v10

    .line 328
    .local v10, flag:Z
    if-eqz v10, :cond_0

    .line 329
    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v1

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/marker/MarkerController;->setStartMarker(DD)V

    .line 330
    invoke-virtual {v9}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v1

    invoke-virtual {v9}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/marker/MarkerController;->setEndMarker(DD)V

    .line 331
    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v1

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v3

    invoke-virtual {v9}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v5

    invoke-virtual {v9}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/didi/map/MapController;->addRoute(Ljava/lang/String;DDDD)V

    .line 333
    :cond_0
    return-void
.end method

.method private static showBookWaitPushMarker(Lcom/didi/frame/Sendable;)V
    .locals 7
    .parameter "sendable"

    .prologue
    .line 311
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->showBookingDrivers()V

    .line 312
    invoke-interface {p0}, Lcom/didi/frame/Sendable;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v2

    .line 313
    .local v2, start:Lcom/didi/common/model/Address;
    invoke-interface {p0}, Lcom/didi/frame/Sendable;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 314
    .local v0, end:Lcom/didi/common/model/Address;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-static {v2, v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->getLegalLatLng(Lcom/didi/common/model/Address;Lcom/didi/common/model/Address;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    .line 317
    .local v1, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-wide v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v5, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v3, v4, v5, v6}, Lcom/didi/map/marker/MarkerController;->setPushCarsMarker(DD)V

    .line 318
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->hidePushCarsMarker()V

    .line 319
    invoke-static {p0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->zoomMapWithMarkers(Lcom/didi/frame/Sendable;)V

    goto :goto_0
.end method

.method public static showConfirmMapView(Z)V
    .locals 3
    .parameter "showDrivers"

    .prologue
    .line 231
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isDepartMakerRemove()Z

    move-result v0

    .line 232
    .local v0, flag:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "departMarker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 233
    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDepartMarker()V

    .line 235
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isBooking()Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    invoke-static {p0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showRealtimePoup(Z)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateBooking(Z)V

    goto :goto_0
.end method

.method public static showMapBookingView(Z)V
    .locals 10
    .parameter "isclick"

    .prologue
    .line 457
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->showBookingDrivers()V

    .line 458
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v6

    .line 459
    .local v6, send:Lcom/didi/frame/Sendable;
    invoke-interface {v6}, Lcom/didi/frame/Sendable;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v7

    .line 460
    .local v7, start:Lcom/didi/common/model/Address;
    invoke-interface {v6}, Lcom/didi/frame/Sendable;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 461
    .local v0, end:Lcom/didi/common/model/Address;
    if-eqz v7, :cond_0

    if-nez v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v8

    const v9, 0x7f050016

    invoke-virtual {v8, v9}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 464
    invoke-static {v7, v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->getLegalLatLng(Lcom/didi/common/model/Address;Lcom/didi/common/model/Address;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    .line 465
    .local v3, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-wide v1, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    .line 466
    .local v1, lat:D
    iget-wide v4, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    .line 467
    .local v4, lng:D
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v8

    sget-object v9, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v8, v9, :cond_3

    .line 468
    if-eqz p0, :cond_2

    .line 469
    invoke-static {v1, v2, v4, v5}, Lcom/didi/map/marker/MarkerController;->setTextOrderUnMarker(DD)V

    .line 472
    :goto_1
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->hideTextOrderMarker()V

    goto :goto_0

    .line 471
    :cond_2
    invoke-static {v1, v2, v4, v5}, Lcom/didi/map/marker/MarkerController;->setTextOrderMarker(DD)V

    goto :goto_1

    .line 473
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v8

    sget-object v9, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v8, v9, :cond_4

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v8

    sget-object v9, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v8, v9, :cond_0

    .line 476
    :cond_4
    invoke-static {v1, v2, v4, v5}, Lcom/didi/map/marker/MarkerController;->setTextFareMarker(DD)V

    .line 477
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->hideTextFareMarker()V

    goto :goto_0
.end method

.method private static showRealtimePoup(Z)V
    .locals 13
    .parameter "showDrivers"

    .prologue
    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    .line 363
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isMyMarkerRemove()Z

    move-result v6

    if-nez v6, :cond_0

    .line 364
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 366
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v5

    .line 367
    .local v5, send:Lcom/didi/frame/Sendable;
    if-nez v5, :cond_2

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 370
    :cond_2
    if-eqz p0, :cond_3

    .line 371
    sget-boolean v6, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-nez v6, :cond_8

    .line 372
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_5

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMaxZoomLevel()F

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/didi/common/helper/DriversHelper;->showTaxiDriversWithZoom(Ljava/lang/String;Ljava/lang/String;F)V

    .line 392
    :cond_3
    :goto_1
    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    .line 393
    .local v1, common:Lcom/didi/common/model/CommonAttributes;
    if-eqz v1, :cond_1

    .line 395
    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    .line 396
    .local v3, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-nez v3, :cond_4

    .line 397
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    .line 398
    :cond_4
    if-eqz v3, :cond_1

    .line 401
    const/4 v2, 0x0

    .line 402
    .local v2, draw:I
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 403
    const v2, 0x7f020253

    .line 408
    :goto_2
    iget-object v6, v1, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    sget-object v7, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    if-eq v6, v7, :cond_e

    .line 409
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_c

    .line 410
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->hasStartAddressSelected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 411
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setTextOrderMarker(DDI)V

    goto/16 :goto_0

    .line 375
    .end local v1           #common:Lcom/didi/common/model/CommonAttributes;
    .end local v2           #draw:I
    .end local v3           #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_5
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_6

    .line 376
    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/didi/car/helper/CarDriversHelper;->showCarDriversWithZoomAndCarType(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 377
    :cond_6
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_7

    .line 378
    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/didi/car/helper/CarDriversHelper;->showCarDriversWithZoomAndCarType(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 379
    :cond_7
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_3

    .line 380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMaxZoomLevel()F

    move-result v8

    sub-float/2addr v8, v12

    invoke-static {v6, v7, v8}, Lcom/didi/common/helper/DriversHelper;->showDDriveDriversWithZoom(Ljava/lang/String;Ljava/lang/String;F)V

    goto/16 :goto_1

    .line 383
    :cond_8
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_9

    .line 384
    invoke-static {v11}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDriversOnce(I)V

    goto/16 :goto_1

    .line 385
    :cond_9
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v6, v7, :cond_a

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_3

    :cond_a
    move-object v4, v5

    .line 386
    check-cast v4, Lcom/didi/car/model/CarOrder;

    .line 387
    .local v4, order:Lcom/didi/car/model/CarOrder;
    invoke-virtual {v4}, Lcom/didi/car/model/CarOrder;->getCarLevel()I

    move-result v0

    .line 388
    .local v0, carLevel:I
    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDriversOnce(I)V

    goto/16 :goto_1

    .line 405
    .end local v0           #carLevel:I
    .end local v4           #order:Lcom/didi/car/model/CarOrder;
    .restart local v1       #common:Lcom/didi/common/model/CommonAttributes;
    .restart local v2       #draw:I
    .restart local v3       #latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_b
    const v2, 0x7f0201c2

    goto/16 :goto_2

    .line 418
    :cond_c
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_d

    .line 419
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setTextSimpleFareMarker(DDI)V

    .line 420
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_1

    .line 421
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMaxZoomLevel()F

    move-result v10

    sub-float/2addr v10, v12

    invoke-static {v6, v7, v8, v9, v10}, Lcom/didi/map/MapController;->setMapCenterZoom(DDF)V

    goto/16 :goto_0

    .line 425
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "wanliu_txt_call_confirm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 426
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setTextFareMarker(DDI)V

    goto/16 :goto_0

    .line 429
    :cond_e
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_10

    .line 430
    const-string v6, "vc_record_confirm"

    new-array v7, v11, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 431
    if-eqz v3, :cond_f

    .line 432
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setVoiceMarker(DDI)V

    goto/16 :goto_0

    .line 434
    :cond_f
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/config/Preferences;->getLatitudeString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/config/Preferences;->getLongitudeString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setVoiceMarker(DDI)V

    goto/16 :goto_0

    .line 439
    :cond_10
    if-eqz v3, :cond_11

    .line 440
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setVoiceFareMarker(DDI)V

    goto/16 :goto_0

    .line 442
    :cond_11
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/config/Preferences;->getLatitudeString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/didi/common/config/Preferences;->getLongitudeString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setVoiceFareMarker(DDI)V

    goto/16 :goto_0
.end method

.method public static showResendMapView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 93
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v5

    .line 94
    .local v5, sendable:Lcom/didi/frame/Sendable;
    if-nez v5, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v6

    invoke-interface {v6}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    .line 97
    .local v1, common:Lcom/didi/common/model/CommonAttributes;
    if-eqz v1, :cond_0

    .line 99
    iget-object v6, v1, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    sget-object v7, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v6, v7, :cond_2

    .line 100
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->updateBooking(Z)V

    goto :goto_0

    .line 103
    :cond_2
    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    .line 104
    .local v3, latlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-eqz v3, :cond_0

    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, draw:I
    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getUseDepart()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 110
    const v2, 0x7f020253

    .line 116
    :goto_1
    sget-boolean v6, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v6, :cond_3

    .line 117
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_5

    .line 118
    invoke-static {v10}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDriversOnce(I)V

    .line 126
    :cond_3
    :goto_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_8

    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/didi/common/helper/DriversHelper;->showTaxiDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    iget-object v6, v1, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    sget-object v7, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    if-eq v6, v7, :cond_7

    .line 129
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setTextOrderUnMarker(DDI)V

    goto :goto_0

    .line 113
    :cond_4
    const v2, 0x7f0201c2

    goto :goto_1

    .line 119
    :cond_5
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v6, v7, :cond_6

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_3

    :cond_6
    move-object v4, v5

    .line 120
    check-cast v4, Lcom/didi/car/model/CarOrder;

    .line 121
    .local v4, order:Lcom/didi/car/model/CarOrder;
    invoke-virtual {v4}, Lcom/didi/car/model/CarOrder;->getCarLevel()I

    move-result v0

    .line 122
    .local v0, carLevel:I
    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDriversOnce(I)V

    goto :goto_2

    .line 131
    .end local v0           #carLevel:I
    .end local v4           #order:Lcom/didi/car/model/CarOrder;
    :cond_7
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setVoiceMarker(DDI)V

    goto/16 :goto_0

    .line 133
    :cond_8
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_a

    .line 134
    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/didi/car/helper/CarDriversHelper;->showCarDriversWithZoomAndCarType(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v6, v1, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    sget-object v7, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    if-eq v6, v7, :cond_9

    .line 136
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setTextFareMarker(DDI)V

    goto/16 :goto_0

    .line 138
    :cond_9
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setVoiceFareMarker(DDI)V

    goto/16 :goto_0

    .line 140
    :cond_a
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_c

    .line 141
    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/didi/car/helper/CarDriversHelper;->showCarDriversWithZoomAndCarType(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v6, v1, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    sget-object v7, Lcom/didi/frame/business/InputType;->Voice:Lcom/didi/frame/business/InputType;

    if-eq v6, v7, :cond_b

    .line 143
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setTextFareMarker(DDI)V

    goto/16 :goto_0

    .line 145
    :cond_b
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setVoiceFareMarker(DDI)V

    goto/16 :goto_0

    .line 147
    :cond_c
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v6

    sget-object v7, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v6, v7, :cond_0

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/didi/common/helper/DriversHelper;->showDDriveDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    iget-wide v6, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v6, v7, v8, v9, v2}, Lcom/didi/map/marker/MarkerController;->setTextSimpleFareMarker(DDI)V

    goto/16 :goto_0
.end method

.method public static showViewByDrivers()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 55
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_2

    .line 56
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->getTaxiBookingDrivers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/map/marker/MarkerController;->setTaxiDriverMarkerList(Ljava/util/ArrayList;)V

    .line 62
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->getStartLatlng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 63
    .local v0, f:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->getEndLatlng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    .line 64
    .local v1, t:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-wide v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    iget-wide v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    .line 65
    iget-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 66
    iget-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/didi/map/marker/MarkerController;->setStartMarker(DD)V

    .line 67
    iget-wide v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/didi/map/marker/MarkerController;->setEndMarker(DD)V

    .line 73
    :cond_1
    :goto_1
    return-void

    .line 57
    .end local v0           #f:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .end local v1           #t:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_3

    .line 58
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->getCarBookingDrivers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/map/marker/MarkerController;->setCarDriverMarkerList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 60
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->getFlierBookingDrivers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/map/marker/MarkerController;->setFlierDriverMarkerList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 69
    .restart local v0       #f:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .restart local v1       #t:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_4
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-wide v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_5

    iget-wide v2, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    .line 70
    :cond_5
    iget-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/didi/map/marker/MarkerController;->setStartMarker(DD)V

    .line 71
    iget-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->getTaxiBookingDrivers()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/didi/map/MapController;->zoomCenterWithTaxiDrivers(DDLjava/util/ArrayList;)V

    goto :goto_1
.end method

.method public static showWaitMapView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 260
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 261
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v4

    .line 262
    .local v4, sendable:Lcom/didi/frame/Sendable;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MapHelperSendable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 264
    if-eqz v4, :cond_0

    .line 265
    invoke-interface {v4}, Lcom/didi/frame/Sendable;->isBooking()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDepartMarker()V

    .line 267
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->setStartEndRoute()V

    .line 268
    invoke-static {v4}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showBookWaitPushMarker(Lcom/didi/frame/Sendable;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    sget-boolean v5, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-nez v5, :cond_7

    .line 272
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v5, v6, :cond_4

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lcom/didi/common/helper/DriversHelper;->showTaxiDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 295
    :cond_2
    :goto_1
    const v1, 0x7f0201c2

    .line 296
    .local v1, draw:I
    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getUseDepart()Z

    move-result v2

    .line 297
    .local v2, isd:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MapHelperIsd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 298
    if-eqz v2, :cond_3

    .line 299
    const v1, 0x7f020253

    .line 300
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v5, v6, :cond_b

    .line 301
    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v5

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, v1}, Lcom/didi/map/marker/MarkerController;->setPushDriveTimeMarker(DDI)V

    goto :goto_0

    .line 274
    .end local v1           #draw:I
    .end local v2           #isd:Z
    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v5, v6, :cond_5

    .line 275
    sget-object v5, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/didi/car/helper/CarDriversHelper;->showCarDriversWithZoomAndCarType(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :cond_5
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v5, v6, :cond_6

    .line 277
    sget-object v5, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/didi/car/helper/CarDriversHelper;->showCarDriversWithZoomAndCarType(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 278
    :cond_6
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v5, v6, :cond_2

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lcom/didi/common/helper/DriversHelper;->showDDriveDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 282
    :cond_7
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v5, v6, :cond_8

    .line 283
    invoke-static {v9}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDriversOnce(I)V

    goto/16 :goto_1

    .line 284
    :cond_8
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v5, v6, :cond_9

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v5, v6, :cond_a

    :cond_9
    move-object v3, v4

    .line 285
    check-cast v3, Lcom/didi/car/model/CarOrder;

    .line 286
    .local v3, order:Lcom/didi/car/model/CarOrder;
    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getCarLevel()I

    move-result v0

    .line 287
    .local v0, carLevel:I
    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDriversOnce(I)V

    goto/16 :goto_1

    .line 288
    .end local v0           #carLevel:I
    .end local v3           #order:Lcom/didi/car/model/CarOrder;
    :cond_a
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v5, v6, :cond_2

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v9}, Lcom/didi/common/helper/DriversHelper;->showDDriveDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 303
    .restart local v1       #draw:I
    .restart local v2       #isd:Z
    :cond_b
    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v5

    invoke-interface {v4}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8, v1}, Lcom/didi/map/marker/MarkerController;->setPushCarsMarker(DDI)V

    goto/16 :goto_0
.end method

.method public static switchOnConfirmMapView(Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V
    .locals 0
    .parameter "currentIndex"
    .parameter "targetIndex"

    .prologue
    .line 244
    invoke-static {p0, p1}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->switchOnResendMapView(Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V

    .line 245
    return-void
.end method

.method public static switchOnResendMapView(Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V
    .locals 2
    .parameter "currentIndex"
    .parameter "targetIndex"

    .prologue
    .line 217
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_0

    .line 220
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 223
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTextOrderMarker()V

    .line 224
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTextFareMarker()V

    .line 225
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTextSimpleFareMarker()V

    goto :goto_0
.end method

.method public static switchOnWaitMapView(Lcom/didi/frame/business/redirector/Index;Lcom/didi/frame/business/redirector/Index;)V
    .locals 2
    .parameter "currentIndex"
    .parameter "targetIndex"

    .prologue
    .line 352
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_0

    .line 353
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 359
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 356
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushCarMarker()V

    .line 357
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushDriveTimeMarker()V

    goto :goto_0
.end method

.method public static updateBooking(Z)V
    .locals 2
    .parameter "isclick"

    .prologue
    .line 192
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_1

    .line 193
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_2

    .line 194
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearTaxiBookingDrivers()V

    .line 199
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->setStartEndRoute()V

    .line 200
    invoke-static {p0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showMapBookingView(Z)V

    .line 201
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->zoomMapWithMarkers(Lcom/didi/frame/Sendable;)V

    .line 203
    :cond_1
    return-void

    .line 195
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_3

    .line 196
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearCarBookingDrivers()V

    goto :goto_0

    .line 197
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 198
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearFlierBookingDrivers()V

    goto :goto_0
.end method

.method public static updateFare(Lcom/didi/common/model/MarkerFare;)V
    .locals 7
    .parameter "price"

    .prologue
    const v6, 0x7f0201c2

    const v5, 0x7f020253

    .line 156
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    .line 157
    .local v0, send:Lcom/didi/frame/Sendable;
    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    sget-object v2, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    if-ne v1, v2, :cond_3

    .line 162
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTextFareMarker()V

    .line 164
    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v1

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, v6}, Lcom/didi/map/marker/MarkerController;->setTextFareMarker(DDI)V

    .line 175
    :goto_1
    invoke-static {p0}, Lcom/didi/map/marker/MarkerController;->updateTextFareMarker(Lcom/didi/common/model/MarkerFare;)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_2

    .line 169
    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v1

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, v5}, Lcom/didi/map/marker/MarkerController;->setTextSimpleFareMarker(DDI)V

    .line 173
    :goto_2
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->setDepartOnMap()V

    goto :goto_1

    .line 171
    :cond_2
    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v1

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, v5}, Lcom/didi/map/marker/MarkerController;->setTextFareMarker(DDI)V

    goto :goto_2

    .line 177
    :cond_3
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v1

    if-nez v1, :cond_4

    .line 178
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeVoiceFareMarker()V

    .line 179
    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v1

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, v6}, Lcom/didi/map/marker/MarkerController;->setVoiceFareMarker(DDI)V

    .line 186
    :goto_3
    invoke-static {p0}, Lcom/didi/map/marker/MarkerController;->updateVoiceFareMarker(Lcom/didi/common/model/MarkerFare;)V

    goto :goto_0

    .line 183
    :cond_4
    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v1

    invoke-interface {v0}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, v5}, Lcom/didi/map/marker/MarkerController;->setVoiceFareMarker(DDI)V

    .line 184
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->setDepartOnMap()V

    goto :goto_3
.end method

.method public static waitToArrivelMapView()V
    .locals 1

    .prologue
    .line 337
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 338
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearBookingDrivers()V

    .line 339
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->clear()V

    .line 340
    return-void
.end method

.method public static waitToResendMapView()V
    .locals 0

    .prologue
    .line 344
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushCarMarker()V

    .line 345
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushDriveTimeMarker()V

    .line 346
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 347
    return-void
.end method

.method private static zoomMapWithMarkers(Lcom/didi/frame/Sendable;)V
    .locals 8
    .parameter "sendable"

    .prologue
    const-wide/16 v2, 0x0

    .line 485
    invoke-interface {p0}, Lcom/didi/frame/Sendable;->getEndLatDouble()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/didi/frame/Sendable;->getEndLngDouble()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 486
    :cond_0
    invoke-interface {p0}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-interface {p0}, Lcom/didi/frame/Sendable;->getStartLatDouble()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/didi/frame/Sendable;->getStartLngDouble()D

    move-result-wide v2

    invoke-interface {p0}, Lcom/didi/frame/Sendable;->getEndLatDouble()D

    move-result-wide v4

    invoke-interface {p0}, Lcom/didi/frame/Sendable;->getEndLngDouble()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/didi/map/MapController;->zoomCenterWithTwoMarkers(DDDD)V

    goto :goto_0
.end method
