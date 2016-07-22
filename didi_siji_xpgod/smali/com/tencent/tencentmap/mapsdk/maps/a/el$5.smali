.class final Lcom/tencent/tencentmap/mapsdk/maps/a/el$5;
.super Landroid/os/Handler;
.source "VectorMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$5;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/high16 v9, 0x43b4

    .line 257
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 259
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$5;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->j()Lcom/tencent/tencentmap/mapsdk/maps/a/bg;

    move-result-object v6

    .line 260
    .local v6, geoCenter:Lcom/tencent/tencentmap/mapsdk/maps/a/bg;
    if-eqz v6, :cond_0

    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$5;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v8, v8, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->q:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;

    if-nez v8, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-static {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/ds;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/bg;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v7

    .line 264
    .local v7, mLatlng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$5;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->k()F

    move-result v3

    .line 265
    .local v3, fRotate:F
    const/4 v8, 0x0

    cmpg-float v8, v3, v8

    if-gez v8, :cond_2

    .line 266
    rem-float v8, v3, v9

    .line 267
    add-float v3, v8, v9

    .line 269
    :cond_2
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$5;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->l()F

    move-result v4

    .line 271
    .local v4, fSkew:F
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$5;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->i()I

    move-result v8

    int-to-float v5, v8

    .line 272
    .local v5, fZoom:F
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$5;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/bm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/bm;->m()F

    move-result v8

    float-to-double v1, v8

    .line 273
    .local v1, dglScale:D
    float-to-double v8, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4000

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v5, v8

    .line 275
    invoke-static {}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->builder()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->zoom(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->target(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->bearing(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->tilt(F)Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v0

    .line 277
    .local v0, camerPosi:Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;
    iget-object v8, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$5;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v8, v8, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->q:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;

    invoke-interface {v8, v0}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCameraChangeListener;->onCameraChange(Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;)V

    goto :goto_0
.end method
