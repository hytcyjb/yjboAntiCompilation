.class public Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "ActivityRealtimeFragment.java"


# static fields
.field private static final SEARCH_WAIT_SECOND:I = 0x3

.field private static final WEB_URL:Ljava/lang/String; = "http://api.udache.com/gulfstream/api/v1/webapp/pReunionFestival"


# instance fields
.field private changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

.field private cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

.field private listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

.field private mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

.field private mView:Lcom/didi/frame/realtime/RealTimeCallView;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

.field private toSearchClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->toSearchClickTime:J

    .line 95
    new-instance v0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$1;-><init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    .line 137
    new-instance v0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$3;-><init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 161
    new-instance v0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$5;-><init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    .line 186
    new-instance v0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$6;-><init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    .line 398
    new-instance v0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$9;-><init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)V

    iput-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)Lcom/didi/soso/location/view/LocationView$ChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->mSwitchLeftClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;Lcom/didi/common/model/RecoveryConfig;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->recoveryCheck(Lcom/didi/common/model/RecoveryConfig;)V

    return-void
.end method

.method private addCityListener()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->addCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 93
    return-void
.end method

.method private gotoHtml()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 372
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 373
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 374
    iput-boolean v4, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 375
    const-string v2, ""

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 376
    const-string v2, "http://api.udache.com/gulfstream/api/v1/webapp/pReunionFestival"

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 377
    const-class v2, Lcom/didi/activity/ui/activity/ActivityWebActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->redirectClassName:Ljava/lang/String;

    .line 378
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/activity/ui/activity/ActivityWebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 379
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 380
    invoke-virtual {p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 382
    const-string v2, "act_h5"

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method private initDeparture()V
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLat()D

    move-result-wide v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLng()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/map/marker/MarkerController;->setDepartMarker(DD)V

    .line 89
    :cond_0
    return-void
.end method

.method private isValidCity()Z
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, currentCity:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const/4 v1, 0x0

    .line 263
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private recoveryCheck(Lcom/didi/common/model/RecoveryConfig;)V
    .locals 5
    .parameter "config"

    .prologue
    .line 320
    iget-object v2, p1, Lcom/didi/common/model/RecoveryConfig;->oid:Ljava/lang/String;

    .line 321
    .local v2, oid:Ljava/lang/String;
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    iget-object v4, p1, Lcom/didi/common/model/RecoveryConfig;->business:Lcom/didi/frame/business/Business;

    invoke-virtual {v3, v4}, Lcom/didi/frame/business/Business;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 324
    .local v1, isTaxi:Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/FragmentMgr;->isCarWaitForArrivalFragment()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/FragmentMgr;->isTaxiWaitForArrivalFragment()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->gotoHtml()V

    .line 369
    :goto_0
    return-void

    .line 331
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 332
    .local v0, helper:Lcom/didi/common/helper/DialogHelper;
    sget-object v3, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 333
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 334
    const/4 v3, 0x0

    const-string v4, "\u60a8\u6709\u4e00\u5f20\u672a\u5b8c\u6210\u7684\u8ba2\u5355\uff0c\u8bf7\u4ece\u5386\u53f2\u884c\u7a0b\u4e2d\u5b8c\u6210\u6b64\u8ba2\u5355"

    invoke-virtual {v0, v3, v4}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const v3, 0x7f0b03fb

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 336
    new-instance v3, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$8;

    invoke-direct {v3, p0, v0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$8;-><init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;Lcom/didi/common/helper/DialogHelper;)V

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 367
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private redirectToActivity()V
    .locals 6

    .prologue
    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 279
    .local v0, now:J
    iget-wide v2, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->toSearchClickTime:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 280
    const-wide/16 v2, 0xbb8

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->toSearchClickTime:J

    .line 282
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasLogin()Z

    move-result v2

    if-nez v2, :cond_1

    .line 283
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b03de

    invoke-virtual {p0, v3}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 288
    new-instance v2, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$7;

    invoke-direct {v2, p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$7;-><init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)V

    invoke-static {v2}, Lcom/didi/common/net/CommonRequest;->doRecoveryCheck(Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private showInvalidServiceDialog()V
    .locals 3

    .prologue
    .line 267
    const v2, 0x7f0b0251

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, tip:Ljava/lang/String;
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 269
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 271
    return-void
.end method

.method private showPopoupAnnouncement(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 152
    new-instance v0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$4;-><init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;Landroid/view/View;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 159
    return-void
.end method


# virtual methods
.method public doInBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showActivityDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/didi/common/helper/DriversHelper;->showActivityDrivers(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected jumpToActivity()V
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/didi/common/helper/SoundHelper;->playClick()V

    .line 236
    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isOpenActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const v0, 0x7f0b04f2

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    .line 238
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 239
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 251
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-static {}, Lcom/didi/common/util/Utils;->isLocated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    const v0, 0x7f0b03e6

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->isValidCity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->showInvalidServiceDialog()V

    goto :goto_0

    .line 250
    :cond_2
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->redirectToActivity()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 387
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 388
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 396
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 76
    new-instance v0, Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    .line 77
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    iget-object v1, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->listener:Lcom/didi/frame/realtime/RealtimeCallViewListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/realtime/RealTimeCallView;->setFragmentListener(Lcom/didi/frame/realtime/RealtimeCallViewListener;)V

    .line 78
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 79
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->setCurrentCity()V

    .line 80
    sget-object v0, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->checkSwitcher(Lcom/didi/frame/business/Business;)V

    .line 81
    const-string v0, "pgacthome_sw"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 179
    invoke-static {}, Lcom/didi/map/MapController;->hideMapLogo()V

    .line 180
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->removeChangeListener()V

    .line 181
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->hideLocation()V

    .line 182
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 183
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->cityListener:Lcom/didi/common/helper/LocationHelper$CityChangeListener;

    invoke-static {v0}, Lcom/didi/common/helper/LocationHelper;->removeCityListener(Lcom/didi/common/helper/LocationHelper$CityChangeListener;)V

    .line 184
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 223
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    .line 224
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->showMenu()V

    .line 225
    const/4 v0, 0x1

    .line 227
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
    .line 171
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->mView:Lcom/didi/frame/realtime/RealTimeCallView;

    invoke-virtual {v0}, Lcom/didi/frame/realtime/RealTimeCallView;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->setContentViewAnimated(Landroid/view/View;)V

    .line 173
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setEditViewEnble()V

    .line 174
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 107
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 108
    invoke-static {}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->checkBottomBarToActivity()V

    .line 110
    const-wide/16 v0, 0x8

    const-wide/16 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setVoiceNoticeChangeTime(JJ)V

    .line 111
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setViewMargin(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->changeListener:Lcom/didi/soso/location/view/LocationView$ChangeListener;

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 113
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 114
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->addCityListener()V

    .line 115
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->initDeparture()V

    .line 116
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getIMUnreadFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment$2;-><init>(Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 124
    :cond_0
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->setUserLogo()V

    .line 125
    invoke-direct {p0, p1}, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;->showPopoupAnnouncement(Landroid/view/View;)V

    .line 126
    return-void
.end method
