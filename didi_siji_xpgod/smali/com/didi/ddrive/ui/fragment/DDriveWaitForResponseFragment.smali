.class public Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "DDriveWaitForResponseFragment.java"


# static fields
.field private static final DRIVER_COUNT:I = 0x5

.field private static LOADING_TIME:I = 0x0

.field private static final MSG_QUERY_ACCEPTED_DRIVER:I = 0x7

.field private static final MSG_QUERY_ORDER_STATE:I = 0x8

.field private static MSG_TYPE_CANCEL:I = 0x0

.field private static MSG_TYPE_LOADING:I = 0x0

.field private static MSG_TYPE_PK:I = 0x0

.field private static final MSG_UPDATE_WAITING_COUNT:I = 0x2

.field public static final ORDER_WAIT_ANSWER:I = 0x0

.field public static final QUERY_INTERVAL:I = 0x2710

.field public static final QUERY_INTERVAL_MINUTE:I = 0x7530

.field public static final QUERY_INTERVAL_NORMAL:I = 0x2710

.field private static pkDriverNums:I

.field private static pkWait:I


# instance fields
.field private bar:Lcom/didi/common/ui/component/DrawerView;

.field cancelClickListener:Landroid/view/View$OnClickListener;

.field private dialog:Lcom/didi/common/helper/DialogHelper;

.field private dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private extrLog:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field infoListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private isPlayed:Z

.field private mBiLogOid:Ljava/lang/String;

.field private mCancelManager:Lcom/didi/ddrive/managers/CancelManager;

.field private mContext:Landroid/content/Context;

.field private mDrivers:I

.field private mIsFromRecovery:Z

.field private mSecondTime:I

.field private mView:Landroid/view/View;

.field private mWaitingOrderManager:Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;

.field private myTimer:Ljava/util/Timer;

.field private order:Lcom/didi/ddrive/model/DDriveOrder;

.field private pkMsg:Ljava/lang/String;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

.field private subStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x64

    sput v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->MSG_TYPE_PK:I

    .line 84
    const/16 v0, 0x65

    sput v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->MSG_TYPE_LOADING:I

    .line 85
    const/16 v0, 0x66

    sput v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->MSG_TYPE_CANCEL:I

    .line 100
    const/16 v0, 0x12c

    sput v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->LOADING_TIME:I

    .line 101
    const/4 v0, 0x0

    sput v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->pkDriverNums:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 74
    iput v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mDrivers:I

    .line 81
    iput-boolean v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mIsFromRecovery:Z

    .line 94
    iput v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->subStatus:I

    .line 95
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->pkMsg:Ljava/lang/String;

    .line 103
    iput-boolean v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->isPlayed:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;

    .line 112
    iput v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mSecondTime:I

    .line 120
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$1;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->handler:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$2;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 366
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$5;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->cancelClickListener:Landroid/view/View$OnClickListener;

    .line 410
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$6;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 458
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$7;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->infoListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->MSG_TYPE_PK:I

    return v0
.end method

.method static synthetic access$100(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mSecondTime:I

    return v0
.end method

.method static synthetic access$1100(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mWaitingOrderManager:Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->extrLog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->showCancelDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->doCancel()V

    return-void
.end method

.method static synthetic access$1600(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Lcom/didi/ddrive/model/DDriveOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->order:Lcom/didi/ddrive/model/DDriveOrder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->closeBar(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->subStatus:I

    return v0
.end method

.method static synthetic access$400(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->pkMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->pkDriverNums:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->pkWait:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->MSG_TYPE_LOADING:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->MSG_TYPE_CANCEL:I

    return v0
.end method

.method static synthetic access$900(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    return-object v0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->closeBar(Z)V

    .line 356
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 357
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->closeCancelDialog()V

    .line 358
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 359
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->clearYuying()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->isPlayed:Z

    .line 361
    return-void
.end method

.method private clearYuying()V
    .locals 2

    .prologue
    .line 471
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 472
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->handler:Landroid/os/Handler;

    sget v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->MSG_TYPE_PK:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->handler:Landroid/os/Handler;

    sget v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->MSG_TYPE_LOADING:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    const/16 v0, 0x12c

    sput v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->LOADING_TIME:I

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->subStatus:I

    .line 476
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 479
    :cond_0
    return-void
.end method

.method private closeBar(Z)V
    .locals 2
    .parameter "clean"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->close()V

    .line 278
    :cond_0
    if-eqz p1, :cond_1

    .line 279
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->order:Lcom/didi/ddrive/model/DDriveOrder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/didi/ddrive/model/DDriveOrder;->carServiceMessage:Lcom/didi/car/model/CarServiceMessage;

    .line 283
    :cond_1
    return-void
.end method

.method private closeCancelDialog()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 405
    :cond_0
    return-void
.end method

.method private doCancel()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 441
    const-string v1, "pdjxwfr_02_ck"

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->order:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v4}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b021f

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v6, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 443
    new-instance v0, Lcom/didi/ddrive/net/http/response/Item;

    invoke-direct {v0}, Lcom/didi/ddrive/net/http/response/Item;-><init>()V

    .line 446
    .local v0, reason:Lcom/didi/ddrive/net/http/response/Item;
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mCancelManager:Lcom/didi/ddrive/managers/CancelManager;

    const-string v2, ""

    invoke-virtual {v1, v0, v2, v5}, Lcom/didi/ddrive/managers/CancelManager;->cancelOrder(Lcom/didi/ddrive/net/http/response/Item;Ljava/lang/String;I)V

    .line 447
    return-void
.end method

.method private initData()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 221
    sget-object v1, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->order:Lcom/didi/ddrive/model/DDriveOrder;

    .line 222
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->order:Lcom/didi/ddrive/model/DDriveOrder;

    iget v1, v1, Lcom/didi/ddrive/model/DDriveOrder;->channel:I

    if-ne v1, v5, :cond_0

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/ddrive/net/tcp/DDriveTcpService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 225
    const-string v1, "com.funcity.taxi.passenger.START_DRIVER_TCP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 229
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->order:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v1}, Lcom/didi/ddrive/model/DDriveOrder;->getStartLatDouble()D

    move-result-wide v1

    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->order:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v3}, Lcom/didi/ddrive/model/DDriveOrder;->getStartLngDouble()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setMapCenterByPointNotZoom(DD)V

    .line 230
    new-instance v1, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mWaitingOrderManager:Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;

    .line 231
    new-instance v1, Lcom/didi/ddrive/managers/CancelManager;

    invoke-direct {v1}, Lcom/didi/ddrive/managers/CancelManager;-><init>()V

    iput-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mCancelManager:Lcom/didi/ddrive/managers/CancelManager;

    .line 233
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->restoreCreateTimeFromSp()V

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[order_id_g="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->order:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 239
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 242
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->handler:Landroid/os/Handler;

    const/16 v2, 0x8

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 243
    return-void
.end method

.method private initDialog()Z
    .locals 2

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 382
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 383
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFromOrderRecovery()Z
    .locals 3

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private redictArrivelFragment()V
    .locals 3

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->clear()V

    .line 329
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToArrivelMapView()V

    .line 330
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 331
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 332
    const-string v0, "ToArrivalFragment"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mWaitingOrderManager:Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02af

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/ddrive/managers/WaitingOrderAcceptManager;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showDDriveWaitForArrivalFragment()V

    .line 336
    return-void
.end method

.method private redictFragment()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->closeBar(Z)V

    .line 341
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->clear()V

    .line 342
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToResendMapView()V

    .line 343
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mIsFromRecovery:Z

    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showDDriveResendFragment()V

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method

.method private redictRealtimeFragment()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->clear()V

    .line 323
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 324
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 325
    return-void
.end method

.method private restoreCreateTimeFromSp()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 246
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getOrderCreateTime()Lcom/didi/ddrive/model/OrderCreateTime;

    move-result-object v0

    .line 248
    .local v0, orderCreateTime:Lcom/didi/ddrive/model/OrderCreateTime;
    if-eqz v0, :cond_0

    .line 249
    iget-wide v3, v0, Lcom/didi/ddrive/model/OrderCreateTime;->oid:J

    iget-object v5, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->order:Lcom/didi/ddrive/model/DDriveOrder;

    iget-wide v5, v5, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/didi/ddrive/model/OrderCreateTime;->createTime:J

    sub-long v1, v3, v5

    .line 251
    .local v1, time:J
    const-string v3, "morning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8ba2\u5355\u5f00\u59cb\u7684\u65f6\u95f4\u4e3a==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-long v5, v1, v7

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    div-long v3, v1, v7

    long-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->setStartTime(I)V

    .line 255
    .end local v1           #time:J
    :cond_0
    return-void
.end method

.method private setBarListener()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v1, 0x7f08054b

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$3;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$3;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v1, 0x7f080611

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$4;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment$4;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    return-void
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 287
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 290
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b057a

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 291
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b0139

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 292
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    .line 293
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setEnabled(Z)V

    .line 294
    return-void
.end method

.method private showCancelDialog()V
    .locals 5

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0141

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 392
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b013d

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0140

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 395
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 397
    const-string v0, "pdjxwfr_00_ck"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->order:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v4}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

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

    goto :goto_0
.end method

.method private showInfoDialog(Lcom/didi/common/model/BaseObject;)V
    .locals 3
    .parameter "base"

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03fb

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->infoListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 455
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mContext:Landroid/content/Context;

    .line 194
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->isFromOrderRecovery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mIsFromRecovery:Z

    .line 195
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mIsFromRecovery:Z

    if-eqz v0, :cond_0

    .line 198
    :cond_0
    const v0, 0x7f030073

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mView:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 308
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 299
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 300
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 302
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->closeBar(Z)V

    .line 303
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/AcceptedDriverCountEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 496
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/AcceptedDriverCountEvent;->toast:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    const-string v0, "morning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u63a5\u5355\u53f8\u673a\u6570\u662f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/didi/ddrive/eventbus/event/AcceptedDriverCountEvent;->num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "toast is ==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/AcceptedDriverCountEvent;->toast:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/ddrive/eventbus/event/AcceptedDriverCountEvent;->toast:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 502
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/CancelEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 510
    iget-boolean v0, p1, Lcom/didi/ddrive/eventbus/event/CancelEvent;->success:Z

    if-eqz v0, :cond_1

    .line 511
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 512
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->closeBar(Z)V

    .line 513
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->redictRealtimeFragment()V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 516
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->initDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const-string v2, "\u53d6\u6d88\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03fb

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->infoListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 523
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->redictArrivelFragment()V

    .line 536
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->ACCEPT:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 537
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/OrderRecoveryEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->clear()V

    .line 550
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToArrivelMapView()V

    .line 551
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 552
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 553
    const-string v0, "ToArrivalFragment"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/didi/common/notification/CommonNotification;->notification()V

    .line 555
    invoke-static {}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->getInstance()Lcom/didi/ddrive/managers/OrderRecoveryManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->doRecoveryWithOrderState(I)V

    .line 556
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/OrderStatusChangedEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 541
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/OrderStatusChangedEvent;->currentStatus:Lcom/didi/ddrive/model/OrderState;

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->ACCEPT:Lcom/didi/ddrive/model/OrderState;

    if-eq v0, v1, :cond_0

    .line 542
    invoke-static {}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->getInstance()Lcom/didi/ddrive/managers/OrderRecoveryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->order:Lcom/didi/ddrive/model/DDriveOrder;

    iget-wide v1, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    invoke-virtual {v0, v1, v2}, Lcom/didi/ddrive/managers/OrderRecoveryManager;->queryOrderDetail(J)V

    .line 544
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/OrderTimeoutEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 565
    const-string v0, "morning"

    const-string v1, "OrderTimeoutEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->redictFragment()V

    .line 567
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->TIMEOUT:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 568
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 205
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 206
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->initData()V

    .line 207
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 208
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showWaitMapView()V

    .line 209
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->setTitleBar()V

    .line 210
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/DrawerView;

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    .line 211
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->setBarListener()V

    .line 212
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->setRedirectListener()V

    .line 213
    invoke-static {}, Lcom/didi/ddrive/managers/StreamMessageManager;->getInstance()Lcom/didi/ddrive/managers/StreamMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/StreamMessageManager;->cleare()V

    .line 214
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mIsFromRecovery:Z

    if-eqz v0, :cond_0

    .line 217
    :cond_0
    return-void
.end method

.method public setStartTime(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 169
    iput p1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mSecondTime:I

    .line 170
    return-void
.end method

.method public updateWaitingTime()V
    .locals 4

    .prologue
    .line 173
    iget v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mSecondTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mSecondTime:I

    .line 174
    const v0, 0x7f0b0314

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;->mSecondTime:I

    invoke-static {v3}, Lcom/didi/common/util/Utils;->second2Min(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updatePushDriveTime(Ljava/lang/String;)V

    .line 177
    return-void
.end method
