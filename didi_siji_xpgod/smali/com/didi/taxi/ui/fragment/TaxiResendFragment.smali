.class public Lcom/didi/taxi/ui/fragment/TaxiResendFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "TaxiResendFragment.java"


# instance fields
.field private cancelListener:Landroid/view/View$OnClickListener;

.field private carPoolTriggerInterceptedListener:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

.field private guideListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private placeListener:Lcom/didi/car/listener/PlaceInterface;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 101
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$2;-><init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->carPoolTriggerInterceptedListener:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

    .line 159
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$4;-><init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    .line 167
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$5;-><init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 237
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$7;-><init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->guideListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 277
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$8;-><init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->cancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->recallOrder()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->showRecommandDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->onResend(Lcom/didi/common/model/BaseObject;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->doCancel()V

    return-void
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 299
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 300
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->endBusinessMap()V

    .line 301
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 302
    return-void
.end method

.method private onResend(Lcom/didi/common/model/BaseObject;)V
    .locals 1
    .parameter "order"

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    const v0, 0x7f0b035d

    invoke-virtual {p1, v0}, Lcom/didi/common/model/BaseObject;->replaceEmptyErrorMessage(I)V

    .line 270
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_1
    sget v0, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 273
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->resendToWaitMapView()V

    .line 274
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    goto :goto_0
.end method

.method private recallOrder()V
    .locals 5

    .prologue
    .line 187
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 188
    .local v0, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taxiresend click create order ,oid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceNetLog;->log(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b04bd

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 190
    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$6;

    invoke-direct {v1, p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$6;-><init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;Lcom/didi/taxi/model/TaxiOrder;)V

    invoke-static {v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->resendOrder(Lcom/didi/taxi/model/TaxiOrder;Lcom/didi/common/net/ResponseListener;)V

    .line 222
    return-void
.end method

.method private setCarPoolTriggerListener()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->carPoolTriggerInterceptedListener:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolHelper;->setTriggerInterceptListener(Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;)V

    .line 90
    return-void
.end method

.method private setPalceListener()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->addPlaceLister(Lcom/didi/car/listener/PlaceInterface;)V

    .line 98
    return-void
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 94
    return-void
.end method

.method private setSwitcher()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$1;-><init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;)V

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b020b

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 84
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b04bc

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 85
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    .line 86
    return-void
.end method

.method private showRecommandDialog()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->MICRO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 117
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 118
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 119
    const-string v1, ""

    const v2, 0x7f0b028b

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const v1, 0x7f0b028a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 121
    const v1, 0x7f0b0289

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment$3;-><init>(Lcom/didi/taxi/ui/fragment/TaxiResendFragment;Lcom/didi/common/helper/DialogHelper;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 156
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 157
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 52
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->setTitleBar()V

    .line 53
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmUpDelayed()V

    .line 54
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->setRedirectListener()V

    .line 55
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->setPalceListener()V

    .line 56
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showResendMapView()V

    .line 57
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->setSwitcher()V

    .line 58
    invoke-static {v0, v0, v0}, Lcom/didi/frame/carpool/CarPoolHelper;->lockCarPoolType(ZZZ)V

    .line 59
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->setCarPoolTriggerListener()V

    .line 60
    new-instance v0, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 67
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 68
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->removePlaceListener(Lcom/didi/car/listener/PlaceInterface;)V

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolHelper;->setTriggerInterceptListener(Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;)V

    .line 70
    return-void
.end method

.method protected showGuideDialog(Lcom/didi/car/model/CarGuideFlag;)V
    .locals 4
    .parameter "guide"

    .prologue
    .line 225
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, dialog:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->THREE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 227
    iget-object v1, p1, Lcom/didi/car/model/CarGuideFlag;->guideTitle:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/car/model/CarGuideFlag;->guideContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->GUIDE:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 229
    const v1, 0x7f0b03ef

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b04ac

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0257

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->setThreeBtnText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;->guideListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 233
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 234
    return-void
.end method
