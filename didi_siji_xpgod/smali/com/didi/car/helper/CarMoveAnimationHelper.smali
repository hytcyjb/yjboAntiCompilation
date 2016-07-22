.class public Lcom/didi/car/helper/CarMoveAnimationHelper;
.super Ljava/lang/Object;
.source "CarMoveAnimationHelper.java"


# static fields
.field private static final MSG_ADD:I = 0x27da

.field private static final MSG_NEXT:I = 0x27d9

.field public static isAnimationOn:Z


# instance fields
.field private frequency:I

.field private lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private lastTimestamp:I

.field private mHandler:Landroid/os/Handler;

.field private mLastDegree:F

.field private mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 2
    .parameter "marker"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->frequency:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastTimestamp:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mLastDegree:F

    .line 57
    iput-object p1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 58
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    .line 60
    new-instance v0, Lcom/didi/car/helper/CarMoveAnimationHelper$1;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/base/BaseApplication;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/didi/car/helper/CarMoveAnimationHelper$1;-><init>(Lcom/didi/car/helper/CarMoveAnimationHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/helper/CarMoveAnimationHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/didi/car/helper/CarMoveAnimationHelper;->playNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/car/helper/CarMoveAnimationHelper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/car/helper/CarMoveAnimationHelper;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/car/helper/CarMoveAnimationHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/car/helper/CarMoveAnimationHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->frequency:I

    return v0
.end method

.method private destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x27d9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iput-object v2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object v2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 89
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    iput-object v2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mLastDegree:F

    .line 92
    return-void
.end method

.method private getAngle(FF)F
    .locals 6
    .parameter "from"
    .parameter "to"

    .prologue
    const/high16 v5, 0x43b4

    .line 326
    sub-float v0, p1, p2

    .line 328
    .local v0, rotate:F
    float-to-double v1, v0

    const-wide v3, -0x3f99800000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    add-float/2addr v0, v5

    .line 329
    :cond_0
    float-to-double v1, v0

    const-wide v3, 0x4066800000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    sub-float/2addr v0, v5

    .line 331
    :cond_1
    return v0
.end method

.method private getDegree(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F
    .locals 10
    .parameter "from"
    .parameter "to"

    .prologue
    .line 221
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 222
    :cond_0
    const/4 v6, 0x0

    .line 235
    :goto_0
    return v6

    .line 225
    :cond_1
    const-string v6, "degree"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "from->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   to->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-wide v6, p2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    sub-double v4, v6, v8

    .line 228
    .local v4, dy:D
    iget-wide v6, p2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    iget-wide v8, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    sub-double v2, v6, v8

    .line 230
    .local v2, dx:D
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 231
    .local v0, degree:D
    const-wide v6, 0x400921fb54442d18L

    div-double v6, v0, v6

    const-wide v8, 0x4066800000000000L

    mul-double v0, v6, v8

    .line 233
    const-wide v6, 0x4056800000000000L

    sub-double v0, v6, v0

    .line 235
    double-to-float v6, v0

    goto :goto_0
.end method

.method private getReviseAngel(FF)F
    .locals 7
    .parameter "from"
    .parameter "to"

    .prologue
    const/high16 v6, 0x43b4

    .line 335
    sub-float v1, p1, p2

    .line 336
    .local v1, rotate:F
    move v0, p2

    .line 338
    .local v0, ret:F
    float-to-double v2, v1

    const-wide v4, -0x3f99800000000000L

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    sub-float v0, p2, v6

    .line 339
    :goto_0
    float-to-double v2, v1

    const-wide v4, 0x4066800000000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    add-float v0, p2, v6

    .line 341
    :goto_1
    return v0

    :cond_0
    move v0, p2

    .line 338
    goto :goto_0

    :cond_1
    move v0, p2

    .line 339
    goto :goto_1
.end method

.method public static getSpecialMarkerIcon()Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .locals 7

    .prologue
    .line 377
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    .line 378
    .local v3, business:Lcom/didi/frame/business/Business;
    const/4 v1, 0x0

    .line 379
    .local v1, bitmapDescriptor:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    invoke-virtual {v3}, Lcom/didi/frame/business/Business;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 381
    .local v4, businessKey:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smooth_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/activity/ActivityIconHelper;->getMapIconPathByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, a:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 383
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromPath(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v1

    .line 386
    :cond_0
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 397
    .end local v1           #bitmapDescriptor:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .local v2, bitmapDescriptor:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    :goto_0
    return-object v2

    .line 390
    .end local v2           #bitmapDescriptor:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .restart local v1       #bitmapDescriptor:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    :cond_1
    const-string v5, "TVE9PQ=="

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 391
    const v5, 0x7f0202f5

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v1

    :cond_2
    :goto_1
    move-object v2, v1

    .line 397
    .end local v1           #bitmapDescriptor:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .restart local v2       #bitmapDescriptor:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    goto :goto_0

    .line 392
    .end local v2           #bitmapDescriptor:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .restart local v1       #bitmapDescriptor:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    :cond_3
    const-string v5, "TWc9PQ=="

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 393
    const v5, 0x7f0200cb

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v1

    goto :goto_1

    .line 394
    :cond_4
    const-string v5, "TkE9PQ=="

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 395
    const v5, 0x7f0201b0

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v1

    goto :goto_1
.end method

.method private isFilterByDistance(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Z
    .locals 12
    .parameter "newPoint"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 146
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-nez v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move v0, v10

    .line 162
    :goto_0
    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-object v2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v7}, Lcom/tencent/map/geolocation/TencentLocationUtils;->distanceBetween(DDDD)D

    move-result-wide v8

    .line 154
    .local v8, distance:D
    iput-object p1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 155
    const-wide/high16 v0, 0x4024

    cmpg-double v0, v8, v0

    if-gez v0, :cond_1

    move v0, v11

    .line 156
    goto :goto_0

    .line 157
    :cond_1
    const-wide v0, 0x40a7700000000000L

    cmpl-double v0, v8, v0

    if-lez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    move v0, v11

    .line 159
    goto :goto_0

    :cond_2
    move v0, v10

    .line 162
    goto :goto_0
.end method

.method private isFilterByTime(I)Z
    .locals 4
    .parameter "timestamp"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    if-gtz p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    iget v2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastTimestamp:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 130
    iput p1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastTimestamp:I

    move v0, v1

    .line 131
    goto :goto_0

    .line 134
    :cond_2
    iget v2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastTimestamp:I

    if-lt p1, v2, :cond_0

    .line 138
    iput p1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastTimestamp:I

    move v0, v1

    .line 140
    goto :goto_0
.end method

.method private moveSerialAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FF)V
    .locals 9
    .parameter "latLng"
    .parameter "from"
    .parameter "to"

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x0

    .line 277
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 278
    const-string v1, "moveSerialAnimation mMarker == null"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/didi/car/helper/CarMoveAnimationHelper;->getAngle(FF)F

    move-result v6

    .line 284
    .local v6, rotate:F
    float-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v8, v1, 0x4

    .line 285
    .local v8, tmp:I
    if-ge v8, v7, :cond_1

    .line 286
    .local v7, rotateDuration:I
    :goto_1
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;

    const/high16 v5, -0x4080

    move v1, p2

    move v2, p3

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;-><init>(FFFFF)V

    .line 287
    .local v0, rAnimation:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
    invoke-virtual {v0, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;->setDuration(I)V

    .line 289
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    .line 290
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v2, Lcom/didi/car/helper/CarMoveAnimationHelper$3;

    invoke-direct {v2, p0, p3, p1, v7}, Lcom/didi/car/helper/CarMoveAnimationHelper$3;-><init>(Lcom/didi/car/helper/CarMoveAnimationHelper;FLcom/tencent/tencentmap/mapsdk/maps/model/LatLng;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setAnimationListener(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V

    .line 322
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->startAnimation()Z

    goto :goto_0

    .end local v0           #rAnimation:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
    .end local v7           #rotateDuration:I
    :cond_1
    move v7, v8

    .line 285
    goto :goto_1
.end method

.method private moveSyncAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FF)V
    .locals 8
    .parameter "latLng"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v3, 0x0

    .line 240
    cmpl-float v1, p2, v3

    if-nez v1, :cond_0

    cmpl-float v1, p3, v3

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_2

    .line 241
    :cond_1
    const-string v1, "moveSyncAnimation from == 0 && to ==0"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 244
    :cond_2
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;

    const/high16 v5, -0x4080

    move v1, p2

    move v2, p3

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;-><init>(FFFFF)V

    .line 245
    .local v0, rAnimation:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
    new-instance v7, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;

    invoke-direct {v7, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/TranslateAnimation;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 247
    .local v7, tAnimation:Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;
    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;-><init>(Z)V

    .line 248
    .local v6, animationSet:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;
    invoke-virtual {v6, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->addAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)Z

    .line 249
    invoke-virtual {v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->addAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)Z

    .line 250
    iget v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->frequency:I

    iget-object v2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    invoke-virtual {v6, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationSet;->setDuration(I)V

    .line 252
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    .line 253
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v2, Lcom/didi/car/helper/CarMoveAnimationHelper$2;

    invoke-direct {v2, p0, p3, p1}, Lcom/didi/car/helper/CarMoveAnimationHelper$2;-><init>(Lcom/didi/car/helper/CarMoveAnimationHelper;FLcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setAnimationListener(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V

    .line 268
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v1, :cond_3

    .line 269
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->startAnimation()Z

    .line 271
    :cond_3
    iput p3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mLastDegree:F

    goto :goto_0
.end method

.method private moveTo(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 6
    .parameter "latLng"

    .prologue
    .line 346
    iget-object v3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v3, :cond_0

    .line 374
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    .line 352
    .local v0, last:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    :cond_1
    iget-object v3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x27d9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 358
    :cond_2
    iget-object v3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getRotateAngle()F

    move-result v3

    invoke-direct {p0, v0, p1}, Lcom/didi/car/helper/CarMoveAnimationHelper;->getDegree(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/didi/car/helper/CarMoveAnimationHelper;->getReviseAngel(FF)F

    move-result v1

    .line 361
    .local v1, newdegree:F
    iget-object v3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getRotateAngle()F

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/didi/car/helper/CarMoveAnimationHelper;->getAngle(FF)F

    move-result v2

    .line 362
    .local v2, rotate:F
    const-string v3, "degree"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getRotateAngle()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rotate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    float-to-int v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_3

    .line 368
    const-string v3, "degree"

    const-string v4, "moveSyncAnimation"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getRotateAngle()F

    move-result v3

    invoke-direct {p0, p1, v3, v1}, Lcom/didi/car/helper/CarMoveAnimationHelper;->moveSyncAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FF)V

    goto :goto_0

    .line 371
    :cond_3
    const-string v3, "degree"

    const-string v4, "moveSerialAnimation"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v3, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getRotateAngle()F

    move-result v3

    invoke-direct {p0, p1, v3, v1}, Lcom/didi/car/helper/CarMoveAnimationHelper;->moveSerialAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FF)V

    goto/16 :goto_0
.end method

.method private playNext()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 101
    .local v0, latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 102
    invoke-direct {p0, v0}, Lcom/didi/car/helper/CarMoveAnimationHelper;->moveTo(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public static setMoveAnimationEnable(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 52
    sput-boolean p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    .line 53
    return-void
.end method


# virtual methods
.method public setFrequency(I)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 48
    iput p1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->frequency:I

    .line 49
    return-void
.end method

.method public declared-synchronized updatePosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 2
    .parameter "latLng"

    .prologue
    .line 166
    monitor-enter p0

    if-nez p1, :cond_0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".updatePosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 172
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x27da

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 176
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized updatePosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;I)V
    .locals 10
    .parameter "latLng"
    .parameter "timestamp"

    .prologue
    .line 181
    monitor-enter p0

    if-nez p1, :cond_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 185
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".updatePosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lasttime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastTimestamp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, p2}, Lcom/didi/car/helper/CarMoveAnimationHelper;->isFilterByTime(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const-string v0, "CarMoveAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filter by time: last "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastTimestamp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 192
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/didi/car/helper/CarMoveAnimationHelper;->isFilterByDistance(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    const-string v8, "CarMoveAnimation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter by distance: last "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-object v2, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->lastLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v6, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v7}, Lcom/tencent/map/geolocation/TencentLocationUtils;->distanceBetween(DDDD)D

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 197
    :cond_2
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x27da

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized updatePosition(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, latLngs:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->points:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object v0, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x27da

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 215
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/didi/car/helper/CarMoveAnimationHelper;->mMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
