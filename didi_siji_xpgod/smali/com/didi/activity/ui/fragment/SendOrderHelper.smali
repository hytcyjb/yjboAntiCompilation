.class public Lcom/didi/activity/ui/fragment/SendOrderHelper;
.super Ljava/lang/Object;
.source "SendOrderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/didi/activity/ui/fragment/SendOrderHelper;


# instance fields
.field private dialog:Lcom/didi/common/helper/DialogHelper;

.field goCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private mActivity:Landroid/app/Activity;

.field private mCreateListener:Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;

.field private mLoginDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mPayHelper:Lcom/didi/car/helper/CarPayHelper;

.field private tipDialog:Lcom/didi/common/helper/DialogHelper;

.field private weixinCheckListener:Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/didi/activity/ui/fragment/SendOrderHelper$1;

    invoke-direct {v0, p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper$1;-><init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    iput-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mLoginDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 341
    new-instance v0, Lcom/didi/activity/ui/fragment/SendOrderHelper$5;

    invoke-direct {v0, p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper$5;-><init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    iput-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->goCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 367
    new-instance v0, Lcom/didi/activity/ui/fragment/SendOrderHelper$6;

    invoke-direct {v0, p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper$6;-><init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    iput-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->weixinCheckListener:Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->removeDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/activity/ui/fragment/SendOrderHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->checkResend(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->checkProtectAndSendOrder()V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendOrder()V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->onRealtimeOrderCreated(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/car/model/CarOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->onRealtimeOrderCreateFail(Lcom/didi/car/model/CarOrder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->showWXUnstalledDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->showWXLowVersionDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendTaxiOrder()V

    return-void
.end method

.method static synthetic access$900(Lcom/didi/activity/ui/fragment/SendOrderHelper;Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->onRealtimeOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V

    return-void
.end method

.method private cancelCarOrder()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/didi/activity/ui/fragment/SendOrderHelper$2;

    invoke-direct {v0, p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper$2;-><init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    invoke-static {v0}, Lcom/didi/frame/business/terminator/OrderTerminator;->terminateAll(Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V

    .line 183
    return-void
.end method

.method private cancelTaxiOrder()V
    .locals 1

    .prologue
    .line 484
    new-instance v0, Lcom/didi/activity/ui/fragment/SendOrderHelper$7;

    invoke-direct {v0, p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper$7;-><init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    invoke-static {v0}, Lcom/didi/frame/business/terminator/OrderTerminator;->terminateAll(Lcom/didi/frame/business/terminator/OrderTerminatorListener;)V

    .line 501
    return-void
.end method

.method private checkCarOrderAndSendCarOrder()V
    .locals 1

    .prologue
    .line 152
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v0

    .line 153
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->cancelCarOrder()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->checkProtectAndSendOrder()V

    goto :goto_0
.end method

.method private checkOrderAndSendOrder()V
    .locals 1

    .prologue
    .line 464
    invoke-static {}, Lcom/didi/frame/business/looper/OrderLooper;->hasLooperRunning()Z

    move-result v0

    .line 465
    .local v0, flag:Z
    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->cancelTaxiOrder()V

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendTaxiOrder()V

    goto :goto_0
.end method

.method private checkOverdraftOrder(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 335
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3fc

    if-ne v0, v1, :cond_0

    .line 337
    const v0, 0x7f0b0596

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->showCommonTipDialog(Ljava/lang/String;Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;Z)V

    .line 339
    :cond_0
    return-void
.end method

.method private checkProtectAndSendOrder()V
    .locals 4

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, helper:Lcom/didi/common/helper/DialogHelper;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getProtectShow()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getVirtualStatus()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 188
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    .end local v0           #helper:Lcom/didi/common/helper/DialogHelper;
    iget-object v1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 189
    .restart local v0       #helper:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 190
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0b0495

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 192
    const v1, 0x7f0b0494

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(I)V

    .line 193
    const v1, 0x7f0b0496

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 195
    new-instance v1, Lcom/didi/activity/ui/fragment/SendOrderHelper$3;

    invoke-direct {v1, p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper$3;-><init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 223
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 224
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/didi/car/net/CarRequest;->protectLogStatistics(I)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendOrder()V

    goto :goto_0
.end method

.method private checkResend(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 549
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->check()Z

    move-result v0

    .line 550
    .local v0, flag:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 551
    if-nez v0, :cond_1

    .line 552
    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v2

    invoke-interface {v2}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v2

    iget-object v2, v2, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    if-ne v1, v2, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendTaxiBookingOrder()V

    .line 560
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendTaxiRealtimeOrder()V

    goto :goto_0

    .line 558
    :cond_1
    invoke-direct {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->onRealtimeOrderCreateFail(Lcom/didi/taxi/model/TaxiOrder;)V

    goto :goto_0
.end method

.method private checkWexinPay(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->initDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0597

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 325
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 326
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0361

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->goCheckListener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 329
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/didi/activity/ui/fragment/SendOrderHelper;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->instance:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/didi/activity/ui/fragment/SendOrderHelper;

    invoke-direct {v0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;-><init>()V

    sput-object v0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->instance:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    .line 78
    :cond_0
    sget-object v0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->instance:Lcom/didi/activity/ui/fragment/SendOrderHelper;

    return-object v0
.end method

.method private initDialog()Z
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 412
    const/4 v0, 0x0

    .line 419
    :goto_0
    return v0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 418
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    .line 419
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNullStartAndEndName()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 449
    sget-object v2, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v2}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/model/TaxiOrder;

    .line 450
    .local v0, order:Lcom/didi/taxi/model/TaxiOrder;
    if-nez v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 453
    :cond_1
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getStartDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 456
    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getInputType()Lcom/didi/frame/business/InputType;

    move-result-object v2

    sget-object v3, Lcom/didi/frame/business/InputType;->Text:Lcom/didi/frame/business/InputType;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/didi/taxi/model/TaxiOrder;->getEndDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isValidCheckWx(Landroid/app/Activity;)Z
    .locals 3
    .parameter "activity"

    .prologue
    .line 104
    sget-object v1, Lcom/didi/common/util/Constant;->WEIXIN_CAR_APP_ID:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 105
    .local v0, api:Lcom/tencent/mm/sdk/openapi/IWXAPI;
    sget-object v1, Lcom/didi/common/util/Constant;->WEIXIN_CAR_APP_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 106
    new-instance v1, Lcom/didi/car/helper/CarPayHelper;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/didi/car/helper/CarPayHelper;-><init>(Landroid/content/Context;Lcom/tencent/mm/sdk/openapi/IWXAPI;)V

    iput-object v1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;

    .line 107
    iget-object v1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;

    iget-object v2, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->weixinCheckListener:Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;

    invoke-virtual {v1, v2}, Lcom/didi/car/helper/CarPayHelper;->setListener(Lcom/didi/car/helper/CarPayHelper$CarPayHelperListener;)V

    .line 108
    iget-object v1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mPayHelper:Lcom/didi/car/helper/CarPayHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/didi/car/helper/CarPayHelper;->checkWxSupport(Lcom/didi/car/model/CarPayParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 111
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onRealtimeOrderCreateFail(Lcom/didi/car/model/CarOrder;)V
    .locals 4
    .parameter "order"

    .prologue
    const/4 v3, 0x0

    .line 282
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 283
    if-eqz p1, :cond_0

    .line 284
    const v1, 0x7f0b035d

    invoke-virtual {p1, v1}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 286
    :cond_0
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorCode()I

    move-result v0

    .line 287
    .local v0, code:I
    const/16 v1, 0x3fb

    if-ne v0, v1, :cond_1

    .line 288
    const-string v1, "wanliu_confirm_uninstall_weixin_show"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->checkWexinPay(Lcom/didi/car/model/CarOrder;)V

    .line 303
    :goto_0
    return-void

    .line 290
    :cond_1
    const/16 v1, 0x3fc

    if-ne v0, v1, :cond_2

    .line 291
    const-string v1, "wanliu_confirm_bill_due_show"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 292
    invoke-direct {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->checkOverdraftOrder(Lcom/didi/car/model/CarOrder;)V

    goto :goto_0

    .line 293
    :cond_2
    const/16 v1, 0x3f8

    if-ne v0, v1, :cond_3

    .line 295
    invoke-direct {p0, p1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->validCityTip(Lcom/didi/car/model/CarOrder;)V

    .line 296
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    goto :goto_0

    .line 297
    :cond_3
    const/16 v1, 0x65

    if-eq v1, v0, :cond_4

    const/16 v1, 0x3f3

    if-ne v1, v0, :cond_5

    .line 298
    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 299
    const v1, 0x7f0b0422

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mLoginDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->showCommonTipDialog(Ljava/lang/String;Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;Z)V

    goto :goto_0

    .line 301
    :cond_5
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    goto :goto_0
.end method

.method private onRealtimeOrderCreateFail(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 5
    .parameter "order"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 563
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 565
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getErrorCode()I

    move-result v0

    .line 566
    .local v0, code:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConfirmErrorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 567
    const/16 v1, 0x3fa

    if-ne v0, v1, :cond_1

    .line 569
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOtype()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 570
    const v1, 0x7f0b04b6

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4, v3}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->showCommonTipDialog(Ljava/lang/String;Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;Z)V

    .line 584
    :goto_0
    return-void

    .line 572
    :cond_0
    const v1, 0x7f0b04b2

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4, v3}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->showCommonTipDialog(Ljava/lang/String;Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;Z)V

    goto :goto_0

    .line 575
    :cond_1
    const/16 v1, 0x65

    if-eq v1, v0, :cond_2

    const/16 v1, 0x3f3

    if-ne v1, v0, :cond_3

    .line 576
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->resetSendable()V

    .line 577
    const v1, 0x7f0b0422

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mLoginDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->showCommonTipDialog(Ljava/lang/String;Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;Z)V

    goto :goto_0

    .line 580
    :cond_3
    if-eqz p1, :cond_4

    .line 581
    const v1, 0x7f0b035d

    invoke-virtual {p1, v1}, Lcom/didi/taxi/model/TaxiOrder;->replaceEmptyErrorMessage(I)V

    .line 583
    :cond_4
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    goto :goto_0
.end method

.method private onRealtimeOrderCreated(Lcom/didi/car/model/CarOrder;)V
    .locals 5
    .parameter "order"

    .prologue
    const/4 v4, 0x0

    .line 251
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 252
    if-eqz p1, :cond_0

    .line 253
    const v1, 0x7f0b035d

    invoke-virtual {p1, v1}, Lcom/didi/car/model/CarOrder;->replaceEmptyErrorMessage(I)V

    .line 254
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    iget v1, p1, Lcom/didi/car/model/CarOrder;->errno:I

    const/16 v2, 0x7d8

    if-eq v1, v2, :cond_1

    .line 261
    sget-object v1, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v0

    check-cast v0, Lcom/didi/car/model/CarOrder;

    .line 262
    .local v0, carOrder:Lcom/didi/car/model/CarOrder;
    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getOid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/didi/car/model/CarOrder;->oid:Ljava/lang/String;

    .line 263
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iput v4, v1, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 264
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getTransportTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 265
    iget-object v1, p1, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    iput-object v1, v0, Lcom/didi/car/model/CarOrder;->share:Lcom/didi/car/model/CarPayShare;

    .line 266
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->setSent()V

    .line 267
    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iput v4, v1, Lcom/didi/common/model/CommonAttributes;->is_html:I

    .line 268
    sget-object v1, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    invoke-virtual {v0}, Lcom/didi/car/model/CarOrder;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 269
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeMyMarker()V

    .line 270
    invoke-static {}, Lcom/didi/map/marker/MarkerController;->removeTaxiDriverMarkerList()V

    .line 271
    sput v4, Lcom/didi/common/base/DidiApp;->mAsyncRecallCount:I

    .line 272
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/didi/common/config/Preferences;->setCreateOrderTimes(J)V

    .line 278
    :goto_1
    iget-object v1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mCreateListener:Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;

    invoke-interface {v1}, Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;->onCreateOrderSuccess()V

    goto :goto_0

    .line 275
    :cond_3
    sput v4, Lcom/didi/common/base/DidiApp;->mSyncRecallCount:I

    .line 276
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->confirmToWaitMapView()V

    goto :goto_1
.end method

.method private onRealtimeOrderCreated(Lcom/didi/taxi/model/TaxiOrder;)V
    .locals 10
    .parameter "order"

    .prologue
    const/4 v9, 0x0

    .line 587
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 588
    if-eqz p1, :cond_0

    .line 589
    const v5, 0x7f0b035d

    invoke-virtual {p1, v5}, Lcom/didi/taxi/model/TaxiOrder;->replaceEmptyErrorMessage(I)V

    .line 591
    :cond_0
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 618
    :cond_1
    :goto_0
    return-void

    .line 595
    :cond_2
    iget v5, p1, Lcom/didi/taxi/model/TaxiOrder;->errno:I

    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_1

    .line 598
    sget-object v5, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v5}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v4

    check-cast v4, Lcom/didi/taxi/model/TaxiOrder;

    .line 599
    .local v4, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getOid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setOid(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v5

    iput v9, v5, Lcom/didi/common/model/CommonAttributes;->status:I

    .line 601
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->isTimeout()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setTimeout(Z)V

    .line 602
    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_4

    .line 603
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v5

    invoke-virtual {p1}, Lcom/didi/taxi/model/TaxiOrder;->getTransportTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    .line 611
    :goto_1
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->setSent()V

    .line 612
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->isUseDepart()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 613
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/didi/taxi/model/TaxiOrder;->setUseDepart(Z)V

    .line 615
    :cond_3
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v5

    iput v9, v5, Lcom/didi/common/model/CommonAttributes;->is_html:I

    .line 616
    invoke-static {}, Lcom/didi/frame/map/helper/SwitcherMapHelper;->confirmToWaitMapView()V

    .line 617
    iget-object v5, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mCreateListener:Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;

    invoke-interface {v5}, Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;->onCreateOrderSuccess()V

    goto :goto_0

    .line 605
    :cond_4
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getTimeOffset()J

    move-result-wide v2

    .line 606
    .local v2, offset:J
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/32 v7, 0x927c0

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v0, v5, v2

    .line 609
    .local v0, curTime:J
    :goto_2
    invoke-virtual {v4}, Lcom/didi/taxi/model/TaxiOrder;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v5

    iput-wide v0, v5, Lcom/didi/common/model/CommonAttributes;->transportTime:J

    goto :goto_1

    .line 606
    .end local v0           #curTime:J
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_2
.end method

.method private removeDialog()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->tipDialog:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->tipDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 148
    :cond_0
    return-void
.end method

.method private sendOrder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b04e8

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 233
    sget-object v0, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    new-instance v1, Lcom/didi/activity/ui/fragment/SendOrderHelper$4;

    invoke-direct {v1, p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper$4;-><init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    invoke-static {v0, v3, v1}, Lcom/didi/car/net/CarRequest;->createOrder(Lcom/didi/frame/business/Business;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 248
    return-void
.end method

.method private sendTaxiBookingOrder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 529
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->getTimeTemp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/activity/ui/fragment/SendOrderHelper$9;

    invoke-direct {v1, p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper$9;-><init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    invoke-static {v2, v2, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->createBookingOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 546
    return-void
.end method

.method private sendTaxiOrder()V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b04e8

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 474
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->start()V

    .line 475
    sget-object v0, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    sget-object v1, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v1}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v1

    invoke-interface {v1}, Lcom/didi/frame/Sendable;->getCommonAttri()Lcom/didi/common/model/CommonAttributes;

    move-result-object v1

    iget-object v1, v1, Lcom/didi/common/model/CommonAttributes;->orderType:Lcom/didi/frame/business/OrderType;

    if-ne v0, v1, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendTaxiBookingOrder()V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->sendTaxiRealtimeOrder()V

    goto :goto_0
.end method

.method private sendTaxiRealtimeOrder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 505
    invoke-static {}, Lcom/didi/taxi/helper/TaxiOrderResendHelper;->getTimeTemp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/activity/ui/fragment/SendOrderHelper$8;

    invoke-direct {v1, p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper$8;-><init>(Lcom/didi/activity/ui/fragment/SendOrderHelper;)V

    invoke-static {v2, v2, v0, v1}, Lcom/didi/taxi/net/TaxiRequest;->createRealtimeOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 525
    return-void
.end method

.method private showCommonTipDialog(Ljava/lang/String;Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;Z)V
    .locals 2
    .parameter "message"
    .parameter "listener"
    .parameter "flag"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->tipDialog:Lcom/didi/common/helper/DialogHelper;

    .line 119
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->tipDialog:Lcom/didi/common/helper/DialogHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->tipDialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 121
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->tipDialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03fb

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->tipDialog:Lcom/didi/common/helper/DialogHelper;

    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 123
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->tipDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, p3}, Lcom/didi/common/helper/DialogHelper;->setCancelable(Z)V

    .line 124
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->tipDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, p2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 125
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->tipDialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showWXLowVersionDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0475

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 407
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private showWXUnstalledDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 389
    const-string v0, "wanliu_confirm_uninstall_weixin_show"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0599

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 395
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private validCityTip(Lcom/didi/car/model/CarOrder;)V
    .locals 3
    .parameter "order"

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->initDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p1}, Lcom/didi/car/model/CarOrder;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 311
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0, v2}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 312
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b0367

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->dialog:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method


# virtual methods
.method public sendCarOrder(Landroid/app/Activity;Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;)V
    .locals 4
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    .line 87
    iput-object p2, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mCreateListener:Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;

    .line 88
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    const v1, 0x7f0b0422

    invoke-static {v1}, Lcom/didi/common/util/Utils;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mLoginDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->showCommonTipDialog(Ljava/lang/String;Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;Z)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->hasStartAddressSelected()Z

    move-result v0

    .line 93
    .local v0, selected:Z
    if-nez v0, :cond_2

    .line 94
    const v1, 0x7f0b03dc

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->isValidCheckWx(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->checkCarOrderAndSendCarOrder()V

    goto :goto_0
.end method

.method public sendTaxiOrder(Landroid/app/Activity;Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;)V
    .locals 4
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mActivity:Landroid/app/Activity;

    .line 428
    iput-object p2, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mCreateListener:Lcom/didi/activity/ui/fragment/SendOrderHelper$CreateOrderListener;

    .line 429
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->isNullStartAndEndName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const v1, 0x7f0b036e

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    .line 445
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/UserHelper;->hasLogin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    const v1, 0x7f0b03ea

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/activity/ui/fragment/SendOrderHelper;->mLoginDialogLis:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->showCommonTipDialog(Ljava/lang/String;Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;Z)V

    goto :goto_0

    .line 438
    :cond_1
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->hasStartAddressSelected()Z

    move-result v0

    .line 439
    .local v0, selected:Z
    if-nez v0, :cond_2

    .line 440
    const v1, 0x7f0b03dc

    invoke-static {v1}, Lcom/didi/common/ui/component/UiHelper;->showTip(I)V

    goto :goto_0

    .line 444
    :cond_2
    invoke-direct {p0}, Lcom/didi/activity/ui/fragment/SendOrderHelper;->checkOrderAndSendOrder()V

    goto :goto_0
.end method
