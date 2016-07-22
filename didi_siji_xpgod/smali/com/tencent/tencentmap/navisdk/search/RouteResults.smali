.class public Lcom/tencent/tencentmap/navisdk/search/RouteResults;
.super Ljava/lang/Object;
.source "RouteResults.java"


# instance fields
.field private distance:J

.field private passPoints:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private passPointsIndexs:[I

.field private routePoints:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->routePoints:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 14
    iput-object v0, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->passPoints:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 16
    iput-wide v1, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->time:J

    .line 18
    iput-wide v1, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->distance:J

    .line 20
    iput-object v0, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->passPointsIndexs:[I

    .line 10
    return-void
.end method


# virtual methods
.method public getDistance()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->distance:J

    return-wide v0
.end method

.method public getPassPoints()[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->passPoints:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    return-object v0
.end method

.method public getPassPointsIndex()[I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->passPointsIndexs:[I

    return-object v0
.end method

.method public getRoutePoints()[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->routePoints:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->time:J

    return-wide v0
.end method

.method setDistance(J)V
    .locals 0
    .parameter "dist"

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->distance:J

    .line 29
    return-void
.end method

.method setPassPoints([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter "pts"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->passPoints:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 37
    return-void
.end method

.method setPassPointsIndex([I)V
    .locals 0
    .parameter "indexs"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->passPointsIndexs:[I

    .line 41
    return-void
.end method

.method setRoutePoints([Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter "latlngs"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->routePoints:[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 25
    return-void
.end method

.method setTime(J)V
    .locals 0
    .parameter "navitime"

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/tencent/tencentmap/navisdk/search/RouteResults;->time:J

    .line 33
    return-void
.end method
