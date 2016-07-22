.class final Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$1;
.super Ljava/lang/Object;
.source "TencentMap.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/gf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;)V
    .locals 0
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 758
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setMyLocationEnabled(Z)V

    .line 759
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMyLocation()Landroid/location/Location;

    move-result-object v0

    .line 760
    .local v0, locGot:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 761
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 763
    .local v1, mLatlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    .line 765
    .end local v1           #mLatlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_0
    return-void
.end method
