.class public Lcom/didi/beatles/map/BtsRoutePointMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "BtsRoutePointMarker.java"


# static fields
.field public static final TYPE_END:I = 0x2

.field public static final TYPE_SEARCH_END:I = 0x4

.field public static final TYPE_SEARCH_START:I = 0x3

.field public static final TYPE_START:I = 0x1


# instance fields
.field private mTaxiConsultPoint:Lcom/didi/beatles/map/BtsRoutePoint;


# direct methods
.method public constructor <init>(Lcom/didi/beatles/map/BtsRoutePoint;)V
    .locals 0
    .parameter "point"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/didi/beatles/map/BtsRoutePointMarker;->mTaxiConsultPoint:Lcom/didi/beatles/map/BtsRoutePoint;

    .line 22
    return-void
.end method

.method private setIcon(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/didi/beatles/map/BtsRoutePointMarker;->mTaxiConsultPoint:Lcom/didi/beatles/map/BtsRoutePoint;

    iget v0, v0, Lcom/didi/beatles/map/BtsRoutePoint;->type:I

    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 40
    :pswitch_0
    const v0, 0x7f020079

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0

    .line 43
    :pswitch_1
    const v0, 0x7f020072

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0

    .line 46
    :pswitch_2
    const v0, 0x7f0201c6

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0

    .line 49
    :pswitch_3
    const v0, 0x7f0201c5

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public setMarker(DD)V
    .locals 4
    .parameter "lat"
    .parameter "lng"

    .prologue
    const/4 v3, 0x0

    .line 26
    iget-object v1, p0, Lcom/didi/beatles/map/BtsRoutePointMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/beatles/map/BtsRoutePointMarker;->mTaxiConsultPoint:Lcom/didi/beatles/map/BtsRoutePoint;

    iget-object v2, v2, Lcom/didi/beatles/map/BtsRoutePoint;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 28
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    invoke-direct {p0, v0}, Lcom/didi/beatles/map/BtsRoutePointMarker;->setIcon(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V

    .line 29
    invoke-virtual {p0, v0, v3}, Lcom/didi/beatles/map/BtsRoutePointMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 34
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_0
    iget-object v1, p0, Lcom/didi/beatles/map/BtsRoutePointMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setInfoWindowEnable(Z)V

    .line 35
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/beatles/map/BtsRoutePointMarker;->updatePositoin(DD)V

    goto :goto_0
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 70
    return-void
.end method

.method protected showInfoWindow()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    .line 58
    return-void
.end method
