.class public abstract Lcom/didi/map/marker/BaseMarker;
.super Ljava/lang/Object;
.source "BaseMarker.java"

# interfaces
.implements Lcom/didi/map/listener/MarkerListener;


# static fields
.field public static final MARKER_ICON_ACTIVITY_DRIVER:I = 0x5

.field public static final MARKER_ICON_CAR_DRIVER:I = 0x3

.field public static final MARKER_ICON_CAR_DRIVER_LIGHT:I = 0x4

.field public static final MARKER_ICON_DDRIVE_DDRIVER:I = 0x8

.field public static final MARKER_ICON_DDRIVE_DDRIVER_LIGHT:I = 0x9

.field public static final MARKER_ICON_DDRIVE_DDRIVER_WAIT:I = 0xa

.field public static final MARKER_ICON_FLIER_DRIVER:I = 0x6

.field public static final MARKER_ICON_FLIER_DRIVER_LIGHT:I = 0x7

.field public static final MARKER_ICON_TAXI_DRIVER:I = 0x1

.field public static final MARKER_ICON_TAXI_DRIVER_LIGHT:I = 0x2


# instance fields
.field private frequency:I

.field private isMoveAnimationEnable:Z

.field private isShowAppearAnimation:Z

.field private mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

.field protected marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

.field private removeListener:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/map/marker/BaseMarker;->isMoveAnimationEnable:Z

    .line 39
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getSmoothHomeFreguency()I

    move-result v0

    iput v0, p0, Lcom/didi/map/marker/BaseMarker;->frequency:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/map/marker/BaseMarker;->isShowAppearAnimation:Z

    .line 274
    new-instance v0, Lcom/didi/map/marker/BaseMarker$1;

    invoke-direct {v0, p0}, Lcom/didi/map/marker/BaseMarker$1;-><init>(Lcom/didi/map/marker/BaseMarker;)V

    iput-object v0, p0, Lcom/didi/map/marker/BaseMarker;->removeListener:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    return-void
.end method

.method private disappearAnimation()V
    .locals 3

    .prologue
    .line 290
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;-><init>(FF)V

    .line 291
    .local v0, animation:Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;
    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/AlphaAnimation;->setDuration(I)V

    .line 292
    iget-object v1, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    .line 293
    iget-object v1, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    iget-object v2, p0, Lcom/didi/map/marker/BaseMarker;->removeListener:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    invoke-virtual {v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setAnimationListener(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;)V

    .line 294
    iget-object v1, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->startAnimation()Z

    .line 295
    return-void
.end method

.method private static scaleBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 344
    const/high16 v9, 0x3f80

    .line 345
    .local v9, scale:F
    invoke-static {}, Lcom/didi/common/util/WindowUtil;->getWindowHeight()I

    move-result v7

    .line 346
    .local v7, height:I
    const/16 v0, 0x834

    if-le v7, v0, :cond_0

    .line 347
    const v9, 0x400ccccd

    .line 355
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 356
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 357
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 359
    .local v8, resizeBmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 360
    const/4 p0, 0x0

    .line 361
    return-object v8

    .line 348
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v8           #resizeBmp:Landroid/graphics/Bitmap;
    :cond_0
    const/16 v0, 0x5dc

    if-le v7, v0, :cond_1

    .line 349
    const v9, 0x3fd33333

    goto :goto_0

    .line 350
    :cond_1
    const/16 v0, 0x3e8

    if-le v7, v0, :cond_2

    .line 351
    const v9, 0x3f933333

    goto :goto_0

    .line 353
    :cond_2
    const v9, 0x3f4ccccd

    goto :goto_0
.end method


# virtual methods
.method protected addListener()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, v1, p0}, Lcom/didi/map/listener/MapListener;->addMarkerListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;Lcom/didi/map/listener/MarkerListener;)V

    goto :goto_0
.end method

.method protected appearAnimation(FZ)V
    .locals 6
    .parameter "bearing"
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 267
    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/didi/map/marker/BaseMarker;->isShowAppearAnimation:Z

    if-eqz v1, :cond_0

    .line 268
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;

    const/high16 v1, 0x4334

    sub-float v1, p1, v1

    const/high16 v5, -0x4080

    move v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;-><init>(FFFFF)V

    .line 269
    .local v0, rotateAnimation:Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;
    iget-object v1, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/Animation;)V

    .line 270
    iget-object v1, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->startAnimation()Z

    .line 272
    .end local v0           #rotateAnimation:Lcom/tencent/tencentmap/mapsdk/maps/model/RotateAnimation;
    :cond_0
    return-void
.end method

.method protected getmMarker()Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    return-object v0
.end method

.method protected initSpecialMarkerIcon(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    .locals 12
    .parameter "type"

    .prologue
    const/4 v10, 0x0

    const v11, 0x7f020187

    .line 298
    packed-switch p1, :pswitch_data_0

    .line 340
    :cond_0
    :goto_0
    return-object v10

    .line 300
    :pswitch_0
    invoke-static {}, Lcom/didi/common/helper/IconHelper;->getTaxiMapIconPath()Ljava/lang/String;

    move-result-object v8

    .line 301
    .local v8, t:Ljava/lang/String;
    invoke-static {v8}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 302
    invoke-static {v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromPath(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v10

    goto :goto_0

    .line 305
    .end local v8           #t:Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/didi/common/helper/IconHelper;->getTaxiMapLightIconPath()Ljava/lang/String;

    move-result-object v9

    .line 306
    .local v9, tl:Ljava/lang/String;
    invoke-static {v9}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 307
    invoke-static {v9}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromPath(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v10

    goto :goto_0

    .line 310
    .end local v9           #tl:Ljava/lang/String;
    :pswitch_2
    invoke-static {}, Lcom/didi/common/helper/IconHelper;->getCarMapIconPath()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, c:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 312
    invoke-static {v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromPath(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v10

    goto :goto_0

    .line 315
    .end local v1           #c:Ljava/lang/String;
    :pswitch_3
    invoke-static {}, Lcom/didi/common/helper/IconHelper;->getCarMapLightIconPath()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, cl:Ljava/lang/String;
    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 317
    invoke-static {v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromPath(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v10

    goto :goto_0

    .line 320
    .end local v2           #cl:Ljava/lang/String;
    :pswitch_4
    invoke-static {}, Lcom/didi/activity/ActivityIconHelper;->getActivityMapIconPath()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, a:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 322
    invoke-static {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromPath(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v10

    goto :goto_0

    .line 325
    .end local v0           #a:Ljava/lang/String;
    :pswitch_5
    invoke-static {v10}, Lcom/didi/flier/business/FlierIconHelper;->getFlierMapIcon(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 326
    .local v6, flierDriver:Landroid/graphics/Bitmap;
    if-nez v6, :cond_1

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0201ae

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_1
    invoke-static {v10}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v10

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lcom/didi/map/marker/BaseMarker;->scaleBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_1

    .line 328
    .end local v6           #flierDriver:Landroid/graphics/Bitmap;
    :pswitch_6
    invoke-static {v10}, Lcom/didi/flier/business/FlierIconHelper;->getFlierMapLightIcon(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 329
    .local v7, flierDriverLight:Landroid/graphics/Bitmap;
    if-nez v7, :cond_2

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0201af

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_2
    invoke-static {v10}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v10

    goto/16 :goto_0

    :cond_2
    invoke-static {v7}, Lcom/didi/map/marker/BaseMarker;->scaleBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_2

    .line 331
    .end local v7           #flierDriverLight:Landroid/graphics/Bitmap;
    :pswitch_7
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 332
    .local v3, ddriveDriver:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v10

    goto/16 :goto_0

    .line 334
    .end local v3           #ddriveDriver:Landroid/graphics/Bitmap;
    :pswitch_8
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 335
    .local v4, ddriveDriverLight:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v10

    goto/16 :goto_0

    .line 337
    .end local v4           #ddriveDriverLight:Landroid/graphics/Bitmap;
    :pswitch_9
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/common/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 338
    .local v5, ddriveDriverWait:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v10

    goto/16 :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public isRemove()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfoWindowClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 162
    return-void
.end method

.method public onInfoWindowClickLocation(IIII)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 168
    return-void
.end method

.method public onMapClick(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 178
    return-void
.end method

.method public onMapStable()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public onMapTouchEvent(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 372
    return-void
.end method

.method public onMarkerClick(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public onMarkerDrag(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 150
    return-void
.end method

.method public onMarkerDragEnd(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 154
    return-void
.end method

.method public onMarkerDragStart(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 158
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/didi/map/marker/BaseMarker;->removeListener()V

    .line 245
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->remove()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    goto :goto_0
.end method

.method protected removeListener()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/didi/map/listener/MapListener;->removeMarkerListener(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0
.end method

.method public removeWithAnimation()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/didi/map/marker/BaseMarker;->removeListener()V

    .line 254
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;->disappearAnimation()V

    goto :goto_0
.end method

.method public setFrequency(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 86
    iput p1, p0, Lcom/didi/map/marker/BaseMarker;->frequency:I

    .line 87
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/didi/car/helper/CarMoveAnimationHelper;->setFrequency(I)V

    .line 90
    :cond_0
    return-void
.end method

.method public abstract setMarker(DD)V
.end method

.method public setMarker(DDF)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "bearing"

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/BaseMarker;->setMarker(DD)V

    .line 69
    return-void
.end method

.method public setMarker(DDFZ)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "bearing"
    .parameter "isShowAppearAnimation"

    .prologue
    .line 63
    iput-boolean p6, p0, Lcom/didi/map/marker/BaseMarker;->isShowAppearAnimation:Z

    .line 64
    invoke-virtual/range {p0 .. p5}, Lcom/didi/map/marker/BaseMarker;->setMarker(DDF)V

    .line 65
    return-void
.end method

.method public abstract setMarker(DDI)V
.end method

.method public setmMoveAnimationEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 72
    iget v0, p0, Lcom/didi/map/marker/BaseMarker;->frequency:I

    invoke-virtual {p0, p1, v0}, Lcom/didi/map/marker/BaseMarker;->setmMoveAnimationEnable(ZI)V

    .line 73
    return-void
.end method

.method public setmMoveAnimationEnable(ZI)V
    .locals 1
    .parameter "enable"
    .parameter "frequency"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/didi/map/marker/BaseMarker;->isMoveAnimationEnable:Z

    .line 77
    iput p2, p0, Lcom/didi/map/marker/BaseMarker;->frequency:I

    .line 78
    iget-boolean v0, p0, Lcom/didi/map/marker/BaseMarker;->isMoveAnimationEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    invoke-virtual {v0, p2}, Lcom/didi/car/helper/CarMoveAnimationHelper;->setFrequency(I)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    goto :goto_0
.end method

.method protected show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;I)V
    .locals 7
    .parameter "options"
    .parameter "type"

    .prologue
    .line 206
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/didi/map/marker/BaseMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;IFZFF)V

    .line 207
    return-void
.end method

.method protected show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;IFF)V
    .locals 7
    .parameter "options"
    .parameter "type"
    .parameter "anchorX"
    .parameter "anchorY"

    .prologue
    .line 224
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/didi/map/marker/BaseMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;IFZFF)V

    .line 225
    return-void
.end method

.method protected show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;IFZ)V
    .locals 7
    .parameter "options"
    .parameter "type"
    .parameter "bearing"
    .parameter "animation"

    .prologue
    const/high16 v5, 0x3f00

    .line 181
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/didi/map/marker/BaseMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;IFZFF)V

    .line 182
    return-void
.end method

.method protected show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;IFZFF)V
    .locals 2
    .parameter "options"
    .parameter "type"
    .parameter "bearing"
    .parameter "animation"
    .parameter "anchorX"
    .parameter "anchorY"

    .prologue
    .line 185
    invoke-virtual {p1, p5, p6}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->anchor(FF)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 186
    invoke-virtual {p1, p3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->rotateAngle(F)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 187
    invoke-virtual {p0, p2}, Lcom/didi/map/marker/BaseMarker;->initSpecialMarkerIcon(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v0

    .line 188
    .local v0, bd:Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1, v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    .line 191
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 198
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->addMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 196
    invoke-virtual {p0, p3, p4}, Lcom/didi/map/marker/BaseMarker;->appearAnimation(FZ)V

    .line 197
    invoke-virtual {p0}, Lcom/didi/map/marker/BaseMarker;->addListener()V

    goto :goto_0
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->showInfoWindow()V

    .line 141
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/didi/map/listener/MapListener;->setCurrentMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    goto :goto_0
.end method

.method protected showWithoutAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)V
    .locals 1
    .parameter "options"

    .prologue
    .line 210
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->addMarker(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    .line 214
    invoke-virtual {p0}, Lcom/didi/map/marker/BaseMarker;->addListener()V

    goto :goto_0
.end method

.method public updatePositoin(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/BaseMarker;->setMarker(DD)V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public updatePositoin(DDI)V
    .locals 2
    .parameter "lat"
    .parameter "lng"
    .parameter "timestamp"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/BaseMarker;->setMarker(DD)V

    .line 134
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/didi/map/marker/BaseMarker;->isMoveAnimationEnable:Z

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    if-nez v0, :cond_2

    .line 129
    new-instance v0, Lcom/didi/car/helper/CarMoveAnimationHelper;

    iget-object v1, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-direct {v0, v1}, Lcom/didi/car/helper/CarMoveAnimationHelper;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    iput-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    .line 130
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    iget v1, p0, Lcom/didi/map/marker/BaseMarker;->frequency:I

    invoke-virtual {v0, v1}, Lcom/didi/car/helper/CarMoveAnimationHelper;->setFrequency(I)V

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1, p5}, Lcom/didi/car/helper/CarMoveAnimationHelper;->updatePosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;I)V

    goto :goto_0
.end method

.method public updatePositoinWithAnimation(DD)V
    .locals 2
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/BaseMarker;->setMarker(DD)V

    .line 116
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/didi/map/marker/BaseMarker;->isMoveAnimationEnable:Z

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setPosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    if-nez v0, :cond_2

    .line 112
    new-instance v0, Lcom/didi/car/helper/CarMoveAnimationHelper;

    iget-object v1, p0, Lcom/didi/map/marker/BaseMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    invoke-direct {v0, v1}, Lcom/didi/car/helper/CarMoveAnimationHelper;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)V

    iput-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    .line 113
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    iget v1, p0, Lcom/didi/map/marker/BaseMarker;->frequency:I

    invoke-virtual {v0, v1}, Lcom/didi/car/helper/CarMoveAnimationHelper;->setFrequency(I)V

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/didi/map/marker/BaseMarker;->mMoveAnimation:Lcom/didi/car/helper/CarMoveAnimationHelper;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/didi/car/helper/CarMoveAnimationHelper;->updatePosition(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    goto :goto_0
.end method
