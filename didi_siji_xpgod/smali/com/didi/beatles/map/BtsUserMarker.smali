.class public Lcom/didi/beatles/map/BtsUserMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "BtsUserMarker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    return-void
.end method


# virtual methods
.method public setMarker(DD)V
    .locals 0
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 19
    return-void
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 24
    return-void
.end method

.method public updateMarker(Lcom/didi/beatles/model/BtsUserAround$UserInfo;)V
    .locals 10
    .parameter "info"

    .prologue
    const v9, 0x7f02007b

    const/4 v8, 0x0

    .line 26
    iget-object v2, p0, Lcom/didi/beatles/map/BtsUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v2, :cond_0

    .line 27
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    const-string v3, "user"

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v2

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v4, p1, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->lat:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/beatles/utils/BtsParseUtil;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p1, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->lng:Ljava/lang/String;

    invoke-static {v6}, Lcom/didi/beatles/utils/BtsParseUtil;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 29
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserRoleType()I

    move-result v1

    .line 30
    .local v1, role:I
    if-nez v1, :cond_1

    .line 31
    const v2, 0x7f020081

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 41
    :goto_0
    invoke-virtual {p0, v0, v8}, Lcom/didi/beatles/map/BtsUserMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 42
    iget-object v2, p0, Lcom/didi/beatles/map/BtsUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/didi/beatles/map/BtsUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v2, v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setInfoWindowEnable(Z)V

    .line 44
    iget-object v2, p0, Lcom/didi/beatles/map/BtsUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v2, v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setClickable(Z)V

    .line 48
    .end local v0           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .end local v1           #role:I
    :cond_0
    return-void

    .line 33
    .restart local v0       #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    .restart local v1       #role:I
    :cond_1
    const-string v2, "1"

    iget-object v3, p1, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->gender:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    invoke-static {v9}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0

    .line 35
    :cond_2
    const-string v2, "2"

    iget-object v3, p1, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->gender:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    const v2, 0x7f020083

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0

    .line 38
    :cond_3
    invoke-static {v9}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    goto :goto_0
.end method
