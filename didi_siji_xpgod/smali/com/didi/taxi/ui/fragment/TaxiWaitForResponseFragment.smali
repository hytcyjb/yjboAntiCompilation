.class public Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "TaxiWaitForResponseFragment.java"


# static fields
.field private static final DRIVER_COUNT:I = 0x5

.field private static LOADING_TIME:I = 0x0

.field private static MSG_TYPE_CANCEL:I = 0x0

.field private static MSG_TYPE_LOADING:I = 0x0

.field private static MSG_TYPE_PK:I = 0x0

.field public static final ORDER_ANSWERED:I = 0x1

.field public static final ORDER_WAIT_ANSWER:I

.field private static driverNumPK:I

.field private static pkWait:I


# instance fields
.field cancelClickListener:Landroid/view/View$OnClickListener;

.field private carPoolCancelListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private carPoolListener:Lcom/didi/frame/carpool/CarPoolListener;

.field private carPoolTriggerInterceptedListener:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

.field private dialog:Lcom/didi/common/helper/DialogHelper;

.field private dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private extrLog:Ljava/lang/String;

.field friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

.field private guide:Lcom/didi/car/model/CarGuideFlag;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private hasChangeOrderLifeCycle:Z

.field private hasMatchTripFriend:Z

.field private imgdialog:Lcom/didi/frame/dialog/ImageDialog;

.field isCarPoolFirstSucceed:Z

.field private isFirstGetOrderStatus:Z

.field private isGetWait:Z

.field private isOpenCar:Z

.field private isPlayed:Z

.field private isShowSubmitBtn:Z

.field private loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

.field private mBiLogOid:Ljava/lang/String;

.field private mDrawerViewCoupon:Lcom/didi/common/ui/component/DrawerView;

.field private mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

.field private mDrivers:I

.field private mIsFromRecovery:Z

.field private mLastUpdateTripType:I

.field private mOnConfirmListener:Landroid/view/View$OnClickListener;

.field private mView:Landroid/view/View;

.field private mapRouteListener:Lcom/didi/map/MapRouteListener;

.field private msgType:I

.field private msgValue:Ljava/lang/String;

.field private myTimer:Ljava/util/Timer;

.field private oid:Ljava/lang/String;

.field private operatorListener:Landroid/view/View$OnClickListener;

.field private priceListener:Lcom/didi/frame/price/PriceListener;

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

.field private remarkListener:Lcom/didi/frame/remark/RemarkListener;

.field private remindListener:Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;

.field private taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

.field private waitListener:Lcom/didi/frame/wait/WaitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0x12c

    sput v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->LOADING_TIME:I

    .line 150
    const/16 v0, 0x64

    sput v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->MSG_TYPE_PK:I

    .line 151
    const/16 v0, 0x65

    sput v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->MSG_TYPE_LOADING:I

    .line 152
    const/16 v0, 0x66

    sput v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->MSG_TYPE_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 122
    iput v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrivers:I

    .line 133
    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mIsFromRecovery:Z

    .line 136
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isFirstGetOrderStatus:Z

    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;

    .line 143
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isShowSubmitBtn:Z

    .line 148
    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isGetWait:Z

    .line 149
    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isPlayed:Z

    .line 153
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    .line 155
    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isOpenCar:Z

    .line 167
    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->hasMatchTripFriend:Z

    .line 169
    iput-boolean v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->hasChangeOrderLifeCycle:Z

    .line 171
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isCarPoolFirstSucceed:Z

    .line 175
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$1;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->handler:Landroid/os/Handler;

    .line 197
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$2;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 212
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$3;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->remarkListener:Lcom/didi/frame/remark/RemarkListener;

    .line 220
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$4;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->priceListener:Lcom/didi/frame/price/PriceListener;

    .line 227
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$5;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->waitListener:Lcom/didi/frame/wait/WaitListener;

    .line 235
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$6;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->carPoolListener:Lcom/didi/frame/carpool/CarPoolListener;

    .line 258
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$7;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mOnConfirmListener:Landroid/view/View$OnClickListener;

    .line 378
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$9;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->remindListener:Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;

    .line 818
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$16;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$16;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->cancelClickListener:Landroid/view/View$OnClickListener;

    .line 892
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$17;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$17;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 927
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$18;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$18;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->carPoolCancelListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 1348
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$23;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$23;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mapRouteListener:Lcom/didi/map/MapRouteListener;

    .line 1381
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$24;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    .line 1514
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$26;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$26;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->carPoolTriggerInterceptedListener:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->MSG_TYPE_PK:I

    return v0
.end method

.method static synthetic access$100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/frame/remark/RemarkListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->remarkListener:Lcom/didi/frame/remark/RemarkListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->onOrderModified()V

    return-void
.end method

.method static synthetic access$1200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/taxi/model/TaxiOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiOrder;)Lcom/didi/taxi/model/TaxiOrder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->doChangeTip(I)V

    return-void
.end method

.method static synthetic access$1402(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isShowSubmitBtn:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/frame/dialog/ImageDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->imgdialog:Lcom/didi/frame/dialog/ImageDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->oid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->oid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->msgType:I

    return v0
.end method

.method static synthetic access$1802(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->msgType:I

    return p1
.end method

.method static synthetic access$1900(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->msgValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->msgValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeBar(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->hasMatchTripFriend:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Ljava/util/ArrayList;Lcom/didi/taxi/model/TaxiServiceMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showReceived(Ljava/util/ArrayList;Lcom/didi/taxi/model/TaxiServiceMessage;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiServiceMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setUpBar(Lcom/didi/taxi/model/TaxiServiceMessage;)V

    return-void
.end method

.method static synthetic access$2302(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isOpenCar:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/car/model/CarGuideFlag;)Lcom/didi/car/model/CarGuideFlag;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->guide:Lcom/didi/car/model/CarGuideFlag;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiServiceMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->onConfirmTimely(Lcom/didi/taxi/model/TaxiServiceMessage;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeCouponBar(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewCoupon:Lcom/didi/common/ui/component/DrawerView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showCancelDialog()V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->driverNumPK:I

    return v0
.end method

.method static synthetic access$3000(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->doCancel(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->recallOrder(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;ILcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->handleRecallError(ILcom/didi/common/model/BaseObject;)V

    return-void
.end method

.method static synthetic access$3302(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mLastUpdateTripType:I

    return p1
.end method

.method static synthetic access$3402(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->hasChangeOrderLifeCycle:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setCarPoolTypeState()V

    return-void
.end method

.method static synthetic access$3600(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showCancelResonWebView()V

    return-void
.end method

.method static synthetic access$3800(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->redictTaxiRealtimeFragment()V

    return-void
.end method

.method static synthetic access$3900(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->switchToTextCall(I)V

    return-void
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->pkWait:I

    return v0
.end method

.method static synthetic access$4000(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/common/model/BaseObject;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showInfoDialog(Lcom/didi/common/model/BaseObject;I)V

    return-void
.end method

.method static synthetic access$410()I
    .locals 2

    .prologue
    .line 119
    sget v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->pkWait:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->pkWait:I

    return v0
.end method

.method static synthetic access$4100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4200()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->LOADING_TIME:I

    return v0
.end method

.method static synthetic access$4210()I
    .locals 2

    .prologue
    .line 119
    sget v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->LOADING_TIME:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->LOADING_TIME:I

    return v0
.end method

.method static synthetic access$4300(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->addRouteLine(Lcom/didi/taxi/model/TaxiOrderState;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->onGetOrderStatus(Lcom/didi/taxi/model/TaxiOrderState;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->redictFragment()V

    return-void
.end method

.method static synthetic access$4802(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrivers:I

    return p1
.end method

.method static synthetic access$4900(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeImgDialog()V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->MSG_TYPE_LOADING:I

    return v0
.end method

.method static synthetic access$5000(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showLoadingDialog()V

    return-void
.end method

.method static synthetic access$5100(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showRecommandDialog()V

    return-void
.end method

.method static synthetic access$5200(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->MSG_TYPE_CANCEL:I

    return v0
.end method

.method static synthetic access$700(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/frame/price/PriceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->priceListener:Lcom/didi/frame/price/PriceListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)Lcom/didi/frame/wait/WaitListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->waitListener:Lcom/didi/frame/wait/WaitListener;

    return-object v0
.end method

.method private addRouteLine(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 2
    .parameter "taxiOrderState"

    .prologue
    .line 1345
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mapRouteListener:Lcom/didi/map/MapRouteListener;

    invoke-static {v0, p1, v1}, Lcom/didi/map/MapController;->addRouteLines(Landroid/content/Context;Lcom/didi/taxi/model/TaxiOrderState;Lcom/didi/map/IMapRouteListener;)V

    .line 1346
    return-void
.end method

.method private buildRelationIfNeed(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1146
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->driver:Lcom/didi/taxi/model/TaxiDriver;

    .line 1147
    .local v0, d:Lcom/didi/taxi/model/TaxiDriver;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/didi/taxi/model/TaxiDriver;->pushRelationFlag:Z

    if-eqz v1, :cond_0

    .line 1148
    invoke-static {}, Lcom/didi/common/helper/PLocationHelper;->obtain()Lcom/didi/common/helper/PLocationHelper;

    move-result-object v1

    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/taxi/business/TaxiOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/didi/common/helper/PLocationHelper;->buildRelationIfNeed(Ljava/lang/String;Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 1150
    :cond_0
    return-void
.end method

.method private changeOrderLiftCycleByMatchedState(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 1269
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 1270
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->hasChangeOrderLifeCycle:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->hasMatchTripFriend:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTrip_type()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTrip_type()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1273
    :cond_0
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->restartOrderAlarmAndTimer()V

    .line 1274
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->hasChangeOrderLifeCycle:Z

    .line 1276
    :cond_1
    return-void
.end method

.method private changeRemark(Lcom/didi/taxi/model/TaxiServiceMessage;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 320
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, remark:Ljava/lang/String;
    const v2, 0x7f0b0580

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, pushRemark:Ljava/lang/String;
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 323
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 324
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->setRemark(Ljava/lang/String;)V

    .line 337
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->initRemark()V

    .line 338
    return-void

    .line 325
    :cond_1
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 326
    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setRemark(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    .line 330
    const-string v2, "ptxwfrremind01_err"

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->setRemark(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_4
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->setRemark(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkIsResend()V
    .locals 2

    .prologue
    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiResend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->isReadyResend()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiWait redictFragment checkIsResend isReadyResend:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->isReadyResend()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1332
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->isReadyResend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->redictFragment()V

    .line 1341
    :goto_0
    return-void

    .line 1336
    :cond_0
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 1337
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->start()V

    .line 1338
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showWaitMapView()V

    goto :goto_0
.end method

.method private checkRecovery()V
    .locals 1

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isFromOrderRecovery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mIsFromRecovery:Z

    .line 507
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mIsFromRecovery:Z

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->recoveryPushDriverNums()V

    .line 510
    :cond_0
    return-void
.end method

.method private checkTimeOut()V
    .locals 4

    .prologue
    .line 498
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[order_id_t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType()I

    move-result v0

    if-nez v0, :cond_0

    .line 501
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    const v1, 0x7f0b0427

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 503
    :cond_0
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 800
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->stopCarAnimationDrivers()V

    .line 801
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeBar(Z)V

    .line 802
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 803
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 804
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->handler:Landroid/os/Handler;

    sget v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->MSG_TYPE_PK:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->handler:Landroid/os/Handler;

    sget v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->MSG_TYPE_LOADING:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 806
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->stopAllLooper()V

    .line 807
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeCancelDialog()V

    .line 808
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeImgDialog()V

    .line 809
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isGetWait:Z

    .line 810
    iput-boolean v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isPlayed:Z

    .line 811
    const/16 v0, 0x12c

    sput v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->LOADING_TIME:I

    .line 812
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 815
    :cond_0
    return-void
.end method

.method private closeBar(Z)V
    .locals 2
    .parameter "clean"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->close()V

    .line 625
    :cond_0
    if-eqz p1, :cond_1

    .line 626
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/taxi/model/TaxiOrder;->setTaxiMsg(Lcom/didi/taxi/model/TaxiServiceMessage;)V

    .line 629
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeCouponBar(Z)V

    .line 631
    return-void
.end method

.method private closeCancelDialog()V
    .locals 2

    .prologue
    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 889
    :cond_0
    return-void
.end method

.method private closeCouponBar(Z)V
    .locals 2
    .parameter "clean"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewCoupon:Lcom/didi/common/ui/component/DrawerView;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewCoupon:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->close()V

    .line 655
    :cond_0
    if-eqz p1, :cond_1

    .line 656
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewCoupon:Lcom/didi/common/ui/component/DrawerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 659
    :cond_1
    return-void
.end method

.method private closeImgDialog()V
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->imgdialog:Lcom/didi/frame/dialog/ImageDialog;

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->imgdialog:Lcom/didi/frame/dialog/ImageDialog;

    invoke-virtual {v0}, Lcom/didi/frame/dialog/ImageDialog;->dismiss()V

    .line 1511
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->imgdialog:Lcom/didi/frame/dialog/ImageDialog;

    .line 1512
    return-void
.end method

.method private doCancel(I)V
    .locals 4
    .parameter "from"

    .prologue
    .line 1032
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b021f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 1033
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;

    invoke-direct {v0, p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$20;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;I)V

    invoke-static {v0}, Lcom/didi/frame/business/terminator/OrderTerminator;->terminateAll(Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V

    .line 1073
    return-void
.end method

.method private doChangeTip(I)V
    .locals 2
    .parameter "from"

    .prologue
    .line 270
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType()I

    move-result v0

    iget v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mLastUpdateTripType:I

    if-eq v0, v1, :cond_0

    .line 271
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->recallOrder(I)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->doChangeTip(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doChangeTip(Ljava/lang/String;)V
    .locals 3
    .parameter "remark"

    .prologue
    .line 279
    const v1, 0x7f0b0529

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 280
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 281
    .local v0, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 282
    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$8;

    invoke-direct {v1, p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$8;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/taxi/model/TaxiOrder;)V

    invoke-static {p1, v1}, Lcom/didi/taxi/net/TaxiRequest;->changeTip(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 297
    return-void
.end method

.method private doOrderStatusGot(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 11
    .parameter "state"

    .prologue
    const v10, 0x7f05001c

    const v9, 0x7f050006

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->isTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1174
    iget v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->driverNumPK:I

    sput v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->driverNumPK:I

    .line 1175
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->gsflow_tip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->setTwo100AddPrice(Ljava/lang/String;)V

    .line 1178
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showOrUpdateFriendInfo(Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 1179
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->changeOrderLiftCycleByMatchedState(Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 1181
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isGetWait:Z

    if-nez v0, :cond_0

    .line 1182
    iget v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->pkWait:I

    sput v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->pkWait:I

    .line 1183
    iput-boolean v6, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isGetWait:Z

    .line 1186
    :cond_0
    sget v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->driverNumPK:I

    if-le v0, v6, :cond_1

    .line 1187
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isPlayed:Z

    if-nez v0, :cond_1

    .line 1188
    invoke-static {}, Lcom/didi/common/util/Utils;->isInChristmasDay()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1189
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 1193
    :goto_0
    iput-boolean v6, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isPlayed:Z

    .line 1194
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1195
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    .line 1196
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->myTask()Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1200
    :cond_1
    iget-boolean v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->isTimeout:Z

    if-eqz v0, :cond_4

    .line 1201
    invoke-direct {p0, v6}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeBar(Z)V

    .line 1202
    invoke-static {v8}, Lcom/didi/common/receiver/NetReceiver;->setHandler(Landroid/os/Handler;)V

    .line 1203
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isPaused()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1204
    const-string v0, "TaxiWait redictFragment doOrderStatusGot timeout"

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 1205
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->redictFragment()V

    .line 1266
    :cond_2
    :goto_1
    return-void

    .line 1191
    :cond_3
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    goto :goto_0

    .line 1209
    :cond_4
    invoke-static {p1}, Lcom/didi/common/model/BaseObject;->isAvailable(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1211
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    iget v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->driverCount:I

    invoke-virtual {v0, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->setPushCarNum(I)V

    .line 1212
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->trip_bubble_info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->setPushContent(Ljava/lang/String;)V

    .line 1214
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isPaused()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1215
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->getPushCarNum()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->updateDrivers(I)V

    .line 1216
    :cond_5
    iget v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->status:I

    if-lez v0, :cond_2

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1217
    invoke-direct {p0, v6}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeBar(Z)V

    .line 1218
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1219
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->handler:Landroid/os/Handler;

    sget v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->MSG_TYPE_PK:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1220
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->handler:Landroid/os/Handler;

    sget v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->MSG_TYPE_LOADING:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1221
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    if-eqz v0, :cond_6

    .line 1222
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1225
    :cond_6
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isPlayed:Z

    if-nez v0, :cond_7

    .line 1226
    invoke-static {}, Lcom/didi/common/util/Utils;->isInChristmasDay()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1227
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 1231
    :goto_2
    iput-boolean v6, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isPlayed:Z

    .line 1233
    :cond_7
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v7

    check-cast v7, Lcom/didi/taxi/model/TaxiOrder;

    .line 1234
    .local v7, taxi:Lcom/didi/taxi/model/TaxiOrder;
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->driver:Lcom/didi/taxi/model/TaxiDriver;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiPosition;->lat:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/taxi/model/TaxiDriver;->lat:Ljava/lang/String;

    .line 1235
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->driver:Lcom/didi/taxi/model/TaxiDriver;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiPosition;->lng:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/taxi/model/TaxiDriver;->lng:Ljava/lang/String;

    .line 1236
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->driver:Lcom/didi/taxi/model/TaxiDriver;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    iget v1, v1, Lcom/didi/taxi/model/TaxiPosition;->arrivedTime:I

    iput v1, v0, Lcom/didi/taxi/model/TaxiDriver;->arrivedTime:I

    .line 1237
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->driver:Lcom/didi/taxi/model/TaxiDriver;

    iget-object v1, p1, Lcom/didi/taxi/model/TaxiOrderState;->position:Lcom/didi/taxi/model/TaxiPosition;

    iget-object v1, v1, Lcom/didi/taxi/model/TaxiPosition;->distance:Ljava/lang/String;

    iput-object v1, v0, Lcom/didi/taxi/model/TaxiDriver;->distance:Ljava/lang/String;

    .line 1238
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->driver:Lcom/didi/taxi/model/TaxiDriver;

    invoke-virtual {v7, v0}, Lcom/didi/taxi/model/TaxiOrder;->setTaxiDriver(Lcom/didi/taxi/model/TaxiDriver;)V

    .line 1239
    invoke-virtual {v7}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v0

    iput v6, v0, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 1240
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->coupon:Lcom/didi/taxi/model/TaxiCoupon;

    invoke-virtual {v7, v0}, Lcom/didi/taxi/model/TaxiOrder;->setCoupon(Lcom/didi/taxi/model/TaxiCoupon;)V

    .line 1241
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->creditMsg:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/didi/taxi/model/TaxiOrder;->setCreditTxt(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->tipFee:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/didi/taxi/model/TaxiOrder;->setTipFee(Ljava/lang/String;)V

    .line 1243
    iget v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->foundVersion:I

    iput v0, v7, Lcom/didi/taxi/model/TaxiOrder;->foundVersion:I

    .line 1244
    iget v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->trip_type:I

    iput v0, v7, Lcom/didi/taxi/model/TaxiOrder;->trip_type:I

    .line 1245
    iget v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->imSwitch:I

    invoke-virtual {v7, v0}, Lcom/didi/taxi/model/TaxiOrder;->setImSwitch(I)V

    .line 1246
    invoke-static {}, Lcom/didi/common/util/LogUtil;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1247
    sget-object v0, Lcom/didi/common/util/Constant;->FOUND_TEST_URL:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1248
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->foundUrl:Ljava/lang/String;

    iput-object v0, v7, Lcom/didi/taxi/model/TaxiOrder;->foundUrl:Ljava/lang/String;

    .line 1256
    :goto_3
    invoke-static {v8}, Lcom/didi/common/receiver/NetReceiver;->setHandler(Landroid/os/Handler;)V

    .line 1257
    invoke-static {}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelRequest4Trace()V

    .line 1258
    const/4 v0, 0x0

    sput v0, Lcom/didi/common/util/Constant;->REQUEST_CNT:I

    .line 1259
    invoke-virtual {v7}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/alarm/CommonAlarmManager;->setRequest4Trace(Ljava/lang/String;)V

    .line 1260
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->redictArrivelFragment()V

    .line 1262
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->getOid()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lcom/didi/taxi/model/TaxiOrderState;->status:I

    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->getmSentCnt()I

    move-result v3

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v8

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lcom/didi/taxi/net/TaxiRequest;->getOrderStatus(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    goto/16 :goto_1

    .line 1229
    .end local v7           #taxi:Lcom/didi/taxi/model/TaxiOrder;
    :cond_8
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    goto/16 :goto_2

    .line 1250
    .restart local v7       #taxi:Lcom/didi/taxi/model/TaxiOrder;
    :cond_9
    sget-object v0, Lcom/didi/common/util/Constant;->FOUND_TEST_URL:Ljava/lang/String;

    iput-object v0, v7, Lcom/didi/taxi/model/TaxiOrder;->foundUrl:Ljava/lang/String;

    goto :goto_3

    .line 1253
    :cond_a
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->foundUrl:Ljava/lang/String;

    iput-object v0, v7, Lcom/didi/taxi/model/TaxiOrder;->foundUrl:Ljava/lang/String;

    goto :goto_3
.end method

.method private handleRecallError(ILcom/didi/common/model/BaseObject;)V
    .locals 2
    .parameter "from"
    .parameter "t"

    .prologue
    const/4 v1, 0x2

    .line 1016
    invoke-virtual {p2}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_1

    .line 1017
    :cond_0
    invoke-virtual {p2}, Lcom/didi/common/model/BaseObject;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(Ljava/lang/String;)V

    .line 1019
    :cond_1
    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Lcom/didi/common/model/BaseObject;->getErrorCode()I

    move-result v0

    const v1, 0xf55dc

    if-ne v0, v1, :cond_3

    .line 1020
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 1021
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDown()V

    .line 1022
    :cond_2
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mLastUpdateTripType:I

    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolHelper;->setCurrentCarPoolType(I)V

    .line 1024
    :cond_3
    return-void
.end method

.method private initDialog()Z
    .locals 2

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 872
    const/4 v0, 0x0

    .line 879
    :goto_0
    return v0

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 876
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 878
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 879
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mView:Landroid/view/View;

    const v1, 0x7f0805ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    .line 495
    return-void
.end method

.method private isFromOrderRecovery()Z
    .locals 3

    .prologue
    .line 520
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->getArguments()Landroid/os/Bundle;

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

.method private myTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 1153
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$22;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$22;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    return-object v0
.end method

.method private onConfirmTimely(Lcom/didi/taxi/model/TaxiServiceMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isShowSubmitBtn:Z

    .line 301
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v0

    if-nez v0, :cond_1

    .line 302
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setTip(I)V

    .line 303
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->initPrice()V

    .line 316
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->doChangeTip(I)V

    .line 317
    return-void

    .line 304
    :cond_1
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 305
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->setWaitTime(I)V

    .line 306
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->initTime()V

    .line 307
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->changeRemark(Lcom/didi/taxi/model/TaxiServiceMessage;)V

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 310
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->changeRemark(Lcom/didi/taxi/model/TaxiServiceMessage;)V

    goto :goto_0

    .line 311
    :cond_3
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 312
    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->setTripType(I)V

    .line 313
    invoke-static {v2}, Lcom/didi/frame/carpool/CarPoolHelper;->setCurrentCarPoolType(I)V

    .line 314
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->setSent()V

    goto :goto_0
.end method

.method private onGetOrderStatus(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1139
    iget-boolean v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->isPush:Z

    if-eqz v0, :cond_0

    .line 1140
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->buildRelationIfNeed(Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 1142
    :cond_0
    invoke-direct {p0, p1}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->doOrderStatusGot(Lcom/didi/taxi/model/TaxiOrderState;)V

    .line 1143
    return-void
.end method

.method private onOrderModified()V
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isShowSubmitBtn:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmUpDelayed()V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDownDelayed()V

    goto :goto_0
.end method

.method private openBar(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 604
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$14;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$14;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    invoke-static {v0, p1, p2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 614
    return-void
.end method

.method private openCouponBar()V
    .locals 3

    .prologue
    .line 634
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$15;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$15;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 644
    return-void
.end method

.method private recallOrder(I)V
    .locals 5
    .parameter "from"

    .prologue
    .line 963
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 964
    .local v0, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b04bd

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 965
    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;

    invoke-direct {v1, p0, p1, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$19;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;ILcom/didi/taxi/model/TaxiOrder;)V

    invoke-static {v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->resendOrder(Lcom/didi/taxi/model/TaxiOrder;Lcom/didi/common/net/ResponseListener;)V

    .line 1012
    return-void
.end method

.method private recoveryPushDriverNums()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getDriverNum()I

    move-result v0

    if-lez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getDriverNum()I

    move-result v0

    iput v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrivers:I

    .line 515
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    iget v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrivers:I

    invoke-virtual {v0, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->setPushCarNum(I)V

    .line 517
    :cond_0
    return-void
.end method

.method private redictArrivelFragment()V
    .locals 2

    .prologue
    .line 769
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 770
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->clear()V

    .line 771
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToArrivelMapView()V

    .line 772
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 773
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 774
    const-string v0, "redictArrival"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 775
    invoke-static {}, Lcom/didi/common/notification/CommonNotification;->notification()V

    .line 776
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showTaxiWaitForArrivalFragment()V

    .line 777
    return-void
.end method

.method private redictFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 781
    invoke-direct {p0, v2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeBar(Z)V

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiWait redictFragment biz:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 783
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_1

    .line 784
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 785
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->clear()V

    .line 786
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToResendMapView()V

    .line 787
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mIsFromRecovery:Z

    if-eqz v0, :cond_0

    .line 788
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showTaxiResendFragment()V

    .line 796
    :goto_0
    return-void

    .line 790
    :cond_0
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward(Lcom/didi/frame/business/Business;)V

    goto :goto_0

    .line 794
    :cond_1
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/taxi/business/TaxiOrderLooper;->setResend(Z)V

    goto :goto_0
.end method

.method private redictTaxiRealtimeFragment()V
    .locals 1

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->clear()V

    .line 762
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 763
    const-string v0, "LoopStop4"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 764
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 765
    return-void
.end method

.method private setBarListener()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

    const v1, 0x7f08054b

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$11;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$11;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

    const v1, 0x7f080611

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$12;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$12;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$13;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->operatorListener:Landroid/view/View$OnClickListener;

    .line 593
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->operatorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->addListener(Landroid/view/View$OnClickListener;)V

    .line 594
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->operatorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->addListener(Landroid/view/View$OnClickListener;)V

    .line 595
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->operatorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->addListener(Landroid/view/View$OnClickListener;)V

    .line 596
    return-void
.end method

.method private setCarPoolStateByMatched()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1312
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mLastUpdateTripType:I

    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolHelper;->setCurrentCarPoolType(I)V

    .line 1315
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1316
    invoke-static {v2, v1, v1}, Lcom/didi/frame/carpool/CarPoolHelper;->lockCarPoolType(ZZZ)V

    .line 1322
    :goto_0
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 1323
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isTripTypeModified()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isRemarkModified()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isTipModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1324
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1325
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDown()V

    .line 1327
    :cond_0
    return-void

    .line 1318
    :cond_1
    invoke-static {v1, v1, v2}, Lcom/didi/frame/carpool/CarPoolHelper;->lockCarPoolType(ZZZ)V

    goto :goto_0
.end method

.method private setCarPoolTypeState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 477
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 478
    .local v0, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->isFromRecovery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTrip_type()I

    move-result v1

    invoke-static {v1}, Lcom/didi/frame/carpool/CarPoolHelper;->setCurrentCarPoolType(I)V

    .line 482
    :cond_0
    invoke-static {}, Lcom/didi/common/config/TaxiPreferences;->getInstance()Lcom/didi/common/config/TaxiPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/TaxiPreferences;->getCarPoolType()I

    move-result v1

    iput v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mLastUpdateTripType:I

    .line 483
    iget v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mLastUpdateTripType:I

    if-ne v1, v3, :cond_2

    .line 484
    invoke-static {v3, v4, v4}, Lcom/didi/frame/carpool/CarPoolHelper;->lockCarPoolType(ZZZ)V

    .line 491
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    iget v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mLastUpdateTripType:I

    if-nez v1, :cond_3

    .line 486
    invoke-static {v3, v3, v4}, Lcom/didi/frame/carpool/CarPoolHelper;->lockCarPoolType(ZZZ)V

    goto :goto_0

    .line 487
    :cond_3
    iget v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mLastUpdateTripType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 488
    invoke-static {v3, v4, v3}, Lcom/didi/frame/carpool/CarPoolHelper;->lockCarPoolType(ZZZ)V

    .line 489
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showCarPoolOnlyTips()V

    goto :goto_0
.end method

.method private setControlPanel()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mOnConfirmListener:Landroid/view/View$OnClickListener;

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->priceListener:Lcom/didi/frame/price/PriceListener;

    invoke-static {v0}, Lcom/didi/frame/price/PriceHelper;->addPriceListener(Lcom/didi/frame/price/PriceListener;)V

    .line 674
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->waitListener:Lcom/didi/frame/wait/WaitListener;

    invoke-static {v0}, Lcom/didi/frame/wait/WaitHelper;->add(Lcom/didi/frame/wait/WaitListener;)V

    .line 675
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->remarkListener:Lcom/didi/frame/remark/RemarkListener;

    invoke-static {v0}, Lcom/didi/common/helper/RemarkHelper;->addRemarkListener(Lcom/didi/frame/remark/RemarkListener;)V

    .line 676
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->carPoolListener:Lcom/didi/frame/carpool/CarPoolListener;

    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolHelper;->addCarModelListener(Lcom/didi/frame/carpool/CarPoolListener;)V

    .line 677
    return-void
.end method

.method private setFromPoiToMapCenter()V
    .locals 5

    .prologue
    .line 565
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 566
    .local v0, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartLatDouble()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartLngDouble()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 569
    :cond_0
    return-void
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 663
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 666
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b057a

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 667
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b020b

    iget-object v2, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 668
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    .line 669
    return-void
.end method

.method private setUpBar(Lcom/didi/taxi/model/TaxiServiceMessage;)V
    .locals 8
    .parameter "message"

    .prologue
    .line 742
    const-wide/16 v3, 0x0

    .line 743
    .local v3, time:J
    iget-object v6, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v6}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiMsg()Lcom/didi/taxi/model/TaxiServiceMessage;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v6}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 744
    const-wide/16 v3, 0xfa

    .line 745
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeBar(Z)V

    .line 747
    :cond_0
    iget-object v6, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v6, p1}, Lcom/didi/taxi/model/TaxiOrder;->setTaxiMsg(Lcom/didi/taxi/model/TaxiServiceMessage;)V

    .line 748
    iget-object v6, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

    const v7, 0x7f0805f3

    invoke-virtual {v6, v7}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lx/TextView;

    .line 749
    .local v5, title:Lx/TextView;
    iget-object v6, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

    const v7, 0x7f0805f4

    invoke-virtual {v6, v7}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    .line 750
    .local v2, content:Lx/TextView;
    iget-object v6, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

    const v7, 0x7f08054b

    invoke-virtual {v6, v7}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    .line 751
    .local v0, cancel:Lx/Button;
    iget-object v6, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

    const v7, 0x7f080611

    invoke-virtual {v6, v7}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    .line 752
    .local v1, confirm:Lx/Button;
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getCancelBtnText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 755
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiServiceMessage;->getConfirmBtnText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 756
    invoke-direct {p0, v3, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->openBar(J)V

    .line 757
    return-void
.end method

.method private showCancelDialog()V
    .locals 1

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    :goto_0
    return-void

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showCancelDialogByFriendInfo()V

    goto :goto_0
.end method

.method private showCancelResonWebView()V
    .locals 5

    .prologue
    .line 1093
    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-virtual {v3}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->isFriendBarShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1094
    sget-object v3, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v3}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/taxi/model/TaxiOrder;

    .line 1095
    .local v1, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1096
    .local v2, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const v3, 0x7f0b020a

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 1097
    sget-object v3, Lcom/didi/common/util/Constant;->CARPOOL_RESPONSER_CANCELORDER:Ljava/lang/String;

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1098
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 1099
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/ui/webview/CarPoolCancelWebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1100
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1101
    invoke-virtual {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->startActivity(Landroid/content/Intent;)V

    .line 1103
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    .end local v2           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_0
    return-void

    .line 1098
    .restart local v1       #taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    .restart local v2       #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method private showCarPoolCancelDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 859
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0208

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 861
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 862
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setCanceledOnTouchOutside(Z)V

    .line 863
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b0209

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b020c

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->carPoolCancelListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 866
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setCloseDialogVisiblity(Z)V

    .line 867
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 868
    return-void
.end method

.method private showCarPoolOnlyTips()V
    .locals 3

    .prologue
    .line 469
    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 470
    .local v0, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    iget v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mLastUpdateTripType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOrderTypeInt()I

    move-result v1

    sget-object v2, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v2}, Lcom/didi/frame/business/OrderType;->getIntValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 471
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-virtual {v1}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->showCarPoolOnlyTip()V

    .line 474
    :cond_0
    return-void
.end method

.method private showInfoDialog(Lcom/didi/common/model/BaseObject;I)V
    .locals 3
    .parameter "base"
    .parameter "from"

    .prologue
    .line 1111
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    :goto_0
    return-void

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03fb

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$21;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;Lcom/didi/common/model/BaseObject;I)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 1134
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showLoadingDialog()V
    .locals 2

    .prologue
    .line 1499
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->isLoadingDialogShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1500
    new-instance v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$25;

    invoke-direct {v0, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$25;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    invoke-static {v0}, Lcom/didi/common/handler/UiThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 1506
    :cond_0
    return-void
.end method

.method private showOrUpdateFriendInfo(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1279
    iget-boolean v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->hasMatchTripFriend:Z

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->hasMatchTripFriend:Z

    .line 1280
    iget-object v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->mTripFriendInfo:Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;

    if-eqz v0, :cond_2

    .line 1281
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTaxiDriverMarkerList()V

    .line 1283
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isCarPoolFirstSucceed:Z

    if-eqz v0, :cond_1

    .line 1284
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 1285
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isAppFront(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1286
    const v0, 0x7f0b023b

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b023a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/didi/frame/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 1290
    :cond_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setCarPoolStateByMatched()V

    .line 1291
    iput-boolean v3, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isCarPoolFirstSucceed:Z

    .line 1294
    :cond_1
    invoke-direct {p0, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeBar(Z)V

    .line 1295
    invoke-direct {p0, v4}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeCouponBar(Z)V

    .line 1297
    iget v0, p1, Lcom/didi/taxi/model/TaxiOrderState;->trip_friend_status:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 1298
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->disMissFriendInfoBar()V

    .line 1299
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-virtual {v0, p1, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->updateInfoBar(Lcom/didi/taxi/model/TaxiOrderState;Z)V

    .line 1300
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->recallOrder(I)V

    .line 1309
    :cond_2
    :goto_0
    return-void

    .line 1302
    :cond_3
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1303
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-virtual {v0, v3}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->setVisibility(I)V

    .line 1305
    :cond_4
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->showFriendInfoBar()V

    .line 1306
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-virtual {v0, p1, v4}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->updateInfoBar(Lcom/didi/taxi/model/TaxiOrderState;Z)V

    goto :goto_0
.end method

.method private showReceived(Ljava/util/ArrayList;Lcom/didi/taxi/model/TaxiServiceMessage;)V
    .locals 6
    .parameter
    .parameter "taxiServiceMsg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/didi/taxi/model/TaxiServiceMessage;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaxiServiceMessage :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " biz:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastprice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getLastTip()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 345
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 346
    invoke-virtual {p2}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 347
    const-string v2, "ptxwfrremind01_err"

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    const/4 v1, 0x0

    .line 351
    .local v1, isShow:Z
    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_6

    .line 352
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 353
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 354
    invoke-virtual {p2}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v2

    if-nez v2, :cond_3

    .line 355
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getLastTip()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 356
    const/4 v1, 0x1

    .line 366
    :cond_2
    :goto_2
    if-eqz v1, :cond_5

    .line 367
    invoke-direct {p0, p2}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setUpBar(Lcom/didi/taxi/model/TaxiServiceMessage;)V

    goto :goto_0

    .line 358
    :cond_3
    invoke-virtual {p2}, Lcom/didi/taxi/model/TaxiServiceMessage;->getMsgType()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 359
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getLastWaitTime()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 360
    const/4 v1, 0x1

    goto :goto_2

    .line 352
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 369
    :cond_5
    const-string v2, "ptxwfrremind01_err"

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 373
    .end local v0           #i:I
    :cond_6
    const-string v2, "ptxwfrremind01_err"

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->extrLog:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showRecommandDialog()V
    .locals 3

    .prologue
    .line 1531
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 1532
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->MICRO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 1533
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 1534
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 1535
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const-string v1, ""

    const v2, 0x7f0b028b

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b028a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0289

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 1538
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$27;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$27;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 1570
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 1571
    return-void
.end method

.method private showTaxiCancelDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 847
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b020c

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 849
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 850
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setCanceledOnTouchOutside(Z)V

    .line 851
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b028d

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0294

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 854
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v3}, Lcom/didi/common/helper/DialogHelper;->setCloseDialogVisiblity(Z)V

    .line 855
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 856
    return-void
.end method

.method private switchToTextCall(I)V
    .locals 1
    .parameter "from"

    .prologue
    .line 1081
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1082
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 1085
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/realtime/RealTimeCallViewHelper;->setBottomStyle(I)V

    .line 1087
    :cond_1
    return-void
.end method

.method private updateDrivers(I)V
    .locals 2
    .parameter "cnt"

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mIsFromRecovery:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isFirstGetOrderStatus:Z

    if-eqz v0, :cond_1

    .line 722
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/taxi/business/TaxiOrderLooper;->getPushCarNum()I

    move-result v0

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateTaxiDriversMarkerLight(I)V

    .line 723
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->isFirstGetOrderStatus:Z

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    if-lez p1, :cond_0

    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrivers:I

    if-le p1, v0, :cond_0

    .line 728
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrivers:I

    if-ge v0, p1, :cond_0

    .line 729
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrivers:I

    add-int/lit8 v1, p1, -0x5

    if-ge v0, v1, :cond_2

    .line 730
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrivers:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrivers:I

    .line 734
    :goto_1
    iget v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrivers:I

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateTaxiDriversMarkerLight(I)V

    goto :goto_0

    .line 732
    :cond_2
    iput p1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrivers:I

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 459
    const-string v0, "ptxwfp_sw"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaxiWaitForResponseFragment--onCreateView--loopListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 461
    const v0, 0x7f030108

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mView:Landroid/view/View;

    .line 462
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->initViews()V

    .line 463
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setCarPoolTypeState()V

    .line 464
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->carPoolTriggerInterceptedListener:Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;

    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolHelper;->setTriggerInterceptListener(Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;)V

    .line 465
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mIsFromRecovery:Z

    .line 709
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 710
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 687
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 688
    invoke-static {}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getInstance()Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->closeDialog()V

    .line 689
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->stopCarAnimationDrivers()V

    .line 690
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 691
    invoke-static {}, Lcom/didi/taxi/helper/TaxiPushHelper;->unregisterTimelyRemindListener()V

    .line 692
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->priceListener:Lcom/didi/frame/price/PriceListener;

    invoke-static {v0}, Lcom/didi/frame/price/PriceHelper;->removePriceListener(Lcom/didi/frame/price/PriceListener;)V

    .line 693
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->waitListener:Lcom/didi/frame/wait/WaitListener;

    invoke-static {v0}, Lcom/didi/frame/wait/WaitHelper;->remove(Lcom/didi/frame/wait/WaitListener;)V

    .line 694
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->remarkListener:Lcom/didi/frame/remark/RemarkListener;

    invoke-static {v0}, Lcom/didi/common/helper/RemarkHelper;->removeRemarkListener(Lcom/didi/frame/remark/RemarkListener;)V

    .line 695
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->operatorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->removeListener(Landroid/view/View$OnClickListener;)V

    .line 696
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->operatorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->removeListener(Landroid/view/View$OnClickListener;)V

    .line 697
    invoke-static {}, Lcom/didi/frame/wait/WaitOperator;->getInstance()Lcom/didi/frame/wait/WaitOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/wait/WaitOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->operatorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->removeListener(Landroid/view/View$OnClickListener;)V

    .line 698
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->carPoolListener:Lcom/didi/frame/carpool/CarPoolListener;

    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolHelper;->removeCarModelListener(Lcom/didi/frame/carpool/CarPoolListener;)V

    .line 699
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/didi/frame/carpool/CarPoolHelper;->setTriggerInterceptListener(Lcom/didi/frame/carpool/CarPoolTriggerView$CarPoolTriggerInterceptedListener;)V

    .line 700
    invoke-static {}, Lcom/didi/taxi/helper/TaxiAdCarViewHelper;->removePoupView()V

    .line 701
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeCarPoolRoutePointsMarker()V

    .line 702
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeImgDialog()V

    .line 703
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->closeBar(Z)V

    .line 704
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 681
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 682
    invoke-static {}, Lcom/didi/common/notification/CommonNotification;->cancelNotification()V

    .line 683
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 525
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 526
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 527
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->checkTimeOut()V

    .line 528
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->checkRecovery()V

    .line 529
    invoke-static {}, Lcom/didi/taxi/business/TaxiOrderLooper;->getInstance()Lcom/didi/taxi/business/TaxiOrderLooper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    invoke-virtual {v0, v1}, Lcom/didi/taxi/business/TaxiOrderLooper;->setLoopListener(Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;)V

    .line 530
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->remindListener:Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;

    invoke-static {v0}, Lcom/didi/taxi/helper/TaxiPushHelper;->registerTimelyRemindListener(Lcom/didi/taxi/helper/TaxiPushHelper$TimelyRemindListener;)V

    .line 531
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->checkIsResend()V

    .line 532
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setTitleBar()V

    .line 533
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mView:Landroid/view/View;

    const v1, 0x7f0805ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/DrawerView;

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewResponser:Lcom/didi/common/ui/component/DrawerView;

    .line 534
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mView:Landroid/view/View;

    const v1, 0x7f0805f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/DrawerView;

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mDrawerViewCoupon:Lcom/didi/common/ui/component/DrawerView;

    .line 535
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setBarListener()V

    .line 536
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiMsg()Lcom/didi/taxi/model/TaxiServiceMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiMsg()Lcom/didi/taxi/model/TaxiServiceMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setUpBar(Lcom/didi/taxi/model/TaxiServiceMessage;)V

    .line 539
    :cond_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setControlPanel()V

    .line 540
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setRedirectListener()V

    .line 541
    iget-boolean v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->mIsFromRecovery:Z

    if-eqz v0, :cond_1

    .line 542
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmUpDelayed()V

    .line 548
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$10;

    invoke-direct {v1, p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment$10;-><init>(Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 557
    sget-object v0, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 558
    sget-object v0, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 559
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 560
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 561
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->setFromPoiToMapCenter()V

    .line 562
    return-void

    .line 545
    :cond_2
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDownDelayed(I)V

    goto :goto_0
.end method

.method public showCancelDialogByFriendInfo()V
    .locals 2

    .prologue
    .line 838
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    iput-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    .line 839
    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->friendInfoView:Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;

    invoke-virtual {v0}, Lcom/didi/taxi/ui/component/TaxiWaitForResponseFriendInfoView;->isFriendBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->taxiOrder:Lcom/didi/taxi/model/TaxiOrder;

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/OrderType;->Realtime:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_0

    .line 840
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showCarPoolCancelDialog()V

    .line 844
    :goto_0
    return-void

    .line 842
    :cond_0
    invoke-direct {p0}, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;->showTaxiCancelDialog()V

    goto :goto_0
.end method
