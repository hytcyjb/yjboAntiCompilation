.class public Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "FlierWaitForResponseFragment.java"


# static fields
.field public static final ADD_PRICE:I = 0x0

.field public static final COMMON_MESSAGE_TYPE_ADD_PRICE:I = 0x17

.field public static final COMMON_MESSAGE_TYPE_DOWN_NOTICE:I = 0x16

.field private static final DRIVER_COUNT:I = 0x5

.field private static LOADING_TIME:I = 0x0

.field private static MSG_TYPE_CANCEL:I = 0x0

.field private static MSG_TYPE_LOADING:I = 0x0

.field private static MSG_TYPE_PK:I = 0x0

.field public static final ORDER_WAIT_ANSWER:I = 0x0

.field public static final REMARK:I = 0x2

.field public static final WAIT:I = 0x1

.field private static pkDriverNums:I

.field private static pkWait:I


# instance fields
.field private bar:Lcom/didi/common/ui/component/DrawerView;

.field cancelClickListener:Landroid/view/View$OnClickListener;

.field private commonListener:Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;

.field private dialog:Lcom/didi/common/helper/DialogHelper;

.field private dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private extrLog:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field infoListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private isPlayed:Z

.field private isShowSubmitBtn:Z

.field private loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

.field private mBiLogOid:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDrivers:I

.field private mIsFromRecovery:Z

.field private mOnConfirmListener:Landroid/view/View$OnClickListener;

.field private mStopLoopHttpOrderStatus:Z

.field private mView:Landroid/view/View;

.field private msgType:I

.field private msgValue:Ljava/lang/String;

.field private myTimer:Ljava/util/Timer;

.field private oid:Ljava/lang/String;

.field private operatorListener:Landroid/view/View$OnClickListener;

.field private order:Lcom/didi/flier/model/FlierOrder;

.field private pkMsg:Ljava/lang/String;

.field private priceListener:Lcom/didi/frame/price/PriceListener;

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

.field private redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

.field private remarkListener:Lcom/didi/frame/remark/RemarkListener;

.field private remindListener:Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;

.field private subStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x64

    sput v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->MSG_TYPE_PK:I

    .line 109
    const/16 v0, 0x65

    sput v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->MSG_TYPE_LOADING:I

    .line 110
    const/16 v0, 0x66

    sput v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->MSG_TYPE_CANCEL:I

    .line 117
    const/16 v0, 0x12c

    sput v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->LOADING_TIME:I

    .line 118
    const/4 v0, 0x0

    sput v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkDriverNums:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 99
    iput v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mDrivers:I

    .line 106
    iput-boolean v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mIsFromRecovery:Z

    .line 111
    iput v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->subStatus:I

    .line 112
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkMsg:Ljava/lang/String;

    .line 120
    iput-boolean v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPlayed:Z

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isShowSubmitBtn:Z

    .line 132
    iput-boolean v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mStopLoopHttpOrderStatus:Z

    .line 141
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$1;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->handler:Landroid/os/Handler;

    .line 168
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$2;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    .line 181
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$3;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->remarkListener:Lcom/didi/frame/remark/RemarkListener;

    .line 189
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$4;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->priceListener:Lcom/didi/frame/price/PriceListener;

    .line 207
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$5;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mOnConfirmListener:Landroid/view/View$OnClickListener;

    .line 289
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$6;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->commonListener:Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;

    .line 514
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$12;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$12;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->cancelClickListener:Landroid/view/View$OnClickListener;

    .line 559
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$13;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 636
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$15;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$15;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->infoListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 767
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$17;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    .line 838
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$18;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$18;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->queryOrderStatusListener:Lcom/didi/common/net/ResponseListener;

    .line 966
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$20;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->remindListener:Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->MSG_TYPE_PK:I

    return v0
.end method

.method static synthetic access$100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/common/ui/component/DrawerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/frame/price/PriceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->priceListener:Lcom/didi/frame/price/PriceListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/frame/remark/RemarkListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->remarkListener:Lcom/didi/frame/remark/RemarkListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->onOrderModified()V

    return-void
.end method

.method static synthetic access$1300(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Lcom/didi/car/model/CarServiceMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->setUpBar(Lcom/didi/car/model/CarServiceMessage;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->extrLog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->extrLog:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/flier/model/FlierOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Lcom/didi/car/model/CarServiceMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->onConfirmTimely(Lcom/didi/car/model/CarServiceMessage;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Lcom/didi/car/model/CarOrderState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->doOrderStatusGot(Lcom/didi/car/model/CarOrderState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->showCancelDialog()V

    return-void
.end method

.method static synthetic access$1900(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->doCancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeBar(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redictRealtimeFragment()V

    return-void
.end method

.method static synthetic access$2200(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Lcom/didi/common/model/BaseObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->showInfoDialog(Lcom/didi/common/model/BaseObject;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->LOADING_TIME:I

    return v0
.end method

.method static synthetic access$2410()I
    .locals 2

    .prologue
    .line 88
    sget v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->LOADING_TIME:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->LOADING_TIME:I

    return v0
.end method

.method static synthetic access$2500(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redictFragment()V

    return-void
.end method

.method static synthetic access$2600(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mDrivers:I

    return p1
.end method

.method static synthetic access$2800(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mStopLoopHttpOrderStatus:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mStopLoopHttpOrderStatus:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Lcom/didi/common/net/ResponseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->queryOrderStatusListener:Lcom/didi/common/net/ResponseListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->subStatus:I

    return v0
.end method

.method static synthetic access$3000(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->onQueryOrderDetail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->clearYuying()V

    return-void
.end method

.method static synthetic access$3300(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPlayed:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPlayed:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redictArrivelFragment()V

    return-void
.end method

.method static synthetic access$3500(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->oid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->oid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->msgType:I

    return v0
.end method

.method static synthetic access$3602(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->msgType:I

    return p1
.end method

.method static synthetic access$3700(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->msgValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->msgValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Ljava/util/ArrayList;Lcom/didi/car/model/CarServiceMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->showReceived(Ljava/util/ArrayList;Lcom/didi/car/model/CarServiceMessage;)V

    return-void
.end method

.method static synthetic access$3902(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isShowSubmitBtn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkDriverNums:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkWait:I

    return v0
.end method

.method static synthetic access$610()I
    .locals 2

    .prologue
    .line 88
    sget v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkWait:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkWait:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->MSG_TYPE_LOADING:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 88
    sget v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->MSG_TYPE_CANCEL:I

    return v0
.end method

.method static synthetic access$900(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    return-object v0
.end method

.method private checkIsResend()V
    .locals 1

    .prologue
    .line 756
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/flier/business/FlierOrderLooper;->isReadyResend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redictFragment()V

    .line 765
    :goto_0
    return-void

    .line 760
    :cond_0
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->switchTo(Lcom/didi/frame/business/Business;)V

    .line 761
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->showWaitMapView()V

    .line 762
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/flier/business/FlierOrderLooper;->start()V

    .line 763
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->registerPush()V

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 500
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->stopCarAnimationDrivers()V

    .line 501
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeBar(Z)V

    .line 502
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->clearAllDrivers()V

    .line 503
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterOrderStatusListener()V

    .line 504
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->stopAllLooper()V

    .line 505
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeCancelDialog()V

    .line 506
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 507
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->clearYuying()V

    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPlayed:Z

    .line 509
    return-void
.end method

.method private clearYuying()V
    .locals 2

    .prologue
    .line 676
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 677
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->handler:Landroid/os/Handler;

    sget v1, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->MSG_TYPE_PK:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->handler:Landroid/os/Handler;

    sget v1, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->MSG_TYPE_LOADING:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 679
    const/16 v0, 0x12c

    sput v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->LOADING_TIME:I

    .line 680
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->subStatus:I

    .line 681
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 684
    :cond_0
    return-void
.end method

.method private closeBar(Z)V
    .locals 2
    .parameter "clean"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/DrawerView;->close()V

    .line 368
    :cond_0
    if-eqz p1, :cond_2

    .line 369
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->setVisibility(I)V

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/didi/flier/model/FlierOrder;->carServiceMessage:Lcom/didi/car/model/CarServiceMessage;

    .line 375
    :cond_2
    return-void
.end method

.method private closeCancelDialog()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 554
    :cond_0
    return-void
.end method

.method private doCancel()V
    .locals 4

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b021f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 594
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$14;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$14;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    invoke-static {v0}, Lcom/didi/frame/business/terminator/OrderTerminator;->terminateAll(Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V

    .line 625
    return-void
.end method

.method private doChangeTip()V
    .locals 2

    .prologue
    .line 1047
    const v0, 0x7f0b0529

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 1048
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 1049
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$21;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$21;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->changeTip(Lcom/didi/common/net/ResponseListener;)V

    .line 1065
    return-void
.end method

.method private doOrderStatusGot(Lcom/didi/car/model/CarOrderState;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 716
    invoke-direct {p0, p1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->doYuying(Lcom/didi/car/model/CarOrderState;)V

    .line 719
    iget-boolean v1, p1, Lcom/didi/car/model/CarOrderState;->isTimeout:Z

    if-eqz v1, :cond_1

    .line 720
    invoke-direct {p0, v3}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeBar(Z)V

    .line 721
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mContext:Landroid/content/Context;

    const-string v2, "noredirect"

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 723
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redictFragment()V

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v1

    iget v2, p1, Lcom/didi/car/model/CarOrderState;->driverCount:I

    invoke-virtual {v1, v2}, Lcom/didi/flier/business/FlierOrderLooper;->setPushCarNum(I)V

    .line 728
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPaused()Z

    move-result v1

    if-nez v1, :cond_2

    .line 729
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/flier/business/FlierOrderLooper;->getPushCarNum()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->updateDrivers(I)V

    .line 730
    :cond_2
    iget v1, p1, Lcom/didi/car/model/CarOrderState;->status:I

    if-lez v1, :cond_0

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mContext:Landroid/content/Context;

    const-string v2, "pushredirect"

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 732
    invoke-direct {p0, v3}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeBar(Z)V

    .line 733
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->clearYuying()V

    .line 736
    iget-boolean v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPlayed:Z

    if-nez v1, :cond_3

    .line 737
    invoke-static {}, Lcom/didi/common/util/Utils;->isInChristmasDay()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 738
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f050006

    invoke-virtual {v1, v2}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 742
    :goto_1
    iput-boolean v3, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPlayed:Z

    .line 744
    :cond_3
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/flier/business/FlierOrderLooper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/flier/model/FlierOrder;

    .line 745
    .local v0, car:Lcom/didi/flier/model/FlierOrder;
    iget-object v1, p1, Lcom/didi/car/model/CarOrderState;->driver:Lcom/didi/car/model/CarDriver;

    iput-object v1, v0, Lcom/didi/flier/model/FlierOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    .line 746
    iput-object p1, v0, Lcom/didi/flier/model/FlierOrder;->orderState:Lcom/didi/car/model/CarOrderState;

    .line 747
    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget v2, p1, Lcom/didi/car/model/CarOrderState;->status:I

    iput v2, v1, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 748
    invoke-static {}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelRequest4Trace()V

    .line 749
    const/4 v1, 0x0

    sput v1, Lcom/didi/common/util/Constant;->REQUEST_CNT:I

    .line 750
    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/alarm/CommonAlarmManager;->setRequest4Trace(Ljava/lang/String;)V

    .line 751
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redictArrivelFragment()V

    goto :goto_0

    .line 740
    .end local v0           #car:Lcom/didi/flier/model/FlierOrder;
    :cond_4
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v1

    const v2, 0x7f05001c

    invoke-virtual {v1, v2}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    goto :goto_1
.end method

.method private doYuying(Lcom/didi/car/model/CarOrderState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/16 v2, 0x1b59

    const/16 v1, 0x1b5a

    .line 688
    iget v0, p1, Lcom/didi/car/model/CarOrderState;->subStatus:I

    if-ne v0, v2, :cond_3

    .line 689
    iget v0, p1, Lcom/didi/car/model/CarOrderState;->pkDriverNums:I

    sput v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkDriverNums:I

    .line 690
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->subStatus:I

    if-nez v0, :cond_1

    .line 691
    iput v2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->subStatus:I

    .line 692
    iget v0, p1, Lcom/didi/car/model/CarOrderState;->pkWaitTime:I

    sput v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkWait:I

    .line 693
    iget-object v0, p1, Lcom/didi/car/model/CarOrderState;->pkMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkMsg:Ljava/lang/String;

    .line 694
    iget-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPlayed:Z

    if-nez v0, :cond_0

    .line 695
    invoke-static {}, Lcom/didi/common/util/Utils;->isInChristmasDay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    .line 700
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isPlayed:Z

    .line 702
    :cond_0
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->startTimer()V

    .line 712
    :cond_1
    :goto_1
    return-void

    .line 698
    :cond_2
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05001c

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playMustSound(I)V

    goto :goto_0

    .line 704
    :cond_3
    iget v0, p1, Lcom/didi/car/model/CarOrderState;->subStatus:I

    if-ne v0, v1, :cond_1

    .line 705
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->subStatus:I

    if-eq v0, v1, :cond_1

    .line 706
    iput v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->subStatus:I

    .line 707
    iget v0, p1, Lcom/didi/car/model/CarOrderState;->pkWaitTime:I

    sput v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkWait:I

    .line 708
    iget-object v0, p1, Lcom/didi/car/model/CarOrderState;->pkMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->pkMsg:Ljava/lang/String;

    .line 709
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->startTimer()V

    goto :goto_1
.end method

.method private initDialog()Z
    .locals 2

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 524
    const/4 v0, 0x0

    .line 531
    :goto_0
    return v0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 530
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 531
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFromOrderRecovery()Z
    .locals 3

    .prologue
    .line 898
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->getArguments()Landroid/os/Bundle;

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
    .line 649
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$16;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$16;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    return-object v0
.end method

.method private onConfirmTimely(Lcom/didi/car/model/CarServiceMessage;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1020
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isShowSubmitBtn:Z

    .line 1021
    iget v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    if-nez v1, :cond_1

    .line 1022
    iget-object v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->setTip(I)V

    .line 1023
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->initPrice()V

    .line 1040
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->doChangeTip()V

    .line 1041
    return-void

    .line 1024
    :cond_1
    iget v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1025
    iget-object v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->setWaitTime(I)V

    goto :goto_0

    .line 1027
    :cond_2
    iget v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1028
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getRemark()Ljava/lang/String;

    move-result-object v0

    .line 1029
    .local v0, remark:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1030
    iget-object v1, p1, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->setRemark(Ljava/lang/String;)V

    .line 1038
    :cond_3
    :goto_1
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->initRemark()V

    goto :goto_0

    .line 1032
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p1, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x14

    if-gt v1, v2, :cond_3

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->setRemark(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onOrderModified()V
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isShowSubmitBtn:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmUpDelayed()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDownDelayed()V

    goto :goto_0
.end method

.method private onQueryOrderDetail(Ljava/lang/String;)V
    .locals 1
    .parameter "oid"

    .prologue
    .line 861
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$19;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$19;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    invoke-static {p1, v0}, Lcom/didi/car/net/CarRequest;->getHistroyOrderDetail(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 895
    return-void
.end method

.method private openBar(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 353
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$10;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    invoke-static {v0, p1, p2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    return-void
.end method

.method private redictArrivelFragment()V
    .locals 2

    .prologue
    .line 465
    const-string v0, "flier_zc80001"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 466
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 467
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->clear()V

    .line 468
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToArrivelMapView()V

    .line 469
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->hide()V

    .line 470
    invoke-static {}, Lcom/didi/frame/switcher/SwitcherHelper;->hideSwitcher()V

    .line 471
    const-string v0, "ToArrivalFragment"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/didi/common/notification/CommonNotification;->notification()V

    .line 473
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showCarWaitForArrivalFragment()V

    .line 474
    return-void
.end method

.method private redictFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 478
    invoke-direct {p0, v2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeBar(Z)V

    .line 480
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-eq v0, v1, :cond_0

    .line 481
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/flier/business/FlierOrderLooper;->setResend(Z)V

    .line 494
    :goto_0
    return-void

    .line 484
    :cond_0
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->getCurrentSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/didi/frame/business/OrderHelper;->setOrderTo(Lcom/didi/frame/business/Business;Lcom/didi/frame/Sendable;)V

    .line 485
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->clear()V

    .line 486
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->waitToResendMapView()V

    .line 488
    iget-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mIsFromRecovery:Z

    if-eqz v0, :cond_1

    .line 489
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->showFlierResendFragment()V

    goto :goto_0

    .line 491
    :cond_1
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->forward(Lcom/didi/frame/business/Business;)V

    goto :goto_0
.end method

.method private redictRealtimeFragment()V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->clear()V

    .line 460
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->clearMap()V

    .line 461
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 462
    return-void
.end method

.method private registerPush()V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$11;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$11;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerOrderStatusListener(Lcom/didi/car/helper/CarPushHelper$OrderStatusPushListener;)V

    .line 399
    return-void
.end method

.method private setBarListener()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v1, 0x7f08054b

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$7;

    invoke-direct {v1, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$7;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v1, 0x7f080611

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$8;

    invoke-direct {v1, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$8;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    new-instance v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment$9;-><init>(Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;)V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->operatorListener:Landroid/view/View$OnClickListener;

    .line 346
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->operatorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->addListener(Landroid/view/View$OnClickListener;)V

    .line 347
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->operatorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->addListener(Landroid/view/View$OnClickListener;)V

    .line 350
    return-void
.end method

.method private setControlPanel()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mOnConfirmListener:Landroid/view/View$OnClickListener;

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->priceListener:Lcom/didi/frame/price/PriceListener;

    invoke-static {v0}, Lcom/didi/frame/price/PriceHelper;->addPriceListener(Lcom/didi/frame/price/PriceListener;)V

    .line 404
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->remarkListener:Lcom/didi/frame/remark/RemarkListener;

    invoke-static {v0}, Lcom/didi/common/helper/RemarkHelper;->addRemarkListener(Lcom/didi/frame/remark/RemarkListener;)V

    .line 405
    return-void
.end method

.method private setFromPoiToMapCenter()V
    .locals 5

    .prologue
    .line 283
    sget-object v1, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/flier/model/FlierOrder;

    .line 284
    .local v0, flierOrder:Lcom/didi/flier/model/FlierOrder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getStartLatLng()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getStartLatDouble()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/didi/flier/model/FlierOrder;->getStartLngDouble()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/didi/map/MapController;->setMapCenter(DD)V

    .line 287
    :cond_0
    return-void
.end method

.method private setRedirectListener()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->addRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 379
    return-void
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 382
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b057a

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 383
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const v1, 0x7f0b020b

    iget-object v2, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 384
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideLeft()V

    .line 385
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setEnabled(Z)V

    .line 386
    return-void
.end method

.method private setUpBar(Lcom/didi/car/model/CarServiceMessage;)V
    .locals 12
    .parameter "message"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 933
    const-wide/16 v4, 0x0

    .line 934
    .local v4, time:J
    const-string v7, "flier_pgxwfr01_sw"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    iget-object v9, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->extrLog:Ljava/lang/String;

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 935
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;

    iget-object v7, v7, Lcom/didi/flier/model/FlierOrder;->carServiceMessage:Lcom/didi/car/model/CarServiceMessage;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    invoke-virtual {v7}, Lcom/didi/common/ui/component/DrawerView;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 936
    const-wide/16 v4, 0xfa

    .line 937
    invoke-direct {p0, v10}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeBar(Z)V

    .line 939
    :cond_0
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;

    iput-object p1, v7, Lcom/didi/flier/model/FlierOrder;->carServiceMessage:Lcom/didi/car/model/CarServiceMessage;

    .line 940
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f0805f3

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 941
    .local v6, title:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f0805f4

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 942
    .local v3, content:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f08054b

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    .line 943
    .local v1, cancel:Lx/Button;
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f080611

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/Button;

    .line 944
    .local v2, confirm:Lx/Button;
    iget-object v7, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    const v8, 0x7f080610

    invoke-virtual {v7, v8}, Lcom/didi/common/ui/component/DrawerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/LinearLayout;

    .line 946
    .local v0, buttonArea:Lx/LinearLayout;
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->cancelBtnText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->confirmBtnText:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 947
    :cond_1
    invoke-virtual {v0, v11}, Lx/LinearLayout;->setVisibility(I)V

    .line 954
    :goto_0
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 955
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 961
    :goto_1
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->content:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    invoke-direct {p0, v4, v5}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->openBar(J)V

    .line 964
    return-void

    .line 949
    :cond_2
    invoke-virtual {v0, v10}, Lx/LinearLayout;->setVisibility(I)V

    .line 950
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->cancelBtnText:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->confirmBtnText:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 957
    :cond_3
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 958
    iget-object v7, p1, Lcom/didi/car/model/CarServiceMessage;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showCancelDialog()V
    .locals 4

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b028c

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 540
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    const v2, 0x7f0b028d

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0207

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialogListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 543
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 545
    const-string v0, "pgxwfr04_sw"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showInfoDialog(Lcom/didi/common/model/BaseObject;)V
    .locals 3
    .parameter "base"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03fb

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->infoListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 633
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showReceived(Ljava/util/ArrayList;Lcom/didi/car/model/CarServiceMessage;)V
    .locals 4
    .parameter
    .parameter "carServiceMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/didi/car/model/CarServiceMessage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 903
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 905
    .local v1, isShow:Z
    if-nez p1, :cond_0

    .line 906
    const/4 v1, 0x1

    .line 909
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 911
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 912
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p2, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p2, Lcom/didi/car/model/CarServiceMessage;->msgValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_4

    .line 913
    iget v2, p2, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    if-nez v2, :cond_3

    .line 914
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getLastTip()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 915
    const/4 v1, 0x1

    .line 927
    .end local v0           #i:I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 928
    invoke-direct {p0, p2}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->setUpBar(Lcom/didi/car/model/CarServiceMessage;)V

    .line 930
    :cond_2
    return-void

    .line 917
    .restart local v0       #i:I
    :cond_3
    iget v2, p2, Lcom/didi/car/model/CarServiceMessage;->msgType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 918
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getLastWaitTime()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 919
    const/4 v1, 0x1

    goto :goto_1

    .line 911
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private startTimer()V
    .locals 6

    .prologue
    .line 669
    const/16 v0, 0x12c

    sput v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->LOADING_TIME:I

    .line 670
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 671
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    .line 672
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->myTimer:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->myTask()Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 673
    return-void
.end method

.method private updateDrivers(I)V
    .locals 2
    .parameter "cnt"

    .prologue
    .line 443
    if-lez p1, :cond_0

    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mDrivers:I

    if-le p1, v0, :cond_0

    .line 444
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mDrivers:I

    if-ge v0, p1, :cond_0

    .line 445
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mDrivers:I

    add-int/lit8 v1, p1, -0x5

    if-ge v0, v1, :cond_1

    .line 446
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mDrivers:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mDrivers:I

    .line 450
    :goto_0
    iget v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mDrivers:I

    invoke-static {v0}, Lcom/didi/map/marker/MarkerController;->updateFlierDriversMarkerLight(I)V

    .line 453
    :cond_0
    return-void

    .line 448
    :cond_1
    iput p1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mDrivers:I

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 233
    const-string v0, "flier_pgxwfp_sw"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mContext:Landroid/content/Context;

    .line 237
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->isFromOrderRecovery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mIsFromRecovery:Z

    .line 238
    iget-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mIsFromRecovery:Z

    if-eqz v0, :cond_0

    .line 241
    :cond_0
    const v0, 0x7f030073

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mView:Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 426
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 427
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 409
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroyView()V

    .line 410
    invoke-static {}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->getInstance()Lcom/didi/common/helper/BusinessSwitchIntroHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/helper/BusinessSwitchIntroHelper;->closeDialog()V

    .line 411
    invoke-static {}, Lcom/didi/common/helper/DriversHelper;->stopCarAnimationDrivers()V

    .line 412
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->redirectListener:Lcom/didi/frame/business/redirector/RedirectListener;

    invoke-static {v0}, Lcom/didi/frame/business/redirector/RedirectEngine;->removeRedirectListener(Lcom/didi/frame/business/redirector/RedirectListener;)V

    .line 413
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->priceListener:Lcom/didi/frame/price/PriceListener;

    invoke-static {v0}, Lcom/didi/frame/price/PriceHelper;->removePriceListener(Lcom/didi/frame/price/PriceListener;)V

    .line 414
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->remarkListener:Lcom/didi/frame/remark/RemarkListener;

    invoke-static {v0}, Lcom/didi/common/helper/RemarkHelper;->removeRemarkListener(Lcom/didi/frame/remark/RemarkListener;)V

    .line 415
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterTimelyRemindListener()V

    .line 416
    invoke-static {}, Lcom/didi/car/helper/CarPushHelper;->unregisterCommonMesssageListener()V

    .line 417
    invoke-static {}, Lcom/didi/frame/remark/RemarkOperator;->getInstance()Lcom/didi/frame/remark/RemarkOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/remark/RemarkOperator;->getTrigger()Lcom/didi/frame/remark/RemarkTriggerView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->operatorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/remark/RemarkTriggerView;->removeListener(Landroid/view/View$OnClickListener;)V

    .line 418
    invoke-static {}, Lcom/didi/frame/price/PriceOperator;->getInstance()Lcom/didi/frame/price/PriceOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/price/PriceOperator;->getTrigger()Lcom/didi/frame/controlpanel/pin/TriggerPinView;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->operatorListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/didi/frame/controlpanel/pin/TriggerPinView;->removeListener(Landroid/view/View$OnClickListener;)V

    .line 419
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->closeBar(Z)V

    .line 422
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 247
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 248
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 249
    invoke-static {}, Lcom/didi/flier/business/FlierOrderLooper;->getInstance()Lcom/didi/flier/business/FlierOrderLooper;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->loopListener:Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;

    invoke-virtual {v0, v1}, Lcom/didi/flier/business/FlierOrderLooper;->setLoopListener(Lcom/didi/taxi/business/TaxiOrderLooper$LoopListener;)V

    .line 250
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->commonListener:Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerOrderHitMessageListener(Lcom/didi/car/helper/CarPushHelper$CommonMesssageListener;)V

    .line 251
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->remindListener:Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;

    invoke-static {v0}, Lcom/didi/car/helper/CarPushHelper;->registerTimelyRemindListener(Lcom/didi/car/helper/CarPushHelper$TimelyRemindListener;)V

    .line 253
    sget-object v0, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/flier/model/FlierOrder;

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[order_id_g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;

    invoke-virtual {v1}, Lcom/didi/flier/model/FlierOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mBiLogOid:Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->checkIsResend()V

    .line 257
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->setTitleBar()V

    .line 258
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->setControlPanel()V

    .line 259
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/component/DrawerView;

    iput-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->bar:Lcom/didi/common/ui/component/DrawerView;

    .line 260
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->setBarListener()V

    .line 261
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;

    iget-object v0, v0, Lcom/didi/flier/model/FlierOrder;->carServiceMessage:Lcom/didi/car/model/CarServiceMessage;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->order:Lcom/didi/flier/model/FlierOrder;

    iget-object v0, v0, Lcom/didi/flier/model/FlierOrder;->carServiceMessage:Lcom/didi/car/model/CarServiceMessage;

    invoke-direct {p0, v0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->setUpBar(Lcom/didi/car/model/CarServiceMessage;)V

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->setRedirectListener()V

    .line 265
    iget-boolean v0, p0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->mIsFromRecovery:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->isModified()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    invoke-static {}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmUpDelayed()V

    .line 274
    :cond_1
    :goto_0
    sget-object v0, Lcom/didi/frame/business/Business;->Activity:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 275
    sget-object v0, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 276
    sget-object v0, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 277
    sget-object v0, Lcom/didi/frame/business/Business;->Topic:Lcom/didi/frame/business/Business;

    invoke-static {v0}, Lcom/didi/frame/switcher/SwitcherHelper;->hideBusiness(Lcom/didi/frame/business/Business;)V

    .line 279
    invoke-direct {p0}, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;->setFromPoiToMapCenter()V

    .line 280
    return-void

    .line 269
    :cond_2
    const/16 v0, 0xfa

    invoke-static {v0}, Lcom/didi/frame/controlpanel/ControlPanelHelper;->flipConfirmDownDelayed(I)V

    goto :goto_0
.end method
