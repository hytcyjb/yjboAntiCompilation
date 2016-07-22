.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/fe;
.super Ljava/lang/Object;
.source "GlMapControl.java"


# instance fields
.field private a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;


# direct methods
.method public constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/fi;)V
    .locals 1
    .parameter "iDelegate"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    .line 24
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F
    .locals 8
    .parameter "ipadleft"
    .parameter "ipadright"
    .parameter "ipadtop"
    .parameter "ipadbom"
    .parameter "latlngLeftDown"
    .parameter "latlngRightUp"
    .parameter "mapCenter"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 350
    const/4 v0, 0x0

    .line 352
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F
    .locals 1
    .parameter "leftUpper"
    .parameter "rightDown"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 108
    const/high16 v0, -0x4080

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;FIZ)F
    .locals 1
    .parameter "bound"
    .parameter "skewangle"
    .parameter "topPadding"
    .parameter "id3d"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 358
    const/4 v0, 0x0

    .line 360
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;FIZ)F

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Ljava/lang/String;
    .locals 1
    .parameter "mlatlng"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    .line 31
    :cond_0
    return-void
.end method

.method public final a(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(FF)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(I)V

    goto :goto_0
.end method

.method public final a(IF)V
    .locals 1
    .parameter "itype"
    .parameter "frate"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(IF)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Handler;Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter "handler"
    .parameter "config"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Landroid/os/Handler;Landroid/graphics/Bitmap$Config;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V
    .locals 1
    .parameter "cameraupdate"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V
    .locals 1
    .parameter "cameraupdate"
    .parameter "callback"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$CancelableCallback;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;)V
    .locals 1
    .parameter "oncamerachangelistener"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCompassClickedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCompassClickedListener;)V

    .line 395
    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;)V
    .locals 1
    .parameter "oninfowindowclicklistener"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnInfoWindowClickListener;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;)V
    .locals 1
    .parameter "onmapclicklistener"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapClickListener;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapLongClickListener;)V
    .locals 1
    .parameter "onmaplongclicklistener"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMapLongClickListener;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;)V
    .locals 1
    .parameter "onmarkerclicklistener"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnMarkerClickListener;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FF)V
    .locals 1
    .parameter "mLocation"
    .parameter "fRotate"
    .parameter "fTitle"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FF)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFFZ)V
    .locals 6
    .parameter "mLocation"
    .parameter "fRotate"
    .parameter "fTitle"
    .parameter "fDestLevel"
    .parameter "bo3D"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;FFFZ)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;)V
    .locals 1
    .parameter "listner"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 1
    .parameter "boTrafficEnable"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a(Z)V

    goto :goto_0
.end method

.method public final b(I)F
    .locals 1
    .parameter "itype"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->c(I)F

    move-result v0

    goto :goto_0
.end method

.method public final b()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->a()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->b(FF)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->b(Z)V

    goto :goto_0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 42
    const/high16 v0, -0x4080

    .line 44
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->b()F

    move-result v0

    goto :goto_0
.end method

.method public final c(FF)V
    .locals 1
    .parameter "xratio"
    .parameter "yratio"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->c(FF)V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 1
    .parameter "ianchor"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->b(I)V

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 1
    .parameter "boVisible"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->c(Z)V

    goto :goto_0
.end method

.method public final d()F
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 49
    const/high16 v0, -0x4080

    .line 51
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->c()F

    move-result v0

    goto :goto_0
.end method

.method public final d(I)V
    .locals 1
    .parameter "iPixels"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->d(I)V

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->d()V

    goto :goto_0
.end method

.method public final e(I)V
    .locals 1
    .parameter "iPixels"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->e(I)V

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 129
    const/4 v0, -0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->e()I

    move-result v0

    goto :goto_0
.end method

.method public final f(I)V
    .locals 1
    .parameter "padding"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->f(I)V

    goto :goto_0
.end method

.method public final g()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 142
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    goto :goto_0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->g()V

    goto :goto_0
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    goto :goto_0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    goto :goto_0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->i()V

    goto :goto_0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->h()V

    goto :goto_0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    if-nez v0, :cond_0

    .line 386
    const-string v0, ""

    .line 388
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/fe;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/fi;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/fi;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
