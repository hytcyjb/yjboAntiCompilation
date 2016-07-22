.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/fr;
.super Lcom/tencent/tencentmap/mapsdk/maps/a/fh;
.source "LocationManager.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

.field private b:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource$OnLocationChangedListener;

.field private d:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;

.field private e:Z

.field private f:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

.field private g:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

.field private h:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMyLocationChangeListener;

.field private i:I

.field private j:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fv;Lcom/tencent/tencentmap/mapsdk/maps/a/fc;)V
    .locals 5
    .parameter "mControl"
    .parameter "cirCon"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fh;-><init>()V

    .line 20
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 21
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    .line 22
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->c:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource$OnLocationChangedListener;

    .line 23
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->d:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;

    .line 24
    iput-boolean v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->e:Z

    .line 26
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->f:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 27
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->g:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    .line 28
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->h:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMyLocationChangeListener;

    .line 31
    const/16 v0, 0x66

    const/16 v1, 0xa3

    const/16 v2, 0xff

    invoke-static {v0, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->i:I

    .line 34
    iput-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->j:Landroid/location/Location;

    .line 38
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 39
    iput-object p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->j:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->j:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMyLocationChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->h:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMyLocationChangeListener;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;Landroid/location/Location;)V
    .locals 7
    .parameter "x0"
    .parameter "x1"

    .prologue
    const/high16 v5, 0x3f00

    .line 18
    if-eqz p1, :cond_1

    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->g:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;-><init>()V

    const-wide/high16 v2, 0x3ff0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->radius(D)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    move-result-object v2

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->i:I

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->fillColor(I)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;->strokeColor(I)Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    invoke-virtual {v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fc;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/CircleOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->g:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->g:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->setCenter(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->g:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->setRadius(D)V

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->f:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v1, :cond_2

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v5, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->anchor(FF)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    sget-object v2, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->l:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    invoke-virtual {v2, v1, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/fv;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;Lcom/tencent/tencentmap/mapsdk/maps/a/fv;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->f:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    :goto_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->f:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->f:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->d:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;

    .line 150
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->e:Z

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->d:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->c:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource$OnLocationChangedListener;

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;->activate(Lcom/tencent/tencentmap/mapsdk/maps/LocationSource$OnLocationChangedListener;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMyLocationChangeListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->h:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMyLocationChangeListener;

    .line 243
    return-void
.end method

.method final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 82
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->d:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;

    if-nez v1, :cond_1

    .line 83
    const/4 v0, 0x0

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->c:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource$OnLocationChangedListener;

    if-nez v1, :cond_2

    .line 86
    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;

    invoke-direct {v1, p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr$1;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fr;)V

    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->c:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource$OnLocationChangedListener;

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->f:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->f:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setVisible(Z)V

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->g:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    if-eqz v1, :cond_4

    .line 92
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->g:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->setVisible(Z)V

    .line 94
    :cond_4
    iget-boolean v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->e:Z

    if-eq v1, v0, :cond_0

    .line 97
    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->e:Z

    .line 99
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->d:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->c:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource$OnLocationChangedListener;

    invoke-interface {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;->activate(Lcom/tencent/tencentmap/mapsdk/maps/LocationSource$OnLocationChangedListener;)V

    goto :goto_0
.end method

.method final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->f:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->f:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setVisible(Z)V

    .line 122
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->f:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->remove()V

    .line 123
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->f:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->g:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->g:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->setVisible(Z)V

    .line 127
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->g:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;->remove()V

    .line 128
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->g:Lcom/tencent/tencentmap/mapsdk/maps/model/Circle;

    .line 130
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->e:Z

    if-nez v0, :cond_3

    .line 144
    :cond_2
    :goto_0
    return-void

    .line 133
    :cond_3
    iput-boolean v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->e:Z

    .line 138
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->c:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource$OnLocationChangedListener;

    .line 139
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->d:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->d:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;

    invoke-interface {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;->activate(Lcom/tencent/tencentmap/mapsdk/maps/LocationSource$OnLocationChangedListener;)V

    .line 141
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->d:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;->deactivate()V

    .line 142
    iput-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->d:Lcom/tencent/tencentmap/mapsdk/maps/LocationSource;

    goto :goto_0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->e:Z

    return v0
.end method

.method final d()Landroid/location/Location;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->j:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    .line 230
    :cond_0
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->j:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->b()V

    .line 46
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fv;

    .line 47
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fr;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/fc;

    .line 49
    return-void
.end method
