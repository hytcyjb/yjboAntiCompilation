.class public Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "FlierRealtimeFragment.java"


# instance fields
.field carAvailable:Z

.field private changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

.field private cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

.field private isLoad:Z

.field private listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

.field private mCarAailableListener:Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;

.field private mMapDragListener:Lcom/didi/map/MapDragListener;

.field private mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

.field private mView:Lcom/didi/frame/realtime/RealTimeCallView;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->isLoad:Z

    .line 116
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$2;-><init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mMapDragListener:Lcom/didi/map/MapDragListener;

    .line 162
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$3;-><init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 221
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$4;-><init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 251
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$6;-><init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    .line 287
    iput-boolean v1, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->carAvailable:Z

    .line 288
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$7;-><init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mCarAailableListener:Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;

    .line 312
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$8;-><init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    .line 456
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$9;-><init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->setLocationView()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->checkFlierAvailable()V

    return-void
.end method

.method private addCityListener()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 160
    return-void
.end method

.method private checkFlierAvailable()V
    .locals 0

    .prologue
    .line 297
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateMyMarkerAddress()V

    .line 298
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    .line 299
    return-void
.end method

.method private checkIMUnread()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getIMUnreadFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$1;-><init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_0
    return-void
.end method

.method private getFlierDrivers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

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

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-eq v0, v1, :cond_0

    .line 180
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->isLoad:Z

    if-eqz v0, :cond_2

    .line 189
    :goto_1
    return-void

    .line 178
    :cond_1
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateMyMarkerAddress()V

    goto :goto_0

    .line 183
    :cond_2
    iput-boolean v4, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->isLoad:Z

    .line 184
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/didi/common/helper/DriversHelper;->showFlierDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 187
    :cond_3
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showFlierDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private initDeparture()V
    .locals 4

    .prologue
    .line 104
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setLastLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 108
    :cond_0
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/frame/departure/DepartureHelper;->setUseDepart(Z)V

    .line 110
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLastLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->setDepartMarker(DD)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mMapDragListener:Lcom/didi/map/MapDragListener;

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setDepartMarkerDragListener(Lcom/didi/map/IMapDragListener;)V

    .line 114
    return-void
.end method

.method private isValidCity()Z
    .locals 2

    .prologue
    .line 410
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, currentCity:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const/4 v1, 0x0

    .line 414
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onTargetAddressSelected()V
    .locals 2

    .prologue
    .line 451
    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 452
    .local v0, carOrder:Lcom/didi/car/model/CarOrder;
    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0, v1}, Lcom/didi/car/model/CarOrder;->setOrderType(Lcom/didi/frame/business/OrderType;)V

    .line 453
    invoke-direct {p0, v0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->onText(Lcom/didi/car/model/CarOrder;)V

    .line 454
    return-void
.end method

.method private onText(Lcom/didi/car/model/CarOrder;)V
    .locals 1
    .parameter "carOrder"

    .prologue
    .line 344
    sget-object v0, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-virtual {p1, v0}, Lcom/didi/car/model/CarOrder;->setInputType(Lcom/didi/frame/business/InputType;)V

    .line 345
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getEndAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/didi/car/model/CarOrder;->setEndPlace(Lcom/didi/common/model/Address;)V

    .line 346
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->redirect(Lcom/didi/car/model/CarOrder;)V

    .line 347
    return-void
.end method

.method private redirect(Lcom/didi/car/model/CarOrder;)V
    .locals 2
    .parameter "carOrder"

    .prologue
    .line 350
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 352
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 364
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    .line 365
    return-void

    .line 354
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->setStartAddress(Lcom/didi/common/model/Address;)V

    .line 355
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddress()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setStartPlace(Lcom/didi/common/model/Address;)V

    .line 357
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isOnlyUpdateName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setType(I)V

    goto :goto_0

    .line 361
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

    .line 428
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "search_extra_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    const-string v1, "search_extra_order_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 432
    return-void
.end method

.method private removeLocationView()V
    .locals 0

    .prologue
    .line 260
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->removeChangeListener()V

    .line 261
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->hideLocation()V

    .line 262
    return-void
.end method

.method private setLocationView()V
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setViewMargin(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 236
    return-void
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 219
    return-void
.end method

.method private setSwitcher()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->setContentViewAnimated(Landroid/view/View;)V

    .line 266
    return-void
.end method

.method private showInvalidServiceDialog()V
    .locals 3

    .prologue
    .line 418
    const v2, 0x7f0b0251

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, tip:Ljava/lang/String;
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 420
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 422
    return-void
.end method

.method private showPopoupAnnouncement(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 242
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$5;

    invoke-direct {v0, p0, p1}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment$5;-><init>(Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;Landroid/view/View;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    return-void
.end method


# virtual methods
.method public doInBack()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->getFlierDrivers()V

    .line 215
    return-void
.end method

.method protected jumpToSearch()V
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lcom/didi/common/helper/SoundHelper;->playClick()V

    .line 391
    invoke-static {}, Lcom/didi/common/util/Utils;->isLocated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    const v0, 0x7f0b03e6

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 393
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    .line 402
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->isValidCity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->showInvalidServiceDialog()V

    .line 398
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    goto :goto_0

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->redirectToSearch()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 436
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 437
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 440
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 442
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->onTargetAddressSelected()V

    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 78
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    .line 79
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;->setFragmentListener(Lcom/didi/frame/realtime/RealtimeCallViewListener;)V

    .line 80
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 81
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->setCurrentCity()V

    .line 82
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->checkSwitcher(Lcom/didi/frame/business/Business;)V

    .line 83
    const-string v0, "pgxhome_sw"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 304
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->stopCarAnimationDrivers()V

    .line 305
    invoke-static {}, Lcom/didi/map/MapController;->hideMapLogo()V

    .line 306
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->removeLocationView()V

    .line 307
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 308
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->isLoad:Z

    .line 310
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 379
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 380
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->showMenu()V

    .line 381
    const/4 v0, 0x1

    .line 383
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
    .line 281
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 282
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mCarAailableListener:Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->removeCarAvailabelListener(Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;)V

    .line 284
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->pauseCarAnimationDrivers()V

    .line 285
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 271
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->setSwitcher()V

    .line 272
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->checkFlierAvailable()V

    .line 273
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->carAvailable:Z

    .line 274
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->mCarAailableListener:Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;

    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->addCarAvailabelListener(Lcom/didi/common/database/CityListHelper$CarAvailableChangeListener;)V

    .line 276
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->showCarAnimationDrivers()V

    .line 277
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 194
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 195
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->checkBottomBarToFlier()V

    .line 196
    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setVoiceNoticeChangeTime(JJ)V

    .line 197
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->setLocationView()V

    .line 198
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->setRedirectListener()V

    .line 199
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->addCityListener()V

    .line 200
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->initDeparture()V

    .line 201
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->checkIMUnread()V

    .line 202
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->setUserLogo()V

    .line 203
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;->showPopoupAnnouncement(Landroid/view/View;)V

    .line 210
    return-void
.end method
