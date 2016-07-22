.class final Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;
.super Ljava/lang/Object;
.source "VectorMapView.java"

# interfaces
.implements Lcom/tencent/tencentmap/mapsdk/maps/a/bs;


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
    .line 1254
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 1348
    const/4 v0, 0x0

    return v0
.end method

.method public final a(F)Z
    .locals 1
    .parameter "distanceY"

    .prologue
    .line 1360
    const/4 v0, 0x0

    return v0
.end method

.method public final a(FF)Z
    .locals 2
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v0, 0x1

    .line 1290
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1291
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;->onFling(FF)Z

    move-result v1

    .line 1292
    if-ne v1, v0, :cond_0

    .line 1296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/PointF;Landroid/graphics/PointF;DD)Z
    .locals 1
    .parameter "preCenter"
    .parameter "postCenter"
    .parameter "preVector"
    .parameter "postVector"

    .prologue
    .line 1386
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Z
    .locals 1
    .parameter "preCenter"
    .parameter "postCenter"
    .parameter "angle"

    .prologue
    .line 1379
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 1354
    const/4 v0, 0x0

    return v0
.end method

.method public final b(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1444
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1372
    const/4 v0, 0x0

    return v0
.end method

.method public final c(FF)Z
    .locals 2
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v0, 0x1

    .line 1302
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;->onScroll(FF)Z

    move-result v1

    .line 1304
    if-ne v1, v0, :cond_0

    .line 1308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 1439
    return-void
.end method

.method public final d(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 1259
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1260
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;->onDoubleTap(FF)Z

    move-result v1

    .line 1261
    if-ne v1, v0, :cond_0

    .line 1265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 1271
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/el;FF)Z

    move-result v1

    .line 1272
    if-ne v1, v0, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->F:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCompassClickedListener;

    if-eqz v1, :cond_0

    .line 1274
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v1, v1, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->F:Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCompassClickedListener;

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$OnCompassClickedListener;->onCompassClicked()V

    .line 1284
    :cond_0
    :goto_0
    return v0

    .line 1278
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1279
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;->onSingleTap(FF)Z

    move-result v1

    .line 1280
    if-eq v1, v0, :cond_0

    .line 1284
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 1314
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/el;FF)Z

    move-result v1

    .line 1315
    if-ne v1, v0, :cond_1

    .line 1324
    :cond_0
    :goto_0
    return v0

    .line 1318
    :cond_1
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1319
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;->onLongPress(FF)Z

    move-result v1

    .line 1320
    if-eq v1, v0, :cond_0

    .line 1324
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1330
    const/4 v0, 0x0

    return v0
.end method

.method public final h(FF)Z
    .locals 1
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 1336
    const/4 v0, 0x0

    return v0
.end method

.method public final i(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1342
    const/4 v0, 0x0

    return v0
.end method

.method public final j(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1392
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v2, :cond_1

    .line 1393
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v2, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->a(FF)Z

    move-result v2

    .line 1394
    if-ne v2, v1, :cond_1

    .line 1395
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v2, v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->f(Z)Z

    move-result v2

    .line 1396
    if-ne v2, v1, :cond_0

    .line 1397
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->requestRender()V

    .line 1409
    :cond_0
    :goto_0
    return v0

    .line 1403
    :cond_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1404
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;->onDown(FF)Z

    move-result v2

    .line 1405
    if-ne v2, v1, :cond_0

    move v0, v1

    .line 1406
    goto :goto_0
.end method

.method public final k(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1418
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    if-eqz v2, :cond_1

    .line 1419
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    iget-object v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->f:Lcom/tencent/tencentmap/mapsdk/maps/a/dk;

    invoke-virtual {v2, v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/dk;->f(Z)Z

    move-result v2

    .line 1420
    if-ne v2, v1, :cond_1

    .line 1421
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->requestRender()V

    .line 1432
    :cond_0
    :goto_0
    return v0

    .line 1425
    :cond_1
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1426
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/el$6;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/el;

    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/el;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/el;)Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/tencent/tencentmap/mapsdk/maps/model/TencentMapGestureListener;->onUp(FF)Z

    move-result v2

    .line 1427
    if-ne v2, v1, :cond_0

    move v0, v1

    .line 1428
    goto :goto_0
.end method
