.class public Lcom/didi/map/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static caculateZoom(DDDDDDDD)F
    .locals 17
    .parameter "flat"
    .parameter "flng"
    .parameter "tlat"
    .parameter "tlng"
    .parameter "maxlat"
    .parameter "maxlng"
    .parameter "minlat"
    .parameter "minlng"

    .prologue
    .line 362
    const/16 v16, 0x0

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    invoke-static/range {v0 .. v16}, Lcom/didi/map/ZoomManager;->caculateZoom(DDDDDDDDZ)F

    move-result v0

    return v0
.end method

.method private static caculateZoom(DDDDDDDDZ)F
    .locals 2
    .parameter "flat"
    .parameter "flng"
    .parameter "tlat"
    .parameter "tlng"
    .parameter "maxlat"
    .parameter "maxlng"
    .parameter "minlat"
    .parameter "minlng"
    .parameter "isSpan"

    .prologue
    .line 369
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_3

    .line 370
    cmpg-double v0, p8, p0

    if-gez v0, :cond_0

    .line 371
    move-wide p8, p0

    .line 373
    :cond_0
    cmpl-double v0, p12, p0

    if-lez v0, :cond_1

    .line 374
    move-wide p12, p0

    .line 376
    :cond_1
    cmpg-double v0, p10, p2

    if-gez v0, :cond_2

    .line 377
    move-wide p10, p2

    .line 379
    :cond_2
    cmpl-double v0, p14, p2

    if-lez v0, :cond_3

    .line 380
    move-wide/from16 p14, p2

    .line 383
    :cond_3
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    cmpl-double v0, p6, v0

    if-eqz v0, :cond_7

    .line 384
    cmpg-double v0, p8, p4

    if-gez v0, :cond_4

    .line 385
    move-wide p8, p4

    .line 387
    :cond_4
    cmpl-double v0, p12, p4

    if-lez v0, :cond_5

    .line 388
    move-wide p12, p4

    .line 390
    :cond_5
    cmpg-double v0, p10, p6

    if-gez v0, :cond_6

    .line 391
    move-wide p10, p6

    .line 393
    :cond_6
    cmpl-double v0, p14, p6

    if-lez v0, :cond_7

    .line 394
    move-wide/from16 p14, p6

    .line 397
    :cond_7
    if-eqz p16, :cond_8

    .line 398
    invoke-static/range {p8 .. p15}, Lcom/didi/map/ZoomManager;->zoomSpan(DDDD)V

    .line 399
    const/high16 v0, -0x4080

    .line 401
    :goto_0
    return v0

    :cond_8
    invoke-static/range {p8 .. p15}, Lcom/didi/map/ZoomManager;->getZoomSpan(DDDD)F

    move-result v0

    goto :goto_0
.end method

.method public static getZoomSpan(DDDD)F
    .locals 4
    .parameter "flat"
    .parameter "flng"
    .parameter "tolat"
    .parameter "tolng"

    .prologue
    .line 155
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v3, p4, p5, p6, p7}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getZoomToSpanLevel(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v0

    .line 157
    .local v0, zoom:F
    const-string v1, "zoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoomManager zoomSpan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return v0
.end method

.method public static zoomSpan(DDDD)V
    .locals 5
    .parameter "flat"
    .parameter "flng"
    .parameter "tolat"
    .parameter "tolng"

    .prologue
    .line 144
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v3, p4, p5, p6, p7}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getZoomToSpanLevel(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v0

    .line 146
    .local v0, zoom:F
    float-to-double v1, v0

    const-wide/high16 v3, -0x4010

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    .line 147
    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    .line 148
    invoke-static {v0}, Lcom/didi/map/MapController;->zoomMap(F)V

    .line 150
    :cond_0
    const-string v1, "zoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoomManager zoomSpan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static zoomToSpan(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, listPts:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    const/4 v2, 0x0

    .line 26
    const/16 v0, 0x96

    const/16 v1, 0x12c

    invoke-static {p0, v2, v2, v0, v1}, Lcom/didi/map/ZoomManager;->zoomToSpan(Ljava/util/List;IIII)V

    .line 27
    return-void
.end method

.method public static zoomToSpan(Ljava/util/List;IIII)V
    .locals 7
    .parameter
    .parameter "marginleft"
    .parameter "marginRight"
    .parameter "marginTop"
    .parameter "marginBottom"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;IIII)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, listPts:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    if-nez p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 34
    .local v3, iPtSize:I
    if-lez v3, :cond_0

    .line 38
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;-><init>()V

    .line 39
    .local v0, boundbuilder:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;
    const/4 v4, 0x0

    .line 40
    .local v4, latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 41
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    check-cast v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 42
    .restart local v4       #latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-nez v4, :cond_2

    .line 40
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v0, v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->include(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    goto :goto_2

    .line 47
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    move-result-object v1

    .line 49
    .local v1, bounds:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v5

    invoke-static {v1, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newLatLngBoundsRect(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;IIII)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public static zoomToSpan(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 14
    .parameter
    .parameter "mapCenter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, listPts:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    if-nez p0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    .line 57
    .local v11, iPtSize:I
    if-lez v11, :cond_0

    .line 61
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    invoke-direct {v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;-><init>()V

    .line 62
    .local v8, boundbuilder:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;
    const/4 v12, 0x0

    .line 63
    .local v12, latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v11, :cond_3

    .line 64
    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    check-cast v12, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 65
    .restart local v12       #latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-nez v12, :cond_2

    .line 63
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v8, v12}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->include(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    goto :goto_2

    .line 70
    :cond_3
    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    move-result-object v9

    .line 72
    .local v9, bounds:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v6, v9, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->calcuteZoomToSpanLevel(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v13

    .line 73
    .local v13, zoomLevel:F
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------- zoomToSpan zoomLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 74
    const-string v0, "maplistener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomToSpan center:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    const/high16 v1, 0x3f80

    sub-float v1, v13, v1

    invoke-static {p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    goto/16 :goto_0
.end method

.method public static zoomToSpan(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;I)V
    .locals 15
    .parameter
    .parameter "mapCenter"
    .parameter "minZoomLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, listPts:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    if-nez p0, :cond_0

    .line 118
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    .line 140
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v12

    .line 122
    .local v12, iPtSize:I
    if-gtz v12, :cond_1

    .line 123
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    move/from16 v0, p2

    int-to-float v2, v0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    goto :goto_0

    .line 127
    :cond_1
    new-instance v9, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    invoke-direct {v9}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;-><init>()V

    .line 128
    .local v9, boundbuilder:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;
    const/4 v13, 0x0

    .line 129
    .local v13, latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v12, :cond_3

    .line 130
    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    check-cast v13, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 131
    .restart local v13       #latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-nez v13, :cond_2

    .line 129
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v9, v13}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->include(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    goto :goto_2

    .line 136
    :cond_3
    invoke-virtual {v9}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    move-result-object v10

    .line 138
    .local v10, bounds:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v10, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v7, v10, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->calcuteZoomToSpanLevel(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v14

    .line 139
    .local v14, zoomLevel:F
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    const/high16 v2, 0x3f80

    sub-float v2, v14, v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    goto :goto_0
.end method

.method public static zoomToSpanForSmooth(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 14
    .parameter
    .parameter "mapCenter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ">;",
            "Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, listPts:Ljava/util/List;,"Ljava/util/List<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    if-nez p0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    .line 86
    .local v11, iPtSize:I
    if-lez v11, :cond_0

    .line 90
    new-instance v8, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    invoke-direct {v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;-><init>()V

    .line 91
    .local v8, boundbuilder:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;
    const/4 v12, 0x0

    .line 92
    .local v12, latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v11, :cond_3

    .line 93
    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    check-cast v12, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 94
    .restart local v12       #latlngPt:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    if-nez v12, :cond_2

    .line 92
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {v8, v12}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->include(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;

    goto :goto_2

    .line 99
    :cond_3
    invoke-virtual {v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds$Builder;->build()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;

    move-result-object v9

    .line 101
    .local v9, bounds:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->southwest:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v6, v9, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLngBounds;->northeast:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->calcuteZoomToSpanLevel(IIIILcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v13

    .line 102
    .local v13, zoomLevel:F
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------- zoomToSpan zoomLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 103
    const-string v0, "maplistener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomToSpan center:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 107
    const/high16 v0, 0x4170

    cmpg-float v0, v13, v0

    if-gez v0, :cond_4

    .line 108
    const/high16 v13, 0x4170

    .line 110
    :cond_4
    const v0, 0x4194cccd

    cmpl-float v0, v13, v0

    if-lez v0, :cond_5

    .line 111
    const v13, 0x4194cccd

    .line 113
    :cond_5
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    const/high16 v1, 0x3f80

    sub-float v1, v13, v1

    invoke-static {p1, v1}, Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;F)Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->animateCamera(Lcom/tencent/tencentmap/mapsdk/maps/CameraUpdate;)V

    goto/16 :goto_0
.end method

.method public static zoomWithActivityMarkers(DDLjava/util/List;)F
    .locals 23
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/List",
            "<",
            "Lcom/didi/common/model/BaseDriverFactory$BaseDriver;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 298
    .local p4, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/BaseDriverFactory$BaseDriver;>;"
    const-wide/16 v10, 0x0

    .local v10, maxLat:D
    const-wide/16 v12, 0x0

    .local v12, maxLng:D
    const-wide/16 v14, 0x0

    .local v14, minLat:D
    const-wide/16 v16, 0x0

    .line 299
    .local v16, minLng:D
    if-eqz p4, :cond_7

    .line 300
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_7

    .line 301
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 300
    :cond_0
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 304
    :cond_1
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;

    iget-object v2, v2, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;->lat:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 305
    .local v18, dlat:D
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;

    iget-object v2, v2, Lcom/didi/common/model/BaseDriverFactory$BaseDriver;->lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 306
    .local v20, dlng:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-nez v2, :cond_2

    .line 307
    move-wide/from16 v14, v18

    .line 309
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-nez v2, :cond_3

    .line 310
    move-wide/from16 v16, v20

    .line 312
    :cond_3
    cmpl-double v2, v18, v10

    if-lez v2, :cond_4

    .line 313
    move-wide/from16 v10, v18

    .line 315
    :cond_4
    cmpg-double v2, v18, v14

    if-gez v2, :cond_5

    .line 316
    move-wide/from16 v14, v18

    .line 318
    :cond_5
    cmpl-double v2, v20, v12

    if-lez v2, :cond_6

    .line 319
    move-wide/from16 v12, v20

    .line 321
    :cond_6
    cmpg-double v2, v20, v16

    if-gez v2, :cond_0

    .line 322
    move-wide/from16 v16, v20

    goto :goto_1

    .line 326
    .end local v18           #dlat:D
    .end local v20           #dlng:D
    .end local v22           #i:I
    :cond_7
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v17}, Lcom/didi/map/ZoomManager;->caculateZoom(DDDDDDDD)F

    move-result v2

    return v2
.end method

.method public static zoomWithBtsMarkers(DDLjava/util/ArrayList;)F
    .locals 23
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/beatles/model/BtsUserAround$UserInfo;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 263
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/beatles/model/BtsUserAround$UserInfo;>;"
    const-wide/16 v10, 0x0

    .local v10, maxLat:D
    const-wide/16 v12, 0x0

    .local v12, maxLng:D
    const-wide/16 v14, 0x0

    .local v14, minLat:D
    const-wide/16 v16, 0x0

    .line 264
    .local v16, minLng:D
    if-eqz p4, :cond_7

    .line 265
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_7

    .line 266
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 265
    :cond_0
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 269
    :cond_1
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/model/BtsUserAround$UserInfo;

    iget-object v2, v2, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->lat:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 270
    .local v18, dlat:D
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/model/BtsUserAround$UserInfo;

    iget-object v2, v2, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 271
    .local v20, dlng:D
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/model/BtsUserAround$UserInfo;

    iget-object v2, v2, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->lat:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lng="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/beatles/model/BtsUserAround$UserInfo;

    iget-object v2, v2, Lcom/didi/beatles/model/BtsUserAround$UserInfo;->lng:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 273
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-nez v2, :cond_2

    .line 274
    move-wide/from16 v14, v18

    .line 276
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-nez v2, :cond_3

    .line 277
    move-wide/from16 v16, v20

    .line 279
    :cond_3
    cmpl-double v2, v18, v10

    if-lez v2, :cond_4

    .line 280
    move-wide/from16 v10, v18

    .line 282
    :cond_4
    cmpg-double v2, v18, v14

    if-gez v2, :cond_5

    .line 283
    move-wide/from16 v14, v18

    .line 285
    :cond_5
    cmpl-double v2, v20, v12

    if-lez v2, :cond_6

    .line 286
    move-wide/from16 v12, v20

    .line 288
    :cond_6
    cmpg-double v2, v20, v16

    if-gez v2, :cond_0

    .line 289
    move-wide/from16 v16, v20

    goto/16 :goto_1

    .line 293
    .end local v18           #dlat:D
    .end local v20           #dlng:D
    .end local v22           #i:I
    :cond_7
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v17}, Lcom/didi/map/ZoomManager;->caculateZoom(DDDDDDDD)F

    move-result v2

    return v2
.end method

.method public static zoomWithCarMarkers(DDLjava/util/ArrayList;)F
    .locals 23
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/car/model/CarDriver;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 198
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/car/model/CarDriver;>;"
    const-wide/16 v10, 0x0

    .local v10, maxLat:D
    const-wide/16 v12, 0x0

    .local v12, maxLng:D
    const-wide/16 v14, 0x0

    .local v14, minLat:D
    const-wide/16 v16, 0x0

    .line 199
    .local v16, minLng:D
    if-eqz p4, :cond_7

    .line 200
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_7

    .line 201
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 200
    :cond_0
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 204
    :cond_1
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/car/model/CarDriver;

    iget-object v2, v2, Lcom/didi/car/model/CarDriver;->lat:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 205
    .local v18, dlat:D
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/car/model/CarDriver;

    iget-object v2, v2, Lcom/didi/car/model/CarDriver;->lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 206
    .local v20, dlng:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-nez v2, :cond_2

    .line 207
    move-wide/from16 v14, v18

    .line 209
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-nez v2, :cond_3

    .line 210
    move-wide/from16 v16, v20

    .line 212
    :cond_3
    cmpl-double v2, v18, v10

    if-lez v2, :cond_4

    .line 213
    move-wide/from16 v10, v18

    .line 215
    :cond_4
    cmpg-double v2, v18, v14

    if-gez v2, :cond_5

    .line 216
    move-wide/from16 v14, v18

    .line 218
    :cond_5
    cmpl-double v2, v20, v12

    if-lez v2, :cond_6

    .line 219
    move-wide/from16 v12, v20

    .line 221
    :cond_6
    cmpg-double v2, v20, v16

    if-gez v2, :cond_0

    .line 222
    move-wide/from16 v16, v20

    goto :goto_1

    .line 226
    .end local v18           #dlat:D
    .end local v20           #dlng:D
    .end local v22           #i:I
    :cond_7
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v17}, Lcom/didi/map/ZoomManager;->caculateZoom(DDDDDDDD)F

    move-result v2

    return v2
.end method

.method public static zoomWithDDriveMarkers(DDLjava/util/ArrayList;)F
    .locals 23
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/ddrive/net/http/response/NearByDriveInfo;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 231
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/ddrive/net/http/response/NearByDriveInfo;>;"
    const-wide/16 v10, 0x0

    .local v10, maxLat:D
    const-wide/16 v12, 0x0

    .local v12, maxLng:D
    const-wide/16 v14, 0x0

    .local v14, minLat:D
    const-wide/16 v16, 0x0

    .line 232
    .local v16, minLng:D
    if-eqz p4, :cond_7

    .line 233
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_7

    .line 234
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 233
    :cond_0
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 237
    :cond_1
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    iget-wide v0, v2, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->lat:D

    move-wide/from16 v18, v0

    .line 238
    .local v18, dlat:D
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;

    iget-wide v0, v2, Lcom/didi/ddrive/net/http/response/NearByDriveInfo;->lng:D

    move-wide/from16 v20, v0

    .line 239
    .local v20, dlng:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-nez v2, :cond_2

    .line 240
    move-wide/from16 v14, v18

    .line 242
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-nez v2, :cond_3

    .line 243
    move-wide/from16 v16, v20

    .line 245
    :cond_3
    cmpl-double v2, v18, v10

    if-lez v2, :cond_4

    .line 246
    move-wide/from16 v10, v18

    .line 248
    :cond_4
    cmpg-double v2, v18, v14

    if-gez v2, :cond_5

    .line 249
    move-wide/from16 v14, v18

    .line 251
    :cond_5
    cmpl-double v2, v20, v12

    if-lez v2, :cond_6

    .line 252
    move-wide/from16 v12, v20

    .line 254
    :cond_6
    cmpg-double v2, v20, v16

    if-gez v2, :cond_0

    .line 255
    move-wide/from16 v16, v20

    goto :goto_1

    .line 259
    .end local v18           #dlat:D
    .end local v20           #dlng:D
    .end local v22           #i:I
    :cond_7
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v17}, Lcom/didi/map/ZoomManager;->caculateZoom(DDDDDDDD)F

    move-result v2

    return v2
.end method

.method public static zoomWithTaxiMarkers(DDLjava/util/ArrayList;)F
    .locals 23
    .parameter "lat"
    .parameter "lng"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/taxi/model/TaxiDriver;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 163
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/taxi/model/TaxiDriver;>;"
    const-wide/16 v10, 0x0

    .local v10, maxLat:D
    const-wide/16 v12, 0x0

    .local v12, maxLng:D
    const-wide/16 v14, 0x0

    .local v14, minLat:D
    const-wide/16 v16, 0x0

    .line 164
    .local v16, minLng:D
    if-eqz p4, :cond_7

    .line 165
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_7

    .line 166
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 165
    :cond_0
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 169
    :cond_1
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/taxi/model/TaxiDriver;

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiDriver;->lat:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 170
    .local v18, dlat:D
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/taxi/model/TaxiDriver;

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiDriver;->lng:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .line 171
    .local v20, dlng:D
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/taxi/model/TaxiDriver;

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiDriver;->lat:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lng="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/taxi/model/TaxiDriver;

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiDriver;->lng:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 173
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-nez v2, :cond_2

    .line 174
    move-wide/from16 v14, v18

    .line 176
    :cond_2
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-nez v2, :cond_3

    .line 177
    move-wide/from16 v16, v20

    .line 179
    :cond_3
    cmpl-double v2, v18, v10

    if-lez v2, :cond_4

    .line 180
    move-wide/from16 v10, v18

    .line 182
    :cond_4
    cmpg-double v2, v18, v14

    if-gez v2, :cond_5

    .line 183
    move-wide/from16 v14, v18

    .line 185
    :cond_5
    cmpl-double v2, v20, v12

    if-lez v2, :cond_6

    .line 186
    move-wide/from16 v12, v20

    .line 188
    :cond_6
    cmpg-double v2, v20, v16

    if-gez v2, :cond_0

    .line 189
    move-wide/from16 v16, v20

    goto/16 :goto_1

    .line 193
    .end local v18           #dlat:D
    .end local v20           #dlng:D
    .end local v22           #i:I
    :cond_7
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-static/range {v2 .. v17}, Lcom/didi/map/ZoomManager;->caculateZoom(DDDDDDDD)F

    move-result v2

    return v2
.end method
