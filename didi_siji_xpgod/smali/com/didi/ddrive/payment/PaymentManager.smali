.class public Lcom/didi/ddrive/payment/PaymentManager;
.super Lcom/didi/ddrive/managers/AbsManager;
.source "PaymentManager.java"


# static fields
.field public static final ERR_CODE_PAYED_CASH:I = 0x30d5f

.field public static final ERR_CODE_PAYED_ONLINE:I = 0x30d5e

.field public static final ERR_CODE_REFRESH:I = 0x30d67

.field public static final MAX_RETRY_TIME:I = 0x3

.field public static final TAG:Ljava/lang/String; = "PaymentManager"

.field private static sInstance:Lcom/didi/ddrive/payment/PaymentManager;


# instance fields
.field private mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

.field private mOid:J

.field private mPayChannel:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

.field private mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;

.field private mPid:J

.field private mPreferences:Lcom/didi/ddrive/preferences/KDPreferenceDrive;

.field private mRetryTime:I

.field private mSign:Lcom/didi/ddrive/net/http/response/PaySign;

.field private mVoucher:Lcom/didi/ddrive/net/http/response/DriveVoucherList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/didi/ddrive/managers/AbsManager;-><init>()V

    .line 81
    invoke-static {}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getInstance()Lcom/didi/ddrive/preferences/KDPreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/ddrive/preferences/KDPreferenceManager;->getKDPreferenceDrive()Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPreferences:Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/didi/ddrive/payment/PaymentManager;)Lcom/didi/ddrive/net/http/response/OrderBill;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    return-object v0
.end method

.method static synthetic access$002(Lcom/didi/ddrive/payment/PaymentManager;Lcom/didi/ddrive/net/http/response/OrderBill;)Lcom/didi/ddrive/net/http/response/OrderBill;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    return-object p1
.end method

.method static synthetic access$102(Lcom/didi/ddrive/payment/PaymentManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mRetryTime:I

    return p1
.end method

.method static synthetic access$108(Lcom/didi/ddrive/payment/PaymentManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mRetryTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mRetryTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/didi/ddrive/payment/PaymentManager;Lcom/didi/ddrive/net/http/response/PayedDetail;)Lcom/didi/ddrive/net/http/response/PayedDetail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;

    return-object p1
.end method

.method static synthetic access$302(Lcom/didi/ddrive/payment/PaymentManager;Lcom/didi/ddrive/net/http/response/DriveVoucherList;)Lcom/didi/ddrive/net/http/response/DriveVoucherList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mVoucher:Lcom/didi/ddrive/net/http/response/DriveVoucherList;

    return-object p1
.end method

.method static synthetic access$402(Lcom/didi/ddrive/payment/PaymentManager;Lcom/didi/ddrive/net/http/response/PaySign;)Lcom/didi/ddrive/net/http/response/PaySign;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mSign:Lcom/didi/ddrive/net/http/response/PaySign;

    return-object p1
.end method

.method public static getInstance()Lcom/didi/ddrive/payment/PaymentManager;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/didi/ddrive/payment/PaymentManager;->sInstance:Lcom/didi/ddrive/payment/PaymentManager;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/didi/ddrive/payment/PaymentManager;

    invoke-direct {v0}, Lcom/didi/ddrive/payment/PaymentManager;-><init>()V

    sput-object v0, Lcom/didi/ddrive/payment/PaymentManager;->sInstance:Lcom/didi/ddrive/payment/PaymentManager;

    .line 93
    :cond_0
    sget-object v0, Lcom/didi/ddrive/payment/PaymentManager;->sInstance:Lcom/didi/ddrive/payment/PaymentManager;

    return-object v0
.end method


# virtual methods
.method public changeVoucher(Lcom/didi/ddrive/net/http/response/DriveVoucherList$Voucher;)V
    .locals 5
    .parameter "voucher"

    .prologue
    .line 249
    new-instance v1, Lcom/didi/ddrive/net/http/request/ChangeVoucherRequest;

    invoke-direct {v1}, Lcom/didi/ddrive/net/http/request/ChangeVoucherRequest;-><init>()V

    .line 250
    .local v1, request:Lcom/didi/ddrive/net/http/request/ChangeVoucherRequest;
    iget-wide v2, p0, Lcom/didi/ddrive/payment/PaymentManager;->mOid:J

    iput-wide v2, v1, Lcom/didi/ddrive/net/http/request/ChangeVoucherRequest;->orderId:J

    .line 251
    iget-wide v2, p1, Lcom/didi/ddrive/net/http/response/DriveVoucherList$Voucher;->voucherId:J

    iput-wide v2, v1, Lcom/didi/ddrive/net/http/request/ChangeVoucherRequest;->voucherId:J

    .line 253
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 254
    .local v0, manager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v2, "PaymentManager"

    new-instance v3, Lcom/didi/ddrive/payment/PaymentManager$4;

    invoke-direct {v3, p0, v1}, Lcom/didi/ddrive/payment/PaymentManager$4;-><init>(Lcom/didi/ddrive/payment/PaymentManager;Lcom/didi/ddrive/net/http/request/ChangeVoucherRequest;)V

    const-class v4, Lcom/didi/ddrive/net/http/response/ChangeVoucherResult;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 273
    return-void
.end method

.method public getOrderBill()Lcom/didi/ddrive/net/http/response/OrderBill;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    return-object v0
.end method

.method public getOrderId()J
    .locals 2

    .prologue
    .line 397
    iget-wide v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mOid:J

    return-wide v0
.end method

.method public getPayChannel()Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 132
    iget-object v6, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    iget-object v6, v6, Lcom/didi/ddrive/net/http/response/OrderBill;->channelItems:[Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    if-nez v6, :cond_1

    move-object v2, v5

    .line 141
    :cond_0
    :goto_0
    return-object v2

    .line 135
    :cond_1
    iget-object v6, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPreferences:Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    invoke-virtual {v6}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->getPayChannel()I

    move-result v4

    .line 136
    .local v4, type:I
    iget-object v6, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    iget-object v0, v6, Lcom/didi/ddrive/net/http/response/OrderBill;->channelItems:[Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    .local v0, arr$:[Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 137
    .local v2, item:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    iget v6, v2, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    if-eq v4, v6, :cond_0

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #item:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;
    :cond_2
    move-object v2, v5

    .line 141
    goto :goto_0
.end method

.method public getPayedDetail()Lcom/didi/ddrive/net/http/response/PayedDetail;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;

    return-object v0
.end method

.method public getVoucherList()Lcom/didi/ddrive/net/http/response/DriveVoucherList;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mVoucher:Lcom/didi/ddrive/net/http/response/DriveVoucherList;

    return-object v0
.end method

.method public init(JJ)V
    .locals 0
    .parameter "oid"
    .parameter "pid"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mOid:J

    .line 98
    iput-wide p3, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPid:J

    .line 99
    invoke-virtual {p0}, Lcom/didi/ddrive/payment/PaymentManager;->reset()V

    .line 100
    return-void
.end method

.method public notifyOrderChange(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 373
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v1

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/OrderStateManager;->getCurrentState()Lcom/didi/ddrive/model/OrderState;

    move-result-object v1

    sget-object v2, Lcom/didi/ddrive/model/OrderState;->CLOSED:Lcom/didi/ddrive/model/OrderState;

    if-ne v1, v2, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    new-instance v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;-><init>()V

    .line 378
    .local v0, event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    const v1, 0x7f0b01a1

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->msg:Ljava/lang/String;

    .line 384
    :goto_1
    new-instance v1, Lcom/didi/ddrive/payment/PaymentManager$6;

    invoke-direct {v1, p0}, Lcom/didi/ddrive/payment/PaymentManager$6;-><init>(Lcom/didi/ddrive/payment/PaymentManager;)V

    iput-object v1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->action:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent$Action;

    .line 393
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 382
    :cond_2
    iput-object p1, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->msg:Ljava/lang/String;

    goto :goto_1
.end method

.method public pay(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 346
    iget-object v3, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPayChannel:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    if-nez v3, :cond_0

    .line 347
    const-string v3, "PaymentManager"

    const-string v4, "pay channel not set"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;-><init>()V

    .line 349
    .local v0, event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    .line 350
    const v3, 0x7f0b0195

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->msg:Ljava/lang/String;

    .line 351
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 366
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-static {p1}, Lcom/didi/ddrive/payment/PayMethodFactory;->getInstance(Landroid/app/Activity;)Lcom/didi/ddrive/payment/PayMethodFactory;

    move-result-object v1

    .line 355
    .local v1, factory:Lcom/didi/ddrive/payment/PayMethodFactory;
    iget-object v3, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPayChannel:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    invoke-virtual {v1, v3}, Lcom/didi/ddrive/payment/PayMethodFactory;->getMethod(Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)Lcom/didi/ddrive/payment/PayMethod;

    move-result-object v2

    .line 356
    .local v2, method:Lcom/didi/ddrive/payment/PayMethod;
    if-nez v2, :cond_1

    .line 357
    const-string v3, "PaymentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pay channel not supported : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPayChannel:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    iget v5, v5, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_1
    iget-object v3, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    if-nez v3, :cond_2

    .line 362
    const-string v3, "PaymentManager"

    const-string v4, "bill not exist "

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_2
    iget-object v3, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    iget-object v4, p0, Lcom/didi/ddrive/payment/PaymentManager;->mSign:Lcom/didi/ddrive/net/http/response/PaySign;

    invoke-virtual {v2, v3, v4}, Lcom/didi/ddrive/payment/PayMethod;->pay(Lcom/didi/ddrive/net/http/response/OrderBill;Lcom/didi/ddrive/net/http/response/PaySign;)V

    goto :goto_0
.end method

.method public queryOrderBill()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/ddrive/payment/PaymentManager;->queryOrderBill(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public queryOrderBill(Ljava/lang/String;)V
    .locals 5
    .parameter "tag"

    .prologue
    .line 162
    iget v2, p0, Lcom/didi/ddrive/payment/PaymentManager;->mRetryTime:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 163
    const/4 v2, 0x0

    iput v2, p0, Lcom/didi/ddrive/payment/PaymentManager;->mRetryTime:I

    .line 190
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v1, Lcom/didi/ddrive/net/http/request/OrderBillRequest;

    invoke-direct {v1}, Lcom/didi/ddrive/net/http/request/OrderBillRequest;-><init>()V

    .line 167
    .local v1, request:Lcom/didi/ddrive/net/http/request/OrderBillRequest;
    iget-wide v2, p0, Lcom/didi/ddrive/payment/PaymentManager;->mOid:J

    iput-wide v2, v1, Lcom/didi/ddrive/net/http/request/OrderBillRequest;->orderId:J

    .line 169
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 170
    .local v0, manager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v2, "PaymentManager"

    new-instance v3, Lcom/didi/ddrive/payment/PaymentManager$1;

    invoke-direct {v3, p0, p1}, Lcom/didi/ddrive/payment/PaymentManager$1;-><init>(Lcom/didi/ddrive/payment/PaymentManager;Ljava/lang/String;)V

    const-class v4, Lcom/didi/ddrive/net/http/response/OrderBill;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public queryPayedDetail()V
    .locals 5

    .prologue
    .line 197
    new-instance v0, Lcom/didi/ddrive/net/http/request/PayedDetailRequest;

    invoke-direct {v0}, Lcom/didi/ddrive/net/http/request/PayedDetailRequest;-><init>()V

    .line 198
    .local v0, request:Lcom/didi/ddrive/net/http/request/PayedDetailRequest;
    iget-wide v1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mOid:J

    iput-wide v1, v0, Lcom/didi/ddrive/net/http/request/PayedDetailRequest;->oid:J

    .line 199
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/DriveAccountManager;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v1

    iget-wide v1, v1, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v1, v0, Lcom/didi/ddrive/net/http/request/PayedDetailRequest;->pid:J

    .line 202
    :cond_0
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v1

    const-string v2, "PaymentManager"

    new-instance v3, Lcom/didi/ddrive/payment/PaymentManager$2;

    invoke-direct {v3, p0}, Lcom/didi/ddrive/payment/PaymentManager$2;-><init>(Lcom/didi/ddrive/payment/PaymentManager;)V

    const-class v4, Lcom/didi/ddrive/net/http/response/PayedDetail;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 216
    return-void
.end method

.method public queryPaymentSign()V
    .locals 6

    .prologue
    .line 279
    iget-object v3, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPayChannel:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    if-nez v3, :cond_0

    .line 280
    const-string v3, "PaymentManager"

    const-string v4, "pay channel not set"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;

    invoke-direct {v0}, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;-><init>()V

    .line 282
    .local v0, event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->success:Z

    .line 283
    const v3, 0x7f0b0195

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;->msg:Ljava/lang/String;

    .line 284
    invoke-static {}, Lcom/didi/ddrive/eventbus/EventManager;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 343
    .end local v0           #event:Lcom/didi/ddrive/eventbus/event/KDPayResultEvent;
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v3, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    if-nez v3, :cond_1

    .line 289
    const-string v3, "PaymentManager"

    const-string v4, "No bill info"

    invoke-static {v3, v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_1
    new-instance v2, Lcom/didi/ddrive/net/http/request/PaySignRequest;

    invoke-direct {v2}, Lcom/didi/ddrive/net/http/request/PaySignRequest;-><init>()V

    .line 293
    .local v2, request:Lcom/didi/ddrive/net/http/request/PaySignRequest;
    iget-object v3, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    iget-wide v3, v3, Lcom/didi/ddrive/net/http/response/OrderBill;->totalMoney:D

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/PaySignRequest;->money:D

    .line 294
    iget-wide v3, p0, Lcom/didi/ddrive/payment/PaymentManager;->mOid:J

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/PaySignRequest;->oid:J

    .line 295
    invoke-static {}, Lcom/didi/ddrive/util/IpUtil;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/ddrive/net/http/request/PaySignRequest;->clientIp:Ljava/lang/String;

    .line 296
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->latitude:D

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/PaySignRequest;->lat:D

    .line 297
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentPoint()Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/tencent/tencentmap/mapsdk/maps/model/LatLng;->longitude:D

    iput-wide v3, v2, Lcom/didi/ddrive/net/http/request/PaySignRequest;->lng:D

    .line 298
    iget-object v3, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPayChannel:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    iget v3, v3, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    iput v3, v2, Lcom/didi/ddrive/net/http/request/PaySignRequest;->payChannel:I

    .line 300
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v1

    .line 301
    .local v1, manager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v3, "PaymentManager"

    new-instance v4, Lcom/didi/ddrive/payment/PaymentManager$5;

    invoke-direct {v4, p0}, Lcom/didi/ddrive/payment/PaymentManager$5;-><init>(Lcom/didi/ddrive/payment/PaymentManager;)V

    const-class v5, Lcom/didi/ddrive/net/http/response/PaySign;

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public queryVoucherList()V
    .locals 5

    .prologue
    .line 222
    new-instance v1, Lcom/didi/ddrive/net/http/request/DriveVoucherListRequest;

    invoke-direct {v1}, Lcom/didi/ddrive/net/http/request/DriveVoucherListRequest;-><init>()V

    .line 223
    .local v1, request:Lcom/didi/ddrive/net/http/request/DriveVoucherListRequest;
    iget-wide v2, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPid:J

    iput-wide v2, v1, Lcom/didi/ddrive/net/http/request/DriveVoucherListRequest;->userId:J

    .line 224
    invoke-static {}, Lcom/didi/ddrive/net/http/KDHttpManager;->getInstance()Lcom/didi/ddrive/net/http/KDHttpManager;

    move-result-object v0

    .line 225
    .local v0, manager:Lcom/didi/ddrive/net/http/KDHttpManager;
    const-string v2, "PaymentManager"

    new-instance v3, Lcom/didi/ddrive/payment/PaymentManager$3;

    invoke-direct {v3, p0}, Lcom/didi/ddrive/payment/PaymentManager$3;-><init>(Lcom/didi/ddrive/payment/PaymentManager;)V

    const-class v4, Lcom/didi/ddrive/net/http/response/DriveVoucherList;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/didi/ddrive/net/http/KDHttpManager;->performHttpRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/didi/ddrive/net/http/KDHttpManager$KDHttpListener;Ljava/lang/Class;)V

    .line 239
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/ddrive/payment/PaymentManager;->sInstance:Lcom/didi/ddrive/payment/PaymentManager;

    .line 87
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mRetryTime:I

    .line 104
    iput-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    .line 105
    iput-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPayedDetail:Lcom/didi/ddrive/net/http/response/PayedDetail;

    .line 106
    iput-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mVoucher:Lcom/didi/ddrive/net/http/response/DriveVoucherList;

    .line 107
    iput-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPayChannel:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    .line 108
    return-void
.end method

.method public setOrderBill(Lcom/didi/ddrive/net/http/response/OrderBill;)V
    .locals 0
    .parameter "orderBill"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    .line 370
    return-void
.end method

.method public setPayChannel(I)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    iget-object v0, v0, Lcom/didi/ddrive/net/http/response/OrderBill;->channelItems:[Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    iget-object v0, v0, Lcom/didi/ddrive/net/http/response/OrderBill;->channelItems:[Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mBill:Lcom/didi/ddrive/net/http/response/OrderBill;

    iget-object v0, v0, Lcom/didi/ddrive/net/http/response/OrderBill;->channelItems:[Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPayChannel:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    .line 150
    iget-object v0, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPreferences:Lcom/didi/ddrive/preferences/KDPreferenceDrive;

    iget-object v1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPayChannel:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    iget v1, v1, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/preferences/KDPreferenceDrive;->savePayChannel(I)V

    goto :goto_0
.end method

.method public setPayChannel(Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;)V
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget v0, p1, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    if-ne v0, v2, :cond_1

    .line 121
    const-string v0, "pdjxpay_03_ck"

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dj_orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/didi/ddrive/payment/PaymentManager;->mOid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/didi/ddrive/payment/PaymentManager;->mPayChannel:Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;

    .line 129
    return-void

    .line 123
    :cond_1
    iget v0, p1, Lcom/didi/ddrive/net/http/response/OrderBill$PayChannelItem;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 124
    const-string v0, "pdjxpay_05_ck"

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dj_orderid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/didi/ddrive/payment/PaymentManager;->mOid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
