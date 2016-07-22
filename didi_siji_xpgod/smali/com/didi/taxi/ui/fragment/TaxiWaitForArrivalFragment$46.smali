.class Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$46;
.super Lcom/didi/map/MapRouteListener;
.source "TaxiWaitForArrivalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHashSetZoomRectState:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 3693
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$46;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-direct {p0}, Lcom/didi/map/MapRouteListener;-><init>()V

    .line 3706
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$46;->mHashSetZoomRectState:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public onAddPolyline(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;
    .locals 1
    .parameter "map"
    .parameter "options"
    .parameter "passpoints"

    .prologue
    .line 3700
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$46;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$3100(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3701
    const/4 v0, 0x0

    .line 3703
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/didi/map/MapRouteListener;->onAddPolyline(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Lcom/tencent/tencentmap/mapsdk/maps/model/PolylineOptions;[Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/Polyline;

    move-result-object v0

    goto :goto_0
.end method

.method public onZoomRect(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Ljava/util/List;Ljava/lang/String;II)V
    .locals 13
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
    .line 3715
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$46;->mHashSetZoomRectState:Ljava/util/HashSet;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3716
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$46;->mHashSetZoomRectState:Ljava/util/HashSet;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3717
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$46;->this$0:Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->access$100(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Lcom/didi/taxi/model/TaxiOrder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v12

    .line 3720
    .local v12, taxiDriver:Lcom/didi/taxi/model/TaxiDriver;
    if-eqz v12, :cond_1

    .line 3722
    :try_start_0
    iget-object v9, v12, Lcom/didi/taxi/model/TaxiDriver;->lat:Ljava/lang/String;

    .line 3723
    .local v9, lat:Ljava/lang/String;
    iget-object v11, v12, Lcom/didi/taxi/model/TaxiDriver;->lng:Ljava/lang/String;

    .line 3724
    .local v11, lng:Ljava/lang/String;
    invoke-static {v9}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v11}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3725
    new-instance v10, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v11}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v10, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 3726
    .local v10, latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-interface {p2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3729
    .end local v10           #latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->toLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v7

    .line 3730
    .local v7, currentLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3735
    .end local v7           #currentLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .end local v9           #lat:Ljava/lang/String;
    .end local v11           #lng:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/didi/common/helper/ResourcesHelper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3736
    .local v8, density:F
    const/high16 v1, 0x4382

    mul-float/2addr v1, v8

    float-to-int v5, v1

    .line 3737
    .local v5, top:I
    const/high16 v1, 0x428c

    mul-float/2addr v1, v8

    float-to-int v0, v1

    move/from16 p5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    .line 3739
    invoke-super/range {v1 .. v6}, Lcom/didi/map/MapRouteListener;->onZoomRect(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;Ljava/util/List;Ljava/lang/String;II)V

    .line 3741
    .end local v5           #top:I
    .end local v8           #density:F
    .end local v12           #taxiDriver:Lcom/didi/taxi/model/TaxiDriver;
    :cond_2
    return-void

    .line 3732
    .restart local v12       #taxiDriver:Lcom/didi/taxi/model/TaxiDriver;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
