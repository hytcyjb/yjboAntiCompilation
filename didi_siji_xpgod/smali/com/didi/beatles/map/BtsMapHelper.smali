.class public Lcom/didi/beatles/map/BtsMapHelper;
.super Ljava/lang/Object;
.source "BtsMapHelper.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "BtsMapHelper"

.field private static isStop:Z

.field private static mMarks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/didi/map/marker/BaseMarker;",
            ">;"
        }
    .end annotation
.end field

.field private static poolPolyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

.field private static sCopyPopupWindow:Landroid/widget/PopupWindow;

.field private static sTipListener:Lcom/didi/beatles/map/BtsRouteTipMarker$TipListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/didi/beatles/map/BtsMapHelper;->mMarks:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/beatles/map/BtsMapHelper;->sCopyPopupWindow:Landroid/widget/PopupWindow;

    .line 219
    new-instance v0, Lcom/didi/beatles/map/BtsMapHelper$2;

    invoke-direct {v0}, Lcom/didi/beatles/map/BtsMapHelper$2;-><init>()V

    sput-object v0, Lcom/didi/beatles/map/BtsMapHelper;->sTipListener:Lcom/didi/beatles/map/BtsRouteTipMarker$TipListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/didi/beatles/map/BtsMapHelper;->isStop:Z

    return v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->removeRoute()V

    return-void
.end method

.method static synthetic access$200()Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/didi/beatles/map/BtsMapHelper;->poolPolyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-object p0, Lcom/didi/beatles/map/BtsMapHelper;->poolPolyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    return-object p0
.end method

.method static synthetic access$400([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/didi/beatles/map/BtsMapHelper;->zoomMapView([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;II)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;I[Lcom/didi/beatles/map/BtsRoutePoint;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/didi/beatles/map/BtsMapHelper;->addBtsRoutePointArray(Landroid/content/Context;I[Lcom/didi/beatles/map/BtsRoutePoint;)V

    return-void
.end method

.method static synthetic access$600()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/didi/beatles/map/BtsMapHelper;->sCopyPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    sput-object p0, Lcom/didi/beatles/map/BtsMapHelper;->sCopyPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private static addBtsRoutePointArray(Landroid/content/Context;I[Lcom/didi/beatles/map/BtsRoutePoint;)V
    .locals 7
    .parameter "context"
    .parameter "gender"
    .parameter "points"

    .prologue
    .line 195
    array-length v3, p2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 217
    :cond_0
    return-void

    .line 199
    :cond_1
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->clearMarkers()V

    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, p:Lcom/didi/beatles/map/BtsRoutePoint;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 204
    aget-object v2, p2, v0

    .line 205
    new-instance v1, Lcom/didi/beatles/map/BtsRoutePointMarker;

    aget-object v3, p2, v0

    invoke-direct {v1, v3}, Lcom/didi/beatles/map/BtsRoutePointMarker;-><init>(Lcom/didi/beatles/map/BtsRoutePoint;)V

    .line 206
    .local v1, marker:Lcom/didi/map/marker/BaseMarker;
    iget-wide v3, v2, Lcom/didi/beatles/map/BtsRoutePoint;->lat:D

    iget-wide v5, v2, Lcom/didi/beatles/map/BtsRoutePoint;->lng:D

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/didi/map/marker/BaseMarker;->setMarker(DD)V

    .line 207
    sget-object v3, Lcom/didi/beatles/map/BtsMapHelper;->mMarks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget v3, v2, Lcom/didi/beatles/map/BtsRoutePoint;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    iget v3, v2, Lcom/didi/beatles/map/BtsRoutePoint;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 210
    :cond_2
    new-instance v1, Lcom/didi/beatles/map/BtsRouteTipMarker;

    .end local v1           #marker:Lcom/didi/map/marker/BaseMarker;
    invoke-direct {v1, p0, v2, p1}, Lcom/didi/beatles/map/BtsRouteTipMarker;-><init>(Landroid/content/Context;Lcom/didi/beatles/map/BtsRoutePoint;I)V

    .line 211
    .restart local v1       #marker:Lcom/didi/map/marker/BaseMarker;
    iget-wide v3, v2, Lcom/didi/beatles/map/BtsRoutePoint;->lat:D

    iget-wide v5, v2, Lcom/didi/beatles/map/BtsRoutePoint;->lng:D

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/didi/map/marker/BaseMarker;->setMarker(DD)V

    move-object v3, v1

    .line 212
    check-cast v3, Lcom/didi/beatles/map/BtsRouteTipMarker;

    sget-object v4, Lcom/didi/beatles/map/BtsMapHelper;->sTipListener:Lcom/didi/beatles/map/BtsRouteTipMarker$TipListener;

    invoke-virtual {v3, v4}, Lcom/didi/beatles/map/BtsRouteTipMarker;->setTipListener(Lcom/didi/beatles/map/BtsRouteTipMarker$TipListener;)V

    .line 213
    sget-object v3, Lcom/didi/beatles/map/BtsMapHelper;->mMarks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static addMarkers(DDDDII)V
    .locals 3
    .parameter "flat"
    .parameter "flng"
    .parameter "tlat"
    .parameter "tlng"
    .parameter "top"
    .parameter "bot"

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/didi/map/marker/MarkerController;->setStartMarker(DD)V

    .line 65
    invoke-static {p4, p5, p6, p7}, Lcom/didi/map/marker/MarkerController;->setEndMarker(DD)V

    .line 66
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 67
    .local v0, list:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v1, 0x0

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    aput-object v2, v0, v1

    .line 68
    const/4 v1, 0x1

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p4, p5, p6, p7}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    aput-object v2, v0, v1

    .line 69
    invoke-static {v0, p8, p9}, Lcom/didi/beatles/map/BtsMapHelper;->zoomMapView([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;II)V

    .line 70
    return-void
.end method

.method public static declared-synchronized addRoutes(Landroid/content/Context;I[Lcom/didi/beatles/map/BtsRoutePoint;II)V
    .locals 8
    .parameter "context"
    .parameter "gender"
    .parameter "points"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 97
    const-class v6, Lcom/didi/beatles/map/BtsMapHelper;

    monitor-enter v6

    if-eqz p2, :cond_0

    :try_start_0
    array-length v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 103
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/didi/beatles/map/BtsMapHelper$1;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/didi/beatles/map/BtsMapHelper$1;-><init>(Landroid/content/Context;[Lcom/didi/beatles/map/BtsRoutePoint;III)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static clearMap()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/beatles/map/BtsMapHelper;->isStop:Z

    .line 77
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->removeRoute()V

    .line 78
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->clearMarkers()V

    .line 80
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->clear()V

    .line 83
    :cond_0
    invoke-static {}, Lcom/didi/beatles/listener/BtsListenerHub;->notifyMapClear()V

    .line 84
    return-void
.end method

.method private static clearMarkers()V
    .locals 4

    .prologue
    .line 280
    sget-object v3, Lcom/didi/beatles/map/BtsMapHelper;->mMarks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 281
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 282
    sget-object v3, Lcom/didi/beatles/map/BtsMapHelper;->mMarks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/map/marker/BaseMarker;

    .line 283
    .local v1, marker:Lcom/didi/map/marker/BaseMarker;
    invoke-virtual {v1}, Lcom/didi/map/marker/BaseMarker;->remove()V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v1           #marker:Lcom/didi/map/marker/BaseMarker;
    :cond_0
    sget-object v3, Lcom/didi/beatles/map/BtsMapHelper;->mMarks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 287
    sget-object v3, Lcom/didi/beatles/map/BtsMapHelper;->sCopyPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/didi/beatles/map/BtsMapHelper;->sCopyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    sget-object v3, Lcom/didi/beatles/map/BtsMapHelper;->sCopyPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 289
    const/4 v3, 0x0

    sput-object v3, Lcom/didi/beatles/map/BtsMapHelper;->sCopyPopupWindow:Landroid/widget/PopupWindow;

    .line 291
    :cond_1
    return-void
.end method

.method public static initMap(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/beatles/map/BtsMapHelper;->isStop:Z

    .line 57
    invoke-static {p0}, Lcom/didi/map/MapController;->setMap(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V

    .line 58
    return-void
.end method

.method private static removeRoute()V
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/didi/beatles/map/BtsMapHelper;->poolPolyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/didi/beatles/map/BtsMapHelper;->poolPolyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;->remove()V

    .line 305
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/beatles/map/BtsMapHelper;->poolPolyLine:Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    .line 306
    return-void
.end method

.method private static zoomMapView([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;II)V
    .locals 3
    .parameter "list"
    .parameter "top"
    .parameter "bot"

    .prologue
    const/high16 v2, 0x4248

    .line 297
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 298
    .local v0, density:F
    mul-float v1, v2, v0

    float-to-int v1, v1

    add-int/2addr v1, p1

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v2, p2

    invoke-static {p0, v1, v2}, Lcom/didi/map/MapController;->zoomMapView([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;II)V

    .line 299
    return-void
.end method
