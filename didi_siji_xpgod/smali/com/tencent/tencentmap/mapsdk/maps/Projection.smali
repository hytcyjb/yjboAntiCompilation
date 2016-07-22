.class public final Lcom/tencent/tencentmap/mapsdk/maps/Projection;
.super Ljava/lang/Object;
.source "Projection.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/fn;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fn;)V
    .locals 0
    .parameter "iprojectiondelegate"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fn;

    .line 15
    return-void
.end method


# virtual methods
.method public final exit()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fn;

    if-eqz v0, :cond_0

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fn;

    .line 21
    :cond_0
    return-void
.end method

.method public final fromScreenLocation(Landroid/graphics/Point;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .locals 1
    .parameter "point"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fn;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fn;->a(Landroid/graphics/Point;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public final getVisibleRegion()Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fn;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fn;->k()Lcom/tencent/tencentmap/mapsdk/maps/model/VisibleRegion;

    move-result-object v0

    return-object v0
.end method

.method public final toScreenLocation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Landroid/graphics/Point;
    .locals 1
    .parameter "latlng"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fn;

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fn;->b(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method
