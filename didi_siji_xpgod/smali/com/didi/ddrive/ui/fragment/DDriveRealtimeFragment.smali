.class public Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "DDriveRealtimeFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DDriveRealtimeFragment"


# instance fields
.field private changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

.field private cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

.field private driveGuideLayout:Landroid/widget/RelativeLayout;

.field private glistener:Landroid/view/View$OnClickListener;

.field private guide:Landroid/widget/ImageView;

.field private listener:Lcom/didi/ddrive/listener/DDriveRealtimeListener;

.field private mBar:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

.field private mMapDragListener:Lcom/didi/map/MapDragListener;

.field private mShowWarmUp:Z

.field private mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

.field private mView:Lcom/didi/ddrive/ui/component/DDriveRealtimeView;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mShowWarmUp:Z

    .line 116
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$1;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->glistener:Landroid/view/View$OnClickListener;

    .line 221
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$4;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mMapDragListener:Lcom/didi/map/MapDragListener;

    .line 270
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$5;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 330
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$6;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 355
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$8;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    .line 374
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$9;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->listener:Lcom/didi/ddrive/listener/DDriveRealtimeListener;

    .line 497
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$10;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)Lcom/didi/ddrive/ui/component/DDriveRealtimeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveRealtimeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)Lcom/didi/soso/location/view/LocationView$ChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    return-object v0
.end method

.method private checkIMUnread()V
    .locals 1

    .prologue
    .line 199
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getIMUnreadFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$3;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 207
    :cond_0
    return-void
.end method

.method private getDDriveDrivers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 283
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 285
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(DD)V

    .line 287
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-eq v0, v1, :cond_1

    .line 288
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 289
    :cond_1
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/didi/common/helper/DriversHelper;->showDDriveDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_2
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/didi/common/helper/DriversHelper;->showDDriveDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private initDeparture()V
    .locals 4

    .prologue
    .line 210
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setLastLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 214
    :cond_0
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 216
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->setDepartMarker(DD)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mMapDragListener:Lcom/didi/map/MapDragListener;

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setDepartMarkerDragListener(Lcom/didi/map/IMapDragListener;)V

    .line 219
    return-void
.end method

.method private initWarmupBottomBar()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveRealtimeView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;->getBottomView()Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mBar:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    .line 149
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->setBottomData()V

    .line 150
    return-void
.end method

.method private isValidCity()Z
    .locals 2

    .prologue
    .line 449
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, currentCity:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const/4 v1, 0x0

    .line 453
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onTargetAddressSelected()V
    .locals 2

    .prologue
    .line 491
    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->checkBusiness(Lcom/didi/frame/business/Business;)V

    .line 492
    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    .line 493
    .local v0, ddriveOrder:Lcom/didi/ddrive/model/DDriveOrder;
    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/model/DDriveOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 494
    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->onText(Lcom/didi/ddrive/model/DDriveOrder;)V

    .line 495
    return-void
.end method

.method private onText(Lcom/didi/ddrive/model/DDriveOrder;)V
    .locals 1
    .parameter "ddriveOrder"

    .prologue
    .line 386
    sget-object v0, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {p1, v0}, Lcom/didi/ddrive/model/DDriveOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 387
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/didi/ddrive/model/DDriveOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 388
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->redirect(Lcom/didi/ddrive/model/DDriveOrder;)V

    .line 389
    return-void
.end method

.method private redirect(Lcom/didi/ddrive/model/DDriveOrder;)V
    .locals 2
    .parameter "ddriveOrder"

    .prologue
    .line 392
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 394
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 407
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    .line 408
    return-void

    .line 396
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 397
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 399
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isOnlyUpdateName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setType(I)V

    goto :goto_0

    .line 403
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setType(I)V

    goto :goto_0
.end method

.method private redirectToSearch()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 467
    const-string v1, "pdjxhome_04_ck"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 468
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "search_extra_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 470
    const-string v1, "search_extra_order_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v4}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 472
    return-void
.end method

.method private setBottomData()V
    .locals 6

    .prologue
    .line 156
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v2

    .line 157
    .local v2, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    invoke-virtual {v2}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getWarmupConfigString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, configStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    :goto_0
    return-void

    .line 161
    :cond_0
    const-class v5, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;

    invoke-static {v1, v5}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;

    .line 163
    .local v0, config:Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;
    iget-object v3, v0, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;->imgUrl:Ljava/lang/String;

    .line 164
    .local v3, imgUrl:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->setGuidePic(Ljava/lang/String;)V

    .line 165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;>;"
    iget-object v5, v0, Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$WarmUpConfig;->buttons:[Lcom/didi/ddrive/net/http/response/DriveSupportcityResponse$Button;

    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 167
    iget-object v5, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mBar:Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    invoke-virtual {v5, v4}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->setBottomContent(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setGuidePic(Ljava/lang/String;)V
    .locals 3
    .parameter "imgUrl"

    .prologue
    const v2, 0x7f02019a

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->guide:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/didi/ddrive/imageloader/DDriveImageLoader;->getDownloadedBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 176
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->guide:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->guide:Landroid/widget/ImageView;

    invoke-static {p1, v1, v2}, Lcom/didi/ddrive/imageloader/DDriveImageLoader;->displayImageView(Ljava/lang/String;Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method private showInvalidServiceDialog()V
    .locals 3

    .prologue
    .line 457
    const v2, 0x7f0b0251

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, tip:Ljava/lang/String;
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 459
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 461
    return-void
.end method

.method private showPopoupAnnouncement(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 346
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$7;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;Landroid/view/View;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    return-void
.end method


# virtual methods
.method public doInBack()V
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mShowWarmUp:Z

    if-nez v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->getDDriveDrivers()V

    .line 328
    :cond_0
    return-void
.end method

.method protected jumpToSearch()V
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/didi/common/helper/SoundHelper;->playClick()V

    .line 432
    invoke-static {}, Lcom/didi/common/util/Utils;->isLocated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    const v0, 0x7f0b03e6

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 441
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->isValidCity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->showInvalidServiceDialog()V

    goto :goto_0

    .line 440
    :cond_1
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->redirectToSearch()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 476
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 477
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 480
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 482
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->onTargetAddressSelected()V

    goto :goto_0

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Lcom/didi/ddrive/managers/VoucherManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/VoucherManager;-><init>()V

    .line 91
    .local v0, voucherManager:Lcom/didi/ddrive/managers/VoucherManager;
    invoke-virtual {v0}, Lcom/didi/ddrive/managers/VoucherManager;->getVoucherFromEntrance()V

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    .line 97
    .local v0, drivePreference:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getBizSwitch()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getWarmUpSwitch()I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mShowWarmUp:Z

    .line 101
    :cond_0
    new-instance v1, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveRealtimeView;

    .line 102
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveRealtimeView;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;->getBottomView()Lcom/didi/ddrive/ui/component/DDriveBottomBar;

    move-result-object v1

    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->listener:Lcom/didi/ddrive/listener/DDriveRealtimeListener;

    invoke-virtual {v1, v3}, Lcom/didi/ddrive/ui/component/DDriveBottomBar;->setDDriveRealtimeListener(Lcom/didi/ddrive/listener/DDriveRealtimeListener;)V

    .line 103
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 104
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 105
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->setCurrentCity()V

    .line 106
    iget-boolean v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mShowWarmUp:Z

    if-nez v1, :cond_1

    .line 107
    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/switcher/SwitcherHelper;->checkSwitcher(Lcom/didi/frame/business/Business;)V

    .line 109
    :cond_1
    const-string v1, "pdjxhome_00_ck"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveRealtimeView;

    return-object v1

    :cond_2
    move v1, v2

    .line 98
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 366
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 367
    invoke-static {}, Lcom/didi/map/MapController;->hideMapLogo()V

    .line 368
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->removeChangeListener()V

    .line 369
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->hideLocation()V

    .line 370
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 371
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 372
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 420
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 421
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->showMenu()V

    .line 422
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 186
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment$2;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 192
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    .line 193
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 298
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 301
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mShowWarmUp:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveRealtimeView;

    const v1, 0x7f08035c

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->guide:Landroid/widget/ImageView;

    .line 303
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->guide:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->glistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveRealtimeView;

    const v1, 0x7f08035b

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveRealtimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->driveGuideLayout:Landroid/widget/RelativeLayout;

    .line 306
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->driveGuideLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->driveGuideLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->glistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->initWarmupBottomBar()V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveRealtimeView;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 312
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setViewMargin(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 314
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 315
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 316
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->initDeparture()V

    .line 317
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->checkIMUnread()V

    .line 318
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->setUserLogo()V

    .line 319
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;->showPopoupAnnouncement(Landroid/view/View;)V

    .line 321
    return-void
.end method
