.class public Lcom/didi/common/helper/DriversHelper;
.super Ljava/lang/Object;
.source "DriversHelper.java"


# static fields
.field protected static final CAR_MAX_RETRY_COUNT:I = 0x3

.field protected static final MAX_RETRY_COUNT:I = 0x5

.field private static carArrivalTimeTip:Ljava/lang/String;

.field protected static carBookDrivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;"
        }
    .end annotation
.end field

.field private static carDrivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;"
        }
    .end annotation
.end field

.field private static ddriveDrivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/http/response/NearByDriveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static flierArrivalTimeTip:Ljava/lang/String;

.field protected static flierBookDrivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;"
        }
    .end annotation
.end field

.field protected static flierDrivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;"
        }
    .end annotation
.end field

.field public static loadFilerDrivers:Z

.field private static mDriveRetryCount:I

.field private static mFlierRetryCount:I

.field static mGetNearDriversForOneceListener:Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;

.field static mGetNearDriversListener:Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;

.field private static mGetNearDriversLooper:Ljava/lang/Runnable;

.field protected static mRetryCount:I

.field private static requestDDriveSend:Z

.field private static taxiBookDrivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiDriver;",
            ">;"
        }
    .end annotation
.end field

.field private static taxiDrivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiDriver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    .line 63
    sput-object v0, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    .line 65
    sput-object v0, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    .line 67
    sput-object v0, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    .line 68
    sput-boolean v1, Lcom/didi/common/helper/DriversHelper;->requestDDriveSend:Z

    .line 75
    sput-object v0, Lcom/didi/common/helper/DriversHelper;->carArrivalTimeTip:Ljava/lang/String;

    .line 77
    sput-object v0, Lcom/didi/common/helper/DriversHelper;->flierArrivalTimeTip:Ljava/lang/String;

    .line 80
    sput v1, Lcom/didi/common/helper/DriversHelper;->mRetryCount:I

    .line 83
    sput v1, Lcom/didi/common/helper/DriversHelper;->mFlierRetryCount:I

    .line 86
    sput v1, Lcom/didi/common/helper/DriversHelper;->mDriveRetryCount:I

    .line 144
    new-instance v0, Lcom/didi/common/helper/DriversHelper$2;

    invoke-direct {v0}, Lcom/didi/common/helper/DriversHelper$2;-><init>()V

    sput-object v0, Lcom/didi/common/helper/DriversHelper;->mGetNearDriversLooper:Ljava/lang/Runnable;

    .line 204
    new-instance v0, Lcom/didi/common/helper/DriversHelper$4;

    invoke-direct {v0}, Lcom/didi/common/helper/DriversHelper$4;-><init>()V

    sput-object v0, Lcom/didi/common/helper/DriversHelper;->mGetNearDriversListener:Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;

    .line 218
    new-instance v0, Lcom/didi/common/helper/DriversHelper$5;

    invoke-direct {v0}, Lcom/didi/common/helper/DriversHelper$5;-><init>()V

    sput-object v0, Lcom/didi/common/helper/DriversHelper;->mGetNearDriversForOneceListener:Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;

    .line 532
    sput-boolean v1, Lcom/didi/common/helper/DriversHelper;->loadFilerDrivers:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(DD)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/didi/common/helper/DriversHelper;->showCarDriversOnMap(DD)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 55
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->upDateMyMarker()V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/didi/common/helper/DriversHelper;->onGetFlierDriverListFail(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-boolean p0, Lcom/didi/common/helper/DriversHelper;->requestDDriveSend:Z

    return p0
.end method

.method static synthetic access$1200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/didi/taxi/model/TaxiDriverList;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/didi/common/helper/DriversHelper;->onGetDriverListFail(Lcom/didi/taxi/model/TaxiDriverList;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V

    return-void
.end method

.method static synthetic access$1502(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/didi/common/helper/DriversHelper;->taxiBookDrivers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Ljava/util/ArrayList;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/didi/common/helper/DriversHelper;->showTaxiAsyncDrivers(Ljava/util/ArrayList;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic access$1700(Ljava/util/ArrayList;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/didi/common/helper/DriversHelper;->showCarAsyncDrivers(Ljava/util/ArrayList;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->carArrivalTimeTip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/didi/common/helper/DriversHelper;->carArrivalTimeTip:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->mGetNearDriversLooper:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(DD)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/didi/common/helper/DriversHelper;->showFlierDriversOnMap(DD)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->flierArrivalTimeTip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/didi/common/helper/DriversHelper;->flierArrivalTimeTip:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(DD)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/didi/common/helper/DriversHelper;->showDDriveDriversOnMap(DD)V

    return-void
.end method

.method static synthetic access$700(DD)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/didi/common/helper/DriversHelper;->showTaxiDriversOnMap(DD)V

    return-void
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    sput-object p0, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/didi/common/helper/DriversHelper;->onGetDriverListFail(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static clearAllDrivers()V
    .locals 0

    .prologue
    .line 431
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearCarDrivers()V

    .line 432
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearTaxiDrivers()V

    .line 433
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearFlierDrivers()V

    .line 434
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearDDriveDrivers()V

    .line 435
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearBookingDrivers()V

    .line 436
    return-void
.end method

.method public static clearBookingDrivers()V
    .locals 0

    .prologue
    .line 424
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearTaxiBookingDrivers()V

    .line 425
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearCarBookingDrivers()V

    .line 426
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearFlierBookingDrivers()V

    .line 427
    return-void
.end method

.method public static clearCarBookingDrivers()V
    .locals 1

    .prologue
    .line 410
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->carBookDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->carBookDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 412
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/helper/DriversHelper;->carBookDrivers:Ljava/util/ArrayList;

    .line 413
    return-void
.end method

.method public static clearCarDrivers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 465
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 466
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 467
    :cond_0
    sput-object v1, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    .line 468
    sput-object v1, Lcom/didi/common/helper/DriversHelper;->carArrivalTimeTip:Ljava/lang/String;

    .line 469
    return-void
.end method

.method public static clearDDriveDrivers()V
    .locals 1

    .prologue
    .line 482
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 483
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 484
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    .line 485
    return-void
.end method

.method public static clearFlierBookingDrivers()V
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->flierBookDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 418
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->flierBookDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 419
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/helper/DriversHelper;->flierBookDrivers:Ljava/util/ArrayList;

    .line 420
    return-void
.end method

.method public static clearFlierDrivers()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 473
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 475
    :cond_0
    sput-object v1, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    .line 476
    sput-object v1, Lcom/didi/common/helper/DriversHelper;->flierArrivalTimeTip:Ljava/lang/String;

    .line 477
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/common/helper/DriversHelper;->loadFilerDrivers:Z

    .line 478
    return-void
.end method

.method public static clearTaxiBookingDrivers()V
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiBookDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 404
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiBookDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 405
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/helper/DriversHelper;->taxiBookDrivers:Ljava/util/ArrayList;

    .line 406
    return-void
.end method

.method public static clearTaxiDrivers()V
    .locals 1

    .prologue
    .line 458
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 459
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    .line 461
    return-void
.end method

.method private static getAsyncDrivers(Ljava/lang/String;DDDD)V
    .locals 20
    .parameter "city"
    .parameter "fromLat"
    .parameter "fromLng"
    .parameter "toLat"
    .parameter "toLng"

    .prologue
    .line 845
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    cmpl-double v4, p1, v4

    if-nez v4, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 851
    invoke-static/range {p0 .. p0}, Lcom/didi/common/util/Utils;->getCityId(Ljava/lang/String;)I

    move-result v13

    .line 853
    .local v13, cityId:I
    const/4 v4, -0x1

    if-ne v13, v4, :cond_2

    .line 854
    sget-object v4, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/didi/common/database/CityListHelper;->getCityByName(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v14

    .line 855
    .local v14, cityObj:Lcom/didi/common/model/City;
    if-eqz v14, :cond_2

    .line 856
    iget v13, v14, Lcom/didi/common/model/City;->cityID:I

    .line 860
    .end local v14           #cityObj:Lcom/didi/common/model/City;
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v4, v5, :cond_4

    .line 861
    sget-object v4, Lcom/didi/common/helper/DriversHelper;->taxiBookDrivers:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/didi/common/helper/DriversHelper;->taxiBookDrivers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 862
    sget-object v4, Lcom/didi/common/helper/DriversHelper;->taxiBookDrivers:Ljava/util/ArrayList;

    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-wide/from16 v0, p5

    move-wide/from16 v2, p7

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-static {v4, v5, v6}, Lcom/didi/common/helper/DriversHelper;->showTaxiAsyncDrivers(Ljava/util/ArrayList;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0

    .line 865
    :cond_3
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v18

    new-instance v4, Lcom/didi/common/helper/DriversHelper$13;

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-direct/range {v4 .. v12}, Lcom/didi/common/helper/DriversHelper$13;-><init>(DDDD)V

    move v5, v13

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Lcom/didi/taxi/net/TaxiRequest;->getDrivers(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0

    .line 878
    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v4, v5, :cond_6

    .line 879
    sget-object v4, Lcom/didi/common/helper/DriversHelper;->carBookDrivers:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/didi/common/helper/DriversHelper;->carBookDrivers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 880
    sget-object v4, Lcom/didi/common/helper/DriversHelper;->carBookDrivers:Ljava/util/ArrayList;

    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-wide/from16 v0, p5

    move-wide/from16 v2, p7

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-static {v4, v5, v6}, Lcom/didi/common/helper/DriversHelper;->showCarAsyncDrivers(Ljava/util/ArrayList;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto/16 :goto_0

    .line 883
    :cond_5
    sget-object v15, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v19

    new-instance v4, Lcom/didi/common/helper/DriversHelper$14;

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-direct/range {v4 .. v12}, Lcom/didi/common/helper/DriversHelper$14;-><init>(DDDD)V

    move-object v5, v15

    move v6, v13

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object v11, v4

    invoke-static/range {v5 .. v11}, Lcom/didi/car/net/CarRequest;->getDrivers(Lcom/didi/frame/business/Business;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto/16 :goto_0

    .line 896
    :cond_6
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v4, v5, :cond_0

    .line 897
    sget-object v4, Lcom/didi/common/helper/DriversHelper;->flierBookDrivers:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    sget-object v4, Lcom/didi/common/helper/DriversHelper;->flierBookDrivers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 898
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showViewByDrivers()V

    goto/16 :goto_0

    .line 901
    :cond_7
    sget-object v4, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/didi/common/helper/DriversHelper$15;

    invoke-direct {v10}, Lcom/didi/common/helper/DriversHelper$15;-><init>()V

    move v5, v13

    invoke-static/range {v4 .. v10}, Lcom/didi/car/net/CarRequest;->getDrivers(Lcom/didi/frame/business/Business;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto/16 :goto_0
.end method

.method public static getCarBookingDrivers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->carBookDrivers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getCarDriversData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 490
    invoke-static {p0, p1}, Lcom/didi/common/helper/DriversHelper;->isAvaliate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 492
    :cond_0
    const v0, 0x7f0b04a1

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(Ljava/lang/String;)V

    .line 493
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    new-instance v1, Lcom/didi/common/helper/DriversHelper$9;

    invoke-direct {v1, p0, p1}, Lcom/didi/common/helper/DriversHelper$9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, p1, v1}, Lcom/didi/car/net/CarRequest;->getNearbyDrivers(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private static getDDriveDriversData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 577
    invoke-static {p0, p1}, Lcom/didi/common/helper/DriversHelper;->isAvaliate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    sget-boolean v0, Lcom/didi/common/helper/DriversHelper;->requestDDriveSend:Z

    if-nez v0, :cond_0

    .line 580
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/common/helper/DriversHelper;->requestDDriveSend:Z

    .line 581
    invoke-static {}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->getInstance()Lcom/didi/ddrive/managers/DriveRealtimeManager;

    move-result-object v0

    new-instance v1, Lcom/didi/common/helper/DriversHelper$11;

    invoke-direct {v1, p0, p1}, Lcom/didi/common/helper/DriversHelper$11;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->getArroundDrives(Ljava/lang/String;Ljava/lang/String;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;)V

    goto :goto_0
.end method

.method public static getFlierBookingDrivers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->flierBookDrivers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getFlierDriversData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 534
    invoke-static {p0, p1}, Lcom/didi/common/helper/DriversHelper;->isAvaliate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    :goto_0
    return-void

    .line 536
    :cond_0
    const v0, 0x7f0b04a1

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(Ljava/lang/String;)V

    .line 537
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    new-instance v1, Lcom/didi/common/helper/DriversHelper$10;

    invoke-direct {v1, p0, p1}, Lcom/didi/common/helper/DriversHelper$10;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0, p1, v1}, Lcom/didi/car/net/CarRequest;->getNearbyDrivers(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method static getHttpSendLocationListner(Z)Lcom/didi/common/net/ResponseListener;
    .locals 1
    .parameter "needZoom"

    .prologue
    .line 183
    new-instance v0, Lcom/didi/common/helper/DriversHelper$3;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DriversHelper$3;-><init>(Z)V

    return-object v0
.end method

.method public static getTaxiBookingDrivers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiDriver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiBookDrivers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static getTaxiDriversData(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V
    .locals 2
    .parameter "lat"
    .parameter "lng"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 619
    invoke-static {p0, p1}, Lcom/didi/common/helper/DriversHelper;->isAvaliate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker(Ljava/lang/String;)V

    .line 626
    :goto_1
    new-instance v0, Lcom/didi/common/helper/DriversHelper$12;

    invoke-direct {v0, p2, p0, p1}, Lcom/didi/common/helper/DriversHelper$12;-><init>(Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/didi/taxi/net/TaxiRequest;->getNearbyDrivers(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0

    .line 624
    :cond_1
    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static hasDrivers()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_1

    .line 441
    sget-object v1, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 443
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_3

    .line 444
    sget-object v1, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 446
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_4

    .line 447
    sget-object v1, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 449
    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_2

    .line 450
    sget-object v1, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method protected static isAvaliate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 812
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isCoordinateEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isCoordinateEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 813
    :cond_0
    const/4 v0, 0x0

    .line 814
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static onGetDDriveDriverListFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 691
    sget v0, Lcom/didi/common/helper/DriversHelper;->mDriveRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 692
    sget v0, Lcom/didi/common/helper/DriversHelper;->mDriveRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/didi/common/helper/DriversHelper;->mDriveRetryCount:I

    .line 696
    invoke-static {p0, p1}, Lcom/didi/common/helper/DriversHelper;->getDDriveDriversData(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    :cond_0
    return-void
.end method

.method private static onGetDriverListFail(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "list"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 671
    sget v0, Lcom/didi/common/helper/DriversHelper;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 672
    sget v0, Lcom/didi/common/helper/DriversHelper;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/didi/common/helper/DriversHelper;->mRetryCount:I

    .line 676
    invoke-static {p1, p2}, Lcom/didi/common/helper/DriversHelper;->getCarDriversData(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_0
    return-void
.end method

.method private static onGetDriverListFail(Lcom/didi/taxi/model/TaxiDriverList;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V
    .locals 2
    .parameter "list"
    .parameter "lat"
    .parameter "lng"
    .parameter "listener"

    .prologue
    .line 663
    sget v0, Lcom/didi/common/helper/DriversHelper;->mRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 664
    sget v0, Lcom/didi/common/helper/DriversHelper;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/didi/common/helper/DriversHelper;->mRetryCount:I

    .line 665
    invoke-static {p1, p2, p3}, Lcom/didi/common/helper/DriversHelper;->getTaxiDriversData(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V

    .line 667
    :cond_0
    return-void
.end method

.method private static onGetFlierDriverListFail(Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "list"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 681
    sget v0, Lcom/didi/common/helper/DriversHelper;->mFlierRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 682
    sget v0, Lcom/didi/common/helper/DriversHelper;->mFlierRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/didi/common/helper/DriversHelper;->mFlierRetryCount:I

    .line 686
    invoke-static {p1, p2}, Lcom/didi/common/helper/DriversHelper;->getFlierDriversData(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_0
    return-void
.end method

.method public static pauseCarAnimationDrivers()V
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterNearDriversMessageListener()V

    .line 169
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->mGetNearDriversLooper:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public static resetNearDrivers()V
    .locals 0

    .prologue
    .line 179
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeNearDrivers()V

    .line 180
    return-void
.end method

.method public static setTaxiDrivers(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 324
    .local p0, taxiDriver:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/taxi/model/TaxiDriver;>;"
    sput-object p0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    .line 325
    return-void
.end method

.method public static showActivityDrivers(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "lat"
    .parameter "lng"
    .parameter "isreload"

    .prologue
    .line 362
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 363
    :cond_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DriversHelper;->showActivityDriversOnMap(DD)V

    .line 364
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->upDateMyMarker()V

    .line 367
    :cond_2
    return-void
.end method

.method private static showActivityDriversOnMap(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 731
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 733
    .local v0, driverArrayList:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/BaseDriverFactory$BaseDriver;>;"
    const/4 v1, 0x0

    .line 734
    .local v1, sum:I
    sget-object v2, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 735
    sget-object v2, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 737
    :cond_0
    sget-object v2, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 738
    sget-object v2, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 741
    :cond_1
    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 742
    int-to-double v2, v1

    const-wide v4, 0x3fe999999999999aL

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 744
    :cond_2
    sget-object v2, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 745
    sget-object v2, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/didi/common/model/BaseDriverFactory;->createDriverListByTaxi(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 748
    :cond_3
    sget-object v2, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 749
    sget-object v2, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/didi/common/model/BaseDriverFactory;->createDriverListByCar(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 752
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 753
    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setActivityDriverMarkerList(Ljava/util/List;)V

    .line 755
    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/map/MapController;->zoomCenterWithActivityDrivers(DDLjava/util/List;)V

    .line 760
    :goto_0
    return-void

    .line 758
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    goto :goto_0
.end method

.method public static showBookingDrivers()V
    .locals 12

    .prologue
    .line 818
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 819
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v9

    .line 820
    .local v9, comm:Lcom/didi/common/model/CommonAttributes;
    iget-object v1, v9, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    sget-object v2, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-nez v1, :cond_0

    .line 821
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v11

    .line 822
    .local v11, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v10

    .line 823
    .local v10, end:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, city:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v10, :cond_0

    if-nez v11, :cond_1

    .line 828
    .end local v0           #city:Ljava/lang/String;
    .end local v10           #end:Lcom/didi/common/model/Address;
    .end local v11           #start:Lcom/didi/common/model/Address;
    :cond_0
    :goto_0
    return-void

    .line 826
    .restart local v0       #city:Ljava/lang/String;
    .restart local v10       #end:Lcom/didi/common/model/Address;
    .restart local v11       #start:Lcom/didi/common/model/Address;
    :cond_1
    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v1

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v3

    invoke-virtual {v10}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v5

    invoke-virtual {v10}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v7

    invoke-static/range {v0 .. v8}, Lcom/didi/common/helper/DriversHelper;->getAsyncDrivers(Ljava/lang/String;DDDD)V

    goto :goto_0
.end method

.method public static showCarAnimationDrivers()V
    .locals 3

    .prologue
    .line 125
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->mGetNearDriversListener:Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerNearDriversMessageListener(Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;)V

    .line 129
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->mGetNearDriversLooper:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static showCarAnimationDriversOnce(I)V
    .locals 4
    .parameter "carType"

    .prologue
    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------------showCarAnimationDriversOnce----------- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/business/Business;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---isConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/frame/push/PushHelper;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeNearDrivers()V

    .line 135
    sget-object v1, Lcom/didi/common/helper/DriversHelper;->mGetNearDriversForOneceListener:Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;

    invoke-static {v1}, Lcom/didi/car/helper/CarPushHelper;->registerNearDriversMessageListener(Lcom/didi/car/helper/CarPushHelper$NearDriversGetListener;)V

    .line 136
    invoke-static {}, Lcom/didi/frame/push/PushHelper;->isConnected()Z

    move-result v0

    .line 137
    .local v0, isPushConnected:Z
    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/protobuffer/OrderStat;->OnTrip:Lcom/didi/frame/protobuffer/OrderStat;

    invoke-static {v1, p0, v2}, Lcom/didi/car/helper/CarPushHelper;->sendLocationCallNearDrivers(Lcom/didi/frame/business/Business;ILcom/didi/frame/protobuffer/OrderStat;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/protobuffer/OrderStat;->OnTrip:Lcom/didi/frame/protobuffer/OrderStat;

    invoke-virtual {v2}, Lcom/didi/frame/protobuffer/OrderStat;->getValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/didi/common/helper/DriversHelper;->getHttpSendLocationListner(Z)Lcom/didi/common/net/ResponseListener;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Lcom/didi/common/net/CommonRequest;->sendLocationCallNearDrivers(Lcom/didi/frame/business/Business;IILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private static showCarAsyncDrivers(Ljava/util/ArrayList;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter
    .parameter "f"
    .parameter "t"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ")V"
        }
    .end annotation

    .prologue
    .line 926
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarDriver;>;"
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showViewByDrivers()V

    .line 927
    return-void
.end method

.method public static showCarDrivers(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "lat"
    .parameter "lng"
    .parameter "isreload"

    .prologue
    .line 97
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :cond_2
    if-nez p2, :cond_3

    sget-object v0, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 105
    new-instance v0, Lcom/didi/common/helper/DriversHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/common/helper/DriversHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/DriversHelper$1;->start()Lthread/Job;

    goto :goto_0

    .line 121
    :cond_3
    invoke-static {p0, p1}, Lcom/didi/common/helper/DriversHelper;->getCarDriversData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static showCarDriversOnMap(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 716
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/common/helper/DriversHelper;->showCarDriversOnMap(DDF)V

    .line 717
    return-void
.end method

.method private static showCarDriversOnMap(DDF)V
    .locals 3
    .parameter "lat"
    .parameter "lng"
    .parameter "zoom"

    .prologue
    .line 720
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isCarWaitForArrivalFragment()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 721
    .local v0, flag:Z
    :goto_0
    sget-object v1, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    .line 722
    sget-object v1, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->setCarDriverMarkerList(Ljava/util/ArrayList;)V

    .line 723
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-nez v1, :cond_2

    .line 724
    sget-object v1, Lcom/didi/common/helper/DriversHelper;->carDrivers:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2, p3, v1}, Lcom/didi/map/MapController;->zoomCenterWithCarDrivers(DDLjava/util/ArrayList;)V

    .line 728
    :cond_0
    :goto_1
    return-void

    .line 720
    .end local v0           #flag:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 726
    .restart local v0       #flag:Z
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/didi/map/MapController;->setMapCenterZoom(DDF)V

    goto :goto_1
.end method

.method public static showCarDriversWithZoom(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 4
    .parameter "lat"
    .parameter "lng"
    .parameter "zoom"

    .prologue
    .line 374
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/didi/common/helper/DriversHelper;->showCarDriversOnMap(DDF)V

    .line 375
    return-void
.end method

.method public static showDDriveDrivers(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "lat"
    .parameter "lng"
    .parameter "isreload"

    .prologue
    .line 292
    invoke-static {}, Lcom/didi/ddrive/helper/DriveAbilityHelper;->isDriveSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 295
    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 296
    new-instance v0, Lcom/didi/common/helper/DriversHelper$7;

    invoke-direct {v0, p0, p1}, Lcom/didi/common/helper/DriversHelper$7;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/DriversHelper$7;->start()Lthread/Job;

    goto :goto_0

    .line 310
    :cond_1
    invoke-static {p0, p1}, Lcom/didi/common/helper/DriversHelper;->getDDriveDriversData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static showDDriveDriversOnMap(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 781
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/common/helper/DriversHelper;->showDDriveDriversOnMap(DDF)V

    .line 782
    return-void
.end method

.method private static showDDriveDriversOnMap(DDF)V
    .locals 3
    .parameter "lat"
    .parameter "lng"
    .parameter "zoom"

    .prologue
    .line 785
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isDDriveWaitForArrivalFragment()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 786
    .local v0, flag:Z
    :goto_0
    sget-object v1, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    .line 787
    sget-object v1, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->setDDriveDriverMarkerList(Ljava/util/ArrayList;)V

    .line 788
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-nez v1, :cond_2

    .line 789
    sget-object v1, Lcom/didi/common/helper/DriversHelper;->ddriveDrivers:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2, p3, v1}, Lcom/didi/map/MapController;->zoomCenterWithDDriveDrivers(DDLjava/util/ArrayList;)V

    .line 793
    :cond_0
    :goto_1
    return-void

    .line 785
    .end local v0           #flag:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 791
    .restart local v0       #flag:Z
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/didi/map/MapController;->setMapCenterZoom(DDF)V

    goto :goto_1
.end method

.method public static showDDriveDriversWithZoom(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 4
    .parameter "lat"
    .parameter "lng"
    .parameter "zoom"

    .prologue
    .line 382
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/didi/common/helper/DriversHelper;->showDDriveDriversOnMap(DDF)V

    .line 383
    return-void
.end method

.method public static showFlierDrivers(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "lat"
    .parameter "lng"
    .parameter "isreload"

    .prologue
    .line 259
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    :cond_2
    if-nez p2, :cond_3

    sget-object v0, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 268
    new-instance v0, Lcom/didi/common/helper/DriversHelper$6;

    invoke-direct {v0, p0, p1}, Lcom/didi/common/helper/DriversHelper$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/DriversHelper$6;->start()Lthread/Job;

    goto :goto_0

    .line 284
    :cond_3
    invoke-static {p0, p1}, Lcom/didi/common/helper/DriversHelper;->getFlierDriversData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static showFlierDriversOnMap(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 763
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/common/helper/DriversHelper;->showFlierDriversOnMap(DDF)V

    .line 764
    return-void
.end method

.method private static showFlierDriversOnMap(DDF)V
    .locals 4
    .parameter "lat"
    .parameter "lng"
    .parameter "zoom"

    .prologue
    const/4 v1, 0x1

    .line 767
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/FragmentMgr;->isCarWaitForArrivalFragment()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 768
    .local v0, flag:Z
    :goto_0
    sget-object v2, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_1

    .line 769
    sget-boolean v2, Lcom/didi/common/helper/DriversHelper;->loadFilerDrivers:Z

    if-nez v2, :cond_0

    .line 770
    sget-object v2, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/didi/map/marker/MarkerController;->setFlierDriverMarkerList(Ljava/util/ArrayList;)V

    .line 771
    sput-boolean v1, Lcom/didi/common/helper/DriversHelper;->loadFilerDrivers:Z

    .line 773
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-nez v1, :cond_3

    .line 774
    sget-object v1, Lcom/didi/common/helper/DriversHelper;->flierDrivers:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2, p3, v1}, Lcom/didi/map/MapController;->zoomCenterWithCarDrivers(DDLjava/util/ArrayList;)V

    .line 778
    :cond_1
    :goto_1
    return-void

    .line 767
    .end local v0           #flag:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 776
    .restart local v0       #flag:Z
    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/didi/map/MapController;->setMapCenterZoom(DDF)V

    goto :goto_1
.end method

.method public static showFlierDriversWithZoom(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 4
    .parameter "lat"
    .parameter "lng"
    .parameter "zoom"

    .prologue
    .line 378
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/didi/common/helper/DriversHelper;->showFlierDriversOnMap(DDF)V

    .line 379
    return-void
.end method

.method private static showTaxiAsyncDrivers(Ljava/util/ArrayList;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter
    .parameter "f"
    .parameter "t"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiDriver;",
            ">;",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ")V"
        }
    .end annotation

    .prologue
    .line 920
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/taxi/model/TaxiDriver;>;"
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showViewByDrivers()V

    .line 922
    return-void
.end method

.method public static showTaxiDrivers(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "lat"
    .parameter "lng"
    .parameter "isreload"

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/didi/common/helper/DriversHelper;->showTaxiDrivers(Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V

    .line 321
    return-void
.end method

.method public static showTaxiDrivers(Ljava/lang/String;Ljava/lang/String;ZLcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V
    .locals 1
    .parameter "lat"
    .parameter "lng"
    .parameter "isreload"
    .parameter "listener"

    .prologue
    .line 334
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 338
    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 339
    new-instance v0, Lcom/didi/common/helper/DriversHelper$8;

    invoke-direct {v0, p3, p0, p1}, Lcom/didi/common/helper/DriversHelper$8;-><init>(Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/didi/common/helper/DriversHelper$8;->start()Lthread/Job;

    goto :goto_0

    .line 352
    :cond_1
    invoke-static {p0, p1, p3}, Lcom/didi/common/helper/DriversHelper;->getTaxiDriversData(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/fragment/SlideFragment$FragmentStateListener;)V

    goto :goto_0
.end method

.method private static showTaxiDriversOnMap(DD)V
    .locals 1
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 700
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/common/helper/DriversHelper;->showTaxiDriversOnMap(DDF)V

    .line 701
    return-void
.end method

.method private static showTaxiDriversOnMap(DDF)V
    .locals 2
    .parameter "lat"
    .parameter "lng"
    .parameter "zoom"

    .prologue
    .line 704
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeAllDriverMarkerList()V

    .line 705
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 706
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setTaxiDriverMarkerList(Ljava/util/ArrayList;)V

    .line 707
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-nez v0, :cond_1

    .line 708
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->taxiDrivers:Ljava/util/ArrayList;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/didi/map/MapController;->zoomCenterWithTaxiDrivers(DDLjava/util/ArrayList;)V

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/didi/map/MapController;->setMapCenterZoom(DDF)V

    goto :goto_0
.end method

.method public static showTaxiDriversWithZoom(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 4
    .parameter "lat"
    .parameter "lng"
    .parameter "zoom"

    .prologue
    .line 370
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/didi/common/helper/DriversHelper;->showTaxiDriversOnMap(DDF)V

    .line 371
    return-void
.end method

.method public static stopCarAnimationDrivers()V
    .locals 1

    .prologue
    .line 173
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterNearDriversMessageListener()V

    .line 174
    sget-object v0, Lcom/didi/common/helper/DriversHelper;->mGetNearDriversLooper:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeNearDrivers()V

    .line 176
    return-void
.end method

.method private static upDateMyMarker()V
    .locals 4

    .prologue
    .line 796
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isCarRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isTaxiRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isActivityRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isFlierRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isDDriveRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isLoadingMarkerRemove()Z

    move-result v0

    if-nez v0, :cond_2

    .line 805
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeLoadindMarker()V

    .line 808
    :cond_2
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(DD)V

    goto :goto_0
.end method

.method static updateNearDrivers(ILcom/didi/common/model/NearDrivers;Z)V
    .locals 2
    .parameter "productId"
    .parameter "nearDrivers"
    .parameter "needZoom"

    .prologue
    .line 234
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 235
    .local v0, business:Lcom/didi/frame/business/Business;
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/didi/frame/protobuffer/Product;->ProductTaxi:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v1

    if-eq p0, v1, :cond_2

    :cond_0
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/didi/frame/protobuffer/Product;->ProductPrivate:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v1

    if-eq p0, v1, :cond_2

    :cond_1
    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/didi/frame/protobuffer/Product;->ProductFast:Lcom/didi/frame/protobuffer/Product;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/Product;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_3

    .line 239
    :cond_2
    invoke-static {p0}, Lcom/didi/frame/business/Business;->getBusinessByProduct(I)Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->isBusinessInSwitcher(Lcom/didi/frame/business/Business;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 249
    :cond_3
    :goto_0
    return-void

    .line 242
    :cond_4
    iget-object v1, p1, Lcom/didi/common/model/NearDrivers;->drivers:Ljava/util/Map;

    invoke-static {p0, p2, v1}, Lcom/didi/map/marker/MarkerController;->updateNearDrivers(IZLjava/util/Map;)V

    .line 243
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    iget-object v1, p1, Lcom/didi/common/model/NearDrivers;->etaStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_5
    iget-object v1, p1, Lcom/didi/common/model/NearDrivers;->etaStr:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(Ljava/lang/String;)V

    goto :goto_0
.end method
