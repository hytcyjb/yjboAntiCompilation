.class public Lcom/didi/frame/MapFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "MapFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final FIRST_LOAD_STATE_DEFAULT:I = 0x0

.field public static final FIRST_LOAD_STATE_LOADED:I = 0x2

.field public static final FIRST_LOAD_STATE_LOADING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MapFragment"

.field private static mFirstLoadState:I


# instance fields
.field private hasUploadCid:Z

.field private loginListener:Lcom/didi/common/listener/LoginListener;

.field private mFirstLocate:Z

.field private mFirstLocationLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private mLocationListener:Lcom/didi/soso/location/LocationInterface;

.field public mMapView:Lcom/didi/common/ui/component/SoSoMapView;

.field private redirected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/didi/frame/MapFragment;->mFirstLoadState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/MapFragment;->mFirstLocate:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/MapFragment;->hasUploadCid:Z

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/frame/MapFragment;->mFirstLocationLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 568
    new-instance v0, Lcom/didi/frame/MapFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/frame/MapFragment$8;-><init>(Lcom/didi/frame/MapFragment;)V

    iput-object v0, p0, Lcom/didi/frame/MapFragment;->loginListener:Lcom/didi/common/listener/LoginListener;

    .line 749
    new-instance v0, Lcom/didi/frame/MapFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/frame/MapFragment$10;-><init>(Lcom/didi/frame/MapFragment;)V

    iput-object v0, p0, Lcom/didi/frame/MapFragment;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/MapFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->getGuideFlag()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/didi/frame/MapFragment;->mFirstLoadState:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    sput p0, Lcom/didi/frame/MapFragment;->mFirstLoadState:I

    return p0
.end method

.method static synthetic access$200(Lcom/didi/frame/MapFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->getBtsConfig()V

    return-void
.end method

.method static synthetic access$302(Lcom/didi/frame/MapFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/didi/frame/MapFragment;->redirected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/didi/frame/MapFragment;Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/didi/frame/MapFragment;->updateLocation(Lcom/tencent/map/geolocation/TencentLocation;)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/frame/MapFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/didi/frame/MapFragment;->hasUploadCid:Z

    return v0
.end method

.method static synthetic access$502(Lcom/didi/frame/MapFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/didi/frame/MapFragment;->hasUploadCid:Z

    return p1
.end method

.method private getAddress()V
    .locals 3

    .prologue
    .line 354
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isRealtimeFragment()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isBtsRealtimeFragment()Z

    move-result v1

    if-nez v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    .line 371
    .local v0, style:I
    :goto_1
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->updateAddressList()V

    goto :goto_0

    .line 357
    .end local v0           #style:I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private getBtsConfig()V
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lcom/didi/frame/MapFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/MapFragment$3;-><init>(Lcom/didi/frame/MapFragment;)V

    invoke-static {v0}, Lcom/didi/beatles/net/BtsRequest;->getBtsConfig(Lcom/didi/beatles/net/BtsResponseListener;)V

    .line 333
    return-void
.end method

.method private getConfig()V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCarConfigVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/didi/car/net/CarRequest;->getConfig(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 154
    return-void
.end method

.method public static getFirstLoadState()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/didi/frame/MapFragment;->mFirstLoadState:I

    return v0
.end method

.method private getGuideFlag()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/didi/frame/MapFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/MapFragment$1;-><init>(Lcom/didi/frame/MapFragment;)V

    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->getGuideFlag(Lcom/didi/common/net/ResponseListener;)V

    .line 221
    return-void
.end method

.method private getGuideInfo()V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/didi/frame/MapFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/frame/MapFragment$4;-><init>(Lcom/didi/frame/MapFragment;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getGuide(Lcom/didi/common/net/ResponseListener;)V

    .line 347
    return-void
.end method

.method private initDnsHosts()V
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/didi/frame/MapFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/MapFragment$2;-><init>(Lcom/didi/frame/MapFragment;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->doGetDNSHost(Lcom/didi/common/net/ResponseListener;)V

    .line 319
    return-void
.end method

.method private isInValid(Lcom/tencent/map/geolocation/TencentLocation;)Z
    .locals 1
    .parameter "result"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/didi/frame/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/MainActivity;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFirstLoadState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 102
    sput p0, Lcom/didi/frame/MapFragment;->mFirstLoadState:I

    .line 103
    return-void
.end method

.method private setMapToLastLocation()V
    .locals 6

    .prologue
    .line 127
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getLatitudeString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getLongitudeString()Ljava/lang/String;

    move-result-object v1

    .line 129
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

    .line 130
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isCoordinateEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isCoordinateEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    goto :goto_0
.end method

.method private setMarker()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useDepart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 624
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->setDepartMarker(DD)V

    .line 626
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 648
    :goto_0
    return-void

    .line 630
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useDepartMarkerRemove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isDepartMakerRemove()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 631
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isDepartMakerRemove()Z

    move-result v0

    if-nez v0, :cond_1

    .line 632
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDepartMarker()V

    .line 633
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_2

    .line 634
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showTaxiDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 646
    :cond_1
    :goto_1
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateMyMarkerAddress()V

    goto :goto_0

    .line 636
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_3

    .line 637
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showCarDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 639
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_4

    .line 640
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showFlierDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 642
    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    .line 643
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showDDriveDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private showDrivers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 710
    sget-boolean v2, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v2, :cond_4

    .line 711
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_1

    .line 712
    invoke-static {v4}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDriversOnce(I)V

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_3

    .line 714
    :cond_2
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 715
    .local v1, order:Lcom/didi/car/model/CarOrder;
    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCarLevel()I

    move-result v0

    .line 716
    .local v0, carLevel:I
    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDriversOnce(I)V

    goto :goto_0

    .line 717
    .end local v0           #carLevel:I
    .end local v1           #order:Lcom/didi/car/model/CarOrder;
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 718
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/DriversHelper;->showDDriveDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 722
    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_5

    .line 723
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/DriversHelper;->showTaxiDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 725
    :cond_5
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_6

    .line 726
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/DriversHelper;->showCarDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 728
    :cond_6
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_7

    .line 729
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/DriversHelper;->showFlierDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 731
    :cond_7
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_8

    .line 732
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/DriversHelper;->showDDriveDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 735
    :cond_8
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/didi/common/helper/DriversHelper;->showActivityDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private showLoadingMarker()V
    .locals 7

    .prologue
    .line 189
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    const v4, 0x7f0b03db

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0201c2

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/didi/map/marker/MarkerController;->setLoadingMarker(DDLjava/lang/String;II)V

    .line 192
    return-void
.end method

.method private upMyMarker()V
    .locals 10

    .prologue
    .line 536
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isBtsRealtimeFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeLoadindMarker()V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeLoadindMarker()V

    .line 544
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isRealtimeFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isMyMarkerRemove()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(DD)V

    .line 551
    :goto_1
    iget-object v0, p0, Lcom/didi/frame/MapFragment;->mFirstLocationLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 552
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v9

    .line 553
    .local v9, mCurrentLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-wide v0, v9, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v2, v9, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/didi/frame/MapFragment;->mFirstLocationLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-object v6, p0, Lcom/didi/frame/MapFragment;->mFirstLocationLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v6, v6, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v7}, Lcom/didi/common/util/Utils;->distance(DDDD)D

    move-result-wide v0

    double-to-int v8, v0

    .line 554
    .local v8, distance:I
    sget-boolean v0, Lcom/didi/map/MapDragListener;->isMoved:Z

    if-nez v0, :cond_0

    const/16 v0, 0x32

    if-le v8, v0, :cond_0

    .line 555
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    goto :goto_0

    .line 550
    .end local v8           #distance:I
    .end local v9           #mCurrentLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_2
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateMyMarkerAddress()V

    goto :goto_1
.end method

.method private updateAddressList()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    .line 376
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->upMyMarker()V

    .line 378
    const-string v3, "faban"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadstate first:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/didi/frame/MapFragment;->mFirstLoadState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  isMove:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/didi/map/MapDragListener;->isMoved:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget v3, Lcom/didi/frame/MapFragment;->mFirstLoadState:I

    if-nez v3, :cond_2

    .line 380
    sput v2, Lcom/didi/frame/MapFragment;->mFirstLoadState:I

    .line 381
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/frame/MapFragment;->mFirstLocationLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 382
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v8

    .line 383
    .local v8, mAddressDeparture:Lcom/didi/common/model/Address;
    if-nez v8, :cond_0

    .line 384
    new-instance v8, Lcom/didi/common/model/Address;

    .end local v8           #mAddressDeparture:Lcom/didi/common/model/Address;
    invoke-direct {v8}, Lcom/didi/common/model/Address;-><init>()V

    .line 387
    .restart local v8       #mAddressDeparture:Lcom/didi/common/model/Address;
    :cond_0
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/didi/common/model/Address;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 388
    const-string v3, "maxListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mapfragment zoom lat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/didi/common/model/Address;->getLatDouble()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  lng:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/didi/common/model/Address;->getLngDouble()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {v8}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 390
    invoke-static {v2}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 392
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v5

    iget-wide v5, v5, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v3, v4, v5, v6}, Lcom/didi/map/marker/MarkerController;->setFixDepartMarker(DD)V

    .line 394
    sget-boolean v3, Lcom/didi/map/MapDragListener;->isMoved:Z

    if-nez v3, :cond_1

    .line 395
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v3

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 399
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 400
    .local v0, currentTimeMills:J
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/didi/frame/MapFragment$5;

    invoke-direct {v7, p0}, Lcom/didi/frame/MapFragment$5;-><init>(Lcom/didi/frame/MapFragment;)V

    invoke-static/range {v0 .. v7}, Lcom/didi/common/net/CommonRequest;->getHotSubPoi(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 495
    new-instance v2, Lcom/didi/frame/MapFragment$6;

    invoke-direct {v2, p0}, Lcom/didi/frame/MapFragment$6;-><init>(Lcom/didi/frame/MapFragment;)V

    invoke-static {v2}, Lcom/didi/common/net/CommonRequest;->doQueryHasNewMsg(Lcom/didi/common/net/ResponseListener;)V

    .line 512
    invoke-static {}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->getInstance()Lcom/didi/ddrive/managers/DriveRealtimeManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/didi/frame/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v4

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->getSupportCity(Landroid/content/Context;DD)V

    .line 515
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->defaultLocationMargin()V

    .line 517
    new-instance v2, Lcom/didi/frame/MapFragment$7;

    invoke-direct {v2, p0}, Lcom/didi/frame/MapFragment$7;-><init>(Lcom/didi/frame/MapFragment;)V

    const-wide/16 v3, 0x5dc

    invoke-static {v2, v3, v4}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 525
    .end local v0           #currentTimeMills:J
    .end local v8           #mAddressDeparture:Lcom/didi/common/model/Address;
    :cond_2
    return-void
.end method

.method private updateGeoPoint(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 5
    .parameter "geoPoint"

    .prologue
    .line 253
    invoke-static {p1}, Lcom/didi/common/helper/LocationHelper;->updateCurrentPoint(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 254
    iget-boolean v1, p0, Lcom/didi/frame/MapFragment;->mFirstLocate:Z

    if-eqz v1, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->getGuideInfo()V

    .line 258
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/didi/frame/MapFragment;->mFirstLocate:Z

    .line 260
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->initDnsHosts()V

    .line 261
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->getBtsConfig()V

    .line 262
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/didi/common/helper/GThirdTokenManager;->refreshGThirdToken(ZLcom/didi/common/listener/ThirdTokenListener;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isBtsRealtimeFragment()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isLoadingMarkerRemove()Z

    move-result v0

    .line 268
    .local v0, isremove:Z
    if-eqz v0, :cond_2

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapFragUpdateGeo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/marker/MarkerController;->updateBtsMapUserMarkerPos(DD)V

    goto :goto_0

    .line 274
    :cond_2
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->showLoadingMarker()V

    goto :goto_0

    .line 278
    .end local v0           #isremove:Z
    :cond_3
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isRealtimeFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isLoadingMarkerRemove()Z

    move-result v0

    .line 280
    .restart local v0       #isremove:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isremove="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 281
    if-eqz v0, :cond_4

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapFragUpdateGeo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(DD)V

    goto/16 :goto_0

    .line 286
    :cond_4
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->showLoadingMarker()V

    goto/16 :goto_0
.end method

.method private updateLocation(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapFragUpdateLoc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/didi/soso/location/LocationController;->setLat(D)V

    .line 230
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/didi/soso/location/LocationController;->setLng(D)V

    .line 231
    invoke-direct {p0, p1}, Lcom/didi/frame/MapFragment;->isInValid(Lcom/tencent/map/geolocation/TencentLocation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-static {}, Lcom/didi/common/util/LogUtil;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/didi/frame/MainActivity;->testLat:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/didi/frame/MainActivity;->testLng:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    const-string v1, "--**--"

    sget-object v2, Lcom/didi/frame/MainActivity;->testLng:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "--**--"

    sget-object v2, Lcom/didi/frame/MainActivity;->testLat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    :cond_1
    :goto_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->toLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 244
    .local v0, geoPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setMyLng(Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setMyLat(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, v0}, Lcom/didi/frame/MapFragment;->updateGeoPoint(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 249
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->getAddress()V

    goto :goto_0

    .line 237
    .end local v0           #geoPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_2
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/MainActivity;->testLat:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/didi/soso/location/LocationController;->setLat(D)V

    .line 238
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/MainActivity;->testLng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/didi/soso/location/LocationController;->setLng(D)V

    goto :goto_1
.end method


# virtual methods
.method public modifyAddress()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 585
    iget-boolean v0, p0, Lcom/didi/frame/MapFragment;->redirected:Z

    if-eqz v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 587
    :cond_0
    const-string v0, "f_address_popup_click"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 588
    iput-boolean v4, p0, Lcom/didi/frame/MapFragment;->redirected:Z

    .line 589
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050016

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 596
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isRealtimeFragment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_2

    .line 598
    const-string v0, "taxi_home_depart_click"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 601
    :goto_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    .line 602
    const-string v0, "pdjxhome_01_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 610
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/didi/frame/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/frame/MapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/frame/DepartureActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1, v4}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 611
    new-instance v0, Lcom/didi/frame/MapFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/frame/MapFragment$9;-><init>(Lcom/didi/frame/MapFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 600
    :cond_2
    const-string v0, "car_home_depart_click"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 605
    :cond_3
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_4

    .line 606
    const-string v0, "taxi_confirm_depart_click"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 608
    :cond_4
    const-string v0, "car_confirm_depart_click"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 652
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 653
    if-eqz p3, :cond_1

    const-string v2, "departure"

    const/4 v3, -0x1

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->checkFlierIsOpen()V

    .line 658
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/FragmentMgr;->isRealtimeFragment()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 659
    invoke-static {}, Lcom/didi/ddrive/helper/DriveAbilityHelper;->checkDDriveIsOpen()V

    .line 660
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->checkTopicIsOpen()V

    .line 661
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->setMarker()V

    goto :goto_0

    .line 664
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepartName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 666
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v2

    if-nez v2, :cond_3

    .line 667
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v2

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/didi/map/marker/MarkerController;->setTextOrderMarker(DD)V

    .line 669
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->showDrivers()V

    goto :goto_0

    .line 673
    :cond_3
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v4

    const v6, 0x7f020253

    invoke-static {v2, v3, v4, v5, v6}, Lcom/didi/map/marker/MarkerController;->setTextOrderMarker(DDI)V

    .line 674
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 675
    sget-boolean v2, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v2, :cond_8

    .line 676
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->shouldGetDrivers()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 678
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_4

    .line 679
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDriversOnce(I)V

    goto/16 :goto_0

    .line 680
    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v2, v3, :cond_5

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_6

    .line 681
    :cond_5
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 682
    .local v1, order:Lcom/didi/car/model/CarOrder;
    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCarLevel()I

    move-result v0

    .line 683
    .local v0, carLevel:I
    invoke-static {v0}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDriversOnce(I)V

    goto/16 :goto_0

    .line 684
    .end local v0           #carLevel:I
    .end local v1           #order:Lcom/didi/car/model/CarOrder;
    :cond_6
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 685
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/didi/common/helper/DriversHelper;->showDDriveDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 688
    :cond_7
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    goto/16 :goto_0

    .line 691
    :cond_8
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->shouldGetDrivers()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 692
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_9

    .line 693
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/didi/common/helper/DriversHelper;->showTaxiDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 694
    :cond_9
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_a

    .line 695
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/didi/common/helper/DriversHelper;->showCarDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 696
    :cond_a
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_b

    .line 697
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/didi/common/helper/DriversHelper;->showFlierDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 698
    :cond_b
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 699
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/didi/common/helper/DriversHelper;->showDDriveDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 701
    :cond_c
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v2

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onAttach(Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/didi/frame/MapFragment;->mLocationListener:Lcom/didi/soso/location/LocationInterface;

    invoke-static {v1}, Lcom/didi/soso/location/ListenerCollection;->addLocationLister(Lcom/didi/soso/location/LocationInterface;)V

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/didi/frame/MapFragment;->mFirstLocate:Z

    .line 109
    const v1, 0x7f0300c8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, view:Landroid/view/View;
    const-string v1, "mapCreateView"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 111
    const v1, 0x7f080436

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/common/ui/component/SoSoMapView;

    iput-object v1, p0, Lcom/didi/frame/MapFragment;->mMapView:Lcom/didi/common/ui/component/SoSoMapView;

    .line 112
    iget-object v1, p0, Lcom/didi/frame/MapFragment;->mMapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/SoSoMapView;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/map/MapController;->setMap(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V

    .line 113
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->setMapToLastLocation()V

    .line 114
    invoke-virtual {p0}, Lcom/didi/frame/MapFragment;->registerLoginListener()V

    .line 115
    invoke-direct {p0}, Lcom/didi/frame/MapFragment;->getConfig()V

    .line 116
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->registEventBus(Ljava/lang/Object;)V

    .line 117
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/didi/frame/MapFragment;->mMapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->unRegistEventBus(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p0}, Lcom/didi/frame/MapFragment;->unregisterLoginListener()V

    .line 172
    return-void

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/HomepageDriveSupportcityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 742
    const-string v0, "MapFragment"

    const-string v1, "drive support city event"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isRealtimeFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    invoke-static {}, Lcom/didi/ddrive/helper/DriveAbilityHelper;->checkDDriveIsOpen()V

    .line 747
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 159
    const-string v0, "mapOnPause"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/didi/frame/MapFragment;->mMapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->onPause()V

    .line 161
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 145
    const-string v0, "mapOnResume"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/didi/frame/MapFragment;->mMapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/MapController;->setMap(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V

    .line 147
    iget-object v0, p0, Lcom/didi/frame/MapFragment;->mMapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->onResume()V

    .line 149
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStart()V

    .line 184
    iget-object v0, p0, Lcom/didi/frame/MapFragment;->mMapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->onStart()V

    .line 185
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStop()V

    .line 177
    const-string v0, "mapOnStop"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/didi/frame/MapFragment;->mMapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->onStop()V

    .line 179
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 138
    const v1, 0x7f0801a1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/RelativeLayout;

    .line 139
    .local v0, title:Lx/RelativeLayout;
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 140
    return-void
.end method

.method public registerLoginListener()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/didi/frame/MapFragment;->loginListener:Lcom/didi/common/listener/LoginListener;

    invoke-static {v0}, Lcom/didi/common/listener/ListenerHub;->addLoginListener(Lcom/didi/common/listener/LoginListener;)V

    .line 562
    return-void
.end method

.method public setMap()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/didi/frame/MapFragment;->mMapView:Lcom/didi/common/ui/component/SoSoMapView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/didi/frame/MapFragment;->mMapView:Lcom/didi/common/ui/component/SoSoMapView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/SoSoMapView;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/MapController;->setMap(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V

    .line 123
    :cond_0
    return-void
.end method

.method public unregisterLoginListener()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/didi/frame/MapFragment;->loginListener:Lcom/didi/common/listener/LoginListener;

    invoke-static {v0}, Lcom/didi/common/listener/ListenerHub;->removeLoginListener(Lcom/didi/common/listener/LoginListener;)V

    .line 566
    return-void
.end method
