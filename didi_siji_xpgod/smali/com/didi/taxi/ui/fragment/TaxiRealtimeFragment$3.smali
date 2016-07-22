.class Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;
.super Lcom/didi/map/MapDragListener;
.source "TaxiRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-direct {p0}, Lcom/didi/map/MapDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapStable()Z
    .locals 6

    .prologue
    .line 200
    invoke-static {}, Lcom/didi/map/marker/DepartureMarker;->getDepartCenterLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    .line 201
    .local v1, mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    sget-boolean v2, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-nez v2, :cond_0

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3$1;

    invoke-direct {v4, p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3$1;-><init>(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;)V

    invoke-static {v2, v3, v4}, Lcom/didi/taxi/net/TaxiRequest;->getNearbyDrivers(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 215
    :cond_0
    invoke-super {p0}, Lcom/didi/map/MapDragListener;->onMapStable()Z

    move-result v0

    .line 216
    .local v0, isOnMapStable:Z
    if-nez v0, :cond_1

    .line 223
    :goto_0
    return v0

    .line 219
    :cond_1
    const-string v2, "maplistener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLastAdsorb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;->isLastAdsorb:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;->getSubHotPoi()V

    .line 222
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->startDepartureAnimation()V

    goto :goto_0
.end method

.method public onMapTouchEvent(I)V
    .locals 1
    .parameter "action"

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/didi/map/MapDragListener;->onMapTouchEvent(I)V

    .line 229
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;->this$0:Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    #getter for: Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;->access$300(Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    if-nez p1, :cond_2

    .line 233
    invoke-static {}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;->getSubPoiList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setHotMarkers(Ljava/util/List;)V

    goto :goto_0

    .line 234
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment$3;->adsorb()V

    goto :goto_0
.end method
