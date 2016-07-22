.class public Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "DDriveConfirmFragment.java"


# instance fields
.field private dialog:Lcom/didi/common/helper/DialogHelper;

.field dialogListener:Lcom/didi/ddrive/ui/component/DialogListener;

.field private listener:Lcom/didi/ddrive/listener/DDriveConfirmListener;

.field private mConfirmBtn:Landroid/view/View;

.field private mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;

.field private mView:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

.field private overdraftOid:Ljava/lang/String;

.field private placeListener:Lcom/didi/car/listener/PlaceInterface;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 78
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$1;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 106
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$2;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    .line 124
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$3;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->listener:Lcom/didi/ddrive/listener/DDriveConfirmListener;

    .line 266
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$5;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialogListener:Lcom/didi/ddrive/ui/component/DialogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->showPopup(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V

    return-void
.end method

.method static synthetic access$102(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mConfirmBtn:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->disableSendConfirmBtn(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)Lcom/didi/ddrive/managers/DriveConfirmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->back()V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->overdraftOid:Ljava/lang/String;

    return-object v0
.end method

.method private back()V
    .locals 3

    .prologue
    .line 427
    const-string v0, "pdjxcalldj_02_ck"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 428
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$7;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 435
    return-void
.end method

.method private checkOverdraftOrder(JLjava/lang/String;)V
    .locals 2
    .parameter "overId"
    .parameter "msg"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->overdraftOid:Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->initDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const-string v1, ""

    invoke-virtual {v0, v1, p3}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 259
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 260
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0136

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0133

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialogListener:Lcom/didi/ddrive/ui/component/DialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 263
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private closeDialog()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 233
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    goto :goto_0
.end method

.method private disableSendConfirmBtn(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 204
    if-eqz p1, :cond_0

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 207
    :cond_0
    return-void
.end method

.method private enableSendConfirmBtn(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 213
    :cond_0
    return-void
.end method

.method private getEstimateFare()V
    .locals 6

    .prologue
    .line 401
    sget-object v4, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v4}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    check-cast v2, Lcom/didi/ddrive/model/DDriveOrder;

    .line 402
    .local v2, order:Lcom/didi/ddrive/model/DDriveOrder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v4

    if-nez v4, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v3

    .line 407
    .local v3, start:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v0

    .line 408
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

    .line 409
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 411
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

    .line 412
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

    .line 413
    new-instance v1, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v1}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 414
    .local v1, fare:Lcom/didi/common/model/MarkerFare;
    const v4, 0x7f0b0143

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    .line 415
    sget-object v4, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-direct {p0, v4, v1}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    .line 417
    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;

    invoke-virtual {v4}, Lcom/didi/ddrive/managers/DriveConfirmManager;->getEstimateFare()V

    goto :goto_0
.end method

.method private initDialog()Z
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 223
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 224
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setTitleBar()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b027e

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 194
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 195
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$4;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$4;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->showLeftBackDrawable(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method

.method private showAlert(I)V
    .locals 3
    .parameter "res"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const-string v1, ""

    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 170
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 171
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V
    .locals 1
    .parameter "type"
    .parameter "text"

    .prologue
    .line 285
    sget-object v0, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    if-ne p1, v0, :cond_0

    .line 286
    invoke-static {p2}, Lcom/didi/map/marker/MarkerController;->updateTextSimpleFareMarker(Lcom/didi/common/model/MarkerFare;)V

    .line 287
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->setTextSimpleFareMarkerUnClick(Z)V

    .line 288
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->showTextSimpleFareInfoWindow()V

    .line 290
    :cond_0
    return-void
.end method

.method private showPopup(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V
    .locals 7
    .parameter "predict"

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 345
    :cond_0
    new-instance v2, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v2}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 346
    .local v2, fare:Lcom/didi/common/model/MarkerFare;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v0, builder:Ljava/lang/StringBuilder;
    const v4, 0x7f0b032e

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<font color=\'#ff8903\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-wide v4, p1, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;->totalMoney:D

    double-to-int v1, v4

    .line 350
    .local v1, estimate:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</font>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const v4, 0x7f0b032f

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-wide v4, p1, Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;->voucherLimit:D

    double-to-int v3, v4

    .line 353
    .local v3, voucherValue:I
    if-lez v3, :cond_1

    .line 354
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

    .line 356
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    .line 357
    sget-object v4, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-direct {p0, v4, v2}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->back()V

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 91
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->checkBusiness(Lcom/didi/frame/business/Business;)V

    .line 92
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->setTitleBar()V

    .line 93
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->registEventBus(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 95
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->addPlaceLister(Lcom/didi/car/listener/PlaceInterface;)V

    .line 96
    invoke-static {}, Lcom/didi/ddrive/managers/DriveConfirmManager;->getInstance()Lcom/didi/ddrive/managers/DriveConfirmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;

    .line 97
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->getEstimateFare()V

    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showConfirmMapView(Z)V

    .line 99
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->updateDDriverMarkerUnClick()V

    .line 100
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveConfirmView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    .line 101
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->listener:Lcom/didi/ddrive/listener/DDriveConfirmListener;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->setDDriveConfirmListener(Lcom/didi/ddrive/listener/DDriveConfirmListener;)V

    .line 102
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    const v1, 0x7f0b027e

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriveConfirmView;->updateConfirmButtonTxt(I)V

    .line 103
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 184
    const-string v0, "onDestroyView"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 185
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->unRegistEventBus(Ljava/lang/Object;)V

    .line 186
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 187
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 188
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->placeListener:Lcom/didi/car/listener/PlaceInterface;

    invoke-static {v0}, Lcom/didi/car/listener/CarListenerCollection;->removePlaceListener(Lcom/didi/car/listener/PlaceInterface;)V

    .line 189
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->closeDialog()V

    .line 190
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 326
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 327
    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 328
    .local v1, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-boolean v2, p1, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;->responseSuccess:Z

    if-eqz v2, :cond_1

    .line 329
    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;->response:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    iput-object v2, v1, Lcom/didi/ddrive/model/DDriveOrder;->ddriveEstimatePrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    .line 330
    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DrivePrePriceEvent;->response:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    iput-object v2, v1, Lcom/didi/ddrive/model/DDriveOrder;->predictPrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    .line 331
    iget-object v2, v1, Lcom/didi/ddrive/model/DDriveOrder;->predictPrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    invoke-direct {p0, v2}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->showPopup(Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;)V

    .line 339
    .end local v1           #order:Lcom/didi/ddrive/model/DDriveOrder;
    :cond_0
    :goto_0
    return-void

    .line 333
    .restart local v1       #order:Lcom/didi/ddrive/model/DDriveOrder;
    :cond_1
    new-instance v0, Lcom/didi/common/model/MarkerFare;

    invoke-direct {v0}, Lcom/didi/common/model/MarkerFare;-><init>()V

    .line 334
    .local v0, fare:Lcom/didi/common/model/MarkerFare;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/didi/ddrive/model/DDriveOrder;->ddriveEstimatePrice:Lcom/didi/ddrive/net/http/response/DrivePrePriceResponse;

    .line 335
    const v2, 0x7f0b0144

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    .line 336
    sget-object v2, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    invoke-direct {p0, v2, v0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->showPopWindowText(Lcom/didi/frame/business/InputType;Lcom/didi/common/model/MarkerFare;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 364
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 365
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    .line 366
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_1

    .line 367
    iget-boolean v2, p1, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;->success:Z

    if-eqz v2, :cond_1

    .line 368
    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    .line 369
    .local v0, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-object v2, v0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    sget-object v3, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    iput-object v3, v2, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 370
    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;->response:Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;->oid:J

    iput-wide v2, v0, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    .line 371
    invoke-virtual {v0}, Lcom/didi/ddrive/model/DDriveOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iput v4, v2, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 373
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/didi/ddrive/model/DDriveOrder;->setUseDepart(Z)V

    .line 378
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/OrderStateManager;->newOrder()V

    .line 379
    sput v4, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 380
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->confirmToWaitMapView()V

    .line 382
    new-instance v1, Lcom/didi/ddrive/model/OrderCreateTime;

    invoke-direct {v1}, Lcom/didi/ddrive/model/OrderCreateTime;-><init>()V

    .line 383
    .local v1, orderCreateTime:Lcom/didi/ddrive/model/OrderCreateTime;
    iget-wide v2, v0, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    iput-wide v2, v1, Lcom/didi/ddrive/model/OrderCreateTime;->oid:J

    .line 384
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/didi/ddrive/model/OrderCreateTime;->createTime:J

    .line 385
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->saveOrderCreateTime(Lcom/didi/ddrive/model/OrderCreateTime;)V

    .line 387
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward()V

    .line 390
    .end local v0           #order:Lcom/didi/ddrive/model/DDriveOrder;
    .end local v1           #orderCreateTime:Lcom/didi/ddrive/model/OrderCreateTime;
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 296
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v1, v2, :cond_0

    .line 297
    iget-boolean v1, p1, Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;->responseSuccess:Z

    if-eqz v1, :cond_0

    .line 298
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 299
    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/switcher/SwitcherHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 300
    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    .line 301
    .local v0, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-object v1, p1, Lcom/didi/ddrive/eventbus/event/OrderDetailMessage;->info:Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

    iput-object v1, v0, Lcom/didi/ddrive/model/DDriveOrder;->orderDetail:Lcom/didi/ddrive/net/http/response/OrderDetailInfo;

    .line 302
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 303
    new-instance v1, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$6;

    invoke-direct {v1, p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment$6;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;Lcom/didi/ddrive/model/DDriveOrder;)V

    const-wide/16 v2, 0x190

    invoke-static {v1, v2, v3}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    .end local v0           #order:Lcom/didi/ddrive/model/DDriveOrder;
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/UnpayedOrderEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 393
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 394
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mConfirmBtn:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->enableSendConfirmBtn(Landroid/view/View;)V

    .line 395
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/UnpayedOrderEvent;->order:Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse$UnpayedOrder;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/UnpayedOrderEvent;->order:Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse$UnpayedOrder;

    iget-wide v0, v0, Lcom/didi/ddrive/net/http/response/UnpayedOrderResponse$UnpayedOrder;->orderId:J

    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/UnpayedOrderEvent;->msg:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->checkOverdraftOrder(JLjava/lang/String;)V

    .line 398
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->mView:Lcom/didi/ddrive/ui/component/DDriveConfirmView;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 179
    return-void
.end method

.method public validCityTip(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 242
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 243
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveConfirmFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method
