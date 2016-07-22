.class public Lcom/didi/car/ui/fragment/CarRealtimeFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CarRealtimeFragment.java"


# instance fields
.field carAvailable:Z

.field private changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

.field private cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

.field private listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

.field private mCarAailableListener:Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;

.field private mMapDragListener:Lcom/didi/map/MapDragListener;

.field private mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

.field private mView:Lcom/didi/frame/realtime/RealTimeCallView;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 120
    new-instance v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment$2;-><init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mMapDragListener:Lcom/didi/map/MapDragListener;

    .line 163
    new-instance v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment$3;-><init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 212
    new-instance v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment$4;-><init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 242
    new-instance v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment$6;-><init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->carAvailable:Z

    .line 278
    new-instance v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment$7;-><init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mCarAailableListener:Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;

    .line 306
    new-instance v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment$8;-><init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    .line 450
    new-instance v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment$9;-><init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->setLocationView()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->checkCarAvailable()V

    return-void
.end method

.method private addCityListener()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 161
    return-void
.end method

.method private checkCarAvailable()V
    .locals 0

    .prologue
    .line 292
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateMyMarkerAddress()V

    .line 293
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    .line 294
    return-void
.end method

.method private checkIMUnread()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getIMUnreadFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment$1;-><init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_0
    return-void
.end method

.method private getCarDrivers()V
    .locals 4

    .prologue
    .line 175
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->isMyMarkerRemove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->updateMyMarker(DD)V

    .line 179
    :goto_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v0, v1, :cond_0

    .line 180
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 181
    :cond_0
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showCarDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 186
    :goto_1
    return-void

    .line 178
    :cond_1
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateMyMarkerAddress()V

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showCarDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private initDeparture()V
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setLastLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 112
    :cond_0
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 114
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->setDepartMarker(DD)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mMapDragListener:Lcom/didi/map/MapDragListener;

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setDepartMarkerDragListener(Lcom/didi/map/IMapDragListener;)V

    .line 118
    return-void
.end method

.method private isValidCity()Z
    .locals 2

    .prologue
    .line 404
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, currentCity:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const/4 v1, 0x0

    .line 408
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onTargetAddressSelected()V
    .locals 2

    .prologue
    .line 445
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 446
    .local v0, carOrder:Lcom/didi/car/model/CarOrder;
    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v1}, Lcom/didi/car/model/CarOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 447
    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->onText(Lcom/didi/car/model/CarOrder;)V

    .line 448
    return-void
.end method

.method private onText(Lcom/didi/car/model/CarOrder;)V
    .locals 1
    .parameter "carOrder"

    .prologue
    .line 338
    sget-object v0, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {p1, v0}, Lcom/didi/car/model/CarOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 339
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/didi/car/model/CarOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 340
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->redirect(Lcom/didi/car/model/CarOrder;)V

    .line 341
    return-void
.end method

.method private redirect(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "carOrder"

    .prologue
    .line 344
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 346
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 358
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    .line 359
    return-void

    .line 348
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 349
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 351
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isOnlyUpdateName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setType(I)V

    goto :goto_0

    .line 355
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setType(I)V

    goto :goto_0
.end method

.method private redirectToSearch()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 422
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "search_extra_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    const-string v1, "search_extra_order_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 426
    return-void
.end method

.method private removeLocationView()V
    .locals 0

    .prologue
    .line 251
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->removeChangeListener()V

    .line 252
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->hideLocation()V

    .line 253
    return-void
.end method

.method private setLocationView()V
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setViewMargin(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 227
    return-void
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 210
    return-void
.end method

.method private setSwitcher()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->setContentViewAnimated(Landroid/view/View;)V

    .line 257
    return-void
.end method

.method private showInvalidServiceDialog()V
    .locals 3

    .prologue
    .line 412
    const v2, 0x7f0b0251

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, tip:Ljava/lang/String;
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 414
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 416
    return-void
.end method

.method private showPopoupAnnouncement(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 233
    new-instance v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment$5;

    invoke-direct {v0, p0, p1}, Lcom/didi/car/ui/fragment/CarRealtimeFragment$5;-><init>(Lcom/didi/car/ui/fragment/CarRealtimeFragment;Landroid/view/View;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    return-void
.end method


# virtual methods
.method public doInBack()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->getCarDrivers()V

    .line 206
    return-void
.end method

.method protected jumpToSearch()V
    .locals 1

    .prologue
    .line 384
    invoke-static {}, Lcom/didi/common/helper/SoundHelper;->playClick()V

    .line 385
    invoke-static {}, Lcom/didi/common/util/Utils;->isLocated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const v0, 0x7f0b03e6

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 387
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    .line 396
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->isValidCity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 391
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->showInvalidServiceDialog()V

    .line 392
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    goto :goto_0

    .line 395
    :cond_1
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->redirectToSearch()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 430
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 431
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 434
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 436
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->onTargetAddressSelected()V

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 85
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    .line 86
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;->setFragmentListener(Lcom/didi/frame/realtime/RealtimeCallViewListener;)V

    .line 87
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 88
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->setCurrentCity()V

    .line 89
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->checkSwitcher(Lcom/didi/frame/business/Business;)V

    .line 90
    const-string v0, "pgxhome_sw"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 299
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->stopCarAnimationDrivers()V

    .line 300
    invoke-static {}, Lcom/didi/map/MapController;->hideMapLogo()V

    .line 301
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->removeLocationView()V

    .line 302
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 303
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 304
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 373
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 374
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->showMenu()V

    .line 375
    const/4 v0, 0x1

    .line 377
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 273
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mCarAailableListener:Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->removeCarAvailabelListener(Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;)V

    .line 274
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->pauseCarAnimationDrivers()V

    .line 275
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 262
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->setSwitcher()V

    .line 263
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->checkCarAvailable()V

    .line 264
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->carAvailable:Z

    .line 265
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->mCarAailableListener:Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->addCarAvailabelListener(Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;)V

    .line 267
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDrivers()V

    .line 268
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 191
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 192
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->checkBottomBarToCar()V

    .line 193
    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setVoiceNoticeChangeTime(JJ)V

    .line 194
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->setLocationView()V

    .line 195
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->setRedirectListener()V

    .line 196
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->addCityListener()V

    .line 197
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->initDeparture()V

    .line 198
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->checkIMUnread()V

    .line 199
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->setUserLogo()V

    .line 200
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarRealtimeFragment;->showPopoupAnnouncement(Landroid/view/View;)V

    .line 201
    return-void
.end method
