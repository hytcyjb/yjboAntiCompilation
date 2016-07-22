.class public Lcom/didi/soso/location/LocationController;
.super Ljava/lang/Object;
.source "LocationController.java"

# interfaces
.implements Lcom/tencent/map/geolocation/TencentLocationListener;


# static fields
.field public static final CAR_LOCATION_MARGIN_ARRVIAL:J = 0x7530L

.field public static final CAR_LOCATION_MARGIN_DRIVING:J = 0x2bf20L

.field private static final DEFAULT_LOCATE_MARGIN:J = 0x2710L

.field private static final FASTEST_LOCATE_MARGIN:J = 0x3e8L

.field private static final FAST_LOCATE_MARGIN:J = 0xbb8L

.field private static final LOW_LOCATE_MARGIN:J = 0x4e20L

.field private static isUseLocalGPS:Z

.field private static localLatitude:Ljava/lang/String;

.field private static localLongitude:Ljava/lang/String;

.field private static mInstance:Lcom/didi/soso/location/LocationController;


# instance fields
.field private accuracy:F

.field private bear:F

.field private isNetErrorShown:Z

.field private isPem:Z

.field private isWifiOpen:Z

.field private islog:Z

.field private mLat:D

.field private mLng:D

.field private provider:I

.field private request:Lcom/tencent/map/geolocation/TencentLocationRequest;

.field private speed:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const/4 v1, 0x0

    sput-boolean v1, Lcom/didi/soso/location/LocationController;->isUseLocalGPS:Z

    .line 77
    invoke-static {}, Lcom/didi/beatles/utils/BtsHttpFileUtils;->isActionLocation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget-object v0, Lcom/didi/beatles/utils/BtsHttpFileUtils;->map:Ljava/util/Map;

    .line 79
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    sput-boolean v1, Lcom/didi/soso/location/LocationController;->isUseLocalGPS:Z

    .line 80
    const-string v1, "latitude"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/soso/location/LocationController;->localLatitude:Ljava/lang/String;

    .line 81
    const-string v1, "longitude"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/didi/soso/location/LocationController;->localLongitude:Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkIsLog(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 7
    .parameter "result"

    .prologue
    const-wide/16 v3, 0x0

    .line 279
    iget-wide v1, p0, Lcom/didi/soso/location/LocationController;->mLat:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/didi/soso/location/LocationController;->mLng:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, p0, Lcom/didi/soso/location/LocationController;->mLat:D

    iget-wide v4, p0, Lcom/didi/soso/location/LocationController;->mLng:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v3

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1, v2}, Lcom/didi/map/MapController;->lineDistance(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v0

    .line 282
    .local v0, dis:F
    const/high16 v1, 0x4120

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/didi/soso/location/LocationController;->request:Lcom/tencent/map/geolocation/TencentLocationRequest;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/didi/soso/location/LocationController;->request:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v1

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 283
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/didi/soso/location/LocationController;->islog:Z

    goto :goto_0

    .line 285
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/didi/soso/location/LocationController;->islog:Z

    goto :goto_0
.end method

.method private checkWifi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 234
    iget-boolean v1, p0, Lcom/didi/soso/location/LocationController;->isWifiOpen:Z

    if-eqz v1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget v1, p0, Lcom/didi/soso/location/LocationController;->accuracy:F

    const/high16 v2, 0x43fa

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/didi/soso/location/LocationController;->accuracy:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 237
    :cond_2
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 238
    .local v0, mWm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 239
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 240
    :cond_3
    iput-boolean v3, p0, Lcom/didi/soso/location/LocationController;->isWifiOpen:Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/didi/soso/location/LocationController;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/didi/soso/location/LocationController;->mInstance:Lcom/didi/soso/location/LocationController;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/didi/soso/location/LocationController;

    invoke-direct {v0}, Lcom/didi/soso/location/LocationController;-><init>()V

    sput-object v0, Lcom/didi/soso/location/LocationController;->mInstance:Lcom/didi/soso/location/LocationController;

    .line 90
    :cond_0
    sget-object v0, Lcom/didi/soso/location/LocationController;->mInstance:Lcom/didi/soso/location/LocationController;

    return-object v0
.end method

.method private request()V
    .locals 3

    .prologue
    .line 227
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setAllowCache(Z)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setRequestLevel(I)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/soso/location/LocationController;->request:Lcom/tencent/map/geolocation/TencentLocationRequest;

    .line 230
    return-void
.end method

.method private requstUpdate()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/map/geolocation/TencentLocationManager;->getInstance(Landroid/content/Context;)Lcom/tencent/map/geolocation/TencentLocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/soso/location/LocationController;->request:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0, v1, p0}, Lcom/tencent/map/geolocation/TencentLocationManager;->requestLocationUpdates(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;)I

    .line 153
    return-void
.end method

.method private setProvider(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 290
    const-string v0, "gps"

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/soso/location/LocationController;->provider:I

    .line 296
    :goto_0
    return-void

    .line 292
    :cond_0
    const-string v0, "network"

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/soso/location/LocationController;->provider:I

    goto :goto_0

    .line 295
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/soso/location/LocationController;->provider:I

    goto :goto_0
.end method


# virtual methods
.method public defaultLocationMargin()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/didi/soso/location/LocationController;->request:Lcom/tencent/map/geolocation/TencentLocationRequest;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;

    .line 141
    invoke-direct {p0}, Lcom/didi/soso/location/LocationController;->requstUpdate()V

    .line 142
    return-void
.end method

.method public getAccuracy()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/didi/soso/location/LocationController;->accuracy:F

    return v0
.end method

.method public getBearing()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/didi/soso/location/LocationController;->bear:F

    return v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/didi/soso/location/LocationController;->mLat:D

    return-wide v0
.end method

.method public getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 192
    iget-wide v0, p0, Lcom/didi/soso/location/LocationController;->mLat:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/didi/soso/location/LocationController;->mLng:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v1, p0, Lcom/didi/soso/location/LocationController;->mLat:D

    iget-wide v3, p0, Lcom/didi/soso/location/LocationController;->mLng:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    goto :goto_0
.end method

.method public getLatString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/didi/soso/location/LocationController;->mLat:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/didi/soso/location/LocationController;->mLng:D

    return-wide v0
.end method

.method public getLngString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    iget-wide v0, p0, Lcom/didi/soso/location/LocationController;->mLng:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLocationlimitStatus()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/soso/location/LocationController;->isPem:Z

    .line 111
    invoke-virtual {p0}, Lcom/didi/soso/location/LocationController;->stopLocation()V

    .line 112
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/soso/location/LocationController;->startLocation(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public getProvider()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/didi/soso/location/LocationController;->provider:I

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/didi/soso/location/LocationController;->speed:F

    return v0
.end method

.method public highLocationMargin()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/didi/soso/location/LocationController;->request:Lcom/tencent/map/geolocation/TencentLocationRequest;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;

    .line 129
    invoke-direct {p0}, Lcom/didi/soso/location/LocationController;->requstUpdate()V

    .line 130
    return-void
.end method

.method public isLocateLimit()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/didi/soso/location/LocationController;->isPem:Z

    return v0
.end method

.method public isLog()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/didi/soso/location/LocationController;->islog:Z

    return v0
.end method

.method public lowLocationMargin()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/didi/soso/location/LocationController;->request:Lcom/tencent/map/geolocation/TencentLocationRequest;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v1, v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;

    .line 135
    invoke-direct {p0}, Lcom/didi/soso/location/LocationController;->requstUpdate()V

    .line 136
    return-void
.end method

.method public onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V
    .locals 7
    .parameter "result"
    .parameter "errno"
    .parameter "reason"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result=Errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 249
    if-eqz p2, :cond_0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tencent errno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationErrno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 253
    if-eqz p1, :cond_1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationLatLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 255
    :cond_1
    if-ne p2, v6, :cond_4

    .line 257
    iget-boolean v0, p0, Lcom/didi/soso/location/LocationController;->isNetErrorShown:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/didi/soso/location/LocationController;->mLat:D

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/didi/soso/location/LocationController;->mLng:D

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_3

    .line 276
    :cond_2
    :goto_0
    return-void

    .line 259
    :cond_3
    iput-boolean v6, p0, Lcom/didi/soso/location/LocationController;->isNetErrorShown:Z

    .line 261
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    const v1, 0x7f0b03e2

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 262
    const-string v0, "net_failed_err_show"

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_4
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 268
    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getAccuracy()F

    move-result v0

    iput v0, p0, Lcom/didi/soso/location/LocationController;->accuracy:F

    .line 269
    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/didi/soso/location/LocationController;->speed:F

    .line 270
    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getBearing()F

    move-result v0

    iput v0, p0, Lcom/didi/soso/location/LocationController;->bear:F

    .line 271
    invoke-direct {p0, p1}, Lcom/didi/soso/location/LocationController;->setProvider(Lcom/tencent/map/geolocation/TencentLocation;)V

    .line 273
    invoke-direct {p0, p1}, Lcom/didi/soso/location/LocationController;->checkIsLog(Lcom/tencent/map/geolocation/TencentLocation;)V

    .line 274
    invoke-static {p1}, Lcom/didi/soso/location/ListenerCollection;->notifyLocation(Lcom/tencent/map/geolocation/TencentLocation;)V

    goto :goto_0
.end method

.method public onStatusUpdate(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "status"
    .parameter "desc"

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",LocStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/soso/location/LocationController;->isPem:Z

    .line 304
    :cond_0
    return-void
.end method

.method public setLat(D)V
    .locals 2
    .parameter "lat"

    .prologue
    .line 174
    sget-boolean v0, Lcom/didi/soso/location/LocationController;->isUseLocalGPS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/soso/location/LocationController;->localLatitude:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Lcom/didi/soso/location/LocationController;->localLatitude:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/soso/location/LocationController;->mLat:D

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iput-wide p1, p0, Lcom/didi/soso/location/LocationController;->mLat:D

    goto :goto_0
.end method

.method public setLng(D)V
    .locals 2
    .parameter "lng"

    .prologue
    .line 166
    sget-boolean v0, Lcom/didi/soso/location/LocationController;->isUseLocalGPS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/didi/soso/location/LocationController;->localLongitude:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    sget-object v0, Lcom/didi/soso/location/LocationController;->localLongitude:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/soso/location/LocationController;->mLng:D

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iput-wide p1, p0, Lcom/didi/soso/location/LocationController;->mLng:D

    goto :goto_0
.end method

.method public setLocationCache(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/didi/soso/location/LocationController;->request:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0, p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setAllowCache(Z)Lcom/tencent/map/geolocation/TencentLocationRequest;

    .line 147
    invoke-direct {p0}, Lcom/didi/soso/location/LocationController;->requstUpdate()V

    .line 148
    return-void
.end method

.method public setLocationMargin(J)V
    .locals 1
    .parameter "margin"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/didi/soso/location/LocationController;->request:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;

    .line 123
    invoke-direct {p0}, Lcom/didi/soso/location/LocationController;->requstUpdate()V

    .line 124
    return-void
.end method

.method public startLocation(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 95
    invoke-static {}, Lcom/didi/common/util/Utils;->isSDCardAvailble()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/didi/common/util/Utils;->getSOSOLocationPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locate_log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->setLogDir(Ljava/io/File;)V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/didi/soso/location/LocationController;->request()V

    .line 98
    invoke-direct {p0}, Lcom/didi/soso/location/LocationController;->requstUpdate()V

    .line 99
    return-void
.end method

.method public final startLocation(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/didi/soso/location/LocationController;->request()V

    .line 103
    invoke-direct {p0}, Lcom/didi/soso/location/LocationController;->requstUpdate()V

    .line 104
    return-void
.end method

.method public stopLocation()V
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/map/geolocation/TencentLocationManager;->getInstance(Landroid/content/Context;)Lcom/tencent/map/geolocation/TencentLocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/map/geolocation/TencentLocationManager;->removeUpdates(Lcom/tencent/map/geolocation/TencentLocationListener;)V

    .line 118
    return-void
.end method
