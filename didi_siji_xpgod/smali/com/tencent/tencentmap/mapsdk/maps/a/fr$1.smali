.class final Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/LocationSource$OnLocationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 201
    if-nez p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;Landroid/location/Location;)Landroid/location/Location;

    .line 216
    :goto_1
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-static {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;Landroid/location/Location;)V

    .line 217
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMyLocationChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMyLocationChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMyLocationChangeListener;->onMyLocationChange(Landroid/location/Location;)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 208
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 209
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 210
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 212
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 213
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fr;

    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    goto :goto_1
.end method
