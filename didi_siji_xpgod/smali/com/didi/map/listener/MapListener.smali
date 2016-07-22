.class public Lcom/didi/map/listener/MapListener;
.super Ljava/lang/Object;
.source "MapListener.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;
.implements Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;
.implements Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerDragListener;
.implements Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;
.implements Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;


# instance fields
.field private currentMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

.field private isMoving:Z

.field private listenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;",
            "Lcom/didi/map/listener/MarkerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerTouchEvent:Landroid/os/Handler;

.field private mLastDownX:F

.field private mLastDownY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/map/listener/MapListener;->isMoving:Z

    .line 197
    new-instance v0, Lcom/didi/map/listener/MapListener$1;

    invoke-direct {v0, p0}, Lcom/didi/map/listener/MapListener$1;-><init>(Lcom/didi/map/listener/MapListener;)V

    iput-object v0, p0, Lcom/didi/map/listener/MapListener;->mHandler:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/didi/map/listener/MapListener$2;

    invoke-direct {v0, p0}, Lcom/didi/map/listener/MapListener$2;-><init>(Lcom/didi/map/listener/MapListener;)V

    iput-object v0, p0, Lcom/didi/map/listener/MapListener;->mHandlerTouchEvent:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/didi/map/listener/MapListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/didi/map/listener/MapListener;->isMoving:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/map/listener/MapListener;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private findListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Lcom/didi/map/listener/MarkerListener;
    .locals 6
    .parameter "marker"

    .prologue
    const/4 v4, 0x0

    .line 82
    if-nez p1, :cond_0

    move-object v3, v4

    .line 93
    :goto_0
    return-object v3

    .line 84
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 85
    .local v2, keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 86
    .local v1, key:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    invoke-virtual {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/didi/common/util/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/map/listener/MarkerListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .end local v2           #keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;>;"
    :catch_0
    move-exception v3

    :cond_2
    move-object v3, v4

    .line 93
    goto :goto_0
.end method


# virtual methods
.method public addMarkerListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;Lcom/didi/map/listener/MarkerListener;)V
    .locals 1
    .parameter "marker"
    .parameter "listener"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public getCurrentMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/didi/map/listener/MapListener;->currentMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/didi/map/listener/MapListener;->isMoving:Z

    return v0
.end method

.method public onDoubleTap(FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(FF)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 135
    iput p1, p0, Lcom/didi/map/listener/MapListener;->mLastDownX:F

    .line 136
    iput p2, p0, Lcom/didi/map/listener/MapListener;->mLastDownY:F

    .line 137
    iput-boolean v2, p0, Lcom/didi/map/listener/MapListener;->isMoving:Z

    .line 138
    iget-object v1, p0, Lcom/didi/map/listener/MapListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 141
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 142
    iget-object v1, p0, Lcom/didi/map/listener/MapListener;->mHandlerTouchEvent:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 143
    return v4
.end method

.method public onFling(FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 149
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->showLocation()V

    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 2
    .parameter "marker"

    .prologue
    .line 57
    iget-object v1, p0, Lcom/didi/map/listener/MapListener;->currentMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-direct {p0, v1}, Lcom/didi/map/listener/MapListener;->findListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Lcom/didi/map/listener/MarkerListener;

    move-result-object v0

    .line 58
    .local v0, listener:Lcom/didi/map/listener/MarkerListener;
    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-interface {v0, p1}, Lcom/didi/map/listener/MarkerListener;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0
.end method

.method public onInfoWindowClickLocation(IIII)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/didi/map/listener/MapListener;->currentMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-direct {p0, v1}, Lcom/didi/map/listener/MapListener;->findListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Lcom/didi/map/listener/MarkerListener;

    move-result-object v0

    .line 121
    .local v0, listener:Lcom/didi/map/listener/MarkerListener;
    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/didi/map/listener/MarkerListener;->onInfoWindowClickLocation(IIII)V

    goto :goto_0
.end method

.method public onLongPress(FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 156
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->showLocation()V

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 4
    .parameter "latlng"

    .prologue
    .line 107
    :try_start_0
    iget-object v3, p0, Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 108
    .local v1, keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 109
    .local v2, marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    iget-object v3, p0, Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/map/listener/MarkerListener;

    invoke-interface {v3, p1}, Lcom/didi/map/listener/MarkerListener;->onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;>;"
    .end local v2           #marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    :catch_0
    move-exception v3

    .line 115
    :cond_1
    return-void
.end method

.method public onMapStable()V
    .locals 5

    .prologue
    .line 243
    const-string v3, "maplistener"

    const-string v4, "onMapStable"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :try_start_0
    iget-object v3, p0, Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 246
    .local v1, keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 247
    .local v2, marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    iget-object v3, p0, Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 248
    iget-object v3, p0, Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/map/listener/MarkerListener;

    invoke-interface {v3}, Lcom/didi/map/listener/MarkerListener;->onMapStable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #keySet:Ljava/util/Set;,"Ljava/util/Set<Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;>;"
    .end local v2           #marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    :catch_0
    move-exception v3

    .line 254
    :cond_1
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "marker"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/didi/map/listener/MapListener;->findListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Lcom/didi/map/listener/MarkerListener;

    move-result-object v0

    .line 66
    .local v0, listener:Lcom/didi/map/listener/MarkerListener;
    if-nez v0, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/didi/map/listener/MapListener;->currentMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 69
    invoke-interface {v0, p1}, Lcom/didi/map/listener/MarkerListener;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v1

    goto :goto_0
.end method

.method public onMarkerDrag(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 1
    .parameter "marker"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/didi/map/listener/MapListener;->findListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Lcom/didi/map/listener/MarkerListener;

    move-result-object v0

    .line 34
    .local v0, listener:Lcom/didi/map/listener/MarkerListener;
    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-interface {v0, p1}, Lcom/didi/map/listener/MarkerListener;->onMarkerDrag(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0
.end method

.method public onMarkerDragEnd(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 1
    .parameter "marker"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/didi/map/listener/MapListener;->findListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Lcom/didi/map/listener/MarkerListener;

    move-result-object v0

    .line 42
    .local v0, listener:Lcom/didi/map/listener/MarkerListener;
    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-interface {v0, p1}, Lcom/didi/map/listener/MarkerListener;->onMarkerDragEnd(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0
.end method

.method public onMarkerDragStart(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 1
    .parameter "marker"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/didi/map/listener/MapListener;->findListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Lcom/didi/map/listener/MarkerListener;

    move-result-object v0

    .line 50
    .local v0, listener:Lcom/didi/map/listener/MarkerListener;
    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-interface {v0, p1}, Lcom/didi/map/listener/MarkerListener;->onMarkerDragStart(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0
.end method

.method public onScroll(FF)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->showLocation()V

    .line 164
    iget-boolean v0, p0, Lcom/didi/map/listener/MapListener;->isMoving:Z

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/map/MapDragListener;->isMoved:Z

    .line 169
    :cond_0
    sput-boolean v1, Lcom/didi/map/MapDragListener;->isLastAdsorb:Z

    .line 171
    iget-boolean v0, p0, Lcom/didi/map/listener/MapListener;->isMoving:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isBtsRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->hideDepartInfoWindow()V

    .line 174
    :cond_1
    return v1
.end method

.method public onSingleTap(FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public onUp(FF)Z
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 184
    iget-object v1, p0, Lcom/didi/map/listener/MapListener;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 186
    iput-boolean v4, p0, Lcom/didi/map/listener/MapListener;->isMoving:Z

    .line 187
    iget-object v1, p0, Lcom/didi/map/listener/MapListener;->mHandlerTouchEvent:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeHotMarkers()V

    .line 189
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 190
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 191
    iget-object v1, p0, Lcom/didi/map/listener/MapListener;->mHandlerTouchEvent:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 194
    return v5
.end method

.method public removeMarkerListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 1
    .parameter "marker"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/didi/map/listener/MapListener;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public setCurrentMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 0
    .parameter "marker"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/didi/map/listener/MapListener;->currentMarker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 98
    return-void
.end method
