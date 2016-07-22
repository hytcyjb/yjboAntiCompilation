.class public Lcom/didi/map/marker/TextFareMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "TextFareMarker.java"


# instance fields
.field private isUnClick:Z

.field private mAdapter:Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    return-void
.end method

.method private writeTraceLog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, car:Lcom/didi/car/model/CarOrder;
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 117
    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    .end local v0           #car:Lcom/didi/car/model/CarOrder;
    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 121
    .restart local v0       #car:Lcom/didi/car/model/CarOrder;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 135
    :goto_1
    return-void

    .line 118
    :cond_1
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 119
    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    .end local v0           #car:Lcom/didi/car/model/CarOrder;
    check-cast v0, Lcom/didi/car/model/CarOrder;

    .restart local v0       #car:Lcom/didi/car/model/CarOrder;
    goto :goto_0

    .line 123
    :cond_2
    iget-object v1, v0, Lcom/didi/car/model/CarOrder;->carEstimatePrice:Lcom/didi/car/model/CarEstimatePrice;

    .line 124
    .local v1, price:Lcom/didi/car/model/CarEstimatePrice;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/didi/car/model/CarEstimatePrice;->estimatePrice:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 125
    :cond_3
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v2, v3, :cond_4

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wanliu_price_unestimate_booking_click"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wanliu_price_unestimate_click"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :cond_5
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v2, v3, :cond_6

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wanliu_price_estimate_booking_click"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 133
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wanliu_price_estimate_click"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public hideMarker()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/didi/map/marker/TextFareMarker$1;

    invoke-direct {v0, p0}, Lcom/didi/map/marker/TextFareMarker$1;-><init>(Lcom/didi/map/marker/TextFareMarker;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    return-void
.end method

.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 92
    iget-boolean v1, p0, Lcom/didi/map/marker/TextFareMarker;->isUnClick:Z

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    :cond_3
    invoke-direct {p0}, Lcom/didi/map/marker/TextFareMarker;->writeTraceLog()V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pg0call03_ck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const-class v2, Lcom/didi/car/ui/activity/CarEstimatePriceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    const-string v1, "display_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/base/BaseApplication;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    const v2, 0x7f04001b

    const v3, 0x7f04001c

    invoke-virtual {v1, v2, v3}, Lcom/didi/frame/MainActivity;->overridePendingTransition(II)V

    .line 111
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/didi/map/marker/TextFareMarker;->isRemove()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/didi/map/marker/TextFareMarker;->showInfoWindow()V

    .line 142
    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 86
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/TextFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 87
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z

    move-result v0

    return v0
.end method

.method public setMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 39
    const v5, 0x7f0201c2

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/TextFareMarker;->setMarker(DDI)V

    .line 40
    return-void
.end method

.method public setMarker(DDI)V
    .locals 3
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/didi/map/marker/TextFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const-string v2, "text_fare"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {p5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 149
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/TextFareMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 153
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_0
    iget-object v1, p0, Lcom/didi/map/marker/TextFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setVisible(Z)V

    .line 155
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/TextFareMarker;->updatePositoin(DD)V

    .line 156
    invoke-virtual {p0}, Lcom/didi/map/marker/TextFareMarker;->showInfoWindow()V

    .line 158
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/didi/map/marker/TextFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-static {p5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setIcon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    goto :goto_0
.end method

.method public setWindowUnClick(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/map/marker/TextFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/TextFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    if-eqz p1, :cond_2

    .line 70
    iget-object v0, p0, Lcom/didi/map/marker/TextFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;

    invoke-virtual {v0}, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->hideArrow()V

    .line 73
    :goto_1
    iput-boolean p1, p0, Lcom/didi/map/marker/TextFareMarker;->isUnClick:Z

    .line 74
    invoke-virtual {p0}, Lcom/didi/map/marker/TextFareMarker;->showInfoWindow()V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/didi/map/marker/TextFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;

    invoke-virtual {v0}, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->showArrow()V

    goto :goto_1
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/didi/map/marker/TextFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/TextFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;

    .line 47
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/TextFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 48
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 49
    return-void
.end method

.method public updateTextFare(Lcom/didi/common/model/MarkerFare;)V
    .locals 1
    .parameter "fare"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/map/marker/TextFareMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/TextFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/TextFareMarker;->mAdapter:Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->updateFare(Lcom/didi/common/model/MarkerFare;)V

    .line 81
    invoke-virtual {p0}, Lcom/didi/map/marker/TextFareMarker;->showInfoWindow()V

    goto :goto_0
.end method
