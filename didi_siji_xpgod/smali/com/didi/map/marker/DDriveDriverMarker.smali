.class public Lcom/didi/map/marker/DDriveDriverMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "DDriveDriverMarker.java"


# instance fields
.field private mAdapter:Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

.field private mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/didi/map/marker/DDriveDriverMarker;)Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/map/marker/DDriveDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

    return-object v0
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 119
    const-string v2, "pdjxhome_03_ck"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 121
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/DriveAccountManager;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-wide v3, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/didi/map/marker/DDriveDriverMarker;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    iget-object v4, v4, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->did:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-object v4, v4, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->token:Ljava/lang/String;

    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getDriveCountHideFlag()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/didi/ddrive/util/DDriveH5Util;->getDriverDetailUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 129
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    invoke-super {p0, p1}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    .line 137
    return-void

    .line 126
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/didi/map/marker/DDriveDriverMarker;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    iget-object v3, v3, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->did:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getDriveCountHideFlag()I

    move-result v3

    invoke-static {v2, v3}, Lcom/didi/ddrive/util/DDriveH5Util;->getDriverDetailUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public onInfoWindowClickLocation(IIII)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 143
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v1, p0, Lcom/didi/map/marker/DDriveDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

    if-nez v1, :cond_0

    .line 93
    new-instance v1, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

    invoke-direct {v1}, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;-><init>()V

    iput-object v1, p0, Lcom/didi/map/marker/DDriveDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

    .line 94
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    .line 96
    .local v0, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    iget-object v3, p0, Lcom/didi/map/marker/DDriveDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

    iget-object v4, p0, Lcom/didi/map/marker/DDriveDriverMarker;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getDriveCountHideFlag()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1}, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->setDriver(Lcom/didi/ddrive/net/http/response/NearByDriveInfo;Z)V

    .line 99
    .end local v0           #drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    iget-object v3, p0, Lcom/didi/map/marker/DDriveDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

    invoke-virtual {v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 100
    iget-object v1, p0, Lcom/didi/map/marker/DDriveDriverMarker;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    iget-object v1, v1, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->headThumbUrl:Ljava/lang/String;

    new-instance v3, Lcom/didi/map/marker/DDriveDriverMarker$1;

    invoke-direct {v3, p0}, Lcom/didi/map/marker/DDriveDriverMarker$1;-><init>(Lcom/didi/map/marker/DDriveDriverMarker;)V

    invoke-static {v1, v3}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 113
    const-string v1, "pdjxhome_02_ck"

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    return v2

    .restart local v0       #drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    :cond_1
    move v1, v2

    .line 96
    goto :goto_0
.end method

.method public setMarker(DD)V
    .locals 3
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 45
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    const-string v2, "ddrive"

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    const v2, 0x7f020187

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    .line 48
    .local v0, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/didi/map/marker/DDriveDriverMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V

    .line 49
    return-void
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 149
    return-void
.end method

.method public upDateDriverPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bit"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/map/marker/DDriveDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/DDriveDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/DDriveDriverMarker;->mAdapter:Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;

    invoke-virtual {v0, p1}, Lcom/didi/map/marker/adapter/DDriveDriverMarkerAdapter;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 87
    invoke-virtual {p0}, Lcom/didi/map/marker/DDriveDriverMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public upDateMarker(Lcom/didi/ddrive/net/http/response/NearByDriveInfo;)V
    .locals 6
    .parameter "driver"

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    iput-object p1, p0, Lcom/didi/map/marker/DDriveDriverMarker;->mDriver:Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    .line 53
    iget-object v0, p0, Lcom/didi/map/marker/DDriveDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_1

    .line 54
    iget-wide v0, p1, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->lat:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->lng:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 55
    iget-wide v0, p1, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->lat:D

    iget-wide v2, p1, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->lng:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/didi/map/marker/DDriveDriverMarker;->setMarker(DD)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-wide v0, p1, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->lat:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->lng:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/didi/map/marker/DDriveDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, p1, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->lat:D

    iget-wide v4, p1, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->lng:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public upDateMarkerIcon(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/didi/map/marker/DDriveDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 76
    .local v0, bd:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/didi/map/marker/DDriveDriverMarker;->initSpecialMarkerIcon(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    iget-object v1, p0, Lcom/didi/map/marker/DDriveDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setIcon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/didi/map/marker/DDriveDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-static {p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setIcon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)V

    goto :goto_0
.end method

.method public updateDriverMarker(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/didi/map/marker/DDriveDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/DDriveDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public updateMarkerClickStatus(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/didi/map/marker/DDriveDriverMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setInfoWindowEnable(Z)V

    .line 153
    return-void
.end method
