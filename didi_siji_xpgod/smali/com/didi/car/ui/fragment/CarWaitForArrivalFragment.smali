.class public Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CarWaitForArrivalFragment.java"

# interfaces
.implements Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;
.implements Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;
.implements Lcom/didi/car/listener/CarFirstTipListener;


# static fields
.field public static final COMMON_MESSAGE_TYPE_CANCEL_FROM_SERVER:I = 0xe

.field public static final COMMON_MESSAGE_TYPE_CHANGE_DRIVER:I = 0x2

.field public static final COMMON_MESSAGE_TYPE_CHANGE_DRIVER_RESULT:I = 0xc

.field public static final COMMON_MESSAGE_TYPE_CONSULT_CANCELED:I = 0x9

.field public static final COMMON_MESSAGE_TYPE_DRIVER_LATE:I = 0x5

.field public static final COMMON_MESSAGE_TYPE_DRIVER_PREPARED:I = 0x4

.field public static final COMMON_MESSAGE_TYPE_ERROR_FROM_SERVER:I = 0x13

.field public static final COMMON_MESSAGE_TYPE_FIRST_GRAB_TIP:I = 0x15

.field public static final COMMON_MESSAGE_TYPE_HALF_HOUR:I = 0x1

.field public static final COMMON_MESSAGE_TYPE_LATE_BILLING:I = 0xa

.field public static final COMMON_MESSAGE_TYPE_ORDER_CLOSEED_BY_MIS:I = 0x12

.field public static final COMMON_MESSAGE_TYPE_PRICE_INVALID:I = 0x8

.field public static final COMMON_MESSAGE_TYPE_START_BILLING:I = 0x6

.field private static final CONSULT_NO:I = 0x0

.field private static final CONSULT_YES:I = 0x1

.field public static final KEY_CANCEL_TRIP_CONTENT_PARAM:Ljava/lang/String; = "cancel_trip_content"

.field public static final KEY_CAR_TICKET:Ljava/lang/String; = "car_ticket"

.field private static final MARK_CHECK_PAY_RESULT:I = 0xd

.field private static final MARK_CONSULT_COUNT_DOWN:I = 0x11

.field private static final MARK_COUNT_DOWN:I = 0x3

.field private static final MARK_EVALUATE:I = 0x5

.field private static final MARK_POSITION_SENDING:I = 0x1

.field private static final MARK_POSITION_SENDING_FOR_CHEAT:I = 0x3e9

.field private static final MARK_QUERY_ORDER_STATUS_DOING:I = 0x1e

.field private static final MARK_QUERY_ORDER_STATUS_PAY:I = 0x1f

.field private static final MARK_SEND_RED_DIALOG:I = 0x9

.field private static final MARK_SHARE_CAR_TICKET:I = 0x15

.field private static final MARK_SHARE_DIALOG:I = 0xb

.field private static final MARK_SHOW_INPUT_METHOD:I = 0xf

.field private static final MARK_SNS_CONFIG:I = 0x7

.field public static final PARAM_CAR_PINK_DATA:Ljava/lang/String; = "param_car_pink_data"

.field public static final REQUEST_CODE_APPLY_REFUND:I = 0x4

.field public static final REQUEST_CODE_CANCEL_TRIP:I = 0x2

.field public static final REQUEST_CODE_GOTO_PINK_URL:I = 0x3

.field public static final REQUEST_CODE_SELECT_CAR_TICKET:I = 0x1

.field public static final SERVICE_TYPE_CANCEL_TRIP:I = 0x20

.field public static final SERVICE_TYPE_KEY:Ljava/lang/String; = "service_type"

.field public static final SERVICE_TYPE_NORMAL:I = 0x10

.field public static final SERVICE_TYPE_PAY:I = 0x40

.field public static final SERVICE_TYPE_PAY_OR_PAID_EVALUATE:I = 0x30

.field public static final STATE_CANCEL_TRIP:I = 0x1

.field public static final STATE_CANCEL_TRIP_CONFIRM:I = 0x2

.field private static final TIME_EXCEPTION:Ljava/lang/String; = "3"

.field private static final TIME_LESS_ONE_HOUR:Ljava/lang/String; = "0"

.field private static final TIME_LESS_TO_NOW:Ljava/lang/String; = "2"

.field private static final TIME_MORE_ONE_HOUR:Ljava/lang/String; = "-1"

.field private static final TIME_MORE_THREE_DAY:Ljava/lang/String; = "1"

.field private static final TIME_TO_CHECK_PAY_RESULT:J = 0xbb8L

.field private static final TIME_TO_DIFF_SIZE:J = 0x927c0L

.field private static final TIME_TO_HALF_HOUR:J = 0x1b7740L

.field private static final TIME_TO_JUMP_EVALUATE:J = 0xa4cb80L

.field private static final TIME_TO_SHOW_DISTANCE:J = 0x36ee80L

.field private static final TIME_TO_UPDATE_COUNT_DOWN:J = 0xea60L

.field public static cancelTripActivity:Lcom/didi/car/ui/activity/CarCancelTripActivity;

.field private static needStop:Z

.field public static webActivity:Landroid/app/Activity;


# instance fields
.field private final SOURCE_CHANGE_BUSINESS:I

.field private final SOURCE_CHANGE_BUSINESS_BLANCE:I

.field private final TIME_DELAY_ORDER_STATUS:I

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

.field private carFirstTipDialogHelper:Lcom/didi/car/helper/CarFirstTipDialogHelper;

.field private carPayParams:Lcom/didi/car/model/CarPayParams;

.field private carRefund:Lcom/didi/car/model/CarRefund;

.field private carWxAgentCheckDialogHelper:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

.field private carWxAgentDialogHelper:Lcom/didi/car/ui/component/CarWxAgentDialog;

.field private dialogHelperListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private dialogOrderCanceledHelperListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private flagPayResultQuery:Z

.field private flagReqOrderStatusEnd:Z

.field getResultCount:I

.field private inOtherActivity:Z

.field locationGetListener:Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;

.field private mBackBlock:I

.field private mCarCancelTrip:Lcom/didi/car/model/CarCancelTrip;

.field private mCarPosition:Lcom/didi/car/model/CarPosition;

.field private mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

.field private mCheckPayResultIntent:Landroid/content/Intent;

.field private mCity:Ljava/lang/String;

.field private mCommonMessageLis:Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;

.field private mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mContext:Landroid/content/Context;

.field private mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

.field private mDialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private mDriverPositionLis:Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;

.field private mFlat:D

.field private mFlng:D

.field private mGetDriverLocationLooper:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field mHasPaidDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mIfPayDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mIsDriverPrepared:Z

.field private mIsNeedCarResend:Z

.field private mIsPayDetailShown:Z

.field private mIsTimeConsultShown:Z

.field private mIsTripCanceled:Z

.field private mIsWxAgentPay:Z

.field private mIsWxSdk:Z

.field private mKnownedDialogLis:Lcom/didi/car/helper/CarFirstTipDialogHelper$CarDialogHelperListener;

.field private mMapZoom:Z

.field private mNewRealtimeCountLis:Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;

.field private mNewTotalCountLis:Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;

.field private mNotificationHelper:Lcom/didi/car/helper/CarNotificationCountHelper;

.field private mOrder:Lcom/didi/car/model/CarOrder;

.field private mOrderBusinessPayType:I

.field private mOrderStat:Lcom/didi/frame/protobuffer/OrderStat;

.field mPayCloseDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mPayHelper:Lcom/didi/car/helper/CarPayHelper;

.field private mPayParams:Lcom/didi/car/model/CarPayParams;

.field private mPayResultLis:Lcom/didi/car/helper/CarPushHelper$PayResultListener;

.field private mPayRetryDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mPayStopDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mPayStopNetErrorDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field mPayStopSuccessDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mPoor:J

.field private mRealtimeCountLis:Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;

.field mRefreshPayTypeDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mSendPostionIntent:Landroid/content/Intent;

.field private mShareDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mSharePinkDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mShareTicketDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mTlat:D

.field private mTlng:D

.field private mTotalCountLis:Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;

.field private mWxAgentMsgListener:Lcom/didi/car/helper/CarPushHelper$WxAgentListener;

.field private mWxAgentMsgListenerDialogLis:Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;

.field private netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

.field private queryOrderStatus:Ljava/lang/Runnable;

.field private queryOrderStatusListener:Lcom/didi/common/net/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/car/model/CarOrderState;",
            ">;"
        }
    .end annotation
.end field

.field times:I

.field private userIsBusiness:Z

.field private wxAgentFaildListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 345
    sput-object v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    .line 346
    sput-object v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->webActivity:Landroid/app/Activity;

    .line 781
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->needStop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 306
    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxAgentPay:Z

    .line 319
    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->inOtherActivity:Z

    .line 338
    iput-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    .line 343
    iput-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarCancelTrip:Lcom/didi/car/model/CarCancelTrip;

    .line 354
    const v0, 0x927c0

    iput v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->TIME_DELAY_ORDER_STATUS:I

    .line 357
    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->userIsBusiness:Z

    .line 358
    iput-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carRefund:Lcom/didi/car/model/CarRefund;

    .line 359
    iput v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    .line 362
    const/4 v0, 0x1

    iput v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->SOURCE_CHANGE_BUSINESS:I

    .line 364
    const/4 v0, 0x2

    iput v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->SOURCE_CHANGE_BUSINESS_BLANCE:I

    .line 482
    sget-object v0, Lcom/didi/frame/protobuffer/OrderStat;->WaitPick:Lcom/didi/frame/protobuffer/OrderStat;

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderStat:Lcom/didi/frame/protobuffer/OrderStat;

    .line 483
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$4;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mGetDriverLocationLooper:Ljava/lang/Runnable;

    .line 511
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$5;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->locationGetListener:Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;

    .line 815
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$8;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    .line 899
    const/16 v0, 0x1e

    iput v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->times:I

    .line 1038
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$11;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$11;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mRealtimeCountLis:Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;

    .line 1047
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$12;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$12;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNewRealtimeCountLis:Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;

    .line 1056
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$13;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mTotalCountLis:Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;

    .line 1065
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$14;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$14;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNewTotalCountLis:Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;

    .line 1074
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$15;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$15;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCommonMessageLis:Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;

    .line 1083
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$16;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$16;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayResultLis:Lcom/didi/car/helper/CarPushHelper$PayResultListener;

    .line 1092
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$17;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$17;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDriverPositionLis:Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;

    .line 1100
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$18;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$18;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mWxAgentMsgListener:Lcom/didi/car/helper/CarPushHelper$WxAgentListener;

    .line 2005
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$27;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$27;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->queryOrderStatusListener:Lcom/didi/common/net/ResponseListener;

    .line 2107
    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagReqOrderStatusEnd:Z

    .line 2108
    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagPayResultQuery:Z

    .line 2110
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$29;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$29;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->queryOrderStatus:Ljava/lang/Runnable;

    .line 2126
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$30;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$30;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    .line 2531
    iput v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getResultCount:I

    .line 2999
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$37;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$37;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->dialogHelperListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3020
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$38;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$38;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->dialogOrderCanceledHelperListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3056
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$39;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$39;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3067
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$40;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$40;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mKnownedDialogLis:Lcom/didi/car/helper/CarFirstTipDialogHelper$CarDialogHelperListener;

    .line 3081
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$41;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$41;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayStopDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3107
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$42;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$42;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayStopNetErrorDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3134
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$43;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$43;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mShareDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3158
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$44;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHasPaidDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3199
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$45;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$45;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayStopSuccessDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3210
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$46;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$46;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayCloseDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3220
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$47;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$47;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mRefreshPayTypeDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3248
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$48;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$48;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIfPayDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3266
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$49;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$49;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayRetryDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3285
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$50;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$50;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mWxAgentMsgListenerDialogLis:Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;

    .line 3336
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$51;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$51;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mShareTicketDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3355
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$52;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$52;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mSharePinkDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 3374
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->backEventStack:Ljava/util/LinkedList;

    .line 3720
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$55;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$55;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->wxAgentFaildListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelTimeConsult()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPayResultGet()V

    return-void
.end method

.method static synthetic access$1100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initTimeConsultAlarm()V

    return-void
.end method

.method static synthetic access$1200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/common/net/ResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->queryOrderStatusListener:Lcom/didi/common/net/ResponseListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onQueryOrderDetail()V

    return-void
.end method

.method static synthetic access$1400(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Ljava/lang/String;Lcom/didi/car/model/CarSNSConfig;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onSnsConfigGot(Ljava/lang/String;Lcom/didi/car/model/CarSNSConfig;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarOrderRealtimeCount;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onOrderRealtimeCountPushReceived(Lcom/didi/car/model/CarOrderRealtimeCount;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarOrderNewRealtimeCount;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onOrderNewRealtimeCountPushReceived(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarPayResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPayResultGot(Lcom/didi/car/model/CarPayResult;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/frame/protobuffer/OrderStat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderStat:Lcom/didi/frame/protobuffer/OrderStat;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarFeeDetailResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPaidCostDetailGot(Lcom/didi/car/model/CarFeeDetailResult;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showOrderCanceledDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagReqOrderStatusEnd:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagReqOrderStatusEnd:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagPayResultQuery:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagPayResultQuery:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsPayDetailShown:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsPayDetailShown:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarPayResult;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initPayOrPaidEvaluateService(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarPayResult;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/helper/CarNotificationCountHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNotificationHelper:Lcom/didi/car/helper/CarNotificationCountHelper;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/common/receiver/NetReceiver$NetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mGetDriverLocationLooper:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showDialog(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPayStoped(Lcom/didi/common/model/BaseObject;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarVoucherInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarVoucherInfo;)Lcom/didi/car/model/CarVoucherInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    return p1
.end method

.method static synthetic access$3400(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarRefund;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carRefund:Lcom/didi/car/model/CarRefund;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V

    return-void
.end method

.method static synthetic access$3600(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/helper/CarFirstTipDialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carFirstTipDialogHelper:Lcom/didi/car/helper/CarFirstTipDialogHelper;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initPayResultCheckAlarm()V

    return-void
.end method

.method static synthetic access$3800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPayStop()V

    return-void
.end method

.method static synthetic access$3900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarPayParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarPayParams;)Lcom/didi/car/model/CarPayParams;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    return-object p1
.end method

.method static synthetic access$400(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsDriverPrepared:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->hasPayResult()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarPayResult;Lcom/didi/car/model/CarWxAgentPayStatus;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPaySuccessed(Lcom/didi/car/model/CarPayResult;Lcom/didi/car/model/CarWxAgentPayStatus;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarPayResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayFinishShareResult(Lcom/didi/car/model/CarPayResult;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->switchPayTypeClick(IIZ)V

    return-void
.end method

.method static synthetic access$4400(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPayParamsGet()V

    return-void
.end method

.method static synthetic access$4500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doWxAgent()V

    return-void
.end method

.method static synthetic access$4600(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarPayResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->gotoPinkWebView(Lcom/didi/car/model/CarPayResult;)V

    return-void
.end method

.method static synthetic access$4702(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxAgentPay:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/helper/CarPayHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showWxAgentOneButton(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initPositionSendAlarm()V

    return-void
.end method

.method static synthetic access$5000(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showWxAgentFaild(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)Lcom/didi/car/model/CarPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doSNSCarConfigGet()V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initCountDownAlarm()V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarShareCouponInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showCarShareTicketDialog(Lcom/didi/car/model/CarShareCouponInfo;)V

    return-void
.end method

.method private cancelHalfHourAlarm()V
    .locals 3

    .prologue
    .line 937
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/didi/common/alarm/CommonAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 938
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "book_half_hour_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 940
    return-void
.end method

.method private cancelPayResultCheckAlarm()V
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCheckPayResultIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCheckPayResultIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 978
    :cond_0
    return-void
.end method

.method private cancelPostionSendAlarm()V
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mSendPostionIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mSendPostionIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelAlarm(Landroid/content/Intent;)V

    .line 972
    :cond_0
    return-void
.end method

.method private cancelTimeConsult()V
    .locals 1

    .prologue
    .line 3480
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->closePopWin()V

    .line 3481
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelTimeConsultAlarm()V

    .line 3482
    return-void
.end method

.method private cancelTimeConsultAlarm()V
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 982
    return-void
.end method

.method private checkIfShowFirstTip()V
    .locals 3

    .prologue
    .line 3659
    sget-object v1, Lcom/didi/car/helper/CarPushHelper;->CAR_FIRST_TIP:Lcom/didi/car/model/CarFirstTip;

    if-eqz v1, :cond_0

    .line 3660
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCarFirstGrabbedShowTip()Z

    move-result v0

    .line 3661
    .local v0, flagShow:Z
    if-nez v0, :cond_0

    .line 3662
    sget-object v1, Lcom/didi/car/helper/CarPushHelper;->CAR_FIRST_TIP:Lcom/didi/car/model/CarFirstTip;

    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showCarFirstGrabbedTip(Lcom/didi/car/model/CarFirstTip;)V

    .line 3663
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/didi/common/config/Preferences;->setCarFirstGrabbedShowTip(Z)V

    .line 3666
    .end local v0           #flagShow:Z
    :cond_0
    return-void
.end method

.method private checkTimeConsult()V
    .locals 3

    .prologue
    .line 3466
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getConsultInfo()Lcom/didi/car/model/CarConsultInfo;

    move-result-object v0

    .line 3468
    .local v0, consultInfo:Lcom/didi/car/model/CarConsultInfo;
    if-eqz v0, :cond_0

    .line 3469
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showTimeConsultView(Lcom/didi/car/model/CarConsultInfo;)V

    .line 3471
    const v2, 0x7f0b0566

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3472
    .local v1, title:Ljava/lang/String;
    iget-object v2, v0, Lcom/didi/car/model/CarConsultInfo;->driverTips:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 3473
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsTimeConsultShown:Z

    .line 3477
    .end local v1           #title:Ljava/lang/String;
    :goto_0
    return-void

    .line 3475
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsTimeConsultShown:Z

    goto :goto_0
.end method

.method private checkUserIsBusiness()V
    .locals 2

    .prologue
    .line 1542
    iget v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 1547
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->userIsBusiness:Z

    .line 1549
    :cond_1
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 791
    invoke-static {p0}, Lcom/didi/car/listener/CarFirstTipListenerHelper;->removeCarFirstListener(Lcom/didi/car/listener/CarFirstTipListener;)V

    .line 792
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/car/helper/CarPushHelper;->CAR_FIRST_TIP:Lcom/didi/car/model/CarFirstTip;

    .line 794
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->unregisterRealtimeCountPushListener()V

    .line 795
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->unregisterTotalCountPushListener()V

    .line 796
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->unregisterCommonMessagePushListener()V

    .line 797
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->unregisterDriverPositionListener()V

    .line 799
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelPayResultCheckAlarm()V

    .line 800
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelPostionSendAlarm()V

    .line 801
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 803
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->removeChangeListener()V

    .line 804
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->hideLocation()V

    .line 806
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->removeMapListener()V

    .line 807
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->resetMap()V

    .line 808
    invoke-static {}, Lcom/didi/frame/log/helper/HomeBackAppHelper;->stop()V

    .line 810
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->showSwitcher()V

    .line 811
    return-void
.end method

.method private doConsultConfirm(I)V
    .locals 4
    .parameter "consultType"

    .prologue
    .line 2186
    const v3, 0x7f0b0295

    invoke-direct {p0, v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 2187
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v2

    .line 2188
    .local v2, oid:Ljava/lang/String;
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v3, v3, Lcom/didi/car/model/CarOrder;->orderState:Lcom/didi/car/model/CarOrderState;

    iget-object v3, v3, Lcom/didi/car/model/CarOrderState;->consultInfo:Lcom/didi/car/model/CarConsultInfo;

    iget-object v0, v3, Lcom/didi/car/model/CarConsultInfo;->consultMin:Ljava/lang/String;

    .line 2189
    .local v0, consultTime:Ljava/lang/String;
    new-instance v1, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$31;

    invoke-direct {v1, p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$31;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;I)V

    .line 2196
    .local v1, l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    invoke-static {v2, p1, v0, v1}, Lcom/didi/car/net/CarRequest;->confirmWait(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 2197
    return-void
.end method

.method private doEvaluateSubmit(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "content"
    .parameter "level"
    .parameter "type"
    .parameter "typeText"

    .prologue
    .line 2686
    const v1, 0x7f0b0335

    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 2687
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 2688
    .local v0, oid:Ljava/lang/String;
    new-instance v5, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$35;

    invoke-direct {v5, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$35;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .local v5, l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    .line 2696
    invoke-static/range {v0 .. v5}, Lcom/didi/car/net/CarRequest;->doComment(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 2697
    return-void
.end method

.method private doPaidCostDetailGet()V
    .locals 3

    .prologue
    .line 1739
    const v2, 0x7f0b02dd

    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 1740
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 1742
    .local v1, oid:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1743
    .local v0, l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarFeeDetailResult;>;"
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$23;

    .end local v0           #l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarFeeDetailResult;>;"
    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$23;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 1754
    .restart local v0       #l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarFeeDetailResult;>;"
    invoke-static {v1, v0}, Lcom/didi/car/net/CarRequest;->getFeeDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 1755
    return-void
.end method

.method private doPayParamsGet()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2251
    iput-boolean v6, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxAgentPay:Z

    .line 2252
    iput-object v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    .line 2253
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getPayMentMode()I

    move-result v8

    .line 2255
    .local v8, payMentMode:I
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v2, v2, Lcom/didi/car/model/FeeDetail;->payType:I

    if-nez v2, :cond_0

    const/16 v2, 0x80

    if-ne v8, v2, :cond_0

    .line 2256
    const/16 v8, 0x7f

    .line 2259
    :cond_0
    const/16 v2, 0x81

    if-ne v8, v2, :cond_1

    .line 2260
    invoke-static {}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->checkQQPaySupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2261
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    const v4, 0x7f0b045b

    invoke-virtual {v2, v4}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showMsgConfirmDialog(Ljava/lang/String;)V

    .line 2292
    :goto_0
    return-void

    .line 2266
    :cond_1
    const v2, 0x7f0b046f

    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 2268
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 2270
    .local v0, orderId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2271
    .local v9, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarPayParams;>;"
    new-instance v9, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$32;

    .end local v9           #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarPayParams;>;"
    invoke-direct {v9, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$32;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 2278
    .restart local v9       #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarPayParams;>;"
    const/4 v1, 0x0

    .line 2279
    .local v1, ticketId:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    if-eqz v2, :cond_2

    .line 2280
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    iget-object v1, v2, Lcom/didi/car/model/CarVoucherInfo;->ticketId:Ljava/lang/String;

    .line 2282
    :cond_2
    const/4 v3, 0x0

    .line 2283
    .local v3, checked:I
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    iget-object v2, v2, Lcom/didi/car/model/CarPayParams;->carWxAgentFailReason:Lcom/didi/car/model/CarWxAgentFailReason;

    if-eqz v2, :cond_3

    .line 2284
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    iget-object v2, v2, Lcom/didi/car/model/CarPayParams;->carWxAgentFailReason:Lcom/didi/car/model/CarWxAgentFailReason;

    iget-boolean v2, v2, Lcom/didi/car/model/CarWxAgentFailReason;->checkboxSelected:Z

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    .line 2286
    :cond_3
    :goto_1
    iget v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v7, v7, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v7, v7, Lcom/didi/car/model/FeeDetail;->payType:I

    const/16 v10, 0xa

    if-ne v7, v10, :cond_5

    const/16 v7, 0x8

    :goto_2
    move-object v6, v5

    invoke-static/range {v0 .. v9}, Lcom/didi/car/net/CarRequest;->doGetGenPayParams(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/didi/common/net/ResponseListener;)V

    .line 2291
    const/4 v2, 0x5

    invoke-static {v0, v2, v5}, Lcom/didi/car/net/CarRequest;->updateLocationFlag(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0

    :cond_4
    move v3, v6

    .line 2284
    goto :goto_1

    :cond_5
    move v7, v6

    .line 2286
    goto :goto_2
.end method

.method private doPayResultGet()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2537
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->hasPayResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2538
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelPayResultCheckAlarm()V

    .line 2556
    :goto_0
    return-void

    .line 2542
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 2543
    .local v0, oid:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lcom/didi/car/helper/CarPushHelper;->sendGetPayResultMessage(Ljava/lang/String;ILcom/didi/frame/push/PushOptionRecord$PushOptionCallback;)V

    .line 2545
    iget v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getResultCount:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 2546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wanliu_pay_stop_show"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2548
    iput v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getResultCount:I

    .line 2549
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2550
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelPayResultCheckAlarm()V

    .line 2551
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayStopDialog()V

    goto :goto_0

    .line 2555
    :cond_1
    iget v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getResultCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getResultCount:I

    goto :goto_0
.end method

.method private doPayStop()V
    .locals 3

    .prologue
    .line 2650
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 2651
    .local v1, oid:Ljava/lang/String;
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$34;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$34;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 2658
    .local v0, l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/BaseObject;>;"
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayParams:Lcom/didi/car/model/CarPayParams;

    iget-object v2, v2, Lcom/didi/car/model/CarPayParams;->didiBillId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/didi/car/net/CarRequest;->doPayStop(Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 2659
    return-void
.end method

.method private doSNSCarConfigGet()V
    .locals 3

    .prologue
    .line 1013
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 1014
    .local v1, orderId:Ljava/lang/String;
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$10;

    invoke-direct {v0, p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$10;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Ljava/lang/String;)V

    .line 1021
    .local v0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarSNSConfig;>;"
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/didi/car/net/CarRequest;->getSNSConfig(Lcom/didi/frame/business/Business;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 1022
    return-void
.end method

.method private doTripCancel()V
    .locals 4

    .prologue
    .line 1788
    const v2, 0x7f0b0215

    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 1789
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 1790
    .local v1, oid:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1792
    .local v0, l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarCancelTrip;>;"
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$24;

    .end local v0           #l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarCancelTrip;>;"
    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$24;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 1812
    .restart local v0       #l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarCancelTrip;>;"
    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/didi/car/net/CarRequest;->cancelTrip(Ljava/lang/String;ILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 1813
    return-void
.end method

.method private doWXPayRequest(Lcom/didi/car/model/CarPayParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 2427
    if-nez p1, :cond_0

    .line 2437
    :goto_0
    return-void

    .line 2431
    :cond_0
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxAgentPay:Z

    if-nez v0, :cond_1

    .line 2432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxSdk:Z

    .line 2433
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayParams:Lcom/didi/car/model/CarPayParams;

    .line 2436
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;

    invoke-virtual {v0, p1}, Lcom/didi/car/helper/CarPayHelper;->sendWXPayRequest(Lcom/didi/car/model/CarPayParams;)V

    goto :goto_0
.end method

.method private doWxAgent()V
    .locals 5

    .prologue
    .line 3669
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0308

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 3671
    const/4 v0, 0x0

    .line 3672
    .local v0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarPayParams;>;"
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$54;

    .end local v0           #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarPayParams;>;"
    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$54;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 3691
    .restart local v0       #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarPayParams;>;"
    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/didi/car/net/CarRequest;->doWxAgentBind(ILcom/didi/common/net/ResponseListener;)V

    .line 3692
    return-void
.end method

.method private finishCancelTravelUI()V
    .locals 1

    .prologue
    .line 1319
    sget-object v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    if-eqz v0, :cond_0

    .line 1320
    sget-object v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    invoke-virtual {v0}, Lcom/didi/car/ui/activity/CarCancelTripActivity;->finish()V

    .line 1321
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelTripActivity:Lcom/didi/car/ui/activity/CarCancelTripActivity;

    .line 1323
    :cond_0
    return-void
.end method

.method private getCheckedTime()J
    .locals 6

    .prologue
    .line 3424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3425
    .local v0, time:J
    iget-wide v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPoor:J

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPoor:J

    const-wide/32 v4, -0x927c0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 3426
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPoor:J

    add-long v0, v2, v4

    .line 3428
    :cond_1
    return-wide v0
.end method

.method private getConsultInfo()Lcom/didi/car/model/CarConsultInfo;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3491
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    .line 3492
    .local v1, order:Lcom/didi/car/model/CarOrder;
    iget-object v2, v1, Lcom/didi/car/model/CarOrder;->orderState:Lcom/didi/car/model/CarOrderState;

    .line 3493
    .local v2, orderState:Lcom/didi/car/model/CarOrderState;
    if-nez v2, :cond_1

    .line 3503
    :cond_0
    :goto_0
    return-object v4

    .line 3497
    :cond_1
    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v5

    iget v3, v5, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 3498
    .local v3, status:I
    iget v0, v2, Lcom/didi/car/model/CarOrderState;->consultStatus:I

    .line 3500
    .local v0, consutlStatus:I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    :cond_2
    if-nez v0, :cond_0

    .line 3501
    iget-object v4, v2, Lcom/didi/car/model/CarOrderState;->consultInfo:Lcom/didi/car/model/CarConsultInfo;

    goto :goto_0
.end method

.method private getServiceType()I
    .locals 4

    .prologue
    .line 3515
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "service_type"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3517
    .local v0, serviceType:I
    return v0
.end method

.method private gotoPinkWebView(Lcom/didi/car/model/CarPayResult;)V
    .locals 4
    .parameter "payResult"

    .prologue
    .line 1680
    iget-object v2, p1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget-object v2, v2, Lcom/didi/car/model/CarShareCouponInfo;->pinkUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->getCommonCarUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1681
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1683
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    const-class v3, Lcom/didi/car/ui/activity/CarCouponsListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1684
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "display_type"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1685
    const-string v2, "param_car_pink_data"

    iget-object v3, p1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1686
    const-string v2, "web_view_titile"

    const v3, 0x7f0b02bd

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1687
    const-string v2, "web_view_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1688
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1691
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private hasPayResult()Z
    .locals 1

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getServiceType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 660
    :goto_0
    :sswitch_0
    return-void

    .line 621
    :sswitch_1
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->registerPayResultPushListener()V

    goto :goto_0

    .line 625
    :sswitch_2
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->registerPayResultPushListener()V

    goto :goto_0

    .line 632
    :sswitch_3
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initMapView()V

    .line 634
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->checkTimeConsult()V

    .line 636
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->registerRealtimeCountPushListener()V

    .line 637
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->registerTotalCountPushListener()V

    .line 638
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->registerCommonMessagePushListener()V

    .line 639
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->registerPayResultPushListener()V

    .line 640
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->registerDriverPositionListener()V

    .line 641
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->registerWxAgentMsgPushListener()V

    .line 643
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->isBookingOrder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initHalfHourAlarmIfNeed()V

    .line 645
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initCountDownAlarm()V

    goto :goto_0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$6;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$6;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 657
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 619
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_3
        0x20 -> :sswitch_0
        0x30 -> :sswitch_2
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method private initArrearageService(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "controllerView"
    .parameter "order"

    .prologue
    const/4 v0, 0x1

    .line 533
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 534
    iget-object v1, p2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v1, v1, Lcom/didi/car/model/FeeDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    .line 535
    iget-object v1, p2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v2, p2, Lcom/didi/car/model/CarOrder;->pricingModel:I

    if-ne v2, v0, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    invoke-virtual {p1, v1, v0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showdCostDetailView(Lcom/didi/car/model/FeeDetail;ZLcom/didi/car/model/CarVoucherInfo;)V

    .line 536
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCancelTripService(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarPayResult;Z)V
    .locals 5
    .parameter "controllerView"
    .parameter "order"
    .parameter "payResult"
    .parameter "hasPaid"

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 572
    iget-object v1, p2, Lcom/didi/car/model/CarOrder;->cancelOrderTip:Ljava/lang/String;

    .line 573
    .local v1, cancelTripText:Ljava/lang/String;
    iget-object v2, p2, Lcom/didi/car/model/CarOrder;->feedbackTips:Ljava/lang/String;

    .line 574
    .local v2, feedbackText:Ljava/lang/String;
    if-eqz p4, :cond_0

    iget v3, p2, Lcom/didi/car/model/CarOrder;->payType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 575
    iget-object v3, p3, Lcom/didi/car/model/CarPayResult;->payOrderSubTitle:Ljava/lang/String;

    iget-object v4, p3, Lcom/didi/car/model/CarPayResult;->payOrderTitle:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showPaidCancelTripView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->hideCancelTripView()V

    .line 586
    :goto_0
    invoke-virtual {p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showHomeTip()V

    .line 587
    return-void

    .line 578
    :cond_0
    new-instance v0, Lcom/didi/car/model/CarCancelTrip;

    invoke-direct {v0}, Lcom/didi/car/model/CarCancelTrip;-><init>()V

    .line 579
    .local v0, cancelTrip:Lcom/didi/car/model/CarCancelTrip;
    iput-object v1, v0, Lcom/didi/car/model/CarCancelTrip;->canelLabel:Ljava/lang/String;

    .line 580
    iput-object v2, v0, Lcom/didi/car/model/CarCancelTrip;->feedbackTips:Ljava/lang/String;

    .line 581
    iget-object v3, p2, Lcom/didi/car/model/CarOrder;->feedbackTitle:Ljava/lang/String;

    iput-object v3, v0, Lcom/didi/car/model/CarCancelTrip;->feedbackTitle:Ljava/lang/String;

    .line 582
    iget v3, p2, Lcom/didi/car/model/CarOrder;->feedback:I

    iput v3, v0, Lcom/didi/car/model/CarCancelTrip;->feedback:I

    .line 583
    iget v3, p2, Lcom/didi/car/model/CarOrder;->isCancel:I

    iput v3, v0, Lcom/didi/car/model/CarCancelTrip;->isCancel:I

    .line 584
    invoke-virtual {p1, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCancelTripView(Lcom/didi/car/model/CarCancelTrip;)V

    goto :goto_0
.end method

.method private initContentView()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 413
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initLocationView()V

    .line 414
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    .line 415
    .local v0, controllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;
    invoke-virtual {v0, p0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setListener(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView$CarWaitForResponseControllerListener;)V

    .line 416
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->isFromOrderHistory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 417
    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setFromHistory(Z)V

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    .line 420
    .local v2, order:Lcom/didi/car/model/CarOrder;
    iget-object v5, v2, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    invoke-virtual {v0, v5}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setDriver(Lcom/didi/car/model/CarDriver;)V

    .line 421
    invoke-virtual {v0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setOrder(Lcom/didi/car/model/CarOrder;)V

    .line 423
    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 425
    iget-object v3, v2, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    .line 426
    .local v3, payResult:Lcom/didi/car/model/CarPayResult;
    iget v5, v2, Lcom/didi/car/model/CarOrder;->isPay:I

    if-ne v5, v1, :cond_2

    .line 428
    .local v1, hasPaid:Z
    :goto_0
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getServiceType()I

    move-result v4

    .line 429
    .local v4, serviceType:I
    sparse-switch v4, :sswitch_data_0

    .line 451
    :goto_1
    const/16 v5, 0x40

    if-ne v4, v5, :cond_3

    .line 452
    new-instance v5, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$1;

    invoke-direct {v5, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$1;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    invoke-virtual {p0, v5}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    .line 480
    :cond_1
    :goto_2
    return-void

    .line 426
    .end local v1           #hasPaid:Z
    .end local v4           #serviceType:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 432
    .restart local v1       #hasPaid:Z
    .restart local v4       #serviceType:I
    :sswitch_0
    invoke-direct {p0, v0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initArrearageService(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;Lcom/didi/car/model/CarOrder;)V

    .line 433
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->stopCallDriverLocation()V

    goto :goto_1

    .line 437
    :sswitch_1
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initPayOrPaidEvaluateService(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarPayResult;Z)V

    .line 438
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->stopCallDriverLocation()V

    goto :goto_1

    .line 442
    :sswitch_2
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initCancelTripService(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarPayResult;Z)V

    .line 443
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->stopCallDriverLocation()V

    goto :goto_1

    .line 447
    :sswitch_3
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initNormalService()V

    goto :goto_1

    .line 461
    :cond_3
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->isFromOrderHistory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 462
    new-instance v5, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$2;

    invoke-direct {v5, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$2;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    invoke-virtual {p0, v5}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 471
    :cond_4
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->isBookingOrder()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 472
    new-instance v5, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$3;

    invoke-direct {v5, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$3;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    invoke-virtual {p0, v5}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 429
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_3
        0x20 -> :sswitch_2
        0x30 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method private initCountDownAlarm()V
    .locals 5

    .prologue
    const/16 v3, 0xfa6

    const/16 v2, 0xfa3

    .line 875
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget v1, v1, Lcom/didi/car/model/CarOrder;->substatus:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget v1, v1, Lcom/didi/car/model/CarOrder;->substatus:I

    if-ne v1, v3, :cond_2

    .line 877
    :cond_0
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showMyLocationMarker()V

    .line 897
    :cond_1
    :goto_0
    return-void

    .line 880
    :cond_2
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->refreshCountDownTime()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, timeFlag:Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 883
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initPositionSendAlarm()V

    .line 884
    iget-wide v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mFlat:D

    iget-wide v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mFlng:D

    invoke-static {v1, v2, v3, v4}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setBookingMapViewZoom(DD)V

    .line 885
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showMyLocationMarker()V

    goto :goto_0

    .line 889
    :cond_3
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 890
    iget-wide v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mFlat:D

    iget-wide v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mFlng:D

    invoke-static {v1, v2, v3, v4}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setBookingMapViewZoom(DD)V

    goto :goto_0

    .line 893
    :cond_4
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsTripCanceled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget v1, v1, Lcom/didi/car/model/CarOrder;->substatus:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget v1, v1, Lcom/didi/car/model/CarOrder;->substatus:I

    if-eq v1, v3, :cond_1

    .line 895
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private initHalfHourAlarmIfNeed()V
    .locals 7

    .prologue
    .line 927
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/didi/common/alarm/CommonAlarmReceiver;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 928
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "book_half_hour_action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    const-string v3, "order_id"

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v4}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getTransportTime()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getCheckedTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1b7740

    sub-long v0, v3, v5

    .line 931
    .local v0, delayed:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/didi/common/alarm/CommonAlarmManager;->setOnceAlarm(Landroid/content/Intent;J)V

    .line 934
    :cond_0
    return-void
.end method

.method private initLocationView()V
    .locals 1

    .prologue
    .line 663
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setBottomMargin(I)V

    .line 664
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$7;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    invoke-static {v0}, Lcom/didi/soso/location/LocationViewHelper;->setChangeListener(Lcom/didi/soso/location/view/LocationView$ChangeListener;)V

    .line 675
    invoke-static {}, Lcom/didi/soso/location/LocationViewHelper;->showLocation()V

    .line 676
    return-void
.end method

.method private initMapView()V
    .locals 9

    .prologue
    .line 679
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->addMapListener()V

    .line 681
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->isBookingOrder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCity:Ljava/lang/String;

    iget-wide v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mFlat:D

    iget-wide v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mFlng:D

    iget-wide v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mTlat:D

    iget-wide v7, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mTlng:D

    invoke-static/range {v0 .. v8}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showStartEndMarkerAndLine(Ljava/lang/String;DDDD)V

    .line 683
    const-string v0, "-1"

    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->refreshCountDownTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-wide v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mFlat:D

    iget-wide v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mFlng:D

    iget-wide v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mTlat:D

    iget-wide v6, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mTlng:D

    invoke-static/range {v0 .. v7}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setMapViewZoom(DDDD)V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showMyLocationMarker()V

    goto :goto_0
.end method

.method private initNormalService()V
    .locals 2

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initTitle()V

    .line 592
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initPushTipsAndBubble()V

    .line 594
    sget-object v0, Lcom/didi/car/helper/CarPushHelper;->HIT_MESSAGE:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    sget-object v1, Lcom/didi/car/helper/CarPushHelper;->HIT_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showDrawerView(Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/car/helper/CarPushHelper;->HIT_MESSAGE:Ljava/lang/String;

    .line 599
    :cond_0
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->checkIfShowFirstTip()V

    .line 600
    return-void
.end method

.method private initPayOrPaidEvaluateService(Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;Lcom/didi/car/model/CarOrder;Lcom/didi/car/model/CarPayResult;Z)V
    .locals 5
    .parameter "controllerView"
    .parameter "order"
    .parameter "payResult"
    .parameter "hasPaid"

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 541
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 542
    if-nez p4, :cond_0

    iget-object v2, p2, Lcom/didi/car/model/CarOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    if-eqz v2, :cond_3

    iget-object v2, p2, Lcom/didi/car/model/CarOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    iget v2, v2, Lcom/didi/car/model/CarWxAgentPayStatus;->status:I

    if-ne v2, v3, :cond_3

    .line 544
    :cond_0
    if-eqz p3, :cond_1

    iget-object v1, p3, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p3, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v1, v1, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    if-ne v1, v0, :cond_2

    .line 547
    iget-object v1, p3, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v1, v1, Lcom/didi/car/model/CarShareCouponInfo;->pinkPop:I

    if-ne v1, v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p3, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v1, v1, Lcom/didi/car/model/CarShareCouponInfo;->pinkPopTime:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 557
    :cond_1
    :goto_0
    iget-object v0, p3, Lcom/didi/car/model/CarPayResult;->payOrderSubTitle:Ljava/lang/String;

    iget-object v1, p3, Lcom/didi/car/model/CarPayResult;->payOrderTitle:Ljava/lang/String;

    iget-object v2, p2, Lcom/didi/car/model/CarOrder;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->onPaySucceed(Lcom/didi/car/model/CarOrder;Ljava/lang/String;Ljava/lang/String;Lcom/didi/car/model/CarWxAgentPayStatus;)V

    .line 566
    :goto_1
    return-void

    .line 550
    :cond_2
    iget-object v1, p3, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v1, v1, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    if-ne v1, v3, :cond_1

    .line 552
    iget-object v1, p3, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v1, v1, Lcom/didi/car/model/CarShareCouponInfo;->open:I

    if-ne v1, v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p3, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v1, v1, Lcom/didi/car/model/CarShareCouponInfo;->popLayerTime:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 559
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pgxpay_sw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 560
    iget-object v2, p2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v2, v2, Lcom/didi/car/model/FeeDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    iput-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    .line 561
    iget-object v2, p2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v2, v2, Lcom/didi/car/model/FeeDetail;->payType:I

    iput v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    .line 562
    iget-object v2, p2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v2, v2, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iput-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carRefund:Lcom/didi/car/model/CarRefund;

    .line 563
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->checkUserIsBusiness()V

    .line 564
    iget-object v2, p2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v3, p2, Lcom/didi/car/model/CarOrder;->pricingModel:I

    if-ne v3, v0, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    invoke-virtual {p1, v2, v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showdCostDetailView(Lcom/didi/car/model/FeeDetail;ZLcom/didi/car/model/CarVoucherInfo;)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private initPayResultCheckAlarm()V
    .locals 6

    .prologue
    .line 946
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->hasPayResult()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 966
    :goto_0
    return-void

    .line 950
    :cond_0
    const v3, 0x7f0b043a

    invoke-direct {p0, v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 952
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    .line 953
    .local v0, handler:Landroid/os/Handler;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 954
    .local v2, msg:Landroid/os/Message;
    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->obtainAlarmIntent(Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    .line 956
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmReceiver;->setChkPayResultHandler(Landroid/os/Handler;)V

    .line 957
    new-instance v3, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$9;

    invoke-direct {v3, p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$9;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Landroid/content/Intent;)V

    const-wide/16 v4, 0xbb8

    invoke-static {v3, v4, v5}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 965
    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCheckPayResultIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private initPositionSendAlarm()V
    .locals 5

    .prologue
    .line 913
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    .line 914
    .local v0, handler:Landroid/os/Handler;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 915
    .local v2, msg:Landroid/os/Message;
    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->obtainAlarmIntent(Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    .line 917
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmReceiver;->setChkAnswerHandler(Landroid/os/Handler;)V

    .line 918
    const-wide/16 v3, 0xbb8

    invoke-static {v1, v3, v4}, Lcom/didi/common/alarm/CommonAlarmManager;->setRepeatingAlarm(Landroid/content/Intent;J)V

    .line 920
    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mSendPostionIntent:Landroid/content/Intent;

    .line 921
    return-void
.end method

.method private initPushTipsAndBubble()V
    .locals 4

    .prologue
    .line 692
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget v1, v2, Lcom/didi/car/model/CarOrder;->substatus:I

    .line 693
    .local v1, substatus:I
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v0, v2, Lcom/didi/car/model/CarOrder;->pushTips:Ljava/lang/String;

    .line 694
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->orderState:Lcom/didi/car/model/CarOrderState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->orderState:Lcom/didi/car/model/CarOrderState;

    iget-object v2, v2, Lcom/didi/car/model/CarOrderState;->position:Lcom/didi/car/model/CarPosition;

    if-eqz v2, :cond_0

    .line 695
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->orderState:Lcom/didi/car/model/CarOrderState;

    iget-object v2, v2, Lcom/didi/car/model/CarOrderState;->position:Lcom/didi/car/model/CarPosition;

    iput-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    .line 698
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 746
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showPhoneDrawerView(Ljava/lang/String;)V

    .line 747
    return-void

    .line 710
    :pswitch_1
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    if-eqz v2, :cond_1

    .line 711
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    invoke-virtual {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onDriverPositionPushReceived(Lcom/didi/car/model/CarPosition;)V

    goto :goto_0

    .line 717
    :pswitch_2
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget v2, v2, Lcom/didi/car/model/CarOrder;->pricingModel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 718
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->newRealtimeCount:Lcom/didi/car/model/CarOrderNewRealtimeCount;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onOrderNewRealtimeCountPushReceived(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V

    goto :goto_0

    .line 720
    :cond_2
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onOrderRealtimeCountPushReceived(Lcom/didi/car/model/CarOrderRealtimeCount;)V

    goto :goto_0

    .line 725
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onDriverPrepared(Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onLateBillingStarted(Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private initTimeConsultAlarm()V
    .locals 4

    .prologue
    .line 902
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    iget v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->times:I

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->updateTimeConsultView(I)V

    .line 903
    iget v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->times:I

    if-lez v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 906
    :cond_0
    iget v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->times:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->times:I

    .line 907
    return-void
.end method

.method private initTitle()V
    .locals 3

    .prologue
    .line 603
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v0, v2, Lcom/didi/car/model/CarOrder;->statusTitle:Ljava/lang/String;

    .line 604
    .local v0, statusTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitle(Ljava/lang/String;)V

    .line 608
    :cond_0
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget v1, v2, Lcom/didi/car/model/CarOrder;->substatus:I

    .line 609
    .local v1, subStatus:I
    const/16 v2, 0xfa6

    if-ne v1, v2, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 612
    :cond_1
    return-void
.end method

.method private isBookingOrder()Z
    .locals 2

    .prologue
    .line 3507
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

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
    .line 3511
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getArguments()Landroid/os/Bundle;

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

.method private obtainAlarmIntent(Landroid/os/Message;)Landroid/content/Intent;
    .locals 4
    .parameter "msg"

    .prologue
    .line 992
    const/4 v0, 0x0

    .line 994
    .local v0, action:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 995
    const-string v0, "check_status_action"

    .line 1000
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/didi/common/alarm/CommonAlarmReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1001
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    const-string v2, "msg"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1004
    return-object v1

    .line 996
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 997
    const-string v0, "check_pay_result"

    goto :goto_0
.end method

.method private onConsultCanceled()V
    .locals 2

    .prologue
    .line 1949
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->finishCancelTravelUI()V

    .line 1950
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->onConsultSubmitSucceed()V

    .line 1951
    const v0, 0x7f0b0291

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongCompleteMessage(I)V

    .line 1952
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->isAppTopFront(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1953
    invoke-static {}, Lcom/didi/car/helper/CarResendHelper;->reSendOrderWithoutCreate()V

    .line 1957
    :goto_0
    return-void

    .line 1955
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsNeedCarResend:Z

    goto :goto_0
.end method

.method private varargs onDriverChangeFinished(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 8
    .parameter "message"
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1918
    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNotificationHelper:Lcom/didi/car/helper/CarNotificationCountHelper;

    invoke-virtual {v5}, Lcom/didi/car/helper/CarNotificationCountHelper;->driverChange()V

    .line 1919
    const/4 v2, 0x0

    .line 1920
    .local v2, result:Z
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_1

    :cond_0
    move v3, v2

    .line 1945
    .end local v2           #result:Z
    .local v3, result:I
    :goto_0
    return v3

    .line 1924
    .end local v3           #result:I
    .restart local v2       #result:Z
    :cond_1
    const/4 v0, 0x0

    .line 1925
    .local v0, changedResult:Z
    aget-object v5, p2, v6

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    .line 1926
    aget-object v5, p2, v6

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1929
    :cond_2
    const/4 v1, 0x0

    .line 1930
    .local v1, driver:Lcom/didi/car/model/CarDriver;
    aget-object v5, p2, v7

    instance-of v5, v5, Lcom/didi/car/model/CarDriver;

    if-eqz v5, :cond_3

    .line 1931
    aget-object v1, p2, v7

    .end local v1           #driver:Lcom/didi/car/model/CarDriver;
    check-cast v1, Lcom/didi/car/model/CarDriver;

    .line 1934
    .restart local v1       #driver:Lcom/didi/car/model/CarDriver;
    :cond_3
    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iput-object v1, v5, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    .line 1935
    if-eqz v0, :cond_4

    .line 1936
    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v5, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setDriver(Lcom/didi/car/model/CarDriver;)V

    .line 1943
    :goto_1
    const v5, 0x7f0b0567

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1944
    .local v4, title:Ljava/lang/String;
    invoke-direct {p0, v4, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 1945
    .restart local v3       #result:I
    goto :goto_0

    .line 1938
    .end local v3           #result:I
    .end local v4           #title:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    .line 1939
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 1940
    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    const-string v6, ""

    invoke-virtual {v5, p1, v6}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCancelTripView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onDriverChanged(Ljava/lang/String;)Z
    .locals 5
    .parameter "message"

    .prologue
    .line 1899
    const/4 v1, 0x0

    .line 1900
    .local v1, result:Z
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 1901
    .local v0, order:Lcom/didi/car/model/CarOrder;
    iget-object v3, v0, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/didi/car/model/CarDriver;->timeout:Z

    .line 1902
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    iget-object v4, v0, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    invoke-virtual {v3, v4}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setDriver(Lcom/didi/car/model/CarDriver;)V

    .line 1903
    iget-boolean v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsDriverPrepared:Z

    if-eqz v3, :cond_0

    .line 1904
    const/4 v1, 0x1

    .line 1905
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 1906
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCancelTripView(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1908
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showDriverChangedInfoDialog(Ljava/lang/String;)V

    .line 1912
    :cond_0
    const v3, 0x7f0b0567

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1913
    .local v2, title:Ljava/lang/String;
    invoke-direct {p0, v2, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    return v1
.end method

.method private onDriverPrepared(Ljava/lang/String;)V
    .locals 9
    .parameter "message"

    .prologue
    .line 2144
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    if-eqz v4, :cond_0

    .line 2145
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    invoke-virtual {v4}, Lcom/didi/car/model/CarPosition;->getLatDouble()Ljava/lang/Double;

    move-result-object v0

    .line 2146
    .local v0, lat:Ljava/lang/Double;
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    invoke-virtual {v4}, Lcom/didi/car/model/CarPosition;->getLngDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 2147
    .local v1, lng:Ljava/lang/Double;
    sget-object v4, Lcom/didi/frame/protobuffer/OrderStat;->OnTrip:Lcom/didi/frame/protobuffer/OrderStat;

    iput-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderStat:Lcom/didi/frame/protobuffer/OrderStat;

    .line 2148
    const v4, 0x7f0b056e

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2149
    .local v2, prepared:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    const/16 v5, 0xfa3

    iput v5, v4, Lcom/didi/car/model/CarOrder;->substatus:I

    .line 2150
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2151
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelHalfHourAlarm()V

    .line 2152
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showMyLocationMarker()V

    .line 2153
    sget-boolean v4, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v4, :cond_2

    .line 2154
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;-><init>(DD)V

    invoke-static {v4, v2}, Lcom/didi/map/marker/MarkerController;->updateDriverArrivalMarkerBubble(Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;Ljava/lang/String;)V

    .line 2159
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setWaitForArrivalMapViewZoom(DD)V

    .line 2161
    .end local v0           #lat:Ljava/lang/Double;
    .end local v1           #lng:Ljava/lang/Double;
    .end local v2           #prepared:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsDriverPrepared:Z

    .line 2162
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelPostionSendAlarm()V

    .line 2164
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v4}, Lcom/didi/car/model/CarOrder;->isBooking()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2165
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->removeBookingRoute()V

    .line 2168
    :cond_1
    const v4, 0x7f0b056a

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2169
    .local v3, title:Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->sendPsngerPosition()V

    .line 2172
    return-void

    .line 2156
    .end local v3           #title:Ljava/lang/String;
    .restart local v0       #lat:Ljava/lang/Double;
    .restart local v1       #lng:Ljava/lang/Double;
    .restart local v2       #prepared:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7, v2}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showCarArrivedMarker(DDLjava/lang/String;)V

    goto :goto_0
.end method

.method private varargs onDriverStartBilling(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9
    .parameter "message"
    .parameter "args"

    .prologue
    const/4 v8, 0x1

    .line 1960
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->finishCancelTravelUI()V

    .line 1962
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    const/16 v5, 0xfa6

    iput v5, v4, Lcom/didi/car/model/CarOrder;->substatus:I

    .line 1964
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getCarOrderStatusSwitch()I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 1965
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->queryOrderStatus:Ljava/lang/Runnable;

    const-wide/32 v6, 0x927c0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1968
    :cond_0
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 1969
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v4}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->onStartBilling()V

    .line 1971
    const v4, 0x7f0b056f

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1972
    .local v3, title:Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    if-nez v4, :cond_2

    .line 2003
    :cond_1
    :goto_0
    return-void

    .line 1978
    :cond_2
    if-eqz p2, :cond_1

    array-length v4, p2

    if-eqz v4, :cond_1

    .line 1982
    const/4 v2, 0x0

    .line 1983
    .local v2, startFee:F
    const/4 v4, 0x0

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1985
    new-instance v0, Lcom/didi/common/model/LocationInfo;

    invoke-direct {v0}, Lcom/didi/common/model/LocationInfo;-><init>()V

    .line 1986
    .local v0, locationInfo:Lcom/didi/common/model/LocationInfo;
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    invoke-virtual {v4}, Lcom/didi/car/model/CarPosition;->getLngDouble()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/didi/common/model/LocationInfo;->x:D

    .line 1987
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    invoke-virtual {v4}, Lcom/didi/car/model/CarPosition;->getLatDouble()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, v0, Lcom/didi/common/model/LocationInfo;->y:D

    .line 1989
    new-instance v1, Lcom/didi/car/model/CarOrderRealtimeCount;

    invoke-direct {v1}, Lcom/didi/car/model/CarOrderRealtimeCount;-><init>()V

    .line 1990
    .local v1, realtimeCount:Lcom/didi/car/model/CarOrderRealtimeCount;
    iput-boolean v8, v1, Lcom/didi/car/model/CarOrderRealtimeCount;->isInit:Z

    .line 1991
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    .line 1992
    iget-object v4, v1, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1993
    iput v2, v1, Lcom/didi/car/model/CarOrderRealtimeCount;->startFee:F

    .line 1994
    iput v2, v1, Lcom/didi/car/model/CarOrderRealtimeCount;->fee:F

    .line 1996
    invoke-static {v1, v8}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showRealtimeMarker(Lcom/didi/car/model/CarOrderRealtimeCount;Z)V

    .line 1997
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNotificationHelper:Lcom/didi/car/helper/CarNotificationCountHelper;

    iget v5, v1, Lcom/didi/car/model/CarOrderRealtimeCount;->fee:F

    invoke-virtual {v4, v5}, Lcom/didi/car/helper/CarNotificationCountHelper;->startBilling(F)V

    .line 1999
    sget-object v4, Lcom/didi/frame/protobuffer/OrderStat;->OnTrip:Lcom/didi/frame/protobuffer/OrderStat;

    iput-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderStat:Lcom/didi/frame/protobuffer/OrderStat;

    .line 2001
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->sendPsngerPosition()V

    goto :goto_0
.end method

.method private onLateBillingStarted(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 1890
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCarOrderStatusSwitch()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1891
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->queryOrderStatus:Ljava/lang/Runnable;

    const-wide/32 v3, 0x927c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1893
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->onDriverLateBillingStarted()V

    .line 1894
    const v1, 0x7f0b056d

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1895
    .local v0, title:Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    return-void
.end method

.method private onOrderNewRealtimeCountPushReceived(Lcom/didi/car/model/CarOrderNewRealtimeCount;)V
    .locals 9
    .parameter "realtimeCount"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1180
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 1181
    .local v1, oid:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->oid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1185
    :cond_1
    iget-boolean v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsDriverPrepared:Z

    if-nez v3, :cond_2

    .line 1186
    invoke-direct {p0, v5}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onDriverPrepared(Ljava/lang/String;)V

    .line 1189
    :cond_2
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget v3, v3, Lcom/didi/car/model/CarOrder;->substatus:I

    const/16 v4, 0xfa6

    if-eq v3, v4, :cond_3

    .line 1190
    const-string v3, " "

    invoke-direct {p0, v3, v5}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onDriverStartBilling(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1193
    :cond_3
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNotificationHelper:Lcom/didi/car/helper/CarNotificationCountHelper;

    iget v4, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->totalFee:F

    invoke-virtual {v3, v4}, Lcom/didi/car/helper/CarNotificationCountHelper;->feeRefresh(F)V

    .line 1195
    sget-boolean v3, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-nez v3, :cond_4

    .line 1196
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/map/listener/MapListener;->isMoving()Z

    move-result v0

    .line 1197
    .local v0, isMoving:Z
    if-nez v0, :cond_4

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/FragmentMgr;->isCarWaitForArrivalFragment()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->isPaused()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1198
    iget-object v3, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/LocationInfo;

    iget-wide v4, v3, Lcom/didi/common/model/LocationInfo;->y:D

    iget-object v3, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/LocationInfo;

    iget-wide v6, v3, Lcom/didi/common/model/LocationInfo;->x:D

    invoke-static {v4, v5, v6, v7}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setMapCenterByPoint(DD)V

    .line 1202
    .end local v0           #isMoving:Z
    :cond_4
    new-instance v3, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$19;

    invoke-direct {v3, p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$19;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarOrderNewRealtimeCount;)V

    const-wide/16 v4, 0x1f4

    invoke-static {v3, v4, v5}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1209
    new-instance v2, Lcom/didi/car/model/CarPosition;

    invoke-direct {v2}, Lcom/didi/car/model/CarPosition;-><init>()V

    .line 1210
    .local v2, pos:Lcom/didi/car/model/CarPosition;
    iget-object v3, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/LocationInfo;

    iget-wide v3, v3, Lcom/didi/common/model/LocationInfo;->y:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/car/model/CarPosition;->lat:Ljava/lang/String;

    .line 1211
    iget-object v3, p1, Lcom/didi/car/model/CarOrderNewRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/LocationInfo;

    iget-wide v3, v3, Lcom/didi/common/model/LocationInfo;->x:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/car/model/CarPosition;->lng:Ljava/lang/String;

    .line 1212
    iput-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    .line 1214
    sget-object v3, Lcom/didi/frame/protobuffer/OrderStat;->OnTrip:Lcom/didi/frame/protobuffer/OrderStat;

    iput-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderStat:Lcom/didi/frame/protobuffer/OrderStat;

    .line 1216
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->sendPsngerPosition()V

    goto/16 :goto_0
.end method

.method private onOrderRealtimeCountPushReceived(Lcom/didi/car/model/CarOrderRealtimeCount;)V
    .locals 9
    .parameter "realtimeCount"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1220
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 1221
    .local v1, oid:Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->oid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    iget-boolean v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsDriverPrepared:Z

    if-nez v3, :cond_2

    .line 1226
    invoke-direct {p0, v5}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onDriverPrepared(Ljava/lang/String;)V

    .line 1229
    :cond_2
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget v3, v3, Lcom/didi/car/model/CarOrder;->substatus:I

    const/16 v4, 0xfa6

    if-eq v3, v4, :cond_3

    .line 1230
    const-string v3, " "

    invoke-direct {p0, v3, v5}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onDriverStartBilling(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1233
    :cond_3
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNotificationHelper:Lcom/didi/car/helper/CarNotificationCountHelper;

    iget v4, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->fee:F

    invoke-virtual {v3, v4}, Lcom/didi/car/helper/CarNotificationCountHelper;->feeRefresh(F)V

    .line 1235
    sget-boolean v3, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-nez v3, :cond_4

    .line 1236
    invoke-static {}, Lcom/didi/map/MapController;->getMapListener()Lcom/didi/map/listener/MapListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/map/listener/MapListener;->isMoving()Z

    move-result v0

    .line 1237
    .local v0, isMoving:Z
    if-nez v0, :cond_4

    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/frame/FragmentMgr;->isCarWaitForArrivalFragment()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->isPaused()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1238
    iget-object v3, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/LocationInfo;

    iget-wide v4, v3, Lcom/didi/common/model/LocationInfo;->y:D

    iget-object v3, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/LocationInfo;

    iget-wide v6, v3, Lcom/didi/common/model/LocationInfo;->x:D

    invoke-static {v4, v5, v6, v7}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setMapCenterByPoint(DD)V

    .line 1242
    .end local v0           #isMoving:Z
    :cond_4
    new-instance v3, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$20;

    invoke-direct {v3, p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$20;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarOrderRealtimeCount;)V

    const-wide/16 v4, 0x1f4

    invoke-static {v3, v4, v5}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1249
    new-instance v2, Lcom/didi/car/model/CarPosition;

    invoke-direct {v2}, Lcom/didi/car/model/CarPosition;-><init>()V

    .line 1250
    .local v2, pos:Lcom/didi/car/model/CarPosition;
    iget-object v3, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/LocationInfo;

    iget-wide v3, v3, Lcom/didi/common/model/LocationInfo;->y:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/car/model/CarPosition;->lat:Ljava/lang/String;

    .line 1251
    iget-object v3, p1, Lcom/didi/car/model/CarOrderRealtimeCount;->track:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/didi/common/model/LocationInfo;

    iget-wide v3, v3, Lcom/didi/common/model/LocationInfo;->x:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/car/model/CarPosition;->lng:Ljava/lang/String;

    .line 1252
    iput-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    .line 1254
    sget-object v3, Lcom/didi/frame/protobuffer/OrderStat;->OnTrip:Lcom/didi/frame/protobuffer/OrderStat;

    iput-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderStat:Lcom/didi/frame/protobuffer/OrderStat;

    .line 1256
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->sendPsngerPosition()V

    goto/16 :goto_0
.end method

.method private onPaidCostDetailGot(Lcom/didi/car/model/CarFeeDetailResult;)V
    .locals 3
    .parameter "feeDetailResult"

    .prologue
    .line 1758
    iget-object v1, p1, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    if-eqz v1, :cond_0

    .line 1759
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/didi/car/ui/activity/CarCostDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1760
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pricing_mode"

    iget v2, p1, Lcom/didi/car/model/CarFeeDetailResult;->pricingModel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1761
    const-string v1, "car_fee_detail"

    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1762
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1766
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1764
    :cond_0
    const v1, 0x7f0b02da

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongError(I)V

    goto :goto_0
.end method

.method private onPayResultGot(Lcom/didi/car/model/CarPayResult;)V
    .locals 9
    .parameter "result"

    .prologue
    const v8, 0x7f0b05aa

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPayResultGot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/didi/car/model/CarPayResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 2567
    iput-boolean v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxSdk:Z

    .line 2569
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/didi/car/model/CarPayResult;->oid:Ljava/lang/String;

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2570
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPayResultGot: result == null || result.oid != mOrder.getOid() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 2647
    :cond_1
    :goto_0
    return-void

    .line 2574
    :cond_2
    iget-boolean v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->inOtherActivity:Z

    if-eqz v2, :cond_4

    .line 2575
    sget-object v2, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->webActivity:Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 2576
    sget-object v2, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->webActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 2577
    sput-object v6, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->webActivity:Landroid/app/Activity;

    .line 2579
    :cond_3
    iput-boolean v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->inOtherActivity:Z

    .line 2582
    :cond_4
    iput-boolean v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagReqOrderStatusEnd:Z

    .line 2583
    iput-boolean v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagPayResultQuery:Z

    .line 2585
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelPayResultCheckAlarm()V

    .line 2587
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentCheckDialogHelper:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentCheckDialogHelper:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    invoke-virtual {v2}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2588
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentCheckDialogHelper:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    invoke-virtual {v2}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->dismiss()V

    .line 2591
    :cond_5
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->hasPayResult()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2592
    const-string v2, "onPayResultGot: hasPayResult "

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 2595
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v2, v2, Lcom/didi/car/model/FeeDetail;->payType:I

    if-ne v2, v7, :cond_1

    .line 2596
    iget v2, p1, Lcom/didi/car/model/CarPayResult;->tradeStatus:I

    if-ne v2, v5, :cond_6

    .line 2597
    invoke-direct {p0, v6}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPayUpdateView(Lcom/didi/car/model/CarWxAgentPayStatus;)V

    goto :goto_0

    .line 2598
    :cond_6
    iget v2, p1, Lcom/didi/car/model/CarPayResult;->tradeStatus:I

    if-nez v2, :cond_1

    .line 2599
    new-instance v1, Lcom/didi/car/model/CarWxAgentPayStatus;

    invoke-direct {v1}, Lcom/didi/car/model/CarWxAgentPayStatus;-><init>()V

    .line 2600
    .local v1, wxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;
    iput v4, v1, Lcom/didi/car/model/CarWxAgentPayStatus;->status:I

    .line 2601
    const v2, 0x7f0b05a9

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentTitle:Ljava/lang/String;

    .line 2602
    const v2, 0x7f0b05ab

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/car/model/CarWxAgentPayStatus;->wxAgentMsg:Ljava/lang/String;

    .line 2603
    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPayUpdateView(Lcom/didi/car/model/CarWxAgentPayStatus;)V

    .line 2604
    invoke-static {v8}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayErrorRetryDialog(Ljava/lang/String;)V

    .line 2605
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iput v4, v2, Lcom/didi/car/model/FeeDetail;->payType:I

    goto :goto_0

    .line 2612
    .end local v1           #wxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;
    :cond_7
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V

    .line 2615
    iget v2, p1, Lcom/didi/car/model/CarPayResult;->tradeStatus:I

    if-ne v2, v5, :cond_9

    .line 2617
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iput-object p1, v2, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    .line 2618
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const/4 v3, 0x3

    iput v3, v2, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 2619
    iput v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getResultCount:I

    .line 2620
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2621
    iget-object v2, p1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    if-eqz v2, :cond_8

    .line 2622
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    iget-object v3, p1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iput-object v3, v2, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    .line 2625
    :cond_8
    invoke-direct {p0, p1, v6}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPaySuccessed(Lcom/didi/car/model/CarPayResult;Lcom/didi/car/model/CarWxAgentPayStatus;)V

    .line 2627
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayFinishShareResult(Lcom/didi/car/model/CarPayResult;)V

    .line 2630
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/didi/common/service/PositionService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2631
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "oid"

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2632
    const-string v2, "business"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2633
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 2638
    .end local v0           #intent:Landroid/content/Intent;
    :cond_9
    iget v2, p1, Lcom/didi/car/model/CarPayResult;->tradeStatus:I

    if-nez v2, :cond_1

    .line 2639
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v2, v2, Lcom/didi/car/model/FeeDetail;->payType:I

    if-ne v2, v7, :cond_a

    .line 2640
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iput v4, v2, Lcom/didi/car/model/FeeDetail;->payType:I

    .line 2641
    invoke-static {v8}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayErrorInfoDialog(Ljava/lang/String;)V

    .line 2643
    :cond_a
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    invoke-virtual {v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCostDetailView(Lcom/didi/car/model/CarVoucherInfo;)V

    goto/16 :goto_0
.end method

.method private onPayStoped(Lcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "payStop"

    .prologue
    .line 2662
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3fe

    if-ne v0, v1, :cond_1

    .line 2663
    const v0, 0x7f0b045a

    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showHasPaidDialog(I)V

    .line 2679
    :cond_0
    :goto_0
    return-void

    .line 2667
    :cond_1
    invoke-virtual {p1}, Lcom/didi/common/model/BaseObject;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 2668
    const v0, 0x7f0b0466

    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayStopSuccessDialog(I)V

    goto :goto_0

    .line 2676
    :cond_2
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2677
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayStopNetErrorDialog()V

    goto :goto_0
.end method

.method private onPaySuccessed(Lcom/didi/car/model/CarPayResult;Lcom/didi/car/model/CarWxAgentPayStatus;)V
    .locals 5
    .parameter "result"
    .parameter "payStatus"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarWaitForArrvial onPaySuccessed result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 2493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wanliu_pay_successed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2495
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v0, v1, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    .line 2496
    .local v0, driver:Lcom/didi/car/model/CarDriver;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getVirtualStatus()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2497
    iput-boolean v3, v0, Lcom/didi/car/model/CarDriver;->timeout:Z

    .line 2499
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v1, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setDriver(Lcom/didi/car/model/CarDriver;)V

    .line 2501
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->clearDepart()V

    .line 2502
    invoke-static {}, Lcom/didi/common/notification/CommonNotification;->cancelNotification()V

    .line 2503
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNotificationHelper:Lcom/didi/car/helper/CarNotificationCountHelper;

    invoke-virtual {v1}, Lcom/didi/car/helper/CarNotificationCountHelper;->payResult()V

    .line 2504
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v1, v1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    if-eqz v1, :cond_1

    .line 2505
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v1, v1, Lcom/didi/car/model/FeeDetail;->payType:I

    packed-switch v1, :pswitch_data_0

    .line 2516
    iget-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->userIsBusiness:Z

    if-eqz v1, :cond_2

    .line 2517
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v1, v1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iput v3, v1, Lcom/didi/car/model/CarRefund;->refundStatus:I

    .line 2524
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v3, p1, Lcom/didi/car/model/CarPayResult;->payOrderSubTitle:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/car/model/CarPayResult;->payOrderTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->onPaySucceed(Lcom/didi/car/model/CarOrder;Ljava/lang/String;Ljava/lang/String;Lcom/didi/car/model/CarWxAgentPayStatus;)V

    .line 2525
    return-void

    .line 2508
    :pswitch_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v1, v1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    const/4 v2, 0x2

    iput v2, v1, Lcom/didi/car/model/CarRefund;->refundStatus:I

    goto :goto_0

    .line 2513
    :pswitch_1
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v1, v1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iput v3, v1, Lcom/didi/car/model/CarRefund;->refundStatus:I

    goto :goto_0

    .line 2519
    :cond_2
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v1, v1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iput v4, v1, Lcom/didi/car/model/CarRefund;->refundStatus:I

    goto :goto_0

    .line 2505
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onPayUpdateView(Lcom/didi/car/model/CarWxAgentPayStatus;)V
    .locals 1
    .parameter "payStatus"

    .prologue
    .line 2528
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->onPayUpdateView(Lcom/didi/car/model/CarWxAgentPayStatus;)V

    .line 2529
    return-void
.end method

.method private onQueryOrderDetail()V
    .locals 2

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$28;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    invoke-static {v0, v1}, Lcom/didi/car/net/CarRequest;->getHistroyOrderDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 2105
    return-void
.end method

.method private onSnsConfigGot(Ljava/lang/String;Lcom/didi/car/model/CarSNSConfig;)V
    .locals 1
    .parameter "orderId"
    .parameter "config"

    .prologue
    .line 1031
    invoke-static {p2}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0, p1, p2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setCarShare(Ljava/lang/String;Lcom/didi/car/model/CarSNSConfig;)V

    .line 1034
    :cond_0
    return-void
.end method

.method private redirectCancelResultFragment(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3643
    if-nez p2, :cond_1

    .line 3651
    :cond_0
    :goto_0
    return-void

    .line 3646
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 3647
    const-string v0, "cancel_trip_content"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarCancelTrip;

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarCancelTrip:Lcom/didi/car/model/CarCancelTrip;

    .line 3648
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarCancelTrip:Lcom/didi/car/model/CarCancelTrip;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed(Lcom/didi/car/model/CarCancelTrip;)V

    goto :goto_0
.end method

.method private refreshCountDownTime()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/32 v12, 0xf731400

    const-wide/32 v10, 0x36ee80

    .line 3438
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget v6, v6, Lcom/didi/car/model/CarOrder;->substatus:I

    const/16 v7, 0xfa3

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget v6, v6, Lcom/didi/car/model/CarOrder;->substatus:I

    const/16 v7, 0xfa6

    if-ne v6, v7, :cond_1

    .line 3440
    :cond_0
    invoke-static {}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showMyLocationMarker()V

    .line 3441
    const-string v6, ""

    .line 3462
    :goto_0
    return-object v6

    .line 3444
    :cond_1
    iget-object v6, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v6}, Lcom/didi/car/model/CarOrder;->getTransportTime()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getCheckedTime()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 3446
    .local v0, cha:J
    cmp-long v6, v0, v10

    if-lez v6, :cond_2

    cmp-long v6, v0, v12

    if-gtz v6, :cond_2

    .line 3448
    div-long v2, v0, v10

    .line 3449
    .local v2, hours:J
    mul-long v6, v10, v2

    sub-long v6, v0, v6

    const-wide/32 v8, 0xea60

    div-long v4, v6, v8

    .line 3451
    .local v4, minutes:J
    long-to-int v6, v2

    long-to-int v7, v4

    invoke-static {v6, v7}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showTimeDownMarker(II)V

    .line 3453
    const-string v6, "-1"

    goto :goto_0

    .line 3455
    .end local v2           #hours:J
    .end local v4           #minutes:J
    :cond_2
    cmp-long v6, v0, v12

    if-lez v6, :cond_3

    .line 3456
    const-string v6, "1"

    goto :goto_0

    .line 3458
    :cond_3
    const-wide/32 v6, -0xa4cb80

    cmp-long v6, v0, v6

    if-gtz v6, :cond_4

    .line 3459
    const-string v6, "2"

    goto :goto_0

    .line 3462
    :cond_4
    const-string v6, "0"

    goto :goto_0
.end method

.method private registerCommonMessagePushListener()V
    .locals 1

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCommonMessageLis:Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerCommonMesssageListener(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;)V

    .line 1125
    return-void
.end method

.method private registerDriverPositionListener()V
    .locals 2

    .prologue
    .line 1109
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, oid:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDriverPositionLis:Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;

    invoke-static {v0, v1}, Lcom/didi/car/helper/CarPushHelper;->registerDriverPositionListener(Ljava/lang/String;Lcom/didi/car/helper/CarPushHelper$DriverPositionListener;)V

    .line 1111
    return-void
.end method

.method private registerPayResultPushListener()V
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayResultLis:Lcom/didi/car/helper/CarPushHelper$PayResultListener;

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerPayResultMessageListener(Lcom/didi/car/helper/CarPushHelper$PayResultListener;)V

    .line 1129
    return-void
.end method

.method private registerRealtimeCountPushListener()V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mRealtimeCountLis:Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerOrderRealtimeCountListener(Lcom/didi/car/helper/CarPushHelper$OrderRealtimeCountListener;)V

    .line 1115
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNewRealtimeCountLis:Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerOrderNewRealtimeCountListener(Lcom/didi/car/helper/CarPushHelper$OrderNewRealtimeCountListener;)V

    .line 1116
    return-void
.end method

.method private registerTotalCountPushListener()V
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mTotalCountLis:Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerOrderTotalCount(Lcom/didi/car/helper/CarPushHelper$OrderTotalCountListener;)V

    .line 1120
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNewTotalCountLis:Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerOrderNewTotalCount(Lcom/didi/car/helper/CarPushHelper$OrderNewTotalCountListener;)V

    .line 1121
    return-void
.end method

.method private registerWxAgentMsgPushListener()V
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mWxAgentMsgListener:Lcom/didi/car/helper/CarPushHelper$WxAgentListener;

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerWxAgentMessageListener(Lcom/didi/car/helper/CarPushHelper$WxAgentListener;)V

    .line 1133
    return-void
.end method

.method private removeDialog()V
    .locals 1

    .prologue
    .line 3048
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 3049
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 3051
    :cond_0
    return-void
.end method

.method private removeLoadingDialog()V
    .locals 0

    .prologue
    .line 3044
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 3045
    return-void
.end method

.method private restoreOrderState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 3527
    if-nez p1, :cond_1

    .line 3537
    :cond_0
    :goto_0
    return-void

    .line 3531
    :cond_1
    const-string v1, "order"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 3532
    .local v0, orderObj:Ljava/io/Serializable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/didi/car/model/CarOrder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    if-nez v1, :cond_0

    .line 3533
    check-cast v0, Lcom/didi/car/model/CarOrder;

    .end local v0           #orderObj:Ljava/io/Serializable;
    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    .line 3535
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const-string v2, "error_car"

    const-string v3, "instanceordernotnull"

    invoke-static {v1, v2, v3}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "content"

    .prologue
    .line 2175
    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2180
    :goto_0
    return-void

    .line 2179
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private sendPsngerPosition()V
    .locals 4

    .prologue
    const/16 v3, 0x3e9

    .line 1769
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1770
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1771
    return-void
.end method

.method private showCarFirstGrabbedTip(Lcom/didi/car/model/CarFirstTip;)V
    .locals 3
    .parameter "firstTip"

    .prologue
    .line 2762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_first_car_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2763
    new-instance v0, Lcom/didi/car/helper/CarFirstTipDialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/car/helper/CarFirstTipDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carFirstTipDialogHelper:Lcom/didi/car/helper/CarFirstTipDialogHelper;

    .line 2764
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carFirstTipDialogHelper:Lcom/didi/car/helper/CarFirstTipDialogHelper;

    iget-object v1, p1, Lcom/didi/car/model/CarFirstTip;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/car/model/CarFirstTip;->contentArray:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/car/helper/CarFirstTipDialogHelper;->setTitleContent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2765
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carFirstTipDialogHelper:Lcom/didi/car/helper/CarFirstTipDialogHelper;

    iget-object v1, p1, Lcom/didi/car/model/CarFirstTip;->btnTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/car/helper/CarFirstTipDialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2766
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carFirstTipDialogHelper:Lcom/didi/car/helper/CarFirstTipDialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mKnownedDialogLis:Lcom/didi/car/helper/CarFirstTipDialogHelper$CarDialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/car/helper/CarFirstTipDialogHelper;->setListener(Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;)V

    .line 2767
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carFirstTipDialogHelper:Lcom/didi/car/helper/CarFirstTipDialogHelper;

    invoke-virtual {v0}, Lcom/didi/car/helper/CarFirstTipDialogHelper;->show()V

    .line 2768
    return-void
.end method

.method private showCarShareTicketDialog(Lcom/didi/car/model/CarShareCouponInfo;)V
    .locals 4
    .parameter "shareCouponInfo"

    .prologue
    const/4 v3, 0x0

    .line 3308
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3309
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 3310
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 3311
    const/4 v0, 0x1

    iget v1, p1, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    if-ne v0, v1, :cond_2

    .line 3312
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p1, Lcom/didi/car/model/CarShareCouponInfo;->pinkTitle:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/car/model/CarShareCouponInfo;->pinkContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3313
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PINK:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 3314
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getPinkLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->updatePinkIconShow(Ljava/lang/String;)V

    .line 3315
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p1, Lcom/didi/car/model/CarShareCouponInfo;->pinkButtonSend:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 3316
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p1, Lcom/didi/car/model/CarShareCouponInfo;->pinkButtonLater:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 3317
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mSharePinkDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_share_love_dialog_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3328
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 3331
    :cond_1
    return-void

    .line 3319
    :cond_2
    const/4 v0, 0x2

    iget v1, p1, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    if-ne v0, v1, :cond_0

    .line 3320
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p1, Lcom/didi/car/model/CarShareCouponInfo;->shareTitle:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/car/model/CarShareCouponInfo;->shareText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->COUPON:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 3322
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p1}, Lcom/didi/car/model/CarShareCouponInfo;->getLayerImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->updatePinkIconShow(Ljava/lang/String;)V

    .line 3323
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p1, Lcom/didi/car/model/CarShareCouponInfo;->shareBtnSend:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 3324
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p1, Lcom/didi/car/model/CarShareCouponInfo;->shareBtnLater:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 3325
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mShareTicketDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_share_dialog_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCarWxAgentTip(Lcom/didi/car/model/CarWxAgent;)V
    .locals 6
    .parameter "wxAgent"

    .prologue
    .line 2961
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2975
    :goto_0
    return-void

    .line 2963
    :cond_0
    new-instance v0, Lcom/didi/car/ui/component/CarWxAgentDialog;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/car/ui/component/CarWxAgentDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentDialogHelper:Lcom/didi/car/ui/component/CarWxAgentDialog;

    .line 2964
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentDialogHelper:Lcom/didi/car/ui/component/CarWxAgentDialog;

    iget-object v1, p1, Lcom/didi/car/model/CarWxAgent;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/didi/car/model/CarWxAgent;->subTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/didi/car/model/CarWxAgent;->cancelLabel:Ljava/lang/String;

    iget-object v4, p1, Lcom/didi/car/model/CarWxAgent;->confirmLabel:Ljava/lang/String;

    iget-object v5, p1, Lcom/didi/car/model/CarWxAgent;->Content:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/didi/car/ui/component/CarWxAgentDialog;->setDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentDialogHelper:Lcom/didi/car/ui/component/CarWxAgentDialog;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mWxAgentMsgListenerDialogLis:Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWxAgentDialog;->setListener(Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;)V

    .line 2970
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentDialogHelper:Lcom/didi/car/ui/component/CarWxAgentDialog;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWxAgentDialog;->show()V

    .line 2972
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->updateWxAgentCallBack(Lcom/didi/common/net/ResponseListener;)V

    .line 2974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_wxagent_car_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDialog(Lcom/didi/common/ui/component/CommonDialog$IconType;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "title"
    .parameter "contents"

    .prologue
    .line 2987
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2988
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, p1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 2989
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, p2, p3}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2990
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2991
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2992
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->dialogHelperListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2993
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2994
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "content"

    .prologue
    .line 2978
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2979
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2980
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2981
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2982
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->dialogHelperListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2983
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2984
    return-void
.end method

.method private showDriverChangedInfoDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 2771
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2772
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2773
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2774
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2775
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2776
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2777
    return-void
.end method

.method private showHasPaidDialog(I)V
    .locals 3
    .parameter "contentId"

    .prologue
    .line 2815
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2816
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2818
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2819
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHasPaidDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2820
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2821
    return-void
.end method

.method private showHasPaidDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 2824
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2825
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2827
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2828
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHasPaidDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2829
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2830
    return-void
.end method

.method private showLoadingDialog(I)V
    .locals 4
    .parameter "msgId"

    .prologue
    .line 3036
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3037
    .local v0, content:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 3038
    return-void
.end method

.method private showMsgConfirmDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2390
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2391
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    const v2, 0x7f0b0367

    invoke-virtual {v1, v2}, Lcom/didi/common/base/BaseApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2393
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2394
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2395
    return-void
.end method

.method private showMyTripView()V
    .locals 4

    .prologue
    .line 1667
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v0, v2, Lcom/didi/car/model/CarOrder;->redRecord:Lcom/didi/car/model/CarRedRecordInfo;

    .line 1668
    .local v0, redInfo:Lcom/didi/car/model/CarRedRecordInfo;
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v2, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    .line 1670
    .local v1, shareInfo:Lcom/didi/car/model/CarPayShare;
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/didi/car/model/CarRedRecordInfo;->mIsRed:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1671
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v2, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showRedView(Lcom/didi/car/model/CarRedRecordInfo;)V

    .line 1677
    :cond_0
    :goto_0
    return-void

    .line 1673
    :cond_1
    if-eqz v1, :cond_0

    .line 1674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wanliu_my_trip_share_click"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1675
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v2, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showShareView(Lcom/didi/car/model/CarPayShare;)V

    goto :goto_0
.end method

.method private showOrderCanceledDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 3009
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 3010
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 3012
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 3013
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->dialogOrderCanceledHelperListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3014
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 3015
    return-void
.end method

.method private showPaidView(Lcom/didi/car/model/CarPayParams;)V
    .locals 4
    .parameter "carPayParams"

    .prologue
    .line 2401
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->hasPayResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2421
    :goto_0
    return-void

    .line 2405
    :cond_0
    new-instance v1, Lcom/didi/car/model/CarPayResult;

    invoke-direct {v1}, Lcom/didi/car/model/CarPayResult;-><init>()V

    .line 2406
    .local v1, payResult:Lcom/didi/car/model/CarPayResult;
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v2, v2, Lcom/didi/car/model/FeeDetail;->payTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/car/model/CarPayResult;->payOrderSubTitle:Ljava/lang/String;

    .line 2407
    const v2, 0x7f0b02e7

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/car/model/CarPayResult;->payOrderTitle:Ljava/lang/String;

    .line 2409
    iget-object v2, p1, Lcom/didi/car/model/CarPayParams;->shareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    if-eqz v2, :cond_1

    .line 2410
    iget-object v2, p1, Lcom/didi/car/model/CarPayParams;->shareCouponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iput-object v2, v1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    .line 2411
    :cond_1
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iput-object v1, v2, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    .line 2413
    iget-object v2, p1, Lcom/didi/car/model/CarPayParams;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    invoke-direct {p0, v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onPaySuccessed(Lcom/didi/car/model/CarPayResult;Lcom/didi/car/model/CarWxAgentPayStatus;)V

    .line 2414
    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayFinishShareResult(Lcom/didi/car/model/CarPayResult;)V

    .line 2417
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/didi/common/service/PositionService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2418
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "oid"

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2419
    const-string v2, "business"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2420
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private showPayAgentReasonInfoDialog(Ljava/lang/String;Lcom/didi/car/model/CarWxAgentFailReason;)V
    .locals 2
    .parameter "title"
    .parameter "reason"

    .prologue
    .line 2792
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2800
    :goto_0
    return-void

    .line 2794
    :cond_0
    new-instance v0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentCheckDialogHelper:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    .line 2795
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentCheckDialogHelper:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    invoke-virtual {v0, p1, p2}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->setDialog(Ljava/lang/String;Lcom/didi/car/model/CarWxAgentFailReason;)V

    .line 2797
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentCheckDialogHelper:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mRefreshPayTypeDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->setListener(Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)V

    .line 2798
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentCheckDialogHelper:Lcom/didi/car/ui/component/CarWxAgentCheckDialog;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->show()V

    goto :goto_0
.end method

.method private showPayCloseDialog(II)V
    .locals 3
    .parameter "titleId"
    .parameter "contentId"

    .prologue
    .line 2924
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2925
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2926
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2927
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2928
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2929
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2930
    return-void
.end method

.method private showPayCloseDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 2854
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2862
    :goto_0
    return-void

    .line 2856
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2857
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2858
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2859
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2860
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayCloseDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2861
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showPayDetectionDialog()V
    .locals 3

    .prologue
    .line 2951
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2952
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b0452

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2954
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0450

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2955
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0456

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 2956
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIfPayDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2957
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2958
    return-void
.end method

.method private showPayErrorInfoDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 2780
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2788
    :goto_0
    return-void

    .line 2782
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2783
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0288

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2785
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2786
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mConfirmDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2787
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showPayErrorRetryDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 2803
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2812
    :goto_0
    return-void

    .line 2805
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2806
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2808
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const-string v1, "\u5fae\u4fe1\u652f\u4ed8"

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2809
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const-string v1, "\u5173\u95ed"

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 2810
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayRetryDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2811
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showPayFinishShareResult(Lcom/didi/car/model/CarPayResult;)V
    .locals 4
    .parameter "payResult"

    .prologue
    const/16 v3, 0x15

    const/4 v2, 0x1

    .line 3179
    iget-object v0, p1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    if-eqz v0, :cond_0

    .line 3180
    iget-object v0, p1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v0, v0, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    if-ne v0, v2, :cond_1

    .line 3182
    iget-object v0, p1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v0, v0, Lcom/didi/car/model/CarShareCouponInfo;->pinkPop:I

    if-ne v0, v2, :cond_0

    .line 3183
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v1, v1, Lcom/didi/car/model/CarShareCouponInfo;->pinkPopTime:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3194
    :cond_0
    :goto_0
    return-void

    .line 3186
    :cond_1
    iget-object v0, p1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v0, v0, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3188
    iget-object v0, p1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v0, v0, Lcom/didi/car/model/CarShareCouponInfo;->open:I

    if-ne v0, v2, :cond_0

    .line 3189
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v1, v1, Lcom/didi/car/model/CarShareCouponInfo;->popLayerTime:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private showPayStopDialog()V
    .locals 3

    .prologue
    .line 2892
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2902
    :goto_0
    return-void

    .line 2894
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2895
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0467

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0463

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2898
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b043d

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 2899
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b045e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2900
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayStopDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2901
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showPayStopNetErrorDialog()V
    .locals 4

    .prologue
    .line 2908
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2909
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0465

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0464

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->THREE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2913
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0462

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0438

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b043d

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->setThreeBtnText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayStopNetErrorDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2917
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2918
    return-void
.end method

.method private showPayStopSuccessDialog(I)V
    .locals 3
    .parameter "contentId"

    .prologue
    .line 2844
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2845
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2846
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2847
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2848
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayStopSuccessDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2849
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2850
    return-void
.end method

.method private showPayTypeNotSupported(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2833
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2841
    :goto_0
    return-void

    .line 2835
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2836
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2837
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2838
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2839
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mRefreshPayTypeDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2840
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showShareDialog()V
    .locals 4

    .prologue
    .line 2936
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 2937
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b044f

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 2939
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->THREE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2940
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0460

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0454

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0455

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->setThreeBtnText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mShareDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2944
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2945
    return-void
.end method

.method private showWXLowVersionDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2880
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 2881
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const v1, 0x7f0b0475

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2882
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2883
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2884
    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2885
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2886
    return-void
.end method

.method private showWXUnstalledDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2868
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 2869
    .local v0, dialogHelper:Lcom/didi/common/helper/DialogHelper;
    const v1, 0x7f0b0599

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2870
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 2871
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v2, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v1, v2}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 2872
    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 2873
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 2874
    return-void
.end method

.method private showWxAgentFaild(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 3695
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3704
    :goto_0
    return-void

    .line 3697
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 3698
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3699
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 3700
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b05a4

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 3701
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b043d

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 3702
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->wxAgentFaildListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3703
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showWxAgentOneButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "content"

    .prologue
    .line 3707
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3715
    :goto_0
    return-void

    .line 3709
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 3710
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 3712
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 3713
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->dialogHelperListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 3714
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private startCarTicketActivity(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 3542
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/didi/car/ui/activity/CarCouponsListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3543
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "web_view_titile"

    const v3, 0x7f0b040b

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3546
    .local v1, voucherUrlBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3550
    const-string v2, "token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "oid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v3}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dcq_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3554
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    if-nez v2, :cond_0

    .line 3555
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3559
    :goto_0
    const-string v2, "web_view_url"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3560
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pgxpay08_ck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[order_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v4}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 3563
    return-void

    .line 3557
    :cond_0
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    iget-object v2, v2, Lcom/didi/car/model/CarVoucherInfo;->ticketId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private stopCallDriverLocation()V
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->needStop:Z

    .line 784
    sget-object v0, Lcom/didi/frame/protobuffer/OrderStat;->OnTrip:Lcom/didi/frame/protobuffer/OrderStat;

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderStat:Lcom/didi/frame/protobuffer/OrderStat;

    .line 785
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterDriversLocationMessageListener()V

    .line 786
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mGetDriverLocationLooper:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 787
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeDriverArrivalMarker()V

    .line 788
    return-void
.end method

.method private switchPayTypeClick(IIZ)V
    .locals 6
    .parameter "type"
    .parameter "payMentMode"
    .parameter "refreshPayTypeView"

    .prologue
    .line 2713
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0b0308

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 2714
    const-string v1, ""

    .line 2715
    .local v1, ticketId:Ljava/lang/String;
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    if-eqz v0, :cond_0

    .line 2716
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    iget-object v1, v0, Lcom/didi/car/model/CarVoucherInfo;->ticketId:Ljava/lang/String;

    .line 2718
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v4, v2, Lcom/didi/car/model/FeeDetail;->carPaymentStr:Ljava/lang/String;

    new-instance v5, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;

    invoke-direct {v5, p0, p3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$36;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Z)V

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/didi/car/net/CarRequest;->updatePayInfo(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 2753
    return-void
.end method

.method private unregisterCommonMessagePushListener()V
    .locals 0

    .prologue
    .line 1401
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterCommonMesssageListener()V

    .line 1402
    return-void
.end method

.method private unregisterDriverPositionListener()V
    .locals 0

    .prologue
    .line 1387
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterDriverPositionListener()V

    .line 1388
    return-void
.end method

.method private unregisterRealtimeCountPushListener()V
    .locals 0

    .prologue
    .line 1391
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterOrderRealtimeCountListener()V

    .line 1392
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterOrderNewRealtimeCountListener()V

    .line 1393
    return-void
.end method

.method private unregisterTotalCountPushListener()V
    .locals 0

    .prologue
    .line 1396
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterOrderTotalCount()V

    .line 1397
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterOrderNewTotalCount()V

    .line 1398
    return-void
.end method

.method private updateCarCouponsInfo(ILandroid/content/Intent;)V
    .locals 2
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3566
    if-nez p2, :cond_1

    .line 3577
    :cond_0
    :goto_0
    return-void

    .line 3570
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v0, v1, Lcom/didi/car/model/FeeDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    .line 3572
    .local v0, voucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 3573
    const-string v1, "car_ticket"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .end local v0           #voucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    check-cast v0, Lcom/didi/car/model/CarVoucherInfo;

    .line 3574
    .restart local v0       #voucherInfo:Lcom/didi/car/model/CarVoucherInfo;
    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->updateCouponTicketId(Lcom/didi/car/model/CarVoucherInfo;)V

    goto :goto_0
.end method

.method private updateCouponTicketId(Lcom/didi/car/model/CarVoucherInfo;)V
    .locals 6
    .parameter "voucherInfo"

    .prologue
    .line 3580
    if-eqz p1, :cond_0

    .line 3581
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0308

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 3583
    const/4 v5, 0x0

    .line 3584
    .local v5, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarFeeDetailResult;>;"
    new-instance v5, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;

    .end local v5           #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarFeeDetailResult;>;"
    invoke-direct {v5, p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$53;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;Lcom/didi/car/model/CarVoucherInfo;)V

    .line 3610
    .restart local v5       #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarFeeDetailResult;>;"
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->getPayMentMode()I

    move-result v3

    .line 3611
    .local v3, payMentMode:I
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/car/model/CarVoucherInfo;->ticketId:Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v4, v4, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v4, v4, Lcom/didi/car/model/FeeDetail;->carPaymentStr:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/didi/car/net/CarRequest;->updatePayInfo(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 3613
    .end local v3           #payMentMode:I
    .end local v5           #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarFeeDetailResult;>;"
    :cond_0
    return-void
.end method

.method private wxAgentShouldToast()V
    .locals 1

    .prologue
    .line 2466
    const/4 v0, 0x0

    .line 2467
    .local v0, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarWxAgentLayer;>;"
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$33;

    .end local v0           #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarWxAgentLayer;>;"
    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$33;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 2483
    .restart local v0       #listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarWxAgentLayer;>;"
    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->getWxAgentShouldToast(Lcom/didi/common/net/ResponseListener;)V

    .line 2484
    return-void
.end method


# virtual methods
.method public doCostDetailGet()V
    .locals 3

    .prologue
    .line 1854
    const v2, 0x7f0b0563

    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 1855
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v2}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 1856
    .local v1, oid:Ljava/lang/String;
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$26;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$26;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    .line 1863
    .local v0, l:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/car/model/CarFeeDetailResult;>;"
    invoke-static {v1, v0}, Lcom/didi/car/net/CarRequest;->getFeeDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 1864
    return-void
.end method

.method protected doPositionSend()V
    .locals 0

    .prologue
    .line 1776
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->sendPassengerPositionMessage()V

    .line 1779
    return-void
.end method

.method protected doPositionSendForCheat()V
    .locals 2

    .prologue
    .line 1782
    const/4 v0, 0x0

    sget-object v1, Lcom/didi/frame/protobuffer/PassengerState;->PassengerStateNormal:Lcom/didi/frame/protobuffer/PassengerState;

    invoke-virtual {v1}, Lcom/didi/frame/protobuffer/PassengerState;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/didi/car/helper/CarPushHelper;->sendLocation(ZI)V

    .line 1783
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 3617
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 3618
    packed-switch p1, :pswitch_data_0

    .line 3635
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3620
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->updateCarCouponsInfo(ILandroid/content/Intent;)V

    .line 3621
    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxSdk:Z

    goto :goto_0

    .line 3624
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->redirectCancelResultFragment(ILandroid/content/Intent;)V

    goto :goto_0

    .line 3627
    :pswitch_3
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3628
    const-string v0, "ReimbursementSuccess"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3629
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v0, v0, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iput v2, v0, Lcom/didi/car/model/CarRefund;->refundStatus:I

    .line 3630
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->handleRefundView(I)V

    goto :goto_0

    .line 3618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onAttach(Landroid/app/Activity;)V

    .line 370
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 371
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    .line 372
    new-instance v1, Lcom/didi/common/helper/DialogHelper;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mDialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 373
    new-instance v1, Lcom/didi/car/helper/CarNotificationCountHelper;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/didi/car/helper/CarNotificationCountHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNotificationHelper:Lcom/didi/car/helper/CarNotificationCountHelper;

    .line 375
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/didi/common/util/Constant;->WEIXIN_CAR_APP_ID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 376
    .local v0, api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    sget-object v1, Lcom/didi/common/util/Constant;->WEIXIN_CAR_APP_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 378
    new-instance v1, Lcom/didi/car/helper/CarPayHelper;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/didi/car/helper/CarPayHelper;-><init>(Landroid/content/Context;Lcom/tencent/mm/sdk/openapi/IWXAPI;)V

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;

    .line 379
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;

    invoke-virtual {v1, p0}, Lcom/didi/car/helper/CarPayHelper;->setListener(Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;)V

    .line 381
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    .line 383
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    if-nez v1, :cond_0

    .line 384
    invoke-static {}, Lcom/didi/common/util/Utils;->appRestart()V

    .line 396
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getCity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCity:Ljava/lang/String;

    .line 389
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getStartLatDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mFlat:D

    .line 390
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getStartLngDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mFlng:D

    .line 391
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getEndLatDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mTlat:D

    .line 392
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getEndLngDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mTlng:D

    .line 393
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getTimeOffset()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPoor:J

    .line 395
    invoke-static {p0}, Lcom/didi/car/listener/CarFirstTipListenerHelper;->addCarFirstListener(Lcom/didi/car/listener/CarFirstTipListener;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 3412
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 3413
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCancelTripConfirmed()V
    .locals 2

    .prologue
    .line 1847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsTripCanceled:Z

    .line 1848
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->onCancelTripConfirmed()V

    .line 1849
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1850
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->cancelHalfHourAlarm()V

    .line 1851
    return-void
.end method

.method public onCancelTripConfirmed(Lcom/didi/car/model/CarCancelTrip;)V
    .locals 5
    .parameter "cancelTrip"

    .prologue
    .line 1816
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V

    .line 1818
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v0, v1, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    .line 1819
    .local v0, driver:Lcom/didi/car/model/CarDriver;
    iget-boolean v1, p1, Lcom/didi/car/model/CarCancelTrip;->timeout:Z

    iput-boolean v1, v0, Lcom/didi/car/model/CarDriver;->timeout:Z

    .line 1820
    iget v1, p1, Lcom/didi/car/model/CarCancelTrip;->protectStatus:I

    iput v1, v0, Lcom/didi/car/model/CarDriver;->protectStatus:I

    .line 1821
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v1, v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setDriver(Lcom/didi/car/model/CarDriver;)V

    .line 1823
    iget v1, p1, Lcom/didi/car/model/CarCancelTrip;->errno:I

    const/16 v2, 0x406

    if-ne v1, v2, :cond_1

    .line 1824
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 1825
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v1, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCancelTripView(Lcom/didi/car/model/CarCancelTrip;)V

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1827
    :cond_1
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1831
    iget v1, p1, Lcom/didi/car/model/CarCancelTrip;->cancelType:I

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/didi/car/model/CarCancelTrip;->payType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1832
    :cond_2
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 1833
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v1, p1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCancelTripView(Lcom/didi/car/model/CarCancelTrip;)V

    goto :goto_0

    .line 1835
    :cond_3
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$25;

    invoke-direct {v2, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$25;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected varargs onCommonMessagePushReceived(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter "recommendType"
    .parameter "recommendMessage"
    .parameter "args"

    .prologue
    const v1, 0x7f0b0561

    .line 1326
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsPayDetailShown:Z

    if-eqz v0, :cond_0

    .line 1384
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0, p2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setCommonPushTipMessage(Ljava/lang/String;)V

    .line 1331
    packed-switch p1, :pswitch_data_0

    .line 1383
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0, p2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showPhoneDrawerView(Ljava/lang/String;)V

    goto :goto_0

    .line 1336
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onDriverChanged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1342
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onDriverChangeFinished(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1348
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onDriverStartBilling(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1352
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onDriverPrepared(Ljava/lang/String;)V

    goto :goto_1

    .line 1362
    :pswitch_5
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onConsultCanceled()V

    goto :goto_1

    .line 1366
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onLateBillingStarted(Ljava/lang/String;)V

    goto :goto_1

    .line 1370
    :pswitch_7
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 1371
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCancelTripView(I)V

    goto :goto_1

    .line 1374
    :pswitch_8
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 1375
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1376
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCancelTripView(I)V

    goto :goto_1

    .line 1378
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCancelTripView(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected onConsultConfirmed(ILcom/didi/common/model/BaseObject;)V
    .locals 1
    .parameter "consultType"
    .parameter "t"

    .prologue
    .line 2200
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2201
    invoke-static {p2}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2215
    :goto_0
    return-void

    .line 2206
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsTimeConsultShown:Z

    .line 2210
    :cond_1
    if-nez p1, :cond_2

    .line 2211
    invoke-static {}, Lcom/didi/car/helper/CarResendHelper;->reSendOrderWithoutCreate()V

    .line 2214
    :cond_2
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->onConsultSubmitSucceed()V

    goto :goto_0
.end method

.method public onCoseDetailInstructionClicked()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1494
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1495
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->isFromOrderHistory()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v4}, Lcom/didi/car/model/CarOrder;->getHistoryDistrict()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    sget-object v6, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v5, v6, :cond_0

    :goto_0
    invoke-static {v4, v2}, Lcom/didi/car/net/CarRequest;->getPiceRuleHistoryUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1498
    iput-boolean v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 1499
    iput-boolean v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 1500
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1501
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1502
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1503
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    move v2, v3

    .line 1495
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v4, v5, :cond_2

    :goto_2
    invoke-static {v2}, Lcom/didi/car/net/CarRequest;->getPiceRuleUrl(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public onCostDetailCouponsClicked(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 3639
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startCarTicketActivity(Ljava/lang/String;)V

    .line 3640
    return-void
.end method

.method public onCostDetailGot(Lcom/didi/car/model/CarFeeDetailResult;)V
    .locals 5
    .parameter "feeDetailResult"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1867
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V

    .line 1868
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeDialog()V

    .line 1869
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1885
    :cond_0
    :goto_0
    return-void

    .line 1873
    :cond_1
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 1875
    iget v2, p1, Lcom/didi/car/model/CarFeeDetailResult;->payMark:I

    if-nez v2, :cond_3

    .line 1876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pgxpay_sw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1877
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v3, p1, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iput-object v3, v2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 1878
    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    iget-object v3, p1, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v4, p1, Lcom/didi/car/model/CarFeeDetailResult;->pricingModel:I

    if-ne v4, v1, :cond_2

    move v0, v1

    :cond_2
    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    invoke-virtual {v2, v3, v0, v4}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showdCostDetailView(Lcom/didi/car/model/FeeDetail;ZLcom/didi/car/model/CarVoucherInfo;)V

    .line 1881
    :cond_3
    iget v0, p1, Lcom/didi/car/model/CarFeeDetailResult;->payMark:I

    if-ne v0, v1, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    const v1, 0x7f0b0576

    iget-object v2, p1, Lcom/didi/car/model/CarFeeDetailResult;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v2, v2, Lcom/didi/car/model/FeeDetail;->payTitle:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showPaidCancelTripView(ILjava/lang/String;Ljava/lang/String;)V

    .line 1883
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->hideCancelTripView()V

    goto :goto_0
.end method

.method public onCostDetailPayClicked()V
    .locals 3

    .prologue
    .line 1479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wanliu_pay_confirm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1480
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1481
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v0, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 1483
    .local v0, feeDetail:Lcom/didi/car/model/FeeDetail;
    if-eqz v0, :cond_0

    .line 1484
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPayParamsGet()V

    .line 1490
    .end local v0           #feeDetail:Lcom/didi/car/model/FeeDetail;
    :cond_0
    :goto_0
    return-void

    .line 1487
    :cond_1
    const v1, 0x7f0b0416

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    goto :goto_0
.end method

.method public onCostDetailViewShown()V
    .locals 2

    .prologue
    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_pay_show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1475
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 400
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 402
    invoke-direct {p0, p3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->restoreOrderState(Landroid/os/Bundle;)V

    .line 404
    new-instance v0, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;-><init>(Landroid/content/Context;)V

    .line 405
    .local v0, controllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;
    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    .line 406
    const/4 v1, 0x0

    sput-boolean v1, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->needStop:Z

    .line 407
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initContentView()V

    .line 408
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->init()V

    .line 409
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 774
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 776
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->stopCallDriverLocation()V

    .line 778
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->clear()V

    .line 779
    return-void
.end method

.method protected onDriverPositionPushReceived(Lcom/didi/car/model/CarPosition;)V
    .locals 8
    .parameter "pos"

    .prologue
    .line 1142
    const-string v0, "onDriverPositionPushReceived"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1143
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsDriverPrepared:Z

    if-eqz v0, :cond_0

    .line 1177
    :goto_0
    return-void

    .line 1147
    :cond_0
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarPosition:Lcom/didi/car/model/CarPosition;

    .line 1148
    invoke-virtual {p1}, Lcom/didi/car/model/CarPosition;->getLatDouble()Ljava/lang/Double;

    move-result-object v6

    .line 1149
    .local v6, lat:Ljava/lang/Double;
    invoke-virtual {p1}, Lcom/didi/car/model/CarPosition;->getLngDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 1151
    .local v7, lng:Ljava/lang/Double;
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mMapZoom:Z

    if-nez v0, :cond_1

    .line 1152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mMapZoom:Z

    .line 1153
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->setWaitForArrivalMapViewZoom(DD)V

    .line 1156
    :cond_1
    iget-object v4, p1, Lcom/didi/car/model/CarPosition;->distance:Ljava/lang/String;

    .line 1157
    .local v4, distance:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1158
    .local v5, arrivedTime:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsTimeConsultShown:Z

    if-nez v0, :cond_2

    .line 1159
    iget v0, p1, Lcom/didi/car/model/CarPosition;->arrivedTime:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1161
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDriverPositionPushReceived lat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lng "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " distance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1163
    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1164
    invoke-static {v4}, Lcom/didi/common/util/Utils;->getFormattedDistance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1166
    :cond_3
    const-string v0, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "0.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1167
    :cond_4
    const-string v5, "1"

    .line 1169
    :cond_5
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_6

    .line 1176
    :goto_1
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->sendPsngerPosition()V

    goto :goto_0

    .line 1173
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/didi/frame/map/helper/WaitForArrivelMapHelper;->showDistanceMarker(DDLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onEvaluateEditShown()V
    .locals 0

    .prologue
    .line 1585
    return-void
.end method

.method public onEvaluateFinishShown()V
    .locals 0

    .prologue
    .line 1581
    return-void
.end method

.method public onEvaluateShown()V
    .locals 0

    .prologue
    .line 1577
    return-void
.end method

.method public onEvaluateStarClicked()V
    .locals 2

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->isFlagEvaluateStarClicked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setFlagEvaluateStarClicked(Z)V

    .line 1563
    new-instance v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$21;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$21;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->popdownBackEvent(Ljava/lang/Runnable;)V

    .line 1573
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
    .line 1589
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doEvaluateSubmit(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1590
    return-void
.end method

.method protected onEvaluateSubmited(Lcom/didi/common/model/BaseObject;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 2700
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2701
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2702
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->clearDepart()V

    .line 2703
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->onEvaluateSubmitSuccessed()V

    .line 2704
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setFlagEvaluateStarClicked(Z)V

    .line 2708
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 2709
    .local v0, oid:Ljava/lang/String;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/car/net/CarRequest;->updateLocationFlag(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    .line 2710
    return-void
.end method

.method public onEvaluatingViewClicked()V
    .locals 1

    .prologue
    .line 1538
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 1539
    return-void
.end method

.method public onFooterArrivalClicked()V
    .locals 0

    .prologue
    .line 1628
    return-void
.end method

.method public onFooterCloseClicked()V
    .locals 0

    .prologue
    .line 1632
    return-void
.end method

.method public onFooterFoundClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1597
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1598
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    const-string v2, ""

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1599
    iput-boolean v4, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 1600
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFootbarGameUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1601
    const/16 v2, 0x12d

    invoke-static {v4, v2}, Lcom/didi/game/common/utils/O2OUtils;->getBizParams(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 1602
    const-string v2, "footbar_game"

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 1603
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1604
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1605
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1606
    iput-boolean v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->inOtherActivity:Z

    .line 1607
    const-string v2, "carwait_game_clicked"

    const-string v3, "[pager_id=5][channel_id=301][show_id=2]"

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    return-void
.end method

.method public onFooterHomeClicked()V
    .locals 2

    .prologue
    .line 1695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_mytrip_gohome_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1696
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->stopCallDriverLocation()V

    .line 1697
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 1698
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 1699
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 1700
    return-void
.end method

.method public onFooterOpClicked()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1637
    const/4 v2, 0x0

    .line 1638
    .local v2, type:I
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v3, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    .line 1640
    .local v1, payResult:Lcom/didi/car/model/CarPayResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CarWaitForArrvial onFooterOpClicked payResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1641
    if-eqz v1, :cond_0

    .line 1642
    iget-object v0, v1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    .line 1643
    .local v0, couponInfo:Lcom/didi/car/model/CarShareCouponInfo;
    if-eqz v0, :cond_0

    .line 1644
    iget v2, v0, Lcom/didi/car/model/CarShareCouponInfo;->type:I

    .line 1647
    .end local v0           #couponInfo:Lcom/didi/car/model/CarShareCouponInfo;
    :cond_0
    if-nez v2, :cond_2

    .line 1648
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showMyTripView()V

    .line 1664
    :cond_1
    :goto_0
    return-void

    .line 1649
    :cond_2
    if-ne v5, v2, :cond_4

    .line 1650
    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v3, v3, Lcom/didi/car/model/CarShareCouponInfo;->pinkOpen:I

    if-ne v3, v5, :cond_3

    .line 1651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wanliu_share_love_resend"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1652
    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->gotoPinkWebView(Lcom/didi/car/model/CarPayResult;)V

    goto :goto_0

    .line 1654
    :cond_3
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showMyTripView()V

    goto :goto_0

    .line 1656
    :cond_4
    const/4 v3, 0x2

    if-ne v3, v2, :cond_1

    .line 1657
    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    iget v3, v3, Lcom/didi/car/model/CarShareCouponInfo;->displayCoupon:I

    if-ne v3, v5, :cond_5

    .line 1658
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    const-string v4, "pay_share_send_hongbao_ck"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/didi/car/helper/CarDynamicLogHelper;->createShareLog(Lcom/didi/frame/business/Business;Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v4, v4, Lcom/didi/car/model/CarOrder;->payResult:Lcom/didi/car/model/CarPayResult;

    iget-object v4, v4, Lcom/didi/car/model/CarPayResult;->couponInfo:Lcom/didi/car/model/CarShareCouponInfo;

    invoke-virtual {v3, v4}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showShareTicketView(Lcom/didi/car/model/CarShareCouponInfo;)V

    goto :goto_0

    .line 1661
    :cond_5
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showMyTripView()V

    goto :goto_0
.end method

.method public onFooterPayClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1613
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1614
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    const-string v2, ""

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1615
    iput-boolean v4, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 1616
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getFootbarFoodUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1617
    const/16 v2, 0x12d

    invoke-static {v4, v2}, Lcom/didi/game/common/utils/O2OUtils;->getBizParams(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 1618
    const-string v2, "footbar_food"

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 1619
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1620
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1621
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1622
    iput-boolean v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->inOtherActivity:Z

    .line 1623
    const-string v2, "carwait_food_clicked"

    const-string v3, "[pager_id=5][channel_id=301][show_id=1]"

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    return-void
.end method

.method public onFooterQuestionClicked()V
    .locals 2

    .prologue
    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_mytrip_question_click"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1706
    const v0, 0x7f0b0308

    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showLoadingDialog(I)V

    .line 1707
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v0, v0, Lcom/didi/car/model/CarOrder;->oid:Ljava/lang/String;

    new-instance v1, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$22;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment$22;-><init>(Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;)V

    invoke-static {v0, v1}, Lcom/didi/car/net/CarRequest;->getQuestionNaire(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 1734
    return-void
.end method

.method public onInfoImageClicked(Lcom/didi/car/model/CarSNSConfig;)V
    .locals 4
    .parameter "snsConfig"

    .prologue
    .line 1460
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/didi/car/model/CarSNSConfig;->redirect:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1461
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1462
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v2, p1, Lcom/didi/car/model/CarSNSConfig;->activityTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1463
    iget-object v2, p1, Lcom/didi/car/model/CarSNSConfig;->redirect:Ljava/lang/String;

    iput-object v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1464
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1465
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1466
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1468
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_0
    return-void
.end method

.method public onInfoTellClicked(Lcom/didi/car/model/CarSNSConfig;)V
    .locals 0
    .parameter "snsConfig"

    .prologue
    .line 1455
    return-void
.end method

.method public onItemTypeChecked(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 3737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3738
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 3739
    .local v1, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 3740
    iput-object p1, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 3741
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3742
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "data_model"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3743
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 3745
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_0
    return-void
.end method

.method protected onOrderTotalCountPushReceived(Lcom/didi/car/model/FeeDetail;Z)V
    .locals 8
    .parameter "totalCount"
    .parameter "isNewPrice"

    .prologue
    const/16 v7, 0x17

    const/16 v6, 0x16

    const/16 v5, 0x15

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1261
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->stopCallDriverLocation()V

    .line 1263
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->finishCancelTravelUI()V

    .line 1264
    iget-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->inOtherActivity:Z

    if-eqz v1, :cond_1

    .line 1265
    sget-object v1, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->webActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1266
    sget-object v1, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->webActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1267
    const/4 v1, 0x0

    sput-object v1, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->webActivity:Landroid/app/Activity;

    .line 1269
    :cond_0
    iput-boolean v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->inOtherActivity:Z

    .line 1271
    :cond_1
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    .line 1272
    .local v0, oid:Ljava/lang/String;
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/didi/car/model/FeeDetail;->oid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1316
    :cond_2
    :goto_0
    return-void

    .line 1276
    :cond_3
    sget-object v1, Lcom/didi/frame/protobuffer/OrderStat;->OnTrip:Lcom/didi/frame/protobuffer/OrderStat;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderStat:Lcom/didi/frame/protobuffer/OrderStat;

    .line 1277
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->sendPsngerPosition()V

    .line 1279
    iput-boolean v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagReqOrderStatusEnd:Z

    .line 1280
    iput-boolean v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->flagPayResultQuery:Z

    .line 1281
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/didi/common/receiver/NetReceiver;->setNetListener(Lcom/didi/common/receiver/NetReceiver$NetListener;)V

    .line 1282
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->commonAttri:Lcom/didi/common/model/CommonAttributes;

    const/4 v2, 0x5

    iput v2, v1, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 1285
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentDialogHelper:Lcom/didi/car/ui/component/CarWxAgentDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentDialogHelper:Lcom/didi/car/ui/component/CarWxAgentDialog;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CarWxAgentDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1286
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carWxAgentDialogHelper:Lcom/didi/car/ui/component/CarWxAgentDialog;

    invoke-virtual {v1}, Lcom/didi/car/ui/component/CarWxAgentDialog;->dismiss()V

    .line 1289
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pgxpay_sw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1290
    iget-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsPayDetailShown:Z

    if-nez v1, :cond_2

    .line 1291
    iput-boolean v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsPayDetailShown:Z

    .line 1292
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->onCancelTripConfirmed()V

    .line 1293
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iput-object p1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    .line 1294
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v1, v1, Lcom/didi/car/model/FeeDetail;->payType:I

    if-ne v5, v1, :cond_6

    .line 1295
    iput v5, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    .line 1296
    iput-boolean v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->userIsBusiness:Z

    .line 1297
    iget-object v1, p1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carRefund:Lcom/didi/car/model/CarRefund;

    .line 1312
    :cond_5
    :goto_1
    iget-object v1, p1, Lcom/didi/car/model/FeeDetail;->defaultVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    .line 1313
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    invoke-virtual {v1, p1, p2, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showdCostDetailView(Lcom/didi/car/model/FeeDetail;ZLcom/didi/car/model/CarVoucherInfo;)V

    .line 1314
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mNotificationHelper:Lcom/didi/car/helper/CarNotificationCountHelper;

    invoke-virtual {v1, p1}, Lcom/didi/car/helper/CarNotificationCountHelper;->costDetail(Lcom/didi/car/model/FeeDetail;)V

    goto :goto_0

    .line 1298
    :cond_6
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v1, v1, Lcom/didi/car/model/FeeDetail;->payType:I

    if-ne v7, v1, :cond_7

    .line 1299
    iput v7, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    .line 1300
    iput-boolean v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->userIsBusiness:Z

    .line 1301
    iget-object v1, p1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carRefund:Lcom/didi/car/model/CarRefund;

    goto :goto_1

    .line 1302
    :cond_7
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v1, v1, Lcom/didi/car/model/FeeDetail;->payType:I

    if-ne v6, v1, :cond_8

    .line 1303
    iput v6, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    .line 1304
    iput-boolean v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->userIsBusiness:Z

    .line 1305
    iget-object v1, p1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carRefund:Lcom/didi/car/model/CarRefund;

    goto :goto_1

    .line 1306
    :cond_8
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v2, v2, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v2, v2, Lcom/didi/car/model/FeeDetail;->payType:I

    if-ne v1, v2, :cond_5

    .line 1307
    const/16 v1, 0x18

    iput v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrderBusinessPayType:I

    .line 1308
    iput-boolean v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->userIsBusiness:Z

    .line 1309
    iget-object v1, p1, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iput-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carRefund:Lcom/didi/car/model/CarRefund;

    goto :goto_1
.end method

.method public onPaidApplyRefund()V
    .locals 5

    .prologue
    .line 3750
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 3751
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 3752
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 3753
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v3, v3, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v3, v3, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iget-object v3, v3, Lcom/didi/car/model/CarRefund;->refundTitle:Ljava/lang/String;

    iput-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 3754
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v3, v3, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget-object v3, v3, Lcom/didi/car/model/FeeDetail;->carRefund:Lcom/didi/car/model/CarRefund;

    iget-object v3, v3, Lcom/didi/car/model/CarRefund;->refundLink:Ljava/lang/String;

    iput-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 3755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3756
    .local v2, urlBuilder:Ljava/lang/StringBuilder;
    iget-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3757
    iget-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 3758
    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3762
    :goto_0
    const-string v3, "token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3763
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 3764
    const-class v3, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->redirectClassName:Ljava/lang/String;

    .line 3765
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/ui/webview/EntRemimbusementWebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3766
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3767
    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3768
    return-void

    .line 3760
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onPaidCostDetailClicked()V
    .locals 2

    .prologue
    .line 1507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_mytrip_get_invoice_detail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1509
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doPaidCostDetailGet()V

    .line 1510
    return-void
.end method

.method public onPaidInvoiceClicked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "wanliu_mytrip_get_invoice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1516
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->checkLogin()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1517
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 1518
    .local v2, token:Ljava/lang/String;
    new-instance v1, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v1}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1519
    .local v1, model:Lcom/didi/common/ui/webview/WebViewModel;
    iput-boolean v5, v1, Lcom/didi/common/ui/webview/WebViewModel;->isSupportCache:Z

    .line 1520
    iput-boolean v5, v1, Lcom/didi/common/ui/webview/WebViewModel;->isPostBaseParams:Z

    .line 1521
    sget-object v3, Lcom/didi/car/net/CarRequest;->CAR_INVOICE_URL:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1522
    const v3, 0x7f0b03aa

    invoke-virtual {p0, v3}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1524
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1525
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1526
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1528
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #model:Lcom/didi/common/ui/webview/WebViewModel;
    .end local v2           #token:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPaidPayClicked()V
    .locals 0

    .prologue
    .line 1532
    return-void
.end method

.method public onPay(Lcom/didi/pay/common/bean/CommonPayResp;)V
    .locals 2
    .parameter "response"

    .prologue
    const/4 v1, 0x0

    .line 2446
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxAgentPay:Z

    if-eqz v0, :cond_0

    .line 2447
    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxAgentPay:Z

    .line 2448
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->wxAgentShouldToast()V

    .line 2463
    :goto_0
    return-void

    .line 2452
    :cond_0
    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxSdk:Z

    .line 2453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taxi--onpay result code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/pay/common/bean/CommonPayResp;->getErrno()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/didi/pay/common/bean/CommonPayResp;->getErrmsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 2455
    invoke-virtual {p1}, Lcom/didi/pay/common/bean/CommonPayResp;->getErrno()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2457
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initPayResultCheckAlarm()V

    goto :goto_0

    .line 2455
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPayParamsGot(Lcom/didi/car/model/CarPayParams;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 2300
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->removeLoadingDialog()V

    .line 2301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "car--onPayParamsGot params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 2302
    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->getErrorCode()I

    move-result v0

    .line 2303
    .local v0, errorCode:I
    if-nez v0, :cond_1

    .line 2304
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    .line 2305
    iget v1, p1, Lcom/didi/car/model/CarPayParams;->payMentMode:I

    sparse-switch v1, :sswitch_data_0

    .line 2318
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    iget-object v1, v1, Lcom/didi/car/model/CarPayParams;->prepayId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2319
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPaidView(Lcom/didi/car/model/CarPayParams;)V

    .line 2387
    :goto_0
    return-void

    .line 2307
    :sswitch_0
    const-string v1, "-----------onPayParamsGot PAY_CHANNEL_ID_QQ"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2308
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    iget-object v1, v1, Lcom/didi/car/model/CarPayParams;->qqParams:Lcom/didi/common/model/PayParams$QQParams;

    invoke-static {v1}, Lcom/sdu/didi/psnger/qqapi/QQPayHelper;->sendQQPayRequest(Lcom/didi/common/model/PayParams$QQParams;)V

    goto :goto_0

    .line 2312
    :sswitch_1
    const-string v1, "-----------onPayParamsGot PAY_CHANNEL_ID_ZHIFUBAO"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2313
    invoke-virtual {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    iget-object v2, v2, Lcom/didi/car/model/CarPayParams;->prepayStr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sdu/didi/psnger/aliapi/ZhifubaoPayHelper;->sendZhifubaoPayRequest(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 2322
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;

    invoke-virtual {v1, p1}, Lcom/didi/car/helper/CarPayHelper;->checkWxSupport(Lcom/didi/car/model/CarPayParams;)Z

    goto :goto_0

    .line 2332
    :cond_1
    const/16 v1, 0x3fe

    if-ne v0, v1, :cond_3

    .line 2333
    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2334
    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showHasPaidDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2336
    :cond_2
    const v1, 0x7f0b0459

    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showHasPaidDialog(I)V

    goto :goto_0

    .line 2340
    :cond_3
    const/16 v1, 0x2a31

    if-ne v0, v1, :cond_4

    .line 2341
    const v1, 0x7f0b043c

    const v2, 0x7f0b043b

    invoke-direct {p0, v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayCloseDialog(II)V

    goto :goto_0

    .line 2343
    :cond_4
    const/16 v1, 0x2a32

    if-ne v0, v1, :cond_5

    .line 2344
    const v1, 0x7f0b045d

    const v2, 0x7f0b045c

    invoke-direct {p0, v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayCloseDialog(II)V

    goto :goto_0

    .line 2346
    :cond_5
    const/16 v1, 0x29aa

    if-ne v0, v1, :cond_7

    .line 2347
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    .line 2349
    iget-object v1, p1, Lcom/didi/car/model/CarPayParams;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/didi/car/model/CarPayParams;->carWxAgentPayStatus:Lcom/didi/car/model/CarWxAgentPayStatus;

    iget v1, v1, Lcom/didi/car/model/CarWxAgentPayStatus;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 2350
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPaidView(Lcom/didi/car/model/CarPayParams;)V

    goto :goto_0

    .line 2352
    :cond_6
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initPayResultCheckAlarm()V

    goto :goto_0

    .line 2355
    :cond_7
    const/16 v1, 0x29c0

    if-ne v0, v1, :cond_a

    .line 2356
    iput-object p1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    .line 2357
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    iget v1, v1, Lcom/didi/car/model/FeeDetail;->payType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    .line 2358
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    iget-object v1, v1, Lcom/didi/car/model/CarPayParams;->carWxAgentFailReason:Lcom/didi/car/model/CarWxAgentFailReason;

    if-eqz v1, :cond_8

    .line 2359
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    iget-object v1, v1, Lcom/didi/car/model/CarPayParams;->errmsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->carPayParams:Lcom/didi/car/model/CarPayParams;

    iget-object v2, v2, Lcom/didi/car/model/CarPayParams;->carWxAgentFailReason:Lcom/didi/car/model/CarWxAgentFailReason;

    invoke-direct {p0, v1, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayAgentReasonInfoDialog(Ljava/lang/String;Lcom/didi/car/model/CarWxAgentFailReason;)V

    goto/16 :goto_0

    .line 2362
    :cond_8
    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayTypeNotSupported(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2365
    :cond_9
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget-object v1, v1, Lcom/didi/car/model/CarOrder;->feeDetail:Lcom/didi/car/model/FeeDetail;

    const/4 v2, 0x0

    iput v2, v1, Lcom/didi/car/model/FeeDetail;->payType:I

    .line 2366
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    iget-object v2, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mCarVoucherInfo:Lcom/didi/car/model/CarVoucherInfo;

    invoke-virtual {v1, v2}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->showCostDetailView(Lcom/didi/car/model/CarVoucherInfo;)V

    goto/16 :goto_0

    .line 2374
    :cond_a
    const/16 v1, 0x297c

    if-ne v0, v1, :cond_b

    .line 2377
    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayTypeNotSupported(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2381
    :cond_b
    invoke-virtual {p1}, Lcom/didi/car/model/CarPayParams;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showPayCloseDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2305
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x89 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPayTypeItemClicked(II)V
    .locals 2
    .parameter "type"
    .parameter "payMentMode"

    .prologue
    const/4 v1, 0x0

    .line 1554
    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxAgentPay:Z

    .line 1555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->netListener:Lcom/didi/common/receiver/NetReceiver$NetListener;

    .line 1556
    invoke-direct {p0, p1, p2, v1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->switchPayTypeClick(IIZ)V

    .line 1557
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 751
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 752
    invoke-static {}, Lcom/didi/common/notification/CommonNotification;->cancelNotification()V

    .line 754
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->hasPayResult()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxSdk:Z

    if-eqz v0, :cond_0

    .line 755
    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxSdk:Z

    .line 757
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initPayResultCheckAlarm()V

    .line 760
    :cond_0
    iget-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsNeedCarResend:Z

    if-eqz v0, :cond_1

    .line 761
    iput-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsNeedCarResend:Z

    .line 762
    invoke-static {}, Lcom/didi/car/helper/CarResendHelper;->reSendOrderWithoutCreate()V

    .line 765
    :cond_1
    sget-boolean v0, Lcom/didi/car/helper/CarMoveAnimationHelper;->isAnimationOn:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->needStop:Z

    if-nez v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mGetDriverLocationLooper:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 768
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->locationGetListener:Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerDriversLocationMessageListener(Lcom/didi/car/helper/CarPushHelper$DriversLocationGetListener;)V

    .line 770
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 3522
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3523
    const-string v0, "order"

    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3524
    return-void
.end method

.method public onTimeConsultNoClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_confirm_wait_rejection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1441
    invoke-direct {p0, v2}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doConsultConfirm(I)V

    .line 1442
    return-void
.end method

.method public onTimeConsultViewShown()V
    .locals 2

    .prologue
    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_confirm_wait_meet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1435
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->initTimeConsultAlarm()V

    .line 1436
    return-void
.end method

.method public onTimeConsultYesClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wanliu_confirm_wait_accpet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1447
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doConsultConfirm(I)V

    .line 1448
    return-void
.end method

.method public onTitleLeftClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1408
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->stopCallDriverLocation()V

    .line 1409
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->popupBackEvent(Z)V

    .line 1410
    return-void
.end method

.method public onTitleRightClicked(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 1414
    iget-boolean v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsTripCanceled:Z

    if-eqz v1, :cond_1

    .line 1415
    const/4 v0, 0x0

    .line 1416
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    iget v1, v1, Lcom/didi/car/model/CarOrder;->complaintState:I

    if-nez v1, :cond_0

    .line 1417
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/didi/car/ui/activity/CarComplaintActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1421
    .restart local v0       #intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->startActivity(Landroid/content/Intent;)V

    .line 1428
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 1419
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/didi/car/ui/activity/CarComplaintedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 1424
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wanliu_cancel_trip_click"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusinessFlierStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pgxwfp02_ck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[order_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mOrder:Lcom/didi/car/model/CarOrder;

    invoke-virtual {v4}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

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

    .line 1426
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doTripCancel()V

    goto :goto_1
.end method

.method public onWXAppLowVersionInstalled()V
    .locals 1

    .prologue
    .line 2233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxAgentPay:Z

    .line 2234
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showWXLowVersionDialog()V

    .line 2235
    return-void
.end method

.method public onWXAppSupported(Lcom/didi/car/model/CarPayParams;)V
    .locals 0
    .parameter "payParams"

    .prologue
    .line 2242
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->doWXPayRequest(Lcom/didi/car/model/CarPayParams;)V

    .line 2243
    return-void
.end method

.method public onWXAppUnInstalled()V
    .locals 1

    .prologue
    .line 2224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mIsWxAgentPay:Z

    .line 2225
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showWXUnstalledDialog()V

    .line 2226
    return-void
.end method

.method protected onWxAgentMsgPushReceived(Lcom/didi/car/model/CarWxAgent;)V
    .locals 0
    .parameter "wxAgent"

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->showCarWxAgentTip(Lcom/didi/car/model/CarWxAgent;)V

    .line 1137
    return-void
.end method

.method public popdownBackEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "backEvent"

    .prologue
    .line 3402
    iget v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mBackBlock:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mBackBlock:I

    .line 3403
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->backEventStack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3405
    iget v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mBackBlock:I

    if-lez v0, :cond_0

    .line 3406
    iget-object v0, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v0}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setTitleLeft()V

    .line 3408
    :cond_0
    return-void
.end method

.method public popupBackEvent(Z)V
    .locals 5
    .parameter "remove"

    .prologue
    const/4 v4, 0x0

    .line 3378
    const/4 v1, 0x0

    .line 3380
    .local v1, backEvent:Ljava/lang/Runnable;
    :try_start_0
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->backEventStack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3385
    if-eqz p1, :cond_0

    .line 3386
    iget v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mBackBlock:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mBackBlock:I

    .line 3387
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->backEventStack:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 3390
    :cond_0
    if-eqz v1, :cond_1

    .line 3391
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3392
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v3, v4}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->setFlagEvaluateStarClicked(Z)V

    .line 3395
    :cond_1
    iget v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mBackBlock:I

    if-gtz v3, :cond_2

    .line 3396
    iput v4, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mBackBlock:I

    .line 3397
    iget-object v3, p0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->mControllerView:Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;

    invoke-virtual {v3}, Lcom/didi/car/ui/component/CarWaitForArrivalControllerView;->hideTitleLeft()V

    .line 3399
    :cond_2
    :goto_0
    return-void

    .line 3381
    :catch_0
    move-exception v2

    .line 3382
    .local v2, e:Ljava/util/NoSuchElementException;
    goto :goto_0
.end method

.method public showCarFirstTip()V
    .locals 0

    .prologue
    .line 3655
    invoke-direct {p0}, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;->checkIfShowFirstTip()V

    .line 3656
    return-void
.end method
