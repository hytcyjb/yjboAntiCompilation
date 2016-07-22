.class final Lcom/didi/beatles/map/BtsMapHelper$2;
.super Ljava/lang/Object;
.source "BtsMapHelper.java"

# interfaces
.implements Lcom/didi/beatles/map/BtsRouteTipMarker$TipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/map/BtsMapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showTip(Lcom/didi/beatles/map/BtsRouteTipMarker;)V
    .locals 17
    .parameter "marker"

    .prologue
    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/didi/beatles/map/BtsRouteTipMarker;->getMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v12

    if-nez v12, :cond_0

    .line 273
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/didi/beatles/map/BtsRouteTipMarker;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 228
    .local v2, context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Lcom/didi/beatles/map/BtsRouteTipMarker;->getTipPoint()Lcom/didi/beatles/map/BtsRoutePoint;

    move-result-object v11

    .line 230
    .local v11, tipPoint:Lcom/didi/beatles/map/BtsRoutePoint;
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$600()Landroid/widget/PopupWindow;

    move-result-object v12

    if-nez v12, :cond_1

    .line 232
    const-string v12, "layout_inflater"

    invoke-virtual {v2, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 233
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v12, 0x7f030025

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 234
    .local v4, layout:Landroid/view/View;
    new-instance v12, Landroid/widget/PopupWindow;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v4, v13, v14}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v12}, Lcom/didi/beatles/map/BtsMapHelper;->access$602(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 238
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$600()Landroid/widget/PopupWindow;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 239
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$600()Landroid/widget/PopupWindow;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 240
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$600()Landroid/widget/PopupWindow;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->update()V

    .line 241
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$600()Landroid/widget/PopupWindow;

    move-result-object v12

    new-instance v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getProjection()Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    move-result-object v10

    .line 246
    .local v10, projection:Lcom/tencent/tencentmap/mapsdk/maps/Projection;
    invoke-virtual/range {p1 .. p1}, Lcom/didi/beatles/map/BtsRouteTipMarker;->getMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->getPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->toScreenLocation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v9

    .line 249
    .local v9, point:Landroid/graphics/Point;
    const-string v12, "BtsMapHelper"

    iget-object v13, v11, Lcom/didi/beatles/map/BtsRoutePoint;->name:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v12, "BtsMapHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Point:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$600()Landroid/widget/PopupWindow;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v12

    const v13, 0x7f080129

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 254
    .local v1, btn:Landroid/view/View;
    new-instance v12, Lcom/didi/beatles/map/BtsMapHelper$2$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2, v11}, Lcom/didi/beatles/map/BtsMapHelper$2$1;-><init>(Lcom/didi/beatles/map/BtsMapHelper$2;Landroid/content/Context;Lcom/didi/beatles/map/BtsRoutePoint;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMapView()Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    move-result-object v6

    .line 262
    .local v6, mapView:Lcom/tencent/tencentmap/mapsdk/maps/MapView;
    const/4 v12, 0x2

    new-array v5, v12, [I

    .line 263
    .local v5, mapPosition:[I
    invoke-virtual {v6, v5}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->getLocationOnScreen([I)V

    .line 265
    const-string v12, "BtsMapHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pos:x:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v5, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",Pos:y"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v5, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/high16 v12, 0x4170

    invoke-static {v2, v12}, Lcom/didi/beatles/utils/BtsDensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    .line 269
    .local v7, offsetX:I
    const/high16 v12, 0x4210

    invoke-static {v2, v12}, Lcom/didi/beatles/utils/BtsDensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    .line 270
    .local v8, offsetY:I
    invoke-static {}, Lcom/didi/beatles/map/BtsMapHelper;->access$600()Landroid/widget/PopupWindow;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget v14, v5, v14

    iget v15, v9, Landroid/graphics/Point;->x:I

    add-int/2addr v14, v15

    add-int/2addr v14, v7

    const/4 v15, 0x1

    aget v15, v5, v15

    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    add-int v15, v15, v16

    sub-int/2addr v15, v8

    invoke-virtual {v12, v6, v13, v14, v15}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method
