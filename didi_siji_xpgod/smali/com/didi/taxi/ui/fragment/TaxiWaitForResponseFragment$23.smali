.class Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$23;
.super Lcom/didi/map/MapRouteListener;
.source "TaxiWaitForResponseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private hasZoomMap:Z

.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$23;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-direct {p0}, Lcom/didi/map/MapRouteListener;-><init>()V

    .line 1349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$23;->hasZoomMap:Z

    return-void
.end method


# virtual methods
.method public onAddPolyline(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    .locals 1
    .parameter "map"
    .parameter "options"
    .parameter "passpoints"

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$23;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4300(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1354
    const/4 v0, 0x0

    .line 1356
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/didi/map/MapRouteListener;->onAddPolyline(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v0

    goto :goto_0
.end method

.method public onStartRequestOnFail(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 1376
    invoke-super {p0, p1}, Lcom/didi/map/MapRouteListener;->onStartRequestOnFail(Ljava/lang/String;)V

    .line 1378
    return-void
.end method

.method public onZoomRect(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Ljava/util/List;Ljava/lang/String;II)V
    .locals 7
    .parameter "map"
    .parameter
    .parameter "state"
    .parameter "marginTop"
    .parameter "marginBottom"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1362
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$23;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->access$4400(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1372
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$23;->hasZoomMap:Z

    if-nez v0, :cond_0

    .line 1366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$23;->hasZoomMap:Z

    .line 1367
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1368
    .local v6, density:F
    const/high16 v0, 0x435c

    mul-float/2addr v0, v6

    float-to-int v4, v0

    .line 1369
    .local v4, top:I
    const/high16 v0, 0x431b

    mul-float/2addr v0, v6

    float-to-int v5, v0

    .local v5, bot:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1370
    invoke-super/range {v0 .. v5}, Lcom/didi/map/MapRouteListener;->onZoomRect(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Ljava/util/List;Ljava/lang/String;II)V

    goto :goto_0
.end method
