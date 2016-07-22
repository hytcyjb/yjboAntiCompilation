.class Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;
.super Lcom/didi/map/MapDragListener;
.source "DDriveRealtimeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;


# direct methods
.method constructor <init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    invoke-direct {p0}, Lcom/didi/map/MapDragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapStable()Z
    .locals 6

    .prologue
    .line 223
    invoke-super {p0}, Lcom/didi/map/MapDragListener;->onMapStable()Z

    move-result v0

    .line 224
    .local v0, isOnMapStable:Z
    if-nez v0, :cond_0

    .line 249
    :goto_0
    return v0

    .line 227
    :cond_0
    invoke-static {}, Lcom/didi/map/marker/DepartureMarker;->getDepartCenterLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    .line 228
    .local v1, mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->getInstance()Lcom/didi/ddrive/managers/DriveRealtimeManager;

    move-result-object v2

    iget-wide v3, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4$1;

    invoke-direct {v5, p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4$1;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/didi/ddrive/managers/DriveRealtimeManager;->getArroundDrives(Ljava/lang/String;Ljava/lang/String;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;)V

    .line 247
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;->getSubHotPoi()V

    .line 248
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->startDepartureAnimation()V

    goto :goto_0
.end method

.method public onMapTouchEvent(I)V
    .locals 1
    .parameter "action"

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/didi/map/MapDragListener;->onMapTouchEvent(I)V

    .line 256
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;->this$0:Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    #getter for: Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->access$300(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    if-nez p1, :cond_2

    .line 260
    invoke-static {}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;->getSubPoiList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setHotMarkers(Ljava/util/List;)V

    goto :goto_0

    .line 261
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;->adsorb()V

    goto :goto_0
.end method
