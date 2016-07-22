.class public Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "DDriveWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$11;
    }
.end annotation


# static fields
.field public static final DRIVER_CANCEL_QUERY_BILL:Ljava/lang/String; = "driver_cancel_query_bill"

.field private static final MARK_COUNT_DOWN:I = 0x3

.field private static final MSG_QUERY_DRIVER_POSITION:I = 0x7

.field private static final MSG_QUERY_DRIVER_WAITING_INFO:I = 0x8

.field private static final MSG_QUERY_DRIVING_INFO:I = 0xa

.field private static final MSG_QUERY_ORDER_STATE:I = 0x9

.field private static final MSG_SHOW_SHARE_DIALOG:I = 0xb

.field public static final REQUEST_CODE_CANCEL_TRIP:I = 0x2

.field public static final REQUEST_CODE_SELECT_COUPON:I = 0x3

.field public static final SCENE_DRIVER_COMING:I = 0x1

.field public static final SCENE_DRIVER_WAITING:I = 0x2

.field public static final SCENE_DRIVER_WAITING_WITH_FEE:I = 0x3

.field public static final SERVICE_TYPE_CANCEL_TRIP:I = 0x20

.field public static final SERVICE_TYPE_KEY:Ljava/lang/String; = "service_type"

.field public static final SERVICE_TYPE_NORMAL:I = 0x10

.field public static final SERVICE_TYPE_PAY:I = 0x40

.field public static final SERVICE_TYPE_PAY_OR_PAID_EVALUATE:I = 0x30

.field public static final STATE_CANCEL_TRIP:I = 0x1

.field public static final STATE_CANCEL_TRIP_CONFIRM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DDriveWaitForArrivalFragment"

.field private static final TAG_COST_DETAIL:Ljava/lang/String; = "tag_cost_detail"

.field public static cancelTripActivity:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;


# instance fields
.field private backEventStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBackBlock:I

.field private mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;

.field private mContext:Landroid/content/Context;

.field private mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

.field private mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasGetShareConfig:Z

.field private mHasGetShareContent:Z

.field private mHasJumpToCancelTripActivity:Z

.field private mHasShowNotification:Z

.field private mMapZoom:Z

.field private mOrder:Lcom/didi/ddrive/model/DDriveOrder;

.field private mSceneFlag:I

.field private mShareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;

.field private mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

.field private mShareManager:Lcom/didi/ddrive/managers/ShareManager;

.field private mShowedShareDialog:Z

.field private mTripCancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 123
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 169
    iput-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    .line 189
    iput v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mSceneFlag:I

    .line 198
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$1;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShowedShareDialog:Z

    .line 1592
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->backEventStack:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/managers/DriverComingManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/model/DDriveOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showShareDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    return v0
.end method

.method static synthetic access$500(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->doShare()V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->driverCancelTripNoFeeResend()V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showClosedView()V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showPayedView()V

    return-void
.end method

.method private cancelTripNoFeeClose(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 752
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "cancelTripNoFeeClose"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 754
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showComplaintEntrance()V

    .line 755
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showCancelTripView(I)V

    .line 756
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriverComingManager;->removeOverlays()V

    .line 406
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->removeChangeListener()V

    .line 409
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->hideLocation()V

    .line 411
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->removeMapListener()V

    .line 412
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->resetMap()V

    .line 413
    invoke-static {}, Lcom/didi/frame/log/helper/HomeBackAppHelper;->stop()V

    .line 414
    return-void
.end method

.method private doEvaluateSubmit(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "content"
    .parameter "level"
    .parameter "type"
    .parameter "typeText"

    .prologue
    .line 1381
    const-string v0, "pdjxcomment_14_ck"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

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

    .line 1383
    const v0, 0x7f0b0335

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 1384
    invoke-static {}, Lcom/didi/ddrive/managers/CommentManager;->getInstance()Lcom/didi/ddrive/managers/CommentManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Lcom/didi/ddrive/managers/CommentManager;->submitComment(ILjava/lang/String;Ljava/lang/String;)V

    .line 1385
    return-void
.end method

.method private doShare()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 617
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->isShareAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 650
    :goto_0
    return-void

    .line 620
    :cond_0
    new-instance v0, Lcom/didi/car/model/CarPayShare;

    invoke-direct {v0}, Lcom/didi/car/model/CarPayShare;-><init>()V

    .line 621
    .local v0, carPayShare:Lcom/didi/car/model/CarPayShare;
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareConfig;->layerImageUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/didi/car/model/CarPayShare;->mIconUrl:Ljava/lang/String;

    .line 622
    iput v3, v0, Lcom/didi/car/model/CarPayShare;->mShareType:I

    .line 623
    new-instance v1, Lcom/didi/car/model/CarShareCouponInfo;

    invoke-direct {v1}, Lcom/didi/car/model/CarShareCouponInfo;-><init>()V

    .line 624
    .local v1, carShareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;
    const/4 v2, 0x2

    iput v2, v1, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    .line 625
    iput v3, v1, Lcom/didi/car/model/CarShareCouponInfo;->pinkOpen:I

    .line 626
    iput v3, v1, Lcom/didi/car/model/CarShareCouponInfo;->open:I

    .line 627
    iput v3, v1, Lcom/didi/car/model/CarShareCouponInfo;->displayCoupon:I

    .line 628
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent;->weixing:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;->url:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarShareCouponInfo;->shareUrl:Ljava/lang/String;

    .line 629
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent;->weixing:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;->iconUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarShareCouponInfo;->wxShareLogo:Ljava/lang/String;

    .line 630
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent;->weixing:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;->subTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarShareCouponInfo;->wxShareText:Ljava/lang/String;

    .line 631
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent;->weixing:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarShareCouponInfo;->wxShareTitle:Ljava/lang/String;

    .line 633
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent;->weixingFriendster:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinFriends;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent$WeixinFriends;->iconUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendLogo:Ljava/lang/String;

    .line 634
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent;->weixingFriendster:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinFriends;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent$WeixinFriends;->subTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendText:Ljava/lang/String;

    .line 635
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent;->weixingFriendster:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinFriends;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent$WeixinFriends;->title:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarShareCouponInfo;->wxFriendTitle:Ljava/lang/String;

    .line 638
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent;->sinaWeibo:Lcom/didi/ddrive/net/http/response/ShareContent$Weibo;

    if-eqz v2, :cond_1

    .line 640
    iput-boolean v3, v1, Lcom/didi/car/model/CarShareCouponInfo;->isOpenWeibo:Z

    .line 641
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent;->sinaWeibo:Lcom/didi/ddrive/net/http/response/ShareContent$Weibo;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent$Weibo;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarShareCouponInfo;->weiboContent:Ljava/lang/String;

    .line 642
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent;->sinaWeibo:Lcom/didi/ddrive/net/http/response/ShareContent$Weibo;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent$Weibo;->imgurl:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarShareCouponInfo;->weiboLogo:Ljava/lang/String;

    .line 643
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent;->sinaWeibo:Lcom/didi/ddrive/net/http/response/ShareContent$Weibo;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareContent$Weibo;->imgurl:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarShareCouponInfo;->weiboUrl:Ljava/lang/String;

    .line 648
    :cond_1
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v2, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showShareTicketView(Lcom/didi/car/model/CarShareCouponInfo;)V

    goto :goto_0
.end method

.method private doTripCancel()V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mSceneFlag:I

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/didi/ddrive/managers/DriverComingManager;->performGetReason(ILandroid/content/Context;)V

    .line 468
    return-void
.end method

.method private driverCancelTripNoFeeResend()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 759
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "driverCancelTripNoFeeResend"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    sget-object v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;->finish()V

    .line 762
    sput-object v3, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->onConsultSubmitSucceed()V

    .line 765
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->isAppTopFront(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->clear()V

    .line 769
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b04bd

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 772
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriveConfirmManager;->sendOrder()V

    .line 774
    :cond_1
    return-void
.end method

.method private initContentView()V
    .locals 2

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->initMapView()V

    .line 435
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->initLocationView()V

    .line 436
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    .line 437
    .local v0, controllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;
    invoke-virtual {v0, p0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setListener(Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView$DDriveControllerListener;)V

    .line 438
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->isFromOrderHistory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setFromHistory(Z)V

    .line 444
    :cond_0
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 446
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->isFromOrderHistory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    new-instance v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$2;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$2;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    .line 464
    :goto_0
    return-void

    .line 455
    :cond_1
    new-instance v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$3;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$3;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V

    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initLocationView()V
    .locals 1

    .prologue
    .line 492
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setBottomMargin(I)V

    .line 493
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$4;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 508
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->showLocation()V

    .line 509
    return-void
.end method

.method private initMapView()V
    .locals 0

    .prologue
    .line 512
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->addMapListener()V

    .line 513
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showMyLocationMarker()V

    .line 514
    return-void
.end method

.method private isFromOrderHistory()Z
    .locals 3

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "from"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShareAvailable()Z
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;

    invoke-virtual {v0}, Lcom/didi/ddrive/net/http/response/ShareConfig;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v0, v0, Lcom/didi/ddrive/net/http/response/ShareContent;->weixing:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v0, v0, Lcom/didi/ddrive/net/http/response/ShareContent;->weixing:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;

    invoke-virtual {v0}, Lcom/didi/ddrive/net/http/response/ShareContent$WeixinCircle;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v0, v0, Lcom/didi/ddrive/net/http/response/ShareContent;->weixingFriendster:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinFriends;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iget-object v0, v0, Lcom/didi/ddrive/net/http/response/ShareContent;->weixingFriendster:Lcom/didi/ddrive/net/http/response/ShareContent$WeixinFriends;

    invoke-virtual {v0}, Lcom/didi/ddrive/net/http/response/ShareContent$WeixinFriends;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeLoadingDialog()V
    .locals 0

    .prologue
    .line 1647
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1648
    return-void
.end method

.method private restoreByOrderState(Lcom/didi/ddrive/model/OrderState;)V
    .locals 5
    .parameter "orderState"

    .prologue
    const/4 v4, 0x7

    const/16 v3, 0x9

    .line 286
    const-string v0, "DDriveWaitForArrivalFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreByOrderState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$11;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    invoke-virtual {p1}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 289
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showCancelEntrance()V

    .line 290
    invoke-direct {p0, v4}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    .line 291
    invoke-direct {p0, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    goto :goto_0

    .line 295
    :pswitch_1
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showCancelEntrance()V

    .line 296
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    const v1, 0x7f0b0305

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, v4}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    .line 298
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    .line 299
    invoke-direct {p0, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    goto :goto_0

    .line 304
    :pswitch_2
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showComplaintEntrance()V

    .line 305
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    const v1, 0x7f0b0571

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, v4}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    .line 307
    invoke-direct {p0, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    .line 308
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    goto :goto_0

    .line 312
    :pswitch_3
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showComplaintEntrance()V

    .line 313
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-object v0, v0, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->restoreByPayState(Lcom/didi/ddrive/model/PayState;)V

    .line 314
    invoke-direct {p0, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    goto :goto_0

    .line 318
    :pswitch_4
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showComplaintEntrance()V

    .line 319
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget v0, v0, Lcom/didi/ddrive/model/DDriveOrder;->canceller:I

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-object v1, v1, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    invoke-direct {p0, v0, v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->restoreCancel(ILcom/didi/ddrive/model/PayState;)V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private restoreByPayState(Lcom/didi/ddrive/model/PayState;)V
    .locals 4
    .parameter "payState"

    .prologue
    .line 373
    const-string v0, "DDriveWaitForArrivalFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreByPayState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$11;->$SwitchMap$com$didi$ddrive$model$PayState:[I

    invoke-virtual {p1}, Lcom/didi/ddrive/model/PayState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 392
    :goto_0
    return-void

    .line 376
    :pswitch_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    const v1, 0x7f0b0150

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/PaymentEvent;

    invoke-direct {v1}, Lcom/didi/ddrive/eventbus/event/PaymentEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 380
    :pswitch_1
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->initWith(Lcom/didi/ddrive/model/OrderState;)V

    .line 381
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 382
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    const v1, 0x7f0b0574

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-wide v1, v1, Lcom/didi/ddrive/model/DDriveOrder;->payed:D

    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->isShareAvailable()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showPayedView(DZ)V

    goto :goto_0

    .line 386
    :pswitch_2
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->initWith(Lcom/didi/ddrive/model/OrderState;)V

    .line 387
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 388
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    const v1, 0x7f0b01b7

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    const v1, 0x7f0b0196

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showCancelTripView(I)V

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private restoreCancel(ILcom/didi/ddrive/model/PayState;)V
    .locals 5
    .parameter "canceller"
    .parameter "payState"

    .prologue
    const v4, 0x7f0b01b7

    .line 332
    const-string v1, "DDriveWaitForArrivalFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreCancel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    packed-switch p1, :pswitch_data_0

    .line 343
    const v0, 0x7f0b0196

    .line 346
    .local v0, res:I
    :goto_0
    sget-object v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$11;->$SwitchMap$com$didi$ddrive$model$PayState:[I

    invoke-virtual {p2}, Lcom/didi/ddrive/model/PayState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 365
    :goto_1
    return-void

    .line 337
    .end local v0           #res:I
    :pswitch_0
    const v0, 0x7f0b0196

    .line 338
    .restart local v0       #res:I
    goto :goto_0

    .line 340
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f0b015d

    .line 341
    .restart local v0       #res:I
    goto :goto_0

    .line 348
    :pswitch_2
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->initWith(Lcom/didi/ddrive/model/OrderState;)V

    .line 349
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 350
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-wide v2, v2, Lcom/didi/ddrive/model/DDriveOrder;->payed:D

    invoke-virtual {v1, v0, v2, v3}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showPaidCancelTripView(ID)V

    goto :goto_1

    .line 354
    :pswitch_3
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->initWith(Lcom/didi/ddrive/model/OrderState;)V

    .line 355
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 356
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v1, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showCancelTripView(I)V

    goto :goto_1

    .line 360
    :pswitch_4
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    const v2, 0x7f0b0150

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/didi/ddrive/eventbus/event/PaymentEvent;

    invoke-direct {v2}, Lcom/didi/ddrive/eventbus/event/PaymentEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 362
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    goto :goto_1

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 346
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private restoreOrderState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 481
    if-nez p1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    const-string v1, "order"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 486
    .local v0, orderObj:Ljava/io/Serializable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v1, :cond_0

    .line 487
    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    .end local v0           #orderObj:Ljava/io/Serializable;
    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    goto :goto_0
.end method

.method private sendEmptyMessage(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 953
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 954
    return-void
.end method

.method private sendEmptyMessage(IJ)V
    .locals 1
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 957
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 958
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 959
    return-void
.end method

.method private showCancelEntrance()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    const v1, 0x7f0b013b

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitleRight(I)V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    .line 276
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    iget-boolean v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTripCancel(Z)V

    .line 277
    return-void
.end method

.method private showCanceledAndPayedView()V
    .locals 5

    .prologue
    .line 1245
    const-string v2, "DDriveWaitForArrivalFragment"

    const-string v3, "showCanceledAndPayedView"

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showComplaintEntrance()V

    .line 1247
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/payment/PaymentManager;->getOrderBill()Lcom/didi/ddrive/net/http/response/OrderBill;

    move-result-object v0

    .line 1248
    .local v0, bill:Lcom/didi/ddrive/net/http/response/OrderBill;
    const v1, 0x7f0b0196

    .line 1249
    .local v1, res:I
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget v2, v2, Lcom/didi/ddrive/model/DDriveOrder;->canceller:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1250
    const v1, 0x7f0b015d

    .line 1252
    :cond_0
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    iget-wide v3, v0, Lcom/didi/ddrive/net/http/response/OrderBill;->totalMoney:D

    invoke-virtual {v2, v1, v3, v4}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showPaidCancelTripView(ID)V

    .line 1253
    return-void
.end method

.method private showClosedView()V
    .locals 2

    .prologue
    .line 855
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "showClosedView"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget v0, v0, Lcom/didi/ddrive/model/DDriveOrder;->canceller:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 860
    const v0, 0x7f0b015d

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripNoFeeClose(I)V

    .line 864
    :goto_0
    return-void

    .line 862
    :cond_1
    const v0, 0x7f0b0196

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripNoFeeClose(I)V

    goto :goto_0
.end method

.method private showComplaintEntrance()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitleRight(I)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    .line 282
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    iget-boolean v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTripCancel(Z)V

    .line 283
    return-void
.end method

.method private showLoadingDialog(I)V
    .locals 4
    .parameter "msgId"

    .prologue
    .line 1639
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1640
    .local v0, content:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 1641
    return-void
.end method

.method private showPayAlert(Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 1071
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 1072
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 1073
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 1075
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const-string v1, ""

    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->icon:Lcom/didi/common/ui/component/CommonDialog$IconType;

    if-nez v0, :cond_1

    .line 1078
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 1082
    :goto_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    new-instance v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$9;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 1097
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 1098
    return-void

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p1, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->icon:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    goto :goto_0
.end method

.method private showPayedView()V
    .locals 5

    .prologue
    .line 1225
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v0

    .line 1227
    .local v0, orderState:Lcom/didi/ddrive/model/OrderState;
    sget-object v1, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    if-ne v0, v1, :cond_0

    .line 1228
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget v1, v1, Lcom/didi/ddrive/model/DDriveOrder;->canceller:I

    if-nez v1, :cond_2

    .line 1229
    const-string v1, "DDriveWaitForArrivalFragment"

    const-string v2, "showPayedView"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/payment/PaymentManager;->getOrderBill()Lcom/didi/ddrive/net/http/response/OrderBill;

    move-result-object v2

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/OrderBill;->totalMoney:D

    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->isShareAvailable()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showPayedView(DZ)V

    .line 1233
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->isShareAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;

    iget v2, v2, Lcom/didi/ddrive/net/http/response/ShareConfig;->popLayerTime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(IJ)V

    goto :goto_0

    .line 1239
    :cond_2
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showCanceledAndPayedView()V

    goto :goto_0
.end method

.method private showShareDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 653
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "showShareDialog"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v0, "pdjxcomment_11_ck"

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

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

    .line 656
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShowedShareDialog:Z

    if-eqz v0, :cond_0

    .line 675
    :goto_0
    return-void

    .line 659
    :cond_0
    iput-boolean v5, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShowedShareDialog:Z

    .line 660
    const-string v0, "morning"

    const-string v1, "showShareDialog method is called"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 662
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 663
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;

    iget-object v1, v1, Lcom/didi/ddrive/net/http/response/ShareConfig;->shareButtonSend:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;

    iget-object v1, v1, Lcom/didi/ddrive/net/http/response/ShareConfig;->shareButtonLater:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;

    iget-object v1, v1, Lcom/didi/ddrive/net/http/response/ShareConfig;->shareTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/ShareConfig;->shareText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->COUPON:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 667
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    new-instance v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$5;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$5;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 674
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private zoomThreeMarkerInMap(DD)V
    .locals 6
    .parameter "lat"
    .parameter "lng"

    .prologue
    .line 531
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 532
    .local v0, driverLatLng:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;>;"
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v2}, Lcom/didi/ddrive/model/DDriveOrder;->getStartLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    const-string v2, "morning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list size is ==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v4}, Lcom/didi/ddrive/model/DDriveOrder;->getStartLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v2, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1, v2}, Lcom/didi/map/ZoomManager;->zoomToSpan(Ljava/util/List;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 540
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 1257
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1258
    packed-switch p1, :pswitch_data_0

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1260
    :pswitch_0
    const-string v3, "morning"

    const-string v4, "onActivityResult is called"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iput-boolean v7, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasJumpToCancelTripActivity:Z

    .line 1262
    const/4 v3, -0x1

    if-ne v3, p2, :cond_0

    .line 1263
    if-eqz p3, :cond_1

    .line 1264
    const-string v3, "extra_wait_fee"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1266
    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iput v8, v3, Lcom/didi/ddrive/model/DDriveOrder;->canceller:I

    .line 1267
    const-string v3, "extra_wait_fee"

    invoke-virtual {p3, v3, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    .line 1269
    .local v1, waitFee:D
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v3

    sget-object v4, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v3, v4}, Lcom/didi/ddrive/managers/OrderStateManager;->setCurrentState(Lcom/didi/ddrive/model/OrderState;)V

    .line 1270
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v3

    sget-object v4, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v3, v4}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 1271
    cmpl-double v3, v1, v5

    if-lez v3, :cond_2

    .line 1272
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/didi/ddrive/eventbus/event/PaymentEvent;

    invoke-direct {v4}, Lcom/didi/ddrive/eventbus/event/PaymentEvent;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1293
    .end local v1           #waitFee:D
    :cond_1
    :goto_1
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDriveWaitMarker()V

    goto :goto_0

    .line 1275
    .restart local v1       #waitFee:D
    :cond_2
    const v3, 0x7f0b0196

    invoke-direct {p0, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripNoFeeClose(I)V

    goto :goto_1

    .line 1277
    .end local v1           #waitFee:D
    :cond_3
    const-string v3, "extra_driver_cancel_type"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1280
    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1281
    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1282
    const-string v3, "extra_driver_cancel_type"

    invoke-virtual {p3, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1283
    .local v0, type:I
    const-string v3, "morning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DDriveCancelTripActivity.EXTRA_DRIVER_CANCEL_TYPE is =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 1285
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    new-instance v4, Lcom/didi/ddrive/eventbus/event/PaymentEvent;

    invoke-direct {v4}, Lcom/didi/ddrive/eventbus/event/PaymentEvent;-><init>()V

    invoke-virtual {v3, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 1286
    :cond_4
    if-ne v0, v8, :cond_5

    .line 1287
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->driverCancelTripNoFeeResend()V

    goto :goto_1

    .line 1288
    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 1289
    const v3, 0x7f0b015d

    invoke-direct {p0, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripNoFeeClose(I)V

    goto :goto_1

    .line 1298
    .end local v0           #type:I
    :pswitch_1
    const v3, 0x7f0b014a

    invoke-direct {p0, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 1299
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/payment/PaymentManager;->queryOrderBill()V

    goto/16 :goto_0

    .line 1258
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onAttach(Landroid/app/Activity;)V

    .line 232
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 233
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    .line 234
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 236
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    .line 237
    const-string v0, "OrderRecoveryManager"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-nez v0, :cond_0

    .line 239
    invoke-static {}, Lcom/didi/common/util/Utils;->appRestart()V

    .line 242
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1630
    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 1631
    return v0
.end method

.method public onCostDetailCouponsClicked(Ljava/lang/String;)V
    .locals 8
    .parameter "url"

    .prologue
    .line 1420
    const-string v3, "pdjxpay_01_ck"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[dj_orderid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v7}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1422
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1423
    .local v2, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    .line 1424
    .local v0, driveOrder:Lcom/didi/ddrive/model/DDriveOrder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-wide v4, v4, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v0, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v5

    iget-object v5, v5, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-object v5, v5, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->token:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/didi/ddrive/util/DDriveH5Util;->getSelectCouponUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1427
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1428
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1429
    const/4 v3, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1430
    return-void
.end method

.method public onCostDetailInstructionClicked()V
    .locals 0

    .prologue
    .line 1416
    return-void
.end method

.method public onCostDetailPayClicked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1395
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1412
    :goto_0
    return-void

    .line 1398
    :cond_0
    const-string v1, "pdjxpay_06_ck"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

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

    .line 1401
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v1

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    if-ne v1, v2, :cond_1

    .line 1403
    new-instance v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;-><init>()V

    .line 1404
    .local v0, event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    iput-boolean v5, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    .line 1405
    sget-object v1, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->state:Lcom/didi/ddrive/model/OrderState;

    .line 1406
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->icon:Lcom/didi/common/ui/component/CommonDialog$IconType;

    .line 1407
    const/high16 v1, 0x7f0b

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->msg:Ljava/lang/String;

    .line 1408
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 1410
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    :cond_1
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/payment/PaymentManager;->queryPaymentSign()V

    goto :goto_0
.end method

.method public onCostDetailPayTypeChecked()V
    .locals 0

    .prologue
    .line 1434
    return-void
.end method

.method public onCostDetailViewShown()V
    .locals 0

    .prologue
    .line 1576
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 419
    const-string v1, "OrderRecoveryManager"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 422
    invoke-direct {p0, p3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->restoreOrderState(Landroid/os/Bundle;)V

    .line 424
    new-instance v0, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;-><init>(Landroid/content/Context;)V

    .line 426
    .local v0, controllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;
    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    .line 427
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setOrder(Lcom/didi/ddrive/model/DDriveOrder;)V

    .line 428
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->hideFoodGameArea()V

    .line 429
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->initContentView()V

    .line 430
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 396
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 398
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->unRegistEventBus(Ljava/lang/Object;)V

    .line 399
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/payment/PaymentManager;->reset()V

    .line 400
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->clear()V

    .line 401
    return-void
.end method

.method public onEvaluateEditShown()V
    .locals 0

    .prologue
    .line 1368
    return-void
.end method

.method public onEvaluateFinishShown()V
    .locals 0

    .prologue
    .line 1364
    return-void
.end method

.method public onEvaluateShown()V
    .locals 0

    .prologue
    .line 1360
    return-void
.end method

.method public onEvaluateStarClicked()V
    .locals 2

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->isFlagEvaluateStarClicked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setFlagEvaluateStarClicked(Z)V

    .line 1346
    new-instance v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$10;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    .line 1356
    :cond_0
    return-void
.end method

.method public onEvaluateSubmitClicked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "content"
    .parameter "level"
    .parameter "types"
    .parameter "typeText"

    .prologue
    .line 1373
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->doEvaluateSubmit(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1374
    return-void
.end method

.method protected onEvaluateSubmited()V
    .locals 2

    .prologue
    .line 1388
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->clearDepart()V

    .line 1389
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->onEvaluateSubmitSuccessed()V

    .line 1390
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setFlagEvaluateStarClicked(Z)V

    .line 1391
    return-void
.end method

.method public onEvaluatingViewClicked()V
    .locals 1

    .prologue
    .line 1584
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 1585
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/CSCloseEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 945
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "CSCloseEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const v0, 0x7f0b0196

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->cancelTripNoFeeClose(I)V

    .line 948
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 949
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/CancelReasonEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    .line 1106
    const-string v9, "DDriveWaitForArrivalFragment"

    const-string v10, "CancelReasonEvent"

    invoke-static {v9, v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v9, p1, Lcom/didi/ddrive/eventbus/event/CancelReasonEvent;->result:Lcom/didi/ddrive/net/http/response/CancelReason;

    if-eqz v9, :cond_0

    iget-object v9, p1, Lcom/didi/ddrive/eventbus/event/CancelReasonEvent;->result:Lcom/didi/ddrive/net/http/response/CancelReason;

    iget-object v9, v9, Lcom/didi/ddrive/net/http/response/CancelReason;->reasons:[Lcom/didi/ddrive/net/http/response/Item;

    if-eqz v9, :cond_0

    iget-object v9, p1, Lcom/didi/ddrive/eventbus/event/CancelReasonEvent;->result:Lcom/didi/ddrive/net/http/response/CancelReason;

    iget-object v9, v9, Lcom/didi/ddrive/net/http/response/CancelReason;->reasons:[Lcom/didi/ddrive/net/http/response/Item;

    array-length v9, v9

    if-nez v9, :cond_1

    .line 1109
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1110
    const-string v9, "DDriveWaitForArrivalFragment"

    const-string v10, "\u83b7\u53d6\u53d6\u6d88\u884c\u7a0b\u539f\u56e0\u5931\u8d25"

    invoke-static {v9, v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    :goto_0
    return-void

    .line 1113
    :cond_1
    const-string v9, "DDriveWaitForArrivalFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u83b7\u53d6\u53d6\u6d88\u884c\u7a0b\u7684"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/didi/ddrive/eventbus/event/CancelReasonEvent;->result:Lcom/didi/ddrive/net/http/response/CancelReason;

    iget-object v11, v11, Lcom/didi/ddrive/net/http/response/CancelReason;->reasons:[Lcom/didi/ddrive/net/http/response/Item;

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    new-instance v2, Lcom/didi/ddrive/model/CancelReasonBean;

    invoke-direct {v2}, Lcom/didi/ddrive/model/CancelReasonBean;-><init>()V

    .line 1115
    .local v2, cancelReasonBean:Lcom/didi/ddrive/model/CancelReasonBean;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/ddrive/net/http/response/Item;>;"
    iget-object v9, p1, Lcom/didi/ddrive/eventbus/event/CancelReasonEvent;->result:Lcom/didi/ddrive/net/http/response/CancelReason;

    iget-object v0, v9, Lcom/didi/ddrive/net/http/response/CancelReason;->reasons:[Lcom/didi/ddrive/net/http/response/Item;

    .local v0, arr$:[Lcom/didi/ddrive/net/http/response/Item;
    array-length v8, v0

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v8, :cond_2

    aget-object v6, v0, v4

    .line 1117
    .local v6, item:Lcom/didi/ddrive/net/http/response/Item;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1119
    .end local v6           #item:Lcom/didi/ddrive/net/http/response/Item;
    :cond_2
    iput-object v7, v2, Lcom/didi/ddrive/model/CancelReasonBean;->reasons:Ljava/util/List;

    .line 1120
    const/4 v1, 0x0

    .line 1121
    .local v1, cancelActivityTitleString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1122
    .local v3, cancelType:I
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v9

    sget-object v10, Lcom/didi/ddrive/model/OrderState;->ACCEPT:Lcom/didi/ddrive/model/OrderState;

    if-ne v9, v10, :cond_4

    .line 1123
    const/4 v3, 0x1

    .line 1124
    const v9, 0x7f0b030d

    invoke-static {v9}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1135
    :cond_3
    :goto_2
    new-instance v5, Landroid/content/Intent;

    iget-object v9, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v10, Lcom/didi/ddrive/ui/activity/DDriveCancelTripActivity;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1136
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "cancel_trip_driver_data"

    invoke-virtual {v5, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1137
    const-string v9, "cancel_trip_driver_title"

    invoke-virtual {v5, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1138
    const-string v9, "cancel_trip_driver_type"

    invoke-virtual {v5, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1139
    const-string v9, "morning"

    const-string v10, "startActivityForResult"

    invoke-static {v9, v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1141
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasJumpToCancelTripActivity:Z

    .line 1142
    const/4 v9, 0x2

    invoke-virtual {p0, v5, v9}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1125
    .end local v5           #intent:Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v9

    sget-object v10, Lcom/didi/ddrive/model/OrderState;->ARRIVE:Lcom/didi/ddrive/model/OrderState;

    if-ne v9, v10, :cond_3

    .line 1126
    iget-object v9, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-wide v9, v9, Lcom/didi/ddrive/managers/DriverComingManager;->mWaitFee:D

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_5

    .line 1127
    const/4 v3, 0x3

    .line 1128
    const v9, 0x7f0b030f

    invoke-static {v9}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1130
    :cond_5
    const/4 v3, 0x2

    .line 1131
    const v9, 0x7f0b030e

    invoke-static {v9}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/ChangeVoucherEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1028
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "ChangeVoucherEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/ChangeVoucherEvent;->result:Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;

    if-eqz v0, :cond_0

    .line 1030
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "change voucher success"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/ChangeVoucherEvent;->result:Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;

    .line 1035
    :goto_0
    return-void

    .line 1033
    :cond_0
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "change voucher failed"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/CommentEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1163
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "CommentEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->removeLoadingDialog()V

    .line 1165
    const-string v0, "DDriveWaitForArrivalFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bc4\u4ef7\u7ed3\u675f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/didi/ddrive/eventbus/event/CommentEvent;->responseSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-boolean v0, p1, Lcom/didi/ddrive/eventbus/event/CommentEvent;->responseSuccess:Z

    if-eqz v0, :cond_0

    .line 1167
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->onEvaluateSubmited()V

    .line 1171
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/CommentTagEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 1149
    const-string v1, "DDriveWaitForArrivalFragment"

    const-string v2, "CommentTagEvent"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-boolean v1, p1, Lcom/didi/ddrive/eventbus/event/CommentTagEvent;->responseSuccess:Z

    if-eqz v1, :cond_0

    .line 1151
    const-string v1, "DDriveWaitForArrivalFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bc4\u4ef7\u5185\u5bb9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/didi/ddrive/eventbus/event/CommentTagEvent;->commentTags:Lcom/didi/ddrive/net/http/response/CommentTags;

    iget-object v3, v3, Lcom/didi/ddrive/net/http/response/CommentTags;->tagAll:[Lcom/didi/ddrive/net/http/response/CommentTags$TagList;

    invoke-static {v3}, Lnet/tsz/afinal/core/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    .line 1153
    .local v0, drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    iget-object v1, p1, Lcom/didi/ddrive/eventbus/event/CommentTagEvent;->commentTags:Lcom/didi/ddrive/net/http/response/CommentTags;

    invoke-static {v1}, Lcom/didi/ddrive/util/JsonUtil;->jsonFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->setCommentTags(Ljava/lang/String;)V

    .line 1157
    .end local v0           #drive:Lcom/didi/ddrive/preferences/KDPreferenceDrive;
    :goto_0
    return-void

    .line 1155
    :cond_0
    const-string v1, "DDriveWaitForArrivalFragment"

    const-string v2, "\u8bc4\u4ef7\u5185\u5bb9\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 967
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "DestinationArrivedEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 969
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 970
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    .line 971
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->onStartBilling()V

    .line 972
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    .line 973
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    iget-boolean v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTripCancel(Z)V

    .line 974
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->END_SERVICE:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 975
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 780
    const-string v2, "DDriveWaitForArrivalFragment"

    const-string v3, "DriveSendorderEvent"

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 782
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v2, v3, :cond_0

    .line 783
    iget-boolean v2, p1, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;->success:Z

    if-eqz v2, :cond_1

    .line 784
    sget-object v2, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/ddrive/model/DDriveOrder;

    .line 785
    .local v0, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-object v2, v0, Lcom/didi/ddrive/model/DDriveOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    sget-object v3, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    iput-object v3, v2, Lcom/didi/common/model/CommonAttributes;->inputType:Lcom/didi/frame/business/InputType;

    .line 786
    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DriveSendorderEvent;->response:Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/DriveSendOrderResponse;->oid:J

    iput-wide v2, v0, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    .line 787
    invoke-virtual {v0}, Lcom/didi/ddrive/model/DDriveOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iput v4, v2, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 790
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/OrderStateManager;->newOrder()V

    .line 791
    sput v4, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 792
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->confirmToWaitMapView()V

    .line 794
    new-instance v1, Lcom/didi/ddrive/model/OrderCreateTime;

    invoke-direct {v1}, Lcom/didi/ddrive/model/OrderCreateTime;-><init>()V

    .line 795
    .local v1, orderCreateTime:Lcom/didi/ddrive/model/OrderCreateTime;
    iget-wide v2, v0, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    iput-wide v2, v1, Lcom/didi/ddrive/model/OrderCreateTime;->oid:J

    .line 796
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/didi/ddrive/model/OrderCreateTime;->createTime:J

    .line 797
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->saveOrderCreateTime(Lcom/didi/ddrive/model/OrderCreateTime;)V

    .line 798
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/FragmentMgr;->showDDriveWaitForResponseFragment()V

    .line 803
    .end local v0           #order:Lcom/didi/ddrive/model/DDriveOrder;
    .end local v1           #orderCreateTime:Lcom/didi/ddrive/model/OrderCreateTime;
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 1190
    const-string v1, "DDriveWaitForArrivalFragment"

    const-string v2, "DriverAcceptedCashEvent"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v1}, Lcom/didi/common/helper/DialogHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1192
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v1}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 1195
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v0

    .line 1196
    .local v0, pm:Lcom/didi/ddrive/payment/PaymentManager;
    invoke-virtual {v0}, Lcom/didi/ddrive/payment/PaymentManager;->getOrderBill()Lcom/didi/ddrive/net/http/response/OrderBill;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1197
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-wide v2, v2, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-wide v4, v4, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/didi/ddrive/payment/PaymentManager;->init(JJ)V

    .line 1199
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v1

    const-string v2, "driver_cancel_query_bill"

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/payment/PaymentManager;->queryOrderBill(Ljava/lang/String;)V

    .line 1204
    :goto_0
    return-void

    .line 1201
    :cond_1
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showPayedView()V

    .line 1202
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const-wide/16 v4, 0x0

    .line 595
    const-string v1, "DDriveWaitForArrivalFragment"

    const-string v2, "DriverArrivedEvent"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v1, 0x2

    iput v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mSceneFlag:I

    .line 598
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    const v2, 0x7f0b0305

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitle(Ljava/lang/String;)V

    .line 599
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    .line 600
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->ARRIVE:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 601
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0b02b0

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/ddrive/managers/DriverComingManager;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 603
    if-eqz p1, :cond_0

    iget-wide v1, p1, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;->lat:D

    cmpl-double v1, v1, v4

    if-lez v1, :cond_0

    iget-wide v1, p1, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;->lng:D

    cmpl-double v1, v1, v4

    if-lez v1, :cond_0

    .line 604
    const v1, 0x7f0b056e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, prepared:Ljava/lang/String;
    iget-wide v1, p1, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;->lat:D

    iget-wide v3, p1, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;->lng:D

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->zoomThreeMarkerInMap(DD)V

    .line 608
    .end local v0           #prepared:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverBriefInfoEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 522
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "DriverBriefInfoEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/DriverBriefInfoEvent;->driverInfo:Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "DDriveWaitForArrivalFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5230\u53f8\u673a\u4fe1\u606f\uff0c\u8bbe\u7f6e\u5230\u6ef4\u6ef4\u7684bar\u91cc\u9762"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DriverBriefInfoEvent;->driverInfo:Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

    iget-object v2, v2, Lcom/didi/ddrive/net/http/response/DriverBriefInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    iget-object v1, p1, Lcom/didi/ddrive/eventbus/event/DriverBriefInfoEvent;->driverInfo:Lcom/didi/ddrive/net/http/response/DriverBriefInfo;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setDriver(Lcom/didi/ddrive/net/http/response/DriverBriefInfo;)V

    .line 526
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    iget-boolean v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTripCancel(Z)V

    .line 528
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverCancelEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 927
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "DriverCancelEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    if-eqz p1, :cond_0

    .line 929
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    const/4 v1, 0x3

    iput v1, v0, Lcom/didi/ddrive/model/DDriveOrder;->canceller:I

    .line 930
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/DriverComingManager;->queryOrderDetailForOrderCanceledByDriver()V

    .line 933
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 934
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 935
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDriveWaitMarker()V

    .line 937
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverCancelNoFeeEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 812
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "DriverCancelNoFeeEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasJumpToCancelTripActivity:Z

    if-eqz v0, :cond_0

    .line 852
    :goto_0
    return-void

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02b2

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/ddrive/managers/DriverComingManager;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 819
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 820
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 821
    const-string v0, "morning"

    const-string v1, "\u53f8\u673a\u53d6\u6d88 \u65e0\u7b49\u5019\u8d39"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 823
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0301

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 825
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b043d

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(I)V

    .line 826
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0303

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b02ff

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 833
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    new-instance v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$7;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$7;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 846
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 848
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDriveWaitMarker()V

    .line 850
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    .line 878
    const-string v4, "DDriveWaitForArrivalFragment"

    const-string v5, "DriverCancelWithFeeAndTimeEvent"

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-boolean v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasJumpToCancelTripActivity:Z

    if-eqz v4, :cond_0

    .line 919
    :goto_0
    return-void

    .line 882
    :cond_0
    iget-wide v0, p1, Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;->waitFee:D

    .line 883
    .local v0, fee:D
    iget-wide v2, p1, Lcom/didi/ddrive/eventbus/event/DriverCancelWithFeeAndTimeEvent;->waitTime:J

    .line 884
    .local v2, time:J
    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v5, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0b02b1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/didi/ddrive/managers/DriverComingManager;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 887
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v4

    sget-object v5, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v4, v5}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 888
    new-instance v4, Lcom/didi/common/helper/DialogHelper;

    iget-object v5, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 889
    const-string v4, "morning"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u53f8\u673a\u53d6\u6d88 \u6709\u7b49\u5019\u8d39+\u201cevent.waitTime is =="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "event.waitFee is =="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v5, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v4, v5}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 892
    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v5, 0x7f0b0302

    invoke-virtual {v4, v5}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 894
    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v5, 0x7f0b0303

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0b0300

    invoke-static {v6}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-float v9, v2

    invoke-static {v9}, Lcom/didi/common/util/Utils;->transferTime(F)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v5, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v4, v5}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 904
    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    new-instance v5, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$8;

    invoke-direct {v5, p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$8;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;)V

    invoke-virtual {v4, v5}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 912
    const-string v4, "morning"

    const-string v5, "\u53f8\u673a\u53d6\u6d88 \u6709\u7b49\u5019\u8d39 show dialog"

    invoke-static {v4, v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v4}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 915
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDriveWaitMarker()V

    .line 917
    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 918
    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const-wide/16 v2, 0x0

    .line 548
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "DriverPositionEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;->position:Lcom/didi/ddrive/net/http/response/Position;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;->position:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v0, v0, Lcom/didi/ddrive/net/http/response/Position;->lat:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;->position:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v0, v0, Lcom/didi/ddrive/net/http/response/Position;->lng:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 551
    const-string v0, "morning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8f6e\u8be2\u5230\u53f8\u673a\u4f4d\u7f6e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;->position:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/Position;->lat:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+++"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;->position:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/Position;->lng:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v9

    .line 563
    .local v9, startPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :goto_0
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mMapZoom:Z

    if-nez v0, :cond_0

    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mMapZoom:Z

    .line 566
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;->position:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v0, v0, Lcom/didi/ddrive/net/http/response/Position;->lat:D

    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;->position:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/Position;->lng:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->zoomThreeMarkerInMap(DD)V

    .line 569
    :cond_0
    new-instance v6, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;->position:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v0, v0, Lcom/didi/ddrive/net/http/response/Position;->lat:D

    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;->position:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/Position;->lng:D

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    .line 571
    .local v6, drivePoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    invoke-static {v9, v6}, Lcom/didi/map/MapController;->lineDistance(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)F

    move-result v0

    const/high16 v1, 0x447a

    div-float v8, v0, v1

    .line 572
    .local v8, meter:F
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v0, "##0.00"

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 573
    .local v7, fnum:Ljava/text/DecimalFormat;
    float-to-double v0, v8

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 574
    .local v4, dd:Ljava/lang/String;
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->ACCEPT:Lcom/didi/ddrive/model/OrderState;

    if-ne v0, v1, :cond_3

    .line 575
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;->position:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v0, v0, Lcom/didi/ddrive/net/http/response/Position;->lat:D

    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/DriverPositionEvent;->position:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v2, v2, Lcom/didi/ddrive/net/http/response/Position;->lng:D

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showDistanceMarker(DDLjava/lang/String;Ljava/lang/String;)V

    .line 587
    .end local v4           #dd:Ljava/lang/String;
    .end local v6           #drivePoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .end local v7           #fnum:Ljava/text/DecimalFormat;
    .end local v8           #meter:F
    .end local v9           #startPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    :cond_1
    :goto_1
    return-void

    .line 560
    :cond_2
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v9

    .restart local v9       #startPoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    goto :goto_0

    .line 577
    .restart local v4       #dd:Ljava/lang/String;
    .restart local v6       #drivePoint:Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;
    .restart local v7       #fnum:Ljava/text/DecimalFormat;
    .restart local v8       #meter:F
    :cond_3
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->ARRIVE:Lcom/didi/ddrive/model/OrderState;

    if-ne v0, v1, :cond_4

    .line 578
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v0, v0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastDriverWaitingFeeEvent:Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v0, v0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastDriverWaitingFeeEvent:Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;)V

    goto :goto_1

    .line 581
    :cond_4
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->START_SERVICE:Lcom/didi/ddrive/model/OrderState;

    if-ne v0, v1, :cond_1

    .line 582
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v0, v0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastDrivingFeeEvent:Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v0, v0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastDrivingFeeEvent:Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->onEventMainThread(Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;)V

    goto :goto_1
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 683
    const-string v0, "DDriveWaitForArrivalFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u5230\u5f00\u59cb\u670d\u52a1\u4e4b\u524d\u7684\u7b49\u5019\u8d39\u7528 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;->waitFee:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;->waitTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-wide v0, p1, Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;->waitFee:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 686
    const/4 v0, 0x3

    iput v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mSceneFlag:I

    .line 687
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasShowNotification:Z

    if-nez v0, :cond_0

    .line 688
    iput-boolean v5, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasShowNotification:Z

    .line 689
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02b4

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/ddrive/managers/DriverComingManager;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v0, v0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->ARRIVE:Lcom/didi/ddrive/model/OrderState;

    if-ne v0, v1, :cond_1

    .line 696
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v0, v0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v1, v0, Lcom/didi/ddrive/net/http/response/Position;->lat:D

    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v0, v0, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v3, v0, Lcom/didi/ddrive/net/http/response/Position;->lng:D

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->isPaused()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showDriveWaitMarker(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;DDZ)V

    .line 700
    :cond_1
    return-void

    .line 696
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DriverWontAcceptFeeEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 806
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "DriverWontAcceptFeeEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showClosedView()V

    .line 809
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 708
    const-string v1, "DDriveWaitForArrivalFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u83b7\u53d6\u5230\u884c\u9a76\u4e2d\u7684\u8d39\u7528 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;->distance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;->fee:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v1, v1, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    if-eqz v1, :cond_1

    .line 710
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/map/listener/MapListener;->isMoving()Z

    move-result v0

    .line 711
    .local v0, isMoving:Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isDDriveWaitForArrivalFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v1, v1, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v1, v1, Lcom/didi/ddrive/net/http/response/Position;->lat:D

    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v3, v3, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v3, v3, Lcom/didi/ddrive/net/http/response/Position;->lng:D

    invoke-static {v1, v2, v3, v4}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setMapCenterByPoint(DD)V

    .line 715
    :cond_0
    new-instance v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$6;-><init>(Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;Lcom/didi/ddrive/eventbus/event/DrivingFeeEvent;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v1, v2, v3}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 724
    .end local v0           #isMoving:Z
    :cond_1
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1055
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "KDPayResultEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    iget-boolean v0, p1, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    if-eqz v0, :cond_0

    .line 1058
    const-string v0, "PaymentManager"

    const-string v1, "Pay success, goto payed view."

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->setCurrentState(Lcom/didi/ddrive/model/OrderState;)V

    .line 1060
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 1061
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showPayedView()V

    .line 1065
    :goto_0
    return-void

    .line 1063
    :cond_0
    invoke-direct {p0, p1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showPayAlert(Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/OrderBillEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 1003
    const-string v2, "DDriveWaitForArrivalFragment"

    const-string v3, "OrderBillEvent"

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->removeLoadingDialog()V

    .line 1005
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showComplaintEntrance()V

    .line 1006
    iget-boolean v2, p1, Lcom/didi/ddrive/eventbus/event/OrderBillEvent;->success:Z

    if-eqz v2, :cond_2

    .line 1007
    const-string v2, "DDriveWaitForArrivalFragment"

    const-string v3, "show pay view"

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/payment/PaymentManager;->getOrderBill()Lcom/didi/ddrive/net/http/response/OrderBill;

    move-result-object v1

    .line 1009
    .local v1, billForNotification:Lcom/didi/ddrive/net/http/response/OrderBill;
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0b02b3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lcom/didi/ddrive/net/http/response/OrderBill;->totalMoney:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/didi/ddrive/managers/DriverComingManager;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 1011
    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/OrderBillEvent;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1012
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/payment/PaymentManager;->getOrderBill()Lcom/didi/ddrive/net/http/response/OrderBill;

    move-result-object v0

    .line 1013
    .local v0, bill:Lcom/didi/ddrive/net/http/response/OrderBill;
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showCostDetailView(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/model/OrderState;)V

    .line 1025
    .end local v0           #bill:Lcom/didi/ddrive/net/http/response/OrderBill;
    .end local v1           #billForNotification:Lcom/didi/ddrive/net/http/response/OrderBill;
    :cond_0
    :goto_0
    return-void

    .line 1015
    .restart local v1       #billForNotification:Lcom/didi/ddrive/net/http/response/OrderBill;
    :cond_1
    const-string v2, "driver_cancel_query_bill"

    iget-object v3, p1, Lcom/didi/ddrive/eventbus/event/OrderBillEvent;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1017
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v2

    sget-object v3, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    new-instance v4, Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;

    invoke-direct {v4}, Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto :goto_0

    .line 1022
    .end local v1           #billForNotification:Lcom/didi/ddrive/net/http/response/OrderBill;
    :cond_2
    const-string v2, "DDriveWaitForArrivalFragment"

    const-string v3, "query order bill failed, try again."

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/payment/PaymentManager;->queryOrderBill()V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/PassengerCancelWithFeeAndTimeEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 868
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "PassengerCancelWithFeeAndTimeEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/didi/ddrive/eventbus/event/PaymentEvent;

    invoke-direct {v1}, Lcom/didi/ddrive/eventbus/event/PaymentEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 871
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 872
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/PaySignEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1043
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "PaySignEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-boolean v0, p1, Lcom/didi/ddrive/eventbus/event/PaySignEvent;->success:Z

    if-eqz v0, :cond_0

    .line 1045
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/payment/PaymentManager;->pay(Landroid/app/Activity;)V

    .line 1047
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/PayedDetailEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 1441
    const-string v2, "DDriveWaitForArrivalFragment"

    const-string v3, "PayedDetailEvent"

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->removeLoadingDialog()V

    .line 1443
    iget-boolean v2, p1, Lcom/didi/ddrive/eventbus/event/PayedDetailEvent;->success:Z

    if-eqz v2, :cond_0

    .line 1444
    const-string v2, "pdjxcomment_05_ck"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[dj_orderid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v6}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1447
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/payment/PaymentManager;->getPayedDetail()Lcom/didi/ddrive/net/http/response/PayedDetail;

    move-result-object v0

    .line 1448
    .local v0, detail:Lcom/didi/ddrive/net/http/response/PayedDetail;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1449
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extra_payed_detail"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1450
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/ddrive/ui/activity/DDriveCostDetailActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1451
    invoke-virtual {p0, v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1455
    .end local v0           #detail:Lcom/didi/ddrive/net/http/response/PayedDetail;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1453
    :cond_0
    const v2, 0x7f0b0151

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/PaymentEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x7

    .line 983
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "PaymentEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 985
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v0

    sget-object v1, Lcom/didi/ddrive/model/OrderState;->SUBMIT_CHARGE:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 988
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-wide v1, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-wide v3, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/didi/ddrive/payment/PaymentManager;->init(JJ)V

    .line 990
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/payment/PaymentManager;->queryOrderBill()V

    .line 993
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 994
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 995
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/ShareConfigEvent;)V
    .locals 2
    .parameter "shareConfigEvent"

    .prologue
    .line 1207
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "ShareConfigEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/ShareConfigEvent;->shareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareConfig:Lcom/didi/ddrive/net/http/response/ShareConfig;

    .line 1209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasGetShareConfig:Z

    .line 1210
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasGetShareConfig:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasGetShareContent:Z

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->isShareAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->refreshOpHomeTips(Z)V

    .line 1213
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/ShareContentEvent;)V
    .locals 2
    .parameter "shareContentEvent"

    .prologue
    .line 1216
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "ShareContentEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/ShareContentEvent;->shareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    iput-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareContent:Lcom/didi/ddrive/net/http/response/ShareContent;

    .line 1218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasGetShareContent:Z

    .line 1219
    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasGetShareConfig:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasGetShareContent:Z

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->isShareAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->refreshOpHomeTips(Z)V

    .line 1222
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/StartOffEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 732
    const-string v1, "DDriveWaitForArrivalFragment"

    const-string v2, "StartOffEvent"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 734
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->sendEmptyMessage(I)V

    .line 735
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->onStartBilling()V

    .line 736
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    .line 737
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    iget-boolean v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTripCancel(Z)V

    .line 738
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v1, v1, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    if-eqz v1, :cond_0

    .line 739
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/map/listener/MapListener;->isMoving()Z

    move-result v0

    .line 740
    .local v0, isMoving:Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/frame/FragmentMgr;->isDDriveWaitForArrivalFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 741
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v1, v1, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v1, v1, Lcom/didi/ddrive/net/http/response/Position;->lat:D

    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v3, v3, Lcom/didi/ddrive/managers/DriverComingManager;->mLastPosition:Lcom/didi/ddrive/net/http/response/Position;

    iget-wide v3, v3, Lcom/didi/ddrive/net/http/response/Position;->lng:D

    invoke-static {v1, v2, v3, v4}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setMapCenterByPoint(DD)V

    .line 745
    .end local v0           #isMoving:Z
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->START_SERVICE:Lcom/didi/ddrive/model/OrderState;

    invoke-virtual {v1, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->consume(Lcom/didi/ddrive/model/OrderState;)V

    .line 747
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0b02b5

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/didi/ddrive/managers/DriverComingManager;->showNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method public onEventMainThread(Lcom/didi/ddrive/eventbus/event/StreamMessageEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 1174
    const-string v0, "DDriveWaitForArrivalFragment"

    const-string v1, "StreamMessageEvent"

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/StreamMessageEvent;->message:Lcom/didi/ddrive/net/tcp/message/StreamMessage;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/didi/ddrive/eventbus/event/StreamMessageEvent;->message:Lcom/didi/ddrive/net/tcp/message/StreamMessage;

    iget-object v0, v0, Lcom/didi/ddrive/net/tcp/message/StreamMessage;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    const-string v0, "morning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u5230\u4fe1\u606f\u6d41\u7684push \u6587\u6848\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/ddrive/eventbus/event/StreamMessageEvent;->message:Lcom/didi/ddrive/net/tcp/message/StreamMessage;

    iget-object v2, v2, Lcom/didi/ddrive/net/tcp/message/StreamMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    iget-object v1, p1, Lcom/didi/ddrive/eventbus/event/StreamMessageEvent;->message:Lcom/didi/ddrive/net/tcp/message/StreamMessage;

    iget-object v1, v1, Lcom/didi/ddrive/net/tcp/message/StreamMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->showDrawerView(Ljava/lang/String;)V

    .line 1180
    invoke-static {}, Lcom/didi/ddrive/managers/StreamMessageManager;->getInstance()Lcom/didi/ddrive/managers/StreamMessageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/ddrive/eventbus/event/StreamMessageEvent;->message:Lcom/didi/ddrive/net/tcp/message/StreamMessage;

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/StreamMessageManager;->consume(Lcom/didi/ddrive/net/tcp/message/StreamMessage;)V

    .line 1182
    :cond_0
    return-void
.end method

.method public onFooterArrivalClicked()V
    .locals 0

    .prologue
    .line 1322
    return-void
.end method

.method public onFooterCloseClicked()V
    .locals 0

    .prologue
    .line 1326
    return-void
.end method

.method public onFooterFoundClicked()V
    .locals 0

    .prologue
    .line 1314
    return-void
.end method

.method public onFooterHomeClicked()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1335
    const-string v0, "pdjxcomment_15_ck"

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

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

    .line 1337
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 1338
    invoke-virtual {p0, v5}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 1339
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 1340
    return-void
.end method

.method public onFooterOpClicked()V
    .locals 0

    .prologue
    .line 1330
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->doShare()V

    .line 1331
    return-void
.end method

.method public onFooterPayClicked()V
    .locals 0

    .prologue
    .line 1318
    return-void
.end method

.method public onFooterQuestionClicked()V
    .locals 0

    .prologue
    .line 1660
    return-void
.end method

.method public onInfoImageClicked(Lcom/didi/car/model/CarSNSConfig;)V
    .locals 0
    .parameter "snsConfig"

    .prologue
    .line 1310
    return-void
.end method

.method public onInfoTellClicked(Lcom/didi/car/model/CarSNSConfig;)V
    .locals 0
    .parameter "snsConfig"

    .prologue
    .line 1306
    return-void
.end method

.method public onItemTypeChecked(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 1438
    return-void
.end method

.method public onPaidApplyRefund()V
    .locals 0

    .prologue
    .line 1481
    return-void
.end method

.method public onPaidCostDetailClicked()V
    .locals 7

    .prologue
    .line 1459
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v2

    .line 1460
    .local v2, pm:Lcom/didi/ddrive/payment/PaymentManager;
    invoke-virtual {v2}, Lcom/didi/ddrive/payment/PaymentManager;->getOrderId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-wide v5, v5, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/didi/ddrive/payment/PaymentManager;->getPayedDetail()Lcom/didi/ddrive/net/http/response/PayedDetail;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1461
    new-instance v0, Lcom/didi/ddrive/eventbus/event/PayedDetailEvent;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/didi/ddrive/eventbus/event/PayedDetailEvent;-><init>(Z)V

    .line 1462
    .local v0, event:Lcom/didi/ddrive/eventbus/event/PayedDetailEvent;
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1469
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/PayedDetailEvent;
    :goto_0
    return-void

    .line 1464
    :cond_0
    sget-object v3, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/model/DDriveOrder;

    .line 1465
    .local v1, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-wide v3, v1, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v5

    iget-wide v5, v5, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/didi/ddrive/payment/PaymentManager;->init(JJ)V

    .line 1466
    const v3, 0x7f0b014b

    invoke-direct {p0, v3}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 1467
    invoke-virtual {v2}, Lcom/didi/ddrive/payment/PaymentManager;->queryPayedDetail()V

    goto :goto_0
.end method

.method public onPaidInvoiceClicked()V
    .locals 0

    .prologue
    .line 1473
    return-void
.end method

.method public onPaidPayClicked()V
    .locals 0

    .prologue
    .line 1477
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 477
    const-string v0, "order"

    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 478
    return-void
.end method

.method public onSelect(ILjava/lang/Object;)V
    .locals 3
    .parameter "position"
    .parameter "o"

    .prologue
    .line 1653
    move-object v0, p2

    check-cast v0, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    .line 1654
    .local v0, payChannelItem:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/ddrive/payment/PaymentManager;->setPayChannel(Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V

    .line 1655
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/payment/PaymentManager;->getOrderBill()Lcom/didi/ddrive/net/http/response/OrderBill;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->updatePayBtn(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V

    .line 1656
    return-void
.end method

.method public onTimeConsultNoClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1485
    return-void
.end method

.method public onTimeConsultViewShown()V
    .locals 0

    .prologue
    .line 1580
    return-void
.end method

.method public onTimeConsultYesClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1489
    return-void
.end method

.method public onTitleLeftClicked(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1493
    invoke-virtual {p0, v5}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 1495
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v0

    .line 1496
    .local v0, orderState:Lcom/didi/ddrive/model/OrderState;
    sget-object v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$11;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    invoke-virtual {v0}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1517
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v1, :cond_0

    .line 1518
    sget-object v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$11;->$SwitchMap$com$didi$ddrive$model$PayState:[I

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-object v2, v2, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    invoke-virtual {v2}, Lcom/didi/ddrive/model/PayState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 1527
    :cond_0
    :goto_1
    return-void

    .line 1498
    :pswitch_1
    const-string v1, "pdjxcomment_01_ck"

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v4}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1505
    :pswitch_2
    const-string v1, "pdjxwfp_01_ck"

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v4}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1510
    :pswitch_3
    const-string v1, "pdjxontrip_00_ck"

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v4}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1520
    :pswitch_4
    const-string v1, "pdjxpay_00_ck"

    new-array v2, v5, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dj_orderid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v4}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1496
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1518
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
    .end packed-switch
.end method

.method public onTitleRightClicked(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1531
    sget-object v2, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$11;->$SwitchMap$com$didi$ddrive$model$OrderState:[I

    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/ddrive/model/OrderState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1543
    :goto_0
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v2, :cond_0

    .line 1544
    sget-object v2, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment$11;->$SwitchMap$com$didi$ddrive$model$PayState:[I

    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-object v3, v3, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    invoke-virtual {v3}, Lcom/didi/ddrive/model/PayState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 1557
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    if-nez v2, :cond_3

    .line 1558
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1559
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-wide v3, v3, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget-wide v4, v4, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v4

    iget-object v4, v4, Lcom/didi/ddrive/managers/DriveAccountManager;->user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    iget-object v4, v4, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->token:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/didi/ddrive/util/DDriveH5Util;->getComplaintUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1562
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1563
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1564
    invoke-virtual {p0, v0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1572
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_1
    :goto_2
    return-void

    .line 1534
    :pswitch_0
    iget-boolean v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    if-eqz v2, :cond_2

    .line 1535
    const-string v2, "pdjxwfp_00_ck"

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dj_orderid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v5}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1538
    :cond_2
    const-string v2, "pdjxontrip_07_ck"

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dj_orderid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v5}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1546
    :pswitch_1
    iget-boolean v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mTripCancel:Z

    if-nez v2, :cond_0

    .line 1549
    const-string v2, "pdjxpay_07_ck"

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dj_orderid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    invoke-virtual {v5}, Lcom/didi/ddrive/model/DDriveOrder;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1566
    :cond_3
    iget-boolean v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHasJumpToCancelTripActivity:Z

    if-nez v2, :cond_1

    .line 1569
    invoke-direct {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->doTripCancel()V

    goto/16 :goto_2

    .line 1531
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1544
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 246
    const-string v2, "OrderRecoveryManager"

    const-string v3, "onViewCreated"

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 248
    invoke-static {p0}, Lcom/didi/ddrive/eventbus/EventManager;->registEventBus(Ljava/lang/Object;)V

    .line 249
    new-instance v2, Lcom/didi/ddrive/managers/DriverComingManager;

    invoke-direct {v2, p0}, Lcom/didi/ddrive/managers/DriverComingManager;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    .line 250
    invoke-static {}, Lcom/didi/ddrive/managers/DriveConfirmManager;->getInstance()Lcom/didi/ddrive/managers/DriveConfirmManager;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mConfirmManager:Lcom/didi/ddrive/managers/DriveConfirmManager;

    .line 251
    new-instance v2, Lcom/didi/ddrive/managers/ShareManager;

    invoke-direct {v2}, Lcom/didi/ddrive/managers/ShareManager;-><init>()V

    iput-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareManager:Lcom/didi/ddrive/managers/ShareManager;

    .line 252
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 254
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mDriverComingManager:Lcom/didi/ddrive/managers/DriverComingManager;

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/DriverComingManager;->loadDriverInfo()V

    .line 256
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mShareManager:Lcom/didi/ddrive/managers/ShareManager;

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/ShareManager;->getShareConfigAndShareContentFromServer()V

    .line 257
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v2}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitleLeft()V

    .line 258
    invoke-static {}, Lcom/didi/ddrive/managers/CommentManager;->getInstance()Lcom/didi/ddrive/managers/CommentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/CommentManager;->getCommentTags()V

    .line 261
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v1

    .line 262
    .local v1, orderState:Lcom/didi/ddrive/model/OrderState;
    invoke-direct {p0, v1}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->restoreByOrderState(Lcom/didi/ddrive/model/OrderState;)V

    .line 263
    invoke-static {}, Lcom/didi/ddrive/managers/StreamMessageManager;->getInstance()Lcom/didi/ddrive/managers/StreamMessageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/ddrive/managers/StreamMessageManager;->notifyMessage()V

    .line 265
    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mOrder:Lcom/didi/ddrive/model/DDriveOrder;

    iget v2, v2, Lcom/didi/ddrive/model/DDriveOrder;->channel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 266
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/ddrive/net/tcp/DDriveTcpService;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 268
    const-string v2, "com.funcity.taxi.passenger.START_DRIVER_TCP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0}, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 271
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public popdownBackEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "backEvent"

    .prologue
    .line 1620
    iget v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mBackBlock:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mBackBlock:I

    .line 1621
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->backEventStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1623
    iget v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mBackBlock:I

    if-lez v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setTitleLeft()V

    .line 1626
    :cond_0
    return-void
.end method

.method public popupBackEvent(Z)V
    .locals 5
    .parameter "remove"

    .prologue
    const/4 v4, 0x0

    .line 1596
    const/4 v1, 0x0

    .line 1598
    .local v1, backEvent:Ljava/lang/Runnable;
    :try_start_0
    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->backEventStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    if-eqz p1, :cond_0

    .line 1604
    iget v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mBackBlock:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mBackBlock:I

    .line 1605
    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->backEventStack:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1608
    :cond_0
    if-eqz v1, :cond_1

    .line 1609
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1610
    iget-object v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mControllerView:Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;

    invoke-virtual {v3, v4}, Lcom/didi/ddrive/ui/component/DDriverWaitForArrivalControllerView;->setFlagEvaluateStarClicked(Z)V

    .line 1613
    :cond_1
    iget v3, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mBackBlock:I

    if-gtz v3, :cond_2

    .line 1614
    iput v4, p0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;->mBackBlock:I

    .line 1617
    :cond_2
    :goto_0
    return-void

    .line 1599
    :catch_0
    move-exception v2

    .line 1600
    .local v2, e:Ljava/util/NoSuchElementException;
    goto :goto_0
.end method
