.class public Lcom/didi/map/marker/LiveValuatingMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "LiveValuatingMarker.java"


# instance fields
.field private driveFee:Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;

.field private frequency:I

.field private mAdapter:Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;

.field private newValuating:Lcom/didi/car/model/CarOrderNewRealtimeCount;

.field private valuating:Lcom/didi/car/model/CarOrderRealtimeCount;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 35
    const/16 v0, 0x2710

    iput v0, p0, Lcom/didi/map/marker/LiveValuatingMarker;->frequency:I

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wanliu_wait_meet_price_popup_click"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-class v2, Lcom/didi/car/ui/activity/CarCurrentCostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->newValuating:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "pricing_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    const-string v1, "current_cost"

    iget-object v2, p0, Lcom/didi/map/marker/LiveValuatingMarker;->newValuating:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->driveFee:Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;

    if-nez v1, :cond_0

    .line 90
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    .line 92
    :cond_0
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 93
    return-void

    .line 86
    :cond_1
    const-string v1, "pricing_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v1, "current_cost"

    iget-object v2, p0, Lcom/didi/map/marker/LiveValuatingMarker;->valuating:Lcom/didi/car/model/CarOrderRealtimeCount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 73
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 74
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public setFrequency(I)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 38
    iput p1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->frequency:I

    .line 39
    return-void
.end method

.method public setMarker(DD)V
    .locals 3
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_2

    .line 45
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const-string v2, "text_fare"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 47
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const v1, 0x7f0202e9

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 48
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    .line 49
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/LiveValuatingMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 59
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_0
    invoke-virtual {p0}, Lcom/didi/map/marker/LiveValuatingMarker;->showInfoWindow()V

    .line 60
    return-void

    .line 50
    .restart local v0       #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_1

    .line 51
    const v1, 0x7f020187

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 52
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/LiveValuatingMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/LiveValuatingMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    goto :goto_0

    .line 57
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/LiveValuatingMarker;->updatePositoin(DD)V

    goto :goto_0
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 129
    return-void
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/didi/map/marker/LiveValuatingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/LiveValuatingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;

    .line 67
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 68
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 69
    return-void
.end method

.method public updateData(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V
    .locals 2
    .parameter "valuating"

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/didi/map/marker/LiveValuatingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iput-object p1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->newValuating:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    .line 110
    iput-object v1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->valuating:Lcom/didi/car/model/CarOrderRealtimeCount;

    .line 111
    iput-object v1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->driveFee:Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;

    .line 112
    iget-object v0, p0, Lcom/didi/map/marker/LiveValuatingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->updateData(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V

    goto :goto_0
.end method

.method public updateData(Lcom/didi/car/model/CarOrderRealtimeCount;)V
    .locals 2
    .parameter "valuating"

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/didi/map/marker/LiveValuatingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iput-object p1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->valuating:Lcom/didi/car/model/CarOrderRealtimeCount;

    .line 100
    iput-object v1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->newValuating:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    .line 101
    iput-object v1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->driveFee:Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;

    .line 102
    iget-object v0, p0, Lcom/didi/map/marker/LiveValuatingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->updateData(Lcom/didi/car/model/CarOrderRealtimeCount;)V

    goto :goto_0
.end method

.method public updateData(Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;)V
    .locals 2
    .parameter "valuating"

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/didi/map/marker/LiveValuatingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iput-object p1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->driveFee:Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;

    .line 120
    iput-object v1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->valuating:Lcom/didi/car/model/CarOrderRealtimeCount;

    .line 121
    iput-object v1, p0, Lcom/didi/map/marker/LiveValuatingMarker;->newValuating:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    .line 122
    iget-object v0, p0, Lcom/didi/map/marker/LiveValuatingMarker;->mAdapter:Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/LiveValuatingMarkerAdapter;->updateData(Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;)V

    goto :goto_0
.end method
