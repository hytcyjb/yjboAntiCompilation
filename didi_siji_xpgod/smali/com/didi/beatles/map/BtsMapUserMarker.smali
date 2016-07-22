.class public Lcom/didi/beatles/map/BtsMapUserMarker;
.super Lcom/didi/map/marker/BaseMarker;
.source "BtsMapUserMarker.java"


# instance fields
.field private adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

.field private bitmap:Landroid/graphics/Bitmap;

.field private compListener:Lcom/didi/map/CompassManager$CompassListener;

.field private infoAnimationlistener:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/didi/map/marker/BaseMarker;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->bitmap:Landroid/graphics/Bitmap;

    .line 221
    new-instance v0, Lcom/didi/beatles/map/BtsMapUserMarker$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/map/BtsMapUserMarker$2;-><init>(Lcom/didi/beatles/map/BtsMapUserMarker;)V

    iput-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->infoAnimationlistener:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    .line 265
    new-instance v0, Lcom/didi/beatles/map/BtsMapUserMarker$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/map/BtsMapUserMarker$3;-><init>(Lcom/didi/beatles/map/BtsMapUserMarker;)V

    iput-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->compListener:Lcom/didi/map/CompassManager$CompassListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/beatles/map/BtsMapUserMarker;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/beatles/map/BtsMapUserMarker;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/didi/beatles/map/BtsMapUserMarker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/beatles/map/BtsMapUserMarker;)Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/beatles/map/BtsMapUserMarker;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/beatles/map/BtsMapUserMarker;)Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    return-object v0
.end method

.method private isLogin()Z
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->startActivity(Landroid/app/Activity;)V

    .line 217
    const/4 v0, 0x0

    .line 219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public jumpToWeb(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 247
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 248
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    iput-object p1, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getPsngrId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 252
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/didi/frame/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 253
    return-void
.end method

.method public onInfoWindowClickLocation(IIII)V
    .locals 10
    .parameter "width"
    .parameter "height"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 149
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/didi/map/marker/BaseMarker;->onInfoWindowClickLocation(IIII)V

    .line 153
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserRoleType()I

    move-result v2

    .line 154
    .local v2, role:I
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v1

    .line 155
    .local v1, info:Lcom/didi/beatles/model/role/BtsRoleInfo;
    int-to-float v4, p3

    int-to-float v5, p1

    div-float v3, v4, v5

    .line 156
    .local v3, wp:F
    int-to-float v4, p4

    int-to-float v5, p2

    div-float v0, v4, v5

    .line 157
    .local v0, hp:F
    const/high16 v4, 0x3f00

    cmpl-float v4, v0, v4

    if-lez v4, :cond_5

    .line 159
    invoke-direct {p0}, Lcom/didi/beatles/map/BtsMapUserMarker;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    if-nez v2, :cond_3

    .line 164
    iget-object v4, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    invoke-virtual {v4}, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->isShowOp()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v4

    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getPassangerInfo()Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

    move-result-object v5

    iget-object v5, v5, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->opversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setPassengerOpVersion(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getPassangerInfo()Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->op_url:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/didi/beatles/map/BtsMapUserMarker;->jumpToWeb(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_2
    const-string v4, "pbpxhome04_ck"

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/beatles/business/order/BtsPassengerPendingOrderActivity;->startActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v4, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    invoke-virtual {v4}, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->isShowOp()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 175
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v4

    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getDriverInfo()Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

    move-result-object v5

    iget-object v5, v5, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->opversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setDriverOpVersion(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getDriverInfo()Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->op_url:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/didi/beatles/map/BtsMapUserMarker;->jumpToWeb(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_4
    const-string v4, "pbdxhome04_ck"

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v4

    sget-object v5, Lcom/didi/beatles/business/order/BtsTabIndex;->PENGING_ORDER:Lcom/didi/beatles/business/order/BtsTabIndex;

    invoke-static {v4, v5}, Lcom/didi/beatles/business/order/BtsDriverOrderManagerActivity;->startActivity(Landroid/app/Activity;Lcom/didi/beatles/business/order/BtsTabIndex;)V

    goto/16 :goto_0

    .line 184
    :cond_5
    float-to-double v4, v3

    const-wide v6, 0x3fe51eb851eb851fL

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    .line 185
    if-nez v2, :cond_6

    .line 186
    const-string v4, "pbpxhome03_ck"

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    invoke-static {v9}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->changeRole(I)V

    .line 188
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setUserRoleType(I)V

    .line 189
    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLat()D

    move-result-wide v4

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLng()D

    move-result-wide v6

    invoke-static {v8, v4, v5, v6, v7}, Lcom/didi/beatles/map/BtsDriversHelper;->showBtsArroundPasngers(ZDD)V

    .line 190
    iget-object v4, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->infoAnimationlistener:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    invoke-static {v4, v9}, Lcom/didi/map/MapInfoWindowAnimation;->addInfoWindowAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;Z)V

    goto/16 :goto_0

    .line 192
    :cond_6
    const-string v4, "pbdxhome03_ck"

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 193
    invoke-static {v8}, Lcom/didi/beatles/ui/fragment/view/BtsBottomBarHelper;->changeRole(I)V

    .line 194
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setUserRoleType(I)V

    .line 195
    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLat()D

    move-result-wide v4

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLng()D

    move-result-wide v6

    invoke-static {v8, v4, v5, v6, v7}, Lcom/didi/beatles/map/BtsDriversHelper;->showBtsArroundDrivers(ZDD)V

    .line 196
    iget-object v4, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->infoAnimationlistener:Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;

    invoke-static {v4, v8}, Lcom/didi/map/MapInfoWindowAnimation;->addInfoWindowAnimation(Lcom/tencent/tencentmap/mapsdk/maps/model/AnimationListener;Z)V

    goto/16 :goto_0

    .line 200
    :cond_7
    invoke-direct {p0}, Lcom/didi/beatles/map/BtsMapUserMarker;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    if-nez v2, :cond_8

    .line 204
    const-string v4, "pbpxmyhome01_sw"

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 208
    :goto_1
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->MAP:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    invoke-virtual {v4, v5}, Lcom/didi/frame/FragmentMgr;->showUserInfoFragment(Lcom/didi/frame/FragmentMgr$UserInfoFrom;)V

    goto/16 :goto_0

    .line 206
    :cond_8
    const-string v4, "pbdxmyhome01_sw"

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->remove()V

    .line 259
    :try_start_0
    invoke-static {}, Lcom/didi/map/MapInfoWindowAnimation;->clearInfoWindowAnimation()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    invoke-static {}, Lcom/didi/map/MapController;->stopCompass()V

    .line 264
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMarker(DD)V
    .locals 7
    .parameter "lat"
    .parameter "lng"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x3f00

    const-wide/16 v3, 0x0

    .line 53
    cmpl-double v0, p1, v3

    if-eqz v0, :cond_0

    cmpl-double v0, p3, v3

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h,m="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;-><init>()V

    const-string v3, "my location"

    invoke-virtual {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    new-instance v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->position(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v0

    const v3, 0x7f0201c3

    invoke-static {v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;->icon(Lcom/tencent/tencentmap/mapsdk/maps/model/BitmapDescriptor;)Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;

    move-result-object v1

    .line 61
    .local v1, options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    const/4 v3, 0x0

    move-object v0, p0

    move v4, v2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/didi/beatles/map/BtsMapUserMarker;->show(Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;IFZFF)V

    .line 62
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->compListener:Lcom/didi/map/CompassManager$CompassListener;

    invoke-static {v0}, Lcom/didi/map/MapController;->startCompass(Lcom/didi/map/CompassManager$CompassListener;)V

    .line 67
    .end local v1           #options:Lcom/tencent/tencentmap/mapsdk/maps/model/MarkerOptions;
    :goto_1
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setInfoWindowEnable(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/didi/beatles/map/BtsMapUserMarker;->showInfoWindow()V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/beatles/map/BtsMapUserMarker;->updatePositoin(DD)V

    goto :goto_1
.end method

.method public setMarker(DDI)V
    .locals 0
    .parameter "lat"
    .parameter "lng"
    .parameter "draw"

    .prologue
    .line 76
    return-void
.end method

.method protected showInfoWindow()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    invoke-direct {v0}, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    .line 122
    :cond_0
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {}, Lcom/didi/map/MapController;->getMap()Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/TencentMap;->setInfoWindowAdapter(Lcom/tencent/tencentmap/mapsdk/maps/TencentMap$InfoWindowAdapter;)V

    .line 125
    invoke-super {p0}, Lcom/didi/map/marker/BaseMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public updateMarker()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/beatles/locate/BtsLocateHelper;->getLng()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/didi/beatles/map/BtsMapUserMarker;->setMarker(DD)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->marker:Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;->setInfoWindowEnable(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/didi/beatles/map/BtsMapUserMarker;->showInfoWindow()V

    goto :goto_0
.end method

.method public updateMarkerPostion(DD)V
    .locals 0
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 135
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/beatles/map/BtsMapUserMarker;->updatePositoin(DD)V

    .line 136
    return-void
.end method

.method public updateUserPhoto(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->mUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Lutil/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    iget-object v1, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/didi/beatles/map/BtsMapUserMarker;->showInfoWindow()V

    .line 116
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->bitmap:Landroid/graphics/Bitmap;

    .line 92
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->adapter:Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;

    iget-object v1, p0, Lcom/didi/beatles/map/BtsMapUserMarker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/didi/beatles/map/BtsMapUserMarker;->showInfoWindow()V

    goto :goto_0

    .line 99
    :cond_3
    new-instance v0, Lcom/didi/beatles/map/BtsMapUserMarker$1;

    invoke-direct {v0, p0, p1}, Lcom/didi/beatles/map/BtsMapUserMarker$1;-><init>(Lcom/didi/beatles/map/BtsMapUserMarker;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    goto :goto_0
.end method
