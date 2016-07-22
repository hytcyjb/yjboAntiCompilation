.class public Lcom/didi/map/marker/CarPoolMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "CarPoolMarker.java"


# instance fields
.field private mAdapter:Lcom/didi/map/marker/adapter/CarPoolMarkerAdapter;

.field private mTaxiConsultPoint:Lcom/didi/taxi/model/TaxiOrderState$TripPoi;


# direct methods
.method public constructor <init>(Lcom/didi/taxi/model/TaxiOrderState$TripPoi;)V
    .locals 0
    .parameter "point"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/didi/map/marker/CarPoolMarker;->mTaxiConsultPoint:Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    .line 25
    return-void
.end method

.method private getResId(ZZ)I
    .locals 1
    .parameter "isstart"
    .parameter "istrip"

    .prologue
    .line 35
    const v0, 0x7f0202f7

    .line 37
    .local v0, resId:I
    if-eqz p2, :cond_1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    const v0, 0x7f020306

    .line 50
    :goto_0
    return v0

    .line 41
    :cond_0
    const v0, 0x7f020305

    goto :goto_0

    .line 44
    :cond_1
    if-eqz p1, :cond_2

    .line 45
    const v0, 0x7f020308

    goto :goto_0

    .line 47
    :cond_2
    const v0, 0x7f020307

    goto :goto_0
.end method


# virtual methods
.method public getMarkerTitle(ZZ)Ljava/lang/String;
    .locals 3
    .parameter "isstart"
    .parameter "istrip"

    .prologue
    .line 54
    const-string v0, ""

    .line 55
    .local v0, title:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u62fc\u53cb\u8d77\u70b9:{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/map/marker/CarPoolMarker;->mTaxiConsultPoint:Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 59
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u62fc\u53cb\u7ec8\u70b9:{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/map/marker/CarPoolMarker;->mTaxiConsultPoint:Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    if-eqz p1, :cond_2

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6211\u7684\u8d77\u70b9:{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/map/marker/CarPoolMarker;->mTaxiConsultPoint:Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6211\u7684\u7ec8\u70b9:{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/map/marker/CarPoolMarker;->mTaxiConsultPoint:Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 74
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarPoolMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarPoolMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 75
    invoke-virtual {p0}, Lcom/didi/map/marker/CarPoolMarker;->showInfoWindow()V

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public setMarker(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 29
    const v5, 0x7f0202f7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/didi/map/marker/CarPoolMarker;->setMarker(DDI)V

    .line 32
    return-void
.end method

.method public setMarker(DDI)V
    .locals 6
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 97
    iget-object v5, p0, Lcom/didi/map/marker/CarPoolMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v5, :cond_2

    .line 98
    iget-object v5, p0, Lcom/didi/map/marker/CarPoolMarker;->mTaxiConsultPoint:Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    iget v5, v5, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->is_trip_friend:I

    if-ne v5, v3, :cond_0

    move v1, v3

    .line 99
    .local v1, istrip:Z
    :goto_0
    iget-object v5, p0, Lcom/didi/map/marker/CarPoolMarker;->mTaxiConsultPoint:Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    iget v5, v5, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->point_type:I

    if-ne v5, v3, :cond_1

    move v0, v3

    .line 103
    .local v0, isstart:Z
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConsultName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/didi/map/marker/CarPoolMarker;->mTaxiConsultPoint:Lcom/didi/taxi/model/TaxiOrderState$TripPoi;

    invoke-virtual {v5}, Lcom/didi/taxi/model/TaxiOrderState$TripPoi;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 104
    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    const-string v5, "push"

    invoke-virtual {v3, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v3

    new-instance v5, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v3

    invoke-direct {p0, v0, v1}, Lcom/didi/map/marker/CarPoolMarker;->getResId(ZZ)I

    move-result v5

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v2

    .line 105
    .local v2, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    invoke-virtual {p0, v2, v4}, Lcom/didi/map/marker/CarPoolMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 106
    const v3, 0x7f0202f7

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 109
    iget-object v3, p0, Lcom/didi/map/marker/CarPoolMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/CarPoolMarker;->getMarkerTitle(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 115
    .end local v0           #isstart:Z
    .end local v1           #istrip:Z
    .end local v2           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_2
    return-void

    :cond_0
    move v1, v4

    .line 98
    goto :goto_0

    .restart local v1       #istrip:Z
    :cond_1
    move v0, v4

    .line 99
    goto :goto_1

    .line 113
    .end local v1           #istrip:Z
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/CarPoolMarker;->updatePositoin(DD)V

    goto :goto_2
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/didi/map/marker/CarPoolMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarPoolMarkerAdapter;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/didi/map/marker/adapter/CarPoolMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/map/marker/adapter/CarPoolMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/map/marker/CarPoolMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarPoolMarkerAdapter;

    .line 84
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/CarPoolMarker;->mAdapter:Lcom/didi/map/marker/adapter/CarPoolMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 85
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 86
    return-void
.end method

.method public updateMarker(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/didi/map/marker/CarPoolMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/CarPoolMarker;->setMarker(DD)V

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/CarPoolMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method
