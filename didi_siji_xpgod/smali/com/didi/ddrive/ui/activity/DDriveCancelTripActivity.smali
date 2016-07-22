.class public Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;
.super Landroid/app/Activity;
.source "DDriveCancelTripActivity.java"


# static fields
.field public static final DRIVER_CANCEL_TYPE_HAS_FEE_TO_PAY:I = 0x1

.field public static final DRIVER_CANCEL_TYPE_NOT_HAS_FEE_TO_CLOSE:I = 0x3

.field public static final DRIVER_CANCEL_TYPE_NOT_HAS_FEE_TO_RESEND:I = 0x2

.field public static final EXTRA_DRIVER_CANCEL_TYPE:Ljava/lang/String; = "extra_driver_cancel_type"

.field public static final EXTRA_WAIT_FEE:Ljava/lang/String; = "extra_wait_fee"


# instance fields
.field private carCancelTripView:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

.field private dialog:Lcom/didi/common/helper/DialogHelper;

.field private mCancelManager:Lcom/didi/ddrive/managers/CancelManager;

.field private mCancelTripTile:Ljava/lang/String;

.field private mCancelTripType:I

.field private mCarCancelTrip:Lcom/didi/ddrive/model/CancelReasonBean;

.field private mContent:Ljava/lang/String;

.field private mListener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;

.field private mRemark:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 266
    new-instance v0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$4;-><init>(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mListener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelTripType:I

    return v0
.end method

.method static synthetic access$100(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mRemark:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mRemark:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->doConfirm(I)V

    return-void
.end method

.method private defaultReason()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
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

    .line 179
    .local v0, strSplit:[Ljava/lang/String;
    return-object v0
.end method

.method private doConfirm(I)V
    .locals 5
    .parameter "type"

    .prologue
    .line 306
    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mContent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    const v2, 0x7f0b048b

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 322
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->getCurrentResonIndex()I

    move-result v1

    .line 310
    .local v1, index:I
    const/4 v0, 0x0

    .line 311
    .local v0, currentSelectedItem:Lcom/didi/ddrive/net/http/response/Item;
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCarCancelTrip:Lcom/didi/ddrive/model/CancelReasonBean;

    iget-object v2, v2, Lcom/didi/ddrive/model/CancelReasonBean;->reasons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCarCancelTrip:Lcom/didi/ddrive/model/CancelReasonBean;

    iget-object v2, v2, Lcom/didi/ddrive/model/CancelReasonBean;->reasons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentSelectedItem:Lcom/didi/ddrive/net/http/response/Item;
    check-cast v0, Lcom/didi/ddrive/net/http/response/Item;

    .line 314
    .restart local v0       #currentSelectedItem:Lcom/didi/ddrive/net/http/response/Item;
    :cond_1
    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 316
    new-instance v0, Lcom/didi/ddrive/net/http/response/Item;

    .end local v0           #currentSelectedItem:Lcom/didi/ddrive/net/http/response/Item;
    invoke-direct {v0}, Lcom/didi/ddrive/net/http/response/Item;-><init>()V

    .line 317
    .restart local v0       #currentSelectedItem:Lcom/didi/ddrive/net/http/response/Item;
    const/16 v2, 0x64

    iput v2, v0, Lcom/didi/ddrive/net/http/response/Item;->id:I

    .line 319
    :cond_2
    iget-object v2, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelManager:Lcom/didi/ddrive/managers/CancelManager;

    iget-object v3, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mRemark:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/didi/ddrive/managers/CancelManager;->cancelOrder(Lcom/didi/ddrive/net/http/response/Item;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private finishWithResult(Lcom/didi/car/model/CarCancelTrip;)V
    .locals 2
    .parameter "cancelTrip"

    .prologue
    .line 350
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 351
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cancel_trip_content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 352
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->setResult(ILandroid/content/Intent;)V

    .line 353
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->onBackPressed()V

    .line 354
    return-void
.end method

.method private removeLoadingDialog()V
    .locals 0

    .prologue
    .line 346
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 347
    return-void
.end method

.method private setReasonsContent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 154
    iget-object v3, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCarCancelTrip:Lcom/didi/ddrive/model/CancelReasonBean;

    iget-object v1, v3, Lcom/didi/ddrive/model/CancelReasonBean;->reasons:Ljava/util/List;

    .line 155
    .local v1, items:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/http/response/Item;>;"
    if-nez v1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 159
    .local v2, textArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 160
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/ddrive/net/http/response/Item;

    iget v3, v3, Lcom/didi/ddrive/net/http/response/Item;->id:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 159
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/ddrive/net/http/response/Item;

    iget-object v3, v3, Lcom/didi/ddrive/net/http/response/Item;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 164
    const-string v3, "morning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "items[i] is ==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 166
    :cond_2
    if-nez v2, :cond_3

    .line 167
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->defaultReason()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mListener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;

    invoke-static {v6, v3, v4}, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->setCancelTripReasons([Ljava/lang/String;[Ljava/lang/String;Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;)V

    .line 171
    :goto_3
    const-string v3, "morning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCancelTripTile is =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelTripTile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelTripTile:Ljava/lang/String;

    invoke-static {v3}, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->setCancelTripNotice(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v3, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mListener:Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;

    invoke-static {v6, v2, v3}, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->setCancelTripReasons([Ljava/lang/String;[Ljava/lang/String;Lcom/didi/ddrive/ui/component/DDriveCancelTripView$CancelTripListener;)V

    goto :goto_3
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 129
    invoke-static {}, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b0575

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 130
    invoke-static {}, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f020170

    new-instance v2, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$1;

    invoke-direct {v2, p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$1;-><init>(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 147
    invoke-static {}, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 148
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 369
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

    .line 371
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-static {}, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->hideInptuMethod()V

    .line 119
    sput-object v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    .line 120
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 122
    iput-object v1, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->finish()V

    .line 125
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->overridePendingTransition(II)V

    .line 126
    return-void
.end method

.method public onCancelTripConfirmed(Lcom/didi/car/model/CarCancelTrip;)V
    .locals 3
    .parameter "cancelTrip"

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->removeLoadingDialog()V

    .line 326
    invoke-virtual {p1}, Lcom/didi/car/model/CarCancelTrip;->getErrorCode()I

    move-result v0

    .line 327
    .local v0, errorCode:I
    invoke-virtual {p1}, Lcom/didi/car/model/CarCancelTrip;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, errorMsg:Ljava/lang/String;
    const/16 v2, 0x40b

    if-ne v0, v2, :cond_2

    .line 330
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->showTip(Ljava/lang/String;)V

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->finish()V

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 335
    :cond_2
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->finishWithResult(Lcom/didi/car/model/CarCancelTrip;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "morning"

    const-string v1, "savedInstanceState"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 79
    :cond_0
    new-instance v0, Lcom/didi/ddrive/managers/CancelManager;

    invoke-direct {v0}, Lcom/didi/ddrive/managers/CancelManager;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelManager:Lcom/didi/ddrive/managers/CancelManager;

    .line 80
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->addAcitivty(Landroid/app/Activity;)V

    .line 81
    const v0, 0x7f04001b

    const v1, 0x7f04001c

    invoke-virtual {p0, v0, v1}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->overridePendingTransition(II)V

    .line 82
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cancel_trip_driver_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/CancelReasonBean;

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCarCancelTrip:Lcom/didi/ddrive/model/CancelReasonBean;

    .line 83
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cancel_trip_driver_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelTripTile:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cancel_trip_driver_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->mCancelTripType:I

    .line 86
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/component/DDriveCancelTripView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->carCancelTripView:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    .line 87
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->carCancelTripView:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->setContentView(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->carCancelTripView:Lcom/didi/ddrive/ui/component/DDriveCancelTripView;

    invoke-static {v0}, Lcom/didi/ddrive/helper/DDriveCancelTripViewHelper;->setCarCancelTripView(Lcom/didi/ddrive/ui/component/DDriveCancelTripView;)V

    .line 89
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->setTitleBar()V

    .line 91
    invoke-direct {p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->setReasonsContent()V

    .line 94
    sput-object p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    .line 95
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 112
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 113
    invoke-static {}, Lcom/didi/async/task/ActivityController;->getInstance()Lcom/didi/async/task/ActivityController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/async/task/ActivityController;->removeActivity(Landroid/app/Activity;)V

    .line 114
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/CancelEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 183
    const/4 v1, 0x0

    sput-object v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    .line 184
    iget-boolean v1, p1, Lcom/didi/ddrive/eventbus/event/CancelEvent;->success:Z

    if-eqz v1, :cond_0

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_wait_fee"

    iget-wide v2, p1, Lcom/didi/ddrive/eventbus/event/CancelEvent;->waitFee:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 187
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 188
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->setResult(ILandroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->finish()V

    .line 193
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 191
    :cond_0
    const v1, 0x7f0b02ac

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverCancelNoFeeEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 196
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v2

    sget-object v3, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v2, v3}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 197
    const/4 v2, 0x0

    sput-object v2, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    .line 198
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v1, resultIntent:Landroid/content/Intent;
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    const-string v2, "morning"

    const-string v3, "\u53d6\u6d88\u9875\u9762 \u53f8\u673a\u53d6\u6d88 \u65e0\u7b49\u5019\u8d39"

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 202
    const v2, 0x7f0b0301

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 204
    const v2, 0x7f0b043d

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(I)V

    .line 205
    const v2, 0x7f0b0303

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b02ff

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 212
    new-instance v2, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$2;-><init>(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 230
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 231
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 234
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v2

    sget-object v3, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v2, v3}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 235
    const/4 v2, 0x0

    sput-object v2, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    .line 236
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v1, resultIntent:Landroid/content/Intent;
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 238
    .local v0, mDialogHelper:Lcom/didi/common/helper/DialogHelper;
    const-string v2, "morning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53d6\u6d88\u9875\u9762  \u53f8\u673a\u53d6\u6d88 \u6709\u7b49\u5019\u8d39+\u201cevent.waitTime is =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;->waitTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "event.waitFee is =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;->waitFee:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 241
    const v2, 0x7f0b0302

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 243
    const v2, 0x7f0b0303

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0300

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;->waitTime:J

    long-to-float v6, v6

    invoke-static {v6}, Lcom/didi/common/util/Utils;->transferTime(F)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p1, Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;->waitFee:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 253
    new-instance v2, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity$3;-><init>(Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 263
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 264
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 105
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->unregisterHomeReceiver(Landroid/content/Context;)V

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-static {p0}, Lcom/didi/common/helper/HomeKeyHelper;->registerHomeReceiver(Landroid/content/Context;)V

    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 364
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 359
    return-void
.end method
