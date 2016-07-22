.class public Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "DDriveResendFragment.java"


# instance fields
.field private cancelListener:Landroid/view/View$OnClickListener;

.field private listener:Lcom/didi/ddrive/listener/DDriveConfirmListener;

.field private mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;

.field private mView:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

.field private placeListener:Lcom/didi/car/listener/PlaceInterface;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$1;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->listener:Lcom/didi/ddrive/listener/DDriveConfirmListener;

    .line 95
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$2;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    .line 141
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$3;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 231
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment$4;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->cancelListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;)Lcom/didi/ddrive/managers/DriveConfirmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->showPopup(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V

    return-void
.end method

.method private getEstimateFare()V
    .locals 6

    .prologue
    .line 122
    sget-object v4, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v4}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/model/DDriveOrder;

    .line 123
    .local v2, order:Lcom/didi/ddrive/model/DDriveOrder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    if-nez v4, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v3

    .line 128
    .local v3, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 129
    .local v0, end:Lcom/didi/common/model/Address;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 130
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 134
    new-instance v1, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v1}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 135
    .local v1, fare:Lcom/didi/common/model/MarkerFare;
    const v4, 0x7f0b0143

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    .line 136
    sget-object v4, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-direct {p0, v4, v1}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 138
    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;

    invoke-virtual {v4}, Lcom/didi/ddrive/managers/DriveConfirmManager;->getEstimateFare()V

    goto :goto_0
.end method

.method private setTitleBar()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideBtnRight()V

    .line 91
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b0152

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 92
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->showLeftBackDrawable(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method private showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    .locals 1
    .parameter "type"
    .parameter "text"

    .prologue
    .line 114
    sget-object v0, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    if-ne p1, v0, :cond_0

    .line 115
    invoke-static {p2}, Lcom/didi/map/marker/MarkerController;->updateTextSimpleFareMarker(Lcom/didi/common/model/MarkerFare;)V

    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setTextSimpleFareMarkerUnClick(Z)V

    .line 117
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->showTextSimpleFareInfoWindow()V

    .line 119
    :cond_0
    return-void
.end method

.method private showPopup(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V
    .locals 7
    .parameter "predict"

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v2, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v2}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 189
    .local v2, fare:Lcom/didi/common/model/MarkerFare;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v0, builder:Ljava/lang/StringBuilder;
    const v4, 0x7f0b032e

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<font color=\'#ff8903\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-wide v4, p1, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;->totalMoney:D

    double-to-int v1, v4

    .line 193
    .local v1, estimate:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const v4, 0x7f0b032f

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-wide v4, p1, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;->voucherLimit:D

    double-to-int v3, v4

    .line 196
    .local v3, voucherValue:I
    if-lez v3, :cond_1

    .line 197
    const v4, 0x7f0b0156

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    .line 200
    sget-object v4, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-direct {p0, v4, v2}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 160
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->endBusinessMap()V

    .line 161
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->registEventBus(Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->setTitleBar()V

    .line 54
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 55
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->addPlaceLister(Lcom/didi/car/listener/PlaceInterface;)V

    .line 56
    invoke-static {}, Lcom/didi/ddrive/managers/DriveConfirmManager;->getInstance()Lcom/didi/ddrive/managers/DriveConfirmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;

    .line 57
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showResendMapView()V

    .line 58
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->getEstimateFare()V

    .line 59
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveConfirmView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    .line 60
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->listener:Lcom/didi/ddrive/listener/DDriveConfirmListener;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->setDDriveConfirmListener(Lcom/didi/ddrive/listener/DDriveConfirmListener;)V

    .line 61
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    const v1, 0x7f0b0152

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->updateConfirmButtonTxt(I)V

    .line 62
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 84
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->unRegistEventBus(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 86
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->removePlaceListener(Lcom/didi/car/listener/PlaceInterface;)V

    .line 87
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 169
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 170
    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 171
    .local v1, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-boolean v2, p1, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;->responseSuccess:Z

    if-eqz v2, :cond_1

    .line 172
    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;->response:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    iput-object v2, v1, Lcom/didi/ddrive/model/DDriveOrder;->ddriveEstimatePrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    .line 173
    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;->response:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    iput-object v2, v1, Lcom/didi/ddrive/model/DDriveOrder;->predictPrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    .line 174
    iget-object v2, v1, Lcom/didi/ddrive/model/DDriveOrder;->ddriveEstimatePrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    invoke-direct {p0, v2}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->showPopup(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V

    .line 182
    .end local v1           #order:Lcom/didi/ddrive/model/DDriveOrder;
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local v1       #order:Lcom/didi/ddrive/model/DDriveOrder;
    :cond_1
    new-instance v0, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v0}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 177
    .local v0, fare:Lcom/didi/common/model/MarkerFare;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/didi/ddrive/model/DDriveOrder;->ddriveEstimatePrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    .line 178
    const v2, 0x7f0b0144

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    .line 179
    sget-object v2, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-direct {p0, v2, v0}, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 208
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 209
    iget-boolean v2, p1, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;->success:Z

    if-eqz v2, :cond_0

    .line 210
    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    .line 211
    .local v0, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-object v2, v0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    sget-object v3, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    iput-object v3, v2, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 212
    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;->response:Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;->oid:J

    iput-wide v2, v0, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    .line 213
    invoke-virtual {v0}, Lcom/didi/ddrive/model/DDriveOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iput v4, v2, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 216
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/OrderStateManager;->newOrder()V

    .line 217
    sput v4, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 218
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->confirmToWaitMapView()V

    .line 220
    new-instance v1, Lcom/didi/ddrive/model/OrderCreateTime;

    invoke-direct {v1}, Lcom/didi/ddrive/model/OrderCreateTime;-><init>()V

    .line 221
    .local v1, orderCreateTime:Lcom/didi/ddrive/model/OrderCreateTime;
    iget-wide v2, v0, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    iput-wide v2, v1, Lcom/didi/ddrive/model/OrderCreateTime;->oid:J

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/didi/ddrive/model/OrderCreateTime;->createTime:J

    .line 223
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->saveOrderCreateTime(Lcom/didi/ddrive/model/OrderCreateTime;)V

    .line 225
    sget v2, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 226
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->backward()V

    .line 229
    .end local v0           #order:Lcom/didi/ddrive/model/DDriveOrder;
    .end local v1           #orderCreateTime:Lcom/didi/ddrive/model/OrderCreateTime;
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 69
    return-void
.end method
