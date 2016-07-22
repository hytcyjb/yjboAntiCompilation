.class public Lcom/didi/car/ui/activity/CarCancelTripActivity;
.super Landroid/app/Activity;
.source "CarCancelTripActivity.java"


# instance fields
.field private carCancelTripView:Lcom/didi/car/ui/component/CarCancelTripView;

.field private dialog:Lcom/didi/common/helper/DialogHelper;

.field private dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private mCarCancelTrip:Lcom/didi/car/model/CarCancelTrip;

.field private mContent:Ljava/lang/String;

.field private mListener:Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;

.field private mRemark:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 147
    new-instance v0, Lcom/didi/car/ui/activity/CarCancelTripActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity$2;-><init>(Lcom/didi/car/ui/activity/CarCancelTripActivity;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mListener:Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;

    .line 283
    new-instance v0, Lcom/didi/car/ui/activity/CarCancelTripActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity$4;-><init>(Lcom/didi/car/ui/activity/CarCancelTripActivity;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/activity/CarCancelTripActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/car/ui/activity/CarCancelTripActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/didi/car/ui/activity/CarCancelTripActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mRemark:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/car/ui/activity/CarCancelTripActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mRemark:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/car/ui/activity/CarCancelTripActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->showReConfirmDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/car/ui/activity/CarCancelTripActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->doConfirm(I)V

    return-void
.end method

.method private defaultReason()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f0b0217

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0b0216

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f0b0218

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 144
    .local v0, strSplit:[Ljava/lang/String;
    return-object v0
.end method

.method private doConfirm(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const v1, 0x7f0b048b

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 193
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, strData:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->postCancelTrip(ILjava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private finishWithResult(Lcom/didi/car/model/CarCancelTrip;)V
    .locals 2
    .parameter "cancelTrip"

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cancel_trip_content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 248
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->setResult(ILandroid/content/Intent;)V

    .line 249
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->onBackPressed()V

    .line 250
    return-void
.end method

.method private postCancelTrip(ILjava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "data"

    .prologue
    .line 196
    const v2, 0x7f0b0563

    invoke-direct {p0, v2}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->showLoadingDialog(I)V

    .line 197
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, oid:Ljava/lang/String;
    const/4 v0, 0x0

    .line 200
    .local v0, l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarCancelTrip;>;"
    new-instance v0, Lcom/didi/car/ui/activity/CarCancelTripActivity$3;

    .end local v0           #l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarCancelTrip;>;"
    invoke-direct {v0, p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity$3;-><init>(Lcom/didi/car/ui/activity/CarCancelTripActivity;)V

    .line 209
    .restart local v0       #l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarCancelTrip;>;"
    invoke-static {v1, p1, p2, v0}, Lcom/didi/car/net/CarRequest;->cancelTrip(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 210
    return-void
.end method

.method private removeLoadingDialog()V
    .locals 0

    .prologue
    .line 242
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 243
    return-void
.end method

.method private setReasonsContent()V
    .locals 10

    .prologue
    const v9, 0x7f0b0560

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 116
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getArrayCarCancelTripIconOption()[Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, iconArray:[Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getArrayCarCancelTripTextOption()[Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, textArray:[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 119
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->defaultReason()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mListener:Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;

    invoke-static {v4, v5, v6}, Lcom/didi/car/helper/CarCancelTripViewHelper;->setCancelTripReasons([Ljava/lang/String;[Ljava/lang/String;Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;)V

    .line 124
    :goto_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v1

    .line 125
    .local v1, orderType:Lcom/didi/frame/business/OrderType;
    const-string v2, ""

    .line 126
    .local v2, showNoticeText:Ljava/lang/String;
    sget-object v4, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v4, v1, :cond_2

    .line 127
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getCarCancelTripBookingTip()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "20"

    aput-object v6, v5, v7

    invoke-virtual {v4, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 137
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mCarCancelTrip:Lcom/didi/car/model/CarCancelTrip;

    iget-object v4, v4, Lcom/didi/car/model/CarCancelTrip;->tips:Ljava/lang/String;

    iget-object v5, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mCarCancelTrip:Lcom/didi/car/model/CarCancelTrip;

    iget-object v5, v5, Lcom/didi/car/model/CarCancelTrip;->tipsPay:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/didi/car/helper/CarCancelTripViewHelper;->setCancelTripNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    .line 121
    .end local v1           #orderType:Lcom/didi/frame/business/OrderType;
    .end local v2           #showNoticeText:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mListener:Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;

    invoke-static {v0, v3, v4}, Lcom/didi/car/helper/CarCancelTripViewHelper;->setCancelTripReasons([Ljava/lang/String;[Ljava/lang/String;Lcom/didi/car/ui/component/CarCancelTripView$CancelTripListener;)V

    goto :goto_0

    .line 131
    .restart local v1       #orderType:Lcom/didi/frame/business/OrderType;
    .restart local v2       #showNoticeText:Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v4, v1, :cond_0

    .line 132
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getCarCancelTripRealtimeTip()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "10"

    aput-object v6, v5, v7

    invoke-virtual {v4, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 102
    invoke-static {}, Lcom/didi/car/helper/CarCancelTripViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b0575

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 103
    invoke-static {}, Lcom/didi/car/helper/CarCancelTripViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f020170

    new-instance v2, Lcom/didi/car/ui/activity/CarCancelTripActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity$1;-><init>(Lcom/didi/car/ui/activity/CarCancelTripActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {}, Lcom/didi/car/helper/CarCancelTripViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 112
    return-void
.end method

.method private showLoadingDialog(I)V
    .locals 3
    .parameter "msgId"

    .prologue
    .line 234
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, content:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 236
    return-void
.end method

.method private showReConfirmDialog()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 269
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 281
    :goto_0
    return-void

    .line 271
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 272
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b021d

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 274
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 275
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconVisible(Z)V

    .line 276
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b020e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b020f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 279
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pgxcancel01_ck"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[order_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 328
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-static {}, Lcom/didi/car/helper/CarCancelTripViewHelper;->hideInptuMethod()V

    .line 92
    sput-object v1, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    .line 93
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 95
    iput-object v1, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->finish()V

    .line 98
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->overridePendingTransition(II)V

    .line 99
    return-void
.end method

.method public onCancelTripConfirmed(Lcom/didi/car/model/CarCancelTrip;)V
    .locals 3
    .parameter "cancelTrip"

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->removeLoadingDialog()V

    .line 214
    invoke-virtual {p1}, Lcom/didi/car/model/CarCancelTrip;->getErrorCode()I

    move-result v0

    .line 215
    .local v0, errorCode:I
    invoke-virtual {p1}, Lcom/didi/car/model/CarCancelTrip;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, errorMsg:Ljava/lang/String;
    const/16 v2, 0x40b

    if-ne v0, v2, :cond_2

    .line 218
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->finish()V

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-direct {p0, p1}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->finishWithResult(Lcom/didi/car/model/CarCancelTrip;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 56
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->overridePendingTransition(II)V

    .line 57
    invoke-virtual {p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cancel_trip_driver_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarCancelTrip;

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mCarCancelTrip:Lcom/didi/car/model/CarCancelTrip;

    .line 59
    new-instance v0, Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarCancelTripView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->carCancelTripView:Lcom/didi/car/ui/component/CarCancelTripView;

    .line 60
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->carCancelTripView:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->carCancelTripView:Lcom/didi/car/ui/component/CarCancelTripView;

    invoke-static {v0}, Lcom/didi/car/helper/CarCancelTripViewHelper;->setCarCancelTripView(Lcom/didi/car/ui/component/CarCancelTripView;)V

    .line 62
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->setTitleBar()V

    .line 64
    invoke-direct {p0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->setReasonsContent()V

    .line 65
    iget-object v0, p0, Lcom/didi/car/ui/activity/CarCancelTripActivity;->mCarCancelTrip:Lcom/didi/car/model/CarCancelTrip;

    invoke-virtual {v0}, Lcom/didi/car/model/CarCancelTrip;->getImageNumber()I

    move-result v0

    invoke-static {v0}, Lcom/didi/car/helper/CarCancelTripViewHelper;->setCarAnimView(I)V

    .line 67
    sput-object p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 86
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->removeActivity(Landroid/app/Activity;)V

    .line 87
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 78
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->unregisterHomeReceiver(Landroid/content/Context;)V

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 80
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 72
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->registerHomeReceiver(Landroid/content/Context;)V

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 261
    invoke-static {}, Lcom/didi/car/helper/CarCancelTripViewHelper;->stopCarImgAnim()V

    .line 262
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 255
    invoke-static {}, Lcom/didi/car/helper/CarCancelTripViewHelper;->startCarImgAnim()V

    .line 256
    return-void
.end method
