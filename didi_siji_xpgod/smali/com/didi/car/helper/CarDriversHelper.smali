.class public Lcom/didi/car/helper/CarDriversHelper;
.super Lcom/didi/common/helper/DriversHelper;
.source "CarDriversHelper.java"


# static fields
.field protected static carDriversWithCarType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/car/helper/CarDriversHelper;->carDriversWithCarType:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/didi/common/helper/DriversHelper;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/business/Business;Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-static {p0, p1, p2, p3}, Lcom/didi/car/helper/CarDriversHelper;->onGetDriverListFail(Lcom/didi/frame/business/Business;Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getCarDriversData(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "business"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 58
    invoke-static {p1, p2}, Lcom/didi/car/helper/CarDriversHelper;->isAvaliate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v0, Lcom/didi/car/helper/CarDriversHelper$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/didi/car/helper/CarDriversHelper$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/didi/frame/business/Business;)V

    invoke-static {p0, p1, p2, v0}, Lcom/didi/car/net/CarRequest;->getNearbyDriversByCarType(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private static onGetDriverListFail(Lcom/didi/frame/business/Business;Lcom/didi/car/model/CarDriverList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "business"
    .parameter "list"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 92
    sget v0, Lcom/didi/car/helper/CarDriversHelper;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 93
    sget v0, Lcom/didi/car/helper/CarDriversHelper;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/didi/car/helper/CarDriversHelper;->mRetryCount:I

    .line 97
    invoke-static {p0, p2, p3}, Lcom/didi/car/helper/CarDriversHelper;->getCarDriversData(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void
.end method

.method public static showCarDriversOnMap(Lcom/didi/frame/business/Business;DD)V
    .locals 6
    .parameter "business"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 37
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-static/range {v0 .. v5}, Lcom/didi/car/helper/CarDriversHelper;->showCarDriversOnMap(Lcom/didi/frame/business/Business;DDF)V

    .line 38
    return-void
.end method

.method private static showCarDriversOnMap(Lcom/didi/frame/business/Business;DDF)V
    .locals 1
    .parameter "business"
    .parameter "lat"
    .parameter "lng"
    .parameter "zoom"

    .prologue
    .line 41
    sget-object v0, Lcom/didi/car/helper/CarDriversHelper;->carDriversWithCarType:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/car/helper/CarDriversHelper;->carDriversWithCarType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne p0, v0, :cond_1

    .line 43
    sget-object v0, Lcom/didi/car/helper/CarDriversHelper;->carDriversWithCarType:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setCarDriverWithCarTypeMarkerList(Ljava/util/ArrayList;)V

    .line 48
    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, p5, v0

    if-nez v0, :cond_2

    .line 49
    sget-object v0, Lcom/didi/car/helper/CarDriversHelper;->carDriversWithCarType:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/didi/map/MapController;->zoomCenterWithCarDrivers(DDLjava/util/ArrayList;)V

    .line 55
    :cond_0
    :goto_1
    return-void

    .line 45
    :cond_1
    sget-object v0, Lcom/didi/car/helper/CarDriversHelper;->carDriversWithCarType:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setFlierDriverWithCarTypeMarkerList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/didi/map/MapController;->setMapCenterZoom(DDF)V

    goto :goto_1
.end method

.method public static showCarDriversWithZoomAndCarType(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "business"
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/didi/car/helper/CarDriversHelper;->getCarDriversData(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
