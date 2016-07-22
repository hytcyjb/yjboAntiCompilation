.class public Lcom/didi/map/marker/MarkerController;
.super Ljava/lang/Object;
.source "MarkerController.java"


# static fields
.field private static activityDriverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/didi/map/marker/adapter/ActivityDriverMarker;",
            ">;"
        }
    .end annotation
.end field

.field private static btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

.field private static btsUserMarker:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/didi/beatles/map/BtsUserMarker;",
            ">;"
        }
    .end annotation
.end field

.field private static carMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/didi/map/marker/CarDriverMarker;",
            ">;"
        }
    .end annotation
.end field

.field private static commonMarker:Lcom/didi/map/marker/CommonMarker;

.field private static ddriveMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/didi/map/marker/DDriveDriverMarker;",
            ">;"
        }
    .end annotation
.end field

.field private static ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

.field private static departMarker:Lcom/didi/map/marker/DepartureMarker;

.field private static driverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/didi/map/marker/TaxiDriverMarker;",
            ">;"
        }
    .end annotation
.end field

.field private static endMarker:Lcom/didi/map/marker/CommonMarker;

.field private static flierMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/didi/map/marker/CarDriverMarker;",
            ">;"
        }
    .end annotation
.end field

.field private static lightNum:I

.field private static listCarPoolRoutePointsMarker:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/map/marker/CarPoolMarker;",
            ">;"
        }
    .end annotation
.end field

.field private static liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

.field private static loadingMarker:Lcom/didi/map/marker/LoadingMarker;

.field private static mCarPoolPriceMarker:Lcom/didi/map/marker/CarPoolPriceMarker;

.field private static mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

.field private static mListHotMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/map/marker/HotMarker;",
            ">;"
        }
    .end annotation
.end field

.field static mNearDrivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/map/marker/DriverMarker;",
            ">;"
        }
    .end annotation
.end field

.field private static myMarker:Lcom/didi/map/marker/MyMarker;

.field private static pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

.field private static pushDistanceMarker:Lcom/didi/map/marker/PushDistanceMarker;

.field private static pushTimeMarker:Lcom/didi/map/marker/PushTimeMarker;

.field private static simpleMarker:Lcom/didi/map/marker/SimpleMarker;

.field private static startMarker:Lcom/didi/map/marker/CommonMarker;

.field private static textFareMarker:Lcom/didi/map/marker/TextFareMarker;

.field private static textMarker:Lcom/didi/map/marker/TextOrderMarker;

.field private static textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

.field private static timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

.field private static voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

.field private static voiceMarker:Lcom/didi/map/marker/VoiceMarker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->driverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->carMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->activityDriverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->flierMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->ddriveMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->btsUserMarker:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->listCarPoolRoutePointsMarker:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->mListHotMarkers:Ljava/util/List;

    .line 835
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->mNearDrivers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBtsUserMarkers(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter "role"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/BtsUserAround$UserInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1266
    .local p0, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/BtsUserAround$UserInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btsUserMarkers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1267
    if-nez p1, :cond_2

    .line 1268
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1288
    :cond_0
    return-void

    .line 1270
    :cond_1
    sget-object v2, Lcom/didi/map/marker/MarkerController;->btsUserMarker:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1271
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1272
    sget-object v2, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/map/marker/MarkerController;->isBusinessInSwitcher(Lcom/didi/frame/business/Business;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1273
    new-instance v1, Lcom/didi/beatles/map/BtsUserMarker;

    invoke-direct {v1}, Lcom/didi/beatles/map/BtsUserMarker;-><init>()V

    .line 1274
    .local v1, marker:Lcom/didi/beatles/map/BtsUserMarker;
    sget-object v2, Lcom/didi/map/marker/MarkerController;->btsUserMarker:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/model/BtsUserAround$UserInfo;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/map/BtsUserMarker;->updateMarker(Lcom/didi/beatles/model/BtsUserAround$UserInfo;)V

    .line 1271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1278
    .end local v0           #i:I
    .end local v1           #marker:Lcom/didi/beatles/map/BtsUserMarker;
    :cond_2
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1280
    sget-object v2, Lcom/didi/map/marker/MarkerController;->btsUserMarker:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1281
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1282
    sget-object v2, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/map/marker/MarkerController;->isBusinessInSwitcher(Lcom/didi/frame/business/Business;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1283
    new-instance v1, Lcom/didi/beatles/map/BtsUserMarker;

    invoke-direct {v1}, Lcom/didi/beatles/map/BtsUserMarker;-><init>()V

    .line 1284
    .restart local v1       #marker:Lcom/didi/beatles/map/BtsUserMarker;
    sget-object v2, Lcom/didi/map/marker/MarkerController;->btsUserMarker:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/model/BtsUserAround$UserInfo;

    invoke-virtual {v1, v2}, Lcom/didi/beatles/map/BtsUserMarker;->updateMarker(Lcom/didi/beatles/model/BtsUserAround$UserInfo;)V

    .line 1281
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static addCarPoolMarker(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/taxi/model/TaxiOrderState$TripPoi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1456
    .local p0, point:Ljava/util/List;,"Ljava/util/List<Lcom/didi/taxi/model/TaxiOrderState$TripPoi;>;"
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCarPoolRoutePointsMarker()V

    .line 1457
    sget-object v2, Lcom/didi/map/marker/MarkerController;->listCarPoolRoutePointsMarker:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1458
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 1465
    :cond_0
    return-void

    .line 1460
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1461
    new-instance v0, Lcom/didi/map/marker/CarPoolMarker;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-direct {v0, v2}, Lcom/didi/map/marker/CarPoolMarker;-><init>(Lcom/didi/taxi/model/TaxiOrderState$TripPoi;)V

    .line 1462
    .local v0, carPoolMarker:Lcom/didi/map/marker/CarPoolMarker;
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLatDouble()D

    move-result-wide v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getLngDouble()D

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/didi/map/marker/CarPoolMarker;->setMarker(DD)V

    .line 1463
    sget-object v2, Lcom/didi/map/marker/MarkerController;->listCarPoolRoutePointsMarker:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1460
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getMyMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/MyMarker;->getmMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    goto :goto_0
.end method

.method public static hideDepartFirstGuid()V
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DepartureMarker;->hideFirstGuid()V

    .line 222
    :cond_0
    return-void
.end method

.method public static hideDepartInfoWindow()V
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DepartureMarker;->hideInfoWindow()V

    .line 201
    :cond_0
    return-void
.end method

.method public static hidePushCarsMarker()V
    .locals 1

    .prologue
    .line 623
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 625
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/PushCarsMarker;->hideMarker()V

    goto :goto_0
.end method

.method public static hidePushDriveTimeMarker()V
    .locals 1

    .prologue
    .line 749
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushTimeMarker:Lcom/didi/map/marker/PushTimeMarker;

    if-nez v0, :cond_0

    .line 752
    :goto_0
    return-void

    .line 751
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushTimeMarker:Lcom/didi/map/marker/PushTimeMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/PushTimeMarker;->hideMarker()V

    goto :goto_0
.end method

.method public static hideTextFareMarker()V
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    if-nez v0, :cond_0

    .line 366
    :goto_0
    return-void

    .line 365
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/TextFareMarker;->hideMarker()V

    goto :goto_0
.end method

.method public static hideTextOrderMarker()V
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    if-nez v0, :cond_0

    .line 320
    :goto_0
    return-void

    .line 319
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/TextOrderMarker;->hideMarker()V

    goto :goto_0
.end method

.method public static hideTextSimpleFareMarker()V
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 403
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/TextSimpleFareMarker;->hideMarker()V

    goto :goto_0
.end method

.method public static isBusinessInSwitcher(Lcom/didi/frame/business/Business;)Z
    .locals 2
    .parameter "business"

    .prologue
    const/4 v1, 0x1

    .line 1520
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->getCurrentBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 1521
    .local v0, businessOfSwitcher:Lcom/didi/frame/business/Business;
    if-eqz v0, :cond_0

    .line 1522
    if-ne v0, p0, :cond_1

    .line 1524
    :cond_0
    :goto_0
    return v1

    .line 1522
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDepartMakerRemove()Z
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    if-nez v0, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DepartureMarker;->isRemove()Z

    move-result v0

    goto :goto_0
.end method

.method public static isDriveWaitMarkerRemove()Z
    .locals 1

    .prologue
    .line 541
    sget-object v0, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    if-nez v0, :cond_0

    .line 542
    const/4 v0, 0x1

    .line 543
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DDriveWaitMarker;->isRemove()Z

    move-result v0

    goto :goto_0
.end method

.method public static isLiveValuatingMarkerRemove()Z
    .locals 1

    .prologue
    .line 499
    sget-object v0, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    if-nez v0, :cond_0

    .line 500
    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/LiveValuatingMarker;->isRemove()Z

    move-result v0

    goto :goto_0
.end method

.method public static isLoadingMarkerRemove()Z
    .locals 1

    .prologue
    .line 1311
    sget-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    if-nez v0, :cond_0

    .line 1312
    const/4 v0, 0x1

    .line 1313
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/LoadingMarker;->isRemove()Z

    move-result v0

    goto :goto_0
.end method

.method public static isMyMarkerRemove()Z
    .locals 1

    .prologue
    .line 1326
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    if-nez v0, :cond_0

    .line 1327
    const/4 v0, 0x1

    .line 1328
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/MyMarker;->isRemove()Z

    move-result v0

    goto :goto_0
.end method

.method public static isPushDistanceMarkerRemove()Z
    .locals 1

    .prologue
    .line 1425
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushDistanceMarker:Lcom/didi/map/marker/PushDistanceMarker;

    if-nez v0, :cond_0

    .line 1426
    const/4 v0, 0x1

    .line 1427
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushDistanceMarker:Lcom/didi/map/marker/PushDistanceMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/PushDistanceMarker;->isRemove()Z

    move-result v0

    goto :goto_0
.end method

.method public static isRemoveBtsMapUserMarker()Z
    .locals 1

    .prologue
    .line 1254
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    if-nez v0, :cond_0

    .line 1255
    const/4 v0, 0x1

    .line 1256
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;->isRemove()Z

    move-result v0

    goto :goto_0
.end method

.method public static isSimpleMarkerRemove()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1182
    sget-object v1, Lcom/didi/map/marker/MarkerController;->simpleMarker:Lcom/didi/map/marker/SimpleMarker;

    if-nez v1, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return v0

    .line 1184
    :cond_1
    sget-object v1, Lcom/didi/map/marker/MarkerController;->simpleMarker:Lcom/didi/map/marker/SimpleMarker;

    invoke-virtual {v1}, Lcom/didi/map/marker/SimpleMarker;->isRemove()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1186
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTextFareMarkerRemove()Z
    .locals 1

    .prologue
    .line 1394
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    if-nez v0, :cond_0

    .line 1395
    const/4 v0, 0x1

    .line 1396
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/TextFareMarker;->isRemove()Z

    move-result v0

    goto :goto_0
.end method

.method public static isTextOrderMarkerRemove()Z
    .locals 1

    .prologue
    .line 1387
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    if-nez v0, :cond_0

    .line 1388
    const/4 v0, 0x1

    .line 1389
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/TextOrderMarker;->isRemove()Z

    move-result v0

    goto :goto_0
.end method

.method public static isTimeDownMarkerRemove()Z
    .locals 1

    .prologue
    .line 578
    sget-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    if-nez v0, :cond_0

    .line 579
    const/4 v0, 0x1

    .line 580
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/TimeDownMarker;->isRemove()Z

    move-result v0

    goto :goto_0
.end method

.method public static isVoiceFareMarkerRemove()Z
    .locals 1

    .prologue
    .line 1356
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    if-nez v0, :cond_0

    .line 1357
    const/4 v0, 0x1

    .line 1358
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/VoiceFareMarker;->isRemove()Z

    move-result v0

    goto :goto_0
.end method

.method public static isVoiceMarkerRemove()Z
    .locals 1

    .prologue
    .line 1341
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceMarker:Lcom/didi/map/marker/VoiceMarker;

    if-nez v0, :cond_0

    .line 1342
    const/4 v0, 0x1

    .line 1343
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceMarker:Lcom/didi/map/marker/VoiceMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/VoiceMarker;->isRemove()Z

    move-result v0

    goto :goto_0
.end method

.method public static removeActivityDriverMarkerList()V
    .locals 3

    .prologue
    .line 1055
    const/4 v2, 0x0

    sput v2, Lcom/didi/map/marker/MarkerController;->lightNum:I

    .line 1056
    sget-object v2, Lcom/didi/map/marker/MarkerController;->activityDriverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1057
    sget-object v2, Lcom/didi/map/marker/MarkerController;->activityDriverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/map/marker/adapter/ActivityDriverMarker;

    .line 1058
    .local v1, marker:Lcom/didi/map/marker/adapter/ActivityDriverMarker;
    invoke-virtual {v1}, Lcom/didi/map/marker/adapter/ActivityDriverMarker;->remove()V

    goto :goto_0

    .line 1060
    .end local v1           #marker:Lcom/didi/map/marker/adapter/ActivityDriverMarker;
    :cond_0
    sget-object v2, Lcom/didi/map/marker/MarkerController;->activityDriverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1062
    :cond_1
    return-void
.end method

.method public static removeAllDriverMarkerList()V
    .locals 1

    .prologue
    .line 1066
    const/4 v0, 0x0

    sput v0, Lcom/didi/map/marker/MarkerController;->lightNum:I

    .line 1068
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTaxiDriverMarkerList()V

    .line 1069
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCarDriverMarkerList()V

    .line 1070
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeActivityDriverMarkerList()V

    .line 1071
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeFlierDriverMarkerList()V

    .line 1072
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDDriveDriverMarkerList()V

    .line 1074
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeBtsUserMarkers()V

    .line 1075
    return-void
.end method

.method public static removeBtsMapUserMarker()V
    .locals 1

    .prologue
    .line 1247
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    if-nez v0, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1249
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;->remove()V

    goto :goto_0
.end method

.method public static removeBtsUserMarkers()V
    .locals 4

    .prologue
    .line 1292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btsUserMarkers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/map/marker/MarkerController;->btsUserMarker:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1293
    sget-object v2, Lcom/didi/map/marker/MarkerController;->btsUserMarker:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1294
    sget-object v2, Lcom/didi/map/marker/MarkerController;->btsUserMarker:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/beatles/map/BtsUserMarker;

    .line 1295
    .local v1, marker:Lcom/didi/beatles/map/BtsUserMarker;
    invoke-virtual {v1}, Lcom/didi/beatles/map/BtsUserMarker;->remove()V

    goto :goto_0

    .line 1297
    .end local v1           #marker:Lcom/didi/beatles/map/BtsUserMarker;
    :cond_0
    sget-object v2, Lcom/didi/map/marker/MarkerController;->btsUserMarker:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1299
    :cond_1
    return-void
.end method

.method public static removeCarDriverMarkerList()V
    .locals 3

    .prologue
    .line 1021
    const/4 v2, 0x0

    sput v2, Lcom/didi/map/marker/MarkerController;->lightNum:I

    .line 1022
    sget-object v2, Lcom/didi/map/marker/MarkerController;->carMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1023
    sget-object v2, Lcom/didi/map/marker/MarkerController;->carMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/map/marker/CarDriverMarker;

    .line 1024
    .local v1, marker:Lcom/didi/map/marker/CarDriverMarker;
    invoke-virtual {v1}, Lcom/didi/map/marker/CarDriverMarker;->remove()V

    goto :goto_0

    .line 1026
    .end local v1           #marker:Lcom/didi/map/marker/CarDriverMarker;
    :cond_0
    sget-object v2, Lcom/didi/map/marker/MarkerController;->carMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1028
    :cond_1
    return-void
.end method

.method public static removeCarPoolPriceMarker()V
    .locals 1

    .prologue
    .line 1497
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mCarPoolPriceMarker:Lcom/didi/map/marker/CarPoolPriceMarker;

    if-eqz v0, :cond_0

    .line 1498
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mCarPoolPriceMarker:Lcom/didi/map/marker/CarPoolPriceMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/CarPoolPriceMarker;->remove()V

    .line 1500
    :cond_0
    return-void
.end method

.method public static removeCarPoolRoutePointsMarker()V
    .locals 3

    .prologue
    .line 1471
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/didi/map/marker/MarkerController;->listCarPoolRoutePointsMarker:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1472
    sget-object v2, Lcom/didi/map/marker/MarkerController;->listCarPoolRoutePointsMarker:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/map/marker/CarPoolMarker;

    .line 1473
    .local v1, marker:Lcom/didi/map/marker/CarPoolMarker;
    if-eqz v1, :cond_0

    .line 1474
    invoke-virtual {v1}, Lcom/didi/map/marker/CarPoolMarker;->remove()V

    .line 1471
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1477
    .end local v1           #marker:Lcom/didi/map/marker/CarPoolMarker;
    :cond_1
    return-void
.end method

.method public static removeCommonMarker()V
    .locals 1

    .prologue
    .line 1168
    sget-object v0, Lcom/didi/map/marker/MarkerController;->commonMarker:Lcom/didi/map/marker/CommonMarker;

    if-nez v0, :cond_0

    .line 1171
    :goto_0
    return-void

    .line 1170
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->commonMarker:Lcom/didi/map/marker/CommonMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/CommonMarker;->remove()V

    goto :goto_0
.end method

.method public static removeDDriveDriverMarkerList()V
    .locals 3

    .prologue
    .line 1044
    const/4 v2, 0x0

    sput v2, Lcom/didi/map/marker/MarkerController;->lightNum:I

    .line 1045
    sget-object v2, Lcom/didi/map/marker/MarkerController;->ddriveMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1046
    sget-object v2, Lcom/didi/map/marker/MarkerController;->ddriveMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/map/marker/DDriveDriverMarker;

    .line 1047
    .local v1, marker:Lcom/didi/map/marker/DDriveDriverMarker;
    invoke-virtual {v1}, Lcom/didi/map/marker/DDriveDriverMarker;->remove()V

    goto :goto_0

    .line 1049
    .end local v1           #marker:Lcom/didi/map/marker/DDriveDriverMarker;
    :cond_0
    sget-object v2, Lcom/didi/map/marker/MarkerController;->ddriveMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1051
    :cond_1
    return-void
.end method

.method public static removeDepartMarker()V
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useDepartMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DepartureMarker;->remove()V

    goto :goto_0
.end method

.method public static removeDriveWaitMarker()V
    .locals 1

    .prologue
    .line 534
    sget-object v0, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    if-nez v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 536
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DDriveWaitMarker;->remove()V

    goto :goto_0
.end method

.method public static removeDriverArrivalMarker()V
    .locals 1

    .prologue
    .line 939
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    if-eqz v0, :cond_0

    .line 940
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DriverArrivalMarker;->remove()V

    .line 941
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    .line 943
    :cond_0
    return-void
.end method

.method public static removeEndMarker()V
    .locals 1

    .prologue
    .line 1439
    sget-object v0, Lcom/didi/map/marker/MarkerController;->endMarker:Lcom/didi/map/marker/CommonMarker;

    if-nez v0, :cond_0

    .line 1442
    :goto_0
    return-void

    .line 1441
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->endMarker:Lcom/didi/map/marker/CommonMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/CommonMarker;->remove()V

    goto :goto_0
.end method

.method public static removeFlierDriverMarkerList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1032
    sput v3, Lcom/didi/map/marker/MarkerController;->lightNum:I

    .line 1033
    sget-object v2, Lcom/didi/map/marker/MarkerController;->flierMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1034
    sget-object v2, Lcom/didi/map/marker/MarkerController;->flierMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/map/marker/CarDriverMarker;

    .line 1035
    .local v1, marker:Lcom/didi/map/marker/CarDriverMarker;
    invoke-virtual {v1}, Lcom/didi/map/marker/CarDriverMarker;->remove()V

    goto :goto_0

    .line 1037
    .end local v1           #marker:Lcom/didi/map/marker/CarDriverMarker;
    :cond_0
    sget-object v2, Lcom/didi/map/marker/MarkerController;->flierMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1039
    :cond_1
    sput-boolean v3, Lcom/didi/common/helper/DriversHelper;->loadFilerDrivers:Z

    .line 1040
    return-void
.end method

.method public static removeHotMarkers()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 1548
    sget-object v4, Lcom/didi/map/marker/MarkerController;->mListHotMarkers:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 1549
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/didi/map/marker/MarkerController;->mListHotMarkers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1550
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;

    invoke-direct {v0, v6, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;-><init>(FF)V

    .line 1551
    .local v0, alphaAnimation:Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;
    const/16 v4, 0x5dc

    invoke-virtual {v0, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;->setDuration(I)V

    .line 1552
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;

    invoke-direct {v3, v6, v5, v6, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;-><init>(FFFF)V

    .line 1553
    .local v3, scaleAnimation:Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;
    sget-object v4, Lcom/didi/map/marker/MarkerController;->mListHotMarkers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/map/marker/HotMarker;

    invoke-virtual {v4}, Lcom/didi/map/marker/HotMarker;->getmMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v2

    .line 1554
    .local v2, marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    .line 1555
    new-instance v4, Lcom/didi/map/marker/MarkerController$1;

    invoke-direct {v4, v2}, Lcom/didi/map/marker/MarkerController$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    invoke-virtual {v2, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setAnimationListener(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V

    .line 1567
    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->startAnimation()Z

    .line 1549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1570
    .end local v0           #alphaAnimation:Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;
    .end local v2           #marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .end local v3           #scaleAnimation:Lcom/tencent/tencentmap/mapsdk/maps/model/ScaleAnimation;
    :cond_0
    sget-object v4, Lcom/didi/map/marker/MarkerController;->mListHotMarkers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1572
    :cond_1
    return-void
.end method

.method public static removeLiveValuatingMarker()V
    .locals 1

    .prologue
    .line 492
    sget-object v0, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    if-nez v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/LiveValuatingMarker;->remove()V

    goto :goto_0
.end method

.method public static removeLoadindMarker()V
    .locals 2

    .prologue
    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadingMarker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1304
    sget-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    if-nez v0, :cond_0

    .line 1307
    :goto_0
    return-void

    .line 1306
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/LoadingMarker;->remove()V

    goto :goto_0
.end method

.method public static removeMyMarker()V
    .locals 1

    .prologue
    .line 1318
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    if-nez v0, :cond_0

    .line 1322
    :goto_0
    return-void

    .line 1321
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/MyMarker;->remove()V

    goto :goto_0
.end method

.method public static removeNearDrivers()V
    .locals 6

    .prologue
    .line 921
    const-class v5, Lcom/didi/map/marker/MarkerController;

    monitor-enter v5

    .line 922
    :try_start_0
    sget-object v4, Lcom/didi/map/marker/MarkerController;->mNearDrivers:Ljava/util/Map;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/didi/map/marker/MarkerController;->mNearDrivers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 923
    :cond_0
    monitor-exit v5

    .line 936
    .local v2, iter:Ljava/util/Iterator;
    :goto_0
    return-void

    .line 925
    .end local v2           #iter:Ljava/util/Iterator;
    :cond_1
    sget-object v4, Lcom/didi/map/marker/MarkerController;->mNearDrivers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 926
    .restart local v2       #iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 927
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 928
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, dId:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/map/marker/DriverMarker;

    .line 930
    .local v3, marker:Lcom/didi/map/marker/DriverMarker;
    invoke-virtual {v3}, Lcom/didi/map/marker/DriverMarker;->isRemove()Z

    move-result v4

    if-nez v4, :cond_2

    .line 931
    invoke-virtual {v3}, Lcom/didi/map/marker/DriverMarker;->remove()V

    .line 933
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 935
    .end local v0           #dId:Ljava/lang/String;
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v3           #marker:Lcom/didi/map/marker/DriverMarker;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static removePushCarMarker()V
    .locals 1

    .prologue
    .line 1401
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    if-nez v0, :cond_0

    .line 1405
    :goto_0
    return-void

    .line 1404
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/PushCarsMarker;->remove()V

    goto :goto_0
.end method

.method public static removePushDistanceMarker()V
    .locals 1

    .prologue
    .line 1417
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushDistanceMarker:Lcom/didi/map/marker/PushDistanceMarker;

    if-nez v0, :cond_0

    .line 1421
    :goto_0
    return-void

    .line 1420
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushDistanceMarker:Lcom/didi/map/marker/PushDistanceMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/PushDistanceMarker;->remove()V

    goto :goto_0
.end method

.method public static removePushDriveTimeMarker()V
    .locals 1

    .prologue
    .line 1409
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushTimeMarker:Lcom/didi/map/marker/PushTimeMarker;

    if-nez v0, :cond_0

    .line 1413
    :goto_0
    return-void

    .line 1412
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushTimeMarker:Lcom/didi/map/marker/PushTimeMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/PushTimeMarker;->remove()V

    goto :goto_0
.end method

.method public static removeSimpleMarker()V
    .locals 1

    .prologue
    .line 1446
    sget-object v0, Lcom/didi/map/marker/MarkerController;->simpleMarker:Lcom/didi/map/marker/SimpleMarker;

    if-nez v0, :cond_0

    .line 1449
    :goto_0
    return-void

    .line 1448
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->simpleMarker:Lcom/didi/map/marker/SimpleMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/SimpleMarker;->remove()V

    goto :goto_0
.end method

.method public static removeStartMarker()V
    .locals 1

    .prologue
    .line 1432
    sget-object v0, Lcom/didi/map/marker/MarkerController;->startMarker:Lcom/didi/map/marker/CommonMarker;

    if-nez v0, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1434
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->startMarker:Lcom/didi/map/marker/CommonMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/CommonMarker;->remove()V

    goto :goto_0
.end method

.method public static removeTaxiDriverMarkerList()V
    .locals 3

    .prologue
    .line 1010
    const/4 v2, 0x0

    sput v2, Lcom/didi/map/marker/MarkerController;->lightNum:I

    .line 1011
    sget-object v2, Lcom/didi/map/marker/MarkerController;->driverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1012
    sget-object v2, Lcom/didi/map/marker/MarkerController;->driverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/map/marker/TaxiDriverMarker;

    .line 1013
    .local v1, marker:Lcom/didi/map/marker/TaxiDriverMarker;
    invoke-virtual {v1}, Lcom/didi/map/marker/TaxiDriverMarker;->remove()V

    goto :goto_0

    .line 1015
    .end local v1           #marker:Lcom/didi/map/marker/TaxiDriverMarker;
    :cond_0
    sget-object v2, Lcom/didi/map/marker/MarkerController;->driverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1017
    :cond_1
    return-void
.end method

.method public static removeTextFareMarker()V
    .locals 1

    .prologue
    .line 1371
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    if-nez v0, :cond_0

    .line 1375
    :goto_0
    return-void

    .line 1374
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/TextFareMarker;->remove()V

    goto :goto_0
.end method

.method public static removeTextOrderMarker()V
    .locals 1

    .prologue
    .line 1363
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    if-nez v0, :cond_0

    .line 1367
    :goto_0
    return-void

    .line 1366
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/TextOrderMarker;->remove()V

    goto :goto_0
.end method

.method public static removeTextSimpleFareMarker()V
    .locals 1

    .prologue
    .line 1379
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    if-nez v0, :cond_0

    .line 1383
    :goto_0
    return-void

    .line 1382
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/TextSimpleFareMarker;->remove()V

    goto :goto_0
.end method

.method public static removeTimeDownMarker()V
    .locals 1

    .prologue
    .line 571
    sget-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    if-nez v0, :cond_0

    .line 574
    :goto_0
    return-void

    .line 573
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/TimeDownMarker;->remove()V

    goto :goto_0
.end method

.method public static removeVoiceFareMarker()V
    .locals 1

    .prologue
    .line 1348
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    if-nez v0, :cond_0

    .line 1352
    :goto_0
    return-void

    .line 1351
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/VoiceFareMarker;->remove()V

    goto :goto_0
.end method

.method public static removeVoiceMarker()V
    .locals 1

    .prologue
    .line 1333
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceMarker:Lcom/didi/map/marker/VoiceMarker;

    if-nez v0, :cond_0

    .line 1337
    :goto_0
    return-void

    .line 1336
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceMarker:Lcom/didi/map/marker/VoiceMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/VoiceMarker;->remove()V

    goto :goto_0
.end method

.method public static resetMyMarkerTitle()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/MyMarker;->setMarkerTitle()V

    goto :goto_0
.end method

.method public static setActivityDriverMarkerList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/BaseDriverFactory$BaseDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/BaseDriverFactory$BaseDriver;>;"
    if-nez p0, :cond_1

    .line 795
    :cond_0
    return-void

    .line 787
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;

    .line 788
    .local v0, driver:Lcom/didi/common/model/BaseDriverFactory$BaseDriver;
    if-eqz v0, :cond_2

    .line 790
    sget-object v3, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/map/marker/MarkerController;->isBusinessInSwitcher(Lcom/didi/frame/business/Business;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    new-instance v2, Lcom/didi/map/marker/adapter/ActivityDriverMarker;

    invoke-direct {v2}, Lcom/didi/map/marker/adapter/ActivityDriverMarker;-><init>()V

    .line 792
    .local v2, marker:Lcom/didi/map/marker/adapter/ActivityDriverMarker;
    invoke-virtual {v2, v0}, Lcom/didi/map/marker/adapter/ActivityDriverMarker;->upDateMarker(Lcom/didi/common/model/BaseDriverFactory$BaseDriver;)V

    .line 793
    sget-object v3, Lcom/didi/map/marker/MarkerController;->activityDriverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setBtsMapUserMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 1207
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/beatles/model/BtsConfig;->open:Z

    if-nez v0, :cond_0

    .line 1213
    :goto_0
    return-void

    .line 1210
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    if-nez v0, :cond_1

    .line 1211
    new-instance v0, Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-direct {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    .line 1212
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/beatles/map/BtsMapUserMarker;->setMarker(DD)V

    goto :goto_0
.end method

.method public static setCarDriverMarkerList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 821
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarDriver;>;"
    if-nez p0, :cond_1

    .line 833
    :cond_0
    return-void

    .line 823
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarDriver;

    .line 824
    .local v0, driver:Lcom/didi/car/model/CarDriver;
    if-eqz v0, :cond_2

    .line 826
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/map/marker/MarkerController;->isBusinessInSwitcher(Lcom/didi/frame/business/Business;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 829
    new-instance v2, Lcom/didi/map/marker/CarDriverMarker;

    invoke-direct {v2}, Lcom/didi/map/marker/CarDriverMarker;-><init>()V

    .line 830
    .local v2, marker:Lcom/didi/map/marker/CarDriverMarker;
    invoke-virtual {v2, v0}, Lcom/didi/map/marker/CarDriverMarker;->upDateMarker(Lcom/didi/car/model/CarDriver;)V

    .line 831
    sget-object v3, Lcom/didi/map/marker/MarkerController;->carMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setCarDriverWithCarTypeMarkerList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 947
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarDriver;>;"
    if-nez p0, :cond_1

    .line 956
    :cond_0
    return-void

    .line 949
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarDriver;

    .line 950
    .local v0, driver:Lcom/didi/car/model/CarDriver;
    if-eqz v0, :cond_2

    .line 952
    new-instance v2, Lcom/didi/map/marker/CarDriverMarker;

    invoke-direct {v2}, Lcom/didi/map/marker/CarDriverMarker;-><init>()V

    .line 953
    .local v2, marker:Lcom/didi/map/marker/CarDriverMarker;
    invoke-virtual {v2, v0}, Lcom/didi/map/marker/CarDriverMarker;->upDateMarker(Lcom/didi/car/model/CarDriver;)V

    .line 954
    sget-object v3, Lcom/didi/map/marker/MarkerController;->carMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setCarPoolPricemarker(DDLandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "lat"
    .parameter "lng"
    .parameter "onClickListener"

    .prologue
    .line 1485
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mCarPoolPriceMarker:Lcom/didi/map/marker/CarPoolPriceMarker;

    if-nez v0, :cond_0

    .line 1486
    new-instance v0, Lcom/didi/map/marker/CarPoolPriceMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/CarPoolPriceMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->mCarPoolPriceMarker:Lcom/didi/map/marker/CarPoolPriceMarker;

    .line 1488
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mCarPoolPriceMarker:Lcom/didi/map/marker/CarPoolPriceMarker;

    invoke-virtual {v0, p4}, Lcom/didi/map/marker/CarPoolPriceMarker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1489
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removePushDistanceMarker()V

    .line 1490
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mCarPoolPriceMarker:Lcom/didi/map/marker/CarPoolPriceMarker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/map/marker/CarPoolPriceMarker;->setMarker(DD)V

    .line 1491
    return-void
.end method

.method public static setCommonMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 1159
    sget-object v0, Lcom/didi/map/marker/MarkerController;->commonMarker:Lcom/didi/map/marker/CommonMarker;

    if-nez v0, :cond_0

    .line 1160
    new-instance v0, Lcom/didi/map/marker/CommonMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/CommonMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->commonMarker:Lcom/didi/map/marker/CommonMarker;

    .line 1162
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->commonMarker:Lcom/didi/map/marker/CommonMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/CommonMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1163
    sget-object v0, Lcom/didi/map/marker/MarkerController;->commonMarker:Lcom/didi/map/marker/CommonMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/CommonMarker;->remove()V

    .line 1164
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->commonMarker:Lcom/didi/map/marker/CommonMarker;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/CommonMarker;->setMarker(DDI)V

    .line 1165
    return-void
.end method

.method public static setDDriveDriverMarkerList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/http/response/NearByDriveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 974
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/ddrive/net/http/response/NearByDriveInfo;>;"
    if-nez p0, :cond_1

    .line 984
    :cond_0
    return-void

    .line 976
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    .line 977
    .local v0, driver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;
    if-eqz v0, :cond_2

    .line 979
    new-instance v2, Lcom/didi/map/marker/DDriveDriverMarker;

    invoke-direct {v2}, Lcom/didi/map/marker/DDriveDriverMarker;-><init>()V

    .line 980
    .local v2, marker:Lcom/didi/map/marker/DDriveDriverMarker;
    invoke-virtual {v2, v0}, Lcom/didi/map/marker/DDriveDriverMarker;->upDateMarker(Lcom/didi/ddrive/net/http/response/NearByDriveInfo;)V

    .line 981
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/didi/map/marker/DDriveDriverMarker;->updateMarkerClickStatus(Z)V

    .line 982
    sget-object v3, Lcom/didi/map/marker/MarkerController;->ddriveMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setDepartMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 150
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDepartMarker()V

    .line 151
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/didi/map/marker/DepartureMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/DepartureMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    .line 153
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/map/marker/DepartureMarker;->updateMarker(DD)V

    .line 154
    return-void
.end method

.method public static setDepartMarkerDragListener(Lcom/didi/map/IMapDragListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 171
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/didi/map/marker/DepartureMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/DepartureMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    .line 174
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/DepartureMarker;->setMapDragListener(Lcom/didi/map/IMapDragListener;)V

    .line 175
    return-void
.end method

.method public static setDriveWaitMarker(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;DDZ)V
    .locals 6
    .parameter "waitFee"
    .parameter "lat"
    .parameter "lng"
    .parameter "isUpdateLocation"

    .prologue
    .line 506
    if-nez p0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 508
    :cond_0
    sget-object v1, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    if-nez v1, :cond_1

    .line 509
    new-instance v1, Lcom/didi/map/marker/DDriveWaitMarker;

    invoke-direct {v1}, Lcom/didi/map/marker/DDriveWaitMarker;-><init>()V

    sput-object v1, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    .line 511
    :cond_1
    if-eqz p5, :cond_3

    .line 512
    sget-object v1, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/didi/map/marker/DDriveWaitMarker;->setMarker(DD)V

    .line 522
    :cond_2
    :goto_1
    sget-object v1, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    invoke-virtual {v1, p0}, Lcom/didi/map/marker/DDriveWaitMarker;->updateData(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;)V

    goto :goto_0

    .line 514
    :cond_3
    const/4 v0, 0x0

    .line 515
    .local v0, latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    sget-object v1, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    invoke-virtual {v1}, Lcom/didi/map/marker/DDriveWaitMarker;->getmMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 516
    sget-object v1, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    invoke-virtual {v1}, Lcom/didi/map/marker/DDriveWaitMarker;->getmMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 518
    :cond_4
    if-eqz v0, :cond_2

    .line 519
    sget-object v1, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    iget-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/didi/map/marker/DDriveWaitMarker;->setMarker(DD)V

    goto :goto_1
.end method

.method public static setEndMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 1149
    sget-object v0, Lcom/didi/map/marker/MarkerController;->endMarker:Lcom/didi/map/marker/CommonMarker;

    if-nez v0, :cond_0

    .line 1150
    new-instance v0, Lcom/didi/map/marker/CommonMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/CommonMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->endMarker:Lcom/didi/map/marker/CommonMarker;

    .line 1152
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->endMarker:Lcom/didi/map/marker/CommonMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/CommonMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1153
    sget-object v0, Lcom/didi/map/marker/MarkerController;->endMarker:Lcom/didi/map/marker/CommonMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/CommonMarker;->remove()V

    .line 1154
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->endMarker:Lcom/didi/map/marker/CommonMarker;

    const v5, 0x7f0201c5

    move-wide v1, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/CommonMarker;->setMarker(DDI)V

    .line 1155
    return-void
.end method

.method public static setFixDepartMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 157
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDepartMarker()V

    .line 158
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/didi/map/marker/DepartureMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/DepartureMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    .line 161
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    const/4 v5, 0x0

    move-wide v1, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/DepartureMarker;->setMarker(DDZ)V

    .line 162
    return-void
.end method

.method public static setFlierDriverMarkerList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 960
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarDriver;>;"
    if-nez p0, :cond_1

    .line 970
    :cond_0
    return-void

    .line 962
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarDriver;

    .line 963
    .local v0, driver:Lcom/didi/car/model/CarDriver;
    if-eqz v0, :cond_2

    .line 965
    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/map/marker/MarkerController;->isBusinessInSwitcher(Lcom/didi/frame/business/Business;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 966
    new-instance v2, Lcom/didi/map/marker/CarDriverMarker;

    invoke-direct {v2}, Lcom/didi/map/marker/CarDriverMarker;-><init>()V

    .line 967
    .local v2, marker:Lcom/didi/map/marker/CarDriverMarker;
    invoke-virtual {v2, v0}, Lcom/didi/map/marker/CarDriverMarker;->upDateMarker(Lcom/didi/car/model/CarDriver;)V

    .line 968
    sget-object v3, Lcom/didi/map/marker/MarkerController;->flierMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setFlierDriverWithCarTypeMarkerList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 997
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarDriver;>;"
    if-nez p0, :cond_1

    .line 1006
    :cond_0
    return-void

    .line 999
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarDriver;

    .line 1000
    .local v0, driver:Lcom/didi/car/model/CarDriver;
    if-eqz v0, :cond_2

    .line 1002
    new-instance v2, Lcom/didi/map/marker/CarDriverMarker;

    invoke-direct {v2}, Lcom/didi/map/marker/CarDriverMarker;-><init>()V

    .line 1003
    .local v2, marker:Lcom/didi/map/marker/CarDriverMarker;
    invoke-virtual {v2, v0}, Lcom/didi/map/marker/CarDriverMarker;->upDateMarker(Lcom/didi/car/model/CarDriver;)V

    .line 1004
    sget-object v3, Lcom/didi/map/marker/MarkerController;->flierMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setHotMarkers(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1532
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Address;>;"
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeHotMarkers()V

    .line 1533
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getCameraPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v3

    iget v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->zoom:F

    const/high16 v4, 0x4188

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 1534
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 1535
    .local v0, address:Lcom/didi/common/model/Address;
    new-instance v1, Lcom/didi/map/marker/HotMarker;

    invoke-direct {v1}, Lcom/didi/map/marker/HotMarker;-><init>()V

    .line 1537
    .local v1, hotMarker:Lcom/didi/map/marker/HotMarker;
    iget-object v3, v0, Lcom/didi/common/model/Address;->hotName:Ljava/lang/String;

    iput-object v3, v1, Lcom/didi/map/marker/HotMarker;->mHotName:Ljava/lang/String;

    .line 1538
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/didi/map/marker/HotMarker;->setMarker(DD)V

    .line 1539
    sget-object v3, Lcom/didi/map/marker/MarkerController;->mListHotMarkers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1542
    .end local v0           #address:Lcom/didi/common/model/Address;
    .end local v1           #hotMarker:Lcom/didi/map/marker/HotMarker;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static setLiveValuatingMarker(Lcom/didi/car/model/CarOrderNewRealtimeCount;Z)V
    .locals 7
    .parameter "valuating"
    .parameter "isUpdateLocation"

    .prologue
    const/4 v5, 0x0

    .line 443
    if-nez p0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 445
    :cond_0
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    if-nez v1, :cond_1

    .line 446
    new-instance v1, Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-direct {v1}, Lcom/didi/map/marker/LiveValuatingMarker;-><init>()V

    sput-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    .line 448
    :cond_1
    if-eqz p1, :cond_3

    .line 449
    sget-object v2, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    iget-object v1, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/LocationInfo;

    iget-wide v3, v1, Lcom/didi/common/model/LocationInfo;->y:D

    iget-object v1, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/LocationInfo;

    iget-wide v5, v1, Lcom/didi/common/model/LocationInfo;->x:D

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/didi/map/marker/LiveValuatingMarker;->setMarker(DD)V

    .line 459
    :cond_2
    :goto_1
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v1, p0}, Lcom/didi/map/marker/LiveValuatingMarker;->updateData(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V

    goto :goto_0

    .line 451
    :cond_3
    const/4 v0, 0x0

    .line 452
    .local v0, latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v1}, Lcom/didi/map/marker/LiveValuatingMarker;->getmMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 453
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v1}, Lcom/didi/map/marker/LiveValuatingMarker;->getmMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 455
    :cond_4
    if-eqz v0, :cond_2

    .line 456
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    iget-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/didi/map/marker/LiveValuatingMarker;->setMarker(DD)V

    goto :goto_1
.end method

.method public static setLiveValuatingMarker(Lcom/didi/car/model/CarOrderRealtimeCount;Z)V
    .locals 7
    .parameter "valuating"
    .parameter "isUpdateLocation"

    .prologue
    const/4 v5, 0x0

    .line 422
    if-nez p0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 424
    :cond_0
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    if-nez v1, :cond_1

    .line 425
    new-instance v1, Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-direct {v1}, Lcom/didi/map/marker/LiveValuatingMarker;-><init>()V

    sput-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    .line 427
    :cond_1
    if-eqz p1, :cond_3

    .line 428
    sget-object v2, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    iget-object v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/LocationInfo;

    iget-wide v3, v1, Lcom/didi/common/model/LocationInfo;->y:D

    iget-object v1, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/common/model/LocationInfo;

    iget-wide v5, v1, Lcom/didi/common/model/LocationInfo;->x:D

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/didi/map/marker/LiveValuatingMarker;->setMarker(DD)V

    .line 438
    :cond_2
    :goto_1
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v1, p0}, Lcom/didi/map/marker/LiveValuatingMarker;->updateData(Lcom/didi/car/model/CarOrderRealtimeCount;)V

    goto :goto_0

    .line 430
    :cond_3
    const/4 v0, 0x0

    .line 431
    .local v0, latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v1}, Lcom/didi/map/marker/LiveValuatingMarker;->getmMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 432
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v1}, Lcom/didi/map/marker/LiveValuatingMarker;->getmMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 434
    :cond_4
    if-eqz v0, :cond_2

    .line 435
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    iget-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/didi/map/marker/LiveValuatingMarker;->setMarker(DD)V

    goto :goto_1
.end method

.method public static setLiveValuatingMarker(Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;DDZ)V
    .locals 6
    .parameter "valuating"
    .parameter "lat"
    .parameter "lng"
    .parameter "isUpdateLocation"

    .prologue
    .line 464
    if-nez p0, :cond_0

    .line 481
    :goto_0
    return-void

    .line 466
    :cond_0
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    if-nez v1, :cond_1

    .line 467
    new-instance v1, Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-direct {v1}, Lcom/didi/map/marker/LiveValuatingMarker;-><init>()V

    sput-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    .line 469
    :cond_1
    if-eqz p5, :cond_3

    .line 470
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/didi/map/marker/LiveValuatingMarker;->setMarker(DD)V

    .line 480
    :cond_2
    :goto_1
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v1, p0}, Lcom/didi/map/marker/LiveValuatingMarker;->updateData(Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;)V

    goto :goto_0

    .line 472
    :cond_3
    const/4 v0, 0x0

    .line 473
    .local v0, latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v1}, Lcom/didi/map/marker/LiveValuatingMarker;->getmMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 474
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v1}, Lcom/didi/map/marker/LiveValuatingMarker;->getmMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 476
    :cond_4
    if-eqz v0, :cond_2

    .line 477
    sget-object v1, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    iget-wide v2, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/didi/map/marker/LiveValuatingMarker;->setMarker(DD)V

    goto :goto_1
.end method

.method public static setLoadingMarker(DDLjava/lang/String;II)V
    .locals 7
    .parameter "lat"
    .parameter "lng"
    .parameter "title"
    .parameter "icon"
    .parameter "type"

    .prologue
    .line 590
    sget-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    if-nez v0, :cond_0

    .line 591
    new-instance v0, Lcom/didi/map/marker/LoadingMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/LoadingMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    .line 593
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    invoke-virtual {v0, p6}, Lcom/didi/map/marker/LoadingMarker;->setMarkerType(I)V

    .line 594
    sget-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/didi/map/marker/LoadingMarker;->setMarker(DDLjava/lang/String;I)V

    .line 595
    return-void
.end method

.method public static setPushCarsMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 605
    const v0, 0x7f0201c2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/map/marker/MarkerController;->setPushCarsMarker(DDI)V

    .line 606
    return-void
.end method

.method public static setPushCarsMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 615
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Lcom/didi/map/marker/PushCarsMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/PushCarsMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    .line 618
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/PushCarsMarker;->setMarker(DDI)V

    .line 619
    return-void
.end method

.method public static setPushDistanceMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "icon"

    .prologue
    .line 763
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushDistanceMarker:Lcom/didi/map/marker/PushDistanceMarker;

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Lcom/didi/map/marker/PushDistanceMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/PushDistanceMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->pushDistanceMarker:Lcom/didi/map/marker/PushDistanceMarker;

    .line 766
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushDistanceMarker:Lcom/didi/map/marker/PushDistanceMarker;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/PushDistanceMarker;->setMarker(DDI)V

    .line 767
    return-void
.end method

.method public static setPushDriveTimeMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 741
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushTimeMarker:Lcom/didi/map/marker/PushTimeMarker;

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Lcom/didi/map/marker/PushTimeMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/PushTimeMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->pushTimeMarker:Lcom/didi/map/marker/PushTimeMarker;

    .line 744
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushTimeMarker:Lcom/didi/map/marker/PushTimeMarker;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/PushTimeMarker;->setMarker(DDI)V

    .line 745
    return-void
.end method

.method public static setStartMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 1139
    sget-object v0, Lcom/didi/map/marker/MarkerController;->startMarker:Lcom/didi/map/marker/CommonMarker;

    if-nez v0, :cond_0

    .line 1140
    new-instance v0, Lcom/didi/map/marker/CommonMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/CommonMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->startMarker:Lcom/didi/map/marker/CommonMarker;

    .line 1142
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->startMarker:Lcom/didi/map/marker/CommonMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/CommonMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1143
    sget-object v0, Lcom/didi/map/marker/MarkerController;->startMarker:Lcom/didi/map/marker/CommonMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/CommonMarker;->remove()V

    .line 1144
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->startMarker:Lcom/didi/map/marker/CommonMarker;

    const v5, 0x7f0201c6

    move-wide v1, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/CommonMarker;->setMarker(DDI)V

    .line 1145
    return-void
.end method

.method public static setTaxiDriverMarkerList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiDriver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/taxi/model/TaxiDriver;>;"
    if-nez p0, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiDriver;

    .line 802
    .local v0, driver:Lcom/didi/taxi/model/TaxiDriver;
    if-eqz v0, :cond_2

    .line 805
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/map/marker/MarkerController;->isBusinessInSwitcher(Lcom/didi/frame/business/Business;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 813
    .end local v0           #driver:Lcom/didi/taxi/model/TaxiDriver;
    :cond_3
    sget-boolean v3, Lcom/didi/frame/switcher/SwitcherHelper;->isFirstLoad:Z

    if-eqz v3, :cond_0

    .line 814
    const/4 v3, 0x0

    sput-boolean v3, Lcom/didi/frame/switcher/SwitcherHelper;->isFirstLoad:Z

    goto :goto_0

    .line 808
    .restart local v0       #driver:Lcom/didi/taxi/model/TaxiDriver;
    :cond_4
    new-instance v2, Lcom/didi/map/marker/TaxiDriverMarker;

    invoke-direct {v2}, Lcom/didi/map/marker/TaxiDriverMarker;-><init>()V

    .line 809
    .local v2, marker:Lcom/didi/map/marker/TaxiDriverMarker;
    invoke-virtual {v2, v0}, Lcom/didi/map/marker/TaxiDriverMarker;->upDateMarker(Lcom/didi/taxi/model/TaxiDriver;)V

    .line 810
    sget-object v3, Lcom/didi/map/marker/MarkerController;->driverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static setTextFareMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 324
    const v0, 0x7f0201c2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/map/marker/MarkerController;->setTextFareMarker(DDI)V

    .line 325
    return-void
.end method

.method public static setTextFareMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 329
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lcom/didi/map/marker/TextFareMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/TextFareMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    .line 332
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/TextFareMarker;->setMarker(DDI)V

    .line 333
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/TextFareMarker;->setWindowUnClick(Z)V

    .line 334
    return-void
.end method

.method public static setTextFareUnMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 346
    const v0, 0x7f0201c2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/map/marker/MarkerController;->setTextFareUnMarker(DDI)V

    .line 347
    return-void
.end method

.method public static setTextFareUnMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 355
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Lcom/didi/map/marker/TextFareMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/TextFareMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    .line 358
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/TextFareMarker;->setMarker(DDI)V

    .line 359
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/TextFareMarker;->setWindowUnClick(Z)V

    .line 360
    return-void
.end method

.method public static setTextOrderMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 287
    const v0, 0x7f0201c2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/map/marker/MarkerController;->setTextOrderMarker(DDI)V

    .line 288
    return-void
.end method

.method public static setTextOrderMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 292
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lcom/didi/map/marker/TextOrderMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/TextOrderMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    .line 295
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/TextOrderMarker;->setMarker(DDI)V

    .line 296
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/TextOrderMarker;->setWindowUnClick(Z)V

    .line 297
    return-void
.end method

.method public static setTextOrderUnMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 301
    const v0, 0x7f0201c2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/map/marker/MarkerController;->setTextOrderUnMarker(DDI)V

    .line 302
    return-void
.end method

.method public static setTextOrderUnMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 309
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/didi/map/marker/TextOrderMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/TextOrderMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    .line 312
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/TextOrderMarker;->setMarker(DDI)V

    .line 313
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textMarker:Lcom/didi/map/marker/TextOrderMarker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/TextOrderMarker;->setWindowUnClick(Z)V

    .line 314
    return-void
.end method

.method public static setTextSimpleFareMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 377
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    if-nez v0, :cond_0

    .line 378
    new-instance v0, Lcom/didi/map/marker/TextSimpleFareMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/TextSimpleFareMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    .line 380
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/TextSimpleFareMarker;->setMarker(DDI)V

    .line 381
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/TextSimpleFareMarker;->setWindowUnClick(Z)V

    .line 382
    return-void
.end method

.method public static setTextSimpleFareMarkerUnClick(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 394
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lcom/didi/map/marker/TextSimpleFareMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/TextSimpleFareMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    .line 397
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/TextSimpleFareMarker;->setWindowUnClick(Z)V

    .line 398
    return-void
.end method

.method public static setTimeDownMarker(DDII)V
    .locals 2
    .parameter "lat"
    .parameter "lng"
    .parameter "h"
    .parameter "m"

    .prologue
    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h,m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 549
    sget-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Lcom/didi/map/marker/TimeDownMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/TimeDownMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    .line 551
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/map/marker/TimeDownMarker;->setMarker(DD)V

    .line 552
    sget-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    invoke-virtual {v0, p4, p5}, Lcom/didi/map/marker/TimeDownMarker;->updateData(II)V

    .line 553
    return-void
.end method

.method public static setVoiceFareMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 246
    const v0, 0x7f0201c2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/map/marker/MarkerController;->setVoiceFareMarker(DDI)V

    .line 247
    return-void
.end method

.method public static setVoiceFareMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 251
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/didi/map/marker/VoiceFareMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/VoiceFareMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    .line 254
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/VoiceFareMarker;->setMarker(DDI)V

    .line 255
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/VoiceFareMarker;->setWindowUnClick(Z)V

    .line 256
    return-void
.end method

.method public static setVoiceFareUnMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 260
    const v0, 0x7f0201c2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/map/marker/MarkerController;->setVoiceFareUnMarker(DDI)V

    .line 261
    return-void
.end method

.method public static setVoiceFareUnMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 270
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/didi/map/marker/VoiceFareMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/VoiceFareMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    .line 273
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/VoiceFareMarker;->setMarker(DDI)V

    .line 274
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/VoiceFareMarker;->setWindowUnClick(Z)V

    .line 275
    return-void
.end method

.method public static setVoiceMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 233
    const v0, 0x7f0201c2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/map/marker/MarkerController;->setVoiceMarker(DDI)V

    .line 234
    return-void
.end method

.method public static setVoiceMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 238
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceMarker:Lcom/didi/map/marker/VoiceMarker;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/didi/map/marker/VoiceMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/VoiceMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->voiceMarker:Lcom/didi/map/marker/VoiceMarker;

    .line 241
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceMarker:Lcom/didi/map/marker/VoiceMarker;

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/VoiceMarker;->setMarker(DDI)V

    .line 242
    return-void
.end method

.method public static showDepartFirstGuid(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 212
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/didi/map/marker/DepartureMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/DepartureMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    .line 215
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/DepartureMarker;->showFirstGuid(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static showDepartWindow()V
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DepartureMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public static showDriveWaitInfoWindow()V
    .locals 1

    .prologue
    .line 527
    sget-object v0, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DDriveWaitMarker;->isRemove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->ddriveWaitMarker:Lcom/didi/map/marker/DDriveWaitMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DDriveWaitMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public static showLiveValuatingInfoWindow()V
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/LiveValuatingMarker;->isRemove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->liveValuatMarker:Lcom/didi/map/marker/LiveValuatingMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/LiveValuatingMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public static showMyMarkerWindow()V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/MyMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public static showTextFareInfoWindow()V
    .locals 1

    .prologue
    .line 370
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/TextFareMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public static showTextSimpleFareInfoWindow()V
    .locals 1

    .prologue
    .line 408
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/TextSimpleFareMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public static showVoiceFareInfoWindow()V
    .locals 1

    .prologue
    .line 415
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    if-nez v0, :cond_0

    .line 418
    :goto_0
    return-void

    .line 417
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/VoiceFareMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public static startDepartureAnimation()V
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DepartureMarker;->startAnimation()V

    .line 168
    :cond_0
    return-void
.end method

.method public static updateBtsMapUserMarker()V
    .locals 1

    .prologue
    .line 1217
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;->isRemove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;->updateMarker()V

    goto :goto_0
.end method

.method public static updateBtsMapUserMarkerPhoto(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1223
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;->isRemove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-virtual {v0, p0}, Lcom/didi/beatles/map/BtsMapUserMarker;->updateUserPhoto(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateBtsMapUserMarkerPos(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 1230
    invoke-static {}, Lcom/didi/beatles/model/BtsConfig;->getInstance()Lcom/didi/beatles/model/BtsConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/beatles/model/BtsConfig;->open:Z

    if-nez v0, :cond_0

    .line 1240
    :goto_0
    return-void

    .line 1233
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-virtual {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;->isRemove()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1234
    :cond_1
    new-instance v0, Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-direct {v0}, Lcom/didi/beatles/map/BtsMapUserMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    .line 1235
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/beatles/map/BtsMapUserMarker;->setMarker(DD)V

    goto :goto_0

    .line 1239
    :cond_2
    sget-object v0, Lcom/didi/map/marker/MarkerController;->btsMapUserMarker:Lcom/didi/beatles/map/BtsMapUserMarker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/beatles/map/BtsMapUserMarker;->updateMarkerPostion(DD)V

    goto :goto_0
.end method

.method public static updateCarDriversMarkerLight(I)V
    .locals 4
    .parameter "num"

    .prologue
    .line 1103
    sget-object v2, Lcom/didi/map/marker/MarkerController;->carMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 1104
    .local v0, count:I
    if-ge p0, v0, :cond_0

    move v0, p0

    .line 1105
    :cond_0
    sget v2, Lcom/didi/map/marker/MarkerController;->lightNum:I

    if-ne v2, v0, :cond_1

    .line 1111
    :goto_0
    return-void

    .line 1107
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1108
    sget-object v2, Lcom/didi/map/marker/MarkerController;->carMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/map/marker/CarDriverMarker;

    const v3, 0x7f0202ea

    invoke-virtual {v2, v3}, Lcom/didi/map/marker/CarDriverMarker;->upDateMarkerIcon(I)V

    .line 1107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1110
    :cond_2
    sput v0, Lcom/didi/map/marker/MarkerController;->lightNum:I

    goto :goto_0
.end method

.method public static updateCarPoolPricemarker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "price"
    .parameter "ratio"

    .prologue
    .line 1508
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mCarPoolPriceMarker:Lcom/didi/map/marker/CarPoolPriceMarker;

    if-nez v0, :cond_0

    .line 1509
    new-instance v0, Lcom/didi/map/marker/CarPoolPriceMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/CarPoolPriceMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->mCarPoolPriceMarker:Lcom/didi/map/marker/CarPoolPriceMarker;

    .line 1511
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mCarPoolPriceMarker:Lcom/didi/map/marker/CarPoolPriceMarker;

    invoke-virtual {v0, p0, p1}, Lcom/didi/map/marker/CarPoolPriceMarker;->updatePrice(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    return-void
.end method

.method public static updateDDriveDriversMarkerLight(I)V
    .locals 4
    .parameter "num"

    .prologue
    .line 1127
    sget-object v2, Lcom/didi/map/marker/MarkerController;->ddriveMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 1128
    .local v0, count:I
    if-ge p0, v0, :cond_0

    move v0, p0

    .line 1129
    :cond_0
    sget v2, Lcom/didi/map/marker/MarkerController;->lightNum:I

    if-ne v2, v0, :cond_1

    .line 1135
    :goto_0
    return-void

    .line 1131
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1132
    sget-object v2, Lcom/didi/map/marker/MarkerController;->ddriveMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/map/marker/DDriveDriverMarker;

    const v3, 0x7f020187

    invoke-virtual {v2, v3}, Lcom/didi/map/marker/DDriveDriverMarker;->upDateMarkerIcon(I)V

    .line 1131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1134
    :cond_2
    sput v0, Lcom/didi/map/marker/MarkerController;->lightNum:I

    goto :goto_0
.end method

.method public static updateDDriverMarkerUnClick()V
    .locals 3

    .prologue
    .line 988
    sget-object v2, Lcom/didi/map/marker/MarkerController;->ddriveMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    .line 989
    sget-object v2, Lcom/didi/map/marker/MarkerController;->ddriveMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/map/marker/DDriveDriverMarker;

    .line 990
    .local v1, marker:Lcom/didi/map/marker/DDriveDriverMarker;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/map/marker/DDriveDriverMarker;->updateMarkerClickStatus(Z)V

    goto :goto_0

    .line 993
    .end local v1           #marker:Lcom/didi/map/marker/DDriveDriverMarker;
    :cond_0
    return-void
.end method

.method public static updateDepartMarker()V
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/didi/map/marker/DepartureMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/DepartureMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    .line 188
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/DepartureMarker;->showInfoWindow()V

    .line 189
    return-void
.end method

.method public static updateDepartMarker(Ljava/lang/String;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 179
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/didi/map/marker/DepartureMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/DepartureMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    .line 181
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->departMarker:Lcom/didi/map/marker/DepartureMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/DepartureMarker;->updateTextTime(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static updateDriverArrivalMarker(Lcom/didi/common/model/Driver;)V
    .locals 10
    .parameter "driver"

    .prologue
    const/4 v8, 0x0

    .line 638
    if-nez p0, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    sget-object v5, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    if-nez v5, :cond_2

    .line 643
    iget-object v5, p0, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-static {v5}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 646
    iget-object v5, p0, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/model/LocationInfo;

    .line 647
    .local v4, locationInfo:Lcom/didi/common/model/LocationInfo;
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v5, p0, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/common/model/LocationInfo;

    iget-wide v6, v5, Lcom/didi/common/model/LocationInfo;->x:D

    iget-object v5, p0, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/common/model/LocationInfo;

    iget-wide v8, v5, Lcom/didi/common/model/LocationInfo;->y:D

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 648
    .local v3, latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-wide v0, v4, Lcom/didi/common/model/LocationInfo;->direction:D

    .line 649
    .local v0, bearing:D
    new-instance v5, Lcom/didi/map/marker/DriverArrivalMarker;

    double-to-float v6, v0

    invoke-direct {v5, v3, v6}, Lcom/didi/map/marker/DriverArrivalMarker;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)V

    sput-object v5, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    goto :goto_0

    .line 653
    .end local v0           #bearing:D
    .end local v3           #latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .end local v4           #locationInfo:Lcom/didi/common/model/LocationInfo;
    :cond_2
    iget-object v5, p0, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-static {v5}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 656
    iget-object v5, p0, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/common/model/LocationInfo;

    .line 657
    .restart local v4       #locationInfo:Lcom/didi/common/model/LocationInfo;
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v5, p0, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/common/model/LocationInfo;

    iget-wide v6, v5, Lcom/didi/common/model/LocationInfo;->x:D

    iget-object v5, p0, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/common/model/LocationInfo;

    iget-wide v8, v5, Lcom/didi/common/model/LocationInfo;->y:D

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 658
    .restart local v3       #latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/map/listener/MapListener;->isMoving()Z

    move-result v2

    .line 659
    .local v2, isMoving:Z
    if-nez v2, :cond_3

    .line 660
    iget-wide v5, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    const-wide v7, 0x3f50624dd2f1a9fcL

    add-double/2addr v5, v7

    iget-wide v7, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v5, v6, v7, v8}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setMapCenterByPointNotZoom(DD)V

    .line 663
    :cond_3
    sget-object v5, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    invoke-virtual {v5, p0}, Lcom/didi/map/marker/DriverArrivalMarker;->addMovePath(Lcom/didi/common/model/Driver;)V

    goto :goto_0
.end method

.method public static updateDriverArrivalMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 2
    .parameter "latLng"

    .prologue
    .line 667
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    if-nez v0, :cond_0

    .line 668
    if-nez p0, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    new-instance v0, Lcom/didi/map/marker/DriverArrivalMarker;

    invoke-direct {v0, p0}, Lcom/didi/map/marker/DriverArrivalMarker;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    .line 672
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/DriverArrivalMarker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static updateDriverArrivalMarkerBubble(Lcom/didi/car/model/CarOrderNewRealtimeCount;Landroid/view/View$OnClickListener;)V
    .locals 6
    .parameter "content"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 707
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    if-nez v0, :cond_0

    .line 708
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v0, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/LocationInfo;

    iget-wide v2, v0, Lcom/didi/common/model/LocationInfo;->y:D

    iget-object v0, p0, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/LocationInfo;

    iget-wide v4, v0, Lcom/didi/common/model/LocationInfo;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 710
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    if-nez v0, :cond_1

    .line 715
    :goto_0
    return-void

    .line 713
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/DriverArrivalMarker;->updateCarContent(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V

    .line 714
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/DriverArrivalMarker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static updateDriverArrivalMarkerBubble(Lcom/didi/car/model/CarOrderRealtimeCount;Landroid/view/View$OnClickListener;)V
    .locals 6
    .parameter "content"
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 718
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    if-nez v0, :cond_0

    .line 719
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v0, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/LocationInfo;

    iget-wide v2, v0, Lcom/didi/common/model/LocationInfo;->y:D

    iget-object v0, p0, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/LocationInfo;

    iget-wide v4, v0, Lcom/didi/common/model/LocationInfo;->x:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 721
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    if-nez v0, :cond_1

    .line 726
    :goto_0
    return-void

    .line 724
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/DriverArrivalMarker;->updateCarContent(Lcom/didi/car/model/CarOrderRealtimeCount;)V

    .line 725
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/DriverArrivalMarker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static updateDriverArrivalMarkerBubble(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "latLng"
    .parameter "listener"

    .prologue
    .line 687
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    if-nez v0, :cond_0

    .line 688
    invoke-static {p0}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 690
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    if-nez v0, :cond_1

    .line 694
    :goto_0
    return-void

    .line 693
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/DriverArrivalMarker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static updateDriverArrivalMarkerBubble(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Ljava/lang/String;)V
    .locals 2
    .parameter "latLng"
    .parameter "content"

    .prologue
    .line 697
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    if-nez v0, :cond_0

    .line 698
    invoke-static {p0}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 700
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    if-nez v0, :cond_1

    .line 705
    :goto_0
    return-void

    .line 703
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/DriverArrivalMarker;->updateCarContent(Ljava/lang/String;)V

    .line 704
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/DriverArrivalMarker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static updateDriverArrivalMarkerBubble(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 679
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    if-nez v0, :cond_0

    .line 684
    :goto_0
    return-void

    .line 682
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/DriverArrivalMarker;->updateCarContent(Ljava/lang/String;)V

    .line 683
    sget-object v0, Lcom/didi/map/marker/MarkerController;->mDriverArrivalMarker:Lcom/didi/map/marker/DriverArrivalMarker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/map/marker/DriverArrivalMarker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static updateFlierDriversMarkerLight(I)V
    .locals 4
    .parameter "num"

    .prologue
    .line 1115
    sget-object v2, Lcom/didi/map/marker/MarkerController;->flierMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 1116
    .local v0, count:I
    if-ge p0, v0, :cond_0

    move v0, p0

    .line 1117
    :cond_0
    sget v2, Lcom/didi/map/marker/MarkerController;->lightNum:I

    if-ne v2, v0, :cond_1

    .line 1123
    :goto_0
    return-void

    .line 1119
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1120
    sget-object v2, Lcom/didi/map/marker/MarkerController;->flierMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/map/marker/CarDriverMarker;

    const v3, 0x7f0202ea

    invoke-virtual {v2, v3}, Lcom/didi/map/marker/CarDriverMarker;->upDateMarkerIcon(I)V

    .line 1119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1122
    :cond_2
    sput v0, Lcom/didi/map/marker/MarkerController;->lightNum:I

    goto :goto_0
.end method

.method public static updateLoadingMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 598
    sget-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    if-nez v0, :cond_0

    .line 601
    :goto_0
    return-void

    .line 600
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/map/marker/LoadingMarker;->updateMarker(DD)V

    goto :goto_0
.end method

.method public static updateLoadingMarkerAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 1198
    sget-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/LoadingMarker;->isRemove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    sget-object v0, Lcom/didi/map/marker/MarkerController;->loadingMarker:Lcom/didi/map/marker/LoadingMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/LoadingMarker;->updateMarkerAngle(F)V

    goto :goto_0
.end method

.method public static updateMyMarker(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 104
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/didi/map/marker/MyMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/MyMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    .line 107
    :cond_0
    sget-object v1, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/map/marker/MyMarker;->updateMarker(DD)V

    .line 109
    monitor-exit v1

    .line 111
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static updateMyMarker(Ljava/lang/String;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 115
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/didi/map/marker/MyMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/MyMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    .line 118
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/MyMarker;->updateTextTime(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static updateMyMarkerAddress()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->myMarker:Lcom/didi/map/marker/MyMarker;

    invoke-virtual {v0}, Lcom/didi/map/marker/MyMarker;->updateMarkerAddress()V

    goto :goto_0
.end method

.method public static declared-synchronized updateNearDrivers(IZLjava/util/Map;)V
    .locals 22
    .parameter "product"
    .parameter "needZoom"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/didi/common/model/Driver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 837
    .local p2, drivers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/didi/common/model/Driver;>;"
    const-class v16, Lcom/didi/map/marker/MarkerController;

    monitor-enter v16

    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "------------updateNearDrivers----------------drivers\'size: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 838
    sget-object v15, Lcom/didi/map/marker/MarkerController;->mNearDrivers:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v10

    .line 839
    .local v10, lastNearDrivers:I
    if-nez v10, :cond_4

    .line 840
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 841
    .local v12, listLatLng:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 842
    .local v8, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 843
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 844
    .local v7, entry:Ljava/util/Map$Entry;
    new-instance v6, Lcom/didi/map/marker/DriverMarker;

    invoke-direct {v6}, Lcom/didi/map/marker/DriverMarker;-><init>()V

    .line 845
    .local v6, driverMarker:Lcom/didi/map/marker/DriverMarker;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/common/model/Driver;

    .line 846
    .local v5, driver:Lcom/didi/common/model/Driver;
    const/4 v15, 0x0

    invoke-virtual {v6, v5, v15}, Lcom/didi/map/marker/DriverMarker;->updateMarker(Lcom/didi/common/model/Driver;Z)V

    .line 847
    sget-object v15, Lcom/didi/map/marker/MarkerController;->mNearDrivers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    iget-object v15, v5, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 850
    new-instance v17, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v15, v5, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/didi/common/model/LocationInfo;

    iget-wide v0, v15, Lcom/didi/common/model/LocationInfo;->y:D

    move-wide/from16 v18, v0

    iget-object v15, v5, Lcom/didi/common/model/Driver;->locationInfo:Ljava/util/List;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/didi/common/model/LocationInfo;

    iget-wide v0, v15, Lcom/didi/common/model/LocationInfo;->x:D

    move-wide/from16 v20, v0

    invoke-direct/range {v17 .. v21}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 837
    .end local v5           #driver:Lcom/didi/common/model/Driver;
    .end local v6           #driverMarker:Lcom/didi/map/marker/DriverMarker;
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v8           #iter:Ljava/util/Iterator;
    .end local v10           #lastNearDrivers:I
    .end local v12           #listLatLng:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 853
    .restart local v8       #iter:Ljava/util/Iterator;
    .restart local v10       #lastNearDrivers:I
    .restart local v12       #listLatLng:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    :cond_1
    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "------------updateNearDrivers----------------listLatLng\'size: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 854
    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 855
    .local v11, lat:Ljava/lang/Double;
    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 856
    .local v13, lng:Ljava/lang/Double;
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 857
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/didi/common/util/NumberUtil;->strToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    .line 858
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/didi/common/util/NumberUtil;->strToDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    .line 859
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 860
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    .line 862
    const-string v15, "faban"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "markercont lat :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " lng:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_2

    if-eqz p1, :cond_2

    .line 868
    new-instance v15, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move-wide/from16 v0, v17

    move-wide/from16 v2, v19

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-static {v12, v15}, Lcom/didi/map/ZoomManager;->zoomToSpanForSmooth(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    .end local v11           #lat:Ljava/lang/Double;
    .end local v12           #listLatLng:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    .end local v13           #lng:Ljava/lang/Double;
    :cond_2
    monitor-exit v16

    return-void

    .line 864
    .restart local v11       #lat:Ljava/lang/Double;
    .restart local v12       #listLatLng:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    .restart local v13       #lng:Ljava/lang/Double;
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    .line 865
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    goto :goto_1

    .line 872
    .end local v8           #iter:Ljava/util/Iterator;
    .end local v11           #lat:Ljava/lang/Double;
    .end local v12           #listLatLng:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    .end local v13           #lng:Ljava/lang/Double;
    :cond_4
    sget-object v15, Lcom/didi/map/marker/MarkerController;->mNearDrivers:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 873
    .restart local v8       #iter:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 874
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 875
    .restart local v7       #entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 876
    .local v4, dId:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/didi/map/marker/DriverMarker;

    .line 877
    .local v14, marker:Lcom/didi/map/marker/DriverMarker;
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 878
    invoke-virtual {v14}, Lcom/didi/map/marker/DriverMarker;->removeWithAnimation()V

    .line 879
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 886
    .end local v4           #dId:Ljava/lang/String;
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v14           #marker:Lcom/didi/map/marker/DriverMarker;
    :cond_6
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 887
    .local v9, iterNewDrivers:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 889
    invoke-static/range {p0 .. p0}, Lcom/didi/frame/business/Business;->getBusinessByProduct(I)Lcom/didi/frame/business/Business;

    move-result-object v15

    invoke-static {v15}, Lcom/didi/map/marker/MarkerController;->isBusinessInSwitcher(Lcom/didi/frame/business/Business;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 893
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 894
    .restart local v7       #entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 895
    .restart local v4       #dId:Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/didi/common/model/Driver;

    .line 896
    .restart local v5       #driver:Lcom/didi/common/model/Driver;
    sget-object v15, Lcom/didi/map/marker/MarkerController;->mNearDrivers:Ljava/util/Map;

    invoke-interface {v15, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 897
    sget-object v15, Lcom/didi/map/marker/MarkerController;->mNearDrivers:Ljava/util/Map;

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/didi/map/marker/DriverMarker;

    .line 898
    .restart local v14       #marker:Lcom/didi/map/marker/DriverMarker;
    const/4 v15, 0x0

    invoke-virtual {v14, v5, v15}, Lcom/didi/map/marker/DriverMarker;->updateMarker(Lcom/didi/common/model/Driver;Z)V

    goto :goto_3

    .line 900
    .end local v14           #marker:Lcom/didi/map/marker/DriverMarker;
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "------------updateNearDrivers----------------drivers\'info: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Lcom/didi/common/model/Driver;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 901
    new-instance v14, Lcom/didi/map/marker/DriverMarker;

    invoke-direct {v14}, Lcom/didi/map/marker/DriverMarker;-><init>()V

    .line 902
    .restart local v14       #marker:Lcom/didi/map/marker/DriverMarker;
    sget-object v15, Lcom/didi/map/marker/MarkerController;->mNearDrivers:Ljava/util/Map;

    iget-object v0, v5, Lcom/didi/common/model/Driver;->did:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const/4 v15, 0x0

    invoke-virtual {v14, v5, v15}, Lcom/didi/map/marker/DriverMarker;->updateMarker(Lcom/didi/common/model/Driver;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public static updatePushCarContent(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 630
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    if-nez v0, :cond_0

    .line 631
    new-instance v0, Lcom/didi/map/marker/PushCarsMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/PushCarsMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    .line 633
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/PushCarsMarker;->updateCarContent(Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public static updatePushCarContentResetBg(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 730
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    if-nez v0, :cond_0

    .line 731
    new-instance v0, Lcom/didi/map/marker/PushCarsMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/PushCarsMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    .line 733
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushCarsMarker:Lcom/didi/map/marker/PushCarsMarker;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/didi/map/marker/PushCarsMarker;->updateCarContent(Ljava/lang/String;Z)V

    .line 734
    return-void
.end method

.method public static updatePushDistanceMarkerPos(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 771
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushDistanceMarker:Lcom/didi/map/marker/PushDistanceMarker;

    if-nez v0, :cond_0

    .line 774
    :goto_0
    return-void

    .line 773
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushDistanceMarker:Lcom/didi/map/marker/PushDistanceMarker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/map/marker/PushDistanceMarker;->updatePosition(DD)V

    goto :goto_0
.end method

.method public static updatePushDistanceTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "distance"
    .parameter "time"

    .prologue
    .line 778
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushDistanceMarker:Lcom/didi/map/marker/PushDistanceMarker;

    if-nez v0, :cond_0

    .line 781
    :goto_0
    return-void

    .line 780
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushDistanceMarker:Lcom/didi/map/marker/PushDistanceMarker;

    invoke-virtual {v0, p0, p1}, Lcom/didi/map/marker/PushDistanceMarker;->updateDistanceTime(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updatePushDriveTime(Ljava/lang/String;)V
    .locals 2
    .parameter "time"

    .prologue
    .line 755
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushTimeMarker:Lcom/didi/map/marker/PushTimeMarker;

    if-nez v0, :cond_0

    .line 756
    new-instance v0, Lcom/didi/map/marker/PushTimeMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/PushTimeMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->pushTimeMarker:Lcom/didi/map/marker/PushTimeMarker;

    .line 758
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->pushTimeMarker:Lcom/didi/map/marker/PushTimeMarker;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/didi/map/marker/PushTimeMarker;->updateCarContent(Ljava/lang/String;Z)V

    .line 759
    return-void
.end method

.method public static updateSimpleMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 1175
    sget-object v0, Lcom/didi/map/marker/MarkerController;->simpleMarker:Lcom/didi/map/marker/SimpleMarker;

    if-nez v0, :cond_0

    .line 1176
    new-instance v0, Lcom/didi/map/marker/SimpleMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/SimpleMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->simpleMarker:Lcom/didi/map/marker/SimpleMarker;

    .line 1178
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->simpleMarker:Lcom/didi/map/marker/SimpleMarker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/map/marker/SimpleMarker;->updateMarker(DD)V

    .line 1179
    return-void
.end method

.method public static updateSimpleMarkerAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 1191
    sget-object v0, Lcom/didi/map/marker/MarkerController;->simpleMarker:Lcom/didi/map/marker/SimpleMarker;

    if-nez v0, :cond_0

    .line 1194
    :goto_0
    return-void

    .line 1193
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->simpleMarker:Lcom/didi/map/marker/SimpleMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/SimpleMarker;->updateMarkerAngle(F)V

    goto :goto_0
.end method

.method public static updateTaxiDriversMarkerLight(I)V
    .locals 4
    .parameter "num"

    .prologue
    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taxiDriverList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/didi/map/marker/MarkerController;->driverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1083
    sget-object v2, Lcom/didi/map/marker/MarkerController;->driverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 1084
    .local v0, count:I
    if-ge p0, v0, :cond_0

    move v0, p0

    .line 1085
    :cond_0
    sget v2, Lcom/didi/map/marker/MarkerController;->lightNum:I

    if-ne v2, v0, :cond_1

    .line 1091
    :goto_0
    return-void

    .line 1087
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1088
    sget-object v2, Lcom/didi/map/marker/MarkerController;->driverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/map/marker/TaxiDriverMarker;

    const v3, 0x7f0202f8

    invoke-virtual {v2, v3}, Lcom/didi/map/marker/TaxiDriverMarker;->upDateMarkerIcon(I)V

    .line 1087
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1090
    :cond_2
    sput v0, Lcom/didi/map/marker/MarkerController;->lightNum:I

    goto :goto_0
.end method

.method public static updateTaxiDriversMarketOffLight()V
    .locals 4

    .prologue
    .line 1094
    sget-object v2, Lcom/didi/map/marker/MarkerController;->driverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 1095
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1096
    sget-object v2, Lcom/didi/map/marker/MarkerController;->driverMarkerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/map/marker/TaxiDriverMarker;

    const v3, 0x7f0202f7

    invoke-virtual {v2, v3}, Lcom/didi/map/marker/TaxiDriverMarker;->upDateMarkerIcon(I)V

    .line 1095
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1098
    :cond_0
    const/4 v2, 0x0

    sput v2, Lcom/didi/map/marker/MarkerController;->lightNum:I

    .line 1099
    return-void
.end method

.method public static updateTextFareMarker(Lcom/didi/common/model/MarkerFare;)V
    .locals 1
    .parameter "price"

    .prologue
    .line 338
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/didi/map/marker/TextFareMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/TextFareMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    .line 341
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textFareMarker:Lcom/didi/map/marker/TextFareMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/TextFareMarker;->updateTextFare(Lcom/didi/common/model/MarkerFare;)V

    .line 342
    return-void
.end method

.method public static updateTextSimpleFareMarker(Lcom/didi/common/model/MarkerFare;)V
    .locals 1
    .parameter "price"

    .prologue
    .line 386
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/didi/map/marker/TextSimpleFareMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/TextSimpleFareMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    .line 389
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->textSimpleFareMarker:Lcom/didi/map/marker/TextSimpleFareMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/TextSimpleFareMarker;->updateTextFare(Lcom/didi/common/model/MarkerFare;)V

    .line 390
    return-void
.end method

.method public static updateTimeDownMarker(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 557
    sget-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Lcom/didi/map/marker/TimeDownMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/TimeDownMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    .line 559
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/didi/map/marker/TimeDownMarker;->setMarker(DD)V

    .line 560
    return-void
.end method

.method public static updateTimeDownMarkerAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 564
    sget-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    if-nez v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 566
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->timeDownMarker:Lcom/didi/map/marker/TimeDownMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/TimeDownMarker;->updateMarkerAngle(F)V

    goto :goto_0
.end method

.method public static updateVoiceFareMarker(Lcom/didi/common/model/MarkerFare;)V
    .locals 1
    .parameter "price"

    .prologue
    .line 279
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/didi/map/marker/VoiceFareMarker;

    invoke-direct {v0}, Lcom/didi/map/marker/VoiceFareMarker;-><init>()V

    sput-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    .line 282
    :cond_0
    sget-object v0, Lcom/didi/map/marker/MarkerController;->voiceFareMarker:Lcom/didi/map/marker/VoiceFareMarker;

    invoke-virtual {v0, p0}, Lcom/didi/map/marker/VoiceFareMarker;->updateVoiceTextFare(Lcom/didi/common/model/MarkerFare;)V

    .line 283
    return-void
.end method
