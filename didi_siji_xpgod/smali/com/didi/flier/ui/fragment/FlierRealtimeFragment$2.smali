.class Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;
.super Lcom/didi/map/MapDragListener;
.source "FlierRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    invoke-direct {p0}, Lcom/didi/map/MapDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapStable()Z
    .locals 7

    .prologue
    .line 118
    invoke-static {}, Lcom/didi/map/marker/DepartureMarker;->getDepartCenterLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    .line 119
    .local v1, mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    sget-boolean v2, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-nez v2, :cond_0

    .line 120
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2$1;

    invoke-direct {v5, p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2$1;-><init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;)V

    invoke-static {v2, v3, v4, v5}, Lcom/didi/car/net/CarRequest;->getNearbyDrivers(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 132
    :cond_0
    invoke-super {p0}, Lcom/didi/map/MapDragListener;->onMapStable()Z

    move-result v0

    .line 133
    .local v0, isOnMapStable:Z
    const-string v2, "maplistener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLastAbsorb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;->isLastAdsorb:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-nez v0, :cond_1

    .line 139
    :goto_0
    return v0

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;->getSubHotPoi()V

    .line 138
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->startDepartureAnimation()V

    goto :goto_0
.end method

.method public onMapTouchEvent(I)V
    .locals 1
    .parameter "action"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/didi/map/MapDragListener;->onMapTouchEvent(I)V

    .line 144
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;->this$0:Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    #getter for: Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->access$200(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    if-nez p1, :cond_2

    .line 148
    invoke-static {}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;->getSubPoiList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setHotMarkers(Ljava/util/List;)V

    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;->adsorb()V

    goto :goto_0
.end method
