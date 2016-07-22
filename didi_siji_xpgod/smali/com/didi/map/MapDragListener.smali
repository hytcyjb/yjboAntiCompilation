.class public Lcom/didi/map/MapDragListener;
.super Ljava/lang/Object;
.source "MapDragListener.java"

# interfaces
.implements Lcom/didi/map/IMapDragListener;


# static fields
.field public static final ZOOM_AUTO_SUBPOI:I = 0x11

.field private static hashShowConfirmDialog:Z

.field public static isLastAdsorb:Z

.field public static isMoved:Z

.field public static mFirstPositionUid:Ljava/lang/String;

.field private static mLastOnMapStableLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

.field private static mLastRequestTimeMill:J

.field private static mSubPoiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dialog:Lcom/didi/common/helper/DialogHelper;

.field protected isMoving:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/didi/map/MapDragListener;->mFirstPositionUid:Ljava/lang/String;

    .line 43
    sput-boolean v2, Lcom/didi/map/MapDragListener;->isMoved:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/didi/map/MapDragListener;->mSubPoiList:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/map/MapDragListener;->mLastOnMapStableLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 92
    sput-boolean v2, Lcom/didi/map/MapDragListener;->isLastAdsorb:Z

    .line 155
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/didi/map/MapDragListener;->mLastRequestTimeMill:J

    .line 248
    sput-boolean v2, Lcom/didi/map/MapDragListener;->hashShowConfirmDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/map/MapDragListener;->isMoving:Z

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 39
    sget-wide v0, Lcom/didi/map/MapDragListener;->mLastRequestTimeMill:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/didi/map/MapDragListener;Lcom/didi/common/model/Address;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/didi/map/MapDragListener;->showDepartureInfoWindow(Lcom/didi/common/model/Address;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/map/MapDragListener;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/didi/map/MapDragListener;->showConfirmDialog(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized addAll(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    const-class v1, Lcom/didi/map/MapDragListener;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/map/MapDragListener;->mSubPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v1

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized clearAll()V
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcom/didi/map/MapDragListener;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/didi/map/MapDragListener;->mSubPoiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v1

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSubPoiList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/common/model/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const-class v0, Lcom/didi/map/MapDragListener;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/didi/map/MapDragListener;->mSubPoiList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private showConfirmDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isFlierRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isTaxiRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isCarRealtimeFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    sget-boolean v0, Lcom/didi/map/MapDragListener;->hashShowConfirmDialog:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/map/MapDragListener;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/map/MapDragListener;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/map/MapDragListener;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 257
    iget-object v0, p0, Lcom/didi/map/MapDragListener;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0288

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/didi/map/MapDragListener;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 259
    iget-object v0, p0, Lcom/didi/map/MapDragListener;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 260
    iget-object v0, p0, Lcom/didi/map/MapDragListener;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setCanceledOnTouchOutside(Z)V

    .line 261
    iget-object v0, p0, Lcom/didi/map/MapDragListener;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/didi/map/MapDragListener;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b021e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/didi/map/MapDragListener;->dialog:Lcom/didi/common/helper/DialogHelper;

    new-instance v1, Lcom/didi/map/MapDragListener$3;

    invoke-direct {v1, p0}, Lcom/didi/map/MapDragListener$3;-><init>(Lcom/didi/map/MapDragListener;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 299
    iget-object v0, p0, Lcom/didi/map/MapDragListener;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setCloseDialogVisiblity(Z)V

    .line 300
    iget-object v0, p0, Lcom/didi/map/MapDragListener;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 301
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/map/MapDragListener;->hashShowConfirmDialog:Z

    goto :goto_0
.end method

.method private showDepartureInfoWindow(Lcom/didi/common/model/Address;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 240
    invoke-static {p1}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 241
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 242
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateDepartMarker()V

    .line 245
    return-void
.end method


# virtual methods
.method protected adsorb()V
    .locals 22

    .prologue
    .line 94
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getCameraPosition()Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;

    move-result-object v16

    move-object/from16 v0, v16

    iget v15, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/CameraPosition;->zoom:F

    .line 95
    .local v15, zoom:F
    const/high16 v16, 0x4188

    cmpg-float v16, v15, v16

    if-gez v16, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getMapView()Lcom/tencent/tencentmap/mapsdk/maps/MapView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/MapView;->getWidth()I

    move-result v16

    div-int/lit8 v3, v16, 0x2

    .line 99
    .local v3, centX:I
    invoke-static {}, Lcom/didi/map/marker/DepartureMarker;->getDepartCenterY()I

    move-result v4

    .line 101
    .local v4, centY:I
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getProjection()Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    move-result-object v16

    new-instance v17, Landroid/graphics/Point;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {v16 .. v17}, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v11

    .line 102
    .local v11, latLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {}, Lcom/didi/map/MapDragListener;->getSubPoiList()Ljava/util/ArrayList;

    move-result-object v12

    .line 103
    .local v12, listAddresses:Ljava/util/List;,"Ljava/util/List<Lcom/didi/common/model/Address;>;"
    const-string v16, "maplistener"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\u4e8c\u7ea7poi\u4e2a\u6570:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/didi/common/model/Address;

    .line 107
    .local v2, address:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getProjection()Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    move-result-object v16

    invoke-virtual {v2}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->toScreenLocation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v9

    .line 108
    .local v9, fromAddress:Landroid/graphics/Point;
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->getProjection()Lcom/tencent/tencentmap/mapsdk/maps/Projection;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/tencent/tencentmap/mapsdk/maps/Projection;->toScreenLocation(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v14

    .line 109
    .local v14, toAddress:Landroid/graphics/Point;
    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    iget v0, v14, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 110
    .local v6, dW:I
    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    iget v0, v14, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 111
    .local v5, dH:I
    int-to-double v0, v6

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    int-to-double v0, v5

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 113
    .local v7, distance:D
    const-string v16, "maplistener"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\u5438\u9644\u8ddd\u79bb:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  dis/width:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v7, v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " zoom:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v7, v16

    const-wide v18, 0x3fa70a3d70a3d70aL

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_2

    .line 118
    new-instance v13, Lcom/didi/common/model/Address;

    invoke-direct {v13}, Lcom/didi/common/model/Address;-><init>()V

    .line 119
    .local v13, mAddress:Lcom/didi/common/model/Address;
    iget-object v0, v2, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/didi/common/model/Address;->address:Ljava/lang/String;

    .line 120
    iget-object v0, v2, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 121
    iget-object v0, v2, Lcom/didi/common/model/Address;->hotName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 122
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v13, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v2, Lcom/didi/common/model/Address;->hotName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/didi/common/model/Address;->displayName:Ljava/lang/String;

    .line 124
    :cond_3
    iget-object v0, v2, Lcom/didi/common/model/Address;->hotName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/didi/common/model/Address;->hotName:Ljava/lang/String;

    .line 125
    iget-object v0, v2, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    .line 126
    iget v0, v2, Lcom/didi/common/model/Address;->cotype:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v13, Lcom/didi/common/model/Address;->cotype:I

    .line 128
    const-string v16, "cf_first_other"

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    .line 129
    iget-object v0, v2, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    .line 130
    iget-object v0, v2, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    .line 131
    iget-object v0, v2, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v13, Lcom/didi/common/model/Address;->cityId:Ljava/lang/String;

    .line 133
    invoke-static {v13}, Lcom/didi/frame/departure/DepartureHelper;->setDepart(Lcom/didi/common/model/Address;)V

    .line 135
    new-instance v16, Lcom/didi/map/MapDragListener$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/didi/map/MapDragListener$1;-><init>(Lcom/didi/map/MapDragListener;)V

    const-wide/16 v17, 0x96

    invoke-static/range {v16 .. v18}, Lcom/didi/common/handler/UiThreadHandler;->postOnceDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    iget-object v0, v2, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    iget-object v0, v2, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 143
    const/16 v16, 0x1

    sput-boolean v16, Lcom/didi/map/MapDragListener;->isLastAdsorb:Z

    goto/16 :goto_0

    .line 147
    .end local v2           #address:Lcom/didi/common/model/Address;
    .end local v5           #dH:I
    .end local v6           #dW:I
    .end local v7           #distance:D
    .end local v9           #fromAddress:Landroid/graphics/Point;
    .end local v13           #mAddress:Lcom/didi/common/model/Address;
    .end local v14           #toAddress:Landroid/graphics/Point;
    :cond_4
    sget-boolean v16, Lcom/didi/map/MapDragListener;->isLastAdsorb:Z

    if-eqz v16, :cond_0

    .line 148
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 149
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v16

    const-string v17, "chongxin"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/didi/common/model/Address;->srctag:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected getSubHotPoi()V
    .locals 10

    .prologue
    .line 157
    invoke-static {}, Lcom/didi/map/marker/DepartureMarker;->getDepartCenterLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v7

    .line 158
    .local v7, mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    const-string v0, "faban"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mapdrag lat :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v7, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lng:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v7, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setLastLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 160
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/didi/common/model/Address;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 162
    invoke-static {}, Lcom/didi/frame/MapFragment;->getFirstLoadState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/didi/map/MapDragListener;->isMoved:Z

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/didi/map/MapDragListener;->mLastRequestTimeMill:J

    .line 168
    sget-wide v0, Lcom/didi/map/MapDragListener;->mLastRequestTimeMill:J

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLatitudeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentLongitudeString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v7, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v7, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/didi/map/MapDragListener$2;

    invoke-direct {v6, p0, v7}, Lcom/didi/map/MapDragListener$2;-><init>(Lcom/didi/map/MapDragListener;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    invoke-static/range {v0 .. v6}, Lcom/didi/common/net/CommonRequest;->getHotSubPoi(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method public onMapStable()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 50
    const-string v0, "maplistener"

    const-string v1, "onmapstable\u89e6\u53d1 \u4e86"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/didi/map/marker/DepartureMarker;->getDepartCenterLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v10

    .line 52
    .local v10, mLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    sget-object v0, Lcom/didi/map/MapDragListener;->mLastOnMapStableLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "maplistener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/didi/map/MapDragListener;->mLastOnMapStableLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/didi/map/MapDragListener;->mLastOnMapStableLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "current :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v10, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3000\u3000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v10, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-wide v0, v10, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iget-wide v2, v10, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    sget-object v4, Lcom/didi/map/MapDragListener;->mLastOnMapStableLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    sget-object v6, Lcom/didi/map/MapDragListener;->mLastOnMapStableLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-wide v6, v6, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v7}, Lcom/didi/common/util/Utils;->distance(DDDD)D

    move-result-wide v8

    .line 58
    .local v8, distance:D
    const-wide/high16 v0, 0x4024

    cmpg-double v0, v8, v0

    if-gez v0, :cond_0

    move v0, v11

    .line 67
    .end local v8           #distance:D
    :goto_0
    return v0

    .line 62
    :cond_0
    sput-object v10, Lcom/didi/map/MapDragListener;->mLastOnMapStableLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    .line 63
    sget-boolean v0, Lcom/didi/map/MapDragListener;->isLastAdsorb:Z

    if-eqz v0, :cond_1

    .line 64
    sput-boolean v11, Lcom/didi/map/MapDragListener;->isLastAdsorb:Z

    move v0, v11

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onMapTouchEvent(I)V
    .locals 2
    .parameter "action"

    .prologue
    .line 85
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    if-nez p1, :cond_0

    .line 87
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setIsFirstLoadDepartNoticatoin(Z)V

    .line 88
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->hideDepartFirstGuid()V

    goto :goto_0
.end method
