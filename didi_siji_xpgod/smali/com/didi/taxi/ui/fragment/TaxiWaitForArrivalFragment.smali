.class public Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "TaxiWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;
.implements Lcom/didi/taxi/helper/TaxiWeixinPayHelper$TaxiWeixinPayHelperCallback;
.implements Lcom/sdu/didi/psnger/qqapi/QQPayHelper$QQPayHelperCallback;
.implements Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper$ZhifubaoPayHelperCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$TicketCheatingDialogListener;,
        Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$MyHandler;
    }
.end annotation


# static fields
.field private static final IM_SESSION_CLOSE:I = 0x3f5

.field private static final IM_SESSION_CREATING:I = 0x1

.field private static final IM_SESSION_DB_ERROR:I = 0x3

.field private static final IM_SESSION_DRIVER_VERSION_ERROR:I = 0x3f1

.field private static final IM_SESSION_SUCCESS:I = 0x2

.field public static final KEY_SERVICE_TYPE:Ljava/lang/String; = "service_type"

.field public static final KEY_TAXI_TICKET:Ljava/lang/String; = "taxi_ticket"

.field private static final LOG_TAG:Ljava/lang/String; = "TaxiWaitForArrivalFragment"

.field private static final MARK_CHECK_PAY_RESULT:I = 0xd

.field private static final MARK_COUNT_DOWN:I = 0x3

.field private static final MARK_EVALUATE:I = 0x5

.field private static final MARK_LOVE:I = 0x10

.field private static final MARK_MALL:I = 0x8

.field private static final MARK_ORDER_STATUS:I = 0x1

.field private static final MARK_SEND_RED_DIALOG:I = 0x9

.field private static final MARK_SHARE_DIALOG:I = 0xb

.field private static final MARK_SHOW_INPUT_METHOD:I = 0xf

.field private static final MARK_SNS_CONFIG:I = 0x7

.field private static final PAY_CODE_ERROR_CAN_NOT_PAY:I = 0x3f6

.field private static final PAY_CODE_ERROR_CARDID_NONE:I = 0x517

.field private static final PAY_CODE_ERROR_CLOSED_NOW:I = 0x3fd

.field private static final PAY_CODE_ERROR_ENTERPRISE_FAIL:I = 0x641

.field private static final PAY_CODE_ERROR_ENTERPRISE_ORDER_ERROR:I = 0x649

.field private static final PAY_CODE_ERROR_HAD_PAID:I = 0x3f3

.field private static final PAY_CODE_ERROR_NO_RESULT:I = 0x3fa

.field private static final PAY_CODE_ERROR_OPENID_NONE:I = 0x516

.field private static final PAY_CODE_ERROR_PAYING:I = 0x3f9

.field private static final PAY_CODE_ERROR_PROCESSING:I = 0x3f8

.field private static final PAY_CODE_ERROR_TICKET_CLOSE:I = 0x515

.field private static final PAY_CODE_ERROR_TICKET_INVALID:I = 0x577

.field private static final PAY_WARNING_BALANCE:I = 0x4e20

.field public static final REQUEST_CODE_ENTERPRISE_REIMBURSEMENT:I = 0x2

.field public static final REQUEST_CODE_SELECT_TAXI_TICKED:I = 0x1

.field public static final SERVICE_TYPE_NORMAL:I = 0x10

.field public static final SERVICE_TYPE_PAY_EVALUATE:I = 0x20

.field private static final TIME_LESS_ONE_HOUR:Ljava/lang/String; = "0"

.field private static final TIME_LESS_TO_NOW:Ljava/lang/String; = "2"

.field private static final TIME_MORE_ONE_HOUR:Ljava/lang/String; = "-1"

.field private static final TIME_MORE_THREE_DAY:Ljava/lang/String; = "1"

.field private static final TIME_TO_DIFF_SIZE:J = 0x927c0L

.field private static final TIME_TO_HALF_HOUR:J = 0x1b7740L

.field private static final TIME_TO_JUMP_EVALUATE:J = 0xa4cb80L

.field private static final TIME_TO_SHOW_DISTANCE:J = 0x36ee80L

.field private static final TIME_TO_UPDATE_COUNT_DOWN:J = 0xea60L

.field private static final TIME_TO_UPDATE_STATUS:J = 0xbb8L

.field public static needStop:Z


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

.field private businessPaySuccessListener:Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;

.field createSessionTimes:I

.field getResultCount:I

.field private isShowMall:Z

.field locationGetListener:Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;

.field private loop:I

.field private loveDialog:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mArrivalTriggered:Z

.field private mBackBlock:I

.field private mCancelTripHintDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mCarPoolCancelDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mCity:Ljava/lang/String;

.field private mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

.field private mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private mDriverPayChangeDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field mDriverPayChangedDialog:Lcom/didi/common/helper/DialogHelper;

.field private mEvaluateIntent:Landroid/content/Intent;

.field private mFlat:D

.field private mFlng:D

.field private mFreeDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mGetDriverLocationLooper:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mHasEnterpriseAmountInfoShown:Z

.field private mIMSessionState:I

.field private mIfPayDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mIsCarPoolCurrentCostGot:Z

.field private mIsCostDetailDelayed:Z

.field private mIsCostDetailReceived:Z

.field private mIsFooterArrivalClicked:Z

.field private mIsFooterPayClicked:Z

.field private mIsPaySucceedDelayed:Z

.field private mIsPaying:Z

.field private mIsPrePayInfoGot:Z

.field private mIsTravelEnd:Z

.field private mIsWxCardBinding:Z

.field private mLastCarPoolStatusUpdatedTime:J

.field private mLastPosRecvTime:J

.field private mLevel:I

.field private mMapZoom:Z

.field private mOnCarPoolMarkClickedListener:Landroid/view/View$OnClickListener;

.field private mOrder:Lcom/didi/taxi/model/TaxiOrder;

.field private mOrderStatusUpdateIntent:Landroid/content/Intent;

.field private mPayCloseDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mPayHelper:Lcom/didi/taxi/helper/TaxiWeixinPayHelper;

.field private mPayParams:Lcom/didi/common/model/PayParams;

.field private mPayRefreshDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mPayResult:Lcom/didi/taxi/model/TaxiPayResult;

.field private mPayRetryDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mPayWarningDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mPoor:J

.field mPushConnListener:Lcom/didi/frame/push/PushHelper$ReConnectionListener;

.field private mRedDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mShareDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mTaxiMapRouteListener:Lcom/didi/map/MapRouteListener;

.field private mTlat:D

.field private mTlng:D

.field private strMall:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->needStop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 336
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIMSessionState:I

    .line 816
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$5;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mGetDriverLocationLooper:Ljava/lang/Runnable;

    .line 838
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$6;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->locationGetListener:Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;

    .line 1338
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$11;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$11;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->businessPaySuccessListener:Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;

    .line 1744
    iput v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->createSessionTimes:I

    .line 2060
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$23;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$23;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPushConnListener:Lcom/didi/frame/push/PushHelper$ReConnectionListener;

    .line 2690
    iput v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResultCount:I

    .line 2812
    iput v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->loop:I

    .line 3145
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$32;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$32;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mCarPoolCancelDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3166
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$33;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$33;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mFreeDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3179
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$34;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$34;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mCancelTripHintDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3197
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$35;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$35;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDriverPayChangeDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3209
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$36;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$36;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3231
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$37;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$37;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayRefreshDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3261
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$38;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$38;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayCloseDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3274
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$39;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$39;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mShareDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3299
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$40;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$40;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mRedDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3332
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$41;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$41;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->loveDialog:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3352
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$42;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$42;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayWarningDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3369
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$43;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$43;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayRetryDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3386
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$44;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$44;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIfPayDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3404
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->backEventStack:Ljava/util/LinkedList;

    .line 3693
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$46;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$46;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mTaxiMapRouteListener:Lcom/didi/map/MapRouteListener;

    .line 3744
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$47;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$47;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOnCarPoolMarkClickedListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPrePayInfoGet()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Lcom/didi/taxi/model/TaxiOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showSendRedDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showShareDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onOrderStatusUpdated(Lcom/didi/taxi/model/TaxiOrderState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Lcom/didi/common/model/SNSConfig;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onSnsConfigGot(Lcom/didi/common/model/SNSConfig;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onPushIMUnreadReceived(I)V

    return-void
.end method

.method static synthetic access$1502(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCarPoolCurrentCostGot:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Lcom/didi/taxi/model/TaxiPayResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onPayResultGot(Lcom/didi/taxi/model/TaxiPayResult;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    return-void
.end method

.method static synthetic access$1800(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onEvaluateSubmitSucceed()V

    return-void
.end method

.method static synthetic access$1900(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mLevel:I

    return v0
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mGetDriverLocationLooper:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Lcom/didi/taxi/model/TaxiPrePayInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onPrePayinfoGot(Lcom/didi/taxi/model/TaxiPrePayInfo;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->loop:I

    return v0
.end method

.method static synthetic access$2208(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 158
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->loop:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->loop:I

    return v0
.end method

.method static synthetic access$2400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeDialog()V

    return-void
.end method

.method static synthetic access$2500(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayRequest()V

    return-void
.end method

.method static synthetic access$2600(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Lcom/didi/taxi/model/TaxiLove;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showWebView(Lcom/didi/taxi/model/TaxiLove;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getPayChannelId()I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPaySupportCheck(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doOrderStatusUpdate()V

    return-void
.end method

.method static synthetic access$3000(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayParamsGet()V

    return-void
.end method

.method static synthetic access$3100(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startWebActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doSnsConfigGet()V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->strMall:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initCountDownAlarm()V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayResultGet()V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showLoveDialog()V

    return-void
.end method

.method private cancelEvaluateAlarm()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mEvaluateIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mEvaluateIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 698
    :cond_0
    return-void
.end method

.method private cancelOrderStatusAlarm()V
    .locals 1

    .prologue
    .line 704
    invoke-static {}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelRequest4Trace()V

    .line 705
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrderStatusUpdateIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrderStatusUpdateIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 708
    :cond_0
    return-void
.end method

.method private createIMSession()V
    .locals 4

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getImSwitch()I

    move-result v0

    if-nez v0, :cond_0

    .line 1742
    :goto_0
    return-void

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$15;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private createIMSessionById()V
    .locals 4

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getImSwitch()I

    move-result v0

    if-nez v0, :cond_0

    .line 1688
    :goto_0
    return-void

    .line 1672
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$14;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$14;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private createIMSessionInDB(Lcom/didi/im/model/IMSession;)V
    .locals 5
    .parameter "session"

    .prologue
    .line 1791
    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 1792
    .local v1, sid:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getUID()Ljava/lang/String;

    move-result-object v2

    .line 1793
    .local v2, uid:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImSessionBySID(Ljava/lang/String;)Lcom/didi/im/model/IMSession;

    move-result-object v0

    .line 1795
    .local v0, oldSession:Lcom/didi/im/model/IMSession;
    if-eqz v0, :cond_0

    .line 1797
    invoke-virtual {v0, v2}, Lcom/didi/im/model/IMSession;->setUID(Ljava/lang/String;)V

    .line 1798
    invoke-static {v0, v1}, Lcom/didi/im/db/IMDBDataHelper;->updateImSessionBySId(Lcom/didi/im/model/IMSession;Ljava/lang/String;)I

    .line 1800
    invoke-virtual {v0}, Lcom/didi/im/model/IMSession;->getUnreadCnt()I

    move-result v3

    .line 1801
    .local v3, unread:I
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v4, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setIMUnRead(I)V

    .line 1807
    .end local v3           #unread:I
    :goto_0
    return-void

    .line 1804
    :cond_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/didi/im/db/IMDBDataHelper;->insertSession(Lcom/didi/im/model/IMSession;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)I

    goto :goto_0
.end method

.method private createIMUserInDB(Lcom/didi/im/model/IMSession;Ljava/util/List;)V
    .locals 6
    .parameter "session"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/im/model/IMSession;",
            "Ljava/util/List",
            "<",
            "Lcom/didi/im/model/IMUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1829
    .local p2, users:Ljava/util/List;,"Ljava/util/List<Lcom/didi/im/model/IMUser;>;"
    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v2

    .line 1831
    .local v2, sid:Ljava/lang/String;
    if-nez p2, :cond_1

    .line 1847
    :cond_0
    return-void

    .line 1835
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/didi/im/model/IMUser;

    .line 1837
    .local v4, user:Lcom/didi/im/model/IMUser;
    invoke-virtual {v4}, Lcom/didi/im/model/IMUser;->getUID()Ljava/lang/String;

    move-result-object v3

    .line 1838
    .local v3, uid:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImUserByID(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/im/model/IMUser;

    move-result-object v1

    .line 1839
    .local v1, oldUser:Lcom/didi/im/model/IMUser;
    invoke-virtual {v4, v2}, Lcom/didi/im/model/IMUser;->setSID(Ljava/lang/String;)V

    .line 1841
    if-nez v1, :cond_2

    .line 1842
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/didi/im/db/IMDBDataHelper;->insertUser(Lcom/didi/im/model/IMUser;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)I

    goto :goto_0

    .line 1844
    :cond_2
    invoke-static {v4}, Lcom/didi/im/db/IMDBDataHelper;->updateIMUser(Lcom/didi/im/model/IMUser;)I

    goto :goto_0
.end method

.method private doEvaluateSubmit(Ljava/lang/String;I)V
    .locals 2
    .parameter "content"
    .parameter "level"

    .prologue
    .line 2770
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContent:Ljava/lang/String;

    .line 2771
    iput p2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mLevel:I

    .line 2772
    const v1, 0x7f0b0335

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 2773
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$30;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$30;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 2796
    .local v0, l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p1, v0}, Lcom/didi/taxi/net/TaxiRequest;->comment(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 2797
    return-void
.end method

.method private doGetOnCar()V
    .locals 0

    .prologue
    .line 3478
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onCarGotOn()V

    .line 3479
    return-void
.end method

.method private doOrderStatusUpdate()V
    .locals 5

    .prologue
    .line 935
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->isCarPoolOrder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->updateCarPoolOrderStatusIfNeed()V

    .line 939
    :cond_0
    iget-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mArrivalTriggered:Z

    if-eqz v1, :cond_1

    .line 949
    :goto_0
    return-void

    .line 943
    :cond_1
    const/4 v0, 0x0

    .line 944
    .local v0, needPull:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mLastPosRecvTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 945
    const/4 v0, 0x1

    .line 947
    :cond_2
    invoke-static {v0}, Lcom/didi/taxi/helper/TaxiPushHelper;->sendLocation(Z)V

    goto :goto_0
.end method

.method private doPayParamsGet()V
    .locals 25

    .prologue
    .line 2381
    const v4, 0x7f0b046f

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 2383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 2384
    .local v1, orderId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v4

    iget v3, v4, Lcom/didi/taxi/model/TaxiCoupon;->couponId:I

    .line 2385
    .local v3, cid:I
    invoke-direct/range {p0 .. p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getCurrentPay()I

    move-result v2

    .line 2386
    .local v2, pay:I
    invoke-direct/range {p0 .. p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getEnterpriseStatus()I

    move-result v10

    .line 2387
    .local v10, enterpriseStatus:I
    const/4 v5, 0x0

    .line 2388
    .local v5, ticketId:Ljava/lang/String;
    const/16 v23, 0x1

    .line 2390
    .local v23, payApiFlag:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v4

    iget-object v0, v4, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    move-object/from16 v24, v0

    .line 2391
    .local v24, prePayInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;
    if-eqz v24, :cond_0

    .line 2392
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketId:Ljava/lang/String;

    .line 2393
    move-object/from16 v0, v24

    iget v0, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->payApiFlag:I

    move/from16 v23, v0

    .line 2396
    :cond_0
    const/4 v4, 0x1

    if-ne v10, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v4}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->isEnterpriseCheckedInCostDetail()Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v4}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->isEnterpriseCheckedInPaying()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2400
    :cond_1
    const/4 v5, 0x0

    .line 2403
    :cond_2
    const/4 v12, 0x0

    .line 2404
    .local v12, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/PayParams;>;"
    new-instance v12, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$27;

    .end local v12           #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/PayParams;>;"
    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$27;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 2412
    .restart local v12       #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/PayParams;>;"
    const/4 v4, 0x1

    move/from16 v0, v23

    if-ne v0, v4, :cond_3

    .line 2413
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/didi/frame/WebToActivity;->WX_PAY_OPEN_ID:Ljava/lang/String;

    sget-object v9, Lcom/didi/frame/WebToActivity;->QQ_PAY_CODE:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getPayChannelId()I

    move-result v11

    invoke-static/range {v1 .. v12}, Lcom/didi/taxi/net/TaxiRequest;->doGetNewGenPayParams(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/didi/common/net/ResponseListener;)V

    .line 2439
    :goto_0
    const/4 v4, 0x0

    sput-object v4, Lcom/didi/frame/WebToActivity;->WX_PAY_OPEN_ID:Ljava/lang/String;

    .line 2440
    const/4 v4, 0x0

    sput-object v4, Lcom/didi/frame/WebToActivity;->QQ_PAY_CODE:Ljava/lang/String;

    .line 2441
    return-void

    .line 2427
    :cond_3
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget-object v20, Lcom/didi/frame/WebToActivity;->WX_PAY_OPEN_ID:Ljava/lang/String;

    move-object v13, v1

    move v14, v2

    move v15, v3

    move-object/from16 v17, v5

    move/from16 v21, v10

    move-object/from16 v22, v12

    invoke-static/range {v13 .. v22}, Lcom/didi/taxi/net/TaxiRequest;->doGetGenPayParams(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private doPayRequest()V
    .locals 2

    .prologue
    .line 2293
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayParams:Lcom/didi/common/model/PayParams;

    .line 2294
    .local v0, params:Lcom/didi/common/model/PayParams;
    if-nez v0, :cond_0

    .line 2317
    :goto_0
    return-void

    .line 2298
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPaying:Z

    .line 2300
    iget v1, v0, Lcom/didi/common/model/PayParams;->channelId:I

    packed-switch v1, :pswitch_data_0

    .line 2314
    :pswitch_0
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayHelper:Lcom/didi/taxi/helper/TaxiWeixinPayHelper;

    invoke-virtual {v1, v0}, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->sendWXPayRequest(Lcom/didi/common/model/PayParams;)V

    goto :goto_0

    .line 2302
    :pswitch_1
    invoke-static {v0}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->sendQQPayRequest(Lcom/didi/common/model/PayParams;)V

    goto :goto_0

    .line 2306
    :pswitch_2
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayHelper:Lcom/didi/taxi/helper/TaxiWeixinPayHelper;

    invoke-virtual {v1, v0}, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->sendWXPayRequest(Lcom/didi/common/model/PayParams;)V

    goto :goto_0

    .line 2310
    :pswitch_3
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper;->sendZhifubaoPayRequest(Landroid/app/Activity;Lcom/didi/common/model/PayParams;)V

    goto :goto_0

    .line 2300
    nop

    :pswitch_data_0
    .packed-switch 0x7f
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doPayResultGet()V
    .locals 4

    .prologue
    .line 2661
    const v3, 0x7f0b043a

    invoke-direct {p0, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 2662
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 2664
    .local v0, orderId:Ljava/lang/String;
    const/4 v1, 0x1

    .line 2665
    .local v1, payApiFlag:I
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v3

    iget-object v2, v3, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    .line 2666
    .local v2, prePayInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;
    if-eqz v2, :cond_0

    .line 2667
    iget v1, v2, Lcom/didi/taxi/model/TaxiPrePayInfo;->payApiFlag:I

    .line 2671
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 2673
    new-instance v3, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$28;

    invoke-direct {v3, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$28;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-static {v0, v3}, Lcom/didi/taxi/net/TaxiRequest;->doGetNewPayResult(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 2688
    :goto_0
    return-void

    .line 2681
    :cond_1
    new-instance v3, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$29;

    invoke-direct {v3, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$29;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-static {v0, v3}, Lcom/didi/taxi/net/TaxiRequest;->doGetPayResult(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private doPaySupportCheck(I)V
    .locals 1
    .parameter "channelId"

    .prologue
    .line 2349
    packed-switch p1, :pswitch_data_0

    .line 2369
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayParamsGet()V

    .line 2372
    :goto_0
    return-void

    .line 2352
    :pswitch_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayParamsGet()V

    goto :goto_0

    .line 2356
    :pswitch_2
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayHelper:Lcom/didi/taxi/helper/TaxiWeixinPayHelper;

    invoke-virtual {v0, p0}, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->checkWxSupport(Lcom/didi/taxi/helper/TaxiWeixinPayHelper$TaxiWeixinPayHelperCallback;)V

    goto :goto_0

    .line 2360
    :pswitch_3
    invoke-static {p0}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->checkQQPaySupport(Lcom/sdu/didi/psnger/qqapi/QQPayHelper$QQPayHelperCallback;)V

    goto :goto_0

    .line 2364
    :pswitch_4
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayParamsGet()V

    goto :goto_0

    .line 2349
    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private doPositionUpdate(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isResumed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    .line 1035
    .local v0, position:Lcom/didi/taxi/model/TaxiPosition;
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->updatePosition(Lcom/didi/taxi/model/TaxiPosition;)V

    .line 1037
    iget-boolean v2, p1, Lcom/didi/taxi/model/TaxiOrderState;->isArrieved:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mArrivalTriggered:Z

    if-nez v2, :cond_0

    .line 1039
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mArrivalTriggered:Z

    .line 1040
    const v2, 0x7f0b0577

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 1042
    .local v1, prefix:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/util/Utils;->isInChristmasDay()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1043
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    const v3, 0x7f050005

    invoke-virtual {v2, v3}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 1047
    :goto_1
    const/4 v2, 0x2

    sput v2, Lcom/didi/common/util/Constant;->TaxiOrderType:I

    .line 1049
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v2, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showDrawerView(Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initPositionServiceAlarm()V

    goto :goto_0

    .line 1045
    :cond_2
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    goto :goto_1
.end method

.method private doPrePayInfoGet()V
    .locals 5

    .prologue
    .line 2815
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 2817
    .local v1, oid:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2818
    .local v3, ticketId:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v4

    iget-object v2, v4, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    .line 2819
    .local v2, prePayInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;
    if-eqz v2, :cond_0

    .line 2820
    iget-object v3, v2, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketId:Ljava/lang/String;

    .line 2823
    :cond_0
    const/4 v0, 0x0

    .line 2824
    .local v0, l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiPrePayInfo;>;"
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$31;

    .end local v0           #l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiPrePayInfo;>;"
    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$31;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 2840
    .restart local v0       #l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiPrePayInfo;>;"
    invoke-static {v1, v3, v0}, Lcom/didi/taxi/net/TaxiRequest;->getPrePayInfo(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 2841
    return-void
.end method

.method private doSnsConfigGet()V
    .locals 3

    .prologue
    .line 1112
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 1113
    .local v1, orderId:Ljava/lang/String;
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$9;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 1121
    .local v0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/SNSConfig;>;"
    invoke-static {v1, v0}, Lcom/didi/taxi/net/TaxiRequest;->getSNSConfig(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 1122
    return-void
.end method

.method private getCheckedTime()J
    .locals 6

    .prologue
    .line 3492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3493
    .local v0, time:J
    iget-wide v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPoor:J

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPoor:J

    const-wide/32 v4, -0x927c0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 3495
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPoor:J

    add-long v0, v2, v4

    .line 3497
    :cond_1
    return-wide v0
.end method

.method private getCurrentPay()I
    .locals 1

    .prologue
    .line 2460
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    if-eqz v0, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getCostDetailPay()I

    move-result v0

    .line 2463
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getPay()I

    move-result v0

    goto :goto_0
.end method

.method private getEnterpriseStatus()I
    .locals 1

    .prologue
    .line 2452
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    if-eqz v0, :cond_0

    .line 2453
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getCostDetailEnterpriseStatus()I

    move-result v0

    .line 2455
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getEnterpriseStatus()I

    move-result v0

    goto :goto_0
.end method

.method private getIMSessionUserList(Lcom/didi/im/model/IMSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 1810
    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$16;

    invoke-direct {v1, p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$16;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Lcom/didi/im/model/IMSession;)V

    invoke-static {v0, v1}, Lcom/didi/im/net/IMRequest;->getSessUsrList(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 1817
    return-void
.end method

.method private getMall()V
    .locals 4

    .prologue
    .line 3620
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-nez v0, :cond_1

    .line 3629
    :cond_0
    :goto_0
    return-void

    .line 3624
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCreditTxt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isShowMall:Z

    if-nez v0, :cond_0

    .line 3625
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCreditTxt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->strMall:Ljava/lang/String;

    .line 3626
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isShowMall:Z

    goto :goto_0
.end method

.method private getOrderStatusRepeatTime()J
    .locals 3

    .prologue
    .line 682
    const-string v1, "coor_interval"

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, interval:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Not Found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    :cond_0
    const-wide/16 v1, 0xbb8

    .line 688
    :goto_0
    return-wide v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    goto :goto_0
.end method

.method private getPayChannelId()I
    .locals 1

    .prologue
    .line 2444
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    if-eqz v0, :cond_0

    .line 2445
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getCostDetailPayChannelId()I

    move-result v0

    .line 2447
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getPayChannelId()I

    move-result v0

    goto :goto_0
.end method

.method private getPushCostTraceLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tp_scrum"

    .prologue
    .line 3660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3661
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3663
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3664
    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3665
    const-string v2, "timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3666
    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3667
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v2, :cond_0

    .line 3668
    const-string v2, "oId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3670
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getResourceString(I)Ljava/lang/String;
    .locals 1
    .parameter "rid"

    .prologue
    .line 3579
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourceString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "rid"
    .parameter "str"

    .prologue
    .line 3583
    invoke-static {p1, p2}, Lcom/didi/common/helper/ResourcesHelper;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServiceType()I
    .locals 3

    .prologue
    .line 3541
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "service_type"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getServiceType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 526
    :goto_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getIsOrderFinished()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$4;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$4;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isFromOrderHistory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isFromOrderRecovery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    :cond_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->createIMSessionById()V

    .line 542
    :goto_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerPushListeners()V

    .line 543
    return-void

    .line 508
    :sswitch_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initPositionServiceAlarm()V

    goto :goto_0

    .line 512
    :sswitch_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initMapView()V

    .line 513
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getMall()V

    .line 515
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isBookingOrder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->hideFooterBar()V

    .line 517
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initHalfHourAlarmIfNeed()V

    .line 518
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initCountDownAlarm()V

    goto :goto_0

    .line 520
    :cond_2
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initCarPoolIfNeed()V

    .line 521
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initOrderStatusAlarm()V

    goto :goto_0

    .line 539
    :cond_3
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->createIMSession()V

    goto :goto_1

    .line 505
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private initCarPoolIfNeed()V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isCarPoolOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDepartMarker()V

    .line 548
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCommonMarker()V

    .line 550
    :cond_0
    return-void
.end method

.method private initContentView()V
    .locals 6

    .prologue
    .line 386
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    .line 387
    .local v0, controllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isFromOrderHistory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setFromHistory(Z)V

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 391
    .local v1, order:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {v0, p0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setListener(Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView$TaxiWaitForArrivalControllerListener;)V

    .line 393
    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setOrder(Lcom/didi/taxi/model/TaxiOrder;)V

    .line 394
    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setDriver(Lcom/didi/taxi/model/TaxiDriver;)V

    .line 396
    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getImSwitch()I

    move-result v2

    if-nez v2, :cond_1

    .line 397
    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->invisibleIMView()V

    .line 400
    :cond_1
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 402
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getServiceType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 414
    :goto_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isFromOrderHistory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 415
    new-instance v2, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$1;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$1;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-virtual {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    .line 433
    :cond_2
    :goto_1
    return-void

    .line 404
    :sswitch_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initControllerViewByOrder()V

    .line 405
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->stopCallDriverLocation()V

    goto :goto_0

    .line 409
    :sswitch_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initLocationView()V

    .line 410
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 422
    :cond_3
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isBookingOrder()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isFromOrderRecovery()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 423
    :cond_4
    new-instance v2, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$2;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$2;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-virtual {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 402
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private initControllerViewByOrder()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 465
    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsTravelEnd:Z

    .line 466
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getFeeDetail()Lcom/didi/taxi/model/TaxiFeeDetail;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getIsOrderFinished()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    if-eq v0, v1, :cond_1

    .line 471
    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    .line 473
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isCarPoolOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onPassengerGoton()V

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onPassengerGotOff()V

    .line 478
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getFeeDetail()Lcom/didi/taxi/model/TaxiFeeDetail;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showCostDetail(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showPayEvaluateView(Lcom/didi/taxi/model/TaxiOrder;)V

    goto :goto_0
.end method

.method private initCountDownAlarm()V
    .locals 5

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->refreshCountDownTime()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, timeFlag:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initEvaluateAlarm()V

    .line 604
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initOrderStatusAlarm()V

    .line 605
    iget-wide v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mFlat:D

    iget-wide v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mFlng:D

    invoke-static {v1, v2, v3, v4}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setBookingMapViewZoom(DD)V

    .line 606
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showMyLocationMarker()V

    .line 607
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showFooterBar()V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 612
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doEvaluateShow()V

    goto :goto_0

    .line 616
    :cond_2
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private initEvaluateAlarm()V
    .locals 9

    .prologue
    .line 626
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    .line 627
    .local v0, handler:Landroid/os/Handler;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 628
    .local v2, msg:Landroid/os/Message;
    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->obtainAlarmIntent(Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    .line 630
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xa4cb80

    add-long v3, v5, v7

    .line 631
    .local v3, startTime:J
    invoke-static {v1, v3, v4}, Lcom/didi/common/alarm/CommonAlarmManager;->setOnceAlarm(Landroid/content/Intent;J)V

    .line 633
    iput-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mEvaluateIntent:Landroid/content/Intent;

    .line 634
    return-void
.end method

.method private initHalfHourAlarmIfNeed()V
    .locals 7

    .prologue
    .line 584
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/didi/common/alarm/CommonAlarmReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "book_half_hour_action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v3, "order_id"

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getCheckedTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1b7740

    sub-long v0, v3, v5

    .line 590
    .local v0, delayed:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/didi/common/alarm/CommonAlarmManager;->setOnceAlarm(Landroid/content/Intent;J)V

    .line 593
    :cond_0
    return-void
.end method

.method private initLocationView()V
    .locals 1

    .prologue
    .line 486
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setBottomMargin(I)V

    .line 487
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$3;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 495
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->showLocation()V

    .line 496
    return-void
.end method

.method private initMapView()V
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    .line 436
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->addMapListener()V

    .line 438
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isBookingOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mCity:Ljava/lang/String;

    iget-wide v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mFlat:D

    iget-wide v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mFlng:D

    iget-wide v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mTlat:D

    iget-wide v7, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mTlng:D

    invoke-static/range {v0 .. v8}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showStartEndMarkerAndLine(Ljava/lang/String;DDDD)V

    .line 440
    const-string v0, "-1"

    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->refreshCountDownTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-wide v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mFlat:D

    iget-wide v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mFlng:D

    iget-wide v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mTlat:D

    iget-wide v6, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mTlng:D

    invoke-static/range {v0 .. v7}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setMapViewZoom(DDDD)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v0

    iget v11, v0, Lcom/didi/taxi/model/TaxiDriver;->arrivedTime:I

    .line 445
    .local v11, waitTime:I
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v0

    iget-object v4, v0, Lcom/didi/taxi/model/TaxiDriver;->distance:Ljava/lang/String;

    .line 447
    .local v4, distance:Ljava/lang/String;
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 448
    .local v9, lat:Ljava/lang/Double;
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 451
    .local v10, lng:Ljava/lang/Double;
    :try_start_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiDriver;->lat:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 452
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiDriver;->lng:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 456
    :goto_1
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 457
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showDistanceMarker(DDLjava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_2
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showMyLocationMarker()V

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private initOrderStatusAlarm()V
    .locals 5

    .prologue
    .line 641
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    .line 642
    .local v0, handler:Landroid/os/Handler;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 643
    .local v2, msg:Landroid/os/Message;
    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->obtainAlarmIntent(Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    .line 645
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmReceiver;->setChkAnswerHandler(Landroid/os/Handler;)V

    .line 646
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getOrderStatusRepeatTime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/didi/common/alarm/CommonAlarmManager;->setRepeatingAlarm(Landroid/content/Intent;J)V

    .line 648
    iput-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrderStatusUpdateIntent:Landroid/content/Intent;

    .line 649
    return-void
.end method

.method private initPositionServiceAlarm()V
    .locals 7

    .prologue
    .line 569
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getCheckedTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v5}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 570
    .local v0, cha:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPositionServiceAlarm cha "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 571
    const-wide/32 v3, 0x1b7740

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 578
    :goto_0
    return-void

    .line 575
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/didi/common/service/PositionService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 576
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "oid"

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private isBookingOrder()Z
    .locals 2

    .prologue
    .line 3529
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFromOrderHistory()Z
    .locals 3

    .prologue
    .line 3533
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getArguments()Landroid/os/Bundle;

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

.method private isFromOrderRecovery()Z
    .locals 3

    .prologue
    .line 3537
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getArguments()Landroid/os/Bundle;

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

.method private obtainAlarmIntent(Landroid/os/Message;)Landroid/content/Intent;
    .locals 4
    .parameter "msg"

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 661
    .local v0, action:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 662
    const-string v0, "check_status_action"

    .line 668
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/didi/common/alarm/CommonAlarmReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 669
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const-string v2, "msg"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 672
    return-object v1

    .line 664
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 665
    const-string v0, "evaluate_action"

    goto :goto_0
.end method

.method private onCancelTripTriggered()V
    .locals 0

    .prologue
    .line 1159
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->switchToWebCacelOrderPage()V

    .line 1160
    return-void
.end method

.method private onCarGotOn()V
    .locals 1

    .prologue
    .line 3482
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showArrivalView()V

    .line 3483
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->cancelOrderStatusAlarm()V

    .line 3484
    return-void
.end method

.method private onEnterPriseBalanceLack(ILjava/lang/String;)V
    .locals 1
    .parameter "enterpriseStatus"
    .parameter "enterpriseDesc"

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    if-eqz v0, :cond_0

    .line 2575
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iput p1, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->enterpriseStatus:I

    .line 2576
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iput-object p2, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->enterpriseDesc:Ljava/lang/String;

    .line 2579
    :cond_0
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    if-eqz v0, :cond_1

    .line 2580
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->refreshCostDetailSale()V

    .line 2585
    :goto_0
    return-void

    .line 2582
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->refreshEnterpriseStatus()V

    .line 2583
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->refreshSale()V

    goto :goto_0
.end method

.method private onEvaluateSubmitSucceed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2800
    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsTravelEnd:Z

    .line 2801
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->clearDepart()V

    .line 2802
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popupBackEvent(ZZ)V

    .line 2804
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getIsOrderFinished()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onEvaluateSucceedInPaying()V

    .line 2809
    :goto_0
    return-void

    .line 2807
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onEvaluateSucceed(Lcom/didi/taxi/model/TaxiOrder;)V

    goto :goto_0
.end method

.method private onOrderStatusUpdated(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1020
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mLastPosRecvTime:J

    .line 1021
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPositionUpdate(Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 1022
    return-void
.end method

.method private onPayParamsFailed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2505
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayParams:Lcom/didi/common/model/PayParams;

    .line 2507
    .local v1, params:Lcom/didi/common/model/PayParams;
    iget v2, v1, Lcom/didi/common/model/PayParams;->errno:I

    const/16 v3, 0x3f6

    if-ne v2, v3, :cond_0

    .line 2508
    iget-object v2, v1, Lcom/didi/common/model/PayParams;->errmsg:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showMsgConfirmDialog(Ljava/lang/String;)V

    .line 2550
    :goto_0
    return-void

    .line 2510
    :cond_0
    iget v2, v1, Lcom/didi/common/model/PayParams;->errno:I

    const/16 v3, 0x3f9

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/didi/common/model/PayParams;->errno:I

    const/16 v3, 0x3f8

    if-eq v2, v3, :cond_1

    iget v2, v1, Lcom/didi/common/model/PayParams;->errno:I

    const/16 v3, 0x3fa

    if-ne v2, v3, :cond_2

    .line 2514
    :cond_1
    iget-object v2, v1, Lcom/didi/common/model/PayParams;->errmsg:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayRefreshDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2516
    :cond_2
    iget v2, v1, Lcom/didi/common/model/PayParams;->errno:I

    const/16 v3, 0x3f3

    if-ne v2, v3, :cond_3

    .line 2518
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayResultGet()V

    goto :goto_0

    .line 2520
    :cond_3
    iget v2, v1, Lcom/didi/common/model/PayParams;->errno:I

    const/16 v3, 0x3fd

    if-ne v2, v3, :cond_4

    .line 2521
    iget-object v2, v1, Lcom/didi/common/model/PayParams;->errmsg:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayCloseDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2524
    :cond_4
    iget v2, v1, Lcom/didi/common/model/PayParams;->errno:I

    const/16 v3, 0x516

    if-eq v2, v3, :cond_5

    iget v2, v1, Lcom/didi/common/model/PayParams;->errno:I

    const/16 v3, 0x517

    if-ne v2, v3, :cond_6

    .line 2526
    :cond_5
    iput-boolean v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsWxCardBinding:Z

    .line 2527
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->sendPayCheckRequest()V

    goto :goto_0

    .line 2529
    :cond_6
    iget v2, v1, Lcom/didi/common/model/PayParams;->errno:I

    const/16 v3, 0x515

    if-ne v2, v3, :cond_7

    .line 2530
    iget-object v2, v1, Lcom/didi/common/model/PayParams;->errmsg:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayTicketCheatingDialog(Ljava/lang/String;)V

    .line 2531
    invoke-direct {p0, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onTicketCheatingFound(Z)V

    goto :goto_0

    .line 2533
    :cond_7
    iget v2, v1, Lcom/didi/common/model/PayParams;->errno:I

    const/16 v3, 0x577

    if-ne v2, v3, :cond_8

    .line 2534
    iget-object v2, v1, Lcom/didi/common/model/PayParams;->errmsg:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayTicketCheatingDialog(Ljava/lang/String;)V

    .line 2535
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onTicketCheatingFound(Z)V

    goto :goto_0

    .line 2538
    :cond_8
    iget v2, v1, Lcom/didi/common/model/PayParams;->errno:I

    const/16 v3, 0x641

    if-lt v2, v3, :cond_9

    iget v2, v1, Lcom/didi/common/model/PayParams;->errno:I

    const/16 v3, 0x649

    if-gt v2, v3, :cond_9

    .line 2541
    iget-object v2, v1, Lcom/didi/common/model/PayParams;->errmsg:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showMsgConfirmDialog(Ljava/lang/String;)V

    .line 2542
    iget v2, v1, Lcom/didi/common/model/PayParams;->enterpriseStatus:I

    iget-object v3, v1, Lcom/didi/common/model/PayParams;->enterpriseDesc:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onEnterPriseBalanceLack(ILjava/lang/String;)V

    goto :goto_0

    .line 2546
    :cond_9
    iget-object v2, v1, Lcom/didi/common/model/PayParams;->errmsg:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f0b04f2

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 2548
    .local v0, errMsg:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayNetFailedDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2546
    .end local v0           #errMsg:Ljava/lang/String;
    :cond_a
    iget-object v0, v1, Lcom/didi/common/model/PayParams;->errmsg:Ljava/lang/String;

    goto :goto_1
.end method

.method private onPayParamsSucceed()V
    .locals 3

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayParams:Lcom/didi/common/model/PayParams;

    .line 2490
    .local v0, params:Lcom/didi/common/model/PayParams;
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v1, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onPayParamsSucceed(Lcom/didi/common/model/PayParams;)V

    .line 2492
    iget-object v1, v0, Lcom/didi/common/model/PayParams;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/didi/common/model/PayParams;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    iget v1, v1, Lcom/didi/taxi/model/TaxiPayInfo;->isShowDialog:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2493
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2494
    iget-object v1, v0, Lcom/didi/common/model/PayParams;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiPayInfo;->mDialogTitle:Ljava/lang/String;

    iget-object v2, v0, Lcom/didi/common/model/PayParams;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiPayInfo;->mDialogContent:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showFreeDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    :goto_0
    const-string v1, "TaxiWaitForArrivalFragment onPayParamsSucceed"

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 2499
    return-void

    .line 2496
    :cond_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayRequest()V

    goto :goto_0
.end method

.method private onPayResultGot(Lcom/didi/taxi/model/TaxiPayResult;)V
    .locals 4
    .parameter "result"

    .prologue
    const v3, 0x7f0b0439

    const/4 v2, 0x0

    .line 2696
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPaying:Z

    .line 2698
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2699
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2700
    invoke-direct {p0, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayRefreshDialog(Ljava/lang/String;)V

    .line 2733
    :goto_0
    return-void

    .line 2704
    :cond_0
    iget v0, p1, Lcom/didi/taxi/model/TaxiPayResult;->payState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2705
    iput v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResultCount:I

    .line 2707
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2708
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onPaySuccessed(Lcom/didi/taxi/model/TaxiPayResult;)V

    goto :goto_0

    .line 2712
    :cond_1
    iget v0, p1, Lcom/didi/taxi/model/TaxiPayResult;->payState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/didi/taxi/model/TaxiPayResult;->payState:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/didi/taxi/model/TaxiPayResult;->payState:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    .line 2715
    :cond_2
    iput v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResultCount:I

    .line 2717
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2718
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiPayResult;->payInfo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayRetryDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2722
    :cond_3
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResultCount:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_4

    .line 2723
    const-string v0, "wa_pay_ng_show"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2725
    iput v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResultCount:I

    .line 2726
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2727
    invoke-direct {p0, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayRefreshDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2731
    :cond_4
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResultCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResultCount:I

    .line 2732
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private onPaySuccessed(Lcom/didi/taxi/model/TaxiPayResult;)V
    .locals 9
    .parameter "re"

    .prologue
    const-wide/high16 v7, 0x4059

    const-wide/16 v5, 0x7d0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2593
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2594
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPaySucceedDelayed:Z

    .line 2595
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayResult:Lcom/didi/taxi/model/TaxiPayResult;

    .line 2655
    :goto_0
    return-void

    .line 2599
    :cond_0
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->clearDepart()V

    .line 2601
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsTravelEnd:Z

    .line 2602
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayParams:Lcom/didi/common/model/PayParams;

    iget-object v4, v4, Lcom/didi/common/model/PayParams;->share:Lcom/didi/taxi/model/TaxiPayShare;

    iput-object v4, v1, Lcom/didi/taxi/model/TaxiOrder;->share:Lcom/didi/taxi/model/TaxiPayShare;

    .line 2603
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iput v2, v1, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    .line 2604
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1, v2}, Lcom/didi/taxi/model/TaxiOrder;->setIsOrderFinished(I)V

    .line 2606
    if-eqz p1, :cond_6

    .line 2607
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget-object v4, p1, Lcom/didi/taxi/model/TaxiPayResult;->mRedInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-virtual {v1, v4}, Lcom/didi/taxi/model/TaxiOrder;->setRedRecord(Lcom/didi/taxi/model/TaxiRedRecordInfo;)V

    .line 2608
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v4, p1, Lcom/didi/taxi/model/TaxiPayResult;->mPayInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    iput-object v4, v1, Lcom/didi/taxi/model/TaxiCoupon;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    .line 2609
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget-object v4, p1, Lcom/didi/taxi/model/TaxiPayResult;->mLove:Lcom/didi/taxi/model/TaxiLove;

    invoke-virtual {v1, v4}, Lcom/didi/taxi/model/TaxiOrder;->setLove(Lcom/didi/taxi/model/TaxiLove;)V

    .line 2610
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget v1, p1, Lcom/didi/taxi/model/TaxiPayResult;->reimburseStatus:I

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/didi/taxi/model/TaxiOrder;->setIsVip(I)V

    .line 2611
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget v1, p1, Lcom/didi/taxi/model/TaxiPayResult;->reimburseStatus:I

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/didi/taxi/model/TaxiOrder;->setVipPayStatus(I)V

    .line 2618
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onpaysuccessed love:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 2620
    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiPayResult;->mLove:Lcom/didi/taxi/model/TaxiLove;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiPayResult;->mLove:Lcom/didi/taxi/model/TaxiLove;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiLove;->btnUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onpaysuccessed love content:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lcom/didi/taxi/model/TaxiPayResult;->mLove:Lcom/didi/taxi/model/TaxiLove;

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiLove;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 2626
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2638
    :cond_1
    :goto_4
    const/4 v0, 0x0

    .line 2639
    .local v0, paid:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 2640
    iget v1, p1, Lcom/didi/taxi/model/TaxiPayResult;->orgPrice:I

    int-to-double v4, v1

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 2643
    :cond_2
    iget-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    if-eqz v1, :cond_9

    .line 2644
    const-string v1, "tp_scrum0_push_paysuccpage"

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getPushCostTraceLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2646
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getCostDetailPay()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 2649
    :cond_3
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1, v4, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onCostDetailPaySucceed(Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;)V

    .line 2654
    :goto_5
    invoke-virtual {p0, v2, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popupBackEvent(ZZ)V

    goto/16 :goto_0

    .end local v0           #paid:Ljava/lang/String;
    :cond_4
    move v1, v3

    .line 2610
    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 2611
    goto/16 :goto_2

    .line 2614
    :cond_6
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayParams:Lcom/didi/common/model/PayParams;

    iget-object v4, v4, Lcom/didi/common/model/PayParams;->mRedInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    invoke-virtual {v1, v4}, Lcom/didi/taxi/model/TaxiOrder;->setRedRecord(Lcom/didi/taxi/model/TaxiRedRecordInfo;)V

    .line 2615
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayParams:Lcom/didi/common/model/PayParams;

    iget-object v4, v4, Lcom/didi/common/model/PayParams;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    iput-object v4, v1, Lcom/didi/taxi/model/TaxiCoupon;->mInfo:Lcom/didi/taxi/model/TaxiPayInfo;

    goto/16 :goto_3

    .line 2628
    :cond_7
    if-eqz p1, :cond_8

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiPayResult;->mRedInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiPayResult;->mRedInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    iget v1, v1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mIsRed:I

    if-ne v1, v2, :cond_8

    .line 2631
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 2633
    :cond_8
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->isShowShare()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2635
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 2651
    .restart local v0       #paid:Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1, v4, v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onPaySucceed(Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private onPrePayinfoGot(Lcom/didi/taxi/model/TaxiPrePayInfo;)V
    .locals 3
    .parameter "t"

    .prologue
    const/4 v2, 0x1

    .line 2844
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiPrePayInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2866
    :cond_0
    :goto_0
    return-void

    .line 2848
    :cond_1
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPrePayInfoGot:Z

    .line 2849
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiPrePayInfo;->activityInfo:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/taxi/model/TaxiCoupon;->activityInfo:Ljava/lang/String;

    .line 2850
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iput-object p1, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    .line 2852
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    if-eqz v0, :cond_2

    .line 2853
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->updateCostDetailSaleInfo()V

    .line 2859
    :goto_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getServiceType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isFromOrderHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->isPaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getIsOrderFinished()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 2864
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showEnterpriseAmountInfoIfNeed(J)V

    goto :goto_0

    .line 2855
    :cond_2
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->updatePayWays()V

    .line 2856
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->updatePreSaleText()V

    goto :goto_1
.end method

.method private onPushIMUnreadReceived(I)V
    .locals 1
    .parameter "unreadCount"

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setIMUnRead(I)V

    .line 1887
    return-void
.end method

.method private onSnsConfigGot(Lcom/didi/common/model/SNSConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 1131
    if-nez p1, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setShare(Lcom/didi/common/model/SNSConfig;)V

    .line 1137
    :goto_0
    return-void

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setShare(Lcom/didi/common/model/SNSConfig;)V

    goto :goto_0
.end method

.method private onTaxiReimbursementFinished(ILandroid/content/Intent;)V
    .locals 2
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2759
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2760
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setVipPayStatus(I)V

    .line 2761
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->updatePaidEnterpriseView()V

    .line 2763
    :cond_0
    return-void
.end method

.method private onTaxiTicketActivityResult(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1938
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1939
    const-string v0, "taxi_ticket"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onTaxiTicketSelected(Ljava/lang/String;)V

    .line 1942
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->isPaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1943
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showInputMethod()V

    .line 1945
    :cond_1
    return-void
.end method

.method private onTaxiTicketSelected(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iput-object p1, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketId:Ljava/lang/String;

    .line 1951
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    if-eqz v0, :cond_0

    .line 1952
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->refreshCostDetailSale()V

    .line 1964
    :goto_0
    return-void

    .line 1957
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->resetTicketState()V

    .line 1959
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->isPaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1960
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->refreshSale()V

    goto :goto_0

    .line 1962
    :cond_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPrePayInfoGet()V

    goto :goto_0
.end method

.method private onTicketCheatingFound(Z)V
    .locals 1
    .parameter "clostTicket"

    .prologue
    .line 2565
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    if-eqz v0, :cond_0

    .line 2566
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onTicketCheatingFoundInCostDetail(Z)V

    .line 2570
    :goto_0
    return-void

    .line 2568
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onTicketCheatingFound(Z)V

    goto :goto_0
.end method

.method private refreshCountDownTime()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/32 v12, 0xf731400

    const-wide/32 v10, 0x36ee80

    .line 3508
    iget-object v6, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v6}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getCheckedTime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 3509
    .local v0, cha:J
    cmp-long v6, v0, v10

    if-lez v6, :cond_0

    cmp-long v6, v0, v12

    if-gtz v6, :cond_0

    .line 3511
    div-long v2, v0, v10

    .line 3512
    .local v2, hours:J
    mul-long v6, v10, v2

    sub-long v6, v0, v6

    const-wide/32 v8, 0xea60

    div-long v4, v6, v8

    .line 3514
    .local v4, minutes:J
    long-to-int v6, v2

    long-to-int v7, v4

    invoke-static {v6, v7}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showTimeDownMarker(II)V

    .line 3516
    const-string v6, "-1"

    .line 3525
    .end local v2           #hours:J
    .end local v4           #minutes:J
    :goto_0
    return-object v6

    .line 3518
    :cond_0
    cmp-long v6, v0, v12

    if-lez v6, :cond_1

    .line 3519
    const-string v6, "1"

    goto :goto_0

    .line 3521
    :cond_1
    const-wide/32 v6, -0xa4cb80

    cmp-long v6, v0, v6

    if-gtz v6, :cond_2

    .line 3522
    const-string v6, "2"

    goto :goto_0

    .line 3525
    :cond_2
    const-string v6, "0"

    goto :goto_0
.end method

.method private refreshIMUnreadInThread()V
    .locals 1

    .prologue
    .line 1852
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$17;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$17;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-virtual {v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$17;->start()Lthread/Job;

    .line 1869
    return-void
.end method

.method private refreshSale()V
    .locals 1

    .prologue
    .line 3453
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    if-eqz v0, :cond_0

    .line 3454
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->refreshCostDetailSale()V

    .line 3458
    :goto_0
    return-void

    .line 3456
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->refreshSale()V

    goto :goto_0
.end method

.method private registerOnCurrentCostChangedListener()V
    .locals 2

    .prologue
    .line 1893
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$19;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$19;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerOnCurrentCostChangedListener(Lcom/didi/taxi/helper/TaxiPushHelper$OnCurrentCostChangedListener;Ljava/lang/String;)V

    .line 1910
    return-void
.end method

.method private registerPositionPushListener()V
    .locals 2

    .prologue
    .line 918
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$7;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerPositionPushListener(Lcom/didi/taxi/helper/TaxiPushHelper$OnDriverPositionReceivedListener;Ljava/lang/String;)V

    .line 925
    return-void
.end method

.method private registerPushIMUnreadListener()V
    .locals 1

    .prologue
    .line 1872
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$18;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$18;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-static {v0}, Lcom/didi/im/helper/IMPushHelper;->registerIMUnreadCountChangeListener(Lcom/didi/im/helper/IMPushHelper$IMUnreadCountChangeListener;)V

    .line 1879
    return-void
.end method

.method private registerPushListeners()V
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerPushConnListener()V

    .line 554
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerPushIMUnreadListener()V

    .line 555
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerDriverLetPayListener()V

    .line 556
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerPaySucceedListener()V

    .line 557
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerOnCurrentCostChangedListener()V

    .line 558
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerDriverShareTripLetPayListener()V

    .line 559
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerTerminateOrderNoticeListener()V

    .line 561
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getServiceType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 562
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->registerPositionPushListener()V

    .line 564
    :cond_0
    return-void
.end method

.method private registerTerminateOrderNoticeListener()V
    .locals 2

    .prologue
    .line 1192
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$10;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerTerminateOrderNoticeListener(Lcom/didi/taxi/helper/TaxiPushHelper$OnTerminateOrderNoiceListener;Ljava/lang/String;)V

    .line 1200
    return-void
.end method

.method private removeDialog()V
    .locals 1

    .prologue
    .line 3137
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 3138
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 3140
    :cond_0
    return-void
.end method

.method private removeLoadingDialog()V
    .locals 0

    .prologue
    .line 3133
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 3134
    return-void
.end method

.method private restoreOrderState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 3566
    if-nez p1, :cond_1

    .line 3576
    :cond_0
    :goto_0
    return-void

    .line 3570
    :cond_1
    const-string v1, "order"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 3571
    .local v0, orderObj:Ljava/io/Serializable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3574
    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .end local v0           #orderObj:Ljava/io/Serializable;
    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    goto :goto_0
.end method

.method private sendBroadcast()V
    .locals 3

    .prologue
    .line 1659
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.didi.extend.huawei"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1660
    .local v0, intent2:Landroid/content/Intent;
    const-string v1, "huawei.receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1661
    const-string v1, "message"

    const-string v2, "didi_finish"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "com.didi.extend.permission.MESSAGE"

    invoke-virtual {v1, v0, v2}, Lcom/didi/common/base/BaseApplication;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1663
    return-void
.end method

.method private sendPayCheckRequest()V
    .locals 2

    .prologue
    .line 2553
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getPayChannelId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2562
    :goto_0
    return-void

    .line 2555
    :sswitch_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayHelper:Lcom/didi/taxi/helper/TaxiWeixinPayHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;->sendWXPayCheckRequest(Landroid/content/Context;)V

    goto :goto_0

    .line 2559
    :sswitch_1
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->sendQQPayCheckRequest(Landroid/app/Activity;)V

    goto :goto_0

    .line 2553
    :sswitch_data_0
    .sparse-switch
        0x7f -> :sswitch_0
        0x84 -> :sswitch_1
    .end sparse-switch
.end method

.method private showCarPoolCancelDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 2871
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2884
    :goto_0
    return-void

    .line 2875
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2876
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 2879
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2880
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0294

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2881
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b042f

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 2882
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mCarPoolCancelDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2883
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showDriverIMLowVersionDialog()V
    .locals 3

    .prologue
    .line 2906
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2907
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b056c

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b056b

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2912
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2913
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2914
    return-void
.end method

.method private showDriverPayChangedDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 2889
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2903
    :goto_0
    return-void

    .line 2893
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDriverPayChangedDialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_1

    .line 2894
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDriverPayChangedDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 2897
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2898
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2900
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDriverPayChangeDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2901
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2902
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDriverPayChangedDialog:Lcom/didi/common/helper/DialogHelper;

    goto :goto_0
.end method

.method private showEnterpriseAmountInfoIfNeed(J)V
    .locals 2
    .parameter "delayTime"

    .prologue
    .line 3590
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    if-nez v0, :cond_1

    .line 3612
    :cond_0
    :goto_0
    return-void

    .line 3595
    :cond_1
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-object v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget v0, v0, Lcom/didi/taxi/model/TaxiPrePayInfo;->enterpriseStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHasEnterpriseAmountInfoShown:Z

    if-nez v0, :cond_0

    .line 3597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHasEnterpriseAmountInfoShown:Z

    .line 3599
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 3600
    const v0, 0x7f0b046d

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    goto :goto_0

    .line 3604
    :cond_2
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$45;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$45;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-static {v0, p1, p2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showFreeDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "content"

    .prologue
    .line 3090
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 3091
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->HEART:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 3093
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 3094
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0447

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 3095
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mFreeDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3096
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 3097
    return-void
.end method

.method private showLoadingDialog(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 3118
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 3119
    .local v0, msg:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showLoadingDialog(Ljava/lang/String;)V

    .line 3120
    return-void
.end method

.method private showLoadingDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 3123
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3127
    :goto_0
    return-void

    .line 3126
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method private showLoveDialog()V
    .locals 3

    .prologue
    .line 3075
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 3076
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getLove()Lcom/didi/taxi/model/TaxiLove;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiLove;->dialogTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getLove()Lcom/didi/taxi/model/TaxiLove;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiLove;->dialogContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->HEART:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 3079
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 3080
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getLove()Lcom/didi/taxi/model/TaxiLove;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiLove;->btnSendTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 3081
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getLove()Lcom/didi/taxi/model/TaxiLove;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiLove;->btnCancleTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 3082
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->loveDialog:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3083
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 3084
    return-void
.end method

.method private showMsgConfirmDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2974
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2975
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2977
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2978
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2979
    return-void
.end method

.method private showPayCloseDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 3013
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 3014
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3015
    const v0, 0x7f0b043f

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3017
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3018
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 3019
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayCloseDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3020
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 3021
    return-void
.end method

.method private showPayDetectionDialog()V
    .locals 3

    .prologue
    .line 3103
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 3104
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b0452

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 3107
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 3108
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0450

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 3109
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0456

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 3110
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIfPayDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3111
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 3112
    return-void
.end method

.method private showPayNetFailedDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 3027
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 3028
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3029
    const v0, 0x7f0b0417

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3031
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 3033
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3034
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 3035
    return-void
.end method

.method private showPayRefreshDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2998
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2999
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3000
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->THREE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 3001
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b045e

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0438

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b043d

    invoke-direct {p0, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->setThreeBtnText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3005
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayRefreshDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3006
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 3007
    return-void
.end method

.method private showPayRetryDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2985
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2986
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2988
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b04be

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2989
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0132

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 2990
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayRetryDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2991
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2992
    return-void
.end method

.method private showPayTicketCheatingDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 2963
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2964
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2966
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$TicketCheatingDialogListener;

    invoke-direct {v1, p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$TicketCheatingDialogListener;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2967
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2968
    return-void
.end method

.method private showPayWarningDialog()V
    .locals 5

    .prologue
    .line 2946
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getPayText()Ljava/lang/String;

    move-result-object v1

    .line 2947
    .local v1, payText:Ljava/lang/String;
    const v3, 0x7f0b0471

    invoke-direct {p0, v3, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2948
    .local v2, title:Ljava/lang/String;
    const v3, 0x7f0b0470

    invoke-direct {p0, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 2950
    .local v0, content:Ljava/lang/String;
    new-instance v3, Lcom/didi/common/helper/DialogHelper;

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2951
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v3, v2, v0}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v4, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v3, v4}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2953
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v4, 0x7f0b0288

    invoke-direct {p0, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2954
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v4, 0x7f0b043d

    invoke-direct {p0, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 2955
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayWarningDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v3, v4}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2956
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v3}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2957
    return-void
.end method

.method private showSendRedDialog()V
    .locals 3

    .prologue
    .line 3059
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 3060
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->dialogTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiRedRecordInfo;->dialogContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->HEART:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 3063
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 3064
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mDialogBtnTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 3065
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mDialogCancleTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 3066
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mRedDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3067
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 3068
    return-void
.end method

.method private showShareDialog()V
    .locals 4

    .prologue
    .line 3041
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 3042
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b044f

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->HEART:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 3045
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->THREE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 3046
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0460

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0454

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0455

    invoke-direct {p0, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->setThreeBtnText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3050
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mShareDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3051
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 3052
    return-void
.end method

.method private showWXLowVersionDialog()V
    .locals 3

    .prologue
    .line 2932
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2933
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b0475

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2936
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0288

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2937
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0132

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 2938
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2939
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2940
    return-void
.end method

.method private showWebView(Lcom/didi/taxi/model/TaxiLove;)V
    .locals 4
    .parameter "love"

    .prologue
    .line 3633
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v2

    const v3, 0x7f05000b

    invoke-virtual {v2, v3}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 3635
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 3636
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const v2, 0x7f0b02f1

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 3637
    const-string v2, "love_share"

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 3638
    iget-object v2, p1, Lcom/didi/taxi/model/TaxiLove;->btnUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 3639
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isLoadLocalData:Z

    .line 3640
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->canChangeWebViewTitle:Z

    .line 3641
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->share_title:Ljava/lang/String;

    .line 3642
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedContent:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->share_content:Ljava/lang/String;

    .line 3643
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->share_url:Ljava/lang/String;

    .line 3644
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedPicUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->share_icon_url:Ljava/lang/String;

    .line 3645
    const v2, 0x7f0b01a8

    iput v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->rightTextResId:I

    .line 3646
    const-class v2, Lcom/didi/common/ui/webview/LocShareWebViewActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->redirectClassName:Ljava/lang/String;

    .line 3648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaxiWait showWebView : --- title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " picurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getRedRecord()Lcom/didi/taxi/model/TaxiRedRecordInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mRedPicUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 3654
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/LocShareWebViewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3655
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3656
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 3657
    return-void
.end method

.method private startComplaintActivity()V
    .locals 3

    .prologue
    .line 3464
    const/4 v0, 0x0

    .line 3465
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getComplaintState()I

    move-result v1

    if-nez v1, :cond_0

    .line 3466
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/taxi/ui/activity/TaxiComplaintActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3471
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 3472
    return-void

    .line 3469
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/taxi/ui/activity/TaxiComplaintedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private startTaxiReimbursementAcitivty()V
    .locals 5

    .prologue
    .line 2738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2739
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "amount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2740
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->getPaidText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2741
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2742
    const-string v3, "orderId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2743
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2744
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2745
    const-string v3, "use_car_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2746
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2748
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 2749
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    sget-object v3, Lcom/didi/common/util/Constant;->ENTRIPRISE_REMIMBURSEMENT:Ljava/lang/String;

    iput-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 2750
    const v3, 0x7f0b042a

    invoke-virtual {p0, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 2751
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 2753
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2754
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2755
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2756
    return-void
.end method

.method private startTaxiTicketActivity()V
    .locals 4

    .prologue
    .line 1919
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1920
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const v2, 0x7f0b040b

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1921
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 1923
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    if-eqz v2, :cond_0

    .line 1927
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiCoupon;->mPreInfo:Lcom/didi/taxi/model/TaxiPrePayInfo;

    iget-object v2, v2, Lcom/didi/taxi/model/TaxiPrePayInfo;->ticketPageUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1932
    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1933
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1934
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1935
    return-void

    .line 1929
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, ""

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method private startWebActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "title"
    .parameter "params"

    .prologue
    .line 3674
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startWebActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3675
    return-void
.end method

.method private startWebActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter "url"
    .parameter "title"
    .parameter "params"
    .parameter "isCache"

    .prologue
    .line 3679
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 3680
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iput-object p1, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 3681
    iput-object p2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 3682
    iput-boolean p4, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 3684
    invoke-static {p3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3685
    iput-object p3, v1, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 3688
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3689
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3690
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 3691
    return-void
.end method

.method private stopCallDriverLocation()V
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->needStop:Z

    .line 811
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterDriversLocationMessageListener()V

    .line 812
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mGetDriverLocationLooper:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 813
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDriverArrivalMarker()V

    .line 814
    return-void
.end method

.method private switchToWebCacelOrderPage()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1170
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDriverArrivalMarker()V

    .line 1172
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1173
    .local v2, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getCancelReasonUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1174
    const v4, 0x7f0b0323

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1175
    iput-boolean v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 1176
    iput-boolean v1, v2, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 1177
    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->getCancelReasonCustomParams()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 1178
    const-class v4, Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/didi/common/ui/webview/WebViewModel;->redirectClassName:Ljava/lang/String;

    .line 1180
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->isCarPoolOrder()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1181
    .local v1, isTrip:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&is_trip="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 1183
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/ui/webview/CancelOrderWebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1184
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1185
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1186
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #isTrip:I
    :cond_0
    move v1, v3

    .line 1180
    goto :goto_0
.end method

.method private unregisterOnCurrentCostChangedListener()V
    .locals 0

    .prologue
    .line 1913
    invoke-static {}, Lcom/didi/taxi/helper/TaxiPushHelper;->unregisterOnCurrentCostChangedListener()V

    .line 1914
    return-void
.end method

.method private unregisterPushIMUnreadListener()V
    .locals 0

    .prologue
    .line 1882
    invoke-static {}, Lcom/didi/im/helper/IMPushHelper;->unregisterIMUnreadCountChangeListener()V

    .line 1883
    return-void
.end method

.method private unregisterTerminateOrderNoticeListener()V
    .locals 0

    .prologue
    .line 1208
    invoke-static {}, Lcom/didi/taxi/helper/TaxiPushHelper;->unregisterTerminateOrderNoticeListener()V

    .line 1209
    return-void
.end method

.method private updateCarPoolOrderStatusIfNeed()V
    .locals 7

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getCheckedTime()J

    move-result-wide v0

    .line 957
    .local v0, curTime:J
    iget-wide v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mLastCarPoolStatusUpdatedTime:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7530

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 971
    :goto_0
    return-void

    .line 960
    :cond_0
    iput-wide v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mLastCarPoolStatusUpdatedTime:J

    .line 962
    new-instance v2, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$8;

    invoke-direct {v2, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$8;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 970
    .local v2, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiOrderState;>;"
    invoke-static {v2}, Lcom/didi/taxi/net/TaxiRequest;->getOrderStatus(Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private updateIMDB(Lcom/didi/im/model/IMSession;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 1775
    :try_start_0
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->createIMSessionInDB(Lcom/didi/im/model/IMSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/taxi/model/TaxiOrder;->setSid(Ljava/lang/String;)V

    .line 1786
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getIMSessionUserList(Lcom/didi/im/model/IMSession;)V

    .line 1787
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setSid(Ljava/lang/String;)V

    .line 1788
    :goto_0
    return-void

    .line 1776
    :catch_0
    move-exception v0

    .line 1777
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1778
    const/4 v1, 0x3

    iput v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIMSessionState:I

    goto :goto_0
.end method

.method private updatePosition(Lcom/didi/taxi/model/TaxiPosition;)V
    .locals 11
    .parameter "position"

    .prologue
    .line 1066
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->refreshCountDownTime()Ljava/lang/String;

    move-result-object v8

    .line 1067
    .local v8, timeFlag:Ljava/lang/String;
    const-string v0, "2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1104
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    if-eqz p1, :cond_0

    .line 1075
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiPosition;->getLatDouble()Ljava/lang/Double;

    move-result-object v6

    .line 1076
    .local v6, lat:Ljava/lang/Double;
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiPosition;->getLngDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 1078
    .local v7, lng:Ljava/lang/Double;
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1079
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    new-instance v1, Lcom/didi/taxi/model/TaxiDriver;

    invoke-direct {v1}, Lcom/didi/taxi/model/TaxiDriver;-><init>()V

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setTaxiDriver(Lcom/didi/taxi/model/TaxiDriver;)V

    .line 1082
    :cond_2
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/taxi/model/TaxiDriver;->lat:Ljava/lang/String;

    .line 1083
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/taxi/model/TaxiDriver;->lng:Ljava/lang/String;

    .line 1085
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mMapZoom:Z

    if-nez v0, :cond_3

    .line 1086
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mMapZoom:Z

    .line 1087
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setRealtimeMapViewZoom(DD)V

    .line 1090
    :cond_3
    iget-object v4, p1, Lcom/didi/taxi/model/TaxiPosition;->distance:Ljava/lang/String;

    .line 1091
    .local v4, distance:Ljava/lang/String;
    iget v0, p1, Lcom/didi/taxi/model/TaxiPosition;->arrivedTime:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1093
    .local v5, waitTime:Ljava/lang/String;
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isCarPoolOrder()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCarPoolCurrentCostGot:Z

    if-eqz v0, :cond_5

    .line 1094
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_4

    .line 1095
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-direct {v0, v1, v2, v9, v10}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOnCarPoolMarkClickedListener:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarkerBubble(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1097
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v9, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOnCarPoolMarkClickedListener:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2, v3, v9}, Lcom/didi/map/marker/MarkerController;->setCarPoolPricemarker(DDLandroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1100
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showDistanceMarker(DDLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected doEvaluateShow()V
    .locals 0

    .prologue
    .line 3475
    return-void
.end method

.method public doQQPayRequest()V
    .locals 2

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayParams:Lcom/didi/common/model/PayParams;

    .line 2231
    .local v0, params:Lcom/didi/common/model/PayParams;
    if-nez v0, :cond_0

    .line 2237
    :goto_0
    return-void

    .line 2235
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPaying:Z

    .line 2236
    invoke-static {v0}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->sendQQPayRequest(Lcom/didi/common/model/PayParams;)V

    goto :goto_0
.end method

.method public doZhifubaoPayRequest()V
    .locals 2

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayParams:Lcom/didi/common/model/PayParams;

    .line 2180
    .local v0, params:Lcom/didi/common/model/PayParams;
    if-nez v0, :cond_0

    .line 2186
    :goto_0
    return-void

    .line 2184
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPaying:Z

    .line 2185
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper;->sendZhifubaoPayRequest(Landroid/app/Activity;Lcom/didi/common/model/PayParams;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3546
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 3548
    packed-switch p1, :pswitch_data_0

    .line 3557
    :goto_0
    return-void

    .line 3550
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onTaxiTicketActivityResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 3554
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onTaxiReimbursementFinished(ILandroid/content/Intent;)V

    goto :goto_0

    .line 3548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 343
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onAttach(Landroid/app/Activity;)V

    .line 345
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    .line 346
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$MyHandler;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    .line 347
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 349
    new-instance v0, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/taxi/helper/TaxiWeixinPayHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayHelper:Lcom/didi/taxi/helper/TaxiWeixinPayHelper;

    .line 351
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 352
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mCity:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartLatDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mFlat:D

    .line 354
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartLngDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mFlng:D

    .line 355
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getEndLatDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mTlat:D

    .line 356
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getEndLngDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mTlng:D

    .line 357
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getTimeOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPoor:J

    .line 358
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 3446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 3447
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCarPoolDetailClicked()V
    .locals 4

    .prologue
    .line 1446
    sget-object v0, Lcom/didi/common/util/Constant;->CARPOOL_TRIPPAYINFO_LASTLY:Ljava/lang/String;

    const v1, 0x7f0b023e

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startWebActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    return-void
.end method

.method protected onCarPoolOrderStatusUpdated(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 5
    .parameter "state"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x4

    .line 974
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget v1, v1, Lcom/didi/taxi/model/TaxiOrder;->trip_friend_status:I

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget v1, v1, Lcom/didi/taxi/model/TaxiOrder;->trip_friend_status:I

    if-eq v1, v3, :cond_0

    .line 984
    iget v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->trip_friend_status:I

    .line 985
    .local v0, carPoolStatus:I
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iput v0, v1, Lcom/didi/taxi/model/TaxiOrder;->trip_friend_status:I

    .line 987
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mTaxiMapRouteListener:Lcom/didi/map/MapRouteListener;

    invoke-static {v1, p1, v2}, Lcom/didi/map/MapController;->addRouteLines(Landroid/content/Context;Lcom/didi/taxi/model/TaxiOrderState;Lcom/didi/map/IMapRouteListener;)V

    .line 989
    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->trip_notice:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 990
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v2, p1, Lcom/didi/taxi/model/TaxiOrderState;->trip_notice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showDrawerView(Ljava/lang/String;)V

    .line 993
    :cond_2
    iget v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    if-nez v1, :cond_3

    .line 994
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onPassengerGoton()V

    .line 997
    :cond_3
    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsTravelEnd:Z

    if-nez v1, :cond_5

    .line 1001
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsTravelEnd:Z

    .line 1002
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onTripFriendGotOff()V

    .line 1005
    :cond_5
    if-ne v0, v4, :cond_6

    .line 1006
    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->trip_friend_terminate_content:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showCarPoolCancelDialog(Ljava/lang/String;)V

    .line 1009
    :cond_6
    if-ne v0, v3, :cond_0

    .line 1010
    const v1, 0x7f0b0569

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showCarPoolCancelDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCarPoolTripCanceled(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    const/16 v1, 0x9

    iput v1, v0, Lcom/didi/taxi/model/TaxiOrder;->trip_friend_status:I

    .line 1204
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showCarPoolCancelDialog(Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method protected onCostDetailFromDriverReceived(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V
    .locals 5
    .parameter "feeDetail"
    .parameter "isHint"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1987
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v1

    iget v1, v1, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    if-ne v1, v3, :cond_1

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    if-eqz p1, :cond_0

    .line 1995
    const-string v1, "tp_scrum0_get_pushedorder"

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getPushCostTraceLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1997
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1998
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1, p1}, Lcom/didi/taxi/model/TaxiOrder;->setFeeDetail(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 1999
    iput-boolean v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailDelayed:Z

    goto :goto_0

    .line 2003
    :cond_2
    if-eqz p2, :cond_4

    iget-boolean v1, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mIsUpdate:Z

    if-eqz v1, :cond_4

    .line 2005
    iget-object v1, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mToastContent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showDriverPayChangedDialog(Ljava/lang/String;)V

    .line 2014
    :cond_3
    :goto_1
    const-string v1, "tp_scrum0_push_orderpage"

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getPushCostTraceLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2016
    iput-boolean v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailReceived:Z

    .line 2017
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1, p1}, Lcom/didi/taxi/model/TaxiOrder;->setFeeDetail(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 2018
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onCostDetailReceived()V

    .line 2020
    iput-boolean v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsTravelEnd:Z

    .line 2021
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onPassengerGotOff()V

    .line 2023
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isFromOrderHistory()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2024
    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$21;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$21;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2007
    :cond_4
    iget-boolean v1, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mIsUpdate:Z

    if-nez v1, :cond_3

    .line 2009
    if-eqz p2, :cond_5

    iget-object v0, p1, Lcom/didi/taxi/model/TaxiFeeDetail;->mToastContent:Ljava/lang/String;

    .line 2011
    .local v0, msg:Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showLoadingDialog(Ljava/lang/String;)V

    goto :goto_1

    .line 2009
    .end local v0           #msg:Ljava/lang/String;
    :cond_5
    const v1, 0x7f0b044a

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2032
    :cond_6
    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$22;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$22;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCostDetailPrepared()V
    .locals 2

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getFeeDetail()Lcom/didi/taxi/model/TaxiFeeDetail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showCostDetail(Lcom/didi/taxi/model/TaxiFeeDetail;)V

    .line 2046
    return-void
.end method

.method public onCostDetailShown()V
    .locals 2

    .prologue
    .line 2050
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showEnterpriseAmountInfoIfNeed(J)V

    .line 2051
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2052
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 362
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 363
    invoke-direct {p0, p3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->restoreOrderState(Landroid/os/Bundle;)V

    .line 365
    new-instance v0, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    .line 366
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->needStop:Z

    .line 367
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initContentView()V

    .line 368
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->init()V

    .line 370
    const-string v0, "onCreateView"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 779
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 781
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->unregisterPushConnListener()V

    .line 782
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->unregisterPushIMUnreadListener()V

    .line 783
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->unregisterPositionPushListener()V

    .line 784
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->unregisterDriverLetPayListener()V

    .line 785
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->unregisterPaySucceedListener()V

    .line 786
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->unregisterOnCurrentCostChangedListener()V

    .line 787
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->unregisterDriverShareTripLetPayListener()V

    .line 788
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->unregisterTerminateOrderNoticeListener()V

    .line 789
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->unregisterBusinessPaySuccessListener()V

    .line 791
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->cancelEvaluateAlarm()V

    .line 792
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->cancelOrderStatusAlarm()V

    .line 794
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->removeChangeListener()V

    .line 795
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->hideLocation()V

    .line 797
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setMapClick(Z)V

    .line 798
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->removeMapListener()V

    .line 799
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->resetMap()V

    .line 800
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 801
    invoke-static {}, Lcom/didi/frame/log/helper/HomeBackAppHelper;->stop()V

    .line 803
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeDialog()V

    .line 805
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->stopCallDriverLocation()V

    .line 806
    return-void
.end method

.method public onDriverBarIMClicked()V
    .locals 4

    .prologue
    .line 1215
    iget v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIMSessionState:I

    const/16 v3, 0x3f1

    if-ne v2, v3, :cond_0

    .line 1216
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showDriverIMLowVersionDialog()V

    .line 1236
    :goto_0
    return-void

    .line 1220
    :cond_0
    iget v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIMSessionState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1221
    const v2, 0x7f0b039b

    invoke-static {v2}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 1223
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isFromOrderHistory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1225
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->createIMSessionById()V

    goto :goto_0

    .line 1227
    :cond_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->createIMSession()V

    goto :goto_0

    .line 1232
    :cond_2
    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v2}, Lcom/didi/taxi/model/TaxiOrder;->getSid()Ljava/lang/String;

    move-result-object v1

    .line 1233
    .local v1, sid:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/im/activity/ConversationActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1234
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "session_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onEnterpriseReimbursementClicked()V
    .locals 0

    .prologue
    .line 1441
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startTaxiReimbursementAcitivty()V

    .line 1442
    return-void
.end method

.method public onEvaluateEditHidden()V
    .locals 0

    .prologue
    .line 1505
    return-void
.end method

.method public onEvaluateFinishShown()V
    .locals 2

    .prologue
    .line 1519
    const-string v0, "wa_arrival_evaluate_successed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1520
    return-void
.end method

.method public onEvaluateSubmitBtnClicked(Ljava/lang/String;I)V
    .locals 2
    .parameter "content"
    .parameter "level"

    .prologue
    const/4 v1, 0x0

    .line 1509
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsFooterPayClicked:Z

    if-eqz v0, :cond_0

    .line 1510
    const-string v0, "my_trip_evaluate_click"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1514
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doEvaluateSubmit(Ljava/lang/String;I)V

    .line 1515
    return-void

    .line 1512
    :cond_0
    const-string v0, "wa_arrival_evaluate_click"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEvaluateViewClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1478
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 1479
    return-void
.end method

.method public onEvaulateEditShown()V
    .locals 0

    .prologue
    .line 1483
    return-void
.end method

.method public onEvaulateStarClicked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1487
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsFooterPayClicked:Z

    if-eqz v0, :cond_0

    .line 1488
    const-string v0, "my_trip_evaluate_5start_click"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1493
    :goto_0
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$13;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    .line 1500
    return-void

    .line 1490
    :cond_0
    const-string v0, "wa_arrival_start_click"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFooterArrivalClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1588
    const-string v0, "wa_arrival_click"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1589
    const-string v0, "wa_arrival_show"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsFooterArrivalClicked:Z

    .line 1591
    sget-object v0, Lcom/didi/frame/protobuffer/PassengerState;->PassengerStateHasCommented:Lcom/didi/frame/protobuffer/PassengerState;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/PassengerState;->getValue()I

    move-result v0

    invoke-static {v2, v0}, Lcom/didi/taxi/helper/TaxiPushHelper;->sendLocation(ZI)V

    .line 1592
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doGetOnCar()V

    .line 1593
    return-void
.end method

.method public onFooterCloseClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1597
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsFooterPayClicked:Z

    if-eqz v0, :cond_0

    .line 1598
    const-string v0, "wa_pay_closed"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1599
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsFooterPayClicked:Z

    .line 1602
    :cond_0
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsFooterArrivalClicked:Z

    if-eqz v0, :cond_1

    .line 1603
    const-string v0, "wa_arrival_click"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1604
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsFooterArrivalClicked:Z

    .line 1606
    :cond_1
    return-void
.end method

.method public onFooterFoundClicked()V
    .locals 8

    .prologue
    const/16 v7, 0x12e

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1526
    const-string v3, "wa_discover_click"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1527
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getIsNewFound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1529
    const-string v3, "pexwfp01_ck"

    const-string v4, "[menu_type=1]"

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getBizGameH5Url()Ljava/lang/String;

    move-result-object v1

    .line 1532
    .local v1, url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1533
    .local v2, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iput-object v1, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1534
    iput-boolean v6, v2, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 1535
    iput-boolean v5, v2, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 1536
    invoke-static {v5, v7}, Lcom/didi/game/common/utils/O2OUtils;->getBizParams(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 1537
    const-string v3, "footbar_game"

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 1539
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->isNewFoundUrl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1540
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->openFoundWebView()V

    .line 1567
    .end local v1           #url:Ljava/lang/String;
    .end local v2           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :goto_0
    return-void

    .line 1543
    .restart local v1       #url:Ljava/lang/String;
    .restart local v2       #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1544
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1545
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1549
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #url:Ljava/lang/String;
    .end local v2           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->isGameShow4FootBar()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1551
    const-string v3, "pexwfp01_ck"

    const-string v4, "[menu_type=1][pager_id=4][channel_id=302][show_id=2]"

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getGameH5Url()Ljava/lang/String;

    move-result-object v1

    .line 1554
    .restart local v1       #url:Ljava/lang/String;
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1555
    .restart local v2       #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iput-boolean v6, v2, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 1556
    iput-object v1, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1557
    iput-boolean v5, v2, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 1558
    invoke-static {v5, v7}, Lcom/didi/game/common/utils/O2OUtils;->getBizParams(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 1559
    const-string v3, "footbar_game"

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 1561
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1562
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1563
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1565
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #url:Ljava/lang/String;
    .end local v2           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_2
    const-string v3, "pxxwfp01_ck"

    const-string v4, "[menu_type=0][pager_id=4][channel_id=302][show_id=1]"

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFooterHomeClicked()V
    .locals 2

    .prologue
    .line 1648
    const-string v0, "my_trip_gohome_click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1649
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->stopCallDriverLocation()V

    .line 1650
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    .line 1651
    const/16 v0, 0xb

    sput v0, Lcom/didi/common/util/Constant;->TaxiOrderType:I

    .line 1652
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepart()Lcom/didi/common/model/Address;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/Address;->setLatLng(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;)V

    .line 1653
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 1654
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->sendBroadcast()V

    .line 1655
    return-void
.end method

.method public onFooterOpClicked()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1610
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget-object v0, v4, Lcom/didi/taxi/model/TaxiOrder;->mLove:Lcom/didi/taxi/model/TaxiLove;

    .line 1612
    .local v0, love:Lcom/didi/taxi/model/TaxiLove;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaxiWaitForArrivalFragmentonFooterOpClicked love:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1615
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/didi/taxi/model/TaxiLove;->btnUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1616
    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showWebView(Lcom/didi/taxi/model/TaxiLove;)V

    .line 1617
    const-string v4, "TaxiWaitForArrivalFragmentonFooterOpClicked show webview"

    invoke-static {v4}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1644
    :cond_0
    :goto_0
    return-void

    .line 1621
    :cond_1
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget-object v1, v4, Lcom/didi/taxi/model/TaxiOrder;->redRecord:Lcom/didi/taxi/model/TaxiRedRecordInfo;

    .line 1622
    .local v1, redInfo:Lcom/didi/taxi/model/TaxiRedRecordInfo;
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    iget-object v2, v4, Lcom/didi/taxi/model/TaxiOrder;->share:Lcom/didi/taxi/model/TaxiPayShare;

    .line 1624
    .local v2, shareInfo:Lcom/didi/taxi/model/TaxiPayShare;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TaxiWaitForArrivalFragmentonFooterOpClicked redInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shareInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1627
    if-eqz v1, :cond_3

    iget v4, v1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->mIsRed:I

    if-ne v4, v6, :cond_3

    .line 1628
    new-instance v3, Lcom/didi/taxi/ui/component/ShareReportModel;

    invoke-direct {v3}, Lcom/didi/taxi/ui/component/ShareReportModel;-><init>()V

    .line 1629
    .local v3, shareReportModel:Lcom/didi/taxi/ui/component/ShareReportModel;
    const-string v4, "0"

    iput-object v4, v3, Lcom/didi/taxi/ui/component/ShareReportModel;->product_id:Ljava/lang/String;

    .line 1630
    const-string v4, "pay_share_send_hongbao_ck"

    iput-object v4, v3, Lcom/didi/taxi/ui/component/ShareReportModel;->event_id:Ljava/lang/String;

    .line 1631
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v4, :cond_2

    .line 1632
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/taxi/ui/component/ShareReportModel;->order_id:Ljava/lang/String;

    .line 1634
    :cond_2
    const-string v4, "g_app_public_log"

    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v3}, Lcom/didi/taxi/ui/component/ShareReportModel;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1635
    iget-object v4, v3, Lcom/didi/taxi/ui/component/ShareReportModel;->order_id:Ljava/lang/String;

    iput-object v4, v1, Lcom/didi/taxi/model/TaxiRedRecordInfo;->oId:Ljava/lang/String;

    .line 1636
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v4, v1}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showRedView(Lcom/didi/taxi/model/TaxiRedRecordInfo;)V

    goto :goto_0

    .line 1639
    .end local v3           #shareReportModel:Lcom/didi/taxi/ui/component/ShareReportModel;
    :cond_3
    if-eqz v2, :cond_0

    .line 1640
    const-string v4, "my_trip_share_click"

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1641
    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v4, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showShareView(Lcom/didi/taxi/model/TaxiPayShare;)V

    goto :goto_0
.end method

.method public onFooterPayClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1571
    const-string v0, "wa_pay_click"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1572
    const-string v0, "wa_pay_show"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1573
    const-string v0, "ptxontrip01_ck"

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsFooterPayClicked:Z

    .line 1577
    sget-object v0, Lcom/didi/frame/protobuffer/PassengerState;->PassengerStateHasPaidOff:Lcom/didi/frame/protobuffer/PassengerState;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/PassengerState;->getValue()I

    move-result v0

    invoke-static {v2, v0}, Lcom/didi/taxi/helper/TaxiPushHelper;->sendLocation(ZI)V

    .line 1578
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->showPayView()V

    .line 1579
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPrePayInfoGot:Z

    if-nez v0, :cond_0

    .line 1580
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPrePayInfoGet()V

    .line 1583
    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showEnterpriseAmountInfoIfNeed(J)V

    .line 1584
    return-void
.end method

.method public onFoundItemClicked(Ljava/lang/String;)V
    .locals 14
    .parameter "url"

    .prologue
    const/16 v11, 0x26

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1265
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "---Found url--one--:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1266
    const-string v9, "wa_discover_content_click"

    new-array v10, v12, [Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1268
    const-string v6, "title="

    .line 1269
    .local v6, titleKey:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 1270
    .local v7, titleKeyLen:I
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1272
    .local v5, title:Ljava/lang/String;
    const-string v9, "&"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1273
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v5, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1276
    :cond_0
    const-string v4, "position="

    .line 1277
    .local v4, positionKey:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 1278
    .local v2, posKeyLen:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1280
    .local v3, position:Ljava/lang/String;
    const-string v9, "&"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1281
    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v3, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1284
    :cond_1
    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1286
    :try_start_0
    const-string v9, "utf-8"

    invoke-static {v5, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1292
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1293
    const-string v9, "wa_discover_content_click_-1"

    new-array v10, v12, [Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1294
    const-string v9, "pxxwfp02_ck"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[menu_type=0][name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][position=-1]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-------find url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " title:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " position:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1307
    new-array v9, v12, [Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1308
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "---Found url---:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " title:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " position:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1312
    new-instance v8, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v8}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1314
    .local v8, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iput-object p1, v8, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1315
    const-string v9, "found"

    iput-object v9, v8, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 1316
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/didi/common/config/Preferences;->getIsNewFound()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1317
    iput-boolean v13, v8, Lcom/didi/common/ui/webview/WebViewModel;->isFromBuiness:Z

    .line 1318
    iput-boolean v12, v8, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 1319
    const-string v9, ""

    iput-object v9, v8, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1320
    iput-boolean v13, v8, Lcom/didi/common/ui/webview/WebViewModel;->canChangeWebViewTitle:Z

    .line 1326
    :goto_2
    new-instance v1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v10, Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v1, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1327
    .local v1, intent:Landroid/content/Intent;
    const-string v9, "data_model"

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1328
    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1330
    return-void

    .line 1287
    .end local v1           #intent:Landroid/content/Intent;
    .end local v8           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :catch_0
    move-exception v0

    .line 1288
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 1298
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wa_discover_content_click_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1299
    const-string v9, "pxxwfp02_ck"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[menu_type=0][name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][position="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1322
    .restart local v8       #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_4
    iput-object v5, v8, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1323
    iput-boolean v12, v8, Lcom/didi/common/ui/webview/WebViewModel;->canChangeWebViewTitle:Z

    goto :goto_2
.end method

.method protected onIMSessionCreated(Lcom/didi/im/model/IMSession;)V
    .locals 4
    .parameter "session"

    .prologue
    const/16 v3, 0x3f5

    const/16 v2, 0x3f1

    .line 1748
    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIMSessionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->createSessionTimes:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1752
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->createIMSession()V

    .line 1753
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->createSessionTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->createSessionTimes:I

    .line 1771
    :cond_0
    :goto_0
    return-void

    .line 1757
    :cond_1
    iget v0, p1, Lcom/didi/im/model/IMSession;->errno:I

    if-ne v0, v2, :cond_2

    .line 1758
    iput v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIMSessionState:I

    .line 1762
    :cond_2
    iget v0, p1, Lcom/didi/im/model/IMSession;->errno:I

    if-ne v0, v3, :cond_3

    .line 1763
    iput v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIMSessionState:I

    .line 1764
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->invisibleIMView()V

    .line 1767
    :cond_3
    iget v0, p1, Lcom/didi/im/model/IMSession;->errno:I

    if-nez v0, :cond_0

    .line 1768
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/im/model/IMSession;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setPsngrId(Ljava/lang/String;)V

    .line 1769
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->updateIMDB(Lcom/didi/im/model/IMSession;)V

    goto :goto_0
.end method

.method protected onIMSessionIdCreated(Lcom/didi/im/model/IMOrderSIDHistory;)V
    .locals 6
    .parameter "orderSidHistory"

    .prologue
    const/16 v5, 0x3f1

    .line 1691
    invoke-virtual {p1}, Lcom/didi/im/model/IMOrderSIDHistory;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1719
    :goto_0
    return-void

    .line 1695
    :cond_0
    invoke-virtual {p1}, Lcom/didi/im/model/IMOrderSIDHistory;->getSidList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1696
    .local v1, orderSids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMOrderSID;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1697
    :cond_1
    iput v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIMSessionState:I

    goto :goto_0

    .line 1701
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/im/model/IMOrderSID;

    .line 1702
    .local v0, orderSid:Lcom/didi/im/model/IMOrderSID;
    const/4 v3, 0x0

    .line 1704
    .local v3, sid:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1705
    invoke-virtual {v0}, Lcom/didi/im/model/IMOrderSID;->getSid()Ljava/lang/String;

    move-result-object v3

    .line 1708
    :cond_3
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1709
    new-instance v2, Lcom/didi/im/model/IMSession;

    invoke-direct {v2}, Lcom/didi/im/model/IMSession;-><init>()V

    .line 1710
    .local v2, session:Lcom/didi/im/model/IMSession;
    invoke-virtual {v0}, Lcom/didi/im/model/IMOrderSID;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/didi/im/model/IMSession;->setSID(Ljava/lang/String;)V

    .line 1711
    invoke-virtual {p1}, Lcom/didi/im/model/IMOrderSIDHistory;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/didi/im/model/IMSession;->setUID(Ljava/lang/String;)V

    .line 1713
    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->updateIMDB(Lcom/didi/im/model/IMSession;)V

    .line 1714
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {p1}, Lcom/didi/im/model/IMOrderSIDHistory;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/common/config/Preferences;->setPsngrId(Ljava/lang/String;)V

    goto :goto_0

    .line 1717
    .end local v2           #session:Lcom/didi/im/model/IMSession;
    :cond_4
    iput v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIMSessionState:I

    goto :goto_0
.end method

.method protected onIMSessionUserListGot(Lcom/didi/im/model/IMSession;Lcom/didi/im/model/IMUserList;)V
    .locals 1
    .parameter "session"
    .parameter "users"

    .prologue
    .line 1820
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIMSessionState:I

    .line 1821
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->enableIMView()V

    .line 1823
    invoke-virtual {p2}, Lcom/didi/im/model/IMUserList;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1824
    invoke-virtual {p2}, Lcom/didi/im/model/IMUserList;->getUserList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->createIMUserInDB(Lcom/didi/im/model/IMSession;Ljava/util/List;)V

    .line 1826
    :cond_0
    return-void
.end method

.method public onInfoImageClicked(Lcom/didi/common/model/SNSConfig;)V
    .locals 4
    .parameter "snsConfig"

    .prologue
    .line 1247
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/didi/common/model/SNSConfig;->redirect:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1248
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>(Z)V

    .line 1249
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v2, p1, Lcom/didi/common/model/SNSConfig;->activityTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1250
    iget-object v2, p1, Lcom/didi/common/model/SNSConfig;->redirect:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1251
    const-string v2, "wait"

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 1252
    const v2, 0x7f0b0594

    iput v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->rightTextResId:I

    .line 1254
    const-string v2, "TaxiWaitForArrivalFragmentsource :wait"

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1256
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1257
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1258
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1260
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_0
    return-void
.end method

.method public onInfoTellClicked(Lcom/didi/common/model/SNSConfig;)V
    .locals 0
    .parameter "snsConfig"

    .prologue
    .line 1243
    return-void
.end method

.method public onIntegralClicked()V
    .locals 4

    .prologue
    .line 1453
    sget-object v0, Lcom/didi/common/util/Constant;->MY_MALL_WEB_URL_RELEASE:Ljava/lang/String;

    const v1, 0x7f0b0406

    invoke-virtual {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startWebActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1456
    return-void
.end method

.method public onOffLinePaidShown()V
    .locals 0

    .prologue
    .line 2156
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2157
    return-void
.end method

.method public onOffLinePaySucceed(Z)V
    .locals 5
    .parameter "canReimburse"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2136
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    if-ne v0, v1, :cond_0

    .line 2152
    :goto_0
    return-void

    .line 2140
    :cond_0
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2141
    const v0, 0x7f0b0457

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showLoadingDialog(Ljava/lang/String;)V

    .line 2144
    :cond_1
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailDelayed:Z

    .line 2145
    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsTravelEnd:Z

    .line 2146
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setIsOrderFinished(I)V

    .line 2147
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/didi/taxi/model/TaxiOrder;->setIsVip(I)V

    .line 2148
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0, v2}, Lcom/didi/taxi/model/TaxiOrder;->setVipPayStatus(I)V

    .line 2150
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    const v4, 0x7f0b0451

    invoke-virtual {p0, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->onOffLinePaySucceed(Lcom/didi/taxi/model/TaxiOrder;Ljava/lang/String;)V

    .line 2151
    invoke-virtual {p0, v1, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popupBackEvent(ZZ)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2147
    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 769
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 770
    return-void
.end method

.method public onPayClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1408
    iget-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsFooterArrivalClicked:Z

    if-eqz v1, :cond_0

    .line 1409
    const-string v1, "my_trip_pay_click"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1414
    :goto_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getCurrentPay()I

    move-result v0

    .line 1415
    .local v0, pay:I
    const/16 v1, 0x4e20

    if-le v0, v1, :cond_1

    .line 1416
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayWarningDialog()V

    .line 1421
    :goto_1
    return-void

    .line 1411
    .end local v0           #pay:I
    :cond_0
    const-string v1, "wa_pay_confirm"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1420
    .restart local v0       #pay:I
    :cond_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getPayChannelId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPaySupportCheck(I)V

    goto :goto_1
.end method

.method public onPayEditHidden()V
    .locals 0

    .prologue
    .line 1399
    return-void
.end method

.method public onPayEditShown()V
    .locals 0

    .prologue
    .line 1393
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->cancelOrderStatusAlarm()V

    .line 1394
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->initPositionServiceAlarm()V

    .line 1395
    return-void
.end method

.method public onPayFinishShown()V
    .locals 2

    .prologue
    .line 1403
    const-string v0, "wa_pay_successed"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1404
    return-void
.end method

.method public onPayInputClicked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1369
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsFooterArrivalClicked:Z

    if-eqz v0, :cond_1

    .line 1370
    const-string v0, "my_trip_pay_click"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1375
    :goto_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getServiceType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->isFromOrderHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getIsOrderFinished()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1379
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showEnterpriseAmountInfoIfNeed(J)V

    .line 1382
    :cond_0
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$12;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$12;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    .line 1389
    return-void

    .line 1372
    :cond_1
    const-string v0, "wa_pay_input"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPayParamsGot(Lcom/didi/common/model/PayParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 2473
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taxi--onPayParamsGot params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/common/model/PayParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 2475
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayParams:Lcom/didi/common/model/PayParams;

    .line 2476
    invoke-static {p1}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2477
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onPayParamsFailed()V

    .line 2482
    :goto_0
    return-void

    .line 2480
    :cond_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onPayParamsSucceed()V

    goto :goto_0
.end method

.method public onPayRedSendClicked()V
    .locals 0

    .prologue
    .line 1472
    return-void
.end method

.method public onPayRedShown()V
    .locals 0

    .prologue
    .line 1468
    return-void
.end method

.method public onPayShareClicked()V
    .locals 0

    .prologue
    .line 1460
    return-void
.end method

.method public onPayShareShown()V
    .locals 0

    .prologue
    .line 1464
    return-void
.end method

.method public onPayShown()V
    .locals 0

    .prologue
    .line 1364
    return-void
.end method

.method public onPaySubmit()V
    .locals 1

    .prologue
    .line 1428
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getPayChannelId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPaySupportCheck(I)V

    .line 1429
    return-void
.end method

.method public onPayTaxiTicketClicked()V
    .locals 0

    .prologue
    .line 1359
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startTaxiTicketActivity()V

    .line 1360
    return-void
.end method

.method public onPayViewClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1354
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 1355
    return-void
.end method

.method public onPushConnected()V
    .locals 3

    .prologue
    .line 2074
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->isCarPoolOrder()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2097
    :cond_0
    :goto_0
    return-void

    .line 2078
    :cond_1
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getIsOrderFinished()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2082
    const/4 v0, 0x0

    .line 2083
    .local v0, l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiHistoryOrder;>;"
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$24;

    .end local v0           #l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiHistoryOrder;>;"
    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$24;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    .line 2096
    .restart local v0       #l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/taxi/model/TaxiHistoryOrder;>;"
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/didi/taxi/net/TaxiRequest;->getHistroyOrderDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method public onQQAppSupported()V
    .locals 0

    .prologue
    .line 2226
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayParamsGet()V

    .line 2227
    return-void
.end method

.method public onQQAppUnSupported()V
    .locals 1

    .prologue
    .line 2218
    const v0, 0x7f0b045b

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showMsgConfirmDialog(Ljava/lang/String;)V

    .line 2219
    return-void
.end method

.method public onQQPay(IZ)V
    .locals 4
    .parameter "retCode"
    .parameter "success"

    .prologue
    const/4 v0, 0x0

    .line 2243
    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPaying:Z

    .line 2245
    if-eqz p2, :cond_0

    .line 2246
    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailDelayed:Z

    .line 2247
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayResultGet()V

    .line 2260
    :goto_0
    return-void

    .line 2251
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 2252
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2253
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2257
    :cond_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->refreshSale()V

    .line 2258
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2259
    const v0, 0x7f0b044c

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayRetryDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 719
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 721
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->needStop:Z

    if-nez v0, :cond_0

    .line 722
    const-string v0, "-------------mGetDriverLocationLooper----------- "

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mGetDriverLocationLooper:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 724
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->locationGetListener:Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerDriversLocationMessageListener(Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;)V

    .line 727
    :cond_0
    invoke-static {}, Lcom/didi/common/notification/CommonNotification;->cancelNotification()V

    .line 728
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->refreshIMUnreadInThread()V

    .line 730
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailDelayed:Z

    if-eqz v0, :cond_1

    .line 731
    iput-boolean v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailDelayed:Z

    .line 732
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getFeeDetail()Lcom/didi/taxi/model/TaxiFeeDetail;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onCostDetailFromDriverReceived(Lcom/didi/taxi/model/TaxiFeeDetail;Z)V

    .line 736
    :cond_1
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPaySucceedDelayed:Z

    if-eqz v0, :cond_3

    .line 737
    iput-boolean v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPaySucceedDelayed:Z

    .line 738
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPayResult:Lcom/didi/taxi/model/TaxiPayResult;

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onPaySuccessed(Lcom/didi/taxi/model/TaxiPayResult;)V

    .line 765
    :cond_2
    :goto_0
    return-void

    .line 742
    :cond_3
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsWxCardBinding:Z

    if-eqz v0, :cond_5

    .line 743
    iput-boolean v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsWxCardBinding:Z

    .line 744
    sget-object v0, Lcom/didi/frame/WebToActivity;->WX_PAY_OPEN_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/didi/frame/WebToActivity;->QQ_PAY_CODE:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 746
    :cond_4
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayParamsGet()V

    goto :goto_0

    .line 751
    :cond_5
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->isPay:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getCoupon()Lcom/didi/taxi/model/TaxiCoupon;

    move-result-object v0

    iget-boolean v0, v0, Lcom/didi/taxi/model/TaxiCoupon;->isTimeout:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPaying:Z

    if-eqz v0, :cond_2

    .line 759
    iput-boolean v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPaying:Z

    .line 760
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayDetectionDialog()V

    .line 761
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->refreshSale()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 3561
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3562
    const-string v0, "order"

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3563
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 713
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStart()V

    .line 714
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 715
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 774
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStop()V

    .line 775
    return-void
.end method

.method public onTicketClicked()V
    .locals 0

    .prologue
    .line 1436
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startTaxiTicketActivity()V

    .line 1437
    return-void
.end method

.method public onTitleLeftClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->stopCallDriverLocation()V

    .line 1144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 1145
    return-void
.end method

.method public onTitleRightClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1149
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsTravelEnd:Z

    if-eqz v0, :cond_0

    .line 1150
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->startComplaintActivity()V

    .line 1154
    :goto_0
    return-void

    .line 1152
    :cond_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->onCancelTripTriggered()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 376
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mRootView:Landroid/view/ViewGroup;

    .line 377
    return-void
.end method

.method public onWXAppLowVersionInstalled()V
    .locals 0

    .prologue
    .line 2277
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showWXLowVersionDialog()V

    .line 2278
    return-void
.end method

.method public onWXAppSupported()V
    .locals 0

    .prologue
    .line 2285
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayParamsGet()V

    .line 2286
    return-void
.end method

.method public onWXAppUnInstalled()V
    .locals 1

    .prologue
    .line 2269
    const v0, 0x7f0b057b

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showMsgConfirmDialog(Ljava/lang/String;)V

    .line 2270
    return-void
.end method

.method public onWXPay(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 2325
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPaying:Z

    .line 2327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taxi--onweixinpay result code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 2331
    iget v0, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    if-nez v0, :cond_0

    .line 2332
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailDelayed:Z

    .line 2333
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayResultGet()V

    .line 2346
    :goto_0
    return-void

    .line 2337
    :cond_0
    iget v0, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 2338
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2339
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2343
    :cond_1
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->refreshSale()V

    .line 2344
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2345
    const v0, 0x7f0b044c

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayRetryDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onZhifubaoAppSupported()V
    .locals 0

    .prologue
    .line 2175
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayParamsGet()V

    .line 2176
    return-void
.end method

.method public onZhifubaoAppUnSupported()V
    .locals 1

    .prologue
    .line 2170
    const v0, 0x7f0b0477

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showMsgConfirmDialog(Ljava/lang/String;)V

    .line 2171
    return-void
.end method

.method public onZhifubaoPay(Lcom/sdu/didi/psnger/aliapi/PayResult;)V
    .locals 5
    .parameter "payResult"

    .prologue
    const/4 v2, 0x0

    .line 2189
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsPaying:Z

    .line 2190
    iget-object v0, p1, Lcom/sdu/didi/psnger/aliapi/PayResult;->resultStatus:Ljava/lang/String;

    .line 2192
    .local v0, resultStatus:Ljava/lang/String;
    const-string v1, "9000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "8000"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2195
    :cond_0
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mIsCostDetailDelayed:Z

    .line 2196
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->doPayResultGet()V

    .line 2209
    :goto_0
    return-void

    .line 2200
    :cond_1
    const-string v1, "6001"

    invoke-static {v0, v1}, Lcom/didi/common/util/TextUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2201
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2202
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2206
    :cond_2
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->refreshSale()V

    .line 2207
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2208
    const v1, 0x7f0b044c

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->showPayRetryDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public popdownBackEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "backEvent"

    .prologue
    .line 3436
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mBackBlock:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mBackBlock:I

    .line 3437
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->backEventStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3439
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mBackBlock:I

    if-lez v0, :cond_0

    .line 3440
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->setTitleLeft()V

    .line 3442
    :cond_0
    return-void
.end method

.method public popupBackEvent(Z)V
    .locals 1
    .parameter "remove"

    .prologue
    .line 3407
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->popupBackEvent(ZZ)V

    .line 3408
    return-void
.end method

.method public popupBackEvent(ZZ)V
    .locals 4
    .parameter "remove"
    .parameter "run"

    .prologue
    .line 3412
    const/4 v1, 0x0

    .line 3415
    .local v1, backEvent:Ljava/lang/Runnable;
    :try_start_0
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->backEventStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3420
    if-eqz p1, :cond_0

    .line 3421
    iget v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mBackBlock:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mBackBlock:I

    .line 3422
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->backEventStack:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3425
    :cond_0
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 3426
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3429
    :cond_1
    iget v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mBackBlock:I

    if-gtz v3, :cond_2

    .line 3430
    const/4 v3, 0x0

    iput v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mBackBlock:I

    .line 3431
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mControllerView:Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;

    invoke-virtual {v3}, Lcom/didi/taxi/ui/component/TaxiWaitForArrivalControllerView;->hideTitleLeft()V

    .line 3433
    :cond_2
    :goto_0
    return-void

    .line 3416
    :catch_0
    move-exception v2

    .line 3417
    .local v2, e:Ljava/util/NoSuchElementException;
    goto :goto_0
.end method

.method public registerBusinessPaySuccessListener()V
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->businessPaySuccessListener:Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;

    invoke-static {v0}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerBusinessPaySuccessListener(Lcom/didi/taxi/helper/TaxiPushHelper$BusinessPaySuccessListener;)V

    .line 1336
    return-void
.end method

.method public registerDriverLetPayListener()V
    .locals 2

    .prologue
    .line 1971
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$20;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$20;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerCostDetailListener(Lcom/didi/taxi/helper/TaxiPushHelper$CostDetailListener;Ljava/lang/String;)V

    .line 1978
    return-void
.end method

.method public registerDriverShareTripLetPayListener()V
    .locals 2

    .prologue
    .line 2104
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$25;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$25;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerShareTripCostDetailListener(Lcom/didi/taxi/helper/TaxiPushHelper$ShareTripCostDetailListener;Ljava/lang/String;)V

    .line 2114
    return-void
.end method

.method public registerPaySucceedListener()V
    .locals 2

    .prologue
    .line 2123
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$26;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment$26;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;)V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerPaySuccessListener(Lcom/didi/taxi/helper/TaxiPushHelper$PaySuccessListener;Ljava/lang/String;)V

    .line 2130
    return-void
.end method

.method public registerPushConnListener()V
    .locals 1

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPushConnListener:Lcom/didi/frame/push/PushHelper$ReConnectionListener;

    invoke-static {v0}, Lcom/didi/frame/push/PushHelper;->registReconnectionListener(Lcom/didi/frame/push/PushHelper$ReConnectionListener;)V

    .line 2070
    return-void
.end method

.method public showCancelTripHintDialog()V
    .locals 3

    .prologue
    .line 2917
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2918
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b041d

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b041c

    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 2921
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2922
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b041b

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2923
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0258

    invoke-direct {p0, v1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 2924
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mCancelTripHintDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2925
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2926
    return-void
.end method

.method public unregisterBusinessPaySuccessListener()V
    .locals 0

    .prologue
    .line 1347
    invoke-static {}, Lcom/didi/taxi/helper/TaxiPushHelper;->unregisterBusinessPaySuccessListener()V

    .line 1348
    return-void
.end method

.method public unregisterDriverLetPayListener()V
    .locals 0

    .prologue
    .line 2055
    invoke-static {}, Lcom/didi/taxi/helper/TaxiPushHelper;->unregisterCostDetailListener()V

    .line 2056
    return-void
.end method

.method public unregisterDriverShareTripLetPayListener()V
    .locals 0

    .prologue
    .line 2117
    invoke-static {}, Lcom/didi/taxi/helper/TaxiPushHelper;->unregisterShareTripCostDetailListener()V

    .line 2118
    return-void
.end method

.method public unregisterPaySucceedListener()V
    .locals 0

    .prologue
    .line 2160
    invoke-static {}, Lcom/didi/taxi/helper/TaxiPushHelper;->unregisterPaySuccessListener()V

    .line 2161
    return-void
.end method

.method public unregisterPositionPushListener()V
    .locals 0

    .prologue
    .line 928
    invoke-static {}, Lcom/didi/taxi/helper/TaxiPushHelper;->unregisterPostionPushListener()V

    .line 929
    return-void
.end method

.method public unregisterPushConnListener()V
    .locals 1

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;->mPushConnListener:Lcom/didi/frame/push/PushHelper$ReConnectionListener;

    invoke-static {v0}, Lcom/didi/frame/push/PushHelper;->unRegistReconnectionListener(Lcom/didi/frame/push/PushHelper$ReConnectionListener;)V

    .line 2101
    return-void
.end method
